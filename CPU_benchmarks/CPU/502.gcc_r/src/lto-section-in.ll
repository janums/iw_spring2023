; ModuleID = 'lto-section-in.bc'
source_filename = "lto-section-in.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
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
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
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
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.lto_input_block = type { i8*, i32, i32 }
%struct.lto_renaming_slot = type { i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"decls\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"function_body\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"static_initializer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cgraph\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ipa_pure_const\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ipa_reference\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"symtab\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wpa_fixup\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"opts\00", align 1
@lto_section_name = dso_local local_unnamed_addr global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16, !dbg !0
@.str.9 = private unnamed_addr constant [75 x i8] c"bytecode stream: trying to read %d bytes after the end of the input buffer\00", align 1
@file_decl_data = internal unnamed_addr global %struct.lto_file_decl_data** null, align 8, !dbg !1910
@get_section_f = internal unnamed_addr global i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)* null, align 8, !dbg !2084
@free_section_f = internal unnamed_addr global void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* null, align 8, !dbg !2091
@.str.10 = private unnamed_addr constant [17 x i8] c"lto-section-in.c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_stats = external dso_local local_unnamed_addr global %struct.lto_stats_d, align 8
@flag_ltrans = external dso_local local_unnamed_addr global i32, align 4
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2117, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2118, metadata !DIExpression()), !dbg !2119
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2120
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2121
  ret i32 %call, !dbg !2122
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2123 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2127
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2128
  ret i32 %call, !dbg !2129
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2183, metadata !DIExpression()), !dbg !2184
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2185
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2185
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2185
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2185
  %cmp = icmp uge i8* %0, %1, !dbg !2185
  %conv1 = zext i1 %cmp to i64, !dbg !2185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2185
  %tobool = icmp eq i64 %expval, 0, !dbg !2185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2185

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2185
  br label %cond.end, !dbg !2185

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2185
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2185
  %2 = load i8, i8* %0, align 1, !dbg !2185
  %conv3 = zext i8 %2 to i32, !dbg !2185
  br label %cond.end, !dbg !2185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2185
  ret i32 %cond, !dbg !2186
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2189, metadata !DIExpression()), !dbg !2190
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2191
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2191
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2191
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2191
  %cmp = icmp uge i8* %0, %1, !dbg !2191
  %conv1 = zext i1 %cmp to i64, !dbg !2191
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2191
  %tobool = icmp eq i64 %expval, 0, !dbg !2191
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2191

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2191
  br label %cond.end, !dbg !2191

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2191
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2191
  %2 = load i8, i8* %0, align 1, !dbg !2191
  %conv3 = zext i8 %2 to i32, !dbg !2191
  br label %cond.end, !dbg !2191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2191
  ret i32 %cond, !dbg !2192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2193 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2194
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2194
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2194
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2194
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2194
  %cmp = icmp uge i8* %1, %2, !dbg !2194
  %conv1 = zext i1 %cmp to i64, !dbg !2194
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2194
  %tobool = icmp eq i64 %expval, 0, !dbg !2194
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2194

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2194
  br label %cond.end, !dbg !2194

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2194
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2194
  %3 = load i8, i8* %1, align 1, !dbg !2194
  %conv3 = zext i8 %3 to i32, !dbg !2194
  br label %cond.end, !dbg !2194

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2194
  ret i32 %cond, !dbg !2195
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2200, metadata !DIExpression()), !dbg !2201
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2202
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2203
  ret i32 %call, !dbg !2204
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2210, metadata !DIExpression()), !dbg !2211
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2212
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2212
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2212
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2212
  %cmp = icmp uge i8* %0, %1, !dbg !2212
  %conv1 = zext i1 %cmp to i64, !dbg !2212
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2212
  %tobool = icmp eq i64 %expval, 0, !dbg !2212
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2212

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2212
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2212
  br label %cond.end, !dbg !2212

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2212
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2212
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2212
  store i8 %conv2, i8* %0, align 1, !dbg !2212
  %conv6 = and i32 %__c, 255, !dbg !2212
  br label %cond.end, !dbg !2212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2212
  ret i32 %cond, !dbg !2213
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2217, metadata !DIExpression()), !dbg !2218
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2219
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2219
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2219
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2219
  %cmp = icmp uge i8* %0, %1, !dbg !2219
  %conv1 = zext i1 %cmp to i64, !dbg !2219
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2219
  %tobool = icmp eq i64 %expval, 0, !dbg !2219
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2219

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2219
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2219
  br label %cond.end, !dbg !2219

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2219
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2219
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2219
  store i8 %conv2, i8* %0, align 1, !dbg !2219
  %conv6 = and i32 %__c, 255, !dbg !2219
  br label %cond.end, !dbg !2219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2219
  ret i32 %cond, !dbg !2220
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2223, metadata !DIExpression()), !dbg !2224
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2225
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2225
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2225
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2225
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2225
  %cmp = icmp uge i8* %1, %2, !dbg !2225
  %conv1 = zext i1 %cmp to i64, !dbg !2225
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2225
  %tobool = icmp eq i64 %expval, 0, !dbg !2225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2225

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2225
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2225
  br label %cond.end, !dbg !2225

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2225
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2225
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2225
  store i8 %conv4, i8* %1, align 1, !dbg !2225
  %conv6 = and i32 %__c, 255, !dbg !2225
  br label %cond.end, !dbg !2225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2225
  ret i32 %cond, !dbg !2226
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2236
  ret i64 %call, !dbg !2237
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2240, metadata !DIExpression()), !dbg !2241
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2242
  %0 = load i32, i32* %_flags, align 8, !dbg !2242
  %and = lshr i32 %0, 4, !dbg !2242
  %and.lobit = and i32 %and, 1, !dbg !2242
  ret i32 %and.lobit, !dbg !2243
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2246, metadata !DIExpression()), !dbg !2247
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2248
  %0 = load i32, i32* %_flags, align 8, !dbg !2248
  %and = lshr i32 %0, 5, !dbg !2248
  %and.lobit = and i32 %and, 1, !dbg !2248
  ret i32 %and.lobit, !dbg !2249
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2253, metadata !DIExpression()), !dbg !2254
  %__c.off = add i32 %__c, 128, !dbg !2255
  %0 = icmp ult i32 %__c.off, 384, !dbg !2255
  br i1 %0, label %cond.true, label %cond.end, !dbg !2255

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2256
  %1 = load i32*, i32** %call, align 8, !dbg !2257
  %idxprom = sext i32 %__c to i64, !dbg !2258
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2258
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2258
  br label %cond.end, !dbg !2259

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2259
  ret i32 %cond, !dbg !2260
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2263, metadata !DIExpression()), !dbg !2264
  %__c.off = add i32 %__c, 128, !dbg !2265
  %0 = icmp ult i32 %__c.off, 384, !dbg !2265
  br i1 %0, label %cond.true, label %cond.end, !dbg !2265

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2266
  %1 = load i32*, i32** %call, align 8, !dbg !2267
  %idxprom = sext i32 %__c to i64, !dbg !2268
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2268
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2268
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2269
  ret i32 %cond, !dbg !2270
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2278
  %conv = trunc i64 %call to i32, !dbg !2279
  ret i32 %conv, !dbg !2280
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2285, metadata !DIExpression()), !dbg !2286
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2287
  ret i64 %call, !dbg !2288
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2294, metadata !DIExpression()), !dbg !2295
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2296
  ret i64 %call, !dbg !2297
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2304, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2305, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2306, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2307, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2308, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 0, metadata !2309, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2310, metadata !DIExpression()), !dbg !2314
  br label %while.cond, !dbg !2315

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2316
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2309, metadata !DIExpression()), !dbg !2314
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2317
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2315

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2318
  %div = lshr i64 %add, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %div, metadata !2311, metadata !DIExpression()), !dbg !2314
  %mul = mul i64 %div, %__size, !dbg !2321
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2312, metadata !DIExpression()), !dbg !2314
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %call, metadata !2313, metadata !DIExpression()), !dbg !2314
  %cmp1 = icmp slt i32 %call, 0, !dbg !2324
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2326

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2327
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2329

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2309, metadata !DIExpression()), !dbg !2314
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2314
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2309, metadata !DIExpression()), !dbg !2314
  br label %while.cond, !dbg !2315, !llvm.loop !2331

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2314
  ret i8* %retval.0, !dbg !2333
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2334 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2340, metadata !DIExpression()), !dbg !2341
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2342
  ret double %call, !dbg !2343
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %base, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2357
  ret i64 %call, !dbg !2358
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 %base, metadata !2367, metadata !DIExpression()), !dbg !2368
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2369
  ret i64 %call, !dbg !2370
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2382, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %base, metadata !2384, metadata !DIExpression()), !dbg !2385
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2386
  ret i64 %call, !dbg !2387
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2388 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %base, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2396
  ret i64 %call, !dbg !2397
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2439, metadata !DIExpression()), !dbg !2440
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2441
  ret i32 %call, !dbg !2442
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2445, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2446, metadata !DIExpression()), !dbg !2447
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2448
  ret i32 %call, !dbg !2449
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2450 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2455, metadata !DIExpression()), !dbg !2456
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2457
  ret i32 %call, !dbg !2458
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2463, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2466, metadata !DIExpression()), !dbg !2467
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2468
  ret i32 %call, !dbg !2469
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2470 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2476, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2478
  ret i32 %call, !dbg !2479
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2480 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2484, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2485, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2487, metadata !DIExpression()), !dbg !2488
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2487, metadata !DIExpression(DW_OP_deref)), !dbg !2488
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2489
  ret i32 %call, !dbg !2490
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2491 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2516, metadata !DIExpression()), !dbg !2517
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2518
  ret i32 %call, !dbg !2519
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2520 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2523, metadata !DIExpression()), !dbg !2524
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2525
  ret i32 %call, !dbg !2526
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2527 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2531, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2532, metadata !DIExpression()), !dbg !2533
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2534
  ret i32 %call, !dbg !2535
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2536 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2540, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2543, metadata !DIExpression()), !dbg !2544
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2545
  ret i32 %call, !dbg !2546
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) local_unnamed_addr #4 !dbg !2547 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2551, metadata !DIExpression()), !dbg !2552
  %p = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 1, !dbg !2553
  %0 = load i32, i32* %p, align 8, !dbg !2553
  %len = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 2, !dbg !2555
  %1 = load i32, i32* %len, align 4, !dbg !2555
  %cmp = icmp ult i32 %0, %1, !dbg !2556
  br i1 %cmp, label %if.end, label %if.then, !dbg !2557

if.then:                                          ; preds = %entry
  %sub = sub i32 %0, %1, !dbg !2558
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 %sub) #6, !dbg !2559
  %.pre = load i32, i32* %p, align 8, !dbg !2560
  br label %if.end, !dbg !2559

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !2560
  %data = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 0, !dbg !2561
  %3 = load i8*, i8** %data, align 8, !dbg !2561
  %inc = add i32 %2, 1, !dbg !2560
  store i32 %inc, i32* %p, align 8, !dbg !2560
  %idxprom = zext i32 %2 to i64, !dbg !2562
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !2562
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2562
  ret i8 %4, !dbg !2563
}

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @lto_input_uleb128(%struct.lto_input_block* %ib) local_unnamed_addr #4 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 0, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()), !dbg !2572
  br label %while.cond, !dbg !2573

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2572
  %result.0 = phi i64 [ %or, %while.cond ], [ 0, %entry ], !dbg !2572
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !2569, metadata !DIExpression()), !dbg !2572
  %call = tail call zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) #7, !dbg !2574
  call void @llvm.dbg.value(metadata i8 %call, metadata !2571, metadata !DIExpression()), !dbg !2572
  %0 = and i8 %call, 127, !dbg !2576
  %and = zext i8 %0 to i64, !dbg !2576
  %shl = shl i64 %and, %indvars.iv, !dbg !2577
  %or = or i64 %result.0, %shl, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %or, metadata !2569, metadata !DIExpression()), !dbg !2572
  %indvars.iv.next = add nuw i64 %indvars.iv, 7, !dbg !2579
  call void @llvm.dbg.value(metadata i32 undef, metadata !2570, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2572
  %cmp = icmp sgt i8 %call, -1, !dbg !2580
  br i1 %cmp, label %if.then, label %while.cond, !dbg !2582, !llvm.loop !2583

if.then:                                          ; preds = %while.cond
  %or.lcssa = phi i64 [ %or, %while.cond ], !dbg !2578
  ret i64 %or.lcssa, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lto_input_widest_uint_uleb128(%struct.lto_input_block* %ib) local_unnamed_addr #4 !dbg !2586 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 0, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()), !dbg !2592
  br label %while.cond, !dbg !2593

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2592
  %result.0 = phi i64 [ %or, %while.cond ], [ 0, %entry ], !dbg !2592
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !2589, metadata !DIExpression()), !dbg !2592
  %call = tail call zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) #7, !dbg !2594
  call void @llvm.dbg.value(metadata i8 %call, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = and i8 %call, 127, !dbg !2596
  %and = zext i8 %0 to i64, !dbg !2596
  %shl = shl i64 %and, %indvars.iv, !dbg !2597
  %or = or i64 %result.0, %shl, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %or, metadata !2589, metadata !DIExpression()), !dbg !2592
  %indvars.iv.next = add nuw i64 %indvars.iv, 7, !dbg !2599
  call void @llvm.dbg.value(metadata i32 undef, metadata !2590, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2592
  %cmp = icmp sgt i8 %call, -1, !dbg !2600
  br i1 %cmp, label %if.then, label %while.cond, !dbg !2602, !llvm.loop !2603

if.then:                                          ; preds = %while.cond
  %or.lcssa = phi i64 [ %or, %while.cond ], !dbg !2598
  ret i64 %or.lcssa, !dbg !2605
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lto_input_sleb128(%struct.lto_input_block* %ib) local_unnamed_addr #4 !dbg !2606 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2610, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 0, metadata !2611, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2612, metadata !DIExpression()), !dbg !2614
  br label %while.cond, !dbg !2615

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2614
  %result.0 = phi i64 [ %or, %while.cond ], [ 0, %entry ], !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !2611, metadata !DIExpression()), !dbg !2614
  %call = tail call zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) #7, !dbg !2616
  %conv = zext i8 %call to i64, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2613, metadata !DIExpression()), !dbg !2614
  %and = and i64 %conv, 127, !dbg !2618
  %shl = shl i64 %and, %indvars.iv, !dbg !2619
  %or = or i64 %result.0, %shl, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %or, metadata !2611, metadata !DIExpression()), !dbg !2614
  %indvars.iv.next = add nuw i64 %indvars.iv, 7, !dbg !2621
  call void @llvm.dbg.value(metadata i32 undef, metadata !2612, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2614
  %cmp = icmp sgt i8 %call, -1, !dbg !2622
  br i1 %cmp, label %if.then, label %while.cond, !dbg !2624, !llvm.loop !2625

if.then:                                          ; preds = %while.cond
  %conv.lcssa = phi i64 [ %conv, %while.cond ], !dbg !2616
  %or.lcssa = phi i64 [ %or, %while.cond ], !dbg !2620
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.cond ], !dbg !2621
  %0 = trunc i64 %indvars.iv.next.lcssa to i32, !dbg !2627
  %cmp3 = icmp ult i32 %0, 64, !dbg !2627
  %and5 = and i64 %conv.lcssa, 64, !dbg !2630
  %tobool = icmp ne i64 %and5, 0, !dbg !2630
  %or.cond = and i1 %cmp3, %tobool, !dbg !2631
  br i1 %or.cond, label %if.then6, label %if.end, !dbg !2631

if.then6:                                         ; preds = %if.then
  %sh_prom7 = and i64 %indvars.iv.next.lcssa, 4294967295, !dbg !2632
  %sub = shl i64 -1, %sh_prom7, !dbg !2633
  %or9 = or i64 %or.lcssa, %sub, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %or9, metadata !2611, metadata !DIExpression()), !dbg !2614
  br label %if.end, !dbg !2635

if.end:                                           ; preds = %if.then6, %if.then
  %result.1 = phi i64 [ %or9, %if.then6 ], [ %or.lcssa, %if.then ], !dbg !2636
  call void @llvm.dbg.value(metadata i64 %result.1, metadata !2611, metadata !DIExpression()), !dbg !2614
  ret i64 %result.1, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_set_in_hooks(%struct.lto_file_decl_data** %data, i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)* %get_f, void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* %free_f) local_unnamed_addr #4 !dbg !2638 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data** %data, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)* %get_f, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* %free_f, metadata !2644, metadata !DIExpression()), !dbg !2645
  store %struct.lto_file_decl_data** %data, %struct.lto_file_decl_data*** @file_decl_data, align 8, !dbg !2646
  store i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)* %get_f, i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)** @get_section_f, align 8, !dbg !2647
  store void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* %free_f, void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)** @free_section_f, align 8, !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_file_decl_data** @lto_get_file_decl_data() local_unnamed_addr #4 !dbg !2650 {
entry:
  %0 = load %struct.lto_file_decl_data**, %struct.lto_file_decl_data*** @file_decl_data, align 8, !dbg !2653
  %tobool = icmp eq %struct.lto_file_decl_data** %0, null, !dbg !2653
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2653

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2653
  %.pre = load %struct.lto_file_decl_data**, %struct.lto_file_decl_data*** @file_decl_data, align 8, !dbg !2654
  br label %cond.end, !dbg !2653

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi %struct.lto_file_decl_data** [ %0, %entry ], [ %.pre, %cond.true ], !dbg !2654
  ret %struct.lto_file_decl_data** %1, !dbg !2655
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @lto_get_section_data(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* %name, i64* %len) local_unnamed_addr #4 !dbg !2656 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2658, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !2659, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %name, metadata !2660, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64* %len, metadata !2661, metadata !DIExpression()), !dbg !2676
  %0 = load i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)*, i8* (%struct.lto_file_decl_data*, i32, i8*, i64*)** @get_section_f, align 8, !dbg !2677
  %call = tail call i8* %0(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* %name, i64* %len) #6, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %call, metadata !2662, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 16, metadata !2663, metadata !DIExpression()), !dbg !2676
  %1 = load i64, i64* %len, align 8, !dbg !2679
  %idxprom = zext i32 %section_type to i64, !dbg !2680
  %arrayidx = getelementptr inbounds %struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 5, i64 %idxprom, !dbg !2680
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2681
  %add = add i64 %2, %1, !dbg !2681
  store i64 %add, i64* %arrayidx, align 8, !dbg !2681
  ret i8* %call, !dbg !2682
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_free_section_data(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* %name, i8* %data, i64 %len) local_unnamed_addr #4 !dbg !2683 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2685, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !2686, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %name, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %data, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %len, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 16, metadata !2690, metadata !DIExpression()), !dbg !2693
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 -16, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2692, metadata !DIExpression()), !dbg !2693
  %0 = load void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)*, void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)** @free_section_f, align 8, !dbg !2695
  %tobool = icmp eq void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* %0, null, !dbg !2695
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2695

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2695
  %.pre = load void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)*, void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)** @free_section_f, align 8, !dbg !2693
  br label %cond.end, !dbg !2695

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi void (%struct.lto_file_decl_data*, i32, i8*, i8*, i64)* [ %0, %entry ], [ %.pre, %cond.true ], !dbg !2693
  %2 = load i32, i32* @flag_ltrans, align 4, !dbg !2696
  %tobool1 = icmp eq i32 %2, 0, !dbg !2696
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2698

if.then:                                          ; preds = %cond.end
  tail call void %1(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* %name, i8* %data, i64 %len) #6, !dbg !2699
  br label %cleanup.cont, !dbg !2701

if.end:                                           ; preds = %cond.end
  %data2 = bitcast i8* %add.ptr to i8**, !dbg !2702
  %3 = load i8*, i8** %data2, align 8, !dbg !2702
  %len3 = getelementptr inbounds i8, i8* %data, i64 -8, !dbg !2703
  %4 = bitcast i8* %len3 to i64*, !dbg !2703
  %5 = load i64, i64* %4, align 8, !dbg !2703
  tail call void %1(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* %name, i8* %3, i64 %5) #6, !dbg !2704
  tail call void @free(i8* nonnull %add.ptr) #6, !dbg !2705
  br label %cleanup.cont, !dbg !2706

cleanup.cont:                                     ; preds = %if.then, %if.end
  ret void, !dbg !2706
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8** %datar, i64* %len) local_unnamed_addr #4 !dbg !2707 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2712, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !2713, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8** %datar, metadata !2714, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64* %len, metadata !2715, metadata !DIExpression()), !dbg !2720
  %call = tail call i8* @lto_get_section_data(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* null, i64* %len) #7, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %call, metadata !2716, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* %call, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 16, metadata !2719, metadata !DIExpression()), !dbg !2720
  %tobool = icmp eq i8* %call, null, !dbg !2722
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2724

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call, metadata !2717, metadata !DIExpression()), !dbg !2720
  %call1 = tail call i8* @xmalloc(i64 16) #6, !dbg !2725
  %0 = bitcast i8* %call1 to %struct.lto_input_block*, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %0, metadata !2718, metadata !DIExpression()), !dbg !2720
  store i8* %call, i8** %datar, align 8, !dbg !2726
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2727
  %data2 = bitcast i8* %call1 to i8**, !dbg !2727
  store i8* %add.ptr, i8** %data2, align 8, !dbg !2727
  %p = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !2727
  %1 = bitcast i8* %p to i32*, !dbg !2727
  store i32 0, i32* %1, align 8, !dbg !2727
  %main_size = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2727
  %2 = bitcast i8* %main_size to i32*, !dbg !2727
  %3 = load i32, i32* %2, align 4, !dbg !2727
  %len3 = getelementptr inbounds i8, i8* %call1, i64 12, !dbg !2727
  %4 = bitcast i8* %len3 to i32*, !dbg !2727
  store i32 %3, i32* %4, align 4, !dbg !2727
  br label %cleanup, !dbg !2729

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.lto_input_block* [ %0, %if.end ], [ null, %entry ], !dbg !2720
  ret %struct.lto_input_block* %retval.0, !dbg !2730
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_destroy_simple_input_block(%struct.lto_file_decl_data* %file_data, i32 %section_type, %struct.lto_input_block* %ib, i8* %data, i64 %len) local_unnamed_addr #4 !dbg !2731 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2735, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !2736, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %data, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %len, metadata !2739, metadata !DIExpression()), !dbg !2740
  %0 = bitcast %struct.lto_input_block* %ib to i8*, !dbg !2741
  tail call void @free(i8* %0) #6, !dbg !2742
  tail call void @lto_free_section_data(%struct.lto_file_decl_data* %file_data, i32 %section_type, i8* null, i8* %data, i64 %len) #7, !dbg !2743
  ret void, !dbg !2744
}

; Function Attrs: nounwind uwtable
define dso_local %struct.htab* @lto_create_renaming_table() local_unnamed_addr #4 !dbg !2745 {
entry:
  %call = tail call %struct.htab* @htab_create(i64 37, i32 (i8*)* nonnull @hash_name, i32 (i8*, i8*)* nonnull @eq_name, void (i8*)* nonnull @renaming_slot_free) #6, !dbg !2748
  ret %struct.htab* %call, !dbg !2749
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_name(i8* %p) #4 !dbg !2750 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %p, metadata !2753, metadata !DIExpression()), !dbg !2754
  %new_name = getelementptr inbounds i8, i8* %p, i64 8, !dbg !2755
  %0 = bitcast i8* %new_name to i8**, !dbg !2755
  %1 = load i8*, i8** %0, align 8, !dbg !2755
  %call = tail call i32 @htab_hash_string(i8* %1) #6, !dbg !2756
  ret i32 %call, !dbg !2757
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_name(i8* %p1, i8* %p2) #4 !dbg !2758 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2760, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2763, metadata !DIExpression()), !dbg !2764
  %new_name = getelementptr inbounds i8, i8* %p1, i64 8, !dbg !2765
  %0 = bitcast i8* %new_name to i8**, !dbg !2765
  %1 = load i8*, i8** %0, align 8, !dbg !2765
  %new_name1 = getelementptr inbounds i8, i8* %p2, i64 8, !dbg !2766
  %2 = bitcast i8* %new_name1 to i8**, !dbg !2766
  %3 = load i8*, i8** %2, align 8, !dbg !2766
  %call = tail call i32 @strcmp(i8* %1, i8* %3) #6, !dbg !2767
  %cmp = icmp eq i32 %call, 0, !dbg !2768
  %conv = zext i1 %cmp to i32, !dbg !2768
  ret i32 %conv, !dbg !2769
}

; Function Attrs: nounwind uwtable
define internal void @renaming_slot_free(i8* %slot) #4 !dbg !2770 {
entry:
  call void @llvm.dbg.value(metadata i8* %slot, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8* %slot, metadata !2773, metadata !DIExpression()), !dbg !2774
  %old_name = bitcast i8* %slot to i8**, !dbg !2775
  %0 = load i8*, i8** %old_name, align 8, !dbg !2775
  tail call void @free(i8* %0) #6, !dbg !2776
  %new_name = getelementptr inbounds i8, i8* %slot, i64 8, !dbg !2777
  %1 = bitcast i8* %new_name to i8**, !dbg !2777
  %2 = load i8*, i8** %1, align 8, !dbg !2777
  tail call void @free(i8* %2) #6, !dbg !2778
  tail call void @free(i8* %slot) #6, !dbg !2779
  ret void, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_record_renamed_decl(%struct.lto_file_decl_data* %decl_data, i8* %old_name, i8* %new_name) local_unnamed_addr #4 !dbg !2781 {
entry:
  %r_slot = alloca %struct.lto_renaming_slot, align 8
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %decl_data, metadata !2785, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %old_name, metadata !2786, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %new_name, metadata !2787, metadata !DIExpression()), !dbg !2793
  %0 = bitcast %struct.lto_renaming_slot* %r_slot to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2794
  %new_name1 = getelementptr inbounds %struct.lto_renaming_slot, %struct.lto_renaming_slot* %r_slot, i64 0, i32 1, !dbg !2795
  store i8* %new_name, i8** %new_name1, align 8, !dbg !2796
  %renaming_hash_table = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %decl_data, i64 0, i32 7, !dbg !2797
  %1 = load %struct.htab*, %struct.htab** %renaming_hash_table, align 8, !dbg !2797
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 1) #6, !dbg !2798
  call void @llvm.dbg.value(metadata i8** %call, metadata !2788, metadata !DIExpression()), !dbg !2793
  %2 = load i8*, i8** %call, align 8, !dbg !2799
  %cmp = icmp eq i8* %2, null, !dbg !2800
  br i1 %cmp, label %if.then, label %if.else, !dbg !2801

if.then:                                          ; preds = %entry
  %call2 = call i8* @xmalloc(i64 16) #6, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2790, metadata !DIExpression()), !dbg !2803
  %call3 = call i8* @xstrdup(i8* %old_name) #6, !dbg !2804
  %old_name4 = bitcast i8* %call2 to i8**, !dbg !2805
  store i8* %call3, i8** %old_name4, align 8, !dbg !2806
  %call5 = call i8* @xstrdup(i8* %new_name) #6, !dbg !2807
  %new_name6 = getelementptr inbounds i8, i8* %call2, i64 8, !dbg !2808
  %3 = bitcast i8* %new_name6 to i8**, !dbg !2808
  store i8* %call5, i8** %3, align 8, !dbg !2809
  store i8* %call2, i8** %call, align 8, !dbg !2810
  br label %if.end, !dbg !2811

if.else:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2812
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2813
  ret void, !dbg !2813
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @lto_get_decl_name_mapping(%struct.lto_file_decl_data* %decl_data, i8* %name) local_unnamed_addr #4 !dbg !2814 {
entry:
  %r_slot = alloca %struct.lto_renaming_slot, align 8
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %decl_data, metadata !2818, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %name, metadata !2819, metadata !DIExpression()), !dbg !2823
  %renaming_hash_table1 = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %decl_data, i64 0, i32 7, !dbg !2824
  %0 = load %struct.htab*, %struct.htab** %renaming_hash_table1, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.htab* %0, metadata !2820, metadata !DIExpression()), !dbg !2823
  %1 = bitcast %struct.lto_renaming_slot* %r_slot to i8*, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2825
  %new_name = getelementptr inbounds %struct.lto_renaming_slot, %struct.lto_renaming_slot* %r_slot, i64 0, i32 1, !dbg !2826
  store i8* %name, i8** %new_name, align 8, !dbg !2827
  %call = call i8* @htab_find(%struct.htab* %0, i8* nonnull %1) #6, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %call, metadata !2821, metadata !DIExpression()), !dbg !2823
  %tobool = icmp eq i8* %call, null, !dbg !2829
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2831

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call, metadata !2821, metadata !DIExpression()), !dbg !2823
  %old_name = bitcast i8* %call to i8**, !dbg !2832
  %2 = load i8*, i8** %old_name, align 8, !dbg !2832
  br label %cleanup, !dbg !2833

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ %name, %entry ], !dbg !2834
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2835
  ret i8* %retval.0, !dbg !2835
}

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_in_decl_state* @lto_new_in_decl_state() local_unnamed_addr #4 !dbg !2836 {
entry:
  %call = tail call i8* @xmalloc(i64 120) #6, !dbg !2841
  %0 = bitcast i8* %call to %struct.lto_in_decl_state*, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.lto_in_decl_state* %0, metadata !2840, metadata !DIExpression()), !dbg !2843
  %call1 = tail call i8* @memset(i8* %call, i32 0, i64 120) #6, !dbg !2844
  ret %struct.lto_in_decl_state* %0, !dbg !2845
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_delete_in_decl_state(%struct.lto_in_decl_state* %state) local_unnamed_addr #4 !dbg !2846 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_in_decl_state* %state, metadata !2850, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 0, metadata !2851, metadata !DIExpression()), !dbg !2852
  br label %for.cond, !dbg !2853

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2855
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2851, metadata !DIExpression()), !dbg !2852
  %exitcond = icmp eq i64 %indvars.iv, 7, !dbg !2856
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2858

for.body:                                         ; preds = %for.cond
  %trees = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %state, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !2859
  %0 = load %union.tree_node**, %union.tree_node*** %trees, align 8, !dbg !2859
  %tobool = icmp eq %union.tree_node** %0, null, !dbg !2861
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2862

if.then:                                          ; preds = %for.body
  %1 = bitcast %union.tree_node** %0 to i8*, !dbg !2862
  tail call void @free(i8* nonnull %1) #6, !dbg !2863
  br label %for.inc, !dbg !2863

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i32 undef, metadata !2851, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2852
  br label %for.cond, !dbg !2865, !llvm.loop !2866

for.end:                                          ; preds = %for.cond
  %2 = bitcast %struct.lto_in_decl_state* %state to i8*, !dbg !2868
  tail call void @free(i8* %2) #6, !dbg !2869
  ret void, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_hash_in_decl_state(i8* %p) local_unnamed_addr #4 !dbg !2871 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %p, metadata !2874, metadata !DIExpression()), !dbg !2875
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !2876
  %fn_decl = getelementptr inbounds i8, i8* %p, i64 112, !dbg !2877
  %1 = bitcast i8* %fn_decl to i8**, !dbg !2877
  %2 = load i8*, i8** %1, align 8, !dbg !2877
  %call = tail call i32 %0(i8* %2) #6, !dbg !2876
  ret i32 %call, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_eq_in_decl_state(i8* %p1, i8* %p2) local_unnamed_addr #4 !dbg !2879 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2884, metadata !DIExpression()), !dbg !2885
  %fn_decl = getelementptr inbounds i8, i8* %p1, i64 112, !dbg !2886
  %0 = bitcast i8* %fn_decl to %union.tree_node**, !dbg !2886
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2886
  %fn_decl1 = getelementptr inbounds i8, i8* %p2, i64 112, !dbg !2887
  %2 = bitcast i8* %fn_decl1 to %union.tree_node**, !dbg !2887
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2887
  %cmp = icmp eq %union.tree_node* %1, %3, !dbg !2888
  %conv = zext i1 %cmp to i32, !dbg !2888
  ret i32 %conv, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_in_decl_state* @lto_get_function_in_decl_state(%struct.lto_file_decl_data* %file_data, %union.tree_node* %func) local_unnamed_addr #4 !dbg !2890 {
entry:
  %temp = alloca %struct.lto_in_decl_state, align 8
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2894, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata %union.tree_node* %func, metadata !2895, metadata !DIExpression()), !dbg !2898
  %0 = bitcast %struct.lto_in_decl_state* %temp to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #8, !dbg !2899
  %fn_decl = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %temp, i64 0, i32 1, !dbg !2900
  store %union.tree_node* %func, %union.tree_node** %fn_decl, align 8, !dbg !2901
  %function_decl_states = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %file_data, i64 0, i32 3, !dbg !2902
  %1 = load %struct.htab*, %struct.htab** %function_decl_states, align 8, !dbg !2902
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !2903
  call void @llvm.dbg.value(metadata i8** %call, metadata !2897, metadata !DIExpression()), !dbg !2898
  %tobool = icmp eq i8** %call, null, !dbg !2904
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2904

cond.true:                                        ; preds = %entry
  %2 = bitcast i8** %call to %struct.lto_in_decl_state**, !dbg !2905
  %3 = load %struct.lto_in_decl_state*, %struct.lto_in_decl_state** %2, align 8, !dbg !2905
  br label %cond.end, !dbg !2904

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.lto_in_decl_state* [ %3, %cond.true ], [ null, %entry ], !dbg !2904
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #8, !dbg !2906
  ret %struct.lto_in_decl_state* %cond, !dbg !2907
}

declare dso_local i32 @htab_hash_string(i8*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!2100, !2101, !2102}
!llvm.ident = !{!2103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lto_section_name", scope: !2, file: !3, line: 49, type: !2097, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !421, globals: !1909, nameTableKind: None)
!3 = !DIFile(filename: "lto-section-in.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !336, !342, !347, !352, !370, !377, !384, !407}
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
!421 = !{!422, !423, !424, !425, !428, !429, !431, !432, !426, !441, !460, !466, !471, !1905, !1907, !1317, !1107}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!424 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!431 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_data_header", file: !3, line: 195, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !3, line: 197, baseType: !429, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !434, file: !3, line: 198, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !439, line: 46, baseType: !440)
!439 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!440 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_header", file: !408, line: 600, size: 128, elements: !444)
!444 = !{!445, !456, !459}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lto_header", scope: !443, file: !408, line: 603, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_header", file: !408, line: 387, size: 64, elements: !447)
!447 = !{!448, !454, !455}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !446, file: !408, line: 389, baseType: !449, size: 16)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !450, line: 25, baseType: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !452, line: 39, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!453 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !446, file: !408, line: 390, baseType: !449, size: 16, offset: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !446, file: !408, line: 391, baseType: !407, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "main_size", scope: !443, file: !408, line: 606, baseType: !457, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !450, line: 26, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !452, line: 41, baseType: !424)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !443, file: !408, line: 609, baseType: !457, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !408, line: 363, size: 128, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !461, file: !408, line: 365, baseType: !429, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !461, file: !408, line: 366, baseType: !7, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !461, file: !408, line: 367, baseType: !7, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_renaming_slot", file: !3, line: 336, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "old_name", scope: !467, file: !3, line: 338, baseType: !429, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "new_name", scope: !467, file: !3, line: 339, baseType: !429, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !408, line: 502, size: 960, elements: !473)
!473 = !{!474, !1904}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !472, file: !408, line: 505, baseType: !475, size: 896)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 896, elements: !1902)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !408, line: 473, size: 128, elements: !477)
!477 = !{!478, !1901}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !476, file: !408, line: 476, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !481, line: 56, baseType: !482)
!481 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !484)
!484 = !{!485, !518, !524, !535, !554, !565, !570, !579, !585, !598, !610, !648, !1138, !1166, !1183, !1184, !1189, !1198, !1204, !1209, !1213, !1217, !1552, !1599, !1605, !1611, !1618, !1631, !1645, !1662, !1674, !1696, !1711, !1883}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !483, file: !135, line: 3372, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !486, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !486, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !486, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !486, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !486, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !486, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !486, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !486, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !486, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !486, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !486, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !486, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !486, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !486, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !486, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !486, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !486, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !486, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !486, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !486, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !486, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !486, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !486, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !486, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !486, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !486, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !486, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !486, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !486, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !486, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !483, file: !135, line: 3373, baseType: !519, size: 192)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !519, file: !135, line: 403, baseType: !486, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !519, file: !135, line: 404, baseType: !480, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !135, line: 405, baseType: !480, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !483, file: !135, line: 3374, baseType: !525, size: 320)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !525, file: !135, line: 1385, baseType: !519, size: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !525, file: !135, line: 1386, baseType: !529, size: 128, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !530, line: 58, baseType: !531)
!530 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 54, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !531, file: !530, line: 56, baseType: !440, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !531, file: !530, line: 57, baseType: !431, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !483, file: !135, line: 3375, baseType: !536, size: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !536, file: !135, line: 1398, baseType: !519, size: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !536, file: !135, line: 1399, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !542, line: 52, size: 256, elements: !543)
!542 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!543 = !{!544, !545, !546, !547, !548, !549, !550}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !541, file: !542, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !541, file: !542, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !541, file: !542, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !541, file: !542, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !541, file: !542, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !541, file: !542, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !541, file: !542, line: 62, baseType: !551, size: 192, offset: 64)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 3)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !483, file: !135, line: 3376, baseType: !555, size: 256)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !555, file: !135, line: 1409, baseType: !519, size: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !555, file: !135, line: 1410, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !561, line: 27, size: 192, elements: !562)
!561 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !560, file: !561, line: 29, baseType: !529, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !560, file: !561, line: 30, baseType: !5, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !483, file: !135, line: 3377, baseType: !566, size: 256)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !566, file: !135, line: 1438, baseType: !519, size: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !566, file: !135, line: 1439, baseType: !480, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !483, file: !135, line: 3378, baseType: !571, size: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !572)
!572 = !{!573, !574, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !571, file: !135, line: 1419, baseType: !519, size: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !571, file: !135, line: 1420, baseType: !424, size: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !571, file: !135, line: 1421, baseType: !576, size: 8, offset: 224)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 8, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 1)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !483, file: !135, line: 3379, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !135, line: 1429, baseType: !519, size: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !580, file: !135, line: 1430, baseType: !480, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !580, file: !135, line: 1431, baseType: !480, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !483, file: !135, line: 3380, baseType: !586, size: 320)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !586, file: !135, line: 1461, baseType: !519, size: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !586, file: !135, line: 1462, baseType: !590, size: 128, offset: 192)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !591, line: 31, size: 128, elements: !592)
!591 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!592 = !{!593, !596, !597}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !590, file: !591, line: 32, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !590, file: !591, line: 33, baseType: !7, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !590, file: !591, line: 34, baseType: !7, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !483, file: !135, line: 3381, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !600)
!600 = !{!601, !602, !607, !608, !609}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !599, file: !135, line: 2508, baseType: !519, size: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !599, file: !135, line: 2509, baseType: !603, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !604, line: 58, baseType: !605)
!604 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !606, line: 44, baseType: !7)
!606 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !599, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !135, line: 2511, baseType: !480, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !599, file: !135, line: 2512, baseType: !480, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !483, file: !135, line: 3382, baseType: !611, size: 896)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !135, line: 2653, baseType: !599, size: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !611, file: !135, line: 2654, baseType: !480, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !611, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !611, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !611, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !611, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !611, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !611, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !611, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !611, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !611, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !611, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !611, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !611, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !611, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !611, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !611, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !611, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !611, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !611, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !611, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !611, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !611, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !611, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !611, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !611, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !611, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !611, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !611, file: !135, line: 2705, baseType: !480, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !611, file: !135, line: 2706, baseType: !480, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !611, file: !135, line: 2707, baseType: !480, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !611, file: !135, line: 2708, baseType: !480, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !611, file: !135, line: 2711, baseType: !646, size: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !483, file: !135, line: 3383, baseType: !649, size: 960)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !649, file: !135, line: 2757, baseType: !611, size: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !649, file: !135, line: 2758, baseType: !653, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !481, line: 50, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !656, line: 240, size: 384, elements: !657)
!656 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !655, file: !656, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !655, file: !656, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !655, file: !656, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !655, file: !656, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !655, file: !656, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !655, file: !656, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !655, file: !656, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !655, file: !656, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !655, file: !656, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !655, file: !656, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !655, file: !656, line: 321, baseType: !669, size: 320, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !656, line: 315, size: 320, elements: !670)
!670 = !{!671, !1071, !1073, !1136, !1137}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !669, file: !656, line: 316, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 64, elements: !577)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !656, line: 183, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !656, line: 166, size: 64, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !688, !689, !701, !704, !764, !765, !1048, !1061, !1068}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !674, file: !656, line: 168, baseType: !424, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !674, file: !656, line: 169, baseType: !7, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !674, file: !656, line: 170, baseType: !429, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !674, file: !656, line: 171, baseType: !653, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !674, file: !656, line: 172, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !481, line: 53, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !656, line: 359, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !683, file: !656, line: 360, baseType: !424, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !683, file: !656, line: 361, baseType: !687, size: 64, offset: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 64, elements: !577)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !674, file: !656, line: 173, baseType: !5, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !674, file: !656, line: 174, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !656, line: 133, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 115, size: 32, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !691, file: !656, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !691, file: !656, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !691, file: !656, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !691, file: !656, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !691, file: !656, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !691, file: !656, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !691, file: !656, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !691, file: !656, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !674, file: !656, line: 175, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !656, line: 175, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !674, file: !656, line: 176, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !707, line: 75, size: 256, elements: !708)
!707 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!708 = !{!709, !723, !724, !725}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !707, line: 76, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !707, line: 68, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !707, line: 63, size: 320, elements: !713)
!713 = !{!714, !716, !717, !718}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !707, line: 64, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !712, file: !707, line: 65, baseType: !715, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !712, file: !707, line: 66, baseType: !7, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !712, file: !707, line: 67, baseType: !719, size: 128, offset: 192)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !721)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !707, line: 29, baseType: !440)
!721 = !{!722}
!722 = !DISubrange(count: 2)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !706, file: !707, line: 77, baseType: !710, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !706, file: !707, line: 78, baseType: !7, size: 32, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !706, file: !707, line: 79, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !707, line: 49, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !707, line: 45, size: 832, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !728, file: !707, line: 46, baseType: !715, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !728, file: !707, line: 47, baseType: !705, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !728, file: !707, line: 48, baseType: !733, size: 704, offset: 128)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !734, line: 164, size: 704, elements: !735)
!734 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!735 = !{!736, !737, !747, !748, !749, !750, !751, !752, !756, !760, !761, !762, !763}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !733, file: !734, line: 166, baseType: !431, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !733, file: !734, line: 167, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !734, line: 157, size: 192, elements: !740)
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !739, file: !734, line: 159, baseType: !426, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !739, file: !734, line: 160, baseType: !738, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !739, file: !734, line: 161, baseType: !744, size: 32, offset: 128)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 32, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 4)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !733, file: !734, line: 168, baseType: !426, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !733, file: !734, line: 169, baseType: !426, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !733, file: !734, line: 170, baseType: !426, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !733, file: !734, line: 171, baseType: !431, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !733, file: !734, line: 172, baseType: !424, size: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !733, file: !734, line: 176, baseType: !753, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!738, !428, !431}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !733, file: !734, line: 177, baseType: !757, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !428, !738}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !733, file: !734, line: 178, baseType: !428, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !733, file: !734, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !733, file: !734, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !733, file: !734, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !674, file: !656, line: 177, baseType: !480, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !674, file: !656, line: 178, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !337, line: 217, size: 832, elements: !768)
!768 = !{!769, !1013, !1014, !1015, !1018, !1022, !1023, !1024, !1042, !1043, !1044, !1045, !1046, !1047}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !767, file: !337, line: 219, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !337, line: 151, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !337, line: 151, size: 128, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !772, file: !337, line: 151, baseType: !775, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !337, line: 150, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !337, line: 150, size: 128, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !776, file: !337, line: 150, baseType: !7, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !776, file: !337, line: 150, baseType: !7, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !776, file: !337, line: 150, baseType: !781, size: 64, offset: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 64, elements: !577)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !481, line: 108, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !337, line: 122, size: 512, elements: !785)
!785 = !{!786, !787, !788, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !784, file: !337, line: 124, baseType: !766, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !784, file: !337, line: 125, baseType: !766, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !784, file: !337, line: 131, baseType: !789, size: 64, offset: 128)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !337, line: 128, size: 64, elements: !790)
!790 = !{!791, !1004}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !789, file: !337, line: 129, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !481, line: 66, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !795, line: 143, size: 192, elements: !796)
!795 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!796 = !{!797, !1002, !1003}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !794, file: !795, line: 145, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !481, line: 69, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !795, line: 136, size: 192, elements: !801)
!801 = !{!802, !1000, !1001}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !800, file: !795, line: 137, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !481, line: 58, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !795, line: 737, size: 768, elements: !806)
!806 = !{!807, !824, !857, !863, !868, !873, !880, !886, !892, !897, !911, !916, !922, !927, !937, !942, !958, !965, !972, !978, !983, !989, !995}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !805, file: !795, line: 738, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !795, line: 271, size: 256, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !808, file: !795, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !808, file: !795, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !808, file: !795, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !808, file: !795, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !808, file: !795, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !808, file: !795, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !808, file: !795, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !808, file: !795, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !808, file: !795, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !808, file: !795, line: 312, baseType: !7, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !808, file: !795, line: 316, baseType: !603, size: 32, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !808, file: !795, line: 319, baseType: !7, size: 32, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !808, file: !795, line: 323, baseType: !766, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !808, file: !795, line: 327, baseType: !480, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !805, file: !795, line: 739, baseType: !825, size: 448)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !795, line: 350, size: 448, elements: !826)
!826 = !{!827, !855}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !825, file: !795, line: 353, baseType: !828, size: 384)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !795, line: 333, size: 384, elements: !829)
!829 = !{!830, !831, !838}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !828, file: !795, line: 336, baseType: !808, size: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !828, file: !795, line: 343, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !834, line: 37, size: 128, elements: !835)
!834 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !834, line: 39, baseType: !832, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !833, file: !834, line: 40, baseType: !479, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !828, file: !795, line: 344, baseType: !839, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !834, line: 45, size: 320, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !840, file: !834, line: 47, baseType: !839, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !840, file: !834, line: 48, baseType: !844, size: 256, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !845)
!845 = !{!846, !848, !849, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !844, file: !135, line: 1884, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !135, line: 1885, baseType: !847, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !844, file: !135, line: 1891, baseType: !850, size: 64, offset: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !135, line: 1891, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !850, file: !135, line: 1891, baseType: !803, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !850, file: !135, line: 1891, baseType: !480, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !844, file: !135, line: 1892, baseType: !479, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !825, file: !795, line: 359, baseType: !856, size: 64, offset: 384)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 64, elements: !577)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !805, file: !795, line: 740, baseType: !858, size: 512)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !795, line: 365, size: 512, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !858, file: !795, line: 368, baseType: !828, size: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !858, file: !795, line: 373, baseType: !480, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !858, file: !795, line: 374, baseType: !480, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !805, file: !795, line: 741, baseType: !864, size: 576)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !795, line: 380, size: 576, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !864, file: !795, line: 383, baseType: !858, size: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !864, file: !795, line: 389, baseType: !856, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !805, file: !795, line: 742, baseType: !869, size: 320)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !795, line: 395, size: 320, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !869, file: !795, line: 397, baseType: !808, size: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !869, file: !795, line: 400, baseType: !792, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !805, file: !795, line: 743, baseType: !874, size: 448)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !795, line: 406, size: 448, elements: !875)
!875 = !{!876, !877, !878, !879}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !874, file: !795, line: 408, baseType: !808, size: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !874, file: !795, line: 412, baseType: !480, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !874, file: !795, line: 420, baseType: !480, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !874, file: !795, line: 423, baseType: !792, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !805, file: !795, line: 744, baseType: !881, size: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !795, line: 429, size: 384, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !881, file: !795, line: 431, baseType: !808, size: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !881, file: !795, line: 434, baseType: !480, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !881, file: !795, line: 437, baseType: !792, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !805, file: !795, line: 745, baseType: !887, size: 384)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !795, line: 443, size: 384, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !887, file: !795, line: 445, baseType: !808, size: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !887, file: !795, line: 449, baseType: !480, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !887, file: !795, line: 453, baseType: !792, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !805, file: !795, line: 746, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !795, line: 459, size: 320, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !893, file: !795, line: 461, baseType: !808, size: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !893, file: !795, line: 464, baseType: !480, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !805, file: !795, line: 747, baseType: !898, size: 768)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !795, line: 469, size: 768, elements: !899)
!899 = !{!900, !901, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !898, file: !795, line: 471, baseType: !808, size: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !898, file: !795, line: 474, baseType: !7, size: 32, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !898, file: !795, line: 475, baseType: !7, size: 32, offset: 288)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !898, file: !795, line: 478, baseType: !480, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !898, file: !795, line: 481, baseType: !905, size: 384, offset: 384)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 384, elements: !577)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !906, file: !135, line: 1920, baseType: !844, size: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !906, file: !135, line: 1921, baseType: !480, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !906, file: !135, line: 1922, baseType: !603, size: 32, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !805, file: !795, line: 748, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !795, line: 487, size: 320, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !912, file: !795, line: 490, baseType: !808, size: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !912, file: !795, line: 494, baseType: !424, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !805, file: !795, line: 749, baseType: !917, size: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !795, line: 500, size: 384, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !917, file: !795, line: 502, baseType: !808, size: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !917, file: !795, line: 506, baseType: !792, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !917, file: !795, line: 510, baseType: !792, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !805, file: !795, line: 750, baseType: !923, size: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !795, line: 529, size: 320, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !923, file: !795, line: 531, baseType: !808, size: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !923, file: !795, line: 540, baseType: !792, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !805, file: !795, line: 751, baseType: !928, size: 704)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !795, line: 546, size: 704, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !928, file: !795, line: 549, baseType: !858, size: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !928, file: !795, line: 553, baseType: !429, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !928, file: !795, line: 557, baseType: !423, size: 8, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !928, file: !795, line: 558, baseType: !423, size: 8, offset: 584)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !928, file: !795, line: 559, baseType: !423, size: 8, offset: 592)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !928, file: !795, line: 560, baseType: !423, size: 8, offset: 600)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !928, file: !795, line: 566, baseType: !856, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !805, file: !795, line: 752, baseType: !938, size: 384)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !795, line: 571, size: 384, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !938, file: !795, line: 573, baseType: !869, size: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !938, file: !795, line: 577, baseType: !480, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !805, file: !795, line: 753, baseType: !943, size: 576)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !795, line: 600, size: 576, elements: !944)
!944 = !{!945, !946, !947, !948, !957}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !943, file: !795, line: 602, baseType: !869, size: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !943, file: !795, line: 605, baseType: !480, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !943, file: !795, line: 609, baseType: !438, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !943, file: !795, line: 612, baseType: !949, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !795, line: 581, size: 320, elements: !951)
!951 = !{!952, !953, !954, !955, !956}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !950, file: !795, line: 583, baseType: !134, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !950, file: !795, line: 586, baseType: !480, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !950, file: !795, line: 589, baseType: !480, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !950, file: !795, line: 592, baseType: !480, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !950, file: !795, line: 595, baseType: !480, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !943, file: !795, line: 616, baseType: !792, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !805, file: !795, line: 754, baseType: !959, size: 512)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !795, line: 622, size: 512, elements: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !959, file: !795, line: 624, baseType: !869, size: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !959, file: !795, line: 628, baseType: !480, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !959, file: !795, line: 632, baseType: !480, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !959, file: !795, line: 636, baseType: !480, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !805, file: !795, line: 755, baseType: !966, size: 704)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !795, line: 642, size: 704, elements: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !966, file: !795, line: 644, baseType: !959, size: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !966, file: !795, line: 648, baseType: !480, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !966, file: !795, line: 652, baseType: !480, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !966, file: !795, line: 653, baseType: !480, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !805, file: !795, line: 756, baseType: !973, size: 448)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !795, line: 663, size: 448, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !973, file: !795, line: 665, baseType: !869, size: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !973, file: !795, line: 668, baseType: !480, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !973, file: !795, line: 673, baseType: !480, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !805, file: !795, line: 757, baseType: !979, size: 384)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !795, line: 694, size: 384, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !979, file: !795, line: 696, baseType: !869, size: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !979, file: !795, line: 699, baseType: !480, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !805, file: !795, line: 758, baseType: !984, size: 384)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !795, line: 681, size: 384, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !984, file: !795, line: 683, baseType: !808, size: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !984, file: !795, line: 686, baseType: !480, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !984, file: !795, line: 689, baseType: !480, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !805, file: !795, line: 759, baseType: !990, size: 384)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !795, line: 707, size: 384, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !990, file: !795, line: 709, baseType: !808, size: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !990, file: !795, line: 712, baseType: !480, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !990, file: !795, line: 712, baseType: !480, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !805, file: !795, line: 760, baseType: !996, size: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !795, line: 718, size: 320, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !996, file: !795, line: 720, baseType: !808, size: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !996, file: !795, line: 723, baseType: !480, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !800, file: !795, line: 138, baseType: !799, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !800, file: !795, line: 139, baseType: !799, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !794, file: !795, line: 146, baseType: !798, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !794, file: !795, line: 152, baseType: !792, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !789, file: !337, line: 130, baseType: !653, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !784, file: !337, line: 134, baseType: !428, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !784, file: !337, line: 137, baseType: !480, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !784, file: !337, line: 138, baseType: !603, size: 32, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !784, file: !337, line: 142, baseType: !7, size: 32, offset: 352)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !337, line: 144, baseType: !424, size: 32, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !784, file: !337, line: 145, baseType: !424, size: 32, offset: 416)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !784, file: !337, line: 146, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !337, line: 119, baseType: !431)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !767, file: !337, line: 220, baseType: !770, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !767, file: !337, line: 223, baseType: !428, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !767, file: !337, line: 226, baseType: !1016, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !337, line: 185, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !767, file: !337, line: 229, baseType: !1019, size: 128, offset: 256)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 128, elements: !721)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !337, line: 229, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !767, file: !337, line: 232, baseType: !766, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !767, file: !337, line: 233, baseType: !766, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !767, file: !337, line: 238, baseType: !1025, size: 64, offset: 512)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !337, line: 235, size: 64, elements: !1026)
!1026 = !{!1027, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1025, file: !337, line: 236, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !337, line: 273, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1029, file: !337, line: 275, baseType: !792, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1029, file: !337, line: 278, baseType: !792, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1025, file: !337, line: 237, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !337, line: 259, size: 320, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1035, file: !337, line: 261, baseType: !653, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1035, file: !337, line: 262, baseType: !653, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1035, file: !337, line: 266, baseType: !653, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1035, file: !337, line: 267, baseType: !653, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1035, file: !337, line: 270, baseType: !424, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !767, file: !337, line: 241, baseType: !1012, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !767, file: !337, line: 244, baseType: !424, size: 32, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !767, file: !337, line: 247, baseType: !424, size: 32, offset: 672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !767, file: !337, line: 250, baseType: !424, size: 32, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !767, file: !337, line: 253, baseType: !424, size: 32, offset: 736)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !337, line: 256, baseType: !424, size: 32, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !674, file: !656, line: 179, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !656, line: 150, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !656, line: 142, size: 320, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1059, !1060}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1051, file: !656, line: 144, baseType: !480, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1051, file: !656, line: 145, baseType: !653, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !656, line: 146, baseType: !653, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1051, file: !656, line: 147, baseType: !1057, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1058, line: 31, baseType: !424)
!1058 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1051, file: !656, line: 148, baseType: !7, size: 32, offset: 224)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1051, file: !656, line: 149, baseType: !423, size: 8, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !674, file: !656, line: 180, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !656, line: 162, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !656, line: 159, size: 128, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1064, file: !656, line: 160, baseType: !480, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1064, file: !656, line: 161, baseType: !431, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !674, file: !656, line: 181, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !656, line: 181, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !669, file: !656, line: 317, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 64, elements: !577)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !669, file: !656, line: 318, baseType: !1074, size: 320)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !656, line: 188, size: 320, elements: !1075)
!1075 = !{!1076, !1078, !1135}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1074, file: !656, line: 190, baseType: !1077, size: 192)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 192, elements: !552)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1074, file: !656, line: 193, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !656, line: 206, size: 320, elements: !1081)
!1081 = !{!1082, !1120, !1121, !1122, !1134}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1080, file: !656, line: 208, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !481, line: 62, baseType: !1085)
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
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1093, file: !1086, line: 492, baseType: !429, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1093, file: !1086, line: 496, baseType: !480, size: 64, offset: 128)
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
!1119 = !{!423, !480, !429, !440, !440}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1080, file: !656, line: 211, baseType: !7, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !656, line: 214, baseType: !431, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1080, file: !656, line: 224, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !656, line: 202, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !656, line: 202, size: 128, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1125, file: !656, line: 202, baseType: !1128, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !656, line: 200, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !656, line: 200, size: 128, elements: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1129, file: !656, line: 200, baseType: !7, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1129, file: !656, line: 200, baseType: !7, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1129, file: !656, line: 200, baseType: !687, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1080, file: !656, line: 234, baseType: !1123, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1074, file: !656, line: 197, baseType: !431, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !669, file: !656, line: 319, baseType: !541, size: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !669, file: !656, line: 320, baseType: !560, size: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !483, file: !135, line: 3384, baseType: !1139, size: 1472)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1140)
!1140 = !{!1141, !1162, !1163, !1164, !1165}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !135, line: 3115, baseType: !1142, size: 1216)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !135, line: 2985, baseType: !649, size: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1142, file: !135, line: 2986, baseType: !480, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1142, file: !135, line: 2987, baseType: !480, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1142, file: !135, line: 2988, baseType: !480, size: 64, offset: 1088)
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
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1139, file: !135, line: 3117, baseType: !480, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1139, file: !135, line: 3119, baseType: !480, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1139, file: !135, line: 3121, baseType: !480, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1139, file: !135, line: 3123, baseType: !480, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !483, file: !135, line: 3385, baseType: !1167, size: 1088)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !135, line: 2875, baseType: !649, size: 960)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1167, file: !135, line: 2876, baseType: !653, size: 64, offset: 960)
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
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1173, file: !1174, line: 199, baseType: !480, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !483, file: !135, line: 3386, baseType: !1142, size: 1216)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !483, file: !135, line: 3387, baseType: !1185, size: 1280)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !135, line: 3094, baseType: !1142, size: 1216)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1185, file: !135, line: 3095, baseType: !1172, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !483, file: !135, line: 3388, baseType: !1190, size: 1216)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1190, file: !135, line: 2825, baseType: !611, size: 896)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1190, file: !135, line: 2827, baseType: !480, size: 64, offset: 896)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1190, file: !135, line: 2828, baseType: !480, size: 64, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1190, file: !135, line: 2829, baseType: !480, size: 64, offset: 1024)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1190, file: !135, line: 2830, baseType: !480, size: 64, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1190, file: !135, line: 2831, baseType: !480, size: 64, offset: 1152)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !483, file: !135, line: 3389, baseType: !1199, size: 1024)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1199, file: !135, line: 2851, baseType: !649, size: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1199, file: !135, line: 2852, baseType: !424, size: 32, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1199, file: !135, line: 2853, baseType: !424, size: 32, offset: 992)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !483, file: !135, line: 3390, baseType: !1205, size: 1024)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1205, file: !135, line: 2858, baseType: !649, size: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1205, file: !135, line: 2859, baseType: !1172, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !483, file: !135, line: 3391, baseType: !1210, size: 960)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1210, file: !135, line: 2863, baseType: !649, size: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !483, file: !135, line: 3392, baseType: !1214, size: 1472)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1214, file: !135, line: 3305, baseType: !1139, size: 1472)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !483, file: !135, line: 3393, baseType: !1218, size: 1792)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1219)
!1219 = !{!1220, !1221, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1218, file: !135, line: 3249, baseType: !1139, size: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1218, file: !135, line: 3251, baseType: !1222, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1224, line: 463, size: 1152, elements: !1225)
!1224 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1225 = !{!1226, !1385, !1416, !1417, !1472, !1475, !1476, !1477, !1478, !1479, !1480, !1504, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530}
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
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1233, file: !330, line: 126, baseType: !424, size: 32, offset: 192)
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
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1248, file: !330, line: 101, baseType: !480, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1248, file: !330, line: 106, baseType: !480, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1248, file: !330, line: 111, baseType: !480, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1244, file: !330, line: 136, baseType: !1247, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1241, file: !330, line: 151, baseType: !1257, size: 192)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !330, line: 139, size: 192, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1257, file: !330, line: 141, baseType: !480, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1257, file: !330, line: 145, baseType: !480, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1257, file: !330, line: 150, baseType: !424, size: 32, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1241, file: !330, line: 164, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !330, line: 153, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1263, file: !330, line: 161, baseType: !480, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1263, file: !330, line: 163, baseType: !603, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1233, file: !330, line: 168, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !330, line: 67, size: 320, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1269, file: !330, line: 70, baseType: !1268, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1269, file: !330, line: 73, baseType: !1232, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1269, file: !330, line: 78, baseType: !480, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1269, file: !330, line: 85, baseType: !653, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1269, file: !330, line: 88, baseType: !424, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1233, file: !330, line: 173, baseType: !653, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1233, file: !330, line: 173, baseType: !653, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1233, file: !330, line: 177, baseType: !423, size: 8, offset: 640)
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
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 64, elements: !577)
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
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 64, elements: !577)
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
!1322 = !{!424, !1107, !1107}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1310, file: !1308, line: 108, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1308, line: 63, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !428}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1310, file: !1308, line: 111, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1310, file: !1308, line: 114, baseType: !438, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1310, file: !1308, line: 117, baseType: !438, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1310, file: !1308, line: 120, baseType: !438, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1310, file: !1308, line: 124, baseType: !7, size: 32, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1310, file: !1308, line: 128, baseType: !7, size: 32, offset: 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1310, file: !1308, line: 131, baseType: !1336, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1308, line: 75, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!428, !438, !438}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1310, file: !1308, line: 132, baseType: !1341, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1308, line: 78, baseType: !1325)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1310, file: !1308, line: 135, baseType: !428, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1310, file: !1308, line: 136, baseType: !1344, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1308, line: 82, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!428, !428, !438, !438}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1310, file: !1308, line: 137, baseType: !1349, size: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1308, line: 83, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !428, !428}
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
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1361, file: !135, line: 182, baseType: !856, size: 64, offset: 64)
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
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 8, elements: !577)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1373, line: 26, baseType: !423)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1223, file: !1224, line: 467, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !337, line: 374, size: 640, elements: !1388)
!1388 = !{!1389, !1391, !1392, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1414, !1415}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1387, file: !337, line: 377, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !481, line: 111, baseType: !766)
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
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 64, elements: !577)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1387, file: !337, line: 384, baseType: !424, size: 32, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1387, file: !337, line: 387, baseType: !424, size: 32, offset: 224)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1387, file: !337, line: 390, baseType: !424, size: 32, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1387, file: !337, line: 394, baseType: !1393, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1387, file: !337, line: 396, baseType: !336, size: 32, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1387, file: !337, line: 399, baseType: !1411, size: 64, offset: 416)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !721)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1387, file: !337, line: 402, baseType: !1413, size: 64, offset: 480)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !721)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1387, file: !337, line: 406, baseType: !424, size: 32, offset: 544)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1387, file: !337, line: 409, baseType: !424, size: 32, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1223, file: !1224, line: 470, baseType: !793, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1223, file: !1224, line: 473, baseType: !1418, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1174, line: 39, size: 1152, elements: !1420)
!1420 = !{!1421, !1422, !1435, !1436, !1437, !1449, !1450, !1454, !1455, !1456, !1457, !1458}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1419, file: !1174, line: 41, baseType: !1307, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1419, file: !1174, line: 48, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !795, line: 35, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !795, line: 35, size: 128, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1425, file: !795, line: 35, baseType: !1428, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !795, line: 33, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !795, line: 33, size: 128, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1429, file: !795, line: 33, baseType: !7, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1429, file: !795, line: 33, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1429, file: !795, line: 33, baseType: !1434, size: 64, offset: 64)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 64, elements: !577)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1419, file: !1174, line: 51, baseType: !1355, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1419, file: !1174, line: 54, baseType: !480, size: 64, offset: 192)
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
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !481, line: 47, baseType: !705)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1419, file: !1174, line: 60, baseType: !1438, size: 128, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1419, file: !1174, line: 64, baseType: !1451, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1453, line: 33, flags: DIFlagFwdDecl)
!1453 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1419, file: !1174, line: 67, baseType: !480, size: 64, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1419, file: !1174, line: 73, baseType: !1307, size: 64, offset: 640)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1419, file: !1174, line: 77, baseType: !1448, size: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1419, file: !1174, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1419, file: !1174, line: 82, baseType: !1459, size: 320, offset: 832)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !834, line: 62, size: 320, elements: !1460)
!1460 = !{!1461, !1467, !1468, !1469, !1470, !1471}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1459, file: !834, line: 63, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !834, line: 56, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1463, file: !834, line: 57, baseType: !1462, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1463, file: !834, line: 58, baseType: !576, size: 8, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1459, file: !834, line: 64, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1459, file: !834, line: 66, baseType: !7, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1459, file: !834, line: 68, baseType: !423, size: 8, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1459, file: !834, line: 70, baseType: !832, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1459, file: !834, line: 71, baseType: !839, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1223, file: !1224, line: 476, baseType: !1473, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1224, line: 476, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1223, file: !1224, line: 479, baseType: !1307, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1223, file: !1224, line: 484, baseType: !480, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1223, file: !1224, line: 488, baseType: !480, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1223, file: !1224, line: 493, baseType: !480, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1223, file: !1224, line: 496, baseType: !480, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1223, file: !1224, line: 501, baseType: !1481, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !348, line: 2355, size: 576, elements: !1483)
!1483 = !{!1484, !1487, !1488, !1489, !1490, !1492, !1493, !1498, !1499, !1500, !1501, !1502, !1503}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1482, file: !348, line: 2356, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !348, line: 2356, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1482, file: !348, line: 2357, baseType: !429, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1482, file: !348, line: 2358, baseType: !424, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1482, file: !348, line: 2359, baseType: !424, size: 32, offset: 160)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1482, file: !348, line: 2360, baseType: !1491, size: 128, offset: 192)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !745)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1482, file: !348, line: 2364, baseType: !424, size: 32, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1482, file: !348, line: 2367, baseType: !1494, size: 128, offset: 384)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !348, line: 2349, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1494, file: !348, line: 2351, baseType: !653, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1494, file: !348, line: 2352, baseType: !431, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1482, file: !348, line: 2371, baseType: !347, size: 32, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1482, file: !348, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1482, file: !348, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1482, file: !348, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1482, file: !348, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1482, file: !348, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1223, file: !1224, line: 504, baseType: !1505, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1224, line: 504, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1223, file: !1224, line: 507, baseType: !1307, size: 64, offset: 768)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1223, file: !1224, line: 510, baseType: !424, size: 32, offset: 832)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1223, file: !1224, line: 513, baseType: !424, size: 32, offset: 864)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1223, file: !1224, line: 516, baseType: !603, size: 32, offset: 896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1223, file: !1224, line: 519, baseType: !603, size: 32, offset: 928)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1223, file: !1224, line: 522, baseType: !7, size: 32, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1223, file: !1224, line: 523, baseType: !7, size: 32, offset: 992)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1223, file: !1224, line: 528, baseType: !429, size: 64, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1223, file: !1224, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1223, file: !1224, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1223, file: !1224, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1223, file: !1224, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1223, file: !1224, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1223, file: !1224, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1223, file: !1224, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1223, file: !1224, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1223, file: !1224, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1223, file: !1224, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1223, file: !1224, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1223, file: !1224, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1223, file: !1224, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1223, file: !1224, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1223, file: !1224, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1223, file: !1224, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1218, file: !135, line: 3254, baseType: !480, size: 64, offset: 1536)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1218, file: !135, line: 3257, baseType: !480, size: 64, offset: 1600)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1218, file: !135, line: 3258, baseType: !480, size: 64, offset: 1664)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1218, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1218, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1218, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1218, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1218, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1218, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1218, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1218, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1218, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1218, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1218, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1218, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1218, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1218, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1218, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1218, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1218, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1218, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !135, line: 3394, baseType: !1553, size: 1344)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1553, file: !135, line: 2280, baseType: !519, size: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1553, file: !135, line: 2281, baseType: !480, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1553, file: !135, line: 2282, baseType: !480, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1553, file: !135, line: 2283, baseType: !480, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1553, file: !135, line: 2284, baseType: !480, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1553, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1553, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1553, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1553, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1553, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1553, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1553, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1553, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1553, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1553, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1553, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1553, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1553, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1553, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1553, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1553, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1553, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1553, file: !135, line: 2306, baseType: !1057, size: 32, offset: 544)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1553, file: !135, line: 2307, baseType: !480, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1553, file: !135, line: 2308, baseType: !480, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1553, file: !135, line: 2314, baseType: !1581, size: 64, offset: 704)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1581, file: !135, line: 2310, baseType: !424, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1581, file: !135, line: 2311, baseType: !429, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1581, file: !135, line: 2312, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1553, file: !135, line: 2315, baseType: !480, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1553, file: !135, line: 2316, baseType: !480, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1553, file: !135, line: 2317, baseType: !480, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1553, file: !135, line: 2318, baseType: !480, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1553, file: !135, line: 2319, baseType: !480, size: 64, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1553, file: !135, line: 2320, baseType: !480, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1553, file: !135, line: 2321, baseType: !480, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1553, file: !135, line: 2322, baseType: !480, size: 64, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1553, file: !135, line: 2324, baseType: !1597, size: 64, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !135, line: 3395, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1600, file: !135, line: 1470, baseType: !519, size: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1600, file: !135, line: 1471, baseType: !480, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1600, file: !135, line: 1472, baseType: !480, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !483, file: !135, line: 3396, baseType: !1606, size: 320)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1606, file: !135, line: 1483, baseType: !519, size: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1606, file: !135, line: 1484, baseType: !424, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1606, file: !135, line: 1485, baseType: !856, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !483, file: !135, line: 3397, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1612, file: !135, line: 1830, baseType: !519, size: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1612, file: !135, line: 1831, baseType: !603, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1612, file: !135, line: 1832, baseType: !480, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1612, file: !135, line: 1835, baseType: !856, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !483, file: !135, line: 3398, baseType: !1619, size: 704)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1630}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1619, file: !135, line: 1899, baseType: !519, size: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1619, file: !135, line: 1902, baseType: !480, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1619, file: !135, line: 1905, baseType: !803, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1619, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1619, file: !135, line: 1911, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1174, line: 117, size: 128, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1627, file: !1174, line: 120, baseType: !1438, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1619, file: !135, line: 1914, baseType: !844, size: 256, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !483, file: !135, line: 3399, baseType: !1632, size: 704)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1632, file: !135, line: 2009, baseType: !519, size: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1632, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1632, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1632, file: !135, line: 2014, baseType: !603, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1632, file: !135, line: 2016, baseType: !480, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1632, file: !135, line: 2017, baseType: !1355, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1632, file: !135, line: 2019, baseType: !480, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1632, file: !135, line: 2020, baseType: !480, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1632, file: !135, line: 2021, baseType: !480, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1632, file: !135, line: 2022, baseType: !480, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1632, file: !135, line: 2023, baseType: !480, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !483, file: !135, line: 3400, baseType: !1646, size: 832)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1646, file: !135, line: 2431, baseType: !519, size: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1646, file: !135, line: 2433, baseType: !480, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1646, file: !135, line: 2434, baseType: !480, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1646, file: !135, line: 2435, baseType: !480, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1646, file: !135, line: 2436, baseType: !480, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1646, file: !135, line: 2437, baseType: !1355, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1646, file: !135, line: 2438, baseType: !480, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1646, file: !135, line: 2440, baseType: !480, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1646, file: !135, line: 2441, baseType: !480, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1646, file: !135, line: 2443, baseType: !1658, size: 128, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1659, file: !135, line: 182, baseType: !1360, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !483, file: !135, line: 3401, baseType: !1663, size: 320)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1664)
!1664 = !{!1665, !1666, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1663, file: !135, line: 3329, baseType: !519, size: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1663, file: !135, line: 3330, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1669)
!1669 = !{!1670, !1671, !1672}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1668, file: !135, line: 3322, baseType: !1667, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1668, file: !135, line: 3323, baseType: !1667, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1668, file: !135, line: 3324, baseType: !480, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1663, file: !135, line: 3331, baseType: !1667, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !483, file: !135, line: 3402, baseType: !1675, size: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1675, file: !135, line: 1541, baseType: !519, size: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1675, file: !135, line: 1542, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1681, file: !135, line: 1538, baseType: !1684, size: 192)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1685, file: !135, line: 1537, baseType: !7, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1685, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1685, file: !135, line: 1537, baseType: !1690, size: 128, offset: 64)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1691, size: 128, elements: !577)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1692, file: !135, line: 1533, baseType: !480, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1692, file: !135, line: 1534, baseType: !480, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !483, file: !135, line: 3403, baseType: !1697, size: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1708, !1709, !1710}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1697, file: !135, line: 1939, baseType: !519, size: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1697, file: !135, line: 1940, baseType: !603, size: 32, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1697, file: !135, line: 1941, baseType: !352, size: 32, offset: 224)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1697, file: !135, line: 1946, baseType: !1703, size: 32, offset: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1703, file: !135, line: 1943, baseType: !370, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1703, file: !135, line: 1944, baseType: !377, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1703, file: !135, line: 1945, baseType: !134, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1697, file: !135, line: 1950, baseType: !792, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1697, file: !135, line: 1951, baseType: !792, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1697, file: !135, line: 1953, baseType: !856, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !483, file: !135, line: 3404, baseType: !1712, size: 1664)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !135, line: 3338, baseType: !519, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1712, file: !135, line: 3341, baseType: !1716, size: 1472, offset: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1717, line: 410, size: 1472, elements: !1718)
!1717 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1716, file: !1717, line: 412, baseType: !424, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1716, file: !1717, line: 413, baseType: !424, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1716, file: !1717, line: 414, baseType: !424, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1716, file: !1717, line: 415, baseType: !424, size: 32, offset: 96)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1716, file: !1717, line: 416, baseType: !424, size: 32, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1716, file: !1717, line: 417, baseType: !424, size: 32, offset: 160)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1716, file: !1717, line: 418, baseType: !423, size: 8, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1716, file: !1717, line: 419, baseType: !423, size: 8, offset: 200)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1716, file: !1717, line: 420, baseType: !1728, size: 8, offset: 208)
!1728 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1716, file: !1717, line: 421, baseType: !1728, size: 8, offset: 216)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1716, file: !1717, line: 422, baseType: !1728, size: 8, offset: 224)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1716, file: !1717, line: 423, baseType: !1728, size: 8, offset: 232)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1716, file: !1717, line: 424, baseType: !1728, size: 8, offset: 240)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1716, file: !1717, line: 425, baseType: !1728, size: 8, offset: 248)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1716, file: !1717, line: 426, baseType: !1728, size: 8, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1716, file: !1717, line: 427, baseType: !1728, size: 8, offset: 264)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1716, file: !1717, line: 428, baseType: !1728, size: 8, offset: 272)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1716, file: !1717, line: 429, baseType: !1728, size: 8, offset: 280)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1716, file: !1717, line: 430, baseType: !1728, size: 8, offset: 288)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1716, file: !1717, line: 431, baseType: !1728, size: 8, offset: 296)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1716, file: !1717, line: 432, baseType: !1728, size: 8, offset: 304)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1716, file: !1717, line: 433, baseType: !1728, size: 8, offset: 312)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1716, file: !1717, line: 434, baseType: !1728, size: 8, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1716, file: !1717, line: 435, baseType: !1728, size: 8, offset: 328)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1716, file: !1717, line: 436, baseType: !1728, size: 8, offset: 336)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1716, file: !1717, line: 437, baseType: !1728, size: 8, offset: 344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1716, file: !1717, line: 438, baseType: !1728, size: 8, offset: 352)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1716, file: !1717, line: 439, baseType: !1728, size: 8, offset: 360)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1716, file: !1717, line: 440, baseType: !1728, size: 8, offset: 368)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1716, file: !1717, line: 441, baseType: !1728, size: 8, offset: 376)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1716, file: !1717, line: 442, baseType: !1728, size: 8, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1716, file: !1717, line: 443, baseType: !1728, size: 8, offset: 392)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1716, file: !1717, line: 444, baseType: !1728, size: 8, offset: 400)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1716, file: !1717, line: 445, baseType: !1728, size: 8, offset: 408)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1716, file: !1717, line: 446, baseType: !1728, size: 8, offset: 416)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1716, file: !1717, line: 447, baseType: !1728, size: 8, offset: 424)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1716, file: !1717, line: 448, baseType: !1728, size: 8, offset: 432)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1716, file: !1717, line: 449, baseType: !1728, size: 8, offset: 440)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1716, file: !1717, line: 450, baseType: !1728, size: 8, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1716, file: !1717, line: 451, baseType: !1728, size: 8, offset: 456)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1716, file: !1717, line: 452, baseType: !1728, size: 8, offset: 464)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1716, file: !1717, line: 453, baseType: !1728, size: 8, offset: 472)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1716, file: !1717, line: 454, baseType: !1728, size: 8, offset: 480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1716, file: !1717, line: 455, baseType: !1728, size: 8, offset: 488)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1716, file: !1717, line: 456, baseType: !1728, size: 8, offset: 496)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1716, file: !1717, line: 457, baseType: !1728, size: 8, offset: 504)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1716, file: !1717, line: 458, baseType: !1728, size: 8, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1716, file: !1717, line: 459, baseType: !1728, size: 8, offset: 520)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1716, file: !1717, line: 460, baseType: !1728, size: 8, offset: 528)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1716, file: !1717, line: 461, baseType: !1728, size: 8, offset: 536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1716, file: !1717, line: 462, baseType: !1728, size: 8, offset: 544)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1716, file: !1717, line: 463, baseType: !1728, size: 8, offset: 552)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1716, file: !1717, line: 464, baseType: !1728, size: 8, offset: 560)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1716, file: !1717, line: 465, baseType: !1728, size: 8, offset: 568)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1716, file: !1717, line: 466, baseType: !1728, size: 8, offset: 576)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1716, file: !1717, line: 467, baseType: !1728, size: 8, offset: 584)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1716, file: !1717, line: 468, baseType: !1728, size: 8, offset: 592)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1716, file: !1717, line: 469, baseType: !1728, size: 8, offset: 600)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1716, file: !1717, line: 470, baseType: !1728, size: 8, offset: 608)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1716, file: !1717, line: 471, baseType: !1728, size: 8, offset: 616)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1716, file: !1717, line: 472, baseType: !1728, size: 8, offset: 624)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1716, file: !1717, line: 473, baseType: !1728, size: 8, offset: 632)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1716, file: !1717, line: 474, baseType: !1728, size: 8, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1716, file: !1717, line: 475, baseType: !1728, size: 8, offset: 648)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1716, file: !1717, line: 476, baseType: !1728, size: 8, offset: 656)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1716, file: !1717, line: 477, baseType: !1728, size: 8, offset: 664)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1716, file: !1717, line: 478, baseType: !1728, size: 8, offset: 672)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1716, file: !1717, line: 479, baseType: !1728, size: 8, offset: 680)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1716, file: !1717, line: 480, baseType: !1728, size: 8, offset: 688)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1716, file: !1717, line: 481, baseType: !1728, size: 8, offset: 696)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1716, file: !1717, line: 482, baseType: !1728, size: 8, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1716, file: !1717, line: 483, baseType: !1728, size: 8, offset: 712)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1716, file: !1717, line: 484, baseType: !1728, size: 8, offset: 720)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1716, file: !1717, line: 485, baseType: !1728, size: 8, offset: 728)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1716, file: !1717, line: 486, baseType: !1728, size: 8, offset: 736)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1716, file: !1717, line: 487, baseType: !1728, size: 8, offset: 744)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1716, file: !1717, line: 488, baseType: !1728, size: 8, offset: 752)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1716, file: !1717, line: 489, baseType: !1728, size: 8, offset: 760)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1716, file: !1717, line: 490, baseType: !1728, size: 8, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1716, file: !1717, line: 491, baseType: !1728, size: 8, offset: 776)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1716, file: !1717, line: 492, baseType: !1728, size: 8, offset: 784)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1716, file: !1717, line: 493, baseType: !1728, size: 8, offset: 792)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1716, file: !1717, line: 494, baseType: !1728, size: 8, offset: 800)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1716, file: !1717, line: 495, baseType: !1728, size: 8, offset: 808)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1716, file: !1717, line: 496, baseType: !1728, size: 8, offset: 816)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1716, file: !1717, line: 497, baseType: !1728, size: 8, offset: 824)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1716, file: !1717, line: 498, baseType: !1728, size: 8, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1716, file: !1717, line: 499, baseType: !1728, size: 8, offset: 840)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1716, file: !1717, line: 500, baseType: !1728, size: 8, offset: 848)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1716, file: !1717, line: 501, baseType: !1728, size: 8, offset: 856)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1716, file: !1717, line: 502, baseType: !1728, size: 8, offset: 864)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1716, file: !1717, line: 503, baseType: !1728, size: 8, offset: 872)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1716, file: !1717, line: 504, baseType: !1728, size: 8, offset: 880)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1716, file: !1717, line: 505, baseType: !1728, size: 8, offset: 888)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1716, file: !1717, line: 506, baseType: !1728, size: 8, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1716, file: !1717, line: 507, baseType: !1728, size: 8, offset: 904)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1716, file: !1717, line: 508, baseType: !1728, size: 8, offset: 912)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1716, file: !1717, line: 509, baseType: !1728, size: 8, offset: 920)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1716, file: !1717, line: 510, baseType: !1728, size: 8, offset: 928)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1716, file: !1717, line: 511, baseType: !1728, size: 8, offset: 936)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1716, file: !1717, line: 512, baseType: !1728, size: 8, offset: 944)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1716, file: !1717, line: 513, baseType: !1728, size: 8, offset: 952)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1716, file: !1717, line: 514, baseType: !1728, size: 8, offset: 960)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1716, file: !1717, line: 515, baseType: !1728, size: 8, offset: 968)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1716, file: !1717, line: 516, baseType: !1728, size: 8, offset: 976)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1716, file: !1717, line: 517, baseType: !1728, size: 8, offset: 984)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1716, file: !1717, line: 518, baseType: !1728, size: 8, offset: 992)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1716, file: !1717, line: 519, baseType: !1728, size: 8, offset: 1000)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1716, file: !1717, line: 520, baseType: !1728, size: 8, offset: 1008)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1716, file: !1717, line: 521, baseType: !1728, size: 8, offset: 1016)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1716, file: !1717, line: 522, baseType: !1728, size: 8, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1716, file: !1717, line: 523, baseType: !1728, size: 8, offset: 1032)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1716, file: !1717, line: 524, baseType: !1728, size: 8, offset: 1040)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1716, file: !1717, line: 525, baseType: !1728, size: 8, offset: 1048)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1716, file: !1717, line: 526, baseType: !1728, size: 8, offset: 1056)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1716, file: !1717, line: 527, baseType: !1728, size: 8, offset: 1064)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1716, file: !1717, line: 528, baseType: !1728, size: 8, offset: 1072)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1716, file: !1717, line: 529, baseType: !1728, size: 8, offset: 1080)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1716, file: !1717, line: 530, baseType: !1728, size: 8, offset: 1088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1716, file: !1717, line: 531, baseType: !1728, size: 8, offset: 1096)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1716, file: !1717, line: 532, baseType: !1728, size: 8, offset: 1104)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1716, file: !1717, line: 533, baseType: !1728, size: 8, offset: 1112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1716, file: !1717, line: 534, baseType: !1728, size: 8, offset: 1120)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1716, file: !1717, line: 535, baseType: !1728, size: 8, offset: 1128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1716, file: !1717, line: 536, baseType: !1728, size: 8, offset: 1136)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1716, file: !1717, line: 537, baseType: !1728, size: 8, offset: 1144)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1716, file: !1717, line: 538, baseType: !1728, size: 8, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1716, file: !1717, line: 539, baseType: !1728, size: 8, offset: 1160)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1716, file: !1717, line: 540, baseType: !1728, size: 8, offset: 1168)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1716, file: !1717, line: 541, baseType: !1728, size: 8, offset: 1176)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1716, file: !1717, line: 542, baseType: !1728, size: 8, offset: 1184)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1716, file: !1717, line: 543, baseType: !1728, size: 8, offset: 1192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1716, file: !1717, line: 544, baseType: !1728, size: 8, offset: 1200)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1716, file: !1717, line: 545, baseType: !1728, size: 8, offset: 1208)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1716, file: !1717, line: 546, baseType: !1728, size: 8, offset: 1216)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1716, file: !1717, line: 547, baseType: !1728, size: 8, offset: 1224)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1716, file: !1717, line: 548, baseType: !1728, size: 8, offset: 1232)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1716, file: !1717, line: 549, baseType: !1728, size: 8, offset: 1240)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1716, file: !1717, line: 550, baseType: !1728, size: 8, offset: 1248)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1716, file: !1717, line: 551, baseType: !1728, size: 8, offset: 1256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1716, file: !1717, line: 552, baseType: !1728, size: 8, offset: 1264)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1716, file: !1717, line: 553, baseType: !1728, size: 8, offset: 1272)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1716, file: !1717, line: 554, baseType: !1728, size: 8, offset: 1280)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1716, file: !1717, line: 555, baseType: !1728, size: 8, offset: 1288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1716, file: !1717, line: 556, baseType: !1728, size: 8, offset: 1296)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1716, file: !1717, line: 557, baseType: !1728, size: 8, offset: 1304)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1716, file: !1717, line: 558, baseType: !1728, size: 8, offset: 1312)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1716, file: !1717, line: 559, baseType: !1728, size: 8, offset: 1320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1716, file: !1717, line: 560, baseType: !1728, size: 8, offset: 1328)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1716, file: !1717, line: 561, baseType: !1728, size: 8, offset: 1336)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1716, file: !1717, line: 562, baseType: !1728, size: 8, offset: 1344)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1716, file: !1717, line: 563, baseType: !1728, size: 8, offset: 1352)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1716, file: !1717, line: 564, baseType: !1728, size: 8, offset: 1360)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1716, file: !1717, line: 565, baseType: !1728, size: 8, offset: 1368)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1716, file: !1717, line: 566, baseType: !1728, size: 8, offset: 1376)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1716, file: !1717, line: 567, baseType: !1728, size: 8, offset: 1384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1716, file: !1717, line: 568, baseType: !1728, size: 8, offset: 1392)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1716, file: !1717, line: 569, baseType: !1728, size: 8, offset: 1400)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1716, file: !1717, line: 570, baseType: !1728, size: 8, offset: 1408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1716, file: !1717, line: 571, baseType: !1728, size: 8, offset: 1416)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1716, file: !1717, line: 572, baseType: !1728, size: 8, offset: 1424)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1716, file: !1717, line: 573, baseType: !1728, size: 8, offset: 1432)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1716, file: !1717, line: 574, baseType: !1728, size: 8, offset: 1440)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !483, file: !135, line: 3405, baseType: !1884, size: 384)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1884, file: !135, line: 3353, baseType: !519, size: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1884, file: !135, line: 3356, baseType: !1888, size: 192, offset: 192)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1717, line: 578, size: 192, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1888, file: !1717, line: 580, baseType: !424, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1888, file: !1717, line: 581, baseType: !424, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1888, file: !1717, line: 582, baseType: !424, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1888, file: !1717, line: 583, baseType: !424, size: 32, offset: 96)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1888, file: !1717, line: 584, baseType: !423, size: 8, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1888, file: !1717, line: 585, baseType: !423, size: 8, offset: 136)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1888, file: !1717, line: 586, baseType: !423, size: 8, offset: 144)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1888, file: !1717, line: 587, baseType: !423, size: 8, offset: 152)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1888, file: !1717, line: 588, baseType: !423, size: 8, offset: 160)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1888, file: !1717, line: 589, baseType: !423, size: 8, offset: 168)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1888, file: !1717, line: 590, baseType: !423, size: 8, offset: 176)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !476, file: !408, line: 479, baseType: !7, size: 32, offset: 64)
!1902 = !{!1903}
!1903 = !DISubrange(count: 7)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !472, file: !408, line: 509, baseType: !480, size: 64, offset: 896)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!1909 = !{!0, !1910, !2084, !2091}
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(name: "file_decl_data", scope: !2, file: !3, line: 140, type: !1912, isLocal: true, isDefinition: true)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !408, line: 540, size: 512, elements: !1915)
!1915 = !{!1916, !1917, !1918, !2079, !2080, !2081, !2082, !2083}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !1914, file: !408, line: 543, baseType: !471, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !1914, file: !408, line: 547, baseType: !471, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !1914, file: !408, line: 550, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !408, line: 470, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !408, line: 461, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1921, file: !408, line: 464, baseType: !1451, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1921, file: !408, line: 467, baseType: !1925, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, size: 128, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1927, file: !385, line: 271, baseType: !1930, size: 128)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, size: 128, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1931, file: !385, line: 270, baseType: !7, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1931, file: !385, line: 270, baseType: !7, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1931, file: !385, line: 270, baseType: !1936, size: 64, offset: 64)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 64, elements: !577)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !385, line: 268, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !385, line: 181, size: 2496, elements: !1940)
!1940 = !{!1941, !1942, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1996, !2016, !2026, !2030, !2056, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1939, file: !385, line: 182, baseType: !480, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !1939, file: !385, line: 183, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !385, line: 314, size: 768, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1957, !1958, !1959, !1960, !1962, !1963, !1964}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1944, file: !385, line: 316, baseType: !1012, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1944, file: !385, line: 317, baseType: !1938, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1944, file: !385, line: 318, baseType: !1938, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1944, file: !385, line: 319, baseType: !1943, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1944, file: !385, line: 320, baseType: !1943, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1944, file: !385, line: 321, baseType: !1943, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1944, file: !385, line: 322, baseType: !1943, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1944, file: !385, line: 323, baseType: !803, size: 64, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1944, file: !385, line: 324, baseType: !428, size: 64, offset: 512)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1944, file: !385, line: 327, baseType: !1956, size: 32, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !385, line: 312, baseType: !384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1944, file: !385, line: 330, baseType: !7, size: 32, offset: 608)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1944, file: !385, line: 334, baseType: !424, size: 32, offset: 640)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1944, file: !385, line: 336, baseType: !424, size: 32, offset: 672)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1944, file: !385, line: 338, baseType: !1961, size: 16, offset: 704)
!1961 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1944, file: !385, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1944, file: !385, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1944, file: !385, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !1939, file: !385, line: 184, baseType: !1943, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1939, file: !385, line: 185, baseType: !1938, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1939, file: !385, line: 186, baseType: !1938, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1939, file: !385, line: 188, baseType: !1938, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1939, file: !385, line: 190, baseType: !1938, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !1939, file: !385, line: 192, baseType: !1938, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1939, file: !385, line: 194, baseType: !1938, size: 64, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !1939, file: !385, line: 196, baseType: !1938, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !1939, file: !385, line: 197, baseType: !1938, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !1939, file: !385, line: 198, baseType: !1938, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !1939, file: !385, line: 199, baseType: !1938, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !1939, file: !385, line: 202, baseType: !1938, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !1939, file: !385, line: 204, baseType: !1938, size: 64, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !1939, file: !385, line: 207, baseType: !1307, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1939, file: !385, line: 209, baseType: !428, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !1939, file: !385, line: 214, baseType: !1981, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1224, line: 177, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1224, line: 177, size: 128, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1983, file: !1224, line: 177, baseType: !1986, size: 128)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1224, line: 176, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1224, line: 176, size: 128, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1987, file: !1224, line: 176, baseType: !7, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1987, file: !1224, line: 176, baseType: !7, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1987, file: !1224, line: 176, baseType: !1992, size: 64, offset: 64)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 64, elements: !577)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1224, line: 174, baseType: !1994)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !1224, line: 173, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1939, file: !385, line: 216, baseType: !1997, size: 320, offset: 1152)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !385, line: 88, size: 320, elements: !1998)
!1998 = !{!1999, !2000, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1997, file: !385, line: 90, baseType: !1913, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1997, file: !385, line: 92, baseType: !2001, size: 192, offset: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !385, line: 57, size: 192, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2001, file: !385, line: 60, baseType: !431, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2001, file: !385, line: 63, baseType: !424, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2001, file: !385, line: 65, baseType: !424, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2001, file: !385, line: 67, baseType: !424, size: 32, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2001, file: !385, line: 69, baseType: !424, size: 32, offset: 160)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1997, file: !385, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1997, file: !385, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1997, file: !385, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1997, file: !385, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1997, file: !385, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1997, file: !385, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1997, file: !385, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1997, file: !385, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1939, file: !385, line: 217, baseType: !2017, size: 320, offset: 1472)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !385, line: 126, size: 320, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2017, file: !385, line: 128, baseType: !431, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2017, file: !385, line: 130, baseType: !431, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2017, file: !385, line: 134, baseType: !1938, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2017, file: !385, line: 137, baseType: !424, size: 32, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2017, file: !385, line: 138, baseType: !424, size: 32, offset: 224)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2017, file: !385, line: 141, baseType: !424, size: 32, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2017, file: !385, line: 144, baseType: !423, size: 8, offset: 288)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1939, file: !385, line: 218, baseType: !2027, size: 32, offset: 1792)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !385, line: 150, size: 32, elements: !2028)
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2027, file: !385, line: 151, baseType: !7, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !1939, file: !385, line: 219, baseType: !2031, size: 192, offset: 1856)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !385, line: 171, size: 192, elements: !2032)
!2032 = !{!2033, !2054, !2055}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2031, file: !385, line: 173, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, size: 128, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2036, file: !385, line: 169, baseType: !2039, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, size: 128, elements: !2041)
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2040, file: !385, line: 168, baseType: !7, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2040, file: !385, line: 168, baseType: !7, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2040, file: !385, line: 168, baseType: !2045, size: 64, offset: 64)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 64, elements: !577)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !385, line: 167, baseType: !2047)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !385, line: 156, size: 192, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2048, file: !385, line: 159, baseType: !480, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2048, file: !385, line: 161, baseType: !480, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2048, file: !385, line: 163, baseType: !423, size: 8, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2048, file: !385, line: 165, baseType: !423, size: 8, offset: 136)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2031, file: !385, line: 174, baseType: !1448, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2031, file: !385, line: 175, baseType: !1448, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !1939, file: !385, line: 220, baseType: !2057, size: 256, offset: 2048)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !385, line: 74, size: 256, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2057, file: !385, line: 76, baseType: !431, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2057, file: !385, line: 77, baseType: !431, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2057, file: !385, line: 78, baseType: !480, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2057, file: !385, line: 79, baseType: !423, size: 8, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2057, file: !385, line: 80, baseType: !423, size: 8, offset: 200)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2057, file: !385, line: 82, baseType: !423, size: 8, offset: 208)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1939, file: !385, line: 223, baseType: !1012, size: 64, offset: 2304)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1939, file: !385, line: 225, baseType: !424, size: 32, offset: 2368)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1939, file: !385, line: 227, baseType: !424, size: 32, offset: 2400)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1939, file: !385, line: 231, baseType: !424, size: 32, offset: 2432)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1939, file: !385, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !1939, file: !385, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !1939, file: !385, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !1939, file: !385, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !1939, file: !385, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1939, file: !385, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1939, file: !385, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1939, file: !385, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !1939, file: !385, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !1939, file: !385, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !1914, file: !408, line: 553, baseType: !1307, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1914, file: !408, line: 556, baseType: !429, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !1914, file: !408, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !1914, file: !408, line: 562, baseType: !1307, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !1914, file: !408, line: 565, baseType: !1307, size: 64, offset: 448)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "get_section_f", scope: !2, file: !3, line: 141, type: !2086, isLocal: true, isDefinition: true)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_get_section_data_f", file: !408, line: 315, baseType: !2088)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!429, !1913, !407, !429, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(name: "free_section_f", scope: !2, file: !3, line: 142, type: !2093, isLocal: true, isDefinition: true)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_free_section_data_f", file: !408, line: 323, baseType: !2095)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !1913, !407, !429, !429, !438}
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 640, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 10)
!2100 = !{i32 2, !"Dwarf Version", i32 4}
!2101 = !{i32 2, !"Debug Info Version", i32 3}
!2102 = !{i32 1, !"wchar_size", i32 4}
!2103 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2104 = distinct !DISubprogram(name: "vprintf", scope: !2105, file: !2105, line: 39, type: !2106, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!424, !2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !429)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2110, file: !3, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2110, file: !3, baseType: !7, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2110, file: !3, baseType: !428, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2110, file: !3, baseType: !428, size: 64, offset: 128)
!2116 = !{!2117, !2118}
!2117 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2104, file: !2105, line: 39, type: !2108)
!2118 = !DILocalVariable(name: "__arg", arg: 2, scope: !2104, file: !2105, line: 39, type: !2109)
!2119 = !DILocation(line: 0, scope: !2104)
!2120 = !DILocation(line: 41, column: 20, scope: !2104)
!2121 = !DILocation(line: 41, column: 10, scope: !2104)
!2122 = !DILocation(line: 41, column: 3, scope: !2104)
!2123 = distinct !DISubprogram(name: "getchar", scope: !2105, file: !2105, line: 47, type: !2124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!424}
!2126 = !{}
!2127 = !DILocation(line: 49, column: 16, scope: !2123)
!2128 = !DILocation(line: 49, column: 10, scope: !2123)
!2129 = !DILocation(line: 49, column: 3, scope: !2123)
!2130 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2105, file: !2105, line: 56, type: !2131, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!424, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2135, line: 7, baseType: !2136)
!2135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2137, line: 49, size: 1728, elements: !2138)
!2137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2156, !2157, !2158, !2160, !2161, !2162, !2163, !2166, !2168, !2171, !2174, !2175, !2176, !2177, !2178}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2136, file: !2137, line: 51, baseType: !424, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2136, file: !2137, line: 54, baseType: !426, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2136, file: !2137, line: 55, baseType: !426, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2136, file: !2137, line: 56, baseType: !426, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2136, file: !2137, line: 57, baseType: !426, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2136, file: !2137, line: 58, baseType: !426, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2136, file: !2137, line: 59, baseType: !426, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2136, file: !2137, line: 60, baseType: !426, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2136, file: !2137, line: 61, baseType: !426, size: 64, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2136, file: !2137, line: 64, baseType: !426, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2136, file: !2137, line: 65, baseType: !426, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2136, file: !2137, line: 66, baseType: !426, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2136, file: !2137, line: 68, baseType: !2152, size: 64, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2137, line: 36, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2136, file: !2137, line: 70, baseType: !2155, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2136, file: !2137, line: 72, baseType: !424, size: 32, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2136, file: !2137, line: 73, baseType: !424, size: 32, offset: 928)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2136, file: !2137, line: 74, baseType: !2159, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !452, line: 152, baseType: !431)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2136, file: !2137, line: 77, baseType: !1961, size: 16, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2136, file: !2137, line: 78, baseType: !1728, size: 8, offset: 1040)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2136, file: !2137, line: 79, baseType: !576, size: 8, offset: 1048)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2136, file: !2137, line: 81, baseType: !2164, size: 64, offset: 1088)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2137, line: 43, baseType: null)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2136, file: !2137, line: 89, baseType: !2167, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !452, line: 153, baseType: !431)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2136, file: !2137, line: 91, baseType: !2169, size: 64, offset: 1216)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2137, line: 37, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2136, file: !2137, line: 92, baseType: !2172, size: 64, offset: 1280)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2137, line: 38, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2136, file: !2137, line: 93, baseType: !2155, size: 64, offset: 1344)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2136, file: !2137, line: 94, baseType: !428, size: 64, offset: 1408)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2136, file: !2137, line: 95, baseType: !438, size: 64, offset: 1472)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2136, file: !2137, line: 96, baseType: !424, size: 32, offset: 1536)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2136, file: !2137, line: 98, baseType: !2179, size: 160, offset: 1568)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 160, elements: !2180)
!2180 = !{!2181}
!2181 = !DISubrange(count: 20)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "__fp", arg: 1, scope: !2130, file: !2105, line: 56, type: !2133)
!2184 = !DILocation(line: 0, scope: !2130)
!2185 = !DILocation(line: 58, column: 10, scope: !2130)
!2186 = !DILocation(line: 58, column: 3, scope: !2130)
!2187 = distinct !DISubprogram(name: "getc_unlocked", scope: !2105, file: !2105, line: 66, type: !2131, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "__fp", arg: 1, scope: !2187, file: !2105, line: 66, type: !2133)
!2190 = !DILocation(line: 0, scope: !2187)
!2191 = !DILocation(line: 68, column: 10, scope: !2187)
!2192 = !DILocation(line: 68, column: 3, scope: !2187)
!2193 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2105, file: !2105, line: 73, type: !2124, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2194 = !DILocation(line: 75, column: 10, scope: !2193)
!2195 = !DILocation(line: 75, column: 3, scope: !2193)
!2196 = distinct !DISubprogram(name: "putchar", scope: !2105, file: !2105, line: 82, type: !2197, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!424, !424}
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "__c", arg: 1, scope: !2196, file: !2105, line: 82, type: !424)
!2201 = !DILocation(line: 0, scope: !2196)
!2202 = !DILocation(line: 84, column: 21, scope: !2196)
!2203 = !DILocation(line: 84, column: 10, scope: !2196)
!2204 = !DILocation(line: 84, column: 3, scope: !2196)
!2205 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2105, file: !2105, line: 91, type: !2206, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!424, !424, !2133}
!2208 = !{!2209, !2210}
!2209 = !DILocalVariable(name: "__c", arg: 1, scope: !2205, file: !2105, line: 91, type: !424)
!2210 = !DILocalVariable(name: "__stream", arg: 2, scope: !2205, file: !2105, line: 91, type: !2133)
!2211 = !DILocation(line: 0, scope: !2205)
!2212 = !DILocation(line: 93, column: 10, scope: !2205)
!2213 = !DILocation(line: 93, column: 3, scope: !2205)
!2214 = distinct !DISubprogram(name: "putc_unlocked", scope: !2105, file: !2105, line: 101, type: !2206, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "__c", arg: 1, scope: !2214, file: !2105, line: 101, type: !424)
!2217 = !DILocalVariable(name: "__stream", arg: 2, scope: !2214, file: !2105, line: 101, type: !2133)
!2218 = !DILocation(line: 0, scope: !2214)
!2219 = !DILocation(line: 103, column: 10, scope: !2214)
!2220 = !DILocation(line: 103, column: 3, scope: !2214)
!2221 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2105, file: !2105, line: 108, type: !2197, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "__c", arg: 1, scope: !2221, file: !2105, line: 108, type: !424)
!2224 = !DILocation(line: 0, scope: !2221)
!2225 = !DILocation(line: 110, column: 10, scope: !2221)
!2226 = !DILocation(line: 110, column: 3, scope: !2221)
!2227 = distinct !DISubprogram(name: "getline", scope: !2105, file: !2105, line: 118, type: !2228, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2230, !425, !2090, !2133}
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !452, line: 193, baseType: !431)
!2231 = !{!2232, !2233, !2234}
!2232 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2227, file: !2105, line: 118, type: !425)
!2233 = !DILocalVariable(name: "__n", arg: 2, scope: !2227, file: !2105, line: 118, type: !2090)
!2234 = !DILocalVariable(name: "__stream", arg: 3, scope: !2227, file: !2105, line: 118, type: !2133)
!2235 = !DILocation(line: 0, scope: !2227)
!2236 = !DILocation(line: 120, column: 10, scope: !2227)
!2237 = !DILocation(line: 120, column: 3, scope: !2227)
!2238 = distinct !DISubprogram(name: "feof_unlocked", scope: !2105, file: !2105, line: 128, type: !2131, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "__stream", arg: 1, scope: !2238, file: !2105, line: 128, type: !2133)
!2241 = !DILocation(line: 0, scope: !2238)
!2242 = !DILocation(line: 130, column: 10, scope: !2238)
!2243 = !DILocation(line: 130, column: 3, scope: !2238)
!2244 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2105, file: !2105, line: 135, type: !2131, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "__stream", arg: 1, scope: !2244, file: !2105, line: 135, type: !2133)
!2247 = !DILocation(line: 0, scope: !2244)
!2248 = !DILocation(line: 137, column: 10, scope: !2244)
!2249 = !DILocation(line: 137, column: 3, scope: !2244)
!2250 = distinct !DISubprogram(name: "tolower", scope: !2251, file: !2251, line: 207, type: !2197, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2251 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2252 = !{!2253}
!2253 = !DILocalVariable(name: "__c", arg: 1, scope: !2250, file: !2251, line: 207, type: !424)
!2254 = !DILocation(line: 0, scope: !2250)
!2255 = !DILocation(line: 209, column: 22, scope: !2250)
!2256 = !DILocation(line: 209, column: 39, scope: !2250)
!2257 = !DILocation(line: 209, column: 38, scope: !2250)
!2258 = !DILocation(line: 209, column: 37, scope: !2250)
!2259 = !DILocation(line: 209, column: 10, scope: !2250)
!2260 = !DILocation(line: 209, column: 3, scope: !2250)
!2261 = distinct !DISubprogram(name: "toupper", scope: !2251, file: !2251, line: 213, type: !2197, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2262 = !{!2263}
!2263 = !DILocalVariable(name: "__c", arg: 1, scope: !2261, file: !2251, line: 213, type: !424)
!2264 = !DILocation(line: 0, scope: !2261)
!2265 = !DILocation(line: 215, column: 22, scope: !2261)
!2266 = !DILocation(line: 215, column: 39, scope: !2261)
!2267 = !DILocation(line: 215, column: 38, scope: !2261)
!2268 = !DILocation(line: 215, column: 37, scope: !2261)
!2269 = !DILocation(line: 215, column: 10, scope: !2261)
!2270 = !DILocation(line: 215, column: 3, scope: !2261)
!2271 = distinct !DISubprogram(name: "atoi", scope: !2272, file: !2272, line: 361, type: !2273, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2272 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!424, !429}
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2271, file: !2272, line: 361, type: !429)
!2277 = !DILocation(line: 0, scope: !2271)
!2278 = !DILocation(line: 363, column: 16, scope: !2271)
!2279 = !DILocation(line: 363, column: 10, scope: !2271)
!2280 = !DILocation(line: 363, column: 3, scope: !2271)
!2281 = distinct !DISubprogram(name: "atol", scope: !2272, file: !2272, line: 366, type: !2282, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!431, !429}
!2284 = !{!2285}
!2285 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2281, file: !2272, line: 366, type: !429)
!2286 = !DILocation(line: 0, scope: !2281)
!2287 = !DILocation(line: 368, column: 10, scope: !2281)
!2288 = !DILocation(line: 368, column: 3, scope: !2281)
!2289 = distinct !DISubprogram(name: "atoll", scope: !2272, file: !2272, line: 373, type: !2290, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2292, !429}
!2292 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2293 = !{!2294}
!2294 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2289, file: !2272, line: 373, type: !429)
!2295 = !DILocation(line: 0, scope: !2289)
!2296 = !DILocation(line: 375, column: 10, scope: !2289)
!2297 = !DILocation(line: 375, column: 3, scope: !2289)
!2298 = distinct !DISubprogram(name: "bsearch", scope: !2299, file: !2299, line: 20, type: !2300, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!428, !1107, !1107, !438, !438, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2272, line: 808, baseType: !1320)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2304 = !DILocalVariable(name: "__key", arg: 1, scope: !2298, file: !2299, line: 20, type: !1107)
!2305 = !DILocalVariable(name: "__base", arg: 2, scope: !2298, file: !2299, line: 20, type: !1107)
!2306 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2298, file: !2299, line: 20, type: !438)
!2307 = !DILocalVariable(name: "__size", arg: 4, scope: !2298, file: !2299, line: 20, type: !438)
!2308 = !DILocalVariable(name: "__compar", arg: 5, scope: !2298, file: !2299, line: 21, type: !2302)
!2309 = !DILocalVariable(name: "__l", scope: !2298, file: !2299, line: 23, type: !438)
!2310 = !DILocalVariable(name: "__u", scope: !2298, file: !2299, line: 23, type: !438)
!2311 = !DILocalVariable(name: "__idx", scope: !2298, file: !2299, line: 23, type: !438)
!2312 = !DILocalVariable(name: "__p", scope: !2298, file: !2299, line: 24, type: !1107)
!2313 = !DILocalVariable(name: "__comparison", scope: !2298, file: !2299, line: 25, type: !424)
!2314 = !DILocation(line: 0, scope: !2298)
!2315 = !DILocation(line: 29, column: 3, scope: !2298)
!2316 = !DILocation(line: 27, column: 7, scope: !2298)
!2317 = !DILocation(line: 29, column: 14, scope: !2298)
!2318 = !DILocation(line: 31, column: 20, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2298, file: !2299, line: 30, column: 5)
!2320 = !DILocation(line: 31, column: 27, scope: !2319)
!2321 = !DILocation(line: 32, column: 56, scope: !2319)
!2322 = !DILocation(line: 32, column: 47, scope: !2319)
!2323 = !DILocation(line: 33, column: 22, scope: !2319)
!2324 = !DILocation(line: 34, column: 24, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !2299, line: 34, column: 11)
!2326 = !DILocation(line: 34, column: 11, scope: !2319)
!2327 = !DILocation(line: 36, column: 29, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !2299, line: 36, column: 16)
!2329 = !DILocation(line: 36, column: 16, scope: !2325)
!2330 = !DILocation(line: 37, column: 14, scope: !2328)
!2331 = distinct !{!2331, !2315, !2332}
!2332 = !DILocation(line: 40, column: 5, scope: !2298)
!2333 = !DILocation(line: 43, column: 1, scope: !2298)
!2334 = distinct !DISubprogram(name: "atof", scope: !2335, file: !2335, line: 25, type: !2336, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2339)
!2335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2338, !429}
!2338 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2339 = !{!2340}
!2340 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2334, file: !2335, line: 25, type: !429)
!2341 = !DILocation(line: 0, scope: !2334)
!2342 = !DILocation(line: 27, column: 10, scope: !2334)
!2343 = !DILocation(line: 27, column: 3, scope: !2334)
!2344 = distinct !DISubprogram(name: "strtoimax", scope: !2345, file: !2345, line: 324, type: !2346, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2345 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!2348, !2108, !2351, !424}
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2349, line: 101, baseType: !2350)
!2349 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !452, line: 72, baseType: !431)
!2351 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !425)
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "nptr", arg: 1, scope: !2344, file: !2345, line: 324, type: !2108)
!2354 = !DILocalVariable(name: "endptr", arg: 2, scope: !2344, file: !2345, line: 324, type: !2351)
!2355 = !DILocalVariable(name: "base", arg: 3, scope: !2344, file: !2345, line: 324, type: !424)
!2356 = !DILocation(line: 0, scope: !2344)
!2357 = !DILocation(line: 327, column: 10, scope: !2344)
!2358 = !DILocation(line: 327, column: 3, scope: !2344)
!2359 = distinct !DISubprogram(name: "strtoumax", scope: !2345, file: !2345, line: 336, type: !2360, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!2362, !2108, !2351, !424}
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2349, line: 102, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !452, line: 73, baseType: !440)
!2364 = !{!2365, !2366, !2367}
!2365 = !DILocalVariable(name: "nptr", arg: 1, scope: !2359, file: !2345, line: 336, type: !2108)
!2366 = !DILocalVariable(name: "endptr", arg: 2, scope: !2359, file: !2345, line: 336, type: !2351)
!2367 = !DILocalVariable(name: "base", arg: 3, scope: !2359, file: !2345, line: 336, type: !424)
!2368 = !DILocation(line: 0, scope: !2359)
!2369 = !DILocation(line: 339, column: 10, scope: !2359)
!2370 = !DILocation(line: 339, column: 3, scope: !2359)
!2371 = distinct !DISubprogram(name: "wcstoimax", scope: !2345, file: !2345, line: 348, type: !2372, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2348, !2374, !2378, !424}
!2374 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2345, line: 34, baseType: !424)
!2378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2381 = !{!2382, !2383, !2384}
!2382 = !DILocalVariable(name: "nptr", arg: 1, scope: !2371, file: !2345, line: 348, type: !2374)
!2383 = !DILocalVariable(name: "endptr", arg: 2, scope: !2371, file: !2345, line: 348, type: !2378)
!2384 = !DILocalVariable(name: "base", arg: 3, scope: !2371, file: !2345, line: 348, type: !424)
!2385 = !DILocation(line: 0, scope: !2371)
!2386 = !DILocation(line: 351, column: 10, scope: !2371)
!2387 = !DILocation(line: 351, column: 3, scope: !2371)
!2388 = distinct !DISubprogram(name: "wcstoumax", scope: !2345, file: !2345, line: 362, type: !2389, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!2362, !2374, !2378, !424}
!2391 = !{!2392, !2393, !2394}
!2392 = !DILocalVariable(name: "nptr", arg: 1, scope: !2388, file: !2345, line: 362, type: !2374)
!2393 = !DILocalVariable(name: "endptr", arg: 2, scope: !2388, file: !2345, line: 362, type: !2378)
!2394 = !DILocalVariable(name: "base", arg: 3, scope: !2388, file: !2345, line: 362, type: !424)
!2395 = !DILocation(line: 0, scope: !2388)
!2396 = !DILocation(line: 365, column: 10, scope: !2388)
!2397 = !DILocation(line: 365, column: 3, scope: !2388)
!2398 = distinct !DISubprogram(name: "stat", scope: !2399, file: !2399, line: 453, type: !2400, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!424, !429, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2404, line: 46, size: 1152, elements: !2405)
!2404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2405 = !{!2406, !2408, !2410, !2412, !2414, !2416, !2418, !2419, !2420, !2421, !2423, !2425, !2433, !2434, !2435}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2403, file: !2404, line: 48, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !452, line: 145, baseType: !440)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2403, file: !2404, line: 53, baseType: !2409, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !452, line: 148, baseType: !440)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2403, file: !2404, line: 61, baseType: !2411, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !452, line: 151, baseType: !440)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2403, file: !2404, line: 62, baseType: !2413, size: 32, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !452, line: 150, baseType: !7)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2403, file: !2404, line: 64, baseType: !2415, size: 32, offset: 224)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !452, line: 146, baseType: !7)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2403, file: !2404, line: 65, baseType: !2417, size: 32, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !452, line: 147, baseType: !7)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2403, file: !2404, line: 67, baseType: !424, size: 32, offset: 288)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2403, file: !2404, line: 69, baseType: !2407, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2403, file: !2404, line: 74, baseType: !2159, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2403, file: !2404, line: 78, baseType: !2422, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !452, line: 174, baseType: !431)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2403, file: !2404, line: 80, baseType: !2424, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !452, line: 179, baseType: !431)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2403, file: !2404, line: 91, baseType: !2426, size: 128, offset: 576)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2427, line: 10, size: 128, elements: !2428)
!2427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2428 = !{!2429, !2431}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2426, file: !2427, line: 12, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !452, line: 160, baseType: !431)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2426, file: !2427, line: 16, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !452, line: 196, baseType: !431)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2403, file: !2404, line: 92, baseType: !2426, size: 128, offset: 704)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2403, file: !2404, line: 93, baseType: !2426, size: 128, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2403, file: !2404, line: 106, baseType: !2436, size: 192, offset: 960)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2432, size: 192, elements: !552)
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "__path", arg: 1, scope: !2398, file: !2399, line: 453, type: !429)
!2439 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2398, file: !2399, line: 453, type: !2402)
!2440 = !DILocation(line: 0, scope: !2398)
!2441 = !DILocation(line: 455, column: 10, scope: !2398)
!2442 = !DILocation(line: 455, column: 3, scope: !2398)
!2443 = distinct !DISubprogram(name: "lstat", scope: !2399, file: !2399, line: 460, type: !2400, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446}
!2445 = !DILocalVariable(name: "__path", arg: 1, scope: !2443, file: !2399, line: 460, type: !429)
!2446 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2443, file: !2399, line: 460, type: !2402)
!2447 = !DILocation(line: 0, scope: !2443)
!2448 = !DILocation(line: 462, column: 10, scope: !2443)
!2449 = !DILocation(line: 462, column: 3, scope: !2443)
!2450 = distinct !DISubprogram(name: "fstat", scope: !2399, file: !2399, line: 467, type: !2451, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!424, !424, !2402}
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "__fd", arg: 1, scope: !2450, file: !2399, line: 467, type: !424)
!2455 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2450, file: !2399, line: 467, type: !2402)
!2456 = !DILocation(line: 0, scope: !2450)
!2457 = !DILocation(line: 469, column: 10, scope: !2450)
!2458 = !DILocation(line: 469, column: 3, scope: !2450)
!2459 = distinct !DISubprogram(name: "fstatat", scope: !2399, file: !2399, line: 474, type: !2460, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!424, !424, !429, !2402, !424}
!2462 = !{!2463, !2464, !2465, !2466}
!2463 = !DILocalVariable(name: "__fd", arg: 1, scope: !2459, file: !2399, line: 474, type: !424)
!2464 = !DILocalVariable(name: "__filename", arg: 2, scope: !2459, file: !2399, line: 474, type: !429)
!2465 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2459, file: !2399, line: 474, type: !2402)
!2466 = !DILocalVariable(name: "__flag", arg: 4, scope: !2459, file: !2399, line: 474, type: !424)
!2467 = !DILocation(line: 0, scope: !2459)
!2468 = !DILocation(line: 477, column: 10, scope: !2459)
!2469 = !DILocation(line: 477, column: 3, scope: !2459)
!2470 = distinct !DISubprogram(name: "mknod", scope: !2399, file: !2399, line: 483, type: !2471, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!424, !429, !2413, !2407}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "__path", arg: 1, scope: !2470, file: !2399, line: 483, type: !429)
!2475 = !DILocalVariable(name: "__mode", arg: 2, scope: !2470, file: !2399, line: 483, type: !2413)
!2476 = !DILocalVariable(name: "__dev", arg: 3, scope: !2470, file: !2399, line: 483, type: !2407)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 485, column: 10, scope: !2470)
!2479 = !DILocation(line: 485, column: 3, scope: !2470)
!2480 = distinct !DISubprogram(name: "mknodat", scope: !2399, file: !2399, line: 491, type: !2481, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!424, !424, !429, !2413, !2407}
!2483 = !{!2484, !2485, !2486, !2487}
!2484 = !DILocalVariable(name: "__fd", arg: 1, scope: !2480, file: !2399, line: 491, type: !424)
!2485 = !DILocalVariable(name: "__path", arg: 2, scope: !2480, file: !2399, line: 491, type: !429)
!2486 = !DILocalVariable(name: "__mode", arg: 3, scope: !2480, file: !2399, line: 491, type: !2413)
!2487 = !DILocalVariable(name: "__dev", arg: 4, scope: !2480, file: !2399, line: 491, type: !2407)
!2488 = !DILocation(line: 0, scope: !2480)
!2489 = !DILocation(line: 494, column: 10, scope: !2480)
!2490 = !DILocation(line: 494, column: 3, scope: !2480)
!2491 = distinct !DISubprogram(name: "stat64", scope: !2399, file: !2399, line: 502, type: !2492, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!424, !429, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2404, line: 119, size: 1152, elements: !2496)
!2496 = !{!2497, !2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2510, !2511, !2512, !2513}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2495, file: !2404, line: 121, baseType: !2407, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2495, file: !2404, line: 123, baseType: !2499, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !452, line: 149, baseType: !440)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2495, file: !2404, line: 124, baseType: !2411, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2495, file: !2404, line: 125, baseType: !2413, size: 32, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2495, file: !2404, line: 132, baseType: !2415, size: 32, offset: 224)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2495, file: !2404, line: 133, baseType: !2417, size: 32, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2495, file: !2404, line: 135, baseType: !424, size: 32, offset: 288)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2495, file: !2404, line: 136, baseType: !2407, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2495, file: !2404, line: 137, baseType: !2159, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2495, file: !2404, line: 143, baseType: !2422, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2495, file: !2404, line: 144, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !452, line: 180, baseType: !431)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2495, file: !2404, line: 152, baseType: !2426, size: 128, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2495, file: !2404, line: 153, baseType: !2426, size: 128, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2495, file: !2404, line: 154, baseType: !2426, size: 128, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2495, file: !2404, line: 164, baseType: !2436, size: 192, offset: 960)
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "__path", arg: 1, scope: !2491, file: !2399, line: 502, type: !429)
!2516 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2491, file: !2399, line: 502, type: !2494)
!2517 = !DILocation(line: 0, scope: !2491)
!2518 = !DILocation(line: 504, column: 10, scope: !2491)
!2519 = !DILocation(line: 504, column: 3, scope: !2491)
!2520 = distinct !DISubprogram(name: "lstat64", scope: !2399, file: !2399, line: 509, type: !2492, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "__path", arg: 1, scope: !2520, file: !2399, line: 509, type: !429)
!2523 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2520, file: !2399, line: 509, type: !2494)
!2524 = !DILocation(line: 0, scope: !2520)
!2525 = !DILocation(line: 511, column: 10, scope: !2520)
!2526 = !DILocation(line: 511, column: 3, scope: !2520)
!2527 = distinct !DISubprogram(name: "fstat64", scope: !2399, file: !2399, line: 516, type: !2528, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!424, !424, !2494}
!2530 = !{!2531, !2532}
!2531 = !DILocalVariable(name: "__fd", arg: 1, scope: !2527, file: !2399, line: 516, type: !424)
!2532 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2527, file: !2399, line: 516, type: !2494)
!2533 = !DILocation(line: 0, scope: !2527)
!2534 = !DILocation(line: 518, column: 10, scope: !2527)
!2535 = !DILocation(line: 518, column: 3, scope: !2527)
!2536 = distinct !DISubprogram(name: "fstatat64", scope: !2399, file: !2399, line: 523, type: !2537, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!424, !424, !429, !2494, !424}
!2539 = !{!2540, !2541, !2542, !2543}
!2540 = !DILocalVariable(name: "__fd", arg: 1, scope: !2536, file: !2399, line: 523, type: !424)
!2541 = !DILocalVariable(name: "__filename", arg: 2, scope: !2536, file: !2399, line: 523, type: !429)
!2542 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2536, file: !2399, line: 523, type: !2494)
!2543 = !DILocalVariable(name: "__flag", arg: 4, scope: !2536, file: !2399, line: 523, type: !424)
!2544 = !DILocation(line: 0, scope: !2536)
!2545 = !DILocation(line: 526, column: 10, scope: !2536)
!2546 = !DILocation(line: 526, column: 3, scope: !2536)
!2547 = distinct !DISubprogram(name: "lto_input_1_unsigned", scope: !3, file: !3, line: 63, type: !2548, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!423, !460}
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "ib", arg: 1, scope: !2547, file: !3, line: 63, type: !460)
!2552 = !DILocation(line: 0, scope: !2547)
!2553 = !DILocation(line: 65, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 65, column: 7)
!2555 = !DILocation(line: 65, column: 20, scope: !2554)
!2556 = !DILocation(line: 65, column: 13, scope: !2554)
!2557 = !DILocation(line: 65, column: 7, scope: !2547)
!2558 = !DILocation(line: 67, column: 50, scope: !2554)
!2559 = !DILocation(line: 66, column: 5, scope: !2554)
!2560 = !DILocation(line: 69, column: 25, scope: !2547)
!2561 = !DILocation(line: 69, column: 15, scope: !2547)
!2562 = !DILocation(line: 69, column: 11, scope: !2547)
!2563 = !DILocation(line: 69, column: 3, scope: !2547)
!2564 = distinct !DISubprogram(name: "lto_input_uleb128", scope: !3, file: !3, line: 76, type: !2565, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!440, !460}
!2567 = !{!2568, !2569, !2570, !2571}
!2568 = !DILocalVariable(name: "ib", arg: 1, scope: !2564, file: !3, line: 76, type: !460)
!2569 = !DILocalVariable(name: "result", scope: !2564, file: !3, line: 78, type: !440)
!2570 = !DILocalVariable(name: "shift", scope: !2564, file: !3, line: 79, type: !424)
!2571 = !DILocalVariable(name: "byte", scope: !2564, file: !3, line: 80, type: !440)
!2572 = !DILocation(line: 0, scope: !2564)
!2573 = !DILocation(line: 82, column: 3, scope: !2564)
!2574 = !DILocation(line: 84, column: 14, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 83, column: 5)
!2576 = !DILocation(line: 85, column: 23, scope: !2575)
!2577 = !DILocation(line: 85, column: 31, scope: !2575)
!2578 = !DILocation(line: 85, column: 14, scope: !2575)
!2579 = !DILocation(line: 86, column: 13, scope: !2575)
!2580 = !DILocation(line: 87, column: 25, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 87, column: 11)
!2582 = !DILocation(line: 87, column: 11, scope: !2575)
!2583 = distinct !{!2583, !2573, !2584}
!2584 = !DILocation(line: 89, column: 5, scope: !2564)
!2585 = !DILocation(line: 88, column: 2, scope: !2581)
!2586 = distinct !DISubprogram(name: "lto_input_widest_uint_uleb128", scope: !3, file: !3, line: 96, type: !2565, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2587)
!2587 = !{!2588, !2589, !2590, !2591}
!2588 = !DILocalVariable(name: "ib", arg: 1, scope: !2586, file: !3, line: 96, type: !460)
!2589 = !DILocalVariable(name: "result", scope: !2586, file: !3, line: 98, type: !440)
!2590 = !DILocalVariable(name: "shift", scope: !2586, file: !3, line: 99, type: !424)
!2591 = !DILocalVariable(name: "byte", scope: !2586, file: !3, line: 100, type: !440)
!2592 = !DILocation(line: 0, scope: !2586)
!2593 = !DILocation(line: 102, column: 3, scope: !2586)
!2594 = !DILocation(line: 104, column: 14, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 103, column: 5)
!2596 = !DILocation(line: 105, column: 23, scope: !2595)
!2597 = !DILocation(line: 105, column: 31, scope: !2595)
!2598 = !DILocation(line: 105, column: 14, scope: !2595)
!2599 = !DILocation(line: 106, column: 13, scope: !2595)
!2600 = !DILocation(line: 107, column: 25, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 107, column: 11)
!2602 = !DILocation(line: 107, column: 11, scope: !2595)
!2603 = distinct !{!2603, !2593, !2604}
!2604 = !DILocation(line: 109, column: 5, scope: !2586)
!2605 = !DILocation(line: 108, column: 2, scope: !2601)
!2606 = distinct !DISubprogram(name: "lto_input_sleb128", scope: !3, file: !3, line: 115, type: !2607, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!431, !460}
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DILocalVariable(name: "ib", arg: 1, scope: !2606, file: !3, line: 115, type: !460)
!2611 = !DILocalVariable(name: "result", scope: !2606, file: !3, line: 117, type: !431)
!2612 = !DILocalVariable(name: "shift", scope: !2606, file: !3, line: 118, type: !424)
!2613 = !DILocalVariable(name: "byte", scope: !2606, file: !3, line: 119, type: !440)
!2614 = !DILocation(line: 0, scope: !2606)
!2615 = !DILocation(line: 121, column: 3, scope: !2606)
!2616 = !DILocation(line: 123, column: 14, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 122, column: 5)
!2618 = !DILocation(line: 124, column: 23, scope: !2617)
!2619 = !DILocation(line: 124, column: 31, scope: !2617)
!2620 = !DILocation(line: 124, column: 14, scope: !2617)
!2621 = !DILocation(line: 125, column: 13, scope: !2617)
!2622 = !DILocation(line: 126, column: 25, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 126, column: 11)
!2624 = !DILocation(line: 126, column: 11, scope: !2617)
!2625 = distinct !{!2625, !2615, !2626}
!2626 = !DILocation(line: 133, column: 5, scope: !2606)
!2627 = !DILocation(line: 128, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 128, column: 8)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 127, column: 2)
!2630 = !DILocation(line: 128, column: 50, scope: !2628)
!2631 = !DILocation(line: 128, column: 41, scope: !2628)
!2632 = !DILocation(line: 129, column: 36, scope: !2628)
!2633 = !DILocation(line: 129, column: 16, scope: !2628)
!2634 = !DILocation(line: 129, column: 13, scope: !2628)
!2635 = !DILocation(line: 129, column: 6, scope: !2628)
!2636 = !DILocation(line: 0, scope: !2617)
!2637 = !DILocation(line: 131, column: 4, scope: !2629)
!2638 = distinct !DISubprogram(name: "lto_set_in_hooks", scope: !3, file: !3, line: 150, type: !2639, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !1912, !2086, !2093}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "data", arg: 1, scope: !2638, file: !3, line: 150, type: !1912)
!2643 = !DILocalVariable(name: "get_f", arg: 2, scope: !2638, file: !3, line: 151, type: !2086)
!2644 = !DILocalVariable(name: "free_f", arg: 3, scope: !2638, file: !3, line: 152, type: !2093)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 154, column: 18, scope: !2638)
!2647 = !DILocation(line: 155, column: 17, scope: !2638)
!2648 = !DILocation(line: 156, column: 18, scope: !2638)
!2649 = !DILocation(line: 157, column: 1, scope: !2638)
!2650 = distinct !DISubprogram(name: "lto_get_file_decl_data", scope: !3, file: !3, line: 164, type: !2651, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!1912}
!2653 = !DILocation(line: 166, column: 3, scope: !2650)
!2654 = !DILocation(line: 167, column: 10, scope: !2650)
!2655 = !DILocation(line: 167, column: 3, scope: !2650)
!2656 = distinct !DISubprogram(name: "lto_get_section_data", scope: !3, file: !3, line: 209, type: !2088, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2665, !2667, !2672}
!2658 = !DILocalVariable(name: "file_data", arg: 1, scope: !2656, file: !3, line: 209, type: !1913)
!2659 = !DILocalVariable(name: "section_type", arg: 2, scope: !2656, file: !3, line: 210, type: !407)
!2660 = !DILocalVariable(name: "name", arg: 3, scope: !2656, file: !3, line: 211, type: !429)
!2661 = !DILocalVariable(name: "len", arg: 4, scope: !2656, file: !3, line: 212, type: !2090)
!2662 = !DILocalVariable(name: "data", scope: !2656, file: !3, line: 214, type: !429)
!2663 = !DILocalVariable(name: "header_length", scope: !2656, file: !3, line: 215, type: !2664)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!2665 = !DILocalVariable(name: "header", scope: !2656, file: !3, line: 216, type: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2667 = !DILocalVariable(name: "buffer", scope: !2656, file: !3, line: 217, type: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_buffer", file: !3, line: 172, size: 128, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2668, file: !3, line: 174, baseType: !426, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2668, file: !3, line: 175, baseType: !438, size: 64, offset: 64)
!2672 = !DILocalVariable(name: "stream", scope: !2656, file: !3, line: 218, type: !2673)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_compression_stream", file: !2675, line: 25, flags: DIFlagFwdDecl)
!2675 = !DIFile(filename: "./lto-compress.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2676 = !DILocation(line: 0, scope: !2656)
!2677 = !DILocation(line: 214, column: 23, scope: !2656)
!2678 = !DILocation(line: 214, column: 22, scope: !2656)
!2679 = !DILocation(line: 219, column: 43, scope: !2656)
!2680 = !DILocation(line: 219, column: 3, scope: !2656)
!2681 = !DILocation(line: 219, column: 40, scope: !2656)
!2682 = !DILocation(line: 250, column: 1, scope: !2656)
!2683 = distinct !DISubprogram(name: "lto_free_section_data", scope: !3, file: !3, line: 258, type: !2095, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2684)
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2685 = !DILocalVariable(name: "file_data", arg: 1, scope: !2683, file: !3, line: 258, type: !1913)
!2686 = !DILocalVariable(name: "section_type", arg: 2, scope: !2683, file: !3, line: 259, type: !407)
!2687 = !DILocalVariable(name: "name", arg: 3, scope: !2683, file: !3, line: 260, type: !429)
!2688 = !DILocalVariable(name: "data", arg: 4, scope: !2683, file: !3, line: 261, type: !429)
!2689 = !DILocalVariable(name: "len", arg: 5, scope: !2683, file: !3, line: 262, type: !438)
!2690 = !DILocalVariable(name: "header_length", scope: !2683, file: !3, line: 264, type: !2664)
!2691 = !DILocalVariable(name: "real_data", scope: !2683, file: !3, line: 265, type: !429)
!2692 = !DILocalVariable(name: "header", scope: !2683, file: !3, line: 266, type: !432)
!2693 = !DILocation(line: 0, scope: !2683)
!2694 = !DILocation(line: 265, column: 32, scope: !2683)
!2695 = !DILocation(line: 269, column: 3, scope: !2683)
!2696 = !DILocation(line: 273, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 273, column: 7)
!2698 = !DILocation(line: 273, column: 7, scope: !2683)
!2699 = !DILocation(line: 275, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 274, column: 5)
!2701 = !DILocation(line: 276, column: 7, scope: !2700)
!2702 = !DILocation(line: 281, column: 60, scope: !2683)
!2703 = !DILocation(line: 281, column: 74, scope: !2683)
!2704 = !DILocation(line: 281, column: 3, scope: !2683)
!2705 = !DILocation(line: 282, column: 3, scope: !2683)
!2706 = !DILocation(line: 283, column: 1, scope: !2683)
!2707 = distinct !DISubprogram(name: "lto_create_simple_input_block", scope: !3, file: !3, line: 292, type: !2708, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2711)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!460, !1913, !407, !2710, !2090}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2712 = !DILocalVariable(name: "file_data", arg: 1, scope: !2707, file: !3, line: 292, type: !1913)
!2713 = !DILocalVariable(name: "section_type", arg: 2, scope: !2707, file: !3, line: 293, type: !407)
!2714 = !DILocalVariable(name: "datar", arg: 3, scope: !2707, file: !3, line: 294, type: !2710)
!2715 = !DILocalVariable(name: "len", arg: 4, scope: !2707, file: !3, line: 294, type: !2090)
!2716 = !DILocalVariable(name: "data", scope: !2707, file: !3, line: 296, type: !429)
!2717 = !DILocalVariable(name: "header", scope: !2707, file: !3, line: 297, type: !441)
!2718 = !DILocalVariable(name: "ib_main", scope: !2707, file: !3, line: 300, type: !460)
!2719 = !DILocalVariable(name: "main_offset", scope: !2707, file: !3, line: 301, type: !457)
!2720 = !DILocation(line: 0, scope: !2707)
!2721 = !DILocation(line: 296, column: 22, scope: !2707)
!2722 = !DILocation(line: 303, column: 8, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 303, column: 7)
!2724 = !DILocation(line: 303, column: 7, scope: !2707)
!2725 = !DILocation(line: 306, column: 13, scope: !2707)
!2726 = !DILocation(line: 308, column: 10, scope: !2707)
!2727 = !DILocation(line: 309, column: 3, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 309, column: 3)
!2729 = !DILocation(line: 312, column: 3, scope: !2707)
!2730 = !DILocation(line: 313, column: 1, scope: !2707)
!2731 = distinct !DISubprogram(name: "lto_destroy_simple_input_block", scope: !3, file: !3, line: 323, type: !2732, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !1913, !407, !460, !429, !438}
!2734 = !{!2735, !2736, !2737, !2738, !2739}
!2735 = !DILocalVariable(name: "file_data", arg: 1, scope: !2731, file: !3, line: 323, type: !1913)
!2736 = !DILocalVariable(name: "section_type", arg: 2, scope: !2731, file: !3, line: 324, type: !407)
!2737 = !DILocalVariable(name: "ib", arg: 3, scope: !2731, file: !3, line: 325, type: !460)
!2738 = !DILocalVariable(name: "data", arg: 4, scope: !2731, file: !3, line: 326, type: !429)
!2739 = !DILocalVariable(name: "len", arg: 5, scope: !2731, file: !3, line: 326, type: !438)
!2740 = !DILocation(line: 0, scope: !2731)
!2741 = !DILocation(line: 328, column: 9, scope: !2731)
!2742 = !DILocation(line: 328, column: 3, scope: !2731)
!2743 = !DILocation(line: 329, column: 3, scope: !2731)
!2744 = !DILocation(line: 330, column: 1, scope: !2731)
!2745 = distinct !DISubprogram(name: "lto_create_renaming_table", scope: !3, file: !3, line: 379, type: !2746, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!1307}
!2748 = !DILocation(line: 381, column: 10, scope: !2745)
!2749 = !DILocation(line: 381, column: 3, scope: !2745)
!2750 = distinct !DISubprogram(name: "hash_name", scope: !3, file: !3, line: 345, type: !1315, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2751)
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "p", arg: 1, scope: !2750, file: !3, line: 345, type: !1107)
!2753 = !DILocalVariable(name: "ds", scope: !2750, file: !3, line: 347, type: !1907)
!2754 = !DILocation(line: 0, scope: !2750)
!2755 = !DILocation(line: 348, column: 44, scope: !2750)
!2756 = !DILocation(line: 348, column: 22, scope: !2750)
!2757 = !DILocation(line: 348, column: 3, scope: !2750)
!2758 = distinct !DISubprogram(name: "eq_name", scope: !3, file: !3, line: 354, type: !1321, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2759)
!2759 = !{!2760, !2761, !2762, !2763}
!2760 = !DILocalVariable(name: "p1", arg: 1, scope: !2758, file: !3, line: 354, type: !1107)
!2761 = !DILocalVariable(name: "p2", arg: 2, scope: !2758, file: !3, line: 354, type: !1107)
!2762 = !DILocalVariable(name: "s1", scope: !2758, file: !3, line: 356, type: !1907)
!2763 = !DILocalVariable(name: "s2", scope: !2758, file: !3, line: 358, type: !1907)
!2764 = !DILocation(line: 0, scope: !2758)
!2765 = !DILocation(line: 361, column: 22, scope: !2758)
!2766 = !DILocation(line: 361, column: 36, scope: !2758)
!2767 = !DILocation(line: 361, column: 10, scope: !2758)
!2768 = !DILocation(line: 361, column: 46, scope: !2758)
!2769 = !DILocation(line: 361, column: 3, scope: !2758)
!2770 = distinct !DISubprogram(name: "renaming_slot_free", scope: !3, file: !3, line: 367, type: !1326, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "slot", arg: 1, scope: !2770, file: !3, line: 367, type: !428)
!2773 = !DILocalVariable(name: "s", scope: !2770, file: !3, line: 369, type: !466)
!2774 = !DILocation(line: 0, scope: !2770)
!2775 = !DILocation(line: 371, column: 9, scope: !2770)
!2776 = !DILocation(line: 371, column: 3, scope: !2770)
!2777 = !DILocation(line: 372, column: 9, scope: !2770)
!2778 = !DILocation(line: 372, column: 3, scope: !2770)
!2779 = !DILocation(line: 373, column: 3, scope: !2770)
!2780 = !DILocation(line: 374, column: 1, scope: !2770)
!2781 = distinct !DISubprogram(name: "lto_record_renamed_decl", scope: !3, file: !3, line: 388, type: !2782, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !1913, !429, !429}
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790}
!2785 = !DILocalVariable(name: "decl_data", arg: 1, scope: !2781, file: !3, line: 388, type: !1913)
!2786 = !DILocalVariable(name: "old_name", arg: 2, scope: !2781, file: !3, line: 389, type: !429)
!2787 = !DILocalVariable(name: "new_name", arg: 3, scope: !2781, file: !3, line: 389, type: !429)
!2788 = !DILocalVariable(name: "slot", scope: !2781, file: !3, line: 391, type: !1329)
!2789 = !DILocalVariable(name: "r_slot", scope: !2781, file: !3, line: 392, type: !467)
!2790 = !DILocalVariable(name: "new_slot", scope: !2791, file: !3, line: 398, type: !466)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 397, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 396, column: 7)
!2793 = !DILocation(line: 0, scope: !2781)
!2794 = !DILocation(line: 392, column: 3, scope: !2781)
!2795 = !DILocation(line: 394, column: 10, scope: !2781)
!2796 = !DILocation(line: 394, column: 19, scope: !2781)
!2797 = !DILocation(line: 395, column: 37, scope: !2781)
!2798 = !DILocation(line: 395, column: 10, scope: !2781)
!2799 = !DILocation(line: 396, column: 7, scope: !2792)
!2800 = !DILocation(line: 396, column: 13, scope: !2792)
!2801 = !DILocation(line: 396, column: 7, scope: !2781)
!2802 = !DILocation(line: 398, column: 44, scope: !2791)
!2803 = !DILocation(line: 0, scope: !2791)
!2804 = !DILocation(line: 399, column: 28, scope: !2791)
!2805 = !DILocation(line: 399, column: 17, scope: !2791)
!2806 = !DILocation(line: 399, column: 26, scope: !2791)
!2807 = !DILocation(line: 400, column: 28, scope: !2791)
!2808 = !DILocation(line: 400, column: 17, scope: !2791)
!2809 = !DILocation(line: 400, column: 26, scope: !2791)
!2810 = !DILocation(line: 401, column: 13, scope: !2791)
!2811 = !DILocation(line: 402, column: 5, scope: !2791)
!2812 = !DILocation(line: 404, column: 5, scope: !2792)
!2813 = !DILocation(line: 405, column: 1, scope: !2781)
!2814 = distinct !DISubprogram(name: "lto_get_decl_name_mapping", scope: !3, file: !3, line: 413, type: !2815, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!429, !1913, !429}
!2817 = !{!2818, !2819, !2820, !2821, !2822}
!2818 = !DILocalVariable(name: "decl_data", arg: 1, scope: !2814, file: !3, line: 413, type: !1913)
!2819 = !DILocalVariable(name: "name", arg: 2, scope: !2814, file: !3, line: 414, type: !429)
!2820 = !DILocalVariable(name: "renaming_hash_table", scope: !2814, file: !3, line: 416, type: !1307)
!2821 = !DILocalVariable(name: "slot", scope: !2814, file: !3, line: 417, type: !466)
!2822 = !DILocalVariable(name: "r_slot", scope: !2814, file: !3, line: 418, type: !467)
!2823 = !DILocation(line: 0, scope: !2814)
!2824 = !DILocation(line: 416, column: 43, scope: !2814)
!2825 = !DILocation(line: 418, column: 3, scope: !2814)
!2826 = !DILocation(line: 420, column: 10, scope: !2814)
!2827 = !DILocation(line: 420, column: 19, scope: !2814)
!2828 = !DILocation(line: 421, column: 39, scope: !2814)
!2829 = !DILocation(line: 422, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 422, column: 7)
!2831 = !DILocation(line: 422, column: 7, scope: !2814)
!2832 = !DILocation(line: 423, column: 18, scope: !2830)
!2833 = !DILocation(line: 423, column: 5, scope: !2830)
!2834 = !DILocation(line: 0, scope: !2830)
!2835 = !DILocation(line: 426, column: 1, scope: !2814)
!2836 = distinct !DISubprogram(name: "lto_new_in_decl_state", scope: !3, file: !3, line: 435, type: !2837, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!471}
!2839 = !{!2840}
!2840 = !DILocalVariable(name: "state", scope: !2836, file: !3, line: 437, type: !471)
!2841 = !DILocation(line: 439, column: 41, scope: !2836)
!2842 = !DILocation(line: 439, column: 12, scope: !2836)
!2843 = !DILocation(line: 0, scope: !2836)
!2844 = !DILocation(line: 440, column: 3, scope: !2836)
!2845 = !DILocation(line: 441, column: 3, scope: !2836)
!2846 = distinct !DISubprogram(name: "lto_delete_in_decl_state", scope: !3, file: !3, line: 447, type: !2847, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !471}
!2849 = !{!2850, !2851}
!2850 = !DILocalVariable(name: "state", arg: 1, scope: !2846, file: !3, line: 447, type: !471)
!2851 = !DILocalVariable(name: "i", scope: !2846, file: !3, line: 449, type: !424)
!2852 = !DILocation(line: 0, scope: !2846)
!2853 = !DILocation(line: 451, column: 8, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 451, column: 3)
!2855 = !DILocation(line: 0, scope: !2854)
!2856 = !DILocation(line: 451, column: 17, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 451, column: 3)
!2858 = !DILocation(line: 451, column: 3, scope: !2854)
!2859 = !DILocation(line: 452, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 452, column: 9)
!2861 = !DILocation(line: 452, column: 9, scope: !2860)
!2862 = !DILocation(line: 452, column: 9, scope: !2857)
!2863 = !DILocation(line: 453, column: 7, scope: !2860)
!2864 = !DILocation(line: 451, column: 40, scope: !2857)
!2865 = !DILocation(line: 451, column: 3, scope: !2857)
!2866 = distinct !{!2866, !2858, !2867}
!2867 = !DILocation(line: 453, column: 36, scope: !2854)
!2868 = !DILocation(line: 454, column: 9, scope: !2846)
!2869 = !DILocation(line: 454, column: 3, scope: !2846)
!2870 = !DILocation(line: 455, column: 1, scope: !2846)
!2871 = distinct !DISubprogram(name: "lto_hash_in_decl_state", scope: !3, file: !3, line: 460, type: !1315, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !3, line: 460, type: !1107)
!2874 = !DILocalVariable(name: "state", scope: !2871, file: !3, line: 462, type: !1905)
!2875 = !DILocation(line: 0, scope: !2871)
!2876 = !DILocation(line: 463, column: 10, scope: !2871)
!2877 = !DILocation(line: 463, column: 36, scope: !2871)
!2878 = !DILocation(line: 463, column: 3, scope: !2871)
!2879 = distinct !DISubprogram(name: "lto_eq_in_decl_state", scope: !3, file: !3, line: 470, type: !1321, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DILocalVariable(name: "p1", arg: 1, scope: !2879, file: !3, line: 470, type: !1107)
!2882 = !DILocalVariable(name: "p2", arg: 2, scope: !2879, file: !3, line: 470, type: !1107)
!2883 = !DILocalVariable(name: "state1", scope: !2879, file: !3, line: 472, type: !1905)
!2884 = !DILocalVariable(name: "state2", scope: !2879, file: !3, line: 474, type: !1905)
!2885 = !DILocation(line: 0, scope: !2879)
!2886 = !DILocation(line: 476, column: 18, scope: !2879)
!2887 = !DILocation(line: 476, column: 37, scope: !2879)
!2888 = !DILocation(line: 476, column: 26, scope: !2879)
!2889 = !DILocation(line: 476, column: 3, scope: !2879)
!2890 = distinct !DISubprogram(name: "lto_get_function_in_decl_state", scope: !3, file: !3, line: 484, type: !2891, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!471, !1913, !480}
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "file_data", arg: 1, scope: !2890, file: !3, line: 484, type: !1913)
!2895 = !DILocalVariable(name: "func", arg: 2, scope: !2890, file: !3, line: 485, type: !480)
!2896 = !DILocalVariable(name: "temp", scope: !2890, file: !3, line: 487, type: !472)
!2897 = !DILocalVariable(name: "slot", scope: !2890, file: !3, line: 488, type: !1329)
!2898 = !DILocation(line: 0, scope: !2890)
!2899 = !DILocation(line: 487, column: 3, scope: !2890)
!2900 = !DILocation(line: 490, column: 8, scope: !2890)
!2901 = !DILocation(line: 490, column: 16, scope: !2890)
!2902 = !DILocation(line: 491, column: 37, scope: !2890)
!2903 = !DILocation(line: 491, column: 10, scope: !2890)
!2904 = !DILocation(line: 492, column: 10, scope: !2890)
!2905 = !DILocation(line: 492, column: 45, scope: !2890)
!2906 = !DILocation(line: 493, column: 1, scope: !2890)
!2907 = !DILocation(line: 492, column: 3, scope: !2890)
