; ModuleID = 'lto-cgraph.bc'
source_filename = "lto-cgraph.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cgraph_asm_node = type { %struct.cgraph_asm_node*, %union.tree_node*, i32 }
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
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type opaque
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.cgraph_node_set_iterator = type { %struct.cgraph_node_set_def*, i32 }
%struct.lto_simple_output_block = type { i32, %struct.lto_out_decl_state*, %struct.lto_output_stream* }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.bitpack_d = type { i64, i64, %struct.VEC_bitpack_word_t_heap* }
%struct.VEC_bitpack_word_t_heap = type { %struct.VEC_bitpack_word_t_base }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.lto_input_block = type { i8*, i32, i32 }
%struct.VEC_cgraph_edge_p_heap = type { %struct.VEC_cgraph_edge_p_base }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x %struct.cgraph_edge*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"lto-cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_asm_nodes = external dso_local local_unnamed_addr global %struct.cgraph_asm_node*, align 8
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@profile_info = external dso_local local_unnamed_addr global %struct.gcov_ctr_summary*, align 8
@lto_gcov_summary = internal global %struct.gcov_ctr_summary zeroinitializer, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [58 x i8] c"Combining units with different profiles is not supported.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bytecode stream: found empty cgraph node\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"bytecode stream: no caller found while reading edge\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"bytecode stream: no callee found while reading edge\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"bytecode stream: found multiple instances of cgraph node %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2091, metadata !DIExpression()), !dbg !2092
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2093
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2094
  ret i32 %call, !dbg !2095
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2096 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2100
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2101
  ret i32 %call, !dbg !2102
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2103 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2156, metadata !DIExpression()), !dbg !2157
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2158
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2158
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2158
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2158
  %cmp = icmp uge i8* %0, %1, !dbg !2158
  %conv1 = zext i1 %cmp to i64, !dbg !2158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2158
  %tobool = icmp eq i64 %expval, 0, !dbg !2158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2158

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2158
  br label %cond.end, !dbg !2158

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2158
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2158
  %2 = load i8, i8* %0, align 1, !dbg !2158
  %conv3 = zext i8 %2 to i32, !dbg !2158
  br label %cond.end, !dbg !2158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2158
  ret i32 %cond, !dbg !2159
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2160 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2162, metadata !DIExpression()), !dbg !2163
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2164
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2164
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2164
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2164
  %cmp = icmp uge i8* %0, %1, !dbg !2164
  %conv1 = zext i1 %cmp to i64, !dbg !2164
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2164
  %tobool = icmp eq i64 %expval, 0, !dbg !2164
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2164

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2164
  br label %cond.end, !dbg !2164

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2164
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2164
  %2 = load i8, i8* %0, align 1, !dbg !2164
  %conv3 = zext i8 %2 to i32, !dbg !2164
  br label %cond.end, !dbg !2164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2164
  ret i32 %cond, !dbg !2165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2166 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2167
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2167
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2167
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2167
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2167
  %cmp = icmp uge i8* %1, %2, !dbg !2167
  %conv1 = zext i1 %cmp to i64, !dbg !2167
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2167
  %tobool = icmp eq i64 %expval, 0, !dbg !2167
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2167

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2167
  br label %cond.end, !dbg !2167

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2167
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2167
  %3 = load i8, i8* %1, align 1, !dbg !2167
  %conv3 = zext i8 %3 to i32, !dbg !2167
  br label %cond.end, !dbg !2167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2167
  ret i32 %cond, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2173, metadata !DIExpression()), !dbg !2174
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2175
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2176
  ret i32 %call, !dbg !2177
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2183, metadata !DIExpression()), !dbg !2184
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2185
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2185
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2185
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2185
  %cmp = icmp uge i8* %0, %1, !dbg !2185
  %conv1 = zext i1 %cmp to i64, !dbg !2185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2185
  %tobool = icmp eq i64 %expval, 0, !dbg !2185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2185

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2185
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2185
  br label %cond.end, !dbg !2185

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2185
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2185
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2185
  store i8 %conv2, i8* %0, align 1, !dbg !2185
  %conv6 = and i32 %__c, 255, !dbg !2185
  br label %cond.end, !dbg !2185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2185
  ret i32 %cond, !dbg !2186
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2189, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2190, metadata !DIExpression()), !dbg !2191
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2192
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2192
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2192
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2192
  %cmp = icmp uge i8* %0, %1, !dbg !2192
  %conv1 = zext i1 %cmp to i64, !dbg !2192
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2192
  %tobool = icmp eq i64 %expval, 0, !dbg !2192
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2192

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2192
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2192
  br label %cond.end, !dbg !2192

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2192
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2192
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2192
  store i8 %conv2, i8* %0, align 1, !dbg !2192
  %conv6 = and i32 %__c, 255, !dbg !2192
  br label %cond.end, !dbg !2192

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2192
  ret i32 %cond, !dbg !2193
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2194 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2196, metadata !DIExpression()), !dbg !2197
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2198
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2198
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2198
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2198
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2198
  %cmp = icmp uge i8* %1, %2, !dbg !2198
  %conv1 = zext i1 %cmp to i64, !dbg !2198
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2198
  %tobool = icmp eq i64 %expval, 0, !dbg !2198
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2198

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2198
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2198
  br label %cond.end, !dbg !2198

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2198
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2198
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2198
  store i8 %conv4, i8* %1, align 1, !dbg !2198
  %conv6 = and i32 %__c, 255, !dbg !2198
  br label %cond.end, !dbg !2198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2198
  ret i32 %cond, !dbg !2199
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2208, metadata !DIExpression()), !dbg !2209
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2210
  ret i64 %call, !dbg !2211
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2214, metadata !DIExpression()), !dbg !2215
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2216
  %0 = load i32, i32* %_flags, align 8, !dbg !2216
  %and = lshr i32 %0, 4, !dbg !2216
  %and.lobit = and i32 %and, 1, !dbg !2216
  ret i32 %and.lobit, !dbg !2217
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2220, metadata !DIExpression()), !dbg !2221
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2222
  %0 = load i32, i32* %_flags, align 8, !dbg !2222
  %and = lshr i32 %0, 5, !dbg !2222
  %and.lobit = and i32 %and, 1, !dbg !2222
  ret i32 %and.lobit, !dbg !2223
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2227, metadata !DIExpression()), !dbg !2228
  %__c.off = add i32 %__c, 128, !dbg !2229
  %0 = icmp ult i32 %__c.off, 384, !dbg !2229
  br i1 %0, label %cond.true, label %cond.end, !dbg !2229

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2230
  %1 = load i32*, i32** %call, align 8, !dbg !2231
  %idxprom = sext i32 %__c to i64, !dbg !2232
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2232
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2232
  br label %cond.end, !dbg !2233

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2233
  ret i32 %cond, !dbg !2234
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2237, metadata !DIExpression()), !dbg !2238
  %__c.off = add i32 %__c, 128, !dbg !2239
  %0 = icmp ult i32 %__c.off, 384, !dbg !2239
  br i1 %0, label %cond.true, label %cond.end, !dbg !2239

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2240
  %1 = load i32*, i32** %call, align 8, !dbg !2241
  %idxprom = sext i32 %__c to i64, !dbg !2242
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2242
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2242
  br label %cond.end, !dbg !2243

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2243
  ret i32 %cond, !dbg !2244
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2250, metadata !DIExpression()), !dbg !2251
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2252
  %conv = trunc i64 %call to i32, !dbg !2253
  ret i32 %conv, !dbg !2254
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2261
  ret i64 %call, !dbg !2262
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2268, metadata !DIExpression()), !dbg !2269
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2270
  ret i64 %call, !dbg !2271
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2272 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2278, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2279, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2280, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2281, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2282, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 0, metadata !2283, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2284, metadata !DIExpression()), !dbg !2288
  br label %while.cond, !dbg !2289

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2290
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2283, metadata !DIExpression()), !dbg !2288
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2291
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2289

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2292
  %div = lshr i64 %add, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %div, metadata !2285, metadata !DIExpression()), !dbg !2288
  %mul = mul i64 %div, %__size, !dbg !2295
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2286, metadata !DIExpression()), !dbg !2288
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %call, metadata !2287, metadata !DIExpression()), !dbg !2288
  %cmp1 = icmp slt i32 %call, 0, !dbg !2298
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2300

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2301
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2303

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2283, metadata !DIExpression()), !dbg !2288
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2288
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2283, metadata !DIExpression()), !dbg !2288
  br label %while.cond, !dbg !2289, !llvm.loop !2305

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2288
  ret i8* %retval.0, !dbg !2307
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2314, metadata !DIExpression()), !dbg !2315
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2316
  ret double %call, !dbg !2317
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2318 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %base, metadata !2329, metadata !DIExpression()), !dbg !2330
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2331
  ret i64 %call, !dbg !2332
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2340, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 %base, metadata !2341, metadata !DIExpression()), !dbg !2342
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2343
  ret i64 %call, !dbg !2344
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2356, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %base, metadata !2358, metadata !DIExpression()), !dbg !2359
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2360
  ret i64 %call, !dbg !2361
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2362 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %base, metadata !2368, metadata !DIExpression()), !dbg !2369
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2370
  ret i64 %call, !dbg !2371
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2372 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2413, metadata !DIExpression()), !dbg !2414
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2415
  ret i32 %call, !dbg !2416
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2417 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2420, metadata !DIExpression()), !dbg !2421
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2422
  ret i32 %call, !dbg !2423
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2429, metadata !DIExpression()), !dbg !2430
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2431
  ret i32 %call, !dbg !2432
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2433 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2440, metadata !DIExpression()), !dbg !2441
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2442
  ret i32 %call, !dbg !2443
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2444 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2450, metadata !DIExpression()), !dbg !2451
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2450, metadata !DIExpression(DW_OP_deref)), !dbg !2451
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2452
  ret i32 %call, !dbg !2453
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2454 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2458, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2460, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2461, metadata !DIExpression(DW_OP_deref)), !dbg !2462
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2463
  ret i32 %call, !dbg !2464
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2465 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2490, metadata !DIExpression()), !dbg !2491
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2492
  ret i32 %call, !dbg !2493
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2494 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2497, metadata !DIExpression()), !dbg !2498
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2499
  ret i32 %call, !dbg !2500
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2506, metadata !DIExpression()), !dbg !2507
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2508
  ret i32 %call, !dbg !2509
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2510 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2514, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2517, metadata !DIExpression()), !dbg !2518
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2519
  ret i32 %call, !dbg !2520
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_cgraph_encoder_d* @lto_cgraph_encoder_new() local_unnamed_addr #4 !dbg !2521 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 16) #6, !dbg !2526
  %0 = bitcast i8* %call to %struct.lto_cgraph_encoder_d*, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %0, metadata !2525, metadata !DIExpression()), !dbg !2527
  %call1 = tail call %struct.pointer_map_t* @pointer_map_create() #6, !dbg !2528
  %map = bitcast i8* %call to %struct.pointer_map_t**, !dbg !2529
  store %struct.pointer_map_t* %call1, %struct.pointer_map_t** %map, align 8, !dbg !2530
  %nodes = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2531
  %1 = bitcast i8* %nodes to %struct.VEC_cgraph_node_ptr_heap**, !dbg !2531
  store %struct.VEC_cgraph_node_ptr_heap* null, %struct.VEC_cgraph_node_ptr_heap** %1, align 8, !dbg !2532
  ret %struct.lto_cgraph_encoder_d* %0, !dbg !2533
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local %struct.pointer_map_t* @pointer_map_create() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_cgraph_encoder_delete(%struct.lto_cgraph_encoder_d* %encoder) local_unnamed_addr #4 !dbg !2534 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2538, metadata !DIExpression()), !dbg !2539
  %nodes = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 1, !dbg !2540
  tail call fastcc void @VEC_cgraph_node_ptr_heap_free(%struct.VEC_cgraph_node_ptr_heap** nonnull %nodes) #7, !dbg !2540
  %map = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 0, !dbg !2541
  %0 = load %struct.pointer_map_t*, %struct.pointer_map_t** %map, align 8, !dbg !2541
  tail call void @pointer_map_destroy(%struct.pointer_map_t* %0) #6, !dbg !2542
  %1 = bitcast %struct.lto_cgraph_encoder_d* %encoder to i8*, !dbg !2543
  tail call void @free(i8* %1) #6, !dbg !2544
  ret void, !dbg !2545
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_cgraph_node_ptr_heap_free(%struct.VEC_cgraph_node_ptr_heap** %vec_) unnamed_addr #0 !dbg !2546 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap** %vec_, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %vec_, align 8, !dbg !2553
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_heap* %0, null, !dbg !2553
  br i1 %tobool, label %if.end, label %if.then, !dbg !2555

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_cgraph_node_ptr_heap* %0 to i8*, !dbg !2555
  tail call void @free(i8* nonnull %1) #6, !dbg !2553
  br label %if.end, !dbg !2553

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_cgraph_node_ptr_heap* null, %struct.VEC_cgraph_node_ptr_heap** %vec_, align 8, !dbg !2555
  ret void, !dbg !2555
}

declare dso_local void @pointer_map_destroy(%struct.pointer_map_t*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !2556 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2561, metadata !DIExpression()), !dbg !2564
  %map = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 0, !dbg !2565
  %0 = load %struct.pointer_map_t*, %struct.pointer_map_t** %map, align 8, !dbg !2565
  %1 = bitcast %struct.cgraph_node* %node to i8*, !dbg !2566
  %call = tail call i8** @pointer_map_contains(%struct.pointer_map_t* %0, i8* %1) #6, !dbg !2567
  call void @llvm.dbg.value(metadata i8** %call, metadata !2563, metadata !DIExpression()), !dbg !2564
  %tobool = icmp eq i8** %call, null, !dbg !2568
  br i1 %tobool, label %if.then, label %if.else, !dbg !2570

if.then:                                          ; preds = %entry
  %nodes = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 1, !dbg !2571
  %2 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !2571
  %tobool1 = icmp eq %struct.VEC_cgraph_node_ptr_heap* %2, null, !dbg !2571
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2571

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %2, i64 0, i32 0, !dbg !2571
  br label %cond.end, !dbg !2571

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !2571
  %call3 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #7, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2562, metadata !DIExpression()), !dbg !2564
  %3 = load %struct.pointer_map_t*, %struct.pointer_map_t** %map, align 8, !dbg !2573
  %call5 = tail call i8** @pointer_map_insert(%struct.pointer_map_t* %3, i8* %1) #6, !dbg !2574
  call void @llvm.dbg.value(metadata i8** %call5, metadata !2563, metadata !DIExpression()), !dbg !2564
  %conv = sext i32 %call3 to i64, !dbg !2575
  %4 = inttoptr i64 %conv to i8*, !dbg !2576
  store i8* %4, i8** %call5, align 8, !dbg !2577
  %call7 = tail call fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_heap_safe_push(%struct.VEC_cgraph_node_ptr_heap** nonnull %nodes, %struct.cgraph_node* %node) #7, !dbg !2578
  br label %if.end, !dbg !2579

if.else:                                          ; preds = %entry
  %5 = bitcast i8** %call to i64*, !dbg !2580
  %6 = load i64, i64* %5, align 8, !dbg !2580
  %conv8 = trunc i64 %6 to i32, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %conv8, metadata !2562, metadata !DIExpression()), !dbg !2564
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %ref.0 = phi i32 [ %conv8, %if.else ], [ %call3, %cond.end ], !dbg !2582
  call void @llvm.dbg.value(metadata i32 %ref.0, metadata !2562, metadata !DIExpression()), !dbg !2564
  ret i32 %ref.0, !dbg !2583
}

declare dso_local i8** @pointer_map_contains(%struct.pointer_map_t*, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !2584 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2590, metadata !DIExpression()), !dbg !2591
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !2592
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2592

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !2592
  %0 = load i32, i32* %num, align 8, !dbg !2592
  br label %cond.end, !dbg !2592

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2592
  ret i32 %cond, !dbg !2592
}

declare dso_local i8** @pointer_map_insert(%struct.pointer_map_t*, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_heap_safe_push(%struct.VEC_cgraph_node_ptr_heap** %vec_, %struct.cgraph_node* %obj_) unnamed_addr #0 !dbg !2593 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap** %vec_, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %obj_, metadata !2599, metadata !DIExpression()), !dbg !2600
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_heap_reserve(%struct.VEC_cgraph_node_ptr_heap** %vec_, i32 1) #7, !dbg !2601
  %0 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %vec_, align 8, !dbg !2601
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_heap* %0, null, !dbg !2601
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2601

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %0, i64 0, i32 0, !dbg !2601
  br label %cond.end, !dbg !2601

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2601
  %call1 = tail call fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_base_quick_push(%struct.VEC_cgraph_node_ptr_base* %cond, %struct.cgraph_node* %obj_) #7, !dbg !2601
  ret %struct.cgraph_node** %call1, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_cgraph_encoder_lookup(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !2602 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2605, metadata !DIExpression()), !dbg !2607
  %map = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 0, !dbg !2608
  %0 = load %struct.pointer_map_t*, %struct.pointer_map_t** %map, align 8, !dbg !2608
  %1 = bitcast %struct.cgraph_node* %node to i8*, !dbg !2609
  %call = tail call i8** @pointer_map_contains(%struct.pointer_map_t* %0, i8* %1) #6, !dbg !2610
  call void @llvm.dbg.value(metadata i8** %call, metadata !2606, metadata !DIExpression()), !dbg !2607
  %tobool = icmp eq i8** %call, null, !dbg !2611
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2611

cond.true:                                        ; preds = %entry
  %2 = bitcast i8** %call to i64*, !dbg !2612
  %3 = load i64, i64* %2, align 8, !dbg !2612
  %conv = trunc i64 %3 to i32, !dbg !2613
  br label %cond.end, !dbg !2611

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %entry ], !dbg !2611
  ret i32 %cond, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d* %encoder, i32 %ref) local_unnamed_addr #4 !dbg !2615 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %ref, metadata !2620, metadata !DIExpression()), !dbg !2621
  %cmp = icmp eq i32 %ref, -1, !dbg !2622
  br i1 %cmp, label %return, label %if.end, !dbg !2624

if.end:                                           ; preds = %entry
  %nodes = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 1, !dbg !2625
  %0 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !2625
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_heap* %0, null, !dbg !2625
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2625

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %0, i64 0, i32 0, !dbg !2625
  br label %cond.end, !dbg !2625

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2625
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %ref) #7, !dbg !2625
  br label %return, !dbg !2626

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi %struct.cgraph_node* [ %call, %cond.end ], [ null, %entry ], !dbg !2621
  ret %struct.cgraph_node* %retval.0, !dbg !2627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2633, metadata !DIExpression()), !dbg !2634
  br label %land.end, !dbg !2635

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2635
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2635
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2635
  ret %struct.cgraph_node* %0, !dbg !2635
}

; Function Attrs: nounwind uwtable
define dso_local void @output_cgraph(%struct.cgraph_node_set_def* %set) local_unnamed_addr #4 !dbg !2636 {
entry:
  %csi = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp9 = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp71 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2652, metadata !DIExpression()), !dbg !2728
  %0 = bitcast %struct.cgraph_node_set_iterator* %csi to i8*, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2729
  %call = tail call %struct.lto_simple_output_block* @lto_create_simple_output_block(i32 3) #6, !dbg !2730
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %call, metadata !2654, metadata !DIExpression()), !dbg !2728
  tail call fastcc void @output_profile_summary(%struct.lto_simple_output_block* %call) #7, !dbg !2731
  %decl_state = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 1, !dbg !2732
  %1 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !2732
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %1, i64 0, i32 1, !dbg !2732
  %2 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !2732
  %tobool = icmp eq %struct.lto_cgraph_encoder_d* %2, null, !dbg !2732
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2732

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2732
  %.pre = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !2733
  %cgraph_node_encoder2.phi.trans.insert = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %.pre, i64 0, i32 1, !dbg !2728
  %.pre1 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder2.phi.trans.insert, align 8, !dbg !2734
  br label %cond.end, !dbg !2732

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi %struct.lto_cgraph_encoder_d* [ %2, %entry ], [ %.pre1, %cond.true ], !dbg !2734
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %3, metadata !2701, metadata !DIExpression()), !dbg !2728
  %call3 = tail call %struct.bitmap_head_def* @lto_bitmap_alloc() #6, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !2700, metadata !DIExpression()), !dbg !2728
  %4 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2736
  %call4 = tail call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !2736
  %5 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !2736
  %6 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call4, 0, !dbg !2736
  store %struct.cgraph_node_set_def* %6, %struct.cgraph_node_set_def** %5, align 8, !dbg !2736
  %7 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !2736
  %8 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call4, 1, !dbg !2736
  store i32 %8, i32* %7, align 8, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2736
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2736
  %9 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 0, !dbg !2738
  %10 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !2738
  br label %for.cond, !dbg !2740

for.cond:                                         ; preds = %for.body, %cond.end
  %11 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2741
  %12 = load i32, i32* %10, align 8, !dbg !2741
  %call5 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %11, i32 %12) #7, !dbg !2741
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2742
  br i1 %tobool6, label %for.body, label %for.end, !dbg !2743

for.body:                                         ; preds = %for.cond
  %13 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2744
  %14 = load i32, i32* %10, align 8, !dbg !2744
  %call7 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %13, i32 %14) #7, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call7, metadata !2653, metadata !DIExpression()), !dbg !2728
  %call8 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %3, %struct.cgraph_node* %call7) #7, !dbg !2746
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2691, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !2747
  br label %for.cond, !dbg !2748, !llvm.loop !2749

for.end:                                          ; preds = %for.cond
  %15 = bitcast %struct.cgraph_node_set_iterator* %tmp9 to i8*, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2751
  %call10 = call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !2751
  %16 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp9, i64 0, i32 0, !dbg !2751
  %17 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call10, 0, !dbg !2751
  store %struct.cgraph_node_set_def* %17, %struct.cgraph_node_set_def** %16, align 8, !dbg !2751
  %18 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp9, i64 0, i32 1, !dbg !2751
  %19 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call10, 1, !dbg !2751
  store i32 %19, i32* %18, align 8, !dbg !2751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2751
  br label %for.cond11, !dbg !2752

for.cond11:                                       ; preds = %for.inc62, %for.end
  %20 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2753
  %21 = load i32, i32* %10, align 8, !dbg !2753
  %call12 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %20, i32 %21) #7, !dbg !2753
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2754
  br i1 %tobool13, label %for.body15, label %for.end63, !dbg !2755

for.body15:                                       ; preds = %for.cond11
  %22 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2756
  %23 = load i32, i32* %10, align 8, !dbg !2756
  %call16 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %22, i32 %23) #7, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call16, metadata !2653, metadata !DIExpression()), !dbg !2728
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call16, i64 0, i32 1, !dbg !2757
  br label %for.cond17, !dbg !2758

for.cond17:                                       ; preds = %for.inc43, %for.body15
  %edge.0.in = phi %struct.cgraph_edge** [ %callees, %for.body15 ], [ %next_callee, %for.inc43 ]
  %edge.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in, align 8, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !2697, metadata !DIExpression()), !dbg !2728
  %tobool18 = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !2760
  br i1 %tobool18, label %for.end44, label %for.body19, !dbg !2760

for.body19:                                       ; preds = %for.cond17
  %callee20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 2, !dbg !2761
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %callee20, align 8, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %24, metadata !2709, metadata !DIExpression()), !dbg !2762
  %call21 = call fastcc zeroext i8 @cgraph_node_in_set_p(%struct.cgraph_node* %24, %struct.cgraph_node_set_def* %set) #7, !dbg !2763
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2763
  br i1 %tobool22, label %if.then, label %for.inc43, !dbg !2764

if.then:                                          ; preds = %for.body19
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i64 0, i32 19, i32 2, !dbg !2765
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !2765
  %tobool23 = icmp eq %struct.cgraph_node* %25, null, !dbg !2765
  br i1 %tobool23, label %cond.end26, label %cond.true24, !dbg !2765

cond.true24:                                      ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2765
  br label %cond.end26, !dbg !2765

cond.end26:                                       ; preds = %if.then, %cond.true24
  %call28 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %3, %struct.cgraph_node* %24) #7, !dbg !2766
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i64 0, i32 14, !dbg !2767
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !2767
  %tobool29 = icmp eq %struct.cgraph_node* %26, null, !dbg !2768
  br i1 %tobool29, label %for.inc43, label %if.then30, !dbg !2769

if.then30:                                        ; preds = %cond.end26
  br label %for.cond32, !dbg !2770

for.cond32:                                       ; preds = %for.inc38, %if.then30
  %next.0 = phi %struct.cgraph_node* [ %26, %if.then30 ], [ %next.0.pre, %for.inc38 ], !dbg !2772
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !2716, metadata !DIExpression()), !dbg !2773
  %cmp = icmp eq %struct.cgraph_node* %next.0, %24, !dbg !2774
  br i1 %cmp, label %for.inc43.loopexit, label %for.body33, !dbg !2776

for.body33:                                       ; preds = %for.cond32
  %call34 = call fastcc zeroext i8 @cgraph_node_in_set_p(%struct.cgraph_node* %next.0, %struct.cgraph_node_set_def* %set) #7, !dbg !2777
  %tobool35 = icmp eq i8 %call34, 0, !dbg !2777
  br i1 %tobool35, label %if.then36, label %for.inc38, !dbg !2779

if.then36:                                        ; preds = %for.body33
  %call37 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %3, %struct.cgraph_node* %next.0) #7, !dbg !2780
  br label %for.inc38, !dbg !2780

for.inc38:                                        ; preds = %for.body33, %if.then36
  %next.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 14, !dbg !2772
  %next.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next.0.in.phi.trans.insert, align 8, !dbg !2772
  br label %for.cond32, !dbg !2781, !llvm.loop !2782

for.inc43.loopexit:                               ; preds = %for.cond32
  br label %for.inc43, !dbg !2784

for.inc43:                                        ; preds = %for.inc43.loopexit, %cond.end26, %for.body19
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 6, !dbg !2784
  br label %for.cond17, !dbg !2785, !llvm.loop !2786

for.end44:                                        ; preds = %for.cond17
  %same_comdat_group45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call16, i64 0, i32 14, !dbg !2788
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group45, align 8, !dbg !2788
  %tobool46 = icmp eq %struct.cgraph_node* %27, null, !dbg !2789
  br i1 %tobool46, label %for.inc62, label %if.then47, !dbg !2790

if.then47:                                        ; preds = %for.end44
  br label %for.cond50, !dbg !2791

for.cond50:                                       ; preds = %for.inc58, %if.then47
  %next48.0 = phi %struct.cgraph_node* [ %27, %if.then47 ], [ %next48.0.pre, %for.inc58 ], !dbg !2793
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next48.0, metadata !2721, metadata !DIExpression()), !dbg !2794
  %cmp51 = icmp eq %struct.cgraph_node* %next48.0, %call16, !dbg !2795
  br i1 %cmp51, label %for.inc62.loopexit, label %for.body52, !dbg !2797

for.body52:                                       ; preds = %for.cond50
  %call53 = call fastcc zeroext i8 @cgraph_node_in_set_p(%struct.cgraph_node* %next48.0, %struct.cgraph_node_set_def* %set) #7, !dbg !2798
  %tobool54 = icmp eq i8 %call53, 0, !dbg !2798
  br i1 %tobool54, label %if.then55, label %for.inc58, !dbg !2800

if.then55:                                        ; preds = %for.body52
  %call56 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %3, %struct.cgraph_node* %next48.0) #7, !dbg !2801
  br label %for.inc58, !dbg !2801

for.inc58:                                        ; preds = %for.body52, %if.then55
  %next48.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next48.0, i64 0, i32 14, !dbg !2793
  %next48.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next48.0.in.phi.trans.insert, align 8, !dbg !2793
  br label %for.cond50, !dbg !2802, !llvm.loop !2803

for.inc62.loopexit:                               ; preds = %for.cond50
  br label %for.inc62, !dbg !2805

for.inc62:                                        ; preds = %for.inc62.loopexit, %for.end44
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2691, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !2805
  br label %for.cond11, !dbg !2806, !llvm.loop !2807

for.end63:                                        ; preds = %for.cond11
  %call64 = call fastcc i32 @lto_cgraph_encoder_size(%struct.lto_cgraph_encoder_d* %3) #7, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2699, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()), !dbg !2728
  br label %for.cond65, !dbg !2810

for.cond65:                                       ; preds = %for.body67, %for.end63
  %i.0 = phi i32 [ 0, %for.end63 ], [ %inc, %for.body67 ], !dbg !2812
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2698, metadata !DIExpression()), !dbg !2728
  %cmp66 = icmp slt i32 %i.0, %call64, !dbg !2813
  br i1 %cmp66, label %for.body67, label %for.end70, !dbg !2815

for.body67:                                       ; preds = %for.cond65
  %call68 = call %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d* %3, i32 %i.0) #7, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call68, metadata !2653, metadata !DIExpression()), !dbg !2728
  call fastcc void @lto_output_node(%struct.lto_simple_output_block* %call, %struct.cgraph_node* %call68, %struct.lto_cgraph_encoder_d* %3, %struct.cgraph_node_set_def* %set, %struct.bitmap_head_def* %call3) #7, !dbg !2818
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2698, metadata !DIExpression()), !dbg !2728
  br label %for.cond65, !dbg !2820, !llvm.loop !2821

for.end70:                                        ; preds = %for.cond65
  call void @lto_bitmap_free(%struct.bitmap_head_def* %call3) #6, !dbg !2823
  %28 = bitcast %struct.cgraph_node_set_iterator* %tmp71 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #8, !dbg !2824
  %call72 = call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !2824
  %29 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp71, i64 0, i32 0, !dbg !2824
  %30 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call72, 0, !dbg !2824
  store %struct.cgraph_node_set_def* %30, %struct.cgraph_node_set_def** %29, align 8, !dbg !2824
  %31 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp71, i64 0, i32 1, !dbg !2824
  %32 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call72, 1, !dbg !2824
  store i32 %32, i32* %31, align 8, !dbg !2824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %28, i64 16, i1 false), !dbg !2824
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #8, !dbg !2824
  br label %for.cond73, !dbg !2826

for.cond73:                                       ; preds = %for.inc92, %for.end70
  %33 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2827
  %34 = load i32, i32* %10, align 8, !dbg !2827
  %call74 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %33, i32 %34) #7, !dbg !2827
  %tobool75 = icmp eq i8 %call74, 0, !dbg !2829
  br i1 %tobool75, label %for.body77, label %for.end93, !dbg !2830

for.body77:                                       ; preds = %for.cond73
  %35 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %9, align 8, !dbg !2831
  %36 = load i32, i32* %10, align 8, !dbg !2831
  %call78 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %35, i32 %36) #7, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call78, metadata !2653, metadata !DIExpression()), !dbg !2728
  %callees79 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call78, i64 0, i32 1, !dbg !2833
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees79, align 8, !dbg !2833
  %tobool80 = icmp eq %struct.cgraph_edge* %37, null, !dbg !2835
  br i1 %tobool80, label %for.inc92, label %if.then81, !dbg !2836

if.then81:                                        ; preds = %for.body77
  br label %while.cond, !dbg !2837

while.cond:                                       ; preds = %while.body, %if.then81
  %edge.1 = phi %struct.cgraph_edge* [ %37, %if.then81 ], [ %38, %while.body ], !dbg !2839
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1, metadata !2697, metadata !DIExpression()), !dbg !2728
  %next_callee83 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.1, i64 0, i32 6, !dbg !2840
  %38 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee83, align 8, !dbg !2840
  %tobool84 = icmp eq %struct.cgraph_edge* %38, null, !dbg !2837
  br i1 %tobool84, label %for.cond86.preheader, label %while.body, !dbg !2837

for.cond86.preheader:                             ; preds = %while.cond
  %edge.1.lcssa = phi %struct.cgraph_edge* [ %edge.1, %while.cond ], !dbg !2839
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1.lcssa, metadata !2697, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.1.lcssa, metadata !2697, metadata !DIExpression()), !dbg !2728
  br label %for.cond86, !dbg !2841

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !2837, !llvm.loop !2843

for.cond86:                                       ; preds = %for.cond86.preheader, %for.body88
  %edge.2 = phi %struct.cgraph_edge* [ %39, %for.body88 ], [ %edge.1.lcssa, %for.cond86.preheader ], !dbg !2839
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.2, metadata !2697, metadata !DIExpression()), !dbg !2728
  %tobool87 = icmp eq %struct.cgraph_edge* %edge.2, null, !dbg !2841
  br i1 %tobool87, label %for.inc92.loopexit, label %for.body88, !dbg !2841

for.body88:                                       ; preds = %for.cond86
  call fastcc void @lto_output_edge(%struct.lto_simple_output_block* %call, %struct.cgraph_edge* nonnull %edge.2, %struct.lto_cgraph_encoder_d* %3) #7, !dbg !2845
  %prev_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.2, i64 0, i32 5, !dbg !2847
  %39 = load %struct.cgraph_edge*, %struct.cgraph_edge** %prev_callee, align 8, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %39, metadata !2697, metadata !DIExpression()), !dbg !2728
  br label %for.cond86, !dbg !2848, !llvm.loop !2849

for.inc92.loopexit:                               ; preds = %for.cond86
  br label %for.inc92, !dbg !2851

for.inc92:                                        ; preds = %for.inc92.loopexit, %for.body77
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2691, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !2851
  br label %for.cond73, !dbg !2852, !llvm.loop !2853

for.end93:                                        ; preds = %for.cond73
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 2, !dbg !2855
  %40 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2855
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %40, i64 0) #6, !dbg !2856
  br label %for.cond94, !dbg !2857

for.cond94:                                       ; preds = %for.inc108, %for.end93
  %can.0.in = phi %struct.cgraph_asm_node** [ @cgraph_asm_nodes, %for.end93 ], [ %next109, %for.inc108 ]
  %can.0 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %can.0.in, align 8, !dbg !2858
  call void @llvm.dbg.value(metadata %struct.cgraph_asm_node* %can.0, metadata !2702, metadata !DIExpression()), !dbg !2728
  %tobool95 = icmp eq %struct.cgraph_asm_node* %can.0, null, !dbg !2859
  br i1 %tobool95, label %for.end110, label %for.body96, !dbg !2859

for.body96:                                       ; preds = %for.cond94
  %asm_str = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %can.0, i64 0, i32 1, !dbg !2860
  %41 = bitcast %union.tree_node** %asm_str to %struct.tree_string**, !dbg !2860
  %42 = load %struct.tree_string*, %struct.tree_string** %41, align 8, !dbg !2860
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %42, i64 0, i32 1, !dbg !2860
  %43 = load i32, i32* %length, align 8, !dbg !2860
  call void @llvm.dbg.value(metadata i32 %43, metadata !2724, metadata !DIExpression()), !dbg !2861
  %44 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2862
  %conv = sext i32 %43 to i64, !dbg !2863
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %44, i64 %conv) #6, !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()), !dbg !2728
  %45 = sext i32 %43 to i64, !dbg !2865
  br label %for.cond98, !dbg !2865

for.cond98:                                       ; preds = %for.body101, %for.body96
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body101 ], [ 0, %for.body96 ], !dbg !2867
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2698, metadata !DIExpression()), !dbg !2728
  %cmp99 = icmp slt i64 %indvars.iv, %45, !dbg !2868
  br i1 %cmp99, label %for.body101, label %for.inc108, !dbg !2870

for.body101:                                      ; preds = %for.cond98
  %46 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2871
  %47 = load %struct.tree_string*, %struct.tree_string** %41, align 8, !dbg !2872
  %arrayidx = getelementptr inbounds %struct.tree_string, %struct.tree_string* %47, i64 0, i32 2, i64 %indvars.iv, !dbg !2872
  %48 = load i8, i8* %arrayidx, align 1, !dbg !2872
  call void @lto_output_1_stream(%struct.lto_output_stream* %46, i8 signext %48) #6, !dbg !2873
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2874
  call void @llvm.dbg.value(metadata i32 undef, metadata !2698, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2728
  br label %for.cond98, !dbg !2875, !llvm.loop !2876

for.inc108:                                       ; preds = %for.cond98
  %next109 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %can.0, i64 0, i32 0, !dbg !2878
  br label %for.cond94, !dbg !2879, !llvm.loop !2880

for.end110:                                       ; preds = %for.cond94
  %49 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2882
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %49, i64 0) #6, !dbg !2883
  call void @lto_destroy_simple_output_block(%struct.lto_simple_output_block* %call) #6, !dbg !2884
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2885
  ret void, !dbg !2885
}

declare dso_local %struct.lto_simple_output_block* @lto_create_simple_output_block(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @output_profile_summary(%struct.lto_simple_output_block* %ob) unnamed_addr #4 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %ob, metadata !2890, metadata !DIExpression()), !dbg !2891
  %0 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2892
  %tobool = icmp eq %struct.gcov_ctr_summary* %0, null, !dbg !2892
  br i1 %tobool, label %if.else, label %if.then, !dbg !2894

if.then:                                          ; preds = %entry
  %runs = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %0, i64 0, i32 1, !dbg !2895
  %1 = load i32, i32* %runs, align 4, !dbg !2895
  %tobool1 = icmp eq i32 %1, 0, !dbg !2895
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !2895

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 364, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2895
  %.pre = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2897
  %runs2.phi.trans.insert = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %.pre, i64 0, i32 1, !dbg !2898
  %.pre1 = load i32, i32* %runs2.phi.trans.insert, align 4, !dbg !2899
  br label %cond.end, !dbg !2895

cond.end:                                         ; preds = %if.then, %cond.true
  %2 = phi i32 [ %1, %if.then ], [ %.pre1, %cond.true ], !dbg !2899
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 2, !dbg !2900
  %3 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2900
  %conv = zext i32 %2 to i64, !dbg !2897
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %3, i64 %conv) #6, !dbg !2901
  %4 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2902
  %5 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2903
  %sum_all = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %5, i64 0, i32 2, !dbg !2904
  %6 = load i64, i64* %sum_all, align 8, !dbg !2904
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %4, i64 %6) #6, !dbg !2905
  %7 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2906
  %8 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2907
  %run_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %8, i64 0, i32 3, !dbg !2908
  %9 = load i64, i64* %run_max, align 8, !dbg !2908
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %7, i64 %9) #6, !dbg !2909
  %10 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2910
  %11 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2911
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %11, i64 0, i32 4, !dbg !2912
  %12 = load i64, i64* %sum_max, align 8, !dbg !2912
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %10, i64 %12) #6, !dbg !2913
  br label %if.end, !dbg !2914

if.else:                                          ; preds = %entry
  %main_stream6 = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 2, !dbg !2915
  %13 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream6, align 8, !dbg !2915
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %13, i64 0) #6, !dbg !2916
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret void, !dbg !2917
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @lto_bitmap_alloc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !2918 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2922, metadata !DIExpression()), !dbg !2924
  %set1 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !2925
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set1, align 8, !dbg !2926
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !2927
  store i32 0, i32* %index, align 8, !dbg !2928
  %0 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !2929
  %1 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %0, align 8, !dbg !2929
  ret { %struct.cgraph_node_set_def*, i32 } %1, !dbg !2929
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !2930 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !2935
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2935
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !2935
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2935

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !2935
  br label %cond.end, !dbg !2935

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2935
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #7, !dbg !2935
  %cmp = icmp ule i32 %call, %csi.coerce1, !dbg !2936
  %conv3 = zext i1 %cmp to i8, !dbg !2937
  ret i8 %conv3, !dbg !2938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !2939 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !2944
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2944
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !2944
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2944

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !2944
  br label %cond.end, !dbg !2944

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2944
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %csi.coerce1) #7, !dbg !2944
  ret %struct.cgraph_node* %call, !dbg !2945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @csi_next(%struct.cgraph_node_set_iterator* %csi) unnamed_addr #0 !dbg !2946 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2951, metadata !DIExpression()), !dbg !2952
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !2953
  %0 = load i32, i32* %index, align 8, !dbg !2954
  %inc = add i32 %0, 1, !dbg !2954
  store i32 %inc, i32* %index, align 8, !dbg !2954
  ret void, !dbg !2955
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_node_in_set_p(%struct.cgraph_node* %node, %struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !2956 {
entry:
  %csi = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2961, metadata !DIExpression()), !dbg !2963
  %0 = bitcast %struct.cgraph_node_set_iterator* %csi to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2964
  %1 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2965
  %call = tail call { %struct.cgraph_node_set_def*, i32 } @cgraph_node_set_find(%struct.cgraph_node_set_def* %set, %struct.cgraph_node* %node) #6, !dbg !2965
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !2965
  %3 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call, 0, !dbg !2965
  store %struct.cgraph_node_set_def* %3, %struct.cgraph_node_set_def** %2, align 8, !dbg !2965
  %4 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !2965
  %5 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call, 1, !dbg !2965
  store i32 %5, i32* %4, align 8, !dbg !2965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2965
  %6 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 0, !dbg !2966
  %7 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !2966
  %8 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !2966
  %9 = load i32, i32* %8, align 8, !dbg !2966
  %call1 = tail call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %7, i32 %9) #7, !dbg !2966
  %tobool = icmp eq i8 %call1, 0, !dbg !2967
  %conv = zext i1 %tobool to i8, !dbg !2967
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2968
  ret i8 %conv, !dbg !2969
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lto_cgraph_encoder_size(%struct.lto_cgraph_encoder_d* %encoder) unnamed_addr #4 !dbg !2970 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2974, metadata !DIExpression()), !dbg !2975
  %nodes = getelementptr inbounds %struct.lto_cgraph_encoder_d, %struct.lto_cgraph_encoder_d* %encoder, i64 0, i32 1, !dbg !2976
  %0 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !2976
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_heap* %0, null, !dbg !2976
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2976

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %0, i64 0, i32 0, !dbg !2976
  br label %cond.end, !dbg !2976

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2976
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #7, !dbg !2976
  ret i32 %call, !dbg !2977
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_output_node(%struct.lto_simple_output_block* %ob, %struct.cgraph_node* %node, %struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node_set_def* %set, %struct.bitmap_head_def* %written_decls) unnamed_addr #4 !dbg !2978 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %ob, metadata !2982, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2983, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !2984, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2985, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %written_decls, metadata !2986, metadata !DIExpression()), !dbg !3019
  %call = tail call fastcc zeroext i8 @cgraph_node_in_set_p(%struct.cgraph_node* %node, %struct.cgraph_node_set_def* %set) #7, !dbg !3020
  %tobool = icmp eq i8 %call, 0, !dbg !3021
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !3012, metadata !DIExpression()), !dbg !3019
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_minimal**, !dbg !3022
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !3022
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 2, !dbg !3022
  %2 = load i32, i32* %uid, align 4, !dbg !3022
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %written_decls, i32 %2) #6, !dbg !3023
  %conv2 = trunc i32 %call1 to i8, !dbg !3023
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !3013, metadata !DIExpression()), !dbg !3019
  %call3 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #6, !dbg !3024
  switch i32 %call3, label %sw.default [
    i32 1, label %sw.epilog
    i32 3, label %sw.bb4
    i32 4, label %sw.bb4
    i32 2, label %sw.bb5
  ], !dbg !3025

sw.bb4:                                           ; preds = %entry, %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !2987, metadata !DIExpression()), !dbg !3019
  br label %sw.epilog, !dbg !3026

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !2987, metadata !DIExpression()), !dbg !3019
  br label %sw.epilog, !dbg !3028

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3029
  br label %sw.epilog, !dbg !3030

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb5, %sw.bb4
  %tag.0 = phi i32 [ undef, %sw.default ], [ 2, %sw.bb5 ], [ 1, %sw.bb4 ], [ 3, %entry ]
  call void @llvm.dbg.value(metadata i32 %tag.0, metadata !2987, metadata !DIExpression()), !dbg !3019
  %spec.select = select i1 %tobool, i32 3, i32 %tag.0, !dbg !3031
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2987, metadata !DIExpression()), !dbg !3019
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 2, !dbg !3032
  %3 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3032
  %conv7 = zext i32 %spec.select to i64, !dbg !3033
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %3, i64 %conv7) #6, !dbg !3034
  call void @llvm.dbg.value(metadata i8 undef, metadata !3008, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  call void @llvm.dbg.value(metadata i8 undef, metadata !3009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  call void @llvm.dbg.value(metadata i8 undef, metadata !3010, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  call void @llvm.dbg.value(metadata i16 undef, metadata !3011, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  br i1 %tobool, label %if.then27, label %if.else, !dbg !3035

if.then27:                                        ; preds = %sw.epilog
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !3036
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3036
  %tobool28 = icmp eq %struct.cgraph_node* %4, null, !dbg !3036
  br i1 %tobool28, label %if.end34, label %cond.true, !dbg !3036

cond.true:                                        ; preds = %if.then27
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3036
  br label %if.end34, !dbg !3036

if.else:                                          ; preds = %sw.epilog
  %analyzed21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3039
  %bf.load22 = load i16, i16* %analyzed21, align 4, !dbg !3039
  call void @llvm.dbg.value(metadata i16 %bf.load22, metadata !3011, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.lshr23 = lshr i16 %bf.load22, 5, !dbg !3039
  call void @llvm.dbg.value(metadata i16 %bf.lshr23, metadata !3011, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.clear24 = and i16 %bf.lshr23, 1, !dbg !3039
  call void @llvm.dbg.value(metadata i16 %bf.clear24, metadata !3011, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i16 %bf.clear24, metadata !3011, metadata !DIExpression()), !dbg !3019
  %inlinable16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3040
  %bf.load17 = load i8, i8* %inlinable16, align 8, !dbg !3040
  call void @llvm.dbg.value(metadata i8 %bf.load17, metadata !3010, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.lshr18 = lshr i8 %bf.load17, 3, !dbg !3040
  call void @llvm.dbg.value(metadata i8 %bf.lshr18, metadata !3010, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.clear19 = and i8 %bf.lshr18, 1, !dbg !3040
  call void @llvm.dbg.value(metadata i8 %bf.clear19, metadata !3010, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %bf.clear19, metadata !3010, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %bf.load17, metadata !3009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.lshr = lshr i8 %bf.load17, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i8 %bf.lshr, metadata !3009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.clear13 = and i8 %bf.lshr, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i8 %bf.clear13, metadata !3009, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %bf.clear13, metadata !3009, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %bf.load17, metadata !3008, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %bf.clear = and i8 %bf.load17, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i8 %bf.clear, metadata !3008, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %bf.clear, metadata !3008, metadata !DIExpression()), !dbg !3019
  %decl29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3043
  %5 = load %union.tree_node*, %union.tree_node** %decl29, align 8, !dbg !3043
  %call30 = tail call zeroext i8 @lto_forced_extern_inline_p(%union.tree_node* %5) #6, !dbg !3045
  %tobool31 = icmp ne i8 %call30, 0, !dbg !3045
  %narrow = select i1 %tobool31, i8 1, i8 %bf.clear, !dbg !3046
  %narrow4 = select i1 %tobool31, i8 0, i8 %bf.clear13, !dbg !3046
  %narrow5 = select i1 %tobool31, i8 1, i8 %bf.clear19, !dbg !3046
  call void @llvm.dbg.value(metadata i8 %narrow5, metadata !3010, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %narrow4, metadata !3009, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %narrow, metadata !3008, metadata !DIExpression()), !dbg !3019
  %phitmp = zext i8 %narrow to i64
  %phitmp6 = zext i8 %narrow4 to i64
  %phitmp7 = zext i8 %narrow5 to i64
  %phitmp8 = zext i16 %bf.clear24 to i64
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %cond.true, %if.else
  %local.1 = phi i64 [ %phitmp, %if.else ], [ 0, %if.then27 ], [ 0, %cond.true ]
  %externally_visible.1 = phi i64 [ %phitmp6, %if.else ], [ 1, %if.then27 ], [ 1, %cond.true ]
  %inlinable.1 = phi i64 [ %phitmp7, %if.else ], [ 0, %if.then27 ], [ 0, %cond.true ]
  %analyzed.0 = phi i64 [ %phitmp8, %if.else ], [ 0, %if.then27 ], [ 0, %cond.true ]
  %6 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3047
  %conv2.mask = and i32 %call1, 255, !dbg !3048
  %conv36 = zext i32 %conv2.mask to i64, !dbg !3048
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %6, i64 %conv36) #6, !dbg !3049
  %tobool37 = icmp eq i8 %conv2, 0, !dbg !3050
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !3052

if.then38:                                        ; preds = %if.end34
  %7 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !3053
  %uid41 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %7, i64 0, i32 2, !dbg !3053
  %8 = load i32, i32* %uid41, align 4, !dbg !3053
  %call42 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %written_decls, i32 %8) #6, !dbg !3054
  br label %if.end43, !dbg !3054

if.end43:                                         ; preds = %if.end34, %if.then38
  %decl_state = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 1, !dbg !3055
  %9 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3055
  %10 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3056
  %decl45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3057
  %11 = load %union.tree_node*, %union.tree_node** %decl45, align 8, !dbg !3057
  tail call void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %9, %struct.lto_output_stream* %10, %union.tree_node* %11) #6, !dbg !3058
  %12 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3059
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !3060
  %13 = load i64, i64* %count, align 8, !dbg !3060
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %12, i64 %13) #6, !dbg !3061
  %call47 = tail call %struct.bitpack_d* @bitpack_create() #6, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call47, metadata !2988, metadata !DIExpression()), !dbg !3019
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %local.1, i32 1) #6, !dbg !3063
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %externally_visible.1, i32 1) #6, !dbg !3064
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3065
  %bf.load51 = load i8, i8* %finalized, align 8, !dbg !3065
  %bf.lshr52 = lshr i8 %bf.load51, 2, !dbg !3065
  %bf.clear53 = and i8 %bf.lshr52, 1, !dbg !3065
  %conv55 = zext i8 %bf.clear53 to i64, !dbg !3066
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv55, i32 1) #6, !dbg !3067
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %inlinable.1, i32 1) #6, !dbg !3068
  %bf.load58 = load i8, i8* %finalized, align 8, !dbg !3069
  %bf.lshr59 = lshr i8 %bf.load58, 4, !dbg !3069
  %bf.clear60 = and i8 %bf.lshr59, 1, !dbg !3069
  %conv62 = zext i8 %bf.clear60 to i64, !dbg !3070
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv62, i32 1) #6, !dbg !3071
  %bf.load64 = load i8, i8* %finalized, align 8, !dbg !3072
  %bf.lshr65 = lshr i8 %bf.load64, 5, !dbg !3072
  %bf.clear66 = and i8 %bf.lshr65, 1, !dbg !3072
  %conv68 = zext i8 %bf.clear66 to i64, !dbg !3073
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv68, i32 1) #6, !dbg !3074
  %bf.load70 = load i8, i8* %finalized, align 8, !dbg !3075
  %bf.lshr71 = lshr i8 %bf.load70, 6, !dbg !3075
  %bf.clear72 = and i8 %bf.lshr71, 1, !dbg !3075
  %conv74 = zext i8 %bf.clear72 to i64, !dbg !3076
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv74, i32 1) #6, !dbg !3077
  %bf.load76 = load i8, i8* %finalized, align 8, !dbg !3078
  %bf.lshr77 = lshr i8 %bf.load76, 7, !dbg !3078
  %conv79 = zext i8 %bf.lshr77 to i64, !dbg !3079
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv79, i32 1) #6, !dbg !3080
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3081
  %bf.load80 = load i16, i16* %needed, align 4, !dbg !3081
  %bf.clear81 = and i16 %bf.load80, 1, !dbg !3081
  %conv83 = zext i16 %bf.clear81 to i64, !dbg !3082
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv83, i32 1) #6, !dbg !3083
  %bf.load84 = load i16, i16* %needed, align 4, !dbg !3084
  %bf.lshr85 = lshr i16 %bf.load84, 1, !dbg !3084
  %bf.clear86 = and i16 %bf.lshr85, 1, !dbg !3084
  %conv88 = zext i16 %bf.clear86 to i64, !dbg !3085
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv88, i32 1) #6, !dbg !3086
  %bf.load89 = load i16, i16* %needed, align 4, !dbg !3087
  %bf.lshr90 = lshr i16 %bf.load89, 2, !dbg !3087
  %bf.clear91 = and i16 %bf.lshr90, 1, !dbg !3087
  %conv93 = zext i16 %bf.clear91 to i64, !dbg !3088
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv93, i32 1) #6, !dbg !3089
  %bf.load94 = load i16, i16* %needed, align 4, !dbg !3090
  %bf.lshr95 = lshr i16 %bf.load94, 3, !dbg !3090
  %bf.clear96 = and i16 %bf.lshr95, 1, !dbg !3090
  %conv98 = zext i16 %bf.clear96 to i64, !dbg !3091
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv98, i32 1) #6, !dbg !3092
  %bf.load99 = load i16, i16* %needed, align 4, !dbg !3093
  %bf.lshr100 = lshr i16 %bf.load99, 4, !dbg !3093
  %bf.clear101 = and i16 %bf.lshr100, 1, !dbg !3093
  %conv103 = zext i16 %bf.clear101 to i64, !dbg !3094
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv103, i32 1) #6, !dbg !3095
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %analyzed.0, i32 1) #6, !dbg !3096
  %bf.load105 = load i16, i16* %needed, align 4, !dbg !3097
  %bf.lshr106 = lshr i16 %bf.load105, 6, !dbg !3097
  %bf.clear107 = and i16 %bf.lshr106, 1, !dbg !3097
  %conv109 = zext i16 %bf.clear107 to i64, !dbg !3098
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv109, i32 1) #6, !dbg !3099
  %bf.load110 = load i16, i16* %needed, align 4, !dbg !3100
  %bf.lshr111 = lshr i16 %bf.load110, 7, !dbg !3100
  %bf.clear112 = and i16 %bf.lshr111, 1, !dbg !3100
  %conv114 = zext i16 %bf.clear112 to i64, !dbg !3101
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv114, i32 1) #6, !dbg !3102
  %bf.load115 = load i16, i16* %needed, align 4, !dbg !3103
  %bf.lshr116 = lshr i16 %bf.load115, 8, !dbg !3103
  %bf.clear117 = and i16 %bf.lshr116, 1, !dbg !3103
  %conv119 = zext i16 %bf.clear117 to i64, !dbg !3104
  tail call void @bp_pack_value(%struct.bitpack_d* %call47, i64 %conv119, i32 1) #6, !dbg !3105
  %14 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3106
  tail call void @lto_output_bitpack(%struct.lto_output_stream* %14, %struct.bitpack_d* %call47) #6, !dbg !3107
  tail call void @bitpack_delete(%struct.bitpack_d* %call47) #6, !dbg !3108
  %cmp = icmp eq i32 %spec.select, 3, !dbg !3109
  br i1 %cmp, label %if.end141, label %if.then122, !dbg !3111

if.then122:                                       ; preds = %if.end43
  %15 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3112
  %estimated_self_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 0, !dbg !3114
  %16 = load i64, i64* %estimated_self_stack_size, align 8, !dbg !3114
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %15, i64 %16) #6, !dbg !3115
  %17 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3116
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !3117
  %18 = load i32, i32* %self_size, align 8, !dbg !3117
  %conv128 = sext i32 %18 to i64, !dbg !3118
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %17, i64 %conv128) #6, !dbg !3119
  %19 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3120
  %size_inlining_benefit = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 2, !dbg !3121
  %20 = load i32, i32* %size_inlining_benefit, align 4, !dbg !3121
  %conv132 = sext i32 %20 to i64, !dbg !3122
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %19, i64 %conv132) #6, !dbg !3123
  %21 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3124
  %self_time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 3, !dbg !3125
  %22 = load i32, i32* %self_time, align 8, !dbg !3125
  %conv136 = sext i32 %22 to i64, !dbg !3126
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %21, i64 %conv136) #6, !dbg !3127
  %23 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3128
  %time_inlining_benefit = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 4, !dbg !3129
  %24 = load i32, i32* %time_inlining_benefit, align 4, !dbg !3129
  %conv140 = sext i32 %24 to i64, !dbg !3130
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %23, i64 %conv140) #6, !dbg !3131
  br label %if.end141, !dbg !3132

if.end141:                                        ; preds = %if.end43, %if.then122
  %25 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3133
  %estimated_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 0, !dbg !3134
  %26 = load i64, i64* %estimated_stack_size, align 8, !dbg !3134
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %25, i64 %26) #6, !dbg !3135
  %27 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3136
  %stack_frame_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 1, !dbg !3137
  %28 = load i64, i64* %stack_frame_offset, align 8, !dbg !3137
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %27, i64 %28) #6, !dbg !3138
  %inlined_to147 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !3139
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to147, align 8, !dbg !3139
  %tobool148 = icmp eq %struct.cgraph_node* %29, null, !dbg !3141
  %or.cond = or i1 %tobool148, %tobool, !dbg !3142
  br i1 %or.cond, label %if.end162, label %if.then150, !dbg !3142

if.then150:                                       ; preds = %if.end141
  %call153 = tail call i32 @lto_cgraph_encoder_lookup(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* %29) #7, !dbg !3143
  %conv154 = sext i32 %call153 to i64, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %conv154, metadata !3014, metadata !DIExpression()), !dbg !3019
  %cmp155 = icmp eq i32 %call153, -1, !dbg !3145
  br i1 %cmp155, label %cond.true157, label %if.end162, !dbg !3145

cond.true157:                                     ; preds = %if.then150
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3145
  br label %if.end162, !dbg !3145

if.end162:                                        ; preds = %if.then150, %if.end141, %cond.true157
  %ref.0 = phi i64 [ %conv154, %if.then150 ], [ %conv154, %cond.true157 ], [ -1, %if.end141 ], !dbg !3146
  call void @llvm.dbg.value(metadata i64 %ref.0, metadata !3014, metadata !DIExpression()), !dbg !3019
  %30 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3147
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %30, i64 %ref.0) #6, !dbg !3148
  %31 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3149
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 3, !dbg !3150
  %32 = load i32, i32* %time, align 8, !dbg !3150
  %conv166 = sext i32 %32 to i64, !dbg !3151
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %31, i64 %conv166) #6, !dbg !3152
  %33 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3153
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !3154
  %34 = load i32, i32* %size, align 4, !dbg !3154
  %conv169 = sext i32 %34 to i64, !dbg !3155
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %33, i64 %conv169) #6, !dbg !3156
  %35 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3157
  %estimated_growth = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 5, !dbg !3158
  %36 = load i32, i32* %estimated_growth, align 8, !dbg !3158
  %conv172 = sext i32 %36 to i64, !dbg !3159
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %35, i64 %conv172) #6, !dbg !3160
  %37 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3161
  %inlined = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 6, !dbg !3162
  %38 = load i8, i8* %inlined, align 4, !dbg !3162
  %conv175 = zext i8 %38 to i64, !dbg !3163
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %37, i64 %conv175) #6, !dbg !3164
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 14, !dbg !3165
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3165
  %tobool176 = icmp eq %struct.cgraph_node* %39, null, !dbg !3167
  br i1 %tobool176, label %if.end188, label %if.then177, !dbg !3168

if.then177:                                       ; preds = %if.end162
  %call179 = tail call i32 @lto_cgraph_encoder_lookup(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* nonnull %39) #7, !dbg !3169
  %conv180 = sext i32 %call179 to i64, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %conv180, metadata !3014, metadata !DIExpression()), !dbg !3019
  %cmp181 = icmp eq i32 %call179, -1, !dbg !3171
  br i1 %cmp181, label %cond.true183, label %if.end188, !dbg !3171

cond.true183:                                     ; preds = %if.then177
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3171
  br label %if.end188, !dbg !3171

if.end188:                                        ; preds = %if.then177, %if.end162, %cond.true183
  %ref.1 = phi i64 [ %conv180, %if.then177 ], [ %conv180, %cond.true183 ], [ -1, %if.end162 ], !dbg !3172
  call void @llvm.dbg.value(metadata i64 %ref.1, metadata !3014, metadata !DIExpression()), !dbg !3019
  %40 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3173
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %40, i64 %ref.1) #6, !dbg !3174
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !3175
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3175
  %tobool190 = icmp eq %struct.cgraph_node* %41, null, !dbg !3176
  br i1 %tobool190, label %if.else230, label %if.then191, !dbg !3177

if.then191:                                       ; preds = %if.end188
  call void @llvm.dbg.value(metadata i64 1, metadata !3018, metadata !DIExpression()), !dbg !3178
  br label %for.cond, !dbg !3179

for.cond:                                         ; preds = %for.body, %if.then191
  %alias192.0 = phi %struct.cgraph_node* [ %41, %if.then191 ], [ %42, %for.body ], !dbg !3181
  %alias_count.0 = phi i64 [ 1, %if.then191 ], [ %inc, %for.body ], !dbg !3178
  call void @llvm.dbg.value(metadata i64 %alias_count.0, metadata !3018, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias192.0, metadata !3015, metadata !DIExpression()), !dbg !3178
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.0, i64 0, i32 3, !dbg !3182
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %next, align 8, !dbg !3182
  %tobool194 = icmp eq %struct.cgraph_node* %42, null, !dbg !3184
  br i1 %tobool194, label %for.end, label %for.body, !dbg !3184

for.body:                                         ; preds = %for.cond
  %inc = add i64 %alias_count.0, 1, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3018, metadata !DIExpression()), !dbg !3178
  br label %for.cond, !dbg !3186, !llvm.loop !3187

for.end:                                          ; preds = %for.cond
  %alias192.0.lcssa = phi %struct.cgraph_node* [ %alias192.0, %for.cond ], !dbg !3181
  %alias_count.0.lcssa = phi i64 [ %alias_count.0, %for.cond ], !dbg !3178
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias192.0.lcssa, metadata !3015, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %alias_count.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias192.0.lcssa, metadata !3015, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %alias_count.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %alias_count.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3178
  %43 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3189
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %43, i64 %alias_count.0.lcssa) #6, !dbg !3190
  br label %do.body, !dbg !3191

do.body:                                          ; preds = %if.end228, %for.end
  %alias192.1 = phi %struct.cgraph_node* [ %alias192.0.lcssa, %for.end ], [ %61, %if.end228 ], !dbg !3178
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias192.1, metadata !3015, metadata !DIExpression()), !dbg !3178
  %44 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3192
  %45 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3194
  %decl199 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 0, !dbg !3195
  %46 = load %union.tree_node*, %union.tree_node** %decl199, align 8, !dbg !3195
  tail call void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %44, %struct.lto_output_stream* %45, %union.tree_node* %46) #6, !dbg !3196
  %thunk_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 5, !dbg !3197
  %47 = load i8, i8* %thunk_p, align 2, !dbg !3197
  %tobool200 = icmp eq i8 %47, 0, !dbg !3199
  %48 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3200
  br i1 %tobool200, label %if.else222, label %if.then201, !dbg !3201

if.then201:                                       ; preds = %do.body
  %this_adjusting = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 3, !dbg !3202
  %49 = load i8, i8* %this_adjusting, align 8, !dbg !3202
  %cmp205 = icmp ne i8 %49, 0, !dbg !3204
  %conv206 = zext i1 %cmp205 to i64, !dbg !3204
  %mul = shl nuw nsw i64 %conv206, 1, !dbg !3205
  %virtual_offset_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 4, !dbg !3206
  %50 = load i8, i8* %virtual_offset_p, align 1, !dbg !3206
  %cmp209 = icmp ne i8 %50, 0, !dbg !3207
  %conv210 = zext i1 %cmp209 to i64, !dbg !3207
  %mul211 = shl nuw nsw i64 %conv210, 2, !dbg !3208
  %add = or i64 %mul, %mul211, !dbg !3209
  %add212 = or i64 %add, 1, !dbg !3209
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %48, i64 %add212) #6, !dbg !3210
  %51 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3211
  %fixed_offset = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 0, !dbg !3212
  %52 = load i64, i64* %fixed_offset, align 8, !dbg !3212
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %51, i64 %52) #6, !dbg !3213
  %53 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3214
  %virtual_value = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 1, !dbg !3215
  %54 = load i64, i64* %virtual_value, align 8, !dbg !3215
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %53, i64 %54) #6, !dbg !3216
  %55 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3217
  %56 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3218
  %alias221 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 2, !dbg !3219
  %57 = load %union.tree_node*, %union.tree_node** %alias221, align 8, !dbg !3219
  tail call void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %55, %struct.lto_output_stream* %56, %union.tree_node* %57) #6, !dbg !3220
  br label %if.end228, !dbg !3221

if.else222:                                       ; preds = %do.body
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %48, i64 0) #6, !dbg !3222
  %58 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3224
  %59 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3225
  %alias227 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 22, i32 2, !dbg !3226
  %60 = load %union.tree_node*, %union.tree_node** %alias227, align 8, !dbg !3226
  tail call void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %58, %struct.lto_output_stream* %59, %union.tree_node* %60) #6, !dbg !3227
  br label %if.end228

if.end228:                                        ; preds = %if.else222, %if.then201
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias192.1, i64 0, i32 4, !dbg !3228
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %previous, align 8, !dbg !3228
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %61, metadata !3015, metadata !DIExpression()), !dbg !3178
  %tobool229 = icmp eq %struct.cgraph_node* %61, null, !dbg !3229
  br i1 %tobool229, label %if.end232.loopexit, label %do.body, !dbg !3229, !llvm.loop !3230

if.else230:                                       ; preds = %if.end188
  %62 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3232
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %62, i64 0) #6, !dbg !3233
  br label %if.end232

if.end232.loopexit:                               ; preds = %if.end228
  br label %if.end232, !dbg !3234

if.end232:                                        ; preds = %if.end232.loopexit, %if.else230
  ret void, !dbg !3234
}

declare dso_local void @lto_bitmap_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_output_edge(%struct.lto_simple_output_block* %ob, %struct.cgraph_edge* %edge, %struct.lto_cgraph_encoder_d* %encoder) unnamed_addr #4 !dbg !3235 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %ob, metadata !3239, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge, metadata !3240, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %encoder, metadata !3241, metadata !DIExpression()), !dbg !3245
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 2, !dbg !3246
  %0 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3246
  tail call void @lto_output_uleb128_stream(%struct.lto_output_stream* %0, i64 4) #6, !dbg !3247
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 1, !dbg !3248
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3248
  %call = tail call i32 @lto_cgraph_encoder_lookup(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* %1) #7, !dbg !3249
  %conv = sext i32 %call to i64, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3243, metadata !DIExpression()), !dbg !3245
  %cmp = icmp eq i32 %call, -1, !dbg !3250
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3250

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3250
  br label %cond.end, !dbg !3250

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3251
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %2, i64 %conv) #6, !dbg !3252
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 2, !dbg !3253
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3253
  %call3 = tail call i32 @lto_cgraph_encoder_lookup(%struct.lto_cgraph_encoder_d* %encoder, %struct.cgraph_node* %3) #7, !dbg !3254
  %conv4 = sext i32 %call3 to i64, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %conv4, metadata !3243, metadata !DIExpression()), !dbg !3245
  %cmp5 = icmp eq i32 %call3, -1, !dbg !3255
  br i1 %cmp5, label %cond.true7, label %cond.end9, !dbg !3255

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3255
  br label %cond.end9, !dbg !3255

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %4 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3256
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %4, i64 %conv4) #6, !dbg !3257
  %5 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3258
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 0, !dbg !3259
  %6 = load i64, i64* %count, align 8, !dbg !3259
  tail call void @lto_output_sleb128_stream(%struct.lto_output_stream* %5, i64 %6) #6, !dbg !3260
  %call13 = tail call %struct.bitpack_d* @bitpack_create() #6, !dbg !3261
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call13, metadata !3244, metadata !DIExpression()), !dbg !3245
  %7 = load i32, i32* @flag_wpa, align 4, !dbg !3262
  %tobool = icmp eq i32 %7, 0, !dbg !3262
  br i1 %tobool, label %cond.false15, label %cond.true14, !dbg !3262

cond.true14:                                      ; preds = %cond.end9
  %lto_stmt_uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 10, !dbg !3263
  %8 = load i32, i32* %lto_stmt_uid, align 4, !dbg !3263
  br label %cond.end17, !dbg !3262

cond.false15:                                     ; preds = %cond.end9
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 7, !dbg !3264
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !3264
  %call16 = tail call fastcc i32 @gimple_uid(%union.gimple_statement_d* %9) #7, !dbg !3265
  br label %cond.end17, !dbg !3262

cond.end17:                                       ; preds = %cond.false15, %cond.true14
  %cond18 = phi i32 [ %8, %cond.true14 ], [ %call16, %cond.false15 ], !dbg !3262
  call void @llvm.dbg.value(metadata i32 %cond18, metadata !3242, metadata !DIExpression()), !dbg !3245
  %conv19 = zext i32 %cond18 to i64, !dbg !3266
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv19, i32 32) #6, !dbg !3267
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 9, !dbg !3268
  %10 = load i32, i32* %inline_failed, align 8, !dbg !3268
  %conv20 = zext i32 %10 to i64, !dbg !3269
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv20, i32 32) #6, !dbg !3270
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 11, !dbg !3271
  %11 = load i32, i32* %frequency, align 8, !dbg !3271
  %conv21 = sext i32 %11 to i64, !dbg !3272
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv21, i32 32) #6, !dbg !3273
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 13, !dbg !3274
  %12 = load i16, i16* %loop_nest, align 8, !dbg !3274
  %conv22 = zext i16 %12 to i64, !dbg !3275
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv22, i32 30) #6, !dbg !3276
  %indirect_call = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge, i64 0, i32 14, !dbg !3277
  %bf.load = load i8, i8* %indirect_call, align 2, !dbg !3277
  %bf.clear = and i8 %bf.load, 1, !dbg !3277
  %conv23 = zext i8 %bf.clear to i64, !dbg !3278
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv23, i32 1) #6, !dbg !3279
  %bf.load24 = load i8, i8* %indirect_call, align 2, !dbg !3280
  %bf.lshr = lshr i8 %bf.load24, 1, !dbg !3280
  %bf.clear25 = and i8 %bf.lshr, 1, !dbg !3280
  %conv27 = zext i8 %bf.clear25 to i64, !dbg !3281
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv27, i32 1) #6, !dbg !3282
  %bf.load28 = load i8, i8* %indirect_call, align 2, !dbg !3283
  %bf.lshr29 = lshr i8 %bf.load28, 2, !dbg !3283
  %bf.clear30 = and i8 %bf.lshr29, 1, !dbg !3283
  %conv32 = zext i8 %bf.clear30 to i64, !dbg !3284
  tail call void @bp_pack_value(%struct.bitpack_d* %call13, i64 %conv32, i32 1) #6, !dbg !3285
  %13 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3286
  tail call void @lto_output_bitpack(%struct.lto_output_stream* %13, %struct.bitpack_d* %call13) #6, !dbg !3287
  tail call void @bitpack_delete(%struct.bitpack_d* %call13) #6, !dbg !3288
  ret void, !dbg !3289
}

declare dso_local void @lto_output_uleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #1

declare dso_local void @lto_output_1_stream(%struct.lto_output_stream*, i8 signext) local_unnamed_addr #1

declare dso_local void @lto_destroy_simple_output_block(%struct.lto_simple_output_block*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @input_cgraph() local_unnamed_addr #4 !dbg !3290 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.lto_file_decl_data** @lto_get_file_decl_data() #6, !dbg !3309
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data** %call, metadata !3294, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()), !dbg !3310
  %0 = bitcast i8** %data to i8*, !dbg !3311
  %1 = bitcast i64* %len to i8*, !dbg !3311
  br label %while.cond, !dbg !3312

while.cond:                                       ; preds = %if.end, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !3310
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3297, metadata !DIExpression()), !dbg !3310
  %inc = add i32 %j.0, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3297, metadata !DIExpression()), !dbg !3310
  %idxprom = zext i32 %j.0 to i64, !dbg !3314
  %arrayidx = getelementptr inbounds %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %call, i64 %idxprom, !dbg !3314
  %2 = load %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %arrayidx, align 8, !dbg !3314
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %2, metadata !3296, metadata !DIExpression()), !dbg !3310
  %tobool = icmp eq %struct.lto_file_decl_data* %2, null, !dbg !3312
  br i1 %tobool, label %while.end, label %while.body, !dbg !3312

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3315
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3316
  call void @llvm.dbg.value(metadata i8** %data, metadata !3299, metadata !DIExpression(DW_OP_deref)), !dbg !3311
  call void @llvm.dbg.value(metadata i64* %len, metadata !3301, metadata !DIExpression(DW_OP_deref)), !dbg !3311
  %call1 = call %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 3, i8** nonnull %data, i64* nonnull %len) #6, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %call1, metadata !3302, metadata !DIExpression()), !dbg !3311
  call fastcc void @input_profile_summary(%struct.lto_input_block* %call1) #7, !dbg !3318
  %call2 = call %struct.lto_cgraph_encoder_d* @lto_cgraph_encoder_new() #7, !dbg !3319
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %2, i64 0, i32 2, !dbg !3320
  store %struct.lto_cgraph_encoder_d* %call2, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3321
  call fastcc void @input_cgraph_1(%struct.lto_file_decl_data* nonnull %2, %struct.lto_input_block* %call1) #7, !dbg !3322
  %3 = load i8*, i8** %data, align 8, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %3, metadata !3299, metadata !DIExpression()), !dbg !3311
  %4 = load i64, i64* %len, align 8, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %4, metadata !3301, metadata !DIExpression()), !dbg !3311
  call void @lto_destroy_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 3, %struct.lto_input_block* %call1, i8* %3, i64 %4) #6, !dbg !3325
  %5 = load i32, i32* @flag_wpa, align 4, !dbg !3326
  %tobool3 = icmp eq i32 %5, 0, !dbg !3326
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3328

if.then:                                          ; preds = %while.body
  call fastcc void @lto_mark_file_for_ltrans(%struct.lto_file_decl_data* nonnull %2) #7, !dbg !3329
  br label %if.end, !dbg !3329

if.end:                                           ; preds = %while.body, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3330
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3330
  br label %while.cond, !dbg !3312, !llvm.loop !3331

while.end:                                        ; preds = %while.cond
  br label %for.cond, !dbg !3332

for.cond:                                         ; preds = %for.inc, %while.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %while.end ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3334
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3298, metadata !DIExpression()), !dbg !3310
  %tobool4 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3335
  br i1 %tobool4, label %for.end, label %for.body, !dbg !3335

for.body:                                         ; preds = %for.cond
  %lto_file_data = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 0, !dbg !3336
  %6 = load %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %lto_file_data, align 8, !dbg !3336
  %tobool5 = icmp eq %struct.lto_file_decl_data* %6, null, !dbg !3340
  br i1 %tobool5, label %for.inc, label %if.then6, !dbg !3341

if.then6:                                         ; preds = %for.body
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !3342
  store i8* null, i8** %aux, align 8, !dbg !3343
  br label %for.inc, !dbg !3344

for.inc:                                          ; preds = %for.body, %if.then6
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3345
  br label %for.cond, !dbg !3346, !llvm.loop !3347

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3349
}

declare dso_local %struct.lto_file_decl_data** @lto_get_file_decl_data() local_unnamed_addr #1

declare dso_local %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data*, i32, i8**, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @input_profile_summary(%struct.lto_input_block* %ib) unnamed_addr #4 !dbg !3350 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !3354, metadata !DIExpression()), !dbg !3356
  %call = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3357
  %conv = trunc i64 %call to i32, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3355, metadata !DIExpression()), !dbg !3356
  %tobool = icmp eq i32 %conv, 0, !dbg !3358
  br i1 %tobool, label %if.end21, label %if.then, !dbg !3360

if.then:                                          ; preds = %entry
  %0 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3361
  %tobool1 = icmp eq %struct.gcov_ctr_summary* %0, null, !dbg !3361
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3364

if.then2:                                         ; preds = %if.then
  store %struct.gcov_ctr_summary* @lto_gcov_summary, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3365
  store i32 %conv, i32* getelementptr inbounds (%struct.gcov_ctr_summary, %struct.gcov_ctr_summary* @lto_gcov_summary, i64 0, i32 1), align 4, !dbg !3367
  %call3 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3368
  store i64 %call3, i64* getelementptr inbounds (%struct.gcov_ctr_summary, %struct.gcov_ctr_summary* @lto_gcov_summary, i64 0, i32 2), align 8, !dbg !3369
  %call4 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3370
  store i64 %call4, i64* getelementptr inbounds (%struct.gcov_ctr_summary, %struct.gcov_ctr_summary* @lto_gcov_summary, i64 0, i32 3), align 8, !dbg !3371
  %call5 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3372
  store i64 %call5, i64* getelementptr inbounds (%struct.gcov_ctr_summary, %struct.gcov_ctr_summary* @lto_gcov_summary, i64 0, i32 4), align 8, !dbg !3373
  br label %if.end21, !dbg !3374

if.else:                                          ; preds = %if.then
  %runs6 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %0, i64 0, i32 1, !dbg !3375
  %1 = load i32, i32* %runs6, align 4, !dbg !3375
  %cmp = icmp eq i32 %1, %conv, !dbg !3377
  br i1 %cmp, label %lor.lhs.false, label %if.then19, !dbg !3378

lor.lhs.false:                                    ; preds = %if.else
  %sum_all = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %0, i64 0, i32 2, !dbg !3379
  %2 = load i64, i64* %sum_all, align 8, !dbg !3379
  %call8 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3380
  %cmp9 = icmp eq i64 %2, %call8, !dbg !3381
  br i1 %cmp9, label %lor.lhs.false11, label %if.then19, !dbg !3382

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %3 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3383
  %run_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %3, i64 0, i32 3, !dbg !3384
  %4 = load i64, i64* %run_max, align 8, !dbg !3384
  %call12 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3385
  %cmp13 = icmp eq i64 %4, %call12, !dbg !3386
  br i1 %cmp13, label %lor.lhs.false15, label %if.then19, !dbg !3387

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %5 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3388
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %5, i64 0, i32 4, !dbg !3389
  %6 = load i64, i64* %sum_max, align 8, !dbg !3389
  %call16 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3390
  %cmp17 = icmp eq i64 %6, %call16, !dbg !3391
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !3392

if.then19:                                        ; preds = %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false, %if.else
  tail call void (i8*, ...) @sorry(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3393
  br label %if.end21, !dbg !3393

if.end21:                                         ; preds = %lor.lhs.false15, %entry, %if.then2, %if.then19
  ret void, !dbg !3394
}

; Function Attrs: nounwind uwtable
define internal fastcc void @input_cgraph_1(%struct.lto_file_decl_data* %file_data, %struct.lto_input_block* %ib) unnamed_addr #4 !dbg !3395 {
entry:
  %nodes = alloca %struct.VEC_cgraph_node_ptr_heap*, align 8
  %node = alloca %struct.cgraph_node*, align 8
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !3399, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !3400, metadata !DIExpression()), !dbg !3412
  %0 = bitcast %struct.VEC_cgraph_node_ptr_heap** %nodes to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* null, metadata !3402, metadata !DIExpression()), !dbg !3412
  store %struct.VEC_cgraph_node_ptr_heap* null, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !3414
  %1 = bitcast %struct.cgraph_node** %node to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3415
  %call = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3416
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %file_data, i64 0, i32 2, !dbg !3417
  br label %while.cond, !dbg !3421

while.cond:                                       ; preds = %if.end10, %entry
  %tag.0.in = phi i64 [ %call, %entry ], [ %call11, %if.end10 ]
  %tag.0 = trunc i64 %tag.0.in to i32, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %tag.0, metadata !3401, metadata !DIExpression()), !dbg !3412
  switch i32 %tag.0, label %if.else [
    i32 0, label %while.end
    i32 4, label %if.then
  ], !dbg !3421

if.then:                                          ; preds = %while.cond
  %2 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %2, metadata !3402, metadata !DIExpression()), !dbg !3412
  call fastcc void @input_edge(%struct.lto_input_block* %ib, %struct.VEC_cgraph_node_ptr_heap* %2) #7, !dbg !3423
  br label %if.end10, !dbg !3423

if.else:                                          ; preds = %while.cond
  %call2 = call fastcc %struct.cgraph_node* @input_node(%struct.lto_file_decl_data* %file_data, %struct.lto_input_block* %ib, i32 %tag.0) #7, !dbg !3424
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call2, metadata !3403, metadata !DIExpression()), !dbg !3412
  store %struct.cgraph_node* %call2, %struct.cgraph_node** %node, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call2, metadata !3403, metadata !DIExpression()), !dbg !3412
  %cmp3 = icmp eq %struct.cgraph_node* %call2, null, !dbg !3426
  br i1 %cmp3, label %if.then7, label %lor.lhs.false, !dbg !3428

lor.lhs.false:                                    ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call2, metadata !3403, metadata !DIExpression()), !dbg !3412
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call2, i64 0, i32 0, !dbg !3429
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3429
  %cmp5 = icmp eq %union.tree_node* %3, null, !dbg !3430
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !3431

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3432
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !3433
  br label %if.end, !dbg !3432

if.end:                                           ; preds = %if.then7, %lor.lhs.false
  %4 = phi %struct.cgraph_node* [ %.pre, %if.then7 ], [ %call2, %lor.lhs.false ], !dbg !3433
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %4, metadata !3403, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap** %nodes, metadata !3402, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call8 = call fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_heap_safe_push(%struct.VEC_cgraph_node_ptr_heap** nonnull %nodes, %struct.cgraph_node* %4) #7, !dbg !3433
  %5 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3434
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %6, metadata !3403, metadata !DIExpression()), !dbg !3412
  %call9 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %5, %struct.cgraph_node* %6) #7, !dbg !3436
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %call11 = call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3437
  br label %while.cond, !dbg !3421, !llvm.loop !3438

while.end:                                        ; preds = %while.cond
  %call13 = call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %call13, metadata !3405, metadata !DIExpression()), !dbg !3412
  br label %while.cond14, !dbg !3441

while.cond14:                                     ; preds = %for.end, %while.end
  %len.0 = phi i64 [ %call13, %while.end ], [ %call25, %for.end ], !dbg !3412
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !3405, metadata !DIExpression()), !dbg !3412
  %tobool15 = icmp eq i64 %len.0, 0, !dbg !3441
  br i1 %tobool15, label %for.cond27.preheader, label %while.body16, !dbg !3441

for.cond27.preheader:                             ; preds = %while.cond14
  br label %for.cond27, !dbg !3442

while.body16:                                     ; preds = %while.cond14
  %add = add i64 %len.0, 1, !dbg !3443
  %call17 = call i8* @xmalloc(i64 %add) #6, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %call17, metadata !3406, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()), !dbg !3412
  br label %for.cond, !dbg !3446

for.cond:                                         ; preds = %for.body, %while.body16
  %i.0 = phi i32 [ 0, %while.body16 ], [ %inc, %for.body ], !dbg !3448
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3404, metadata !DIExpression()), !dbg !3412
  %conv18 = zext i32 %i.0 to i64, !dbg !3449
  %cmp19 = icmp ugt i64 %len.0, %conv18, !dbg !3451
  br i1 %cmp19, label %for.body, label %for.end, !dbg !3452

for.body:                                         ; preds = %for.cond
  %call21 = call zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) #6, !dbg !3453
  %arrayidx = getelementptr inbounds i8, i8* %call17, i64 %conv18, !dbg !3454
  store i8 %call21, i8* %arrayidx, align 1, !dbg !3455
  %inc = add i32 %i.0, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3404, metadata !DIExpression()), !dbg !3412
  br label %for.cond, !dbg !3457, !llvm.loop !3458

for.end:                                          ; preds = %for.cond
  %conv22 = trunc i64 %len.0 to i32, !dbg !3460
  %call23 = call %union.tree_node* @build_string(i32 %conv22, i8* %call17) #6, !dbg !3461
  %call24 = call %struct.cgraph_asm_node* @cgraph_add_asm_node(%union.tree_node* %call23) #6, !dbg !3462
  call void @free(i8* %call17) #6, !dbg !3463
  %call25 = call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %call25, metadata !3405, metadata !DIExpression()), !dbg !3412
  br label %while.cond14, !dbg !3441, !llvm.loop !3465

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc64
  %i.1 = phi i32 [ %inc65, %for.inc64 ], [ 0, %for.cond27.preheader ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3404, metadata !DIExpression()), !dbg !3412
  %7 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %7, metadata !3402, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %7, metadata !3402, metadata !DIExpression()), !dbg !3412
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %7, i64 0, i32 0, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %node, metadata !3403, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call29 = call fastcc i32 @VEC_cgraph_node_ptr_base_iterate(%struct.VEC_cgraph_node_ptr_base* %base, i32 %i.1, %struct.cgraph_node** nonnull %node) #7, !dbg !3468
  %tobool30 = icmp eq i32 %call29, 0, !dbg !3442
  br i1 %tobool30, label %for.end66, label %for.body31, !dbg !3442

for.body31:                                       ; preds = %for.cond27
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !3403, metadata !DIExpression()), !dbg !3412
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 19, i32 2, !dbg !3470
  %9 = bitcast %struct.cgraph_node** %inlined_to to i64*, !dbg !3470
  %10 = load i64, i64* %9, align 8, !dbg !3470
  %conv32 = trunc i64 %10 to i32, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %conv32, metadata !3408, metadata !DIExpression()), !dbg !3472
  %cmp33 = icmp eq i32 %conv32, -1, !dbg !3473
  br i1 %cmp33, label %if.else45, label %if.then35, !dbg !3475

if.then35:                                        ; preds = %for.body31
  %11 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %11, metadata !3402, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %11, metadata !3402, metadata !DIExpression()), !dbg !3412
  %base38 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %11, i64 0, i32 0, !dbg !3476
  %call42 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %base38, i32 %conv32) #7, !dbg !3476
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %12, metadata !3403, metadata !DIExpression()), !dbg !3412
  %inlined_to44 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i64 0, i32 19, i32 2, !dbg !3478
  store %struct.cgraph_node* %call42, %struct.cgraph_node** %inlined_to44, align 8, !dbg !3479
  br label %if.end48, !dbg !3477

if.else45:                                        ; preds = %for.body31
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !3403, metadata !DIExpression()), !dbg !3412
  store %struct.cgraph_node* null, %struct.cgraph_node** %inlined_to, align 8, !dbg !3480
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then35
  %13 = phi %struct.cgraph_node* [ %8, %if.else45 ], [ %12, %if.then35 ], !dbg !3481
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !3403, metadata !DIExpression()), !dbg !3412
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 14, !dbg !3482
  %14 = bitcast %struct.cgraph_node** %same_comdat_group to i64*, !dbg !3482
  %15 = load i64, i64* %14, align 8, !dbg !3482
  %conv49 = trunc i64 %15 to i32, !dbg !3483
  call void @llvm.dbg.value(metadata i32 %conv49, metadata !3408, metadata !DIExpression()), !dbg !3472
  %cmp50 = icmp eq i32 %conv49, -1, !dbg !3484
  br i1 %cmp50, label %if.else61, label %if.then52, !dbg !3486

if.then52:                                        ; preds = %if.end48
  %16 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %nodes, align 8, !dbg !3487
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %16, metadata !3402, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %16, metadata !3402, metadata !DIExpression()), !dbg !3412
  %base55 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %16, i64 0, i32 0, !dbg !3487
  %call59 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %base55, i32 %conv49) #7, !dbg !3487
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !3488
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %17, metadata !3403, metadata !DIExpression()), !dbg !3412
  %same_comdat_group60 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i64 0, i32 14, !dbg !3489
  store %struct.cgraph_node* %call59, %struct.cgraph_node** %same_comdat_group60, align 8, !dbg !3490
  br label %for.inc64, !dbg !3488

if.else61:                                        ; preds = %if.end48
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !3403, metadata !DIExpression()), !dbg !3412
  store %struct.cgraph_node* null, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3491
  br label %for.inc64

for.inc64:                                        ; preds = %if.then52, %if.else61
  %inc65 = add i32 %i.1, 1, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !3404, metadata !DIExpression()), !dbg !3412
  br label %for.cond27, !dbg !3493, !llvm.loop !3494

for.end66:                                        ; preds = %for.cond27
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap** %nodes, metadata !3402, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call fastcc void @VEC_cgraph_node_ptr_heap_free(%struct.VEC_cgraph_node_ptr_heap** nonnull %nodes) #7, !dbg !3496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3497
  ret void, !dbg !3497
}

declare dso_local void @lto_destroy_simple_input_block(%struct.lto_file_decl_data*, i32, %struct.lto_input_block*, i8*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lto_mark_file_for_ltrans(%struct.lto_file_decl_data* %file) unnamed_addr #0 !dbg !3498 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file, metadata !3502, metadata !DIExpression()), !dbg !3503
  %needs_ltrans_p = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %file, i64 0, i32 5, !dbg !3504
  %bf.load = load i8, i8* %needs_ltrans_p, align 8, !dbg !3505
  %bf.set = or i8 %bf.load, 1, !dbg !3505
  store i8 %bf.set, i8* %needs_ltrans_p, align 8, !dbg !3505
  ret void, !dbg !3506
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_heap_reserve(%struct.VEC_cgraph_node_ptr_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3507 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap** %vec_, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 1, metadata !3512, metadata !DIExpression()), !dbg !3514
  %0 = load %struct.VEC_cgraph_node_ptr_heap*, %struct.VEC_cgraph_node_ptr_heap** %vec_, align 8, !dbg !3515
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_heap* %0, null, !dbg !3515
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3515

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %0, i64 0, i32 0, !dbg !3515
  br label %cond.end, !dbg !3515

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3515
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(%struct.VEC_cgraph_node_ptr_base* %cond, i32 1) #7, !dbg !3515
  %tobool1 = icmp eq i32 %call, 0, !dbg !3515
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3513, metadata !DIExpression()), !dbg !3514
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3515

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_cgraph_node_ptr_heap** %vec_ to i8**, !dbg !3516
  %2 = load i8*, i8** %1, align 8, !dbg !3516
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3516
  store i8* %call3, i8** %1, align 8, !dbg !3516
  br label %if.end, !dbg !3516

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3515
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_base_quick_push(%struct.VEC_cgraph_node_ptr_base* %vec_, %struct.cgraph_node* %obj_) unnamed_addr #0 !dbg !3518 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %obj_, metadata !3524, metadata !DIExpression()), !dbg !3526
  %num1 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !3527
  %0 = load i32, i32* %num1, align 8, !dbg !3527
  %inc = add i32 %0, 1, !dbg !3527
  store i32 %inc, i32* %num1, align 8, !dbg !3527
  %idxprom = zext i32 %0 to i64, !dbg !3527
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3527
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %arrayidx, metadata !3525, metadata !DIExpression()), !dbg !3526
  store %struct.cgraph_node* %obj_, %struct.cgraph_node** %arrayidx, align 8, !dbg !3527
  ret %struct.cgraph_node** %arrayidx, !dbg !3527
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3528 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 1, metadata !3533, metadata !DIExpression()), !dbg !3534
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !3535
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3535

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 1, !dbg !3535
  %0 = load i32, i32* %alloc, align 4, !dbg !3535
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !3535
  %1 = load i32, i32* %num, align 8, !dbg !3535
  %cmp1 = icmp ne i32 %0, %1, !dbg !3535
  %phitmp = zext i1 %cmp1 to i32, !dbg !3535
  br label %cond.end, !dbg !3535

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3535

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3535
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local void @lto_output_sleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #1

declare dso_local { %struct.cgraph_node_set_def*, i32 } @cgraph_node_set_find(%struct.cgraph_node_set_def*, %struct.cgraph_node*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @lto_forced_extern_inline_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local void @lto_output_fn_decl_index(%struct.lto_out_decl_state*, %struct.lto_output_stream*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %struct.bitpack_d* @bitpack_create() local_unnamed_addr #1

declare dso_local void @bp_pack_value(%struct.bitpack_d*, i64, i32) local_unnamed_addr #1

declare dso_local void @lto_output_bitpack(%struct.lto_output_stream*, %struct.bitpack_d*) local_unnamed_addr #1

declare dso_local void @bitpack_delete(%struct.bitpack_d*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_uid(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3536 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3543, metadata !DIExpression()), !dbg !3544
  %uid = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 1, !dbg !3545
  %0 = load i32, i32* %uid, align 4, !dbg !3545
  ret i32 %0, !dbg !3546
}

declare dso_local i64 @lto_input_uleb128(%struct.lto_input_block*) local_unnamed_addr #1

declare dso_local i64 @lto_input_sleb128(%struct.lto_input_block*) local_unnamed_addr #1

declare dso_local void @sorry(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @input_edge(%struct.lto_input_block* %ib, %struct.VEC_cgraph_node_ptr_heap* %nodes) unnamed_addr #4 !dbg !3547 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !3551, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_heap* %nodes, metadata !3552, metadata !DIExpression()), !dbg !3563
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_heap, %struct.VEC_cgraph_node_ptr_heap* %nodes, i64 0, i32 0, !dbg !3564
  %call = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3564
  %conv = trunc i64 %call to i32, !dbg !3564
  %call1 = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %base, i32 %conv) #7, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call1, metadata !3553, metadata !DIExpression()), !dbg !3563
  %cmp = icmp eq %struct.cgraph_node* %call1, null, !dbg !3565
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3567

lor.lhs.false:                                    ; preds = %entry
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call1, i64 0, i32 0, !dbg !3568
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3568
  %cmp3 = icmp eq %union.tree_node* %0, null, !dbg !3569
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3570

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3571
  br label %if.end, !dbg !3571

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call11 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3572
  %conv12 = trunc i64 %call11 to i32, !dbg !3572
  %call13 = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %base, i32 %conv12) #7, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call13, metadata !3554, metadata !DIExpression()), !dbg !3563
  %cmp14 = icmp eq %struct.cgraph_node* %call13, null, !dbg !3573
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16, !dbg !3575

lor.lhs.false16:                                  ; preds = %if.end
  %decl17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call13, i64 0, i32 0, !dbg !3576
  %1 = load %union.tree_node*, %union.tree_node** %decl17, align 8, !dbg !3576
  %cmp18 = icmp eq %union.tree_node* %1, null, !dbg !3577
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3578

if.then20:                                        ; preds = %lor.lhs.false16, %if.end
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3579
  br label %if.end21, !dbg !3579

if.end21:                                         ; preds = %if.then20, %lor.lhs.false16
  %call22 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %call22, metadata !3557, metadata !DIExpression()), !dbg !3563
  %call23 = tail call %struct.bitpack_d* @lto_input_bitpack(%struct.lto_input_block* %ib) #6, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call23, metadata !3561, metadata !DIExpression()), !dbg !3563
  %call24 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 32) #6, !dbg !3582
  call void @llvm.dbg.value(metadata i32 undef, metadata !3556, metadata !DIExpression()), !dbg !3563
  %call26 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 32) #6, !dbg !3583
  call void @llvm.dbg.value(metadata i32 undef, metadata !3560, metadata !DIExpression()), !dbg !3563
  %call28 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 32) #6, !dbg !3584
  call void @llvm.dbg.value(metadata i32 undef, metadata !3558, metadata !DIExpression()), !dbg !3563
  %call30 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 30) #6, !dbg !3585
  call void @llvm.dbg.value(metadata i32 undef, metadata !3559, metadata !DIExpression()), !dbg !3563
  %decl32 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call1, i64 0, i32 0, !dbg !3586
  %2 = load %union.tree_node*, %union.tree_node** %decl32, align 8, !dbg !3586
  %call33 = tail call i32 @lto_symtab_get_resolution(%union.tree_node* %2) #6, !dbg !3587
  call void @llvm.dbg.value(metadata i32 %call33, metadata !3562, metadata !DIExpression()), !dbg !3563
  %3 = and i32 %call33, -2, !dbg !3588
  %switch = icmp eq i32 %3, 4, !dbg !3588
  br i1 %switch, label %cleanup.cont, label %if.end40, !dbg !3588

if.end40:                                         ; preds = %if.end21
  %conv31 = trunc i64 %call30 to i32, !dbg !3590
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !3559, metadata !DIExpression()), !dbg !3563
  %conv29 = trunc i64 %call28 to i32, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %conv29, metadata !3558, metadata !DIExpression()), !dbg !3563
  %conv27 = trunc i64 %call26 to i32, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %conv27, metadata !3560, metadata !DIExpression()), !dbg !3563
  %conv25 = trunc i64 %call24 to i32, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !3556, metadata !DIExpression()), !dbg !3563
  %call41 = tail call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %call1, %struct.cgraph_node* %call13, %union.gimple_statement_d* null, i64 %call22, i32 %conv29, i32 %conv31) #6, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call41, metadata !3555, metadata !DIExpression()), !dbg !3563
  %lto_stmt_uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call41, i64 0, i32 10, !dbg !3595
  store i32 %conv25, i32* %lto_stmt_uid, align 4, !dbg !3596
  %inline_failed42 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call41, i64 0, i32 9, !dbg !3597
  store i32 %conv27, i32* %inline_failed42, align 8, !dbg !3598
  %call43 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 1) #6, !dbg !3599
  %indirect_call = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call41, i64 0, i32 14, !dbg !3600
  %4 = trunc i64 %call43 to i8, !dbg !3601
  %bf.load = load i8, i8* %indirect_call, align 2, !dbg !3601
  %bf.value = and i8 %4, 1, !dbg !3601
  %bf.clear = and i8 %bf.load, -2, !dbg !3601
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !3601
  store i8 %bf.set, i8* %indirect_call, align 2, !dbg !3601
  %call45 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 1) #6, !dbg !3602
  %5 = trunc i64 %call45 to i8, !dbg !3603
  %bf.load47 = load i8, i8* %indirect_call, align 2, !dbg !3603
  %bf.value48 = shl i8 %5, 1, !dbg !3603
  %bf.shl = and i8 %bf.value48, 2, !dbg !3603
  %bf.clear49 = and i8 %bf.load47, -3, !dbg !3603
  %bf.set50 = or i8 %bf.clear49, %bf.shl, !dbg !3603
  store i8 %bf.set50, i8* %indirect_call, align 2, !dbg !3603
  %call52 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %call23, i32 1) #6, !dbg !3604
  %6 = trunc i64 %call52 to i8, !dbg !3605
  %bf.load54 = load i8, i8* %indirect_call, align 2, !dbg !3605
  %bf.value55 = shl i8 %6, 2, !dbg !3605
  %bf.shl56 = and i8 %bf.value55, 4, !dbg !3605
  %bf.clear57 = and i8 %bf.load54, -5, !dbg !3605
  %bf.set58 = or i8 %bf.clear57, %bf.shl56, !dbg !3605
  store i8 %bf.set58, i8* %indirect_call, align 2, !dbg !3605
  tail call void @bitpack_delete(%struct.bitpack_d* %call23) #6, !dbg !3606
  br label %cleanup.cont, !dbg !3607

cleanup.cont:                                     ; preds = %if.end21, %if.end40
  ret void, !dbg !3607
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cgraph_node* @input_node(%struct.lto_file_decl_data* %file_data, %struct.lto_input_block* %ib, i32 %tag) unnamed_addr #4 !dbg !3608 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !3612, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !3613, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tag, metadata !3614, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3621, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 -1, metadata !3623, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 -1, metadata !3624, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3626, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3630, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 0, metadata !3632, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8 0, metadata !3633, metadata !DIExpression()), !dbg !3644
  %call = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3645
  %cmp = icmp eq i64 %call, 0, !dbg !3646
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !3620, metadata !DIExpression()), !dbg !3644
  %call2 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3647
  %conv3 = trunc i64 %call2 to i32, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !3619, metadata !DIExpression()), !dbg !3644
  %call4 = tail call fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %file_data, i32 %conv3) #7, !dbg !3648
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3615, metadata !DIExpression()), !dbg !3644
  %call5 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %call4) #6, !dbg !3649
  br i1 %cmp, label %if.end, label %if.then, !dbg !3651

if.then:                                          ; preds = %entry
  %call6 = tail call %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node* %call5, i64 0, i32 1000, i32 0, i8 zeroext 0, %struct.VEC_cgraph_edge_p_heap* null) #6, !dbg !3652
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call6, metadata !3616, metadata !DIExpression()), !dbg !3644
  br label %if.end, !dbg !3653

if.end:                                           ; preds = %entry, %if.then
  %node.0 = phi %struct.cgraph_node* [ %call6, %if.then ], [ %call5, %entry ], !dbg !3649
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3616, metadata !DIExpression()), !dbg !3644
  %call8 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3654
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 23, !dbg !3655
  store i64 %call8, i64* %count, align 8, !dbg !3656
  %call9 = tail call %struct.bitpack_d* @lto_input_bitpack(%struct.lto_input_block* %ib) #6, !dbg !3657
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %call9, metadata !3617, metadata !DIExpression()), !dbg !3644
  %cmp10 = icmp eq i32 %tag, 3, !dbg !3658
  br i1 %cmp10, label %if.end23, label %if.then12, !dbg !3660

if.then12:                                        ; preds = %if.end
  %call13 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3661
  %conv14 = trunc i64 %call13 to i32, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %conv14, metadata !3618, metadata !DIExpression()), !dbg !3644
  %call15 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3663
  %conv16 = trunc i64 %call15 to i32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !3629, metadata !DIExpression()), !dbg !3644
  %call17 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3664
  %conv18 = trunc i64 %call17 to i32, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !3631, metadata !DIExpression()), !dbg !3644
  %call19 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3665
  %conv20 = trunc i64 %call19 to i32, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !3628, metadata !DIExpression()), !dbg !3644
  %call21 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3666
  %conv22 = trunc i64 %call21 to i32, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %conv22, metadata !3630, metadata !DIExpression()), !dbg !3644
  br label %if.end23, !dbg !3667

if.end23:                                         ; preds = %if.end, %if.then12
  %self_time.0 = phi i32 [ %conv20, %if.then12 ], [ 0, %if.end ], !dbg !3644
  %stack_size.0 = phi i32 [ %conv14, %if.then12 ], [ 0, %if.end ], !dbg !3644
  %self_size.0 = phi i32 [ %conv16, %if.then12 ], [ 0, %if.end ], !dbg !3644
  %time_inlining_benefit.0 = phi i32 [ %conv22, %if.then12 ], [ 0, %if.end ], !dbg !3644
  %size_inlining_benefit.0 = phi i32 [ %conv18, %if.then12 ], [ 0, %if.end ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit.0, metadata !3631, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %time_inlining_benefit.0, metadata !3630, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %self_size.0, metadata !3629, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %stack_size.0, metadata !3618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %self_time.0, metadata !3628, metadata !DIExpression()), !dbg !3644
  %call24 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3668
  %call26 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3669
  %call28 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3670
  %call30 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3671
  %conv31 = trunc i64 %call30 to i32, !dbg !3671
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !3626, metadata !DIExpression()), !dbg !3644
  %call32 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3672
  %conv33 = trunc i64 %call32 to i32, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !3627, metadata !DIExpression()), !dbg !3644
  %call34 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3673
  %conv35 = trunc i64 %call34 to i32, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %conv35, metadata !3625, metadata !DIExpression()), !dbg !3644
  %call36 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3674
  %conv37 = trunc i64 %call36 to i8, !dbg !3674
  call void @llvm.dbg.value(metadata i8 %conv37, metadata !3633, metadata !DIExpression()), !dbg !3644
  %call38 = tail call i64 @lto_input_sleb128(%struct.lto_input_block* %ib) #6, !dbg !3675
  %call40 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %call40, metadata !3632, metadata !DIExpression()), !dbg !3644
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !3677
  %0 = load i8*, i8** %aux, align 8, !dbg !3677
  %tobool41 = icmp eq i8* %0, null, !dbg !3679
  br i1 %tobool41, label %if.end45, label %land.lhs.true, !dbg !3680

land.lhs.true:                                    ; preds = %if.end23
  %1 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_minimal**, !dbg !3681
  %2 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %1, align 8, !dbg !3681
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %2, i64 0, i32 1, !dbg !3681
  %3 = load i32, i32* %locus, align 8, !dbg !3681
  %cmp42 = icmp ult i32 %3, 2, !dbg !3681
  br i1 %cmp42, label %if.end45, label %if.then44, !dbg !3682

if.then44:                                        ; preds = %land.lhs.true
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 24, !dbg !3683
  %4 = load i32, i32* %uid, align 8, !dbg !3683
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %4) #6, !dbg !3684
  br label %if.end45, !dbg !3684

if.end45:                                         ; preds = %if.end23, %if.then44, %land.lhs.true
  tail call fastcc void @input_overwrite_node(%struct.lto_file_decl_data* %file_data, %struct.cgraph_node* %node.0, i32 %tag, %struct.bitpack_d* %call9, i32 %stack_size.0, i32 %self_time.0, i32 %time_inlining_benefit.0, i32 %self_size.0, i32 %size_inlining_benefit.0) #7, !dbg !3685
  tail call void @bitpack_delete(%struct.bitpack_d* %call9) #6, !dbg !3686
  %sext = shl i64 %call24, 32, !dbg !3687
  %conv46 = ashr exact i64 %sext, 32, !dbg !3687
  %estimated_stack_size47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 0, !dbg !3688
  store i64 %conv46, i64* %estimated_stack_size47, align 8, !dbg !3689
  %sext1 = shl i64 %call26, 32, !dbg !3690
  %conv48 = ashr exact i64 %sext1, 32, !dbg !3690
  %stack_frame_offset50 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 1, !dbg !3691
  store i64 %conv48, i64* %stack_frame_offset50, align 8, !dbg !3692
  %time52 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 3, !dbg !3693
  store i32 %conv31, i32* %time52, align 8, !dbg !3694
  %size54 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 4, !dbg !3695
  store i32 %conv33, i32* %size54, align 4, !dbg !3696
  %sext2 = shl i64 %call28, 32, !dbg !3697
  %conv55 = ashr exact i64 %sext2, 32, !dbg !3697
  %5 = inttoptr i64 %conv55 to %struct.cgraph_node*, !dbg !3698
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !3699
  store %struct.cgraph_node* %5, %struct.cgraph_node** %inlined_to, align 8, !dbg !3700
  %estimated_growth58 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 5, !dbg !3701
  store i32 %conv35, i32* %estimated_growth58, align 8, !dbg !3702
  %inlined60 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 6, !dbg !3703
  store i8 %conv37, i8* %inlined60, align 4, !dbg !3704
  %sext3 = shl i64 %call38, 32, !dbg !3705
  %conv61 = ashr exact i64 %sext3, 32, !dbg !3705
  %6 = inttoptr i64 %conv61 to %struct.cgraph_node*, !dbg !3706
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 14, !dbg !3707
  store %struct.cgraph_node* %6, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3708
  br label %while.cond, !dbg !3709

while.cond:                                       ; preds = %if.end86, %if.end45
  %same_body_count.0 = phi i64 [ %call40, %if.end45 ], [ %dec, %if.end86 ], !dbg !3644
  call void @llvm.dbg.value(metadata i64 %same_body_count.0, metadata !3632, metadata !DIExpression()), !dbg !3644
  %dec = add i64 %same_body_count.0, -1, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %dec, metadata !3632, metadata !DIExpression()), !dbg !3644
  %cmp62 = icmp eq i64 %same_body_count.0, 0, !dbg !3711
  br i1 %cmp62, label %while.end, label %while.body, !dbg !3709

while.body:                                       ; preds = %while.cond
  %call64 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3712
  %conv65 = trunc i64 %call64 to i32, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %conv65, metadata !3619, metadata !DIExpression()), !dbg !3644
  %call66 = tail call fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %file_data, i32 %conv65) #7, !dbg !3713
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !3634, metadata !DIExpression()), !dbg !3714
  %call67 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3715
  %conv68 = trunc i64 %call67 to i32, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %conv68, metadata !3636, metadata !DIExpression()), !dbg !3714
  %tobool69 = icmp eq i32 %conv68, 0, !dbg !3716
  %call76 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3717
  br i1 %tobool69, label %if.then70, label %if.else75, !dbg !3718

if.then70:                                        ; preds = %while.body
  %conv72 = trunc i64 %call76 to i32, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %conv72, metadata !3619, metadata !DIExpression()), !dbg !3644
  %call73 = tail call fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %file_data, i32 %conv72) #7, !dbg !3720
  call void @llvm.dbg.value(metadata %union.tree_node* %call73, metadata !3637, metadata !DIExpression()), !dbg !3721
  %call74 = tail call zeroext i8 @cgraph_same_body_alias(%union.tree_node* %call66, %union.tree_node* %call73) #6, !dbg !3722
  br label %if.end86, !dbg !3723

if.else75:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 %call76, metadata !3640, metadata !DIExpression()), !dbg !3724
  %call77 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %call77, metadata !3642, metadata !DIExpression()), !dbg !3724
  %call79 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3726
  %conv80 = trunc i64 %call79 to i32, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %conv80, metadata !3619, metadata !DIExpression()), !dbg !3644
  %call81 = tail call fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %file_data, i32 %conv80) #7, !dbg !3727
  call void @llvm.dbg.value(metadata %union.tree_node* %call81, metadata !3643, metadata !DIExpression()), !dbg !3724
  %7 = trunc i64 %call67 to i8, !dbg !3728
  %conv82 = and i8 %7, 2, !dbg !3728
  %and83 = and i32 %conv68, 4, !dbg !3729
  %tobool84 = icmp eq i32 %and83, 0, !dbg !3729
  br i1 %tobool84, label %cond.end, label %cond.true, !dbg !3730

cond.true:                                        ; preds = %if.else75
  %call85 = tail call %union.tree_node* @size_int_kind(i64 %call77, i32 0) #6, !dbg !3731
  br label %cond.end, !dbg !3730

cond.end:                                         ; preds = %if.else75, %cond.true
  %cond = phi %union.tree_node* [ %call85, %cond.true ], [ null, %if.else75 ], !dbg !3730
  tail call void @cgraph_add_thunk(%union.tree_node* %call66, %union.tree_node* %call4, i8 zeroext %conv82, i64 %call76, i64 %call77, %union.tree_node* %cond, %union.tree_node* %call81) #6, !dbg !3732
  br label %if.end86

if.end86:                                         ; preds = %cond.end, %if.then70
  br label %while.cond, !dbg !3709, !llvm.loop !3733

while.end:                                        ; preds = %while.cond
  ret %struct.cgraph_node* %node.0, !dbg !3735
}

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block*) local_unnamed_addr #1

declare dso_local %struct.cgraph_asm_node* @cgraph_add_asm_node(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_iterate(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_, %struct.cgraph_node** %ptr) unnamed_addr #0 !dbg !3736 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %ptr, metadata !3742, metadata !DIExpression()), !dbg !3743
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !3744
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3744

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !3744
  %0 = load i32, i32* %num, align 8, !dbg !3744
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3744
  br i1 %cmp, label %if.then, label %if.else, !dbg !3746

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3747
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3747
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !3747
  br label %return, !dbg !3747

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3749

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.cgraph_node* [ null, %if.else ], [ %1, %if.then ], !dbg !3751
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3751
  store %struct.cgraph_node* %storemerge, %struct.cgraph_node** %ptr, align 8, !dbg !3751
  ret i32 %retval.0, !dbg !3746
}

declare dso_local %struct.bitpack_d* @lto_input_bitpack(%struct.lto_input_block*) local_unnamed_addr #1

declare dso_local i64 @bp_unpack_value(%struct.bitpack_d*, i32) local_unnamed_addr #1

declare dso_local i32 @lto_symtab_get_resolution(%union.tree_node*) local_unnamed_addr #1

declare dso_local %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node*, %struct.cgraph_node*, %union.gimple_statement_d*, i64, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %data, i32 %idx) unnamed_addr #0 !dbg !3752 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %data, metadata !3756, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %idx, metadata !3757, metadata !DIExpression()), !dbg !3759
  %current_decl_state = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %data, i64 0, i32 0, !dbg !3760
  %0 = load %struct.lto_in_decl_state*, %struct.lto_in_decl_state** %current_decl_state, align 8, !dbg !3760
  call void @llvm.dbg.value(metadata %struct.lto_in_decl_state* %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  %size = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 2, i32 1, !dbg !3760
  %1 = load i32, i32* %size, align 8, !dbg !3760
  %cmp = icmp ugt i32 %1, %idx, !dbg !3760
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3760

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 1043, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3760
  br label %cond.end, !dbg !3760

cond.end:                                         ; preds = %entry, %cond.true
  %trees = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 2, i32 0, !dbg !3760
  %2 = load %union.tree_node**, %union.tree_node*** %trees, align 8, !dbg !3760
  %idxprom = zext i32 %idx to i64, !dbg !3760
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 %idxprom, !dbg !3760
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !3760
  ret %union.tree_node* %3, !dbg !3760
}

declare dso_local %struct.cgraph_node* @cgraph_clone_node(%struct.cgraph_node*, i64, i32, i32, i8 zeroext, %struct.VEC_cgraph_edge_p_heap*) local_unnamed_addr #1

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @input_overwrite_node(%struct.lto_file_decl_data* %file_data, %struct.cgraph_node* %node, i32 %tag, %struct.bitpack_d* %bp, i32 %stack_size, i32 %self_time, i32 %time_inlining_benefit, i32 %self_size, i32 %size_inlining_benefit) unnamed_addr #4 !dbg !3761 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !3765, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3766, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %tag, metadata !3767, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %bp, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %stack_size, metadata !3769, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %self_time, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %time_inlining_benefit, metadata !3771, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %self_size, metadata !3772, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %size_inlining_benefit, metadata !3773, metadata !DIExpression()), !dbg !3774
  %conv = zext i32 %tag to i64, !dbg !3775
  %0 = inttoptr i64 %conv to i8*, !dbg !3775
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 16, !dbg !3776
  store i8* %0, i8** %aux, align 8, !dbg !3777
  %conv1 = zext i32 %stack_size to i64, !dbg !3778
  %estimated_self_stack_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 0, !dbg !3779
  store i64 %conv1, i64* %estimated_self_stack_size, align 8, !dbg !3780
  %self_time4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 3, !dbg !3781
  store i32 %self_time, i32* %self_time4, align 8, !dbg !3782
  %time_inlining_benefit7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 4, !dbg !3783
  store i32 %time_inlining_benefit, i32* %time_inlining_benefit7, align 4, !dbg !3784
  %self_size10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !3785
  store i32 %self_size, i32* %self_size10, align 8, !dbg !3786
  %size_inlining_benefit13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 2, !dbg !3787
  store i32 %size_inlining_benefit, i32* %size_inlining_benefit13, align 4, !dbg !3788
  %time = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 3, !dbg !3789
  store i32 %self_time, i32* %time, align 8, !dbg !3790
  %size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 4, !dbg !3791
  store i32 %self_size, i32* %size, align 4, !dbg !3792
  %lto_file_data = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 0, !dbg !3793
  store %struct.lto_file_decl_data* %file_data, %struct.lto_file_decl_data** %lto_file_data, align 8, !dbg !3794
  %call = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3795
  %local18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3796
  %1 = trunc i64 %call to i8, !dbg !3797
  %bf.load = load i8, i8* %local18, align 8, !dbg !3797
  %bf.value = and i8 %1, 1, !dbg !3797
  %bf.clear = and i8 %bf.load, -2, !dbg !3797
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !3797
  store i8 %bf.set, i8* %local18, align 8, !dbg !3797
  %call19 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3798
  %2 = trunc i64 %call19 to i8, !dbg !3799
  %bf.load22 = load i8, i8* %local18, align 8, !dbg !3799
  %bf.value23 = shl i8 %2, 1, !dbg !3799
  %bf.shl = and i8 %bf.value23, 2, !dbg !3799
  %bf.clear24 = and i8 %bf.load22, -3, !dbg !3799
  %bf.set25 = or i8 %bf.clear24, %bf.shl, !dbg !3799
  store i8 %bf.set25, i8* %local18, align 8, !dbg !3799
  %call27 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3800
  %3 = trunc i64 %call27 to i8, !dbg !3801
  %bf.load30 = load i8, i8* %local18, align 8, !dbg !3801
  %bf.value31 = shl i8 %3, 2, !dbg !3801
  %bf.shl32 = and i8 %bf.value31, 4, !dbg !3801
  %bf.clear33 = and i8 %bf.load30, -5, !dbg !3801
  %bf.set34 = or i8 %bf.clear33, %bf.shl32, !dbg !3801
  store i8 %bf.set34, i8* %local18, align 8, !dbg !3801
  %call36 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3802
  %4 = trunc i64 %call36 to i8, !dbg !3803
  %bf.load39 = load i8, i8* %local18, align 8, !dbg !3803
  %bf.value40 = shl i8 %4, 3, !dbg !3803
  %bf.shl41 = and i8 %bf.value40, 8, !dbg !3803
  %bf.clear42 = and i8 %bf.load39, -9, !dbg !3803
  %bf.set43 = or i8 %bf.clear42, %bf.shl41, !dbg !3803
  store i8 %bf.set43, i8* %local18, align 8, !dbg !3803
  %call45 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3804
  %5 = trunc i64 %call45 to i8, !dbg !3805
  %bf.load48 = load i8, i8* %local18, align 8, !dbg !3805
  %bf.value49 = shl i8 %5, 4, !dbg !3805
  %bf.shl50 = and i8 %bf.value49, 16, !dbg !3805
  %bf.clear51 = and i8 %bf.load48, -17, !dbg !3805
  %bf.set52 = or i8 %bf.clear51, %bf.shl50, !dbg !3805
  store i8 %bf.set52, i8* %local18, align 8, !dbg !3805
  %call54 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3806
  %6 = trunc i64 %call54 to i8, !dbg !3807
  %bf.load57 = load i8, i8* %local18, align 8, !dbg !3807
  %bf.value58 = shl i8 %6, 5, !dbg !3807
  %bf.shl59 = and i8 %bf.value58, 32, !dbg !3807
  %bf.clear60 = and i8 %bf.load57, -33, !dbg !3807
  %bf.set61 = or i8 %bf.clear60, %bf.shl59, !dbg !3807
  store i8 %bf.set61, i8* %local18, align 8, !dbg !3807
  %call63 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3808
  %7 = trunc i64 %call63 to i8, !dbg !3809
  %bf.load66 = load i8, i8* %local18, align 8, !dbg !3809
  %bf.value67 = shl i8 %7, 6, !dbg !3809
  %bf.shl68 = and i8 %bf.value67, 64, !dbg !3809
  %bf.clear69 = and i8 %bf.load66, -65, !dbg !3809
  %bf.set70 = or i8 %bf.clear69, %bf.shl68, !dbg !3809
  store i8 %bf.set70, i8* %local18, align 8, !dbg !3809
  %call72 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3810
  %8 = trunc i64 %call72 to i8, !dbg !3811
  %bf.load75 = load i8, i8* %local18, align 8, !dbg !3811
  %bf.shl77 = shl i8 %8, 7, !dbg !3811
  %bf.clear78 = and i8 %bf.load75, 127, !dbg !3811
  %bf.set79 = or i8 %bf.clear78, %bf.shl77, !dbg !3811
  store i8 %bf.set79, i8* %local18, align 8, !dbg !3811
  %call81 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3812
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3813
  %9 = trunc i64 %call81 to i16, !dbg !3814
  %bf.load83 = load i16, i16* %needed, align 4, !dbg !3814
  %bf.value84 = and i16 %9, 1, !dbg !3814
  %bf.clear85 = and i16 %bf.load83, -2, !dbg !3814
  %bf.set86 = or i16 %bf.clear85, %bf.value84, !dbg !3814
  store i16 %bf.set86, i16* %needed, align 4, !dbg !3814
  %call88 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3815
  %10 = trunc i64 %call88 to i16, !dbg !3816
  %bf.load90 = load i16, i16* %needed, align 4, !dbg !3816
  %bf.value91 = shl i16 %10, 1, !dbg !3816
  %bf.shl92 = and i16 %bf.value91, 2, !dbg !3816
  %bf.clear93 = and i16 %bf.load90, -3, !dbg !3816
  %bf.set94 = or i16 %bf.clear93, %bf.shl92, !dbg !3816
  store i16 %bf.set94, i16* %needed, align 4, !dbg !3816
  %call96 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3817
  %11 = trunc i64 %call96 to i16, !dbg !3818
  %bf.load98 = load i16, i16* %needed, align 4, !dbg !3818
  %bf.value99 = shl i16 %11, 2, !dbg !3818
  %bf.shl100 = and i16 %bf.value99, 4, !dbg !3818
  %bf.clear101 = and i16 %bf.load98, -5, !dbg !3818
  %bf.set102 = or i16 %bf.clear101, %bf.shl100, !dbg !3818
  store i16 %bf.set102, i16* %needed, align 4, !dbg !3818
  %call104 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3819
  %12 = trunc i64 %call104 to i16, !dbg !3820
  %bf.load106 = load i16, i16* %needed, align 4, !dbg !3820
  %bf.value107 = shl i16 %12, 3, !dbg !3820
  %bf.shl108 = and i16 %bf.value107, 8, !dbg !3820
  %bf.clear109 = and i16 %bf.load106, -9, !dbg !3820
  %bf.set110 = or i16 %bf.clear109, %bf.shl108, !dbg !3820
  store i16 %bf.set110, i16* %needed, align 4, !dbg !3820
  %call112 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3821
  %13 = trunc i64 %call112 to i16, !dbg !3822
  %bf.load114 = load i16, i16* %needed, align 4, !dbg !3822
  %bf.value115 = shl i16 %13, 4, !dbg !3822
  %bf.shl116 = and i16 %bf.value115, 16, !dbg !3822
  %bf.clear117 = and i16 %bf.load114, -17, !dbg !3822
  %bf.set118 = or i16 %bf.clear117, %bf.shl116, !dbg !3822
  store i16 %bf.set118, i16* %needed, align 4, !dbg !3822
  %call120 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3823
  %14 = trunc i64 %call120 to i16, !dbg !3824
  %bf.load122 = load i16, i16* %needed, align 4, !dbg !3824
  %bf.value123 = shl i16 %14, 5, !dbg !3824
  %bf.shl124 = and i16 %bf.value123, 32, !dbg !3824
  %bf.clear125 = and i16 %bf.load122, -33, !dbg !3824
  %bf.set126 = or i16 %bf.clear125, %bf.shl124, !dbg !3824
  store i16 %bf.set126, i16* %needed, align 4, !dbg !3824
  %call128 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3825
  %15 = trunc i64 %call128 to i16, !dbg !3826
  %bf.load130 = load i16, i16* %needed, align 4, !dbg !3826
  %bf.value131 = shl i16 %15, 6, !dbg !3826
  %bf.shl132 = and i16 %bf.value131, 64, !dbg !3826
  %bf.clear133 = and i16 %bf.load130, -65, !dbg !3826
  %bf.set134 = or i16 %bf.clear133, %bf.shl132, !dbg !3826
  store i16 %bf.set134, i16* %needed, align 4, !dbg !3826
  %call136 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3827
  %16 = trunc i64 %call136 to i16, !dbg !3828
  %bf.load138 = load i16, i16* %needed, align 4, !dbg !3828
  %bf.value139 = shl i16 %16, 7, !dbg !3828
  %bf.shl140 = and i16 %bf.value139, 128, !dbg !3828
  %bf.clear141 = and i16 %bf.load138, -129, !dbg !3828
  %bf.set142 = or i16 %bf.clear141, %bf.shl140, !dbg !3828
  store i16 %bf.set142, i16* %needed, align 4, !dbg !3828
  %call144 = tail call i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 1) #6, !dbg !3829
  %17 = trunc i64 %call144 to i16, !dbg !3830
  %bf.load146 = load i16, i16* %needed, align 4, !dbg !3830
  %bf.value147 = shl i16 %17, 8, !dbg !3830
  %bf.shl148 = and i16 %bf.value147, 256, !dbg !3830
  %bf.clear149 = and i16 %bf.load146, -257, !dbg !3830
  %bf.set150 = or i16 %bf.clear149, %bf.shl148, !dbg !3830
  store i16 %bf.set150, i16* %needed, align 4, !dbg !3830
  ret void, !dbg !3831
}

declare dso_local zeroext i8 @cgraph_same_body_alias(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @cgraph_add_thunk(%union.tree_node*, %union.tree_node*, i8 zeroext, i64, i64, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @size_int_kind(i64, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!2073, !2074, !2075}
!llvm.ident = !{!2076}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lto_gcov_summary", scope: !2, file: !3, line: 774, type: !2064, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !440, globals: !2063, nameTableKind: None)
!3 = !DIFile(filename: "lto-cgraph.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !336, !342, !347, !352, !370, !377, !384, !407, !421, !428}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !330, line: 30, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335}
!332 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !337, line: 363, baseType: !7, size: 32, elements: !338)
!337 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!338 = !{!339, !340, !341}
!339 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!341 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !337, line: 355, baseType: !7, size: 32, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!346 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !348, line: 474, baseType: !7, size: 32, elements: !349)
!348 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!349 = !{!350, !351}
!350 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!354 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !378)
!378 = !{!379, !380, !381, !382, !383}
!379 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !385, line: 309, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!387 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !408, line: 256, baseType: !7, size: 32, elements: !409)
!408 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!410 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!414 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!415 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!416 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!417 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!418 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!419 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!420 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!421 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LTO_cgraph_tags", file: !385, line: 630, baseType: !7, size: 32, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIEnumerator(name: "LTO_cgraph_avail_node", value: 1, isUnsigned: true)
!424 = !DIEnumerator(name: "LTO_cgraph_overwritable_node", value: 2, isUnsigned: true)
!425 = !DIEnumerator(name: "LTO_cgraph_unavail_node", value: 3, isUnsigned: true)
!426 = !DIEnumerator(name: "LTO_cgraph_edge", value: 4, isUnsigned: true)
!427 = !DIEnumerator(name: "LTO_cgraph_last_tag", value: 5, isUnsigned: true)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ld_plugin_symbol_resolution", file: !429, line: 123, baseType: !7, size: 32, elements: !430)
!429 = !DIFile(filename: "./include/plugin-api.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439}
!431 = !DIEnumerator(name: "LDPR_UNKNOWN", value: 0, isUnsigned: true)
!432 = !DIEnumerator(name: "LDPR_UNDEF", value: 1, isUnsigned: true)
!433 = !DIEnumerator(name: "LDPR_PREVAILING_DEF", value: 2, isUnsigned: true)
!434 = !DIEnumerator(name: "LDPR_PREVAILING_DEF_IRONLY", value: 3, isUnsigned: true)
!435 = !DIEnumerator(name: "LDPR_PREEMPTED_REG", value: 4, isUnsigned: true)
!436 = !DIEnumerator(name: "LDPR_PREEMPTED_IR", value: 5, isUnsigned: true)
!437 = !DIEnumerator(name: "LDPR_RESOLVED_IR", value: 6, isUnsigned: true)
!438 = !DIEnumerator(name: "LDPR_RESOLVED_EXEC", value: 7, isUnsigned: true)
!439 = !DIEnumerator(name: "LDPR_RESOLVED_DYN", value: 8, isUnsigned: true)
!440 = !{!441, !442, !443, !444, !447, !448, !450, !2059, !458, !7, !421, !475, !445, !1012, !1912, !602, !470}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!443 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !408, line: 461, size: 128, elements: !452)
!452 = !{!453, !457}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !451, file: !408, line: 464, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !456, line: 33, flags: DIFlagFwdDecl)
!456 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !451, file: !408, line: 467, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, size: 128, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !460, file: !385, line: 271, baseType: !463, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, size: 128, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !464, file: !385, line: 270, baseType: !7, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !464, file: !385, line: 270, baseType: !7, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !464, file: !385, line: 270, baseType: !469, size: 64, offset: 64)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 64, elements: !574)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !385, line: 268, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !385, line: 181, size: 2496, elements: !473)
!473 = !{!474, !1898, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1952, !1996, !2006, !2010, !2036, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !472, file: !385, line: 182, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !476, line: 56, baseType: !477)
!476 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !479)
!479 = !{!480, !513, !519, !532, !551, !562, !567, !576, !582, !595, !607, !645, !1138, !1166, !1183, !1184, !1189, !1198, !1204, !1209, !1213, !1217, !1549, !1596, !1602, !1608, !1615, !1628, !1642, !1659, !1671, !1693, !1708, !1880}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !478, file: !135, line: 3372, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !481, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !481, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !481, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !481, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !481, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !481, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !481, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !481, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !481, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !481, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !481, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !481, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !481, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !481, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !481, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !481, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !481, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !481, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !481, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !481, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !481, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !481, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !481, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !481, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !481, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !481, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !481, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !481, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !481, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !481, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !478, file: !135, line: 3373, baseType: !514, size: 192)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !514, file: !135, line: 403, baseType: !481, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !514, file: !135, line: 404, baseType: !475, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !135, line: 405, baseType: !475, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !478, file: !135, line: 3374, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !135, line: 1385, baseType: !514, size: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !520, file: !135, line: 1386, baseType: !524, size: 128, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !525, line: 58, baseType: !526)
!525 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 54, size: 128, elements: !527)
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !526, file: !525, line: 56, baseType: !529, size: 64)
!529 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !526, file: !525, line: 57, baseType: !531, size: 64, offset: 64)
!531 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !478, file: !135, line: 3375, baseType: !533, size: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !135, line: 1398, baseType: !514, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !533, file: !135, line: 1399, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !539, line: 52, size: 256, elements: !540)
!539 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !538, file: !539, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !538, file: !539, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !538, file: !539, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !538, file: !539, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !538, file: !539, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !538, file: !539, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !538, file: !539, line: 62, baseType: !548, size: 192, offset: 64)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 3)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !478, file: !135, line: 3376, baseType: !552, size: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !552, file: !135, line: 1409, baseType: !514, size: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !552, file: !135, line: 1410, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !558, line: 27, size: 192, elements: !559)
!558 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !558, line: 29, baseType: !524, size: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !557, file: !558, line: 30, baseType: !5, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !478, file: !135, line: 3377, baseType: !563, size: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !563, file: !135, line: 1438, baseType: !514, size: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !563, file: !135, line: 1439, baseType: !475, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !478, file: !135, line: 3378, baseType: !568, size: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !568, file: !135, line: 1419, baseType: !514, size: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !568, file: !135, line: 1420, baseType: !443, size: 32, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !568, file: !135, line: 1421, baseType: !573, size: 8, offset: 224)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 8, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 1)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !478, file: !135, line: 3379, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !578)
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !577, file: !135, line: 1429, baseType: !514, size: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !577, file: !135, line: 1430, baseType: !475, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !577, file: !135, line: 1431, baseType: !475, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !478, file: !135, line: 3380, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !583, file: !135, line: 1461, baseType: !514, size: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !583, file: !135, line: 1462, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !588, line: 31, size: 128, elements: !589)
!588 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!589 = !{!590, !593, !594}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !587, file: !588, line: 32, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !587, file: !588, line: 33, baseType: !7, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !587, file: !588, line: 34, baseType: !7, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !478, file: !135, line: 3381, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !597)
!597 = !{!598, !599, !604, !605, !606}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !596, file: !135, line: 2508, baseType: !514, size: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !596, file: !135, line: 2509, baseType: !600, size: 32, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !601, line: 58, baseType: !602)
!601 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !603, line: 44, baseType: !7)
!603 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !596, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !596, file: !135, line: 2511, baseType: !475, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !596, file: !135, line: 2512, baseType: !475, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !478, file: !135, line: 3382, baseType: !608, size: 896)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !135, line: 2653, baseType: !596, size: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !608, file: !135, line: 2654, baseType: !475, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !608, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !608, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !608, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !608, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !608, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !608, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !608, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !608, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !608, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !608, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !608, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !608, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !608, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !608, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !608, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !608, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !608, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !608, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !608, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !608, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !608, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !608, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !608, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !608, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !608, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !608, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !608, file: !135, line: 2705, baseType: !475, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !608, file: !135, line: 2706, baseType: !475, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !608, file: !135, line: 2707, baseType: !475, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !608, file: !135, line: 2708, baseType: !475, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !608, file: !135, line: 2711, baseType: !643, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !478, file: !135, line: 3383, baseType: !646, size: 960)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !135, line: 2757, baseType: !608, size: 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !646, file: !135, line: 2758, baseType: !650, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !476, line: 50, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !653, line: 240, size: 384, elements: !654)
!653 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !652, file: !653, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !652, file: !653, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !652, file: !653, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !652, file: !653, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !652, file: !653, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !652, file: !653, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !652, file: !653, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !652, file: !653, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !652, file: !653, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !652, file: !653, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !652, file: !653, line: 321, baseType: !666, size: 320, offset: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !653, line: 315, size: 320, elements: !667)
!667 = !{!668, !1071, !1073, !1136, !1137}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !666, file: !653, line: 316, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 64, elements: !574)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !653, line: 183, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !653, line: 166, size: 64, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !685, !686, !698, !701, !761, !762, !1048, !1061, !1068}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !671, file: !653, line: 168, baseType: !443, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !671, file: !653, line: 169, baseType: !7, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !671, file: !653, line: 170, baseType: !448, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !671, file: !653, line: 171, baseType: !650, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !671, file: !653, line: 172, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !476, line: 53, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !653, line: 359, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !680, file: !653, line: 360, baseType: !443, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !680, file: !653, line: 361, baseType: !684, size: 64, offset: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 64, elements: !574)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !671, file: !653, line: 173, baseType: !5, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !671, file: !653, line: 174, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !653, line: 133, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 115, size: 32, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !688, file: !653, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !688, file: !653, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !688, file: !653, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !688, file: !653, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !688, file: !653, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !688, file: !653, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !688, file: !653, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !688, file: !653, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !671, file: !653, line: 175, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !653, line: 175, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !671, file: !653, line: 176, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !704, line: 75, size: 256, elements: !705)
!704 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!705 = !{!706, !720, !721, !722}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !704, line: 76, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !704, line: 68, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !704, line: 63, size: 320, elements: !710)
!710 = !{!711, !713, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !704, line: 64, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !709, file: !704, line: 65, baseType: !712, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !709, file: !704, line: 66, baseType: !7, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !709, file: !704, line: 67, baseType: !716, size: 128, offset: 192)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 128, elements: !718)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !704, line: 29, baseType: !529)
!718 = !{!719}
!719 = !DISubrange(count: 2)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !703, file: !704, line: 77, baseType: !707, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !703, file: !704, line: 78, baseType: !7, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !703, file: !704, line: 79, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !704, line: 49, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !704, line: 45, size: 832, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !725, file: !704, line: 46, baseType: !712, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !725, file: !704, line: 47, baseType: !702, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !725, file: !704, line: 48, baseType: !730, size: 704, offset: 128)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !731, line: 164, size: 704, elements: !732)
!731 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !{!733, !734, !744, !745, !746, !747, !748, !749, !753, !757, !758, !759, !760}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !730, file: !731, line: 166, baseType: !531, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !730, file: !731, line: 167, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !731, line: 157, size: 192, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !736, file: !731, line: 159, baseType: !445, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !736, file: !731, line: 160, baseType: !735, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !736, file: !731, line: 161, baseType: !741, size: 32, offset: 128)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 32, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !730, file: !731, line: 168, baseType: !445, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !730, file: !731, line: 169, baseType: !445, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !730, file: !731, line: 170, baseType: !445, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !730, file: !731, line: 171, baseType: !531, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !730, file: !731, line: 172, baseType: !443, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !730, file: !731, line: 176, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!735, !447, !531}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !730, file: !731, line: 177, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !447, !735}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !730, file: !731, line: 178, baseType: !447, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !730, file: !731, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !730, file: !731, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !730, file: !731, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !671, file: !653, line: 177, baseType: !475, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !671, file: !653, line: 178, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !337, line: 217, size: 832, elements: !765)
!765 = !{!766, !1013, !1014, !1015, !1018, !1022, !1023, !1024, !1042, !1043, !1044, !1045, !1046, !1047}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !764, file: !337, line: 219, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !337, line: 151, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !337, line: 151, size: 128, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !769, file: !337, line: 151, baseType: !772, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !337, line: 150, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !337, line: 150, size: 128, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !773, file: !337, line: 150, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !773, file: !337, line: 150, baseType: !7, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !773, file: !337, line: 150, baseType: !778, size: 64, offset: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 64, elements: !574)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !476, line: 108, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !337, line: 122, size: 512, elements: !782)
!782 = !{!783, !784, !785, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !781, file: !337, line: 124, baseType: !763, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !781, file: !337, line: 125, baseType: !763, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !781, file: !337, line: 131, baseType: !786, size: 64, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !337, line: 128, size: 64, elements: !787)
!787 = !{!788, !1004}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !786, file: !337, line: 129, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !476, line: 66, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !792, line: 143, size: 192, elements: !793)
!792 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!793 = !{!794, !1002, !1003}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !791, file: !792, line: 145, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !476, line: 69, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !792, line: 136, size: 192, elements: !798)
!798 = !{!799, !1000, !1001}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !797, file: !792, line: 137, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !476, line: 58, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !792, line: 737, size: 768, elements: !803)
!803 = !{!804, !821, !855, !861, !866, !871, !878, !884, !890, !895, !909, !914, !920, !925, !935, !940, !958, !965, !972, !978, !983, !989, !995}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !802, file: !792, line: 738, baseType: !805, size: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !792, line: 271, size: 256, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !805, file: !792, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !805, file: !792, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !805, file: !792, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !805, file: !792, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !805, file: !792, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !805, file: !792, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !805, file: !792, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !805, file: !792, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !805, file: !792, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !805, file: !792, line: 312, baseType: !7, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !805, file: !792, line: 316, baseType: !600, size: 32, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !805, file: !792, line: 319, baseType: !7, size: 32, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !805, file: !792, line: 323, baseType: !763, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !805, file: !792, line: 327, baseType: !475, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !802, file: !792, line: 739, baseType: !822, size: 448)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !792, line: 350, size: 448, elements: !823)
!823 = !{!824, !853}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !822, file: !792, line: 353, baseType: !825, size: 384)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !792, line: 333, size: 384, elements: !826)
!826 = !{!827, !828, !836}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !825, file: !792, line: 336, baseType: !805, size: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !825, file: !792, line: 343, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !831, line: 37, size: 128, elements: !832)
!831 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !831, line: 39, baseType: !829, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !830, file: !831, line: 40, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !825, file: !792, line: 344, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !831, line: 45, size: 320, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !831, line: 47, baseType: !837, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !838, file: !831, line: 48, baseType: !842, size: 256, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !843)
!843 = !{!844, !846, !847, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !842, file: !135, line: 1884, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !135, line: 1885, baseType: !845, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !842, file: !135, line: 1891, baseType: !848, size: 64, offset: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !135, line: 1891, size: 64, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !848, file: !135, line: 1891, baseType: !800, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !848, file: !135, line: 1891, baseType: !475, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !842, file: !135, line: 1892, baseType: !835, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !822, file: !792, line: 359, baseType: !854, size: 64, offset: 384)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !574)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !802, file: !792, line: 740, baseType: !856, size: 512)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !792, line: 365, size: 512, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !856, file: !792, line: 368, baseType: !825, size: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !856, file: !792, line: 373, baseType: !475, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !856, file: !792, line: 374, baseType: !475, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !802, file: !792, line: 741, baseType: !862, size: 576)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !792, line: 380, size: 576, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !862, file: !792, line: 383, baseType: !856, size: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !862, file: !792, line: 389, baseType: !854, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !802, file: !792, line: 742, baseType: !867, size: 320)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !792, line: 395, size: 320, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !867, file: !792, line: 397, baseType: !805, size: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !867, file: !792, line: 400, baseType: !789, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !802, file: !792, line: 743, baseType: !872, size: 448)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !792, line: 406, size: 448, elements: !873)
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !872, file: !792, line: 408, baseType: !805, size: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !872, file: !792, line: 412, baseType: !475, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !872, file: !792, line: 420, baseType: !475, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !872, file: !792, line: 423, baseType: !789, size: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !802, file: !792, line: 744, baseType: !879, size: 384)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !792, line: 429, size: 384, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !879, file: !792, line: 431, baseType: !805, size: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !879, file: !792, line: 434, baseType: !475, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !879, file: !792, line: 437, baseType: !789, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !802, file: !792, line: 745, baseType: !885, size: 384)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !792, line: 443, size: 384, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !885, file: !792, line: 445, baseType: !805, size: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !885, file: !792, line: 449, baseType: !475, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !885, file: !792, line: 453, baseType: !789, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !802, file: !792, line: 746, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !792, line: 459, size: 320, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !891, file: !792, line: 461, baseType: !805, size: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !891, file: !792, line: 464, baseType: !475, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !802, file: !792, line: 747, baseType: !896, size: 768)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !792, line: 469, size: 768, elements: !897)
!897 = !{!898, !899, !900, !901, !902}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !896, file: !792, line: 471, baseType: !805, size: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !896, file: !792, line: 474, baseType: !7, size: 32, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !896, file: !792, line: 475, baseType: !7, size: 32, offset: 288)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !896, file: !792, line: 478, baseType: !475, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !896, file: !792, line: 481, baseType: !903, size: 384, offset: 384)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 384, elements: !574)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !904, file: !135, line: 1920, baseType: !842, size: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !904, file: !135, line: 1921, baseType: !475, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !904, file: !135, line: 1922, baseType: !600, size: 32, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !802, file: !792, line: 748, baseType: !910, size: 320)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !792, line: 487, size: 320, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !910, file: !792, line: 490, baseType: !805, size: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !910, file: !792, line: 494, baseType: !443, size: 32, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !802, file: !792, line: 749, baseType: !915, size: 384)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !792, line: 500, size: 384, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !915, file: !792, line: 502, baseType: !805, size: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !915, file: !792, line: 506, baseType: !789, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !915, file: !792, line: 510, baseType: !789, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !802, file: !792, line: 750, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !792, line: 529, size: 320, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !921, file: !792, line: 531, baseType: !805, size: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !921, file: !792, line: 540, baseType: !789, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !802, file: !792, line: 751, baseType: !926, size: 704)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !792, line: 546, size: 704, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !926, file: !792, line: 549, baseType: !856, size: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !926, file: !792, line: 553, baseType: !448, size: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !926, file: !792, line: 557, baseType: !442, size: 8, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !926, file: !792, line: 558, baseType: !442, size: 8, offset: 584)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !926, file: !792, line: 559, baseType: !442, size: 8, offset: 592)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !926, file: !792, line: 560, baseType: !442, size: 8, offset: 600)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !926, file: !792, line: 566, baseType: !854, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !802, file: !792, line: 752, baseType: !936, size: 384)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !792, line: 571, size: 384, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !936, file: !792, line: 573, baseType: !867, size: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !936, file: !792, line: 577, baseType: !475, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !802, file: !792, line: 753, baseType: !941, size: 576)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !792, line: 600, size: 576, elements: !942)
!942 = !{!943, !944, !945, !948, !957}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !941, file: !792, line: 602, baseType: !867, size: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !941, file: !792, line: 605, baseType: !475, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !941, file: !792, line: 609, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !947, line: 46, baseType: !529)
!947 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !941, file: !792, line: 612, baseType: !949, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !792, line: 581, size: 320, elements: !951)
!951 = !{!952, !953, !954, !955, !956}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !950, file: !792, line: 583, baseType: !134, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !950, file: !792, line: 586, baseType: !475, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !950, file: !792, line: 589, baseType: !475, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !950, file: !792, line: 592, baseType: !475, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !950, file: !792, line: 595, baseType: !475, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !941, file: !792, line: 616, baseType: !789, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !802, file: !792, line: 754, baseType: !959, size: 512)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !792, line: 622, size: 512, elements: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !959, file: !792, line: 624, baseType: !867, size: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !959, file: !792, line: 628, baseType: !475, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !959, file: !792, line: 632, baseType: !475, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !959, file: !792, line: 636, baseType: !475, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !802, file: !792, line: 755, baseType: !966, size: 704)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !792, line: 642, size: 704, elements: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !966, file: !792, line: 644, baseType: !959, size: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !966, file: !792, line: 648, baseType: !475, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !966, file: !792, line: 652, baseType: !475, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !966, file: !792, line: 653, baseType: !475, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !802, file: !792, line: 756, baseType: !973, size: 448)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !792, line: 663, size: 448, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !973, file: !792, line: 665, baseType: !867, size: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !973, file: !792, line: 668, baseType: !475, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !973, file: !792, line: 673, baseType: !475, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !802, file: !792, line: 757, baseType: !979, size: 384)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !792, line: 694, size: 384, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !979, file: !792, line: 696, baseType: !867, size: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !979, file: !792, line: 699, baseType: !475, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !802, file: !792, line: 758, baseType: !984, size: 384)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !792, line: 681, size: 384, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !984, file: !792, line: 683, baseType: !805, size: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !984, file: !792, line: 686, baseType: !475, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !984, file: !792, line: 689, baseType: !475, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !802, file: !792, line: 759, baseType: !990, size: 384)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !792, line: 707, size: 384, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !990, file: !792, line: 709, baseType: !805, size: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !990, file: !792, line: 712, baseType: !475, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !990, file: !792, line: 712, baseType: !475, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !802, file: !792, line: 760, baseType: !996, size: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !792, line: 718, size: 320, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !996, file: !792, line: 720, baseType: !805, size: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !996, file: !792, line: 723, baseType: !475, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !797, file: !792, line: 138, baseType: !796, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !797, file: !792, line: 139, baseType: !796, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !791, file: !792, line: 146, baseType: !795, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !791, file: !792, line: 152, baseType: !789, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !786, file: !337, line: 130, baseType: !650, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !781, file: !337, line: 134, baseType: !447, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !781, file: !337, line: 137, baseType: !475, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !781, file: !337, line: 138, baseType: !600, size: 32, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !781, file: !337, line: 142, baseType: !7, size: 32, offset: 352)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !337, line: 144, baseType: !443, size: 32, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !781, file: !337, line: 145, baseType: !443, size: 32, offset: 416)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !337, line: 146, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !337, line: 119, baseType: !531)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !764, file: !337, line: 220, baseType: !767, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !764, file: !337, line: 223, baseType: !447, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !764, file: !337, line: 226, baseType: !1016, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !337, line: 185, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !764, file: !337, line: 229, baseType: !1019, size: 128, offset: 256)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 128, elements: !718)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !337, line: 229, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !764, file: !337, line: 232, baseType: !763, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !764, file: !337, line: 233, baseType: !763, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !764, file: !337, line: 238, baseType: !1025, size: 64, offset: 512)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !337, line: 235, size: 64, elements: !1026)
!1026 = !{!1027, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1025, file: !337, line: 236, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !337, line: 273, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1029, file: !337, line: 275, baseType: !789, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1029, file: !337, line: 278, baseType: !789, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1025, file: !337, line: 237, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !337, line: 259, size: 320, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1035, file: !337, line: 261, baseType: !650, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1035, file: !337, line: 262, baseType: !650, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1035, file: !337, line: 266, baseType: !650, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1035, file: !337, line: 267, baseType: !650, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1035, file: !337, line: 270, baseType: !443, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !337, line: 241, baseType: !1012, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !764, file: !337, line: 244, baseType: !443, size: 32, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !764, file: !337, line: 247, baseType: !443, size: 32, offset: 672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !764, file: !337, line: 250, baseType: !443, size: 32, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !764, file: !337, line: 253, baseType: !443, size: 32, offset: 736)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !337, line: 256, baseType: !443, size: 32, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !671, file: !653, line: 179, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !653, line: 150, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !653, line: 142, size: 320, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1059, !1060}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1051, file: !653, line: 144, baseType: !475, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1051, file: !653, line: 145, baseType: !650, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !653, line: 146, baseType: !650, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1051, file: !653, line: 147, baseType: !1057, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1058, line: 31, baseType: !443)
!1058 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1051, file: !653, line: 148, baseType: !7, size: 32, offset: 224)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1051, file: !653, line: 149, baseType: !442, size: 8, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !671, file: !653, line: 180, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !653, line: 162, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !653, line: 159, size: 128, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1064, file: !653, line: 160, baseType: !475, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1064, file: !653, line: 161, baseType: !531, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !671, file: !653, line: 181, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !653, line: 181, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !666, file: !653, line: 317, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 64, elements: !574)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !666, file: !653, line: 318, baseType: !1074, size: 320)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !653, line: 188, size: 320, elements: !1075)
!1075 = !{!1076, !1078, !1135}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1074, file: !653, line: 190, baseType: !1077, size: 192)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 192, elements: !549)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1074, file: !653, line: 193, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !653, line: 206, size: 320, elements: !1081)
!1081 = !{!1082, !1120, !1121, !1122, !1134}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1080, file: !653, line: 208, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !476, line: 62, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1086, line: 538, size: 256, elements: !1087)
!1086 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1087 = !{!1088, !1092, !1098, !1111}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !1086, line: 539, baseType: !1089, size: 32)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1086, line: 482, size: 32, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !1086, line: 484, baseType: !7, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1085, file: !1086, line: 540, baseType: !1093, size: 192)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1086, line: 488, size: 192, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1093, file: !1086, line: 489, baseType: !1089, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1093, file: !1086, line: 492, baseType: !448, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1093, file: !1086, line: 496, baseType: !475, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1085, file: !1086, line: 541, baseType: !1099, size: 256)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1086, line: 504, size: 256, elements: !1100)
!1100 = !{!1101, !1102, !1109, !1110}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1099, file: !1086, line: 505, baseType: !1089, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1099, file: !1086, line: 509, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1086, line: 501, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1099, file: !1086, line: 510, baseType: !1107, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1099, file: !1086, line: 513, baseType: !1083, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1085, file: !1086, line: 542, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1086, line: 530, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1112, file: !1086, line: 531, baseType: !1089, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1112, file: !1086, line: 534, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1086, line: 525, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!442, !475, !448, !529, !529}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1080, file: !653, line: 211, baseType: !7, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !653, line: 214, baseType: !531, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1080, file: !653, line: 224, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !653, line: 202, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !653, line: 202, size: 128, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1125, file: !653, line: 202, baseType: !1128, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !653, line: 200, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !653, line: 200, size: 128, elements: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1129, file: !653, line: 200, baseType: !7, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1129, file: !653, line: 200, baseType: !7, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1129, file: !653, line: 200, baseType: !684, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1080, file: !653, line: 234, baseType: !1123, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1074, file: !653, line: 197, baseType: !531, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !666, file: !653, line: 319, baseType: !538, size: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !666, file: !653, line: 320, baseType: !557, size: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !478, file: !135, line: 3384, baseType: !1139, size: 1472)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1140)
!1140 = !{!1141, !1162, !1163, !1164, !1165}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !135, line: 3115, baseType: !1142, size: 1216)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !135, line: 2985, baseType: !646, size: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1142, file: !135, line: 2986, baseType: !475, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1142, file: !135, line: 2987, baseType: !475, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1142, file: !135, line: 2988, baseType: !475, size: 64, offset: 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1142, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1142, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1142, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1142, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1142, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1142, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1142, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1142, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1142, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1142, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1142, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1142, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1142, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1142, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1139, file: !135, line: 3117, baseType: !475, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1139, file: !135, line: 3119, baseType: !475, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1139, file: !135, line: 3121, baseType: !475, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1139, file: !135, line: 3123, baseType: !475, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !478, file: !135, line: 3385, baseType: !1167, size: 1088)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !135, line: 2875, baseType: !646, size: 960)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1167, file: !135, line: 2876, baseType: !650, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1167, file: !135, line: 2877, baseType: !1172, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1174, line: 172, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1173, file: !1174, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1173, file: !1174, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1173, file: !1174, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1173, file: !1174, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1173, file: !1174, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1173, file: !1174, line: 195, baseType: !7, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1173, file: !1174, line: 199, baseType: !475, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !478, file: !135, line: 3386, baseType: !1142, size: 1216)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !478, file: !135, line: 3387, baseType: !1185, size: 1280)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !135, line: 3094, baseType: !1142, size: 1216)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1185, file: !135, line: 3095, baseType: !1172, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !478, file: !135, line: 3388, baseType: !1190, size: 1216)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1190, file: !135, line: 2825, baseType: !608, size: 896)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1190, file: !135, line: 2827, baseType: !475, size: 64, offset: 896)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1190, file: !135, line: 2828, baseType: !475, size: 64, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1190, file: !135, line: 2829, baseType: !475, size: 64, offset: 1024)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1190, file: !135, line: 2830, baseType: !475, size: 64, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1190, file: !135, line: 2831, baseType: !475, size: 64, offset: 1152)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !478, file: !135, line: 3389, baseType: !1199, size: 1024)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1199, file: !135, line: 2851, baseType: !646, size: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1199, file: !135, line: 2852, baseType: !443, size: 32, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1199, file: !135, line: 2853, baseType: !443, size: 32, offset: 992)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !478, file: !135, line: 3390, baseType: !1205, size: 1024)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1205, file: !135, line: 2858, baseType: !646, size: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1205, file: !135, line: 2859, baseType: !1172, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !478, file: !135, line: 3391, baseType: !1210, size: 960)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1210, file: !135, line: 2863, baseType: !646, size: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !478, file: !135, line: 3392, baseType: !1214, size: 1472)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1214, file: !135, line: 3305, baseType: !1139, size: 1472)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !478, file: !135, line: 3393, baseType: !1218, size: 1792)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1219)
!1219 = !{!1220, !1221, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1218, file: !135, line: 3249, baseType: !1139, size: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1218, file: !135, line: 3251, baseType: !1222, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1224, line: 463, size: 1152, elements: !1225)
!1224 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1225 = !{!1226, !1385, !1416, !1417, !1469, !1472, !1473, !1474, !1475, !1476, !1477, !1501, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1223, file: !1224, line: 464, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !330, line: 194, size: 384, elements: !1229)
!1229 = !{!1230, !1279, !1292, !1306, !1354, !1366}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1228, file: !330, line: 197, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !330, line: 182, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !330, line: 116, size: 704, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1267, !1276, !1277, !1278}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1233, file: !330, line: 119, baseType: !1232, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1233, file: !330, line: 122, baseType: !1232, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1233, file: !330, line: 123, baseType: !1232, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1233, file: !330, line: 126, baseType: !443, size: 32, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1233, file: !330, line: 129, baseType: !329, size: 32, offset: 224)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1233, file: !330, line: 165, baseType: !1241, size: 192, offset: 256)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !330, line: 132, size: 192, elements: !1242)
!1242 = !{!1243, !1256, !1262}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1241, file: !330, line: 137, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !330, line: 133, size: 128, elements: !1245)
!1245 = !{!1246, !1255}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1244, file: !330, line: 135, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !330, line: 93, size: 320, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1248, file: !330, line: 96, baseType: !1247, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1248, file: !330, line: 97, baseType: !1247, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1248, file: !330, line: 101, baseType: !475, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1248, file: !330, line: 106, baseType: !475, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1248, file: !330, line: 111, baseType: !475, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1244, file: !330, line: 136, baseType: !1247, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1241, file: !330, line: 151, baseType: !1257, size: 192)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !330, line: 139, size: 192, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1257, file: !330, line: 141, baseType: !475, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1257, file: !330, line: 145, baseType: !475, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1257, file: !330, line: 150, baseType: !443, size: 32, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1241, file: !330, line: 164, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !330, line: 153, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1263, file: !330, line: 161, baseType: !475, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1263, file: !330, line: 163, baseType: !600, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1233, file: !330, line: 168, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !330, line: 67, size: 320, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1269, file: !330, line: 70, baseType: !1268, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1269, file: !330, line: 73, baseType: !1232, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1269, file: !330, line: 78, baseType: !475, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1269, file: !330, line: 85, baseType: !650, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1269, file: !330, line: 88, baseType: !443, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1233, file: !330, line: 173, baseType: !650, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1233, file: !330, line: 173, baseType: !650, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1233, file: !330, line: 177, baseType: !442, size: 8, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1228, file: !330, line: 200, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !330, line: 185, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !330, line: 185, size: 128, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1282, file: !330, line: 185, baseType: !1285, size: 128)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !330, line: 184, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !330, line: 184, size: 128, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1286, file: !330, line: 184, baseType: !7, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1286, file: !330, line: 184, baseType: !7, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1286, file: !330, line: 184, baseType: !1291, size: 64, offset: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 64, elements: !574)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1228, file: !330, line: 203, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, size: 128, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1295, file: !330, line: 189, baseType: !1298, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !330, line: 188, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !330, line: 188, size: 128, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1299, file: !330, line: 188, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1299, file: !330, line: 188, baseType: !7, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1299, file: !330, line: 188, baseType: !1304, size: 64, offset: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 64, elements: !574)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !330, line: 180, baseType: !1268)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1228, file: !330, line: 207, baseType: !1307, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1308, line: 144, baseType: !1309)
!1308 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1308, line: 100, size: 896, elements: !1311)
!1311 = !{!1312, !1318, !1323, !1328, !1330, !1331, !1332, !1333, !1334, !1335, !1340, !1342, !1343, !1348, !1353}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1310, file: !1308, line: 102, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1308, line: 52, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1317, !1107}
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1308, line: 47, baseType: !7)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1310, file: !1308, line: 105, baseType: !1319, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1308, line: 59, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!443, !1107, !1107}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1310, file: !1308, line: 108, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1308, line: 63, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !447}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1310, file: !1308, line: 111, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1310, file: !1308, line: 114, baseType: !946, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1310, file: !1308, line: 117, baseType: !946, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1310, file: !1308, line: 120, baseType: !946, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1310, file: !1308, line: 124, baseType: !7, size: 32, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1310, file: !1308, line: 128, baseType: !7, size: 32, offset: 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1310, file: !1308, line: 131, baseType: !1336, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1308, line: 75, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!447, !946, !946}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1310, file: !1308, line: 132, baseType: !1341, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1308, line: 78, baseType: !1325)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1310, file: !1308, line: 135, baseType: !447, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1310, file: !1308, line: 136, baseType: !1344, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1308, line: 82, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!447, !447, !946, !946}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1310, file: !1308, line: 137, baseType: !1349, size: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1308, line: 83, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !447, !447}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1310, file: !1308, line: 141, baseType: !7, size: 32, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1228, file: !330, line: 211, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1357, file: !135, line: 183, baseType: !1360, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1361, file: !135, line: 182, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1361, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1361, file: !135, line: 182, baseType: !854, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1228, file: !330, line: 220, baseType: !1367, size: 64, offset: 320)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !330, line: 217, size: 64, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1367, file: !330, line: 218, baseType: !1355, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1367, file: !330, line: 219, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1373, line: 29, baseType: !1374)
!1373 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1373, line: 29, size: 96, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1374, file: !1373, line: 29, baseType: !1377, size: 96)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1373, line: 27, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1373, line: 27, size: 96, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1378, file: !1373, line: 27, baseType: !7, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1378, file: !1373, line: 27, baseType: !7, size: 32, offset: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1378, file: !1373, line: 27, baseType: !1383, size: 8, offset: 64)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 8, elements: !574)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1373, line: 26, baseType: !442)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1223, file: !1224, line: 467, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !337, line: 374, size: 640, elements: !1388)
!1388 = !{!1389, !1391, !1392, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1414, !1415}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1387, file: !337, line: 377, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !476, line: 111, baseType: !763)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1387, file: !337, line: 378, baseType: !1390, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1387, file: !337, line: 381, baseType: !1393, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !337, line: 282, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !337, line: 282, size: 128, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1395, file: !337, line: 282, baseType: !1398, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !337, line: 281, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !337, line: 281, size: 128, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1399, file: !337, line: 281, baseType: !7, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1399, file: !337, line: 281, baseType: !7, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1399, file: !337, line: 281, baseType: !1404, size: 64, offset: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 64, elements: !574)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1387, file: !337, line: 384, baseType: !443, size: 32, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1387, file: !337, line: 387, baseType: !443, size: 32, offset: 224)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1387, file: !337, line: 390, baseType: !443, size: 32, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1387, file: !337, line: 394, baseType: !1393, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1387, file: !337, line: 396, baseType: !336, size: 32, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1387, file: !337, line: 399, baseType: !1411, size: 64, offset: 416)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !718)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1387, file: !337, line: 402, baseType: !1413, size: 64, offset: 480)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !718)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1387, file: !337, line: 406, baseType: !443, size: 32, offset: 544)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1387, file: !337, line: 409, baseType: !443, size: 32, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1223, file: !1224, line: 470, baseType: !790, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1223, file: !1224, line: 473, baseType: !1418, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1174, line: 39, size: 1152, elements: !1420)
!1420 = !{!1421, !1422, !1435, !1436, !1437, !1449, !1450, !1451, !1452, !1453, !1454, !1455}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1419, file: !1174, line: 41, baseType: !1307, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1419, file: !1174, line: 48, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !792, line: 35, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !792, line: 35, size: 128, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1425, file: !792, line: 35, baseType: !1428, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !792, line: 33, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !792, line: 33, size: 128, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1429, file: !792, line: 33, baseType: !7, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1429, file: !792, line: 33, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1429, file: !792, line: 33, baseType: !1434, size: 64, offset: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 64, elements: !574)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1419, file: !1174, line: 51, baseType: !1355, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1419, file: !1174, line: 54, baseType: !475, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1419, file: !1174, line: 57, baseType: !1438, size: 128, offset: 256)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1439, line: 31, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1438, file: !1439, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1438, file: !1439, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1438, file: !1439, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1438, file: !1439, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1438, file: !1439, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1438, file: !1439, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1438, file: !1439, line: 56, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !476, line: 47, baseType: !702)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1419, file: !1174, line: 60, baseType: !1438, size: 128, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1419, file: !1174, line: 64, baseType: !454, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1419, file: !1174, line: 67, baseType: !475, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1419, file: !1174, line: 73, baseType: !1307, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1419, file: !1174, line: 77, baseType: !1448, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1419, file: !1174, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1419, file: !1174, line: 82, baseType: !1456, size: 320, offset: 832)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !831, line: 62, size: 320, elements: !1457)
!1457 = !{!1458, !1464, !1465, !1466, !1467, !1468}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1456, file: !831, line: 63, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !831, line: 56, size: 128, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1460, file: !831, line: 57, baseType: !1459, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1460, file: !831, line: 58, baseType: !573, size: 8, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1456, file: !831, line: 64, baseType: !7, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1456, file: !831, line: 66, baseType: !7, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1456, file: !831, line: 68, baseType: !442, size: 8, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1456, file: !831, line: 70, baseType: !829, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1456, file: !831, line: 71, baseType: !837, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1223, file: !1224, line: 476, baseType: !1470, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1224, line: 476, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1223, file: !1224, line: 479, baseType: !1307, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1223, file: !1224, line: 484, baseType: !475, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1223, file: !1224, line: 488, baseType: !475, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1223, file: !1224, line: 493, baseType: !475, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1223, file: !1224, line: 496, baseType: !475, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1223, file: !1224, line: 501, baseType: !1478, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !348, line: 2355, size: 576, elements: !1480)
!1480 = !{!1481, !1484, !1485, !1486, !1487, !1489, !1490, !1495, !1496, !1497, !1498, !1499, !1500}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1479, file: !348, line: 2356, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !348, line: 2356, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1479, file: !348, line: 2357, baseType: !448, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1479, file: !348, line: 2358, baseType: !443, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1479, file: !348, line: 2359, baseType: !443, size: 32, offset: 160)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1479, file: !348, line: 2360, baseType: !1488, size: 128, offset: 192)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 128, elements: !742)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1479, file: !348, line: 2364, baseType: !443, size: 32, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1479, file: !348, line: 2367, baseType: !1491, size: 128, offset: 384)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !348, line: 2349, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1491, file: !348, line: 2351, baseType: !650, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1491, file: !348, line: 2352, baseType: !531, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1479, file: !348, line: 2371, baseType: !347, size: 32, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1479, file: !348, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1479, file: !348, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1479, file: !348, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1479, file: !348, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1479, file: !348, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1223, file: !1224, line: 504, baseType: !1502, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1224, line: 504, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1223, file: !1224, line: 507, baseType: !1307, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1223, file: !1224, line: 510, baseType: !443, size: 32, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1223, file: !1224, line: 513, baseType: !443, size: 32, offset: 864)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1223, file: !1224, line: 516, baseType: !600, size: 32, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1223, file: !1224, line: 519, baseType: !600, size: 32, offset: 928)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1223, file: !1224, line: 522, baseType: !7, size: 32, offset: 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1223, file: !1224, line: 523, baseType: !7, size: 32, offset: 992)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1223, file: !1224, line: 528, baseType: !448, size: 64, offset: 1024)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1223, file: !1224, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1223, file: !1224, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1223, file: !1224, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1223, file: !1224, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1223, file: !1224, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1223, file: !1224, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1223, file: !1224, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1223, file: !1224, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1223, file: !1224, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1223, file: !1224, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1223, file: !1224, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1223, file: !1224, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1223, file: !1224, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1223, file: !1224, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1223, file: !1224, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1223, file: !1224, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1218, file: !135, line: 3254, baseType: !475, size: 64, offset: 1536)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1218, file: !135, line: 3257, baseType: !475, size: 64, offset: 1600)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1218, file: !135, line: 3258, baseType: !475, size: 64, offset: 1664)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1218, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1218, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1218, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1218, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1218, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1218, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1218, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1218, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1218, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1218, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1218, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1218, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1218, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1218, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1218, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1218, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1218, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1218, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !135, line: 3394, baseType: !1550, size: 1344)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1550, file: !135, line: 2280, baseType: !514, size: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1550, file: !135, line: 2281, baseType: !475, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !135, line: 2282, baseType: !475, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1550, file: !135, line: 2283, baseType: !475, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1550, file: !135, line: 2284, baseType: !475, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1550, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1550, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1550, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1550, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1550, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1550, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1550, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1550, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1550, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1550, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1550, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1550, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1550, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1550, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1550, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1550, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1550, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1550, file: !135, line: 2306, baseType: !1057, size: 32, offset: 544)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1550, file: !135, line: 2307, baseType: !475, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1550, file: !135, line: 2308, baseType: !475, size: 64, offset: 640)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1550, file: !135, line: 2314, baseType: !1578, size: 64, offset: 704)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1579)
!1579 = !{!1580, !1581, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1578, file: !135, line: 2310, baseType: !443, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1578, file: !135, line: 2311, baseType: !448, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1578, file: !135, line: 2312, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1550, file: !135, line: 2315, baseType: !475, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1550, file: !135, line: 2316, baseType: !475, size: 64, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1550, file: !135, line: 2317, baseType: !475, size: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1550, file: !135, line: 2318, baseType: !475, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1550, file: !135, line: 2319, baseType: !475, size: 64, offset: 1024)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1550, file: !135, line: 2320, baseType: !475, size: 64, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1550, file: !135, line: 2321, baseType: !475, size: 64, offset: 1152)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1550, file: !135, line: 2322, baseType: !475, size: 64, offset: 1216)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1550, file: !135, line: 2324, baseType: !1594, size: 64, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !478, file: !135, line: 3395, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1597, file: !135, line: 1470, baseType: !514, size: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1597, file: !135, line: 1471, baseType: !475, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1597, file: !135, line: 1472, baseType: !475, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !478, file: !135, line: 3396, baseType: !1603, size: 320)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1603, file: !135, line: 1483, baseType: !514, size: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1603, file: !135, line: 1484, baseType: !443, size: 32, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1603, file: !135, line: 1485, baseType: !854, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !478, file: !135, line: 3397, baseType: !1609, size: 384)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1609, file: !135, line: 1830, baseType: !514, size: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1609, file: !135, line: 1831, baseType: !600, size: 32, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1609, file: !135, line: 1832, baseType: !475, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1609, file: !135, line: 1835, baseType: !854, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !478, file: !135, line: 3398, baseType: !1616, size: 704)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1627}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1616, file: !135, line: 1899, baseType: !514, size: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1616, file: !135, line: 1902, baseType: !475, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1616, file: !135, line: 1905, baseType: !800, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1616, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1616, file: !135, line: 1911, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1174, line: 117, size: 128, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1624, file: !1174, line: 120, baseType: !1438, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1616, file: !135, line: 1914, baseType: !842, size: 256, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !478, file: !135, line: 3399, baseType: !1629, size: 704)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !135, line: 2009, baseType: !514, size: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1629, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1629, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1629, file: !135, line: 2014, baseType: !600, size: 32, offset: 224)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1629, file: !135, line: 2016, baseType: !475, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1629, file: !135, line: 2017, baseType: !1355, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1629, file: !135, line: 2019, baseType: !475, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1629, file: !135, line: 2020, baseType: !475, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1629, file: !135, line: 2021, baseType: !475, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1629, file: !135, line: 2022, baseType: !475, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1629, file: !135, line: 2023, baseType: !475, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !478, file: !135, line: 3400, baseType: !1643, size: 832)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1643, file: !135, line: 2431, baseType: !514, size: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1643, file: !135, line: 2433, baseType: !475, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1643, file: !135, line: 2434, baseType: !475, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1643, file: !135, line: 2435, baseType: !475, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1643, file: !135, line: 2436, baseType: !475, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1643, file: !135, line: 2437, baseType: !1355, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1643, file: !135, line: 2438, baseType: !475, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1643, file: !135, line: 2440, baseType: !475, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1643, file: !135, line: 2441, baseType: !475, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1643, file: !135, line: 2443, baseType: !1655, size: 128, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1656, file: !135, line: 182, baseType: !1360, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !478, file: !135, line: 3401, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1661)
!1661 = !{!1662, !1663, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1660, file: !135, line: 3329, baseType: !514, size: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1660, file: !135, line: 3330, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1665, file: !135, line: 3322, baseType: !1664, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1665, file: !135, line: 3323, baseType: !1664, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1665, file: !135, line: 3324, baseType: !475, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1660, file: !135, line: 3331, baseType: !1664, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !478, file: !135, line: 3402, baseType: !1672, size: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1672, file: !135, line: 1541, baseType: !514, size: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1672, file: !135, line: 1542, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1678, file: !135, line: 1538, baseType: !1681, size: 192)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1682, file: !135, line: 1537, baseType: !7, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1682, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1682, file: !135, line: 1537, baseType: !1687, size: 128, offset: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 128, elements: !574)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1689, file: !135, line: 1533, baseType: !475, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1689, file: !135, line: 1534, baseType: !475, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !478, file: !135, line: 3403, baseType: !1694, size: 512)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1705, !1706, !1707}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1694, file: !135, line: 1939, baseType: !514, size: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1694, file: !135, line: 1940, baseType: !600, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1694, file: !135, line: 1941, baseType: !352, size: 32, offset: 224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1694, file: !135, line: 1946, baseType: !1700, size: 32, offset: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1700, file: !135, line: 1943, baseType: !370, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1700, file: !135, line: 1944, baseType: !377, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1700, file: !135, line: 1945, baseType: !134, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1694, file: !135, line: 1950, baseType: !789, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1694, file: !135, line: 1951, baseType: !789, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1694, file: !135, line: 1953, baseType: !854, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !478, file: !135, line: 3404, baseType: !1709, size: 1664)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1709, file: !135, line: 3338, baseType: !514, size: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1709, file: !135, line: 3341, baseType: !1713, size: 1472, offset: 192)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1714, line: 410, size: 1472, elements: !1715)
!1714 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1713, file: !1714, line: 412, baseType: !443, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1713, file: !1714, line: 413, baseType: !443, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1713, file: !1714, line: 414, baseType: !443, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1713, file: !1714, line: 415, baseType: !443, size: 32, offset: 96)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1713, file: !1714, line: 416, baseType: !443, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1713, file: !1714, line: 417, baseType: !443, size: 32, offset: 160)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1713, file: !1714, line: 418, baseType: !442, size: 8, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1713, file: !1714, line: 419, baseType: !442, size: 8, offset: 200)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1713, file: !1714, line: 420, baseType: !1725, size: 8, offset: 208)
!1725 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1713, file: !1714, line: 421, baseType: !1725, size: 8, offset: 216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1713, file: !1714, line: 422, baseType: !1725, size: 8, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1713, file: !1714, line: 423, baseType: !1725, size: 8, offset: 232)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1713, file: !1714, line: 424, baseType: !1725, size: 8, offset: 240)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1713, file: !1714, line: 425, baseType: !1725, size: 8, offset: 248)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1713, file: !1714, line: 426, baseType: !1725, size: 8, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1713, file: !1714, line: 427, baseType: !1725, size: 8, offset: 264)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1713, file: !1714, line: 428, baseType: !1725, size: 8, offset: 272)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1713, file: !1714, line: 429, baseType: !1725, size: 8, offset: 280)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1713, file: !1714, line: 430, baseType: !1725, size: 8, offset: 288)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1713, file: !1714, line: 431, baseType: !1725, size: 8, offset: 296)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1713, file: !1714, line: 432, baseType: !1725, size: 8, offset: 304)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1713, file: !1714, line: 433, baseType: !1725, size: 8, offset: 312)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1713, file: !1714, line: 434, baseType: !1725, size: 8, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1713, file: !1714, line: 435, baseType: !1725, size: 8, offset: 328)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1713, file: !1714, line: 436, baseType: !1725, size: 8, offset: 336)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1713, file: !1714, line: 437, baseType: !1725, size: 8, offset: 344)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1713, file: !1714, line: 438, baseType: !1725, size: 8, offset: 352)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1713, file: !1714, line: 439, baseType: !1725, size: 8, offset: 360)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1713, file: !1714, line: 440, baseType: !1725, size: 8, offset: 368)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1713, file: !1714, line: 441, baseType: !1725, size: 8, offset: 376)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1713, file: !1714, line: 442, baseType: !1725, size: 8, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1713, file: !1714, line: 443, baseType: !1725, size: 8, offset: 392)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1713, file: !1714, line: 444, baseType: !1725, size: 8, offset: 400)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1713, file: !1714, line: 445, baseType: !1725, size: 8, offset: 408)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1713, file: !1714, line: 446, baseType: !1725, size: 8, offset: 416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1713, file: !1714, line: 447, baseType: !1725, size: 8, offset: 424)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1713, file: !1714, line: 448, baseType: !1725, size: 8, offset: 432)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1713, file: !1714, line: 449, baseType: !1725, size: 8, offset: 440)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1713, file: !1714, line: 450, baseType: !1725, size: 8, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1713, file: !1714, line: 451, baseType: !1725, size: 8, offset: 456)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1713, file: !1714, line: 452, baseType: !1725, size: 8, offset: 464)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1713, file: !1714, line: 453, baseType: !1725, size: 8, offset: 472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1713, file: !1714, line: 454, baseType: !1725, size: 8, offset: 480)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1713, file: !1714, line: 455, baseType: !1725, size: 8, offset: 488)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1713, file: !1714, line: 456, baseType: !1725, size: 8, offset: 496)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1713, file: !1714, line: 457, baseType: !1725, size: 8, offset: 504)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1713, file: !1714, line: 458, baseType: !1725, size: 8, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1713, file: !1714, line: 459, baseType: !1725, size: 8, offset: 520)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1713, file: !1714, line: 460, baseType: !1725, size: 8, offset: 528)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1713, file: !1714, line: 461, baseType: !1725, size: 8, offset: 536)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1713, file: !1714, line: 462, baseType: !1725, size: 8, offset: 544)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1713, file: !1714, line: 463, baseType: !1725, size: 8, offset: 552)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1713, file: !1714, line: 464, baseType: !1725, size: 8, offset: 560)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1713, file: !1714, line: 465, baseType: !1725, size: 8, offset: 568)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1713, file: !1714, line: 466, baseType: !1725, size: 8, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1713, file: !1714, line: 467, baseType: !1725, size: 8, offset: 584)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1713, file: !1714, line: 468, baseType: !1725, size: 8, offset: 592)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1713, file: !1714, line: 469, baseType: !1725, size: 8, offset: 600)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1713, file: !1714, line: 470, baseType: !1725, size: 8, offset: 608)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1713, file: !1714, line: 471, baseType: !1725, size: 8, offset: 616)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1713, file: !1714, line: 472, baseType: !1725, size: 8, offset: 624)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1713, file: !1714, line: 473, baseType: !1725, size: 8, offset: 632)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1713, file: !1714, line: 474, baseType: !1725, size: 8, offset: 640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1713, file: !1714, line: 475, baseType: !1725, size: 8, offset: 648)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1713, file: !1714, line: 476, baseType: !1725, size: 8, offset: 656)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1713, file: !1714, line: 477, baseType: !1725, size: 8, offset: 664)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1713, file: !1714, line: 478, baseType: !1725, size: 8, offset: 672)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1713, file: !1714, line: 479, baseType: !1725, size: 8, offset: 680)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1713, file: !1714, line: 480, baseType: !1725, size: 8, offset: 688)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1713, file: !1714, line: 481, baseType: !1725, size: 8, offset: 696)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1713, file: !1714, line: 482, baseType: !1725, size: 8, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1713, file: !1714, line: 483, baseType: !1725, size: 8, offset: 712)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1713, file: !1714, line: 484, baseType: !1725, size: 8, offset: 720)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1713, file: !1714, line: 485, baseType: !1725, size: 8, offset: 728)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1713, file: !1714, line: 486, baseType: !1725, size: 8, offset: 736)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1713, file: !1714, line: 487, baseType: !1725, size: 8, offset: 744)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1713, file: !1714, line: 488, baseType: !1725, size: 8, offset: 752)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1713, file: !1714, line: 489, baseType: !1725, size: 8, offset: 760)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1713, file: !1714, line: 490, baseType: !1725, size: 8, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1713, file: !1714, line: 491, baseType: !1725, size: 8, offset: 776)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1713, file: !1714, line: 492, baseType: !1725, size: 8, offset: 784)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1713, file: !1714, line: 493, baseType: !1725, size: 8, offset: 792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1713, file: !1714, line: 494, baseType: !1725, size: 8, offset: 800)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1713, file: !1714, line: 495, baseType: !1725, size: 8, offset: 808)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1713, file: !1714, line: 496, baseType: !1725, size: 8, offset: 816)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1713, file: !1714, line: 497, baseType: !1725, size: 8, offset: 824)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1713, file: !1714, line: 498, baseType: !1725, size: 8, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1713, file: !1714, line: 499, baseType: !1725, size: 8, offset: 840)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1713, file: !1714, line: 500, baseType: !1725, size: 8, offset: 848)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1713, file: !1714, line: 501, baseType: !1725, size: 8, offset: 856)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1713, file: !1714, line: 502, baseType: !1725, size: 8, offset: 864)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1713, file: !1714, line: 503, baseType: !1725, size: 8, offset: 872)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1713, file: !1714, line: 504, baseType: !1725, size: 8, offset: 880)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1713, file: !1714, line: 505, baseType: !1725, size: 8, offset: 888)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1713, file: !1714, line: 506, baseType: !1725, size: 8, offset: 896)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1713, file: !1714, line: 507, baseType: !1725, size: 8, offset: 904)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1713, file: !1714, line: 508, baseType: !1725, size: 8, offset: 912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1713, file: !1714, line: 509, baseType: !1725, size: 8, offset: 920)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1713, file: !1714, line: 510, baseType: !1725, size: 8, offset: 928)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1713, file: !1714, line: 511, baseType: !1725, size: 8, offset: 936)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1713, file: !1714, line: 512, baseType: !1725, size: 8, offset: 944)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1713, file: !1714, line: 513, baseType: !1725, size: 8, offset: 952)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1713, file: !1714, line: 514, baseType: !1725, size: 8, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1713, file: !1714, line: 515, baseType: !1725, size: 8, offset: 968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1713, file: !1714, line: 516, baseType: !1725, size: 8, offset: 976)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1713, file: !1714, line: 517, baseType: !1725, size: 8, offset: 984)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1713, file: !1714, line: 518, baseType: !1725, size: 8, offset: 992)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1713, file: !1714, line: 519, baseType: !1725, size: 8, offset: 1000)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1713, file: !1714, line: 520, baseType: !1725, size: 8, offset: 1008)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1713, file: !1714, line: 521, baseType: !1725, size: 8, offset: 1016)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1713, file: !1714, line: 522, baseType: !1725, size: 8, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1713, file: !1714, line: 523, baseType: !1725, size: 8, offset: 1032)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1713, file: !1714, line: 524, baseType: !1725, size: 8, offset: 1040)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1713, file: !1714, line: 525, baseType: !1725, size: 8, offset: 1048)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1713, file: !1714, line: 526, baseType: !1725, size: 8, offset: 1056)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1713, file: !1714, line: 527, baseType: !1725, size: 8, offset: 1064)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1713, file: !1714, line: 528, baseType: !1725, size: 8, offset: 1072)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1713, file: !1714, line: 529, baseType: !1725, size: 8, offset: 1080)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1713, file: !1714, line: 530, baseType: !1725, size: 8, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1713, file: !1714, line: 531, baseType: !1725, size: 8, offset: 1096)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1713, file: !1714, line: 532, baseType: !1725, size: 8, offset: 1104)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1713, file: !1714, line: 533, baseType: !1725, size: 8, offset: 1112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1713, file: !1714, line: 534, baseType: !1725, size: 8, offset: 1120)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1713, file: !1714, line: 535, baseType: !1725, size: 8, offset: 1128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1713, file: !1714, line: 536, baseType: !1725, size: 8, offset: 1136)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1713, file: !1714, line: 537, baseType: !1725, size: 8, offset: 1144)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1713, file: !1714, line: 538, baseType: !1725, size: 8, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1713, file: !1714, line: 539, baseType: !1725, size: 8, offset: 1160)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1713, file: !1714, line: 540, baseType: !1725, size: 8, offset: 1168)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1713, file: !1714, line: 541, baseType: !1725, size: 8, offset: 1176)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1713, file: !1714, line: 542, baseType: !1725, size: 8, offset: 1184)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1713, file: !1714, line: 543, baseType: !1725, size: 8, offset: 1192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1713, file: !1714, line: 544, baseType: !1725, size: 8, offset: 1200)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1713, file: !1714, line: 545, baseType: !1725, size: 8, offset: 1208)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1713, file: !1714, line: 546, baseType: !1725, size: 8, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1713, file: !1714, line: 547, baseType: !1725, size: 8, offset: 1224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1713, file: !1714, line: 548, baseType: !1725, size: 8, offset: 1232)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1713, file: !1714, line: 549, baseType: !1725, size: 8, offset: 1240)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1713, file: !1714, line: 550, baseType: !1725, size: 8, offset: 1248)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1713, file: !1714, line: 551, baseType: !1725, size: 8, offset: 1256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1713, file: !1714, line: 552, baseType: !1725, size: 8, offset: 1264)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1713, file: !1714, line: 553, baseType: !1725, size: 8, offset: 1272)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1713, file: !1714, line: 554, baseType: !1725, size: 8, offset: 1280)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1713, file: !1714, line: 555, baseType: !1725, size: 8, offset: 1288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1713, file: !1714, line: 556, baseType: !1725, size: 8, offset: 1296)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1713, file: !1714, line: 557, baseType: !1725, size: 8, offset: 1304)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1713, file: !1714, line: 558, baseType: !1725, size: 8, offset: 1312)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1713, file: !1714, line: 559, baseType: !1725, size: 8, offset: 1320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1713, file: !1714, line: 560, baseType: !1725, size: 8, offset: 1328)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1713, file: !1714, line: 561, baseType: !1725, size: 8, offset: 1336)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1713, file: !1714, line: 562, baseType: !1725, size: 8, offset: 1344)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1713, file: !1714, line: 563, baseType: !1725, size: 8, offset: 1352)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1713, file: !1714, line: 564, baseType: !1725, size: 8, offset: 1360)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1713, file: !1714, line: 565, baseType: !1725, size: 8, offset: 1368)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1713, file: !1714, line: 566, baseType: !1725, size: 8, offset: 1376)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1713, file: !1714, line: 567, baseType: !1725, size: 8, offset: 1384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1713, file: !1714, line: 568, baseType: !1725, size: 8, offset: 1392)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1713, file: !1714, line: 569, baseType: !1725, size: 8, offset: 1400)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1713, file: !1714, line: 570, baseType: !1725, size: 8, offset: 1408)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1713, file: !1714, line: 571, baseType: !1725, size: 8, offset: 1416)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1713, file: !1714, line: 572, baseType: !1725, size: 8, offset: 1424)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1713, file: !1714, line: 573, baseType: !1725, size: 8, offset: 1432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1713, file: !1714, line: 574, baseType: !1725, size: 8, offset: 1440)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !478, file: !135, line: 3405, baseType: !1881, size: 384)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1881, file: !135, line: 3353, baseType: !514, size: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1881, file: !135, line: 3356, baseType: !1885, size: 192, offset: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1714, line: 578, size: 192, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1885, file: !1714, line: 580, baseType: !443, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1885, file: !1714, line: 581, baseType: !443, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1885, file: !1714, line: 582, baseType: !443, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1885, file: !1714, line: 583, baseType: !443, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1885, file: !1714, line: 584, baseType: !442, size: 8, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1885, file: !1714, line: 585, baseType: !442, size: 8, offset: 136)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1885, file: !1714, line: 586, baseType: !442, size: 8, offset: 144)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1885, file: !1714, line: 587, baseType: !442, size: 8, offset: 152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1885, file: !1714, line: 588, baseType: !442, size: 8, offset: 160)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1885, file: !1714, line: 589, baseType: !442, size: 8, offset: 168)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1885, file: !1714, line: 590, baseType: !442, size: 8, offset: 176)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !472, file: !385, line: 183, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !385, line: 314, size: 768, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1913, !1914, !1915, !1916, !1918, !1919, !1920}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1900, file: !385, line: 316, baseType: !1012, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1900, file: !385, line: 317, baseType: !471, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1900, file: !385, line: 318, baseType: !471, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1900, file: !385, line: 319, baseType: !1899, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1900, file: !385, line: 320, baseType: !1899, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1900, file: !385, line: 321, baseType: !1899, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1900, file: !385, line: 322, baseType: !1899, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1900, file: !385, line: 323, baseType: !800, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1900, file: !385, line: 324, baseType: !447, size: 64, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1900, file: !385, line: 327, baseType: !1912, size: 32, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !385, line: 312, baseType: !384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1900, file: !385, line: 330, baseType: !7, size: 32, offset: 608)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1900, file: !385, line: 334, baseType: !443, size: 32, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1900, file: !385, line: 336, baseType: !443, size: 32, offset: 672)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1900, file: !385, line: 338, baseType: !1917, size: 16, offset: 704)
!1917 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1900, file: !385, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1900, file: !385, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1900, file: !385, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !472, file: !385, line: 184, baseType: !1899, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !385, line: 185, baseType: !471, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !472, file: !385, line: 186, baseType: !471, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !472, file: !385, line: 188, baseType: !471, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !472, file: !385, line: 190, baseType: !471, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !472, file: !385, line: 192, baseType: !471, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !472, file: !385, line: 194, baseType: !471, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !472, file: !385, line: 196, baseType: !471, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !472, file: !385, line: 197, baseType: !471, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !472, file: !385, line: 198, baseType: !471, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !472, file: !385, line: 199, baseType: !471, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !472, file: !385, line: 202, baseType: !471, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !472, file: !385, line: 204, baseType: !471, size: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !472, file: !385, line: 207, baseType: !1307, size: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !472, file: !385, line: 209, baseType: !447, size: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !472, file: !385, line: 214, baseType: !1937, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1224, line: 177, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1224, line: 177, size: 128, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1939, file: !1224, line: 177, baseType: !1942, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1224, line: 176, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1224, line: 176, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1943, file: !1224, line: 176, baseType: !7, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1943, file: !1224, line: 176, baseType: !7, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1943, file: !1224, line: 176, baseType: !1948, size: 64, offset: 64)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 64, elements: !574)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1224, line: 174, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !1224, line: 173, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !472, file: !385, line: 216, baseType: !1953, size: 320, offset: 1152)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !385, line: 88, size: 320, elements: !1954)
!1954 = !{!1955, !1980, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1953, file: !385, line: 90, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !408, line: 540, size: 512, elements: !1958)
!1958 = !{!1959, !1972, !1973, !1975, !1976, !1977, !1978, !1979}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !1957, file: !408, line: 543, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !408, line: 502, size: 960, elements: !1962)
!1962 = !{!1963, !1971}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !1961, file: !408, line: 505, baseType: !1964, size: 896)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 896, elements: !1969)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !408, line: 473, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !1965, file: !408, line: 476, baseType: !835, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1965, file: !408, line: 479, baseType: !7, size: 32, offset: 64)
!1969 = !{!1970}
!1970 = !DISubrange(count: 7)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !1961, file: !408, line: 509, baseType: !475, size: 64, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !1957, file: !408, line: 547, baseType: !1960, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !1957, file: !408, line: 550, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !408, line: 470, baseType: !450)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !1957, file: !408, line: 553, baseType: !1307, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1957, file: !408, line: 556, baseType: !448, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !1957, file: !408, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !1957, file: !408, line: 562, baseType: !1307, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !1957, file: !408, line: 565, baseType: !1307, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1953, file: !385, line: 92, baseType: !1981, size: 192, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !385, line: 57, size: 192, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1981, file: !385, line: 60, baseType: !531, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1981, file: !385, line: 63, baseType: !443, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1981, file: !385, line: 65, baseType: !443, size: 32, offset: 96)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1981, file: !385, line: 67, baseType: !443, size: 32, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1981, file: !385, line: 69, baseType: !443, size: 32, offset: 160)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1953, file: !385, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1953, file: !385, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1953, file: !385, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1953, file: !385, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1953, file: !385, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1953, file: !385, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1953, file: !385, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1953, file: !385, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !472, file: !385, line: 217, baseType: !1997, size: 320, offset: 1472)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !385, line: 126, size: 320, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1997, file: !385, line: 128, baseType: !531, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1997, file: !385, line: 130, baseType: !531, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1997, file: !385, line: 134, baseType: !471, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1997, file: !385, line: 137, baseType: !443, size: 32, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1997, file: !385, line: 138, baseType: !443, size: 32, offset: 224)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1997, file: !385, line: 141, baseType: !443, size: 32, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1997, file: !385, line: 144, baseType: !442, size: 8, offset: 288)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !472, file: !385, line: 218, baseType: !2007, size: 32, offset: 1792)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !385, line: 150, size: 32, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2007, file: !385, line: 151, baseType: !7, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !472, file: !385, line: 219, baseType: !2011, size: 192, offset: 1856)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !385, line: 171, size: 192, elements: !2012)
!2012 = !{!2013, !2034, !2035}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2011, file: !385, line: 173, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, size: 128, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2016, file: !385, line: 169, baseType: !2019, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, size: 128, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2020, file: !385, line: 168, baseType: !7, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2020, file: !385, line: 168, baseType: !7, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2020, file: !385, line: 168, baseType: !2025, size: 64, offset: 64)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2026, size: 64, elements: !574)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !385, line: 167, baseType: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !385, line: 156, size: 192, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2028, file: !385, line: 159, baseType: !475, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2028, file: !385, line: 161, baseType: !475, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2028, file: !385, line: 163, baseType: !442, size: 8, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2028, file: !385, line: 165, baseType: !442, size: 8, offset: 136)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2011, file: !385, line: 174, baseType: !1448, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2011, file: !385, line: 175, baseType: !1448, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !472, file: !385, line: 220, baseType: !2037, size: 256, offset: 2048)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !385, line: 74, size: 256, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2037, file: !385, line: 76, baseType: !531, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2037, file: !385, line: 77, baseType: !531, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2037, file: !385, line: 78, baseType: !475, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2037, file: !385, line: 79, baseType: !442, size: 8, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2037, file: !385, line: 80, baseType: !442, size: 8, offset: 200)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2037, file: !385, line: 82, baseType: !442, size: 8, offset: 208)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !385, line: 223, baseType: !1012, size: 64, offset: 2304)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !472, file: !385, line: 225, baseType: !443, size: 32, offset: 2368)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !472, file: !385, line: 227, baseType: !443, size: 32, offset: 2400)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !472, file: !385, line: 231, baseType: !443, size: 32, offset: 2432)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !472, file: !385, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !472, file: !385, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !472, file: !385, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !472, file: !385, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !472, file: !385, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !472, file: !385, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !472, file: !385, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !472, file: !385, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !472, file: !385, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !472, file: !385, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2060, line: 267, baseType: !2061)
!2060 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !2062, line: 206, baseType: !531)
!2062 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2063 = !{!0}
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcov_ctr_summary", file: !2065, line: 391, size: 256, elements: !2066)
!2065 = !DIFile(filename: "./gcov-io.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2066 = !{!2067, !2069, !2070, !2071, !2072}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2064, file: !2065, line: 393, baseType: !2068, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_unsigned_t", file: !2065, line: 205, baseType: !7)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !2064, file: !2065, line: 394, baseType: !2068, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sum_all", scope: !2064, file: !2065, line: 395, baseType: !1012, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "run_max", scope: !2064, file: !2065, line: 396, baseType: !1012, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sum_max", scope: !2064, file: !2065, line: 397, baseType: !1012, size: 64, offset: 192)
!2073 = !{i32 2, !"Dwarf Version", i32 4}
!2074 = !{i32 2, !"Debug Info Version", i32 3}
!2075 = !{i32 1, !"wchar_size", i32 4}
!2076 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2077 = distinct !DISubprogram(name: "vprintf", scope: !2078, file: !2078, line: 39, type: !2079, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!443, !2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !448)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2083, file: !3, baseType: !7, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2083, file: !3, baseType: !7, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2083, file: !3, baseType: !447, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2083, file: !3, baseType: !447, size: 64, offset: 128)
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2077, file: !2078, line: 39, type: !2081)
!2091 = !DILocalVariable(name: "__arg", arg: 2, scope: !2077, file: !2078, line: 39, type: !2082)
!2092 = !DILocation(line: 0, scope: !2077)
!2093 = !DILocation(line: 41, column: 20, scope: !2077)
!2094 = !DILocation(line: 41, column: 10, scope: !2077)
!2095 = !DILocation(line: 41, column: 3, scope: !2077)
!2096 = distinct !DISubprogram(name: "getchar", scope: !2078, file: !2078, line: 47, type: !2097, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!443}
!2099 = !{}
!2100 = !DILocation(line: 49, column: 16, scope: !2096)
!2101 = !DILocation(line: 49, column: 10, scope: !2096)
!2102 = !DILocation(line: 49, column: 3, scope: !2096)
!2103 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2078, file: !2078, line: 56, type: !2104, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!443, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2108, line: 7, baseType: !2109)
!2108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2110, line: 49, size: 1728, elements: !2111)
!2110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2127, !2129, !2130, !2131, !2133, !2134, !2135, !2136, !2139, !2141, !2144, !2147, !2148, !2149, !2150, !2151}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2109, file: !2110, line: 51, baseType: !443, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2109, file: !2110, line: 54, baseType: !445, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2109, file: !2110, line: 55, baseType: !445, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2109, file: !2110, line: 56, baseType: !445, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2109, file: !2110, line: 57, baseType: !445, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2109, file: !2110, line: 58, baseType: !445, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2109, file: !2110, line: 59, baseType: !445, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2109, file: !2110, line: 60, baseType: !445, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2109, file: !2110, line: 61, baseType: !445, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2109, file: !2110, line: 64, baseType: !445, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2109, file: !2110, line: 65, baseType: !445, size: 64, offset: 640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2109, file: !2110, line: 66, baseType: !445, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2109, file: !2110, line: 68, baseType: !2125, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2110, line: 36, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2109, file: !2110, line: 70, baseType: !2128, size: 64, offset: 832)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2109, file: !2110, line: 72, baseType: !443, size: 32, offset: 896)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2109, file: !2110, line: 73, baseType: !443, size: 32, offset: 928)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2109, file: !2110, line: 74, baseType: !2132, size: 64, offset: 960)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2062, line: 152, baseType: !531)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2109, file: !2110, line: 77, baseType: !1917, size: 16, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2109, file: !2110, line: 78, baseType: !1725, size: 8, offset: 1040)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2109, file: !2110, line: 79, baseType: !573, size: 8, offset: 1048)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2109, file: !2110, line: 81, baseType: !2137, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2110, line: 43, baseType: null)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2109, file: !2110, line: 89, baseType: !2140, size: 64, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2062, line: 153, baseType: !531)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2109, file: !2110, line: 91, baseType: !2142, size: 64, offset: 1216)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2110, line: 37, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2109, file: !2110, line: 92, baseType: !2145, size: 64, offset: 1280)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2110, line: 38, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2109, file: !2110, line: 93, baseType: !2128, size: 64, offset: 1344)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2109, file: !2110, line: 94, baseType: !447, size: 64, offset: 1408)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2109, file: !2110, line: 95, baseType: !946, size: 64, offset: 1472)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2109, file: !2110, line: 96, baseType: !443, size: 32, offset: 1536)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2109, file: !2110, line: 98, baseType: !2152, size: 160, offset: 1568)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 160, elements: !2153)
!2153 = !{!2154}
!2154 = !DISubrange(count: 20)
!2155 = !{!2156}
!2156 = !DILocalVariable(name: "__fp", arg: 1, scope: !2103, file: !2078, line: 56, type: !2106)
!2157 = !DILocation(line: 0, scope: !2103)
!2158 = !DILocation(line: 58, column: 10, scope: !2103)
!2159 = !DILocation(line: 58, column: 3, scope: !2103)
!2160 = distinct !DISubprogram(name: "getc_unlocked", scope: !2078, file: !2078, line: 66, type: !2104, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "__fp", arg: 1, scope: !2160, file: !2078, line: 66, type: !2106)
!2163 = !DILocation(line: 0, scope: !2160)
!2164 = !DILocation(line: 68, column: 10, scope: !2160)
!2165 = !DILocation(line: 68, column: 3, scope: !2160)
!2166 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2078, file: !2078, line: 73, type: !2097, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2167 = !DILocation(line: 75, column: 10, scope: !2166)
!2168 = !DILocation(line: 75, column: 3, scope: !2166)
!2169 = distinct !DISubprogram(name: "putchar", scope: !2078, file: !2078, line: 82, type: !2170, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!443, !443}
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "__c", arg: 1, scope: !2169, file: !2078, line: 82, type: !443)
!2174 = !DILocation(line: 0, scope: !2169)
!2175 = !DILocation(line: 84, column: 21, scope: !2169)
!2176 = !DILocation(line: 84, column: 10, scope: !2169)
!2177 = !DILocation(line: 84, column: 3, scope: !2169)
!2178 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2078, file: !2078, line: 91, type: !2179, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!443, !443, !2106}
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "__c", arg: 1, scope: !2178, file: !2078, line: 91, type: !443)
!2183 = !DILocalVariable(name: "__stream", arg: 2, scope: !2178, file: !2078, line: 91, type: !2106)
!2184 = !DILocation(line: 0, scope: !2178)
!2185 = !DILocation(line: 93, column: 10, scope: !2178)
!2186 = !DILocation(line: 93, column: 3, scope: !2178)
!2187 = distinct !DISubprogram(name: "putc_unlocked", scope: !2078, file: !2078, line: 101, type: !2179, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189, !2190}
!2189 = !DILocalVariable(name: "__c", arg: 1, scope: !2187, file: !2078, line: 101, type: !443)
!2190 = !DILocalVariable(name: "__stream", arg: 2, scope: !2187, file: !2078, line: 101, type: !2106)
!2191 = !DILocation(line: 0, scope: !2187)
!2192 = !DILocation(line: 103, column: 10, scope: !2187)
!2193 = !DILocation(line: 103, column: 3, scope: !2187)
!2194 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2078, file: !2078, line: 108, type: !2170, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "__c", arg: 1, scope: !2194, file: !2078, line: 108, type: !443)
!2197 = !DILocation(line: 0, scope: !2194)
!2198 = !DILocation(line: 110, column: 10, scope: !2194)
!2199 = !DILocation(line: 110, column: 3, scope: !2194)
!2200 = distinct !DISubprogram(name: "getline", scope: !2078, file: !2078, line: 118, type: !2201, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !444, !2204, !2106}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2062, line: 193, baseType: !531)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2200, file: !2078, line: 118, type: !444)
!2207 = !DILocalVariable(name: "__n", arg: 2, scope: !2200, file: !2078, line: 118, type: !2204)
!2208 = !DILocalVariable(name: "__stream", arg: 3, scope: !2200, file: !2078, line: 118, type: !2106)
!2209 = !DILocation(line: 0, scope: !2200)
!2210 = !DILocation(line: 120, column: 10, scope: !2200)
!2211 = !DILocation(line: 120, column: 3, scope: !2200)
!2212 = distinct !DISubprogram(name: "feof_unlocked", scope: !2078, file: !2078, line: 128, type: !2104, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "__stream", arg: 1, scope: !2212, file: !2078, line: 128, type: !2106)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 130, column: 10, scope: !2212)
!2217 = !DILocation(line: 130, column: 3, scope: !2212)
!2218 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2078, file: !2078, line: 135, type: !2104, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "__stream", arg: 1, scope: !2218, file: !2078, line: 135, type: !2106)
!2221 = !DILocation(line: 0, scope: !2218)
!2222 = !DILocation(line: 137, column: 10, scope: !2218)
!2223 = !DILocation(line: 137, column: 3, scope: !2218)
!2224 = distinct !DISubprogram(name: "tolower", scope: !2225, file: !2225, line: 207, type: !2170, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2225 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "__c", arg: 1, scope: !2224, file: !2225, line: 207, type: !443)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 209, column: 22, scope: !2224)
!2230 = !DILocation(line: 209, column: 39, scope: !2224)
!2231 = !DILocation(line: 209, column: 38, scope: !2224)
!2232 = !DILocation(line: 209, column: 37, scope: !2224)
!2233 = !DILocation(line: 209, column: 10, scope: !2224)
!2234 = !DILocation(line: 209, column: 3, scope: !2224)
!2235 = distinct !DISubprogram(name: "toupper", scope: !2225, file: !2225, line: 213, type: !2170, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2236 = !{!2237}
!2237 = !DILocalVariable(name: "__c", arg: 1, scope: !2235, file: !2225, line: 213, type: !443)
!2238 = !DILocation(line: 0, scope: !2235)
!2239 = !DILocation(line: 215, column: 22, scope: !2235)
!2240 = !DILocation(line: 215, column: 39, scope: !2235)
!2241 = !DILocation(line: 215, column: 38, scope: !2235)
!2242 = !DILocation(line: 215, column: 37, scope: !2235)
!2243 = !DILocation(line: 215, column: 10, scope: !2235)
!2244 = !DILocation(line: 215, column: 3, scope: !2235)
!2245 = distinct !DISubprogram(name: "atoi", scope: !2246, file: !2246, line: 361, type: !2247, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2246 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!443, !448}
!2249 = !{!2250}
!2250 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2245, file: !2246, line: 361, type: !448)
!2251 = !DILocation(line: 0, scope: !2245)
!2252 = !DILocation(line: 363, column: 16, scope: !2245)
!2253 = !DILocation(line: 363, column: 10, scope: !2245)
!2254 = !DILocation(line: 363, column: 3, scope: !2245)
!2255 = distinct !DISubprogram(name: "atol", scope: !2246, file: !2246, line: 366, type: !2256, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!531, !448}
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2255, file: !2246, line: 366, type: !448)
!2260 = !DILocation(line: 0, scope: !2255)
!2261 = !DILocation(line: 368, column: 10, scope: !2255)
!2262 = !DILocation(line: 368, column: 3, scope: !2255)
!2263 = distinct !DISubprogram(name: "atoll", scope: !2246, file: !2246, line: 373, type: !2264, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !448}
!2266 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2263, file: !2246, line: 373, type: !448)
!2269 = !DILocation(line: 0, scope: !2263)
!2270 = !DILocation(line: 375, column: 10, scope: !2263)
!2271 = !DILocation(line: 375, column: 3, scope: !2263)
!2272 = distinct !DISubprogram(name: "bsearch", scope: !2273, file: !2273, line: 20, type: !2274, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!447, !1107, !1107, !946, !946, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2246, line: 808, baseType: !1320)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2278 = !DILocalVariable(name: "__key", arg: 1, scope: !2272, file: !2273, line: 20, type: !1107)
!2279 = !DILocalVariable(name: "__base", arg: 2, scope: !2272, file: !2273, line: 20, type: !1107)
!2280 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2272, file: !2273, line: 20, type: !946)
!2281 = !DILocalVariable(name: "__size", arg: 4, scope: !2272, file: !2273, line: 20, type: !946)
!2282 = !DILocalVariable(name: "__compar", arg: 5, scope: !2272, file: !2273, line: 21, type: !2276)
!2283 = !DILocalVariable(name: "__l", scope: !2272, file: !2273, line: 23, type: !946)
!2284 = !DILocalVariable(name: "__u", scope: !2272, file: !2273, line: 23, type: !946)
!2285 = !DILocalVariable(name: "__idx", scope: !2272, file: !2273, line: 23, type: !946)
!2286 = !DILocalVariable(name: "__p", scope: !2272, file: !2273, line: 24, type: !1107)
!2287 = !DILocalVariable(name: "__comparison", scope: !2272, file: !2273, line: 25, type: !443)
!2288 = !DILocation(line: 0, scope: !2272)
!2289 = !DILocation(line: 29, column: 3, scope: !2272)
!2290 = !DILocation(line: 27, column: 7, scope: !2272)
!2291 = !DILocation(line: 29, column: 14, scope: !2272)
!2292 = !DILocation(line: 31, column: 20, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2272, file: !2273, line: 30, column: 5)
!2294 = !DILocation(line: 31, column: 27, scope: !2293)
!2295 = !DILocation(line: 32, column: 56, scope: !2293)
!2296 = !DILocation(line: 32, column: 47, scope: !2293)
!2297 = !DILocation(line: 33, column: 22, scope: !2293)
!2298 = !DILocation(line: 34, column: 24, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !2273, line: 34, column: 11)
!2300 = !DILocation(line: 34, column: 11, scope: !2293)
!2301 = !DILocation(line: 36, column: 29, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !2273, line: 36, column: 16)
!2303 = !DILocation(line: 36, column: 16, scope: !2299)
!2304 = !DILocation(line: 37, column: 14, scope: !2302)
!2305 = distinct !{!2305, !2289, !2306}
!2306 = !DILocation(line: 40, column: 5, scope: !2272)
!2307 = !DILocation(line: 43, column: 1, scope: !2272)
!2308 = distinct !DISubprogram(name: "atof", scope: !2309, file: !2309, line: 25, type: !2310, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2312, !448}
!2312 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2308, file: !2309, line: 25, type: !448)
!2315 = !DILocation(line: 0, scope: !2308)
!2316 = !DILocation(line: 27, column: 10, scope: !2308)
!2317 = !DILocation(line: 27, column: 3, scope: !2308)
!2318 = distinct !DISubprogram(name: "strtoimax", scope: !2319, file: !2319, line: 324, type: !2320, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2319 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !2081, !2325, !443}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2323, line: 101, baseType: !2324)
!2323 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2062, line: 72, baseType: !531)
!2325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !444)
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "nptr", arg: 1, scope: !2318, file: !2319, line: 324, type: !2081)
!2328 = !DILocalVariable(name: "endptr", arg: 2, scope: !2318, file: !2319, line: 324, type: !2325)
!2329 = !DILocalVariable(name: "base", arg: 3, scope: !2318, file: !2319, line: 324, type: !443)
!2330 = !DILocation(line: 0, scope: !2318)
!2331 = !DILocation(line: 327, column: 10, scope: !2318)
!2332 = !DILocation(line: 327, column: 3, scope: !2318)
!2333 = distinct !DISubprogram(name: "strtoumax", scope: !2319, file: !2319, line: 336, type: !2334, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2336, !2081, !2325, !443}
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2323, line: 102, baseType: !2337)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2062, line: 73, baseType: !529)
!2338 = !{!2339, !2340, !2341}
!2339 = !DILocalVariable(name: "nptr", arg: 1, scope: !2333, file: !2319, line: 336, type: !2081)
!2340 = !DILocalVariable(name: "endptr", arg: 2, scope: !2333, file: !2319, line: 336, type: !2325)
!2341 = !DILocalVariable(name: "base", arg: 3, scope: !2333, file: !2319, line: 336, type: !443)
!2342 = !DILocation(line: 0, scope: !2333)
!2343 = !DILocation(line: 339, column: 10, scope: !2333)
!2344 = !DILocation(line: 339, column: 3, scope: !2333)
!2345 = distinct !DISubprogram(name: "wcstoimax", scope: !2319, file: !2319, line: 348, type: !2346, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!2322, !2348, !2352, !443}
!2348 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2349)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2319, line: 34, baseType: !443)
!2352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2355 = !{!2356, !2357, !2358}
!2356 = !DILocalVariable(name: "nptr", arg: 1, scope: !2345, file: !2319, line: 348, type: !2348)
!2357 = !DILocalVariable(name: "endptr", arg: 2, scope: !2345, file: !2319, line: 348, type: !2352)
!2358 = !DILocalVariable(name: "base", arg: 3, scope: !2345, file: !2319, line: 348, type: !443)
!2359 = !DILocation(line: 0, scope: !2345)
!2360 = !DILocation(line: 351, column: 10, scope: !2345)
!2361 = !DILocation(line: 351, column: 3, scope: !2345)
!2362 = distinct !DISubprogram(name: "wcstoumax", scope: !2319, file: !2319, line: 362, type: !2363, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2336, !2348, !2352, !443}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "nptr", arg: 1, scope: !2362, file: !2319, line: 362, type: !2348)
!2367 = !DILocalVariable(name: "endptr", arg: 2, scope: !2362, file: !2319, line: 362, type: !2352)
!2368 = !DILocalVariable(name: "base", arg: 3, scope: !2362, file: !2319, line: 362, type: !443)
!2369 = !DILocation(line: 0, scope: !2362)
!2370 = !DILocation(line: 365, column: 10, scope: !2362)
!2371 = !DILocation(line: 365, column: 3, scope: !2362)
!2372 = distinct !DISubprogram(name: "stat", scope: !2373, file: !2373, line: 453, type: !2374, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!443, !448, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2378, line: 46, size: 1152, elements: !2379)
!2378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2379 = !{!2380, !2382, !2384, !2386, !2388, !2390, !2392, !2393, !2394, !2395, !2397, !2399, !2407, !2408, !2409}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2377, file: !2378, line: 48, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2062, line: 145, baseType: !529)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2377, file: !2378, line: 53, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2062, line: 148, baseType: !529)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2377, file: !2378, line: 61, baseType: !2385, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2062, line: 151, baseType: !529)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2377, file: !2378, line: 62, baseType: !2387, size: 32, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2062, line: 150, baseType: !7)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2377, file: !2378, line: 64, baseType: !2389, size: 32, offset: 224)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2062, line: 146, baseType: !7)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2377, file: !2378, line: 65, baseType: !2391, size: 32, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2062, line: 147, baseType: !7)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2377, file: !2378, line: 67, baseType: !443, size: 32, offset: 288)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2377, file: !2378, line: 69, baseType: !2381, size: 64, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2377, file: !2378, line: 74, baseType: !2132, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2377, file: !2378, line: 78, baseType: !2396, size: 64, offset: 448)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2062, line: 174, baseType: !531)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2377, file: !2378, line: 80, baseType: !2398, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2062, line: 179, baseType: !531)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2377, file: !2378, line: 91, baseType: !2400, size: 128, offset: 576)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2401, line: 10, size: 128, elements: !2402)
!2401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2402 = !{!2403, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2400, file: !2401, line: 12, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2062, line: 160, baseType: !531)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2400, file: !2401, line: 16, baseType: !2406, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2062, line: 196, baseType: !531)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2377, file: !2378, line: 92, baseType: !2400, size: 128, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2377, file: !2378, line: 93, baseType: !2400, size: 128, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2377, file: !2378, line: 106, baseType: !2410, size: 192, offset: 960)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2406, size: 192, elements: !549)
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "__path", arg: 1, scope: !2372, file: !2373, line: 453, type: !448)
!2413 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2372, file: !2373, line: 453, type: !2376)
!2414 = !DILocation(line: 0, scope: !2372)
!2415 = !DILocation(line: 455, column: 10, scope: !2372)
!2416 = !DILocation(line: 455, column: 3, scope: !2372)
!2417 = distinct !DISubprogram(name: "lstat", scope: !2373, file: !2373, line: 460, type: !2374, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "__path", arg: 1, scope: !2417, file: !2373, line: 460, type: !448)
!2420 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2417, file: !2373, line: 460, type: !2376)
!2421 = !DILocation(line: 0, scope: !2417)
!2422 = !DILocation(line: 462, column: 10, scope: !2417)
!2423 = !DILocation(line: 462, column: 3, scope: !2417)
!2424 = distinct !DISubprogram(name: "fstat", scope: !2373, file: !2373, line: 467, type: !2425, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!443, !443, !2376}
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "__fd", arg: 1, scope: !2424, file: !2373, line: 467, type: !443)
!2429 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2424, file: !2373, line: 467, type: !2376)
!2430 = !DILocation(line: 0, scope: !2424)
!2431 = !DILocation(line: 469, column: 10, scope: !2424)
!2432 = !DILocation(line: 469, column: 3, scope: !2424)
!2433 = distinct !DISubprogram(name: "fstatat", scope: !2373, file: !2373, line: 474, type: !2434, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!443, !443, !448, !2376, !443}
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DILocalVariable(name: "__fd", arg: 1, scope: !2433, file: !2373, line: 474, type: !443)
!2438 = !DILocalVariable(name: "__filename", arg: 2, scope: !2433, file: !2373, line: 474, type: !448)
!2439 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2433, file: !2373, line: 474, type: !2376)
!2440 = !DILocalVariable(name: "__flag", arg: 4, scope: !2433, file: !2373, line: 474, type: !443)
!2441 = !DILocation(line: 0, scope: !2433)
!2442 = !DILocation(line: 477, column: 10, scope: !2433)
!2443 = !DILocation(line: 477, column: 3, scope: !2433)
!2444 = distinct !DISubprogram(name: "mknod", scope: !2373, file: !2373, line: 483, type: !2445, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!443, !448, !2387, !2381}
!2447 = !{!2448, !2449, !2450}
!2448 = !DILocalVariable(name: "__path", arg: 1, scope: !2444, file: !2373, line: 483, type: !448)
!2449 = !DILocalVariable(name: "__mode", arg: 2, scope: !2444, file: !2373, line: 483, type: !2387)
!2450 = !DILocalVariable(name: "__dev", arg: 3, scope: !2444, file: !2373, line: 483, type: !2381)
!2451 = !DILocation(line: 0, scope: !2444)
!2452 = !DILocation(line: 485, column: 10, scope: !2444)
!2453 = !DILocation(line: 485, column: 3, scope: !2444)
!2454 = distinct !DISubprogram(name: "mknodat", scope: !2373, file: !2373, line: 491, type: !2455, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!443, !443, !448, !2387, !2381}
!2457 = !{!2458, !2459, !2460, !2461}
!2458 = !DILocalVariable(name: "__fd", arg: 1, scope: !2454, file: !2373, line: 491, type: !443)
!2459 = !DILocalVariable(name: "__path", arg: 2, scope: !2454, file: !2373, line: 491, type: !448)
!2460 = !DILocalVariable(name: "__mode", arg: 3, scope: !2454, file: !2373, line: 491, type: !2387)
!2461 = !DILocalVariable(name: "__dev", arg: 4, scope: !2454, file: !2373, line: 491, type: !2381)
!2462 = !DILocation(line: 0, scope: !2454)
!2463 = !DILocation(line: 494, column: 10, scope: !2454)
!2464 = !DILocation(line: 494, column: 3, scope: !2454)
!2465 = distinct !DISubprogram(name: "stat64", scope: !2373, file: !2373, line: 502, type: !2466, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!443, !448, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2378, line: 119, size: 1152, elements: !2470)
!2470 = !{!2471, !2472, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2484, !2485, !2486, !2487}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2469, file: !2378, line: 121, baseType: !2381, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2469, file: !2378, line: 123, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2062, line: 149, baseType: !529)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2469, file: !2378, line: 124, baseType: !2385, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2469, file: !2378, line: 125, baseType: !2387, size: 32, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2469, file: !2378, line: 132, baseType: !2389, size: 32, offset: 224)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2469, file: !2378, line: 133, baseType: !2391, size: 32, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2469, file: !2378, line: 135, baseType: !443, size: 32, offset: 288)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2469, file: !2378, line: 136, baseType: !2381, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2469, file: !2378, line: 137, baseType: !2132, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2469, file: !2378, line: 143, baseType: !2396, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2469, file: !2378, line: 144, baseType: !2483, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2062, line: 180, baseType: !531)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2469, file: !2378, line: 152, baseType: !2400, size: 128, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2469, file: !2378, line: 153, baseType: !2400, size: 128, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2469, file: !2378, line: 154, baseType: !2400, size: 128, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2469, file: !2378, line: 164, baseType: !2410, size: 192, offset: 960)
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "__path", arg: 1, scope: !2465, file: !2373, line: 502, type: !448)
!2490 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2465, file: !2373, line: 502, type: !2468)
!2491 = !DILocation(line: 0, scope: !2465)
!2492 = !DILocation(line: 504, column: 10, scope: !2465)
!2493 = !DILocation(line: 504, column: 3, scope: !2465)
!2494 = distinct !DISubprogram(name: "lstat64", scope: !2373, file: !2373, line: 509, type: !2466, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2495)
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "__path", arg: 1, scope: !2494, file: !2373, line: 509, type: !448)
!2497 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2494, file: !2373, line: 509, type: !2468)
!2498 = !DILocation(line: 0, scope: !2494)
!2499 = !DILocation(line: 511, column: 10, scope: !2494)
!2500 = !DILocation(line: 511, column: 3, scope: !2494)
!2501 = distinct !DISubprogram(name: "fstat64", scope: !2373, file: !2373, line: 516, type: !2502, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!443, !443, !2468}
!2504 = !{!2505, !2506}
!2505 = !DILocalVariable(name: "__fd", arg: 1, scope: !2501, file: !2373, line: 516, type: !443)
!2506 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2501, file: !2373, line: 516, type: !2468)
!2507 = !DILocation(line: 0, scope: !2501)
!2508 = !DILocation(line: 518, column: 10, scope: !2501)
!2509 = !DILocation(line: 518, column: 3, scope: !2501)
!2510 = distinct !DISubprogram(name: "fstatat64", scope: !2373, file: !2373, line: 523, type: !2511, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!443, !443, !448, !2468, !443}
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DILocalVariable(name: "__fd", arg: 1, scope: !2510, file: !2373, line: 523, type: !443)
!2515 = !DILocalVariable(name: "__filename", arg: 2, scope: !2510, file: !2373, line: 523, type: !448)
!2516 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2510, file: !2373, line: 523, type: !2468)
!2517 = !DILocalVariable(name: "__flag", arg: 4, scope: !2510, file: !2373, line: 523, type: !443)
!2518 = !DILocation(line: 0, scope: !2510)
!2519 = !DILocation(line: 526, column: 10, scope: !2510)
!2520 = !DILocation(line: 526, column: 3, scope: !2510)
!2521 = distinct !DISubprogram(name: "lto_cgraph_encoder_new", scope: !3, file: !3, line: 53, type: !2522, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!1974}
!2524 = !{!2525}
!2525 = !DILocalVariable(name: "encoder", scope: !2521, file: !3, line: 55, type: !1974)
!2526 = !DILocation(line: 55, column: 34, scope: !2521)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 56, column: 18, scope: !2521)
!2529 = !DILocation(line: 56, column: 12, scope: !2521)
!2530 = !DILocation(line: 56, column: 16, scope: !2521)
!2531 = !DILocation(line: 57, column: 12, scope: !2521)
!2532 = !DILocation(line: 57, column: 18, scope: !2521)
!2533 = !DILocation(line: 58, column: 3, scope: !2521)
!2534 = distinct !DISubprogram(name: "lto_cgraph_encoder_delete", scope: !3, file: !3, line: 65, type: !2535, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !1974}
!2537 = !{!2538}
!2538 = !DILocalVariable(name: "encoder", arg: 1, scope: !2534, file: !3, line: 65, type: !1974)
!2539 = !DILocation(line: 0, scope: !2534)
!2540 = !DILocation(line: 67, column: 4, scope: !2534)
!2541 = !DILocation(line: 68, column: 34, scope: !2534)
!2542 = !DILocation(line: 68, column: 4, scope: !2534)
!2543 = !DILocation(line: 69, column: 10, scope: !2534)
!2544 = !DILocation(line: 69, column: 4, scope: !2534)
!2545 = !DILocation(line: 70, column: 1, scope: !2534)
!2546 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_heap_free", scope: !385, file: !385, line: 271, type: !2547, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "vec_", arg: 1, scope: !2546, file: !385, line: 271, type: !2549)
!2552 = !DILocation(line: 0, scope: !2546)
!2553 = !DILocation(line: 271, column: 1, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2546, file: !385, line: 271, column: 1)
!2555 = !DILocation(line: 271, column: 1, scope: !2546)
!2556 = distinct !DISubprogram(name: "lto_cgraph_encoder_encode", scope: !3, file: !3, line: 78, type: !2557, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!443, !1974, !471}
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "encoder", arg: 1, scope: !2556, file: !3, line: 78, type: !1974)
!2561 = !DILocalVariable(name: "node", arg: 2, scope: !2556, file: !3, line: 79, type: !471)
!2562 = !DILocalVariable(name: "ref", scope: !2556, file: !3, line: 81, type: !443)
!2563 = !DILocalVariable(name: "slot", scope: !2556, file: !3, line: 82, type: !1329)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 84, column: 41, scope: !2556)
!2566 = !DILocation(line: 84, column: 46, scope: !2556)
!2567 = !DILocation(line: 84, column: 10, scope: !2556)
!2568 = !DILocation(line: 85, column: 8, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 85, column: 7)
!2570 = !DILocation(line: 85, column: 7, scope: !2556)
!2571 = !DILocation(line: 87, column: 13, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 86, column: 5)
!2573 = !DILocation(line: 88, column: 43, scope: !2572)
!2574 = !DILocation(line: 88, column: 14, scope: !2572)
!2575 = !DILocation(line: 89, column: 24, scope: !2572)
!2576 = !DILocation(line: 89, column: 15, scope: !2572)
!2577 = !DILocation(line: 89, column: 13, scope: !2572)
!2578 = !DILocation(line: 90, column: 7, scope: !2572)
!2579 = !DILocation(line: 91, column: 5, scope: !2572)
!2580 = !DILocation(line: 93, column: 28, scope: !2569)
!2581 = !DILocation(line: 93, column: 11, scope: !2569)
!2582 = !DILocation(line: 0, scope: !2569)
!2583 = !DILocation(line: 95, column: 3, scope: !2556)
!2584 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_length", scope: !385, file: !385, line: 270, type: !2585, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!7, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "vec_", arg: 1, scope: !2584, file: !385, line: 270, type: !2587)
!2591 = !DILocation(line: 0, scope: !2584)
!2592 = !DILocation(line: 270, column: 1, scope: !2584)
!2593 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_heap_safe_push", scope: !385, file: !385, line: 271, type: !2594, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2596, !2549, !470}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "vec_", arg: 1, scope: !2593, file: !385, line: 271, type: !2549)
!2599 = !DILocalVariable(name: "obj_", arg: 2, scope: !2593, file: !385, line: 271, type: !470)
!2600 = !DILocation(line: 0, scope: !2593)
!2601 = !DILocation(line: 271, column: 1, scope: !2593)
!2602 = distinct !DISubprogram(name: "lto_cgraph_encoder_lookup", scope: !3, file: !3, line: 103, type: !2557, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "encoder", arg: 1, scope: !2602, file: !3, line: 103, type: !1974)
!2605 = !DILocalVariable(name: "node", arg: 2, scope: !2602, file: !3, line: 104, type: !471)
!2606 = !DILocalVariable(name: "slot", scope: !2602, file: !3, line: 106, type: !1329)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 106, column: 48, scope: !2602)
!2609 = !DILocation(line: 106, column: 53, scope: !2602)
!2610 = !DILocation(line: 106, column: 17, scope: !2602)
!2611 = !DILocation(line: 107, column: 11, scope: !2602)
!2612 = !DILocation(line: 107, column: 35, scope: !2602)
!2613 = !DILocation(line: 107, column: 18, scope: !2602)
!2614 = !DILocation(line: 107, column: 3, scope: !2602)
!2615 = distinct !DISubprogram(name: "lto_cgraph_encoder_deref", scope: !3, file: !3, line: 114, type: !2616, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!471, !1974, !443}
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "encoder", arg: 1, scope: !2615, file: !3, line: 114, type: !1974)
!2620 = !DILocalVariable(name: "ref", arg: 2, scope: !2615, file: !3, line: 114, type: !443)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 116, column: 11, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 116, column: 7)
!2624 = !DILocation(line: 116, column: 7, scope: !2615)
!2625 = !DILocation(line: 119, column: 10, scope: !2615)
!2626 = !DILocation(line: 119, column: 3, scope: !2615)
!2627 = !DILocation(line: 120, column: 1, scope: !2615)
!2628 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_index", scope: !385, file: !385, line: 270, type: !2629, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!470, !2587, !7}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "vec_", arg: 1, scope: !2628, file: !385, line: 270, type: !2587)
!2633 = !DILocalVariable(name: "ix_", arg: 2, scope: !2628, file: !385, line: 270, type: !7)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 270, column: 1, scope: !2628)
!2636 = distinct !DISubprogram(name: "output_cgraph", scope: !3, file: !3, line: 378, type: !2637, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !385, line: 283, baseType: !2640)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !385, line: 276, size: 192, elements: !2642)
!2642 = !{!2643, !2644, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2641, file: !385, line: 278, baseType: !1307, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2641, file: !385, line: 279, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !385, line: 272, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !385, line: 272, size: 128, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2647, file: !385, line: 272, baseType: !463, size: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2641, file: !385, line: 280, baseType: !447, size: 64, offset: 128)
!2651 = !{!2652, !2653, !2654, !2691, !2697, !2698, !2699, !2700, !2701, !2702, !2709, !2716, !2721, !2724}
!2652 = !DILocalVariable(name: "set", arg: 1, scope: !2636, file: !3, line: 378, type: !2639)
!2653 = !DILocalVariable(name: "node", scope: !2636, file: !3, line: 380, type: !471)
!2654 = !DILocalVariable(name: "ob", scope: !2636, file: !3, line: 381, type: !2655)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_output_block", file: !408, line: 614, size: 192, elements: !2657)
!2657 = !{!2658, !2659, !2677}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !2656, file: !408, line: 616, baseType: !407, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "decl_state", scope: !2656, file: !408, line: 617, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !408, line: 517, size: 1472, elements: !2662)
!2662 = !{!2663, !2675, !2676}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2661, file: !408, line: 521, baseType: !2664, size: 1344)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 1344, elements: !1969)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !408, line: 493, size: 192, elements: !2666)
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !2665, file: !408, line: 495, baseType: !1307, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !2665, file: !408, line: 496, baseType: !7, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2665, file: !408, line: 497, baseType: !2670, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2672, file: !135, line: 184, baseType: !1360, size: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2661, file: !408, line: 524, baseType: !1974, size: 64, offset: 1344)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2661, file: !408, line: 528, baseType: !475, size: 64, offset: 1408)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "main_stream", scope: !2656, file: !408, line: 620, baseType: !2678, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !408, line: 577, size: 320, elements: !2680)
!2680 = !{!2681, !2686, !2687, !2688, !2689, !2690}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !2679, file: !408, line: 580, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !408, line: 568, size: 64, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2683, file: !408, line: 570, baseType: !445, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !2679, file: !408, line: 583, baseType: !2682, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !2679, file: !408, line: 586, baseType: !445, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !2679, file: !408, line: 589, baseType: !7, size: 32, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2679, file: !408, line: 592, baseType: !7, size: 32, offset: 224)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !2679, file: !408, line: 595, baseType: !7, size: 32, offset: 256)
!2691 = !DILocalVariable(name: "csi", scope: !2636, file: !3, line: 382, type: !2692)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_iterator", file: !385, line: 305, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 301, size: 128, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2693, file: !385, line: 303, baseType: !2639, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2693, file: !385, line: 304, baseType: !7, size: 32, offset: 64)
!2697 = !DILocalVariable(name: "edge", scope: !2636, file: !3, line: 383, type: !1899)
!2698 = !DILocalVariable(name: "i", scope: !2636, file: !3, line: 384, type: !443)
!2699 = !DILocalVariable(name: "n_nodes", scope: !2636, file: !3, line: 384, type: !443)
!2700 = !DILocalVariable(name: "written_decls", scope: !2636, file: !3, line: 385, type: !1448)
!2701 = !DILocalVariable(name: "encoder", scope: !2636, file: !3, line: 386, type: !1974)
!2702 = !DILocalVariable(name: "can", scope: !2636, file: !3, line: 387, type: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_asm_node", file: !385, line: 392, size: 192, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2704, file: !385, line: 394, baseType: !2703, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "asm_str", scope: !2704, file: !385, line: 396, baseType: !475, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2704, file: !385, line: 398, baseType: !443, size: 32, offset: 128)
!2709 = !DILocalVariable(name: "callee", scope: !2710, file: !3, line: 417, type: !471)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 416, column: 2)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 415, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 415, column: 7)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 413, column: 5)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 412, column: 3)
!2715 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 412, column: 3)
!2716 = !DILocalVariable(name: "next", scope: !2717, file: !3, line: 427, type: !471)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 426, column: 3)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 425, column: 12)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 419, column: 6)
!2720 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 418, column: 8)
!2721 = !DILocalVariable(name: "next", scope: !2722, file: !3, line: 440, type: !471)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 439, column: 2)
!2723 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 438, column: 11)
!2724 = !DILocalVariable(name: "len", scope: !2725, file: !3, line: 480, type: !443)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 479, column: 5)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 478, column: 3)
!2727 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 478, column: 3)
!2728 = !DILocation(line: 0, scope: !2636)
!2729 = !DILocation(line: 382, column: 3, scope: !2636)
!2730 = !DILocation(line: 389, column: 8, scope: !2636)
!2731 = !DILocation(line: 391, column: 3, scope: !2636)
!2732 = !DILocation(line: 395, column: 3, scope: !2636)
!2733 = !DILocation(line: 396, column: 17, scope: !2636)
!2734 = !DILocation(line: 396, column: 29, scope: !2636)
!2735 = !DILocation(line: 401, column: 19, scope: !2636)
!2736 = !DILocation(line: 404, column: 14, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 404, column: 3)
!2738 = !DILocation(line: 0, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 404, column: 3)
!2740 = !DILocation(line: 404, column: 8, scope: !2737)
!2741 = !DILocation(line: 404, column: 32, scope: !2739)
!2742 = !DILocation(line: 404, column: 31, scope: !2739)
!2743 = !DILocation(line: 404, column: 3, scope: !2737)
!2744 = !DILocation(line: 406, column: 14, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 405, column: 5)
!2746 = !DILocation(line: 407, column: 7, scope: !2745)
!2747 = !DILocation(line: 404, column: 49, scope: !2739)
!2748 = !DILocation(line: 404, column: 3, scope: !2739)
!2749 = distinct !{!2749, !2743, !2750}
!2750 = !DILocation(line: 408, column: 5, scope: !2737)
!2751 = !DILocation(line: 412, column: 14, scope: !2715)
!2752 = !DILocation(line: 412, column: 8, scope: !2715)
!2753 = !DILocation(line: 412, column: 32, scope: !2714)
!2754 = !DILocation(line: 412, column: 31, scope: !2714)
!2755 = !DILocation(line: 412, column: 3, scope: !2715)
!2756 = !DILocation(line: 414, column: 14, scope: !2713)
!2757 = !DILocation(line: 415, column: 25, scope: !2712)
!2758 = !DILocation(line: 415, column: 12, scope: !2712)
!2759 = !DILocation(line: 0, scope: !2712)
!2760 = !DILocation(line: 415, column: 7, scope: !2712)
!2761 = !DILocation(line: 417, column: 39, scope: !2710)
!2762 = !DILocation(line: 0, scope: !2710)
!2763 = !DILocation(line: 418, column: 9, scope: !2720)
!2764 = !DILocation(line: 418, column: 8, scope: !2710)
!2765 = !DILocation(line: 421, column: 8, scope: !2719)
!2766 = !DILocation(line: 422, column: 8, scope: !2719)
!2767 = !DILocation(line: 425, column: 20, scope: !2718)
!2768 = !DILocation(line: 425, column: 12, scope: !2718)
!2769 = !DILocation(line: 425, column: 12, scope: !2719)
!2770 = !DILocation(line: 428, column: 10, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 428, column: 5)
!2772 = !DILocation(line: 0, scope: !2771)
!2773 = !DILocation(line: 0, scope: !2717)
!2774 = !DILocation(line: 429, column: 15, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 428, column: 5)
!2776 = !DILocation(line: 428, column: 5, scope: !2771)
!2777 = !DILocation(line: 431, column: 12, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 431, column: 11)
!2779 = !DILocation(line: 431, column: 11, scope: !2775)
!2780 = !DILocation(line: 432, column: 9, scope: !2778)
!2781 = !DILocation(line: 428, column: 5, scope: !2775)
!2782 = distinct !{!2782, !2776, !2783}
!2783 = !DILocation(line: 432, column: 49, scope: !2771)
!2784 = !DILocation(line: 415, column: 53, scope: !2711)
!2785 = !DILocation(line: 415, column: 7, scope: !2711)
!2786 = distinct !{!2786, !2760, !2787}
!2787 = !DILocation(line: 435, column: 2, scope: !2712)
!2788 = !DILocation(line: 438, column: 17, scope: !2723)
!2789 = !DILocation(line: 438, column: 11, scope: !2723)
!2790 = !DILocation(line: 438, column: 11, scope: !2713)
!2791 = !DILocation(line: 441, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 441, column: 4)
!2793 = !DILocation(line: 0, scope: !2792)
!2794 = !DILocation(line: 0, scope: !2722)
!2795 = !DILocation(line: 442, column: 14, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 441, column: 4)
!2797 = !DILocation(line: 441, column: 4, scope: !2792)
!2798 = !DILocation(line: 444, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 444, column: 10)
!2800 = !DILocation(line: 444, column: 10, scope: !2796)
!2801 = !DILocation(line: 445, column: 8, scope: !2799)
!2802 = !DILocation(line: 441, column: 4, scope: !2796)
!2803 = distinct !{!2803, !2797, !2804}
!2804 = !DILocation(line: 445, column: 48, scope: !2792)
!2805 = !DILocation(line: 412, column: 49, scope: !2714)
!2806 = !DILocation(line: 412, column: 3, scope: !2714)
!2807 = distinct !{!2807, !2755, !2808}
!2808 = !DILocation(line: 447, column: 5, scope: !2715)
!2809 = !DILocation(line: 450, column: 13, scope: !2636)
!2810 = !DILocation(line: 451, column: 8, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 451, column: 3)
!2812 = !DILocation(line: 0, scope: !2811)
!2813 = !DILocation(line: 451, column: 17, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 451, column: 3)
!2815 = !DILocation(line: 451, column: 3, scope: !2811)
!2816 = !DILocation(line: 453, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 452, column: 5)
!2818 = !DILocation(line: 454, column: 7, scope: !2817)
!2819 = !DILocation(line: 451, column: 29, scope: !2814)
!2820 = !DILocation(line: 451, column: 3, scope: !2814)
!2821 = distinct !{!2821, !2815, !2822}
!2822 = !DILocation(line: 455, column: 5, scope: !2811)
!2823 = !DILocation(line: 457, column: 3, scope: !2636)
!2824 = !DILocation(line: 460, column: 14, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 460, column: 3)
!2826 = !DILocation(line: 460, column: 8, scope: !2825)
!2827 = !DILocation(line: 460, column: 32, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 460, column: 3)
!2829 = !DILocation(line: 460, column: 31, scope: !2828)
!2830 = !DILocation(line: 460, column: 3, scope: !2825)
!2831 = !DILocation(line: 462, column: 14, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 461, column: 5)
!2833 = !DILocation(line: 463, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 463, column: 11)
!2835 = !DILocation(line: 463, column: 11, scope: !2834)
!2836 = !DILocation(line: 463, column: 11, scope: !2832)
!2837 = !DILocation(line: 468, column: 4, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 464, column: 9)
!2839 = !DILocation(line: 0, scope: !2838)
!2840 = !DILocation(line: 468, column: 17, scope: !2838)
!2841 = !DILocation(line: 470, column: 4, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 470, column: 4)
!2843 = distinct !{!2843, !2837, !2844}
!2844 = !DILocation(line: 469, column: 19, scope: !2838)
!2845 = !DILocation(line: 471, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 470, column: 4)
!2847 = !DILocation(line: 470, column: 30, scope: !2846)
!2848 = !DILocation(line: 470, column: 4, scope: !2846)
!2849 = distinct !{!2849, !2841, !2850}
!2850 = !DILocation(line: 471, column: 40, scope: !2842)
!2851 = !DILocation(line: 460, column: 49, scope: !2828)
!2852 = !DILocation(line: 460, column: 3, scope: !2828)
!2853 = distinct !{!2853, !2830, !2854}
!2854 = !DILocation(line: 473, column: 5, scope: !2825)
!2855 = !DILocation(line: 475, column: 34, scope: !2636)
!2856 = !DILocation(line: 475, column: 3, scope: !2636)
!2857 = !DILocation(line: 478, column: 8, scope: !2727)
!2858 = !DILocation(line: 0, scope: !2727)
!2859 = !DILocation(line: 478, column: 3, scope: !2727)
!2860 = !DILocation(line: 480, column: 17, scope: !2725)
!2861 = !DILocation(line: 0, scope: !2725)
!2862 = !DILocation(line: 481, column: 38, scope: !2725)
!2863 = !DILocation(line: 481, column: 51, scope: !2725)
!2864 = !DILocation(line: 481, column: 7, scope: !2725)
!2865 = !DILocation(line: 482, column: 12, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 482, column: 7)
!2867 = !DILocation(line: 0, scope: !2866)
!2868 = !DILocation(line: 482, column: 21, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 482, column: 7)
!2870 = !DILocation(line: 482, column: 7, scope: !2866)
!2871 = !DILocation(line: 483, column: 27, scope: !2869)
!2872 = !DILocation(line: 484, column: 9, scope: !2869)
!2873 = !DILocation(line: 483, column: 2, scope: !2869)
!2874 = !DILocation(line: 482, column: 28, scope: !2869)
!2875 = !DILocation(line: 482, column: 7, scope: !2869)
!2876 = distinct !{!2876, !2870, !2877}
!2877 = !DILocation(line: 484, column: 46, scope: !2866)
!2878 = !DILocation(line: 478, column: 48, scope: !2726)
!2879 = !DILocation(line: 478, column: 3, scope: !2726)
!2880 = distinct !{!2880, !2859, !2881}
!2881 = !DILocation(line: 485, column: 5, scope: !2727)
!2882 = !DILocation(line: 487, column: 34, scope: !2636)
!2883 = !DILocation(line: 487, column: 3, scope: !2636)
!2884 = !DILocation(line: 489, column: 3, scope: !2636)
!2885 = !DILocation(line: 490, column: 1, scope: !2636)
!2886 = distinct !DISubprogram(name: "output_profile_summary", scope: !3, file: !3, line: 359, type: !2887, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2655}
!2889 = !{!2890}
!2890 = !DILocalVariable(name: "ob", arg: 1, scope: !2886, file: !3, line: 359, type: !2655)
!2891 = !DILocation(line: 0, scope: !2886)
!2892 = !DILocation(line: 361, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 361, column: 7)
!2894 = !DILocation(line: 361, column: 7, scope: !2886)
!2895 = !DILocation(line: 364, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 362, column: 5)
!2897 = !DILocation(line: 365, column: 51, scope: !2896)
!2898 = !DILocation(line: 0, scope: !2896)
!2899 = !DILocation(line: 365, column: 65, scope: !2896)
!2900 = !DILocation(line: 365, column: 38, scope: !2896)
!2901 = !DILocation(line: 365, column: 7, scope: !2896)
!2902 = !DILocation(line: 366, column: 38, scope: !2896)
!2903 = !DILocation(line: 366, column: 51, scope: !2896)
!2904 = !DILocation(line: 366, column: 65, scope: !2896)
!2905 = !DILocation(line: 366, column: 7, scope: !2896)
!2906 = !DILocation(line: 367, column: 38, scope: !2896)
!2907 = !DILocation(line: 367, column: 51, scope: !2896)
!2908 = !DILocation(line: 367, column: 65, scope: !2896)
!2909 = !DILocation(line: 367, column: 7, scope: !2896)
!2910 = !DILocation(line: 368, column: 38, scope: !2896)
!2911 = !DILocation(line: 368, column: 51, scope: !2896)
!2912 = !DILocation(line: 368, column: 65, scope: !2896)
!2913 = !DILocation(line: 368, column: 7, scope: !2896)
!2914 = !DILocation(line: 369, column: 5, scope: !2896)
!2915 = !DILocation(line: 371, column: 36, scope: !2893)
!2916 = !DILocation(line: 371, column: 5, scope: !2893)
!2917 = !DILocation(line: 372, column: 1, scope: !2886)
!2918 = distinct !DISubprogram(name: "csi_start", scope: !385, file: !385, line: 668, type: !2919, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2692, !2639}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "set", arg: 1, scope: !2918, file: !385, line: 668, type: !2639)
!2923 = !DILocalVariable(name: "csi", scope: !2918, file: !385, line: 670, type: !2692)
!2924 = !DILocation(line: 0, scope: !2918)
!2925 = !DILocation(line: 672, column: 7, scope: !2918)
!2926 = !DILocation(line: 672, column: 11, scope: !2918)
!2927 = !DILocation(line: 673, column: 7, scope: !2918)
!2928 = !DILocation(line: 673, column: 13, scope: !2918)
!2929 = !DILocation(line: 674, column: 3, scope: !2918)
!2930 = distinct !DISubprogram(name: "csi_end_p", scope: !385, file: !385, line: 647, type: !2931, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!442, !2692}
!2933 = !{!2934}
!2934 = !DILocalVariable(name: "csi", arg: 1, scope: !2930, file: !385, line: 647, type: !2692)
!2935 = !DILocation(line: 649, column: 23, scope: !2930)
!2936 = !DILocation(line: 649, column: 20, scope: !2930)
!2937 = !DILocation(line: 649, column: 10, scope: !2930)
!2938 = !DILocation(line: 649, column: 3, scope: !2930)
!2939 = distinct !DISubprogram(name: "csi_node", scope: !385, file: !385, line: 661, type: !2940, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!471, !2692}
!2942 = !{!2943}
!2943 = !DILocalVariable(name: "csi", arg: 1, scope: !2939, file: !385, line: 661, type: !2692)
!2944 = !DILocation(line: 663, column: 10, scope: !2939)
!2945 = !DILocation(line: 663, column: 3, scope: !2939)
!2946 = distinct !DISubprogram(name: "csi_next", scope: !385, file: !385, line: 654, type: !2947, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "csi", arg: 1, scope: !2946, file: !385, line: 654, type: !2949)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 656, column: 8, scope: !2946)
!2954 = !DILocation(line: 656, column: 13, scope: !2946)
!2955 = !DILocation(line: 657, column: 1, scope: !2946)
!2956 = distinct !DISubprogram(name: "cgraph_node_in_set_p", scope: !385, file: !385, line: 679, type: !2957, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!442, !471, !2639}
!2959 = !{!2960, !2961, !2962}
!2960 = !DILocalVariable(name: "node", arg: 1, scope: !2956, file: !385, line: 679, type: !471)
!2961 = !DILocalVariable(name: "set", arg: 2, scope: !2956, file: !385, line: 679, type: !2639)
!2962 = !DILocalVariable(name: "csi", scope: !2956, file: !385, line: 681, type: !2692)
!2963 = !DILocation(line: 0, scope: !2956)
!2964 = !DILocation(line: 681, column: 3, scope: !2956)
!2965 = !DILocation(line: 682, column: 9, scope: !2956)
!2966 = !DILocation(line: 683, column: 11, scope: !2956)
!2967 = !DILocation(line: 683, column: 10, scope: !2956)
!2968 = !DILocation(line: 684, column: 1, scope: !2956)
!2969 = !DILocation(line: 683, column: 3, scope: !2956)
!2970 = distinct !DISubprogram(name: "lto_cgraph_encoder_size", scope: !3, file: !3, line: 126, type: !2971, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!443, !1974}
!2973 = !{!2974}
!2974 = !DILocalVariable(name: "encoder", arg: 1, scope: !2970, file: !3, line: 126, type: !1974)
!2975 = !DILocation(line: 0, scope: !2970)
!2976 = !DILocation(line: 128, column: 10, scope: !2970)
!2977 = !DILocation(line: 128, column: 3, scope: !2970)
!2978 = distinct !DISubprogram(name: "lto_output_node", scope: !3, file: !3, line: 177, type: !2979, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2655, !471, !1974, !2639, !1448}
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3018}
!2982 = !DILocalVariable(name: "ob", arg: 1, scope: !2978, file: !3, line: 177, type: !2655)
!2983 = !DILocalVariable(name: "node", arg: 2, scope: !2978, file: !3, line: 177, type: !471)
!2984 = !DILocalVariable(name: "encoder", arg: 3, scope: !2978, file: !3, line: 178, type: !1974)
!2985 = !DILocalVariable(name: "set", arg: 4, scope: !2978, file: !3, line: 178, type: !2639)
!2986 = !DILocalVariable(name: "written_decls", arg: 5, scope: !2978, file: !3, line: 179, type: !1448)
!2987 = !DILocalVariable(name: "tag", scope: !2978, file: !3, line: 181, type: !7)
!2988 = !DILocalVariable(name: "bp", scope: !2978, file: !3, line: 182, type: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitpack_d", file: !408, line: 156, size: 192, elements: !2991)
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "num_bits", scope: !2990, file: !408, line: 159, baseType: !946, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused_bit", scope: !2990, file: !408, line: 165, baseType: !946, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2990, file: !408, line: 168, baseType: !2995, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_heap", file: !408, line: 154, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_heap", file: !408, line: 154, size: 128, elements: !2998)
!2998 = !{!2999}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2997, file: !408, line: 154, baseType: !3000, size: 128)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_base", file: !408, line: 153, baseType: !3001)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_base", file: !408, line: 153, size: 128, elements: !3002)
!3002 = !{!3003, !3004, !3005}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3001, file: !408, line: 153, baseType: !7, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3001, file: !408, line: 153, baseType: !7, size: 32, offset: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3001, file: !408, line: 153, baseType: !3006, size: 64, offset: 64)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 64, elements: !574)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitpack_word_t", file: !408, line: 152, baseType: !529)
!3008 = !DILocalVariable(name: "local", scope: !2978, file: !3, line: 183, type: !7)
!3009 = !DILocalVariable(name: "externally_visible", scope: !2978, file: !3, line: 183, type: !7)
!3010 = !DILocalVariable(name: "inlinable", scope: !2978, file: !3, line: 183, type: !7)
!3011 = !DILocalVariable(name: "analyzed", scope: !2978, file: !3, line: 183, type: !7)
!3012 = !DILocalVariable(name: "boundary_p", scope: !2978, file: !3, line: 184, type: !442)
!3013 = !DILocalVariable(name: "wrote_decl_p", scope: !2978, file: !3, line: 184, type: !442)
!3014 = !DILocalVariable(name: "ref", scope: !2978, file: !3, line: 185, type: !2059)
!3015 = !DILocalVariable(name: "alias", scope: !3016, file: !3, line: 320, type: !471)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 319, column: 5)
!3017 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 318, column: 7)
!3018 = !DILocalVariable(name: "alias_count", scope: !3016, file: !3, line: 321, type: !529)
!3019 = !DILocation(line: 0, scope: !2978)
!3020 = !DILocation(line: 187, column: 17, scope: !2978)
!3021 = !DILocation(line: 187, column: 16, scope: !2978)
!3022 = !DILocation(line: 188, column: 47, scope: !2978)
!3023 = !DILocation(line: 188, column: 18, scope: !2978)
!3024 = !DILocation(line: 190, column: 11, scope: !2978)
!3025 = !DILocation(line: 190, column: 3, scope: !2978)
!3026 = !DILocation(line: 199, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 191, column: 5)
!3028 = !DILocation(line: 203, column: 7, scope: !3027)
!3029 = !DILocation(line: 206, column: 7, scope: !3027)
!3030 = !DILocation(line: 207, column: 5, scope: !3027)
!3031 = !DILocation(line: 209, column: 7, scope: !2978)
!3032 = !DILocation(line: 212, column: 34, scope: !2978)
!3033 = !DILocation(line: 212, column: 47, scope: !2978)
!3034 = !DILocation(line: 212, column: 3, scope: !2978)
!3035 = !DILocation(line: 229, column: 7, scope: !2978)
!3036 = !DILocation(line: 232, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 230, column: 5)
!3038 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 229, column: 7)
!3039 = !DILocation(line: 217, column: 20, scope: !2978)
!3040 = !DILocation(line: 216, column: 27, scope: !2978)
!3041 = !DILocation(line: 215, column: 36, scope: !2978)
!3042 = !DILocation(line: 214, column: 23, scope: !2978)
!3043 = !DILocation(line: 238, column: 46, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 238, column: 12)
!3045 = !DILocation(line: 238, column: 12, scope: !3044)
!3046 = !DILocation(line: 238, column: 12, scope: !3038)
!3047 = !DILocation(line: 245, column: 34, scope: !2978)
!3048 = !DILocation(line: 245, column: 47, scope: !2978)
!3049 = !DILocation(line: 245, column: 3, scope: !2978)
!3050 = !DILocation(line: 247, column: 8, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 247, column: 7)
!3052 = !DILocation(line: 247, column: 7, scope: !2978)
!3053 = !DILocation(line: 248, column: 36, scope: !3051)
!3054 = !DILocation(line: 248, column: 5, scope: !3051)
!3055 = !DILocation(line: 250, column: 33, scope: !2978)
!3056 = !DILocation(line: 250, column: 49, scope: !2978)
!3057 = !DILocation(line: 250, column: 68, scope: !2978)
!3058 = !DILocation(line: 250, column: 3, scope: !2978)
!3059 = !DILocation(line: 251, column: 34, scope: !2978)
!3060 = !DILocation(line: 251, column: 53, scope: !2978)
!3061 = !DILocation(line: 251, column: 3, scope: !2978)
!3062 = !DILocation(line: 253, column: 8, scope: !2978)
!3063 = !DILocation(line: 254, column: 3, scope: !2978)
!3064 = !DILocation(line: 255, column: 3, scope: !2978)
!3065 = !DILocation(line: 256, column: 34, scope: !2978)
!3066 = !DILocation(line: 256, column: 22, scope: !2978)
!3067 = !DILocation(line: 256, column: 3, scope: !2978)
!3068 = !DILocation(line: 257, column: 3, scope: !2978)
!3069 = !DILocation(line: 258, column: 34, scope: !2978)
!3070 = !DILocation(line: 258, column: 22, scope: !2978)
!3071 = !DILocation(line: 258, column: 3, scope: !2978)
!3072 = !DILocation(line: 259, column: 34, scope: !2978)
!3073 = !DILocation(line: 259, column: 22, scope: !2978)
!3074 = !DILocation(line: 259, column: 3, scope: !2978)
!3075 = !DILocation(line: 260, column: 34, scope: !2978)
!3076 = !DILocation(line: 260, column: 22, scope: !2978)
!3077 = !DILocation(line: 260, column: 3, scope: !2978)
!3078 = !DILocation(line: 261, column: 34, scope: !2978)
!3079 = !DILocation(line: 261, column: 22, scope: !2978)
!3080 = !DILocation(line: 261, column: 3, scope: !2978)
!3081 = !DILocation(line: 262, column: 28, scope: !2978)
!3082 = !DILocation(line: 262, column: 22, scope: !2978)
!3083 = !DILocation(line: 262, column: 3, scope: !2978)
!3084 = !DILocation(line: 263, column: 28, scope: !2978)
!3085 = !DILocation(line: 263, column: 22, scope: !2978)
!3086 = !DILocation(line: 263, column: 3, scope: !2978)
!3087 = !DILocation(line: 264, column: 28, scope: !2978)
!3088 = !DILocation(line: 264, column: 22, scope: !2978)
!3089 = !DILocation(line: 264, column: 3, scope: !2978)
!3090 = !DILocation(line: 265, column: 28, scope: !2978)
!3091 = !DILocation(line: 265, column: 22, scope: !2978)
!3092 = !DILocation(line: 265, column: 3, scope: !2978)
!3093 = !DILocation(line: 266, column: 28, scope: !2978)
!3094 = !DILocation(line: 266, column: 22, scope: !2978)
!3095 = !DILocation(line: 266, column: 3, scope: !2978)
!3096 = !DILocation(line: 267, column: 3, scope: !2978)
!3097 = !DILocation(line: 268, column: 28, scope: !2978)
!3098 = !DILocation(line: 268, column: 22, scope: !2978)
!3099 = !DILocation(line: 268, column: 3, scope: !2978)
!3100 = !DILocation(line: 269, column: 28, scope: !2978)
!3101 = !DILocation(line: 269, column: 22, scope: !2978)
!3102 = !DILocation(line: 269, column: 3, scope: !2978)
!3103 = !DILocation(line: 270, column: 28, scope: !2978)
!3104 = !DILocation(line: 270, column: 22, scope: !2978)
!3105 = !DILocation(line: 270, column: 3, scope: !2978)
!3106 = !DILocation(line: 271, column: 27, scope: !2978)
!3107 = !DILocation(line: 271, column: 3, scope: !2978)
!3108 = !DILocation(line: 272, column: 3, scope: !2978)
!3109 = !DILocation(line: 274, column: 11, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 274, column: 7)
!3111 = !DILocation(line: 274, column: 7, scope: !2978)
!3112 = !DILocation(line: 276, column: 38, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 275, column: 5)
!3114 = !DILocation(line: 277, column: 33, scope: !3113)
!3115 = !DILocation(line: 276, column: 7, scope: !3113)
!3116 = !DILocation(line: 278, column: 38, scope: !3113)
!3117 = !DILocation(line: 279, column: 33, scope: !3113)
!3118 = !DILocation(line: 279, column: 6, scope: !3113)
!3119 = !DILocation(line: 278, column: 7, scope: !3113)
!3120 = !DILocation(line: 280, column: 38, scope: !3113)
!3121 = !DILocation(line: 281, column: 33, scope: !3113)
!3122 = !DILocation(line: 281, column: 6, scope: !3113)
!3123 = !DILocation(line: 280, column: 7, scope: !3113)
!3124 = !DILocation(line: 282, column: 38, scope: !3113)
!3125 = !DILocation(line: 283, column: 33, scope: !3113)
!3126 = !DILocation(line: 283, column: 6, scope: !3113)
!3127 = !DILocation(line: 282, column: 7, scope: !3113)
!3128 = !DILocation(line: 284, column: 38, scope: !3113)
!3129 = !DILocation(line: 285, column: 33, scope: !3113)
!3130 = !DILocation(line: 285, column: 6, scope: !3113)
!3131 = !DILocation(line: 284, column: 7, scope: !3113)
!3132 = !DILocation(line: 286, column: 5, scope: !3113)
!3133 = !DILocation(line: 291, column: 34, scope: !2978)
!3134 = !DILocation(line: 292, column: 22, scope: !2978)
!3135 = !DILocation(line: 291, column: 3, scope: !2978)
!3136 = !DILocation(line: 293, column: 34, scope: !2978)
!3137 = !DILocation(line: 294, column: 22, scope: !2978)
!3138 = !DILocation(line: 293, column: 3, scope: !2978)
!3139 = !DILocation(line: 295, column: 20, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 295, column: 7)
!3141 = !DILocation(line: 295, column: 7, scope: !3140)
!3142 = !DILocation(line: 295, column: 31, scope: !3140)
!3143 = !DILocation(line: 297, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 296, column: 5)
!3145 = !DILocation(line: 298, column: 7, scope: !3144)
!3146 = !DILocation(line: 0, scope: !3140)
!3147 = !DILocation(line: 302, column: 34, scope: !2978)
!3148 = !DILocation(line: 302, column: 3, scope: !2978)
!3149 = !DILocation(line: 304, column: 34, scope: !2978)
!3150 = !DILocation(line: 304, column: 60, scope: !2978)
!3151 = !DILocation(line: 304, column: 47, scope: !2978)
!3152 = !DILocation(line: 304, column: 3, scope: !2978)
!3153 = !DILocation(line: 305, column: 34, scope: !2978)
!3154 = !DILocation(line: 305, column: 60, scope: !2978)
!3155 = !DILocation(line: 305, column: 47, scope: !2978)
!3156 = !DILocation(line: 305, column: 3, scope: !2978)
!3157 = !DILocation(line: 306, column: 34, scope: !2978)
!3158 = !DILocation(line: 307, column: 22, scope: !2978)
!3159 = !DILocation(line: 307, column: 9, scope: !2978)
!3160 = !DILocation(line: 306, column: 3, scope: !2978)
!3161 = !DILocation(line: 308, column: 34, scope: !2978)
!3162 = !DILocation(line: 308, column: 60, scope: !2978)
!3163 = !DILocation(line: 308, column: 47, scope: !2978)
!3164 = !DILocation(line: 308, column: 3, scope: !2978)
!3165 = !DILocation(line: 309, column: 13, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 309, column: 7)
!3167 = !DILocation(line: 309, column: 7, scope: !3166)
!3168 = !DILocation(line: 309, column: 7, scope: !2978)
!3169 = !DILocation(line: 311, column: 13, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 310, column: 5)
!3171 = !DILocation(line: 312, column: 7, scope: !3170)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 316, column: 34, scope: !2978)
!3174 = !DILocation(line: 316, column: 3, scope: !2978)
!3175 = !DILocation(line: 318, column: 13, scope: !3017)
!3176 = !DILocation(line: 318, column: 7, scope: !3017)
!3177 = !DILocation(line: 318, column: 7, scope: !2978)
!3178 = !DILocation(line: 0, scope: !3016)
!3179 = !DILocation(line: 322, column: 12, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 322, column: 7)
!3181 = !DILocation(line: 0, scope: !3180)
!3182 = !DILocation(line: 322, column: 44, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 322, column: 7)
!3184 = !DILocation(line: 322, column: 7, scope: !3180)
!3185 = !DILocation(line: 323, column: 13, scope: !3183)
!3186 = !DILocation(line: 322, column: 7, scope: !3183)
!3187 = distinct !{!3187, !3184, !3188}
!3188 = !DILocation(line: 323, column: 13, scope: !3180)
!3189 = !DILocation(line: 324, column: 38, scope: !3016)
!3190 = !DILocation(line: 324, column: 7, scope: !3016)
!3191 = !DILocation(line: 325, column: 7, scope: !3016)
!3192 = !DILocation(line: 327, column: 34, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 326, column: 2)
!3194 = !DILocation(line: 327, column: 50, scope: !3193)
!3195 = !DILocation(line: 328, column: 16, scope: !3193)
!3196 = !DILocation(line: 327, column: 4, scope: !3193)
!3197 = !DILocation(line: 329, column: 21, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 329, column: 8)
!3199 = !DILocation(line: 329, column: 8, scope: !3198)
!3200 = !DILocation(line: 0, scope: !3198)
!3201 = !DILocation(line: 329, column: 8, scope: !3193)
!3202 = !DILocation(line: 333, column: 29, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 330, column: 6)
!3204 = !DILocation(line: 333, column: 44, scope: !3203)
!3205 = !DILocation(line: 333, column: 50, scope: !3203)
!3206 = !DILocation(line: 334, column: 21, scope: !3203)
!3207 = !DILocation(line: 334, column: 38, scope: !3203)
!3208 = !DILocation(line: 334, column: 44, scope: !3203)
!3209 = !DILocation(line: 334, column: 5, scope: !3203)
!3210 = !DILocation(line: 331, column: 15, scope: !3203)
!3211 = !DILocation(line: 335, column: 39, scope: !3203)
!3212 = !DILocation(line: 336, column: 26, scope: !3203)
!3213 = !DILocation(line: 335, column: 8, scope: !3203)
!3214 = !DILocation(line: 337, column: 39, scope: !3203)
!3215 = !DILocation(line: 338, column: 26, scope: !3203)
!3216 = !DILocation(line: 337, column: 8, scope: !3203)
!3217 = !DILocation(line: 339, column: 38, scope: !3203)
!3218 = !DILocation(line: 339, column: 54, scope: !3203)
!3219 = !DILocation(line: 340, column: 19, scope: !3203)
!3220 = !DILocation(line: 339, column: 8, scope: !3203)
!3221 = !DILocation(line: 341, column: 6, scope: !3203)
!3222 = !DILocation(line: 344, column: 8, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 343, column: 6)
!3224 = !DILocation(line: 345, column: 38, scope: !3223)
!3225 = !DILocation(line: 345, column: 54, scope: !3223)
!3226 = !DILocation(line: 346, column: 19, scope: !3223)
!3227 = !DILocation(line: 345, column: 8, scope: !3223)
!3228 = !DILocation(line: 348, column: 19, scope: !3193)
!3229 = !DILocation(line: 349, column: 2, scope: !3193)
!3230 = distinct !{!3230, !3191, !3231}
!3231 = !DILocation(line: 350, column: 19, scope: !3016)
!3232 = !DILocation(line: 353, column: 36, scope: !3017)
!3233 = !DILocation(line: 353, column: 5, scope: !3017)
!3234 = !DILocation(line: 354, column: 1, scope: !2978)
!3235 = distinct !DISubprogram(name: "lto_output_edge", scope: !3, file: !3, line: 135, type: !3236, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !2655, !1899, !1974}
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244}
!3239 = !DILocalVariable(name: "ob", arg: 1, scope: !3235, file: !3, line: 135, type: !2655)
!3240 = !DILocalVariable(name: "edge", arg: 2, scope: !3235, file: !3, line: 135, type: !1899)
!3241 = !DILocalVariable(name: "encoder", arg: 3, scope: !3235, file: !3, line: 136, type: !1974)
!3242 = !DILocalVariable(name: "uid", scope: !3235, file: !3, line: 138, type: !7)
!3243 = !DILocalVariable(name: "ref", scope: !3235, file: !3, line: 139, type: !2059)
!3244 = !DILocalVariable(name: "bp", scope: !3235, file: !3, line: 140, type: !2989)
!3245 = !DILocation(line: 0, scope: !3235)
!3246 = !DILocation(line: 142, column: 34, scope: !3235)
!3247 = !DILocation(line: 142, column: 3, scope: !3235)
!3248 = !DILocation(line: 144, column: 51, scope: !3235)
!3249 = !DILocation(line: 144, column: 9, scope: !3235)
!3250 = !DILocation(line: 145, column: 3, scope: !3235)
!3251 = !DILocation(line: 146, column: 34, scope: !3235)
!3252 = !DILocation(line: 146, column: 3, scope: !3235)
!3253 = !DILocation(line: 148, column: 51, scope: !3235)
!3254 = !DILocation(line: 148, column: 9, scope: !3235)
!3255 = !DILocation(line: 149, column: 3, scope: !3235)
!3256 = !DILocation(line: 150, column: 34, scope: !3235)
!3257 = !DILocation(line: 150, column: 3, scope: !3235)
!3258 = !DILocation(line: 152, column: 34, scope: !3235)
!3259 = !DILocation(line: 152, column: 53, scope: !3235)
!3260 = !DILocation(line: 152, column: 3, scope: !3235)
!3261 = !DILocation(line: 154, column: 8, scope: !3235)
!3262 = !DILocation(line: 155, column: 9, scope: !3235)
!3263 = !DILocation(line: 155, column: 26, scope: !3235)
!3264 = !DILocation(line: 155, column: 59, scope: !3235)
!3265 = !DILocation(line: 155, column: 41, scope: !3235)
!3266 = !DILocation(line: 156, column: 22, scope: !3235)
!3267 = !DILocation(line: 156, column: 3, scope: !3235)
!3268 = !DILocation(line: 157, column: 28, scope: !3235)
!3269 = !DILocation(line: 157, column: 22, scope: !3235)
!3270 = !DILocation(line: 157, column: 3, scope: !3235)
!3271 = !DILocation(line: 158, column: 28, scope: !3235)
!3272 = !DILocation(line: 158, column: 22, scope: !3235)
!3273 = !DILocation(line: 158, column: 3, scope: !3235)
!3274 = !DILocation(line: 159, column: 28, scope: !3235)
!3275 = !DILocation(line: 159, column: 22, scope: !3235)
!3276 = !DILocation(line: 159, column: 3, scope: !3235)
!3277 = !DILocation(line: 160, column: 28, scope: !3235)
!3278 = !DILocation(line: 160, column: 22, scope: !3235)
!3279 = !DILocation(line: 160, column: 3, scope: !3235)
!3280 = !DILocation(line: 161, column: 28, scope: !3235)
!3281 = !DILocation(line: 161, column: 22, scope: !3235)
!3282 = !DILocation(line: 161, column: 3, scope: !3235)
!3283 = !DILocation(line: 162, column: 28, scope: !3235)
!3284 = !DILocation(line: 162, column: 22, scope: !3235)
!3285 = !DILocation(line: 162, column: 3, scope: !3235)
!3286 = !DILocation(line: 163, column: 27, scope: !3235)
!3287 = !DILocation(line: 163, column: 3, scope: !3235)
!3288 = !DILocation(line: 164, column: 3, scope: !3235)
!3289 = !DILocation(line: 165, column: 1, scope: !3235)
!3290 = distinct !DISubprogram(name: "input_cgraph", scope: !3, file: !3, line: 808, type: !3291, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null}
!3293 = !{!3294, !3296, !3297, !3298, !3299, !3301, !3302}
!3294 = !DILocalVariable(name: "file_data_vec", scope: !3290, file: !3, line: 810, type: !3295)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!3296 = !DILocalVariable(name: "file_data", scope: !3290, file: !3, line: 811, type: !1956)
!3297 = !DILocalVariable(name: "j", scope: !3290, file: !3, line: 812, type: !7)
!3298 = !DILocalVariable(name: "node", scope: !3290, file: !3, line: 813, type: !471)
!3299 = !DILocalVariable(name: "data", scope: !3300, file: !3, line: 817, type: !448)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 816, column: 5)
!3301 = !DILocalVariable(name: "len", scope: !3300, file: !3, line: 818, type: !946)
!3302 = !DILocalVariable(name: "ib", scope: !3300, file: !3, line: 819, type: !3303)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !408, line: 363, size: 128, elements: !3305)
!3305 = !{!3306, !3307, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3304, file: !408, line: 365, baseType: !448, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3304, file: !408, line: 366, baseType: !7, size: 32, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3304, file: !408, line: 367, baseType: !7, size: 32, offset: 96)
!3309 = !DILocation(line: 810, column: 47, scope: !3290)
!3310 = !DILocation(line: 0, scope: !3290)
!3311 = !DILocation(line: 0, scope: !3300)
!3312 = !DILocation(line: 815, column: 3, scope: !3290)
!3313 = !DILocation(line: 815, column: 38, scope: !3290)
!3314 = !DILocation(line: 815, column: 23, scope: !3290)
!3315 = !DILocation(line: 817, column: 7, scope: !3300)
!3316 = !DILocation(line: 818, column: 7, scope: !3300)
!3317 = !DILocation(line: 821, column: 12, scope: !3300)
!3318 = !DILocation(line: 823, column: 7, scope: !3300)
!3319 = !DILocation(line: 824, column: 40, scope: !3300)
!3320 = !DILocation(line: 824, column: 18, scope: !3300)
!3321 = !DILocation(line: 824, column: 38, scope: !3300)
!3322 = !DILocation(line: 825, column: 7, scope: !3300)
!3323 = !DILocation(line: 827, column: 15, scope: !3300)
!3324 = !DILocation(line: 827, column: 21, scope: !3300)
!3325 = !DILocation(line: 826, column: 7, scope: !3300)
!3326 = !DILocation(line: 830, column: 11, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 830, column: 11)
!3328 = !DILocation(line: 830, column: 11, scope: !3300)
!3329 = !DILocation(line: 831, column: 2, scope: !3327)
!3330 = !DILocation(line: 832, column: 5, scope: !3290)
!3331 = distinct !{!3331, !3312, !3330}
!3332 = !DILocation(line: 836, column: 8, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 836, column: 3)
!3334 = !DILocation(line: 0, scope: !3333)
!3335 = !DILocation(line: 836, column: 3, scope: !3333)
!3336 = !DILocation(line: 843, column: 23, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 843, column: 11)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 837, column: 5)
!3339 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 836, column: 3)
!3340 = !DILocation(line: 843, column: 11, scope: !3337)
!3341 = !DILocation(line: 843, column: 11, scope: !3338)
!3342 = !DILocation(line: 844, column: 8, scope: !3337)
!3343 = !DILocation(line: 844, column: 12, scope: !3337)
!3344 = !DILocation(line: 844, column: 2, scope: !3337)
!3345 = !DILocation(line: 836, column: 48, scope: !3339)
!3346 = !DILocation(line: 836, column: 3, scope: !3339)
!3347 = distinct !{!3347, !3335, !3348}
!3348 = !DILocation(line: 845, column: 5, scope: !3333)
!3349 = !DILocation(line: 846, column: 1, scope: !3290)
!3350 = distinct !DISubprogram(name: "input_profile_summary", scope: !3, file: !3, line: 778, type: !3351, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !3303}
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "ib", arg: 1, scope: !3350, file: !3, line: 778, type: !3303)
!3355 = !DILocalVariable(name: "runs", scope: !3350, file: !3, line: 780, type: !7)
!3356 = !DILocation(line: 0, scope: !3350)
!3357 = !DILocation(line: 780, column: 23, scope: !3350)
!3358 = !DILocation(line: 781, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 781, column: 7)
!3360 = !DILocation(line: 781, column: 7, scope: !3350)
!3361 = !DILocation(line: 783, column: 12, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 783, column: 11)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 782, column: 5)
!3364 = !DILocation(line: 783, column: 11, scope: !3363)
!3365 = !DILocation(line: 785, column: 17, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 784, column: 9)
!3367 = !DILocation(line: 786, column: 26, scope: !3366)
!3368 = !DILocation(line: 787, column: 31, scope: !3366)
!3369 = !DILocation(line: 787, column: 29, scope: !3366)
!3370 = !DILocation(line: 788, column: 31, scope: !3366)
!3371 = !DILocation(line: 788, column: 29, scope: !3366)
!3372 = !DILocation(line: 789, column: 31, scope: !3366)
!3373 = !DILocation(line: 789, column: 29, scope: !3366)
!3374 = !DILocation(line: 790, column: 2, scope: !3366)
!3375 = !DILocation(line: 793, column: 30, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 793, column: 16)
!3377 = !DILocation(line: 793, column: 35, scope: !3376)
!3378 = !DILocation(line: 794, column: 9, scope: !3376)
!3379 = !DILocation(line: 794, column: 26, scope: !3376)
!3380 = !DILocation(line: 794, column: 37, scope: !3376)
!3381 = !DILocation(line: 794, column: 34, scope: !3376)
!3382 = !DILocation(line: 795, column: 9, scope: !3376)
!3383 = !DILocation(line: 795, column: 12, scope: !3376)
!3384 = !DILocation(line: 795, column: 26, scope: !3376)
!3385 = !DILocation(line: 795, column: 37, scope: !3376)
!3386 = !DILocation(line: 795, column: 34, scope: !3376)
!3387 = !DILocation(line: 796, column: 9, scope: !3376)
!3388 = !DILocation(line: 796, column: 12, scope: !3376)
!3389 = !DILocation(line: 796, column: 26, scope: !3376)
!3390 = !DILocation(line: 796, column: 37, scope: !3376)
!3391 = !DILocation(line: 796, column: 34, scope: !3376)
!3392 = !DILocation(line: 793, column: 16, scope: !3362)
!3393 = !DILocation(line: 797, column: 2, scope: !3376)
!3394 = !DILocation(line: 802, column: 1, scope: !3350)
!3395 = distinct !DISubprogram(name: "input_cgraph_1", scope: !3, file: !3, line: 713, type: !3396, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !1956, !3303}
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408}
!3399 = !DILocalVariable(name: "file_data", arg: 1, scope: !3395, file: !3, line: 713, type: !1956)
!3400 = !DILocalVariable(name: "ib", arg: 2, scope: !3395, file: !3, line: 714, type: !3303)
!3401 = !DILocalVariable(name: "tag", scope: !3395, file: !3, line: 716, type: !421)
!3402 = !DILocalVariable(name: "nodes", scope: !3395, file: !3, line: 717, type: !458)
!3403 = !DILocalVariable(name: "node", scope: !3395, file: !3, line: 718, type: !471)
!3404 = !DILocalVariable(name: "i", scope: !3395, file: !3, line: 719, type: !7)
!3405 = !DILocalVariable(name: "len", scope: !3395, file: !3, line: 720, type: !529)
!3406 = !DILocalVariable(name: "str", scope: !3407, file: !3, line: 743, type: !445)
!3407 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 742, column: 5)
!3408 = !DILocalVariable(name: "ref", scope: !3409, file: !3, line: 754, type: !443)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 753, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 752, column: 3)
!3411 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 752, column: 3)
!3412 = !DILocation(line: 0, scope: !3395)
!3413 = !DILocation(line: 717, column: 3, scope: !3395)
!3414 = !DILocation(line: 717, column: 31, scope: !3395)
!3415 = !DILocation(line: 718, column: 3, scope: !3395)
!3416 = !DILocation(line: 722, column: 32, scope: !3395)
!3417 = !DILocation(line: 0, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 728, column: 2)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 725, column: 11)
!3420 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 724, column: 5)
!3421 = !DILocation(line: 723, column: 3, scope: !3395)
!3422 = !DILocation(line: 726, column: 25, scope: !3419)
!3423 = !DILocation(line: 726, column: 9, scope: !3419)
!3424 = !DILocation(line: 729, column: 11, scope: !3418)
!3425 = !DILocation(line: 729, column: 9, scope: !3418)
!3426 = !DILocation(line: 730, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 730, column: 8)
!3428 = !DILocation(line: 730, column: 21, scope: !3427)
!3429 = !DILocation(line: 730, column: 30, scope: !3427)
!3430 = !DILocation(line: 730, column: 35, scope: !3427)
!3431 = !DILocation(line: 730, column: 8, scope: !3418)
!3432 = !DILocation(line: 731, column: 6, scope: !3427)
!3433 = !DILocation(line: 732, column: 4, scope: !3418)
!3434 = !DILocation(line: 733, column: 42, scope: !3418)
!3435 = !DILocation(line: 733, column: 63, scope: !3418)
!3436 = !DILocation(line: 733, column: 4, scope: !3418)
!3437 = !DILocation(line: 736, column: 36, scope: !3420)
!3438 = distinct !{!3438, !3421, !3439}
!3439 = !DILocation(line: 737, column: 5, scope: !3395)
!3440 = !DILocation(line: 740, column: 9, scope: !3395)
!3441 = !DILocation(line: 741, column: 3, scope: !3395)
!3442 = !DILocation(line: 752, column: 3, scope: !3411)
!3443 = !DILocation(line: 743, column: 40, scope: !3407)
!3444 = !DILocation(line: 743, column: 27, scope: !3407)
!3445 = !DILocation(line: 0, scope: !3407)
!3446 = !DILocation(line: 744, column: 12, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 744, column: 7)
!3448 = !DILocation(line: 0, scope: !3447)
!3449 = !DILocation(line: 744, column: 19, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 744, column: 7)
!3451 = !DILocation(line: 744, column: 21, scope: !3450)
!3452 = !DILocation(line: 744, column: 7, scope: !3447)
!3453 = !DILocation(line: 745, column: 11, scope: !3450)
!3454 = !DILocation(line: 745, column: 2, scope: !3450)
!3455 = !DILocation(line: 745, column: 9, scope: !3450)
!3456 = !DILocation(line: 744, column: 28, scope: !3450)
!3457 = !DILocation(line: 744, column: 7, scope: !3450)
!3458 = distinct !{!3458, !3452, !3459}
!3459 = !DILocation(line: 745, column: 35, scope: !3447)
!3460 = !DILocation(line: 746, column: 42, scope: !3407)
!3461 = !DILocation(line: 746, column: 28, scope: !3407)
!3462 = !DILocation(line: 746, column: 7, scope: !3407)
!3463 = !DILocation(line: 747, column: 7, scope: !3407)
!3464 = !DILocation(line: 749, column: 13, scope: !3407)
!3465 = distinct !{!3465, !3441, !3466}
!3466 = !DILocation(line: 750, column: 5, scope: !3395)
!3467 = !DILocation(line: 0, scope: !3411)
!3468 = !DILocation(line: 752, column: 15, scope: !3410)
!3469 = !DILocation(line: 754, column: 34, scope: !3409)
!3470 = !DILocation(line: 754, column: 47, scope: !3409)
!3471 = !DILocation(line: 754, column: 17, scope: !3409)
!3472 = !DILocation(line: 0, scope: !3409)
!3473 = !DILocation(line: 757, column: 15, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 757, column: 11)
!3475 = !DILocation(line: 757, column: 11, scope: !3409)
!3476 = !DILocation(line: 758, column: 28, scope: !3474)
!3477 = !DILocation(line: 758, column: 2, scope: !3474)
!3478 = !DILocation(line: 758, column: 15, scope: !3474)
!3479 = !DILocation(line: 758, column: 26, scope: !3474)
!3480 = !DILocation(line: 760, column: 26, scope: !3474)
!3481 = !DILocation(line: 762, column: 30, scope: !3409)
!3482 = !DILocation(line: 762, column: 36, scope: !3409)
!3483 = !DILocation(line: 762, column: 13, scope: !3409)
!3484 = !DILocation(line: 765, column: 15, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 765, column: 11)
!3486 = !DILocation(line: 765, column: 11, scope: !3409)
!3487 = !DILocation(line: 766, column: 28, scope: !3485)
!3488 = !DILocation(line: 766, column: 2, scope: !3485)
!3489 = !DILocation(line: 766, column: 8, scope: !3485)
!3490 = !DILocation(line: 766, column: 26, scope: !3485)
!3491 = !DILocation(line: 768, column: 26, scope: !3485)
!3492 = !DILocation(line: 752, column: 63, scope: !3410)
!3493 = !DILocation(line: 752, column: 3, scope: !3410)
!3494 = distinct !{!3494, !3442, !3495}
!3495 = !DILocation(line: 769, column: 5, scope: !3411)
!3496 = !DILocation(line: 771, column: 3, scope: !3395)
!3497 = !DILocation(line: 772, column: 1, scope: !3395)
!3498 = distinct !DISubprogram(name: "lto_mark_file_for_ltrans", scope: !408, file: !408, line: 941, type: !3499, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !1956}
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "file", arg: 1, scope: !3498, file: !408, line: 941, type: !1956)
!3503 = !DILocation(line: 0, scope: !3498)
!3504 = !DILocation(line: 943, column: 9, scope: !3498)
!3505 = !DILocation(line: 943, column: 24, scope: !3498)
!3506 = !DILocation(line: 944, column: 1, scope: !3498)
!3507 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_heap_reserve", scope: !385, file: !385, line: 271, type: !3508, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!443, !2549, !443}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "vec_", arg: 1, scope: !3507, file: !385, line: 271, type: !2549)
!3512 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3507, file: !385, line: 271, type: !443)
!3513 = !DILocalVariable(name: "extend", scope: !3507, file: !385, line: 271, type: !443)
!3514 = !DILocation(line: 0, scope: !3507)
!3515 = !DILocation(line: 271, column: 1, scope: !3507)
!3516 = !DILocation(line: 271, column: 1, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3507, file: !385, line: 271, column: 1)
!3518 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_quick_push", scope: !385, file: !385, line: 270, type: !3519, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!2596, !3521, !470}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!3522 = !{!3523, !3524, !3525}
!3523 = !DILocalVariable(name: "vec_", arg: 1, scope: !3518, file: !385, line: 270, type: !3521)
!3524 = !DILocalVariable(name: "obj_", arg: 2, scope: !3518, file: !385, line: 270, type: !470)
!3525 = !DILocalVariable(name: "slot_", scope: !3518, file: !385, line: 270, type: !2596)
!3526 = !DILocation(line: 0, scope: !3518)
!3527 = !DILocation(line: 270, column: 1, scope: !3518)
!3528 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_space", scope: !385, file: !385, line: 270, type: !3529, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!443, !3521, !443}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "vec_", arg: 1, scope: !3528, file: !385, line: 270, type: !3521)
!3533 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3528, file: !385, line: 270, type: !443)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 270, column: 1, scope: !3528)
!3536 = distinct !DISubprogram(name: "gimple_uid", scope: !792, file: !792, line: 1265, type: !3537, scopeLine: 1266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!7, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !476, line: 60, baseType: !3540)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "g", arg: 1, scope: !3536, file: !792, line: 1265, type: !3539)
!3544 = !DILocation(line: 0, scope: !3536)
!3545 = !DILocation(line: 1267, column: 20, scope: !3536)
!3546 = !DILocation(line: 1267, column: 3, scope: !3536)
!3547 = distinct !DISubprogram(name: "input_edge", scope: !3, file: !3, line: 664, type: !3548, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !3303, !458}
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3551 = !DILocalVariable(name: "ib", arg: 1, scope: !3547, file: !3, line: 664, type: !3303)
!3552 = !DILocalVariable(name: "nodes", arg: 2, scope: !3547, file: !3, line: 664, type: !458)
!3553 = !DILocalVariable(name: "caller", scope: !3547, file: !3, line: 666, type: !471)
!3554 = !DILocalVariable(name: "callee", scope: !3547, file: !3, line: 666, type: !471)
!3555 = !DILocalVariable(name: "edge", scope: !3547, file: !3, line: 667, type: !1899)
!3556 = !DILocalVariable(name: "stmt_id", scope: !3547, file: !3, line: 668, type: !7)
!3557 = !DILocalVariable(name: "count", scope: !3547, file: !3, line: 669, type: !1012)
!3558 = !DILocalVariable(name: "freq", scope: !3547, file: !3, line: 670, type: !443)
!3559 = !DILocalVariable(name: "nest", scope: !3547, file: !3, line: 671, type: !7)
!3560 = !DILocalVariable(name: "inline_failed", scope: !3547, file: !3, line: 672, type: !1912)
!3561 = !DILocalVariable(name: "bp", scope: !3547, file: !3, line: 673, type: !2989)
!3562 = !DILocalVariable(name: "caller_resolution", scope: !3547, file: !3, line: 674, type: !428)
!3563 = !DILocation(line: 0, scope: !3547)
!3564 = !DILocation(line: 676, column: 12, scope: !3547)
!3565 = !DILocation(line: 677, column: 14, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 677, column: 7)
!3567 = !DILocation(line: 677, column: 22, scope: !3566)
!3568 = !DILocation(line: 677, column: 33, scope: !3566)
!3569 = !DILocation(line: 677, column: 38, scope: !3566)
!3570 = !DILocation(line: 677, column: 7, scope: !3547)
!3571 = !DILocation(line: 678, column: 5, scope: !3566)
!3572 = !DILocation(line: 680, column: 12, scope: !3547)
!3573 = !DILocation(line: 681, column: 14, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 681, column: 7)
!3575 = !DILocation(line: 681, column: 22, scope: !3574)
!3576 = !DILocation(line: 681, column: 33, scope: !3574)
!3577 = !DILocation(line: 681, column: 38, scope: !3574)
!3578 = !DILocation(line: 681, column: 7, scope: !3547)
!3579 = !DILocation(line: 682, column: 5, scope: !3574)
!3580 = !DILocation(line: 684, column: 23, scope: !3547)
!3581 = !DILocation(line: 686, column: 8, scope: !3547)
!3582 = !DILocation(line: 687, column: 28, scope: !3547)
!3583 = !DILocation(line: 688, column: 44, scope: !3547)
!3584 = !DILocation(line: 690, column: 16, scope: !3547)
!3585 = !DILocation(line: 691, column: 21, scope: !3547)
!3586 = !DILocation(line: 695, column: 58, scope: !3547)
!3587 = !DILocation(line: 695, column: 23, scope: !3547)
!3588 = !DILocation(line: 697, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 696, column: 7)
!3590 = !DILocation(line: 691, column: 10, scope: !3547)
!3591 = !DILocation(line: 690, column: 10, scope: !3547)
!3592 = !DILocation(line: 688, column: 19, scope: !3547)
!3593 = !DILocation(line: 687, column: 13, scope: !3547)
!3594 = !DILocation(line: 700, column: 10, scope: !3547)
!3595 = !DILocation(line: 701, column: 9, scope: !3547)
!3596 = !DILocation(line: 701, column: 22, scope: !3547)
!3597 = !DILocation(line: 702, column: 9, scope: !3547)
!3598 = !DILocation(line: 702, column: 23, scope: !3547)
!3599 = !DILocation(line: 703, column: 25, scope: !3547)
!3600 = !DILocation(line: 703, column: 9, scope: !3547)
!3601 = !DILocation(line: 703, column: 23, scope: !3547)
!3602 = !DILocation(line: 704, column: 37, scope: !3547)
!3603 = !DILocation(line: 704, column: 35, scope: !3547)
!3604 = !DILocation(line: 705, column: 30, scope: !3547)
!3605 = !DILocation(line: 705, column: 28, scope: !3547)
!3606 = !DILocation(line: 706, column: 3, scope: !3547)
!3607 = !DILocation(line: 707, column: 1, scope: !3547)
!3608 = distinct !DISubprogram(name: "input_node", scope: !3, file: !3, line: 545, type: !3609, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!471, !1956, !3303, !421}
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3636, !3637, !3640, !3642, !3643}
!3612 = !DILocalVariable(name: "file_data", arg: 1, scope: !3608, file: !3, line: 545, type: !1956)
!3613 = !DILocalVariable(name: "ib", arg: 2, scope: !3608, file: !3, line: 546, type: !3303)
!3614 = !DILocalVariable(name: "tag", arg: 3, scope: !3608, file: !3, line: 547, type: !421)
!3615 = !DILocalVariable(name: "fn_decl", scope: !3608, file: !3, line: 549, type: !475)
!3616 = !DILocalVariable(name: "node", scope: !3608, file: !3, line: 550, type: !471)
!3617 = !DILocalVariable(name: "bp", scope: !3608, file: !3, line: 551, type: !2989)
!3618 = !DILocalVariable(name: "stack_size", scope: !3608, file: !3, line: 552, type: !443)
!3619 = !DILocalVariable(name: "decl_index", scope: !3608, file: !3, line: 553, type: !7)
!3620 = !DILocalVariable(name: "clone_p", scope: !3608, file: !3, line: 554, type: !442)
!3621 = !DILocalVariable(name: "estimated_stack_size", scope: !3608, file: !3, line: 555, type: !443)
!3622 = !DILocalVariable(name: "stack_frame_offset", scope: !3608, file: !3, line: 556, type: !443)
!3623 = !DILocalVariable(name: "ref", scope: !3608, file: !3, line: 557, type: !443)
!3624 = !DILocalVariable(name: "ref2", scope: !3608, file: !3, line: 557, type: !443)
!3625 = !DILocalVariable(name: "estimated_growth", scope: !3608, file: !3, line: 558, type: !443)
!3626 = !DILocalVariable(name: "time", scope: !3608, file: !3, line: 559, type: !443)
!3627 = !DILocalVariable(name: "size", scope: !3608, file: !3, line: 560, type: !443)
!3628 = !DILocalVariable(name: "self_time", scope: !3608, file: !3, line: 561, type: !443)
!3629 = !DILocalVariable(name: "self_size", scope: !3608, file: !3, line: 562, type: !443)
!3630 = !DILocalVariable(name: "time_inlining_benefit", scope: !3608, file: !3, line: 563, type: !443)
!3631 = !DILocalVariable(name: "size_inlining_benefit", scope: !3608, file: !3, line: 564, type: !443)
!3632 = !DILocalVariable(name: "same_body_count", scope: !3608, file: !3, line: 565, type: !529)
!3633 = !DILocalVariable(name: "inlined", scope: !3608, file: !3, line: 566, type: !442)
!3634 = !DILocalVariable(name: "alias_decl", scope: !3635, file: !3, line: 631, type: !475)
!3635 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 630, column: 5)
!3636 = !DILocalVariable(name: "type", scope: !3635, file: !3, line: 632, type: !443)
!3637 = !DILocalVariable(name: "real_alias", scope: !3638, file: !3, line: 638, type: !475)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 637, column: 2)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 636, column: 11)
!3640 = !DILocalVariable(name: "fixed_offset", scope: !3641, file: !3, line: 645, type: !531)
!3641 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 644, column: 9)
!3642 = !DILocalVariable(name: "virtual_value", scope: !3641, file: !3, line: 646, type: !531)
!3643 = !DILocalVariable(name: "real_alias", scope: !3641, file: !3, line: 647, type: !475)
!3644 = !DILocation(line: 0, scope: !3608)
!3645 = !DILocation(line: 568, column: 14, scope: !3608)
!3646 = !DILocation(line: 568, column: 37, scope: !3608)
!3647 = !DILocation(line: 570, column: 16, scope: !3608)
!3648 = !DILocation(line: 571, column: 13, scope: !3608)
!3649 = !DILocation(line: 0, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 573, column: 7)
!3651 = !DILocation(line: 573, column: 7, scope: !3608)
!3652 = !DILocation(line: 574, column: 12, scope: !3650)
!3653 = !DILocation(line: 574, column: 5, scope: !3650)
!3654 = !DILocation(line: 580, column: 17, scope: !3608)
!3655 = !DILocation(line: 580, column: 9, scope: !3608)
!3656 = !DILocation(line: 580, column: 15, scope: !3608)
!3657 = !DILocation(line: 581, column: 8, scope: !3608)
!3658 = !DILocation(line: 583, column: 11, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 583, column: 7)
!3660 = !DILocation(line: 583, column: 7, scope: !3608)
!3661 = !DILocation(line: 585, column: 20, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 584, column: 5)
!3663 = !DILocation(line: 586, column: 19, scope: !3662)
!3664 = !DILocation(line: 587, column: 31, scope: !3662)
!3665 = !DILocation(line: 588, column: 19, scope: !3662)
!3666 = !DILocation(line: 589, column: 31, scope: !3662)
!3667 = !DILocation(line: 590, column: 5, scope: !3662)
!3668 = !DILocation(line: 592, column: 26, scope: !3608)
!3669 = !DILocation(line: 593, column: 24, scope: !3608)
!3670 = !DILocation(line: 594, column: 9, scope: !3608)
!3671 = !DILocation(line: 595, column: 10, scope: !3608)
!3672 = !DILocation(line: 596, column: 10, scope: !3608)
!3673 = !DILocation(line: 597, column: 22, scope: !3608)
!3674 = !DILocation(line: 598, column: 13, scope: !3608)
!3675 = !DILocation(line: 599, column: 10, scope: !3608)
!3676 = !DILocation(line: 600, column: 21, scope: !3608)
!3677 = !DILocation(line: 606, column: 13, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 606, column: 7)
!3679 = !DILocation(line: 606, column: 7, scope: !3678)
!3680 = !DILocation(line: 606, column: 17, scope: !3678)
!3681 = !DILocation(line: 606, column: 21, scope: !3678)
!3682 = !DILocation(line: 606, column: 7, scope: !3608)
!3683 = !DILocation(line: 608, column: 24, scope: !3678)
!3684 = !DILocation(line: 607, column: 5, scope: !3678)
!3685 = !DILocation(line: 610, column: 3, scope: !3608)
!3686 = !DILocation(line: 613, column: 3, scope: !3608)
!3687 = !DILocation(line: 615, column: 39, scope: !3608)
!3688 = !DILocation(line: 615, column: 16, scope: !3608)
!3689 = !DILocation(line: 615, column: 37, scope: !3608)
!3690 = !DILocation(line: 616, column: 37, scope: !3608)
!3691 = !DILocation(line: 616, column: 16, scope: !3608)
!3692 = !DILocation(line: 616, column: 35, scope: !3608)
!3693 = !DILocation(line: 617, column: 16, scope: !3608)
!3694 = !DILocation(line: 617, column: 21, scope: !3608)
!3695 = !DILocation(line: 618, column: 16, scope: !3608)
!3696 = !DILocation(line: 618, column: 21, scope: !3608)
!3697 = !DILocation(line: 621, column: 47, scope: !3608)
!3698 = !DILocation(line: 621, column: 29, scope: !3608)
!3699 = !DILocation(line: 621, column: 16, scope: !3608)
!3700 = !DILocation(line: 621, column: 27, scope: !3608)
!3701 = !DILocation(line: 623, column: 16, scope: !3608)
!3702 = !DILocation(line: 623, column: 33, scope: !3608)
!3703 = !DILocation(line: 624, column: 16, scope: !3608)
!3704 = !DILocation(line: 624, column: 24, scope: !3608)
!3705 = !DILocation(line: 627, column: 47, scope: !3608)
!3706 = !DILocation(line: 627, column: 29, scope: !3608)
!3707 = !DILocation(line: 627, column: 9, scope: !3608)
!3708 = !DILocation(line: 627, column: 27, scope: !3608)
!3709 = !DILocation(line: 629, column: 3, scope: !3608)
!3710 = !DILocation(line: 629, column: 25, scope: !3608)
!3711 = !DILocation(line: 629, column: 28, scope: !3608)
!3712 = !DILocation(line: 633, column: 20, scope: !3635)
!3713 = !DILocation(line: 634, column: 20, scope: !3635)
!3714 = !DILocation(line: 0, scope: !3635)
!3715 = !DILocation(line: 635, column: 14, scope: !3635)
!3716 = !DILocation(line: 636, column: 12, scope: !3639)
!3717 = !DILocation(line: 0, scope: !3639)
!3718 = !DILocation(line: 636, column: 11, scope: !3635)
!3719 = !DILocation(line: 639, column: 17, scope: !3638)
!3720 = !DILocation(line: 640, column: 17, scope: !3638)
!3721 = !DILocation(line: 0, scope: !3638)
!3722 = !DILocation(line: 641, column: 4, scope: !3638)
!3723 = !DILocation(line: 642, column: 2, scope: !3638)
!3724 = !DILocation(line: 0, scope: !3641)
!3725 = !DILocation(line: 646, column: 34, scope: !3641)
!3726 = !DILocation(line: 648, column: 17, scope: !3641)
!3727 = !DILocation(line: 649, column: 17, scope: !3641)
!3728 = !DILocation(line: 650, column: 43, scope: !3641)
!3729 = !DILocation(line: 652, column: 14, scope: !3641)
!3730 = !DILocation(line: 652, column: 8, scope: !3641)
!3731 = !DILocation(line: 652, column: 21, scope: !3641)
!3732 = !DILocation(line: 650, column: 4, scope: !3641)
!3733 = distinct !{!3733, !3709, !3734}
!3734 = !DILocation(line: 655, column: 5, scope: !3608)
!3735 = !DILocation(line: 656, column: 3, scope: !3608)
!3736 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_iterate", scope: !385, file: !385, line: 270, type: !3737, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!443, !2587, !7, !2596}
!3739 = !{!3740, !3741, !3742}
!3740 = !DILocalVariable(name: "vec_", arg: 1, scope: !3736, file: !385, line: 270, type: !2587)
!3741 = !DILocalVariable(name: "ix_", arg: 2, scope: !3736, file: !385, line: 270, type: !7)
!3742 = !DILocalVariable(name: "ptr", arg: 3, scope: !3736, file: !385, line: 270, type: !2596)
!3743 = !DILocation(line: 0, scope: !3736)
!3744 = !DILocation(line: 270, column: 1, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3736, file: !385, line: 270, column: 1)
!3746 = !DILocation(line: 270, column: 1, scope: !3736)
!3747 = !DILocation(line: 270, column: 1, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !385, line: 270, column: 1)
!3749 = !DILocation(line: 270, column: 1, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !385, line: 270, column: 1)
!3751 = !DILocation(line: 0, scope: !3745)
!3752 = distinct !DISubprogram(name: "lto_file_decl_data_get_fn_decl", scope: !408, file: !408, line: 1043, type: !3753, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!475, !1956, !7}
!3755 = !{!3756, !3757, !3758}
!3756 = !DILocalVariable(name: "data", arg: 1, scope: !3752, file: !408, line: 1043, type: !1956)
!3757 = !DILocalVariable(name: "idx", arg: 2, scope: !3752, file: !408, line: 1043, type: !7)
!3758 = !DILocalVariable(name: "state", scope: !3752, file: !408, line: 1043, type: !1960)
!3759 = !DILocation(line: 0, scope: !3752)
!3760 = !DILocation(line: 1043, column: 1, scope: !3752)
!3761 = distinct !DISubprogram(name: "input_overwrite_node", scope: !3, file: !3, line: 501, type: !3762, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !1956, !471, !421, !2989, !7, !7, !7, !7, !7}
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3765 = !DILocalVariable(name: "file_data", arg: 1, scope: !3761, file: !3, line: 501, type: !1956)
!3766 = !DILocalVariable(name: "node", arg: 2, scope: !3761, file: !3, line: 502, type: !471)
!3767 = !DILocalVariable(name: "tag", arg: 3, scope: !3761, file: !3, line: 503, type: !421)
!3768 = !DILocalVariable(name: "bp", arg: 4, scope: !3761, file: !3, line: 504, type: !2989)
!3769 = !DILocalVariable(name: "stack_size", arg: 5, scope: !3761, file: !3, line: 505, type: !7)
!3770 = !DILocalVariable(name: "self_time", arg: 6, scope: !3761, file: !3, line: 506, type: !7)
!3771 = !DILocalVariable(name: "time_inlining_benefit", arg: 7, scope: !3761, file: !3, line: 507, type: !7)
!3772 = !DILocalVariable(name: "self_size", arg: 8, scope: !3761, file: !3, line: 508, type: !7)
!3773 = !DILocalVariable(name: "size_inlining_benefit", arg: 9, scope: !3761, file: !3, line: 509, type: !7)
!3774 = !DILocation(line: 0, scope: !3761)
!3775 = !DILocation(line: 511, column: 15, scope: !3761)
!3776 = !DILocation(line: 511, column: 9, scope: !3761)
!3777 = !DILocation(line: 511, column: 13, scope: !3761)
!3778 = !DILocation(line: 512, column: 58, scope: !3761)
!3779 = !DILocation(line: 512, column: 30, scope: !3761)
!3780 = !DILocation(line: 512, column: 56, scope: !3761)
!3781 = !DILocation(line: 513, column: 30, scope: !3761)
!3782 = !DILocation(line: 513, column: 40, scope: !3761)
!3783 = !DILocation(line: 514, column: 30, scope: !3761)
!3784 = !DILocation(line: 514, column: 52, scope: !3761)
!3785 = !DILocation(line: 515, column: 30, scope: !3761)
!3786 = !DILocation(line: 515, column: 40, scope: !3761)
!3787 = !DILocation(line: 516, column: 30, scope: !3761)
!3788 = !DILocation(line: 516, column: 52, scope: !3761)
!3789 = !DILocation(line: 517, column: 16, scope: !3761)
!3790 = !DILocation(line: 517, column: 21, scope: !3761)
!3791 = !DILocation(line: 518, column: 16, scope: !3761)
!3792 = !DILocation(line: 518, column: 21, scope: !3761)
!3793 = !DILocation(line: 519, column: 15, scope: !3761)
!3794 = !DILocation(line: 519, column: 29, scope: !3761)
!3795 = !DILocation(line: 521, column: 23, scope: !3761)
!3796 = !DILocation(line: 521, column: 15, scope: !3761)
!3797 = !DILocation(line: 521, column: 21, scope: !3761)
!3798 = !DILocation(line: 522, column: 36, scope: !3761)
!3799 = !DILocation(line: 522, column: 34, scope: !3761)
!3800 = !DILocation(line: 523, column: 27, scope: !3761)
!3801 = !DILocation(line: 523, column: 25, scope: !3761)
!3802 = !DILocation(line: 524, column: 27, scope: !3761)
!3803 = !DILocation(line: 524, column: 25, scope: !3761)
!3804 = !DILocation(line: 525, column: 41, scope: !3761)
!3805 = !DILocation(line: 525, column: 39, scope: !3761)
!3806 = !DILocation(line: 526, column: 41, scope: !3761)
!3807 = !DILocation(line: 526, column: 39, scope: !3761)
!3808 = !DILocation(line: 527, column: 37, scope: !3761)
!3809 = !DILocation(line: 527, column: 35, scope: !3761)
!3810 = !DILocation(line: 528, column: 31, scope: !3761)
!3811 = !DILocation(line: 528, column: 29, scope: !3761)
!3812 = !DILocation(line: 529, column: 18, scope: !3761)
!3813 = !DILocation(line: 529, column: 9, scope: !3761)
!3814 = !DILocation(line: 529, column: 16, scope: !3761)
!3815 = !DILocation(line: 530, column: 25, scope: !3761)
!3816 = !DILocation(line: 530, column: 23, scope: !3761)
!3817 = !DILocation(line: 531, column: 31, scope: !3761)
!3818 = !DILocation(line: 531, column: 29, scope: !3761)
!3819 = !DILocation(line: 532, column: 21, scope: !3761)
!3820 = !DILocation(line: 532, column: 19, scope: !3761)
!3821 = !DILocation(line: 533, column: 19, scope: !3761)
!3822 = !DILocation(line: 533, column: 17, scope: !3761)
!3823 = !DILocation(line: 534, column: 20, scope: !3761)
!3824 = !DILocation(line: 534, column: 18, scope: !3761)
!3825 = !DILocation(line: 535, column: 19, scope: !3761)
!3826 = !DILocation(line: 535, column: 17, scope: !3761)
!3827 = !DILocation(line: 536, column: 17, scope: !3761)
!3828 = !DILocation(line: 536, column: 15, scope: !3761)
!3829 = !DILocation(line: 537, column: 33, scope: !3761)
!3830 = !DILocation(line: 537, column: 31, scope: !3761)
!3831 = !DILocation(line: 538, column: 1, scope: !3761)
