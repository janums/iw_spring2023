; ModuleID = 'tree-cfgcleanup.bc'
source_filename = "tree-cfgcleanup.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct._edge_var_map = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.VEC_edge_var_map_heap = type { %struct.VEC_edge_var_map_base }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [9 x i8] c"mergephi\00", align 1
@pass_merge_phi = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_merge_phi, i32 ()* @merge_phi_nodes, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 80, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8, !dbg !0
@cfgcleanup_altered_bbs = common dso_local local_unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2145
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tree-cfgcleanup.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2193
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2194
  ret i32 %call, !dbg !2195
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2196 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2200
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2201
  ret i32 %call, !dbg !2202
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2258, metadata !DIExpression()), !dbg !2259
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2260
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2260
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2260
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2260
  %cmp = icmp uge i8* %0, %1, !dbg !2260
  %conv1 = zext i1 %cmp to i64, !dbg !2260
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2260
  %tobool = icmp eq i64 %expval, 0, !dbg !2260
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2260

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2260
  br label %cond.end, !dbg !2260

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2260
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2260
  %2 = load i8, i8* %0, align 1, !dbg !2260
  %conv3 = zext i8 %2 to i32, !dbg !2260
  br label %cond.end, !dbg !2260

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2260
  ret i32 %cond, !dbg !2261
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2262 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2264, metadata !DIExpression()), !dbg !2265
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2266
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2266
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2266
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2266
  %cmp = icmp uge i8* %0, %1, !dbg !2266
  %conv1 = zext i1 %cmp to i64, !dbg !2266
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2266
  %tobool = icmp eq i64 %expval, 0, !dbg !2266
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2266

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2266
  br label %cond.end, !dbg !2266

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2266
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2266
  %2 = load i8, i8* %0, align 1, !dbg !2266
  %conv3 = zext i8 %2 to i32, !dbg !2266
  br label %cond.end, !dbg !2266

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2266
  ret i32 %cond, !dbg !2267
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2268 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2269
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2269
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2269
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2269
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2269
  %cmp = icmp uge i8* %1, %2, !dbg !2269
  %conv1 = zext i1 %cmp to i64, !dbg !2269
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2269
  %tobool = icmp eq i64 %expval, 0, !dbg !2269
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2269

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2269
  br label %cond.end, !dbg !2269

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2269
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2269
  %3 = load i8, i8* %1, align 1, !dbg !2269
  %conv3 = zext i8 %3 to i32, !dbg !2269
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2269
  ret i32 %cond, !dbg !2270
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2275, metadata !DIExpression()), !dbg !2276
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2277
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2278
  ret i32 %call, !dbg !2279
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2285, metadata !DIExpression()), !dbg !2286
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2287
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2287
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2287
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2287
  %cmp = icmp uge i8* %0, %1, !dbg !2287
  %conv1 = zext i1 %cmp to i64, !dbg !2287
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2287
  %tobool = icmp eq i64 %expval, 0, !dbg !2287
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2287

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2287
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2287
  br label %cond.end, !dbg !2287

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2287
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2287
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2287
  store i8 %conv2, i8* %0, align 1, !dbg !2287
  %conv6 = and i32 %__c, 255, !dbg !2287
  br label %cond.end, !dbg !2287

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2287
  ret i32 %cond, !dbg !2288
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2292, metadata !DIExpression()), !dbg !2293
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2294
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2294
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2294
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2294
  %cmp = icmp uge i8* %0, %1, !dbg !2294
  %conv1 = zext i1 %cmp to i64, !dbg !2294
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2294
  %tobool = icmp eq i64 %expval, 0, !dbg !2294
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2294

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2294
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2294
  br label %cond.end, !dbg !2294

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2294
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2294
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2294
  store i8 %conv2, i8* %0, align 1, !dbg !2294
  %conv6 = and i32 %__c, 255, !dbg !2294
  br label %cond.end, !dbg !2294

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2294
  ret i32 %cond, !dbg !2295
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2298, metadata !DIExpression()), !dbg !2299
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2300
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2300
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2300
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2300
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2300
  %cmp = icmp uge i8* %1, %2, !dbg !2300
  %conv1 = zext i1 %cmp to i64, !dbg !2300
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2300
  %tobool = icmp eq i64 %expval, 0, !dbg !2300
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2300

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2300
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2300
  br label %cond.end, !dbg !2300

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2300
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2300
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2300
  store i8 %conv4, i8* %1, align 1, !dbg !2300
  %conv6 = and i32 %__c, 255, !dbg !2300
  br label %cond.end, !dbg !2300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2300
  ret i32 %cond, !dbg !2301
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2302 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2310, metadata !DIExpression()), !dbg !2311
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2312
  ret i64 %call, !dbg !2313
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2314 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2316, metadata !DIExpression()), !dbg !2317
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2318
  %0 = load i32, i32* %_flags, align 8, !dbg !2318
  %and = lshr i32 %0, 4, !dbg !2318
  %and.lobit = and i32 %and, 1, !dbg !2318
  ret i32 %and.lobit, !dbg !2319
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2322, metadata !DIExpression()), !dbg !2323
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2324
  %0 = load i32, i32* %_flags, align 8, !dbg !2324
  %and = lshr i32 %0, 5, !dbg !2324
  %and.lobit = and i32 %and, 1, !dbg !2324
  ret i32 %and.lobit, !dbg !2325
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2329, metadata !DIExpression()), !dbg !2330
  %__c.off = add i32 %__c, 128, !dbg !2331
  %0 = icmp ult i32 %__c.off, 384, !dbg !2331
  br i1 %0, label %cond.true, label %cond.end, !dbg !2331

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2332
  %1 = load i32*, i32** %call, align 8, !dbg !2333
  %idxprom = sext i32 %__c to i64, !dbg !2334
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2334
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2334
  br label %cond.end, !dbg !2335

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2335
  ret i32 %cond, !dbg !2336
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2339, metadata !DIExpression()), !dbg !2340
  %__c.off = add i32 %__c, 128, !dbg !2341
  %0 = icmp ult i32 %__c.off, 384, !dbg !2341
  br i1 %0, label %cond.true, label %cond.end, !dbg !2341

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2342
  %1 = load i32*, i32** %call, align 8, !dbg !2343
  %idxprom = sext i32 %__c to i64, !dbg !2344
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2344
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2344
  br label %cond.end, !dbg !2345

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2345
  ret i32 %cond, !dbg !2346
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2352, metadata !DIExpression()), !dbg !2353
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2354
  %conv = trunc i64 %call to i32, !dbg !2355
  ret i32 %conv, !dbg !2356
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2357 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2363
  ret i64 %call, !dbg !2364
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2365 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2372
  ret i64 %call, !dbg !2373
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2380, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2381, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2382, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2383, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2384, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 0, metadata !2385, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2386, metadata !DIExpression()), !dbg !2390
  br label %while.cond, !dbg !2391

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2392
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2386, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2385, metadata !DIExpression()), !dbg !2390
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2393
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2391

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2394
  %div = lshr i64 %add, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %div, metadata !2387, metadata !DIExpression()), !dbg !2390
  %mul = mul i64 %div, %__size, !dbg !2397
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2388, metadata !DIExpression()), !dbg !2390
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %call, metadata !2389, metadata !DIExpression()), !dbg !2390
  %cmp1 = icmp slt i32 %call, 0, !dbg !2400
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2402

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2403
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2405

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2385, metadata !DIExpression()), !dbg !2390
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2390
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2386, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2385, metadata !DIExpression()), !dbg !2390
  br label %while.cond, !dbg !2391, !llvm.loop !2407

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2390
  ret i8* %retval.0, !dbg !2409
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2410 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2416, metadata !DIExpression()), !dbg !2417
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2418
  ret double %call, !dbg !2419
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2420 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %base, metadata !2431, metadata !DIExpression()), !dbg !2432
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2433
  ret i64 %call, !dbg !2434
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %base, metadata !2443, metadata !DIExpression()), !dbg !2444
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2445
  ret i64 %call, !dbg !2446
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2447 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %base, metadata !2460, metadata !DIExpression()), !dbg !2461
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2462
  ret i64 %call, !dbg !2463
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2464 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2468, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %base, metadata !2470, metadata !DIExpression()), !dbg !2471
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2472
  ret i64 %call, !dbg !2473
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2474 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2515, metadata !DIExpression()), !dbg !2516
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2517
  ret i32 %call, !dbg !2518
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2519 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2522, metadata !DIExpression()), !dbg !2523
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2524
  ret i32 %call, !dbg !2525
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2526 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2531, metadata !DIExpression()), !dbg !2532
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2533
  ret i32 %call, !dbg !2534
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2535 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2542, metadata !DIExpression()), !dbg !2543
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2544
  ret i32 %call, !dbg !2545
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2546 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2552, metadata !DIExpression(DW_OP_deref)), !dbg !2553
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2554
  ret i32 %call, !dbg !2555
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2556 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2563, metadata !DIExpression(DW_OP_deref)), !dbg !2564
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2565
  ret i32 %call, !dbg !2566
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2567 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2592, metadata !DIExpression()), !dbg !2593
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2594
  ret i32 %call, !dbg !2595
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2596 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2599, metadata !DIExpression()), !dbg !2600
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2601
  ret i32 %call, !dbg !2602
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2603 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2608, metadata !DIExpression()), !dbg !2609
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2610
  ret i32 %call, !dbg !2611
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2612 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2619, metadata !DIExpression()), !dbg !2620
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2621
  ret i32 %call, !dbg !2622
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #5 !dbg !2623 {
entry:
  %call = tail call fastcc zeroext i8 @cleanup_tree_cfg_noloop() #7, !dbg !2626
  call void @llvm.dbg.value(metadata i8 %call, metadata !2625, metadata !DIExpression()), !dbg !2627
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2628
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2628
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2628
  %cmp = icmp eq %struct.loops* %1, null, !dbg !2630
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2631

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 64) #7, !dbg !2632
  %tobool = icmp eq i8 %call1, 0, !dbg !2632
  br i1 %tobool, label %if.end, label %if.then, !dbg !2633

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @repair_loop_structures() #7, !dbg !2634
  br label %if.end, !dbg !2634

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret i8 %call, !dbg !2635
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_noloop() unnamed_addr #5 !dbg !2636 {
entry:
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2639
  %tobool = icmp eq i8 %0, 0, !dbg !2639
  br i1 %tobool, label %do.end, label %if.then, !dbg !2642

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 51) #6, !dbg !2639
  br label %do.end, !dbg !2639

do.end:                                           ; preds = %entry, %if.then
  %call = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !2643
  %tobool1 = icmp eq i8 %call, 0, !dbg !2643
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !2645

if.then2:                                         ; preds = %do.end
  %call3 = tail call zeroext i8 @delete_unreachable_blocks() #6, !dbg !2646
  call void @llvm.dbg.value(metadata i8 %call3, metadata !2638, metadata !DIExpression()), !dbg !2648
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2649
  br label %if.end4, !dbg !2650

if.end4:                                          ; preds = %do.end, %if.then2
  %changed.0 = phi i8 [ %call3, %if.then2 ], [ 0, %do.end ]
  %call5 = tail call fastcc zeroext i8 @cleanup_tree_cfg_1() #7, !dbg !2651
  %or = or i8 %changed.0, %call5, !dbg !2652
  call void @llvm.dbg.value(metadata i8 %or, metadata !2638, metadata !DIExpression()), !dbg !2648
  %call8 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !2653
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2653
  br i1 %tobool9, label %cond.true, label %cond.end, !dbg !2653

cond.true:                                        ; preds = %if.end4
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 716, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2653
  br label %cond.end, !dbg !2653

cond.end:                                         ; preds = %if.end4, %cond.true
  tail call void @compact_blocks() #6, !dbg !2654
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !2655
  %tobool11 = icmp eq i8 %1, 0, !dbg !2655
  br i1 %tobool11, label %do.end15, label %if.then12, !dbg !2658

if.then12:                                        ; preds = %cond.end
  tail call void @timevar_pop_1(i32 51) #6, !dbg !2655
  br label %do.end15, !dbg !2655

do.end15:                                         ; preds = %cond.end, %if.then12
  %tobool17 = icmp eq i8 %or, 0, !dbg !2659
  br i1 %tobool17, label %if.end20, label %land.lhs.true, !dbg !2661

land.lhs.true:                                    ; preds = %do.end15
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2662
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2662
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2662
  %tobool18 = icmp eq %struct.loops* %3, null, !dbg !2662
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2663

if.then19:                                        ; preds = %land.lhs.true
  tail call fastcc void @loops_state_set(i32 64) #7, !dbg !2664
  br label %if.end20, !dbg !2664

if.end20:                                         ; preds = %land.lhs.true, %do.end15, %if.then19
  ret i8 %or, !dbg !2665
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !2666 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2672
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2672
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2672
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2673
  %2 = load i32, i32* %state, align 8, !dbg !2673
  %and = and i32 %2, %flags, !dbg !2674
  %cmp = icmp eq i32 %and, %flags, !dbg !2675
  %conv1 = zext i1 %cmp to i8, !dbg !2676
  ret i8 %conv1, !dbg !2677
}

; Function Attrs: nounwind uwtable
define internal fastcc void @repair_loop_structures() unnamed_addr #5 !dbg !2678 {
entry:
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2682, metadata !DIExpression()), !dbg !2684
  tail call void @fix_loop_structure(%struct.bitmap_head_def* %call) #6, !dbg !2685
  %call1 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 32) #7, !dbg !2686
  %tobool = icmp eq i8 %call1, 0, !dbg !2686
  br i1 %tobool, label %if.end, label %if.then, !dbg !2688

if.then:                                          ; preds = %entry
  tail call void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def* %call, i32 2048) #6, !dbg !2689
  br label %if.end, !dbg !2689

if.end:                                           ; preds = %entry, %if.then
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2682, metadata !DIExpression()), !dbg !2684
  tail call void @scev_reset() #6, !dbg !2691
  tail call fastcc void @loops_state_clear(i32 64) #7, !dbg !2692
  ret void, !dbg !2693
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_merge_phi() #5 !dbg !2694 {
entry:
  ret i8 1, !dbg !2695
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_phi_nodes() #5 !dbg !2696 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %imm_use = alloca %struct.ssa_use_operand_d*, align 8
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2722
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2722
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2722
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2722
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2722
  %conv = sext i32 %2 to i64, !dbg !2722
  %mul = shl nsw i64 %conv, 3, !dbg !2722
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2722
  %3 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !2698, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !2699, metadata !DIExpression()), !dbg !2723
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2724
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2725
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2725
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2725
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2725
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2725
  %7 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2726
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2727
  %9 = bitcast %struct.ssa_use_operand_d** %imm_use to i8*, !dbg !2728
  %10 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !2728
  br label %for.cond, !dbg !2725

for.cond:                                         ; preds = %cleanup58, %entry
  %11 = phi %struct.control_flow_graph* [ %5, %entry ], [ %.pre2, %cleanup58 ], !dbg !2729
  %.pn = phi %struct.basic_block_def* [ %6, %entry ], [ %bb.0, %cleanup58 ]
  %current.0 = phi %struct.basic_block_def** [ %3, %entry ], [ %current.3, %cleanup58 ], !dbg !2730
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2731
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.0, metadata !2699, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2700, metadata !DIExpression()), !dbg !2723
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !2729
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2729
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !2729
  br i1 %cmp, label %while.cond.preheader, label %for.body, !dbg !2725

while.cond.preheader:                             ; preds = %for.cond
  %current.0.lcssa = phi %struct.basic_block_def** [ %current.0, %for.cond ], !dbg !2730
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.0.lcssa, metadata !2699, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.0.lcssa, metadata !2699, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.0.lcssa, metadata !2699, metadata !DIExpression()), !dbg !2723
  br label %while.cond, !dbg !2732

for.body:                                         ; preds = %for.cond
  %call6 = call fastcc zeroext i8 @tree_forwarder_block_p(%struct.basic_block_def* %bb.0, i8 zeroext 1) #7, !dbg !2733
  %tobool = icmp eq i8 %call6, 0, !dbg !2733
  br i1 %tobool, label %cleanup58, label %if.end, !dbg !2735

if.end:                                           ; preds = %for.body
  %call7 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.0) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call7, metadata !2701, metadata !DIExpression()), !dbg !2737
  %call8 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %call7) #7, !dbg !2738
  %call9 = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call8) #7, !dbg !2740
  %tobool11 = icmp eq i8 %call9, 0, !dbg !2740
  br i1 %tobool11, label %lor.lhs.false, label %cleanup58, !dbg !2741

lor.lhs.false:                                    ; preds = %if.end
  %call12 = call fastcc zeroext i8 @has_abnormal_incoming_edge_p(%struct.basic_block_def* %bb.0) #7, !dbg !2742
  %tobool14 = icmp eq i8 %call12, 0, !dbg !2742
  br i1 %tobool14, label %if.end16, label %cleanup58, !dbg !2743

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call7, %struct.basic_block_def* %bb.0) #6, !dbg !2744
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2744
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !2745

if.then19:                                        ; preds = %if.end16
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %current.0, i64 1, !dbg !2746
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2699, metadata !DIExpression()), !dbg !2723
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %current.0, align 8, !dbg !2748
  br label %cleanup58, !dbg !2749

if.else:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2750
  %call20 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb.0) #7, !dbg !2751
  %dest_idx21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 6, !dbg !2752
  %13 = load i32, i32* %dest_idx21, align 4, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %13, metadata !2714, metadata !DIExpression()), !dbg !2726
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2753
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !2753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2753
  %conv43 = zext i32 %13 to i64, !dbg !2754
  br label %for.cond22, !dbg !2756

for.cond22:                                       ; preds = %for.inc, %if.else
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2705, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  %call23 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2757
  %tobool24 = icmp eq i8 %call23, 0, !dbg !2758
  br i1 %tobool24, label %for.body25, label %for.end, !dbg !2759

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2705, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  %call26 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2760
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call26, metadata !2715, metadata !DIExpression()), !dbg !2728
  %call27 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call26) #7, !dbg !2761
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !2719, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2763
  %call28 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call27) #7, !dbg !2764
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2764
  br i1 %tobool29, label %if.end31, label %cleanup, !dbg !2766

if.end31:                                         ; preds = %for.body25
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %imm_use, metadata !2720, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !2721, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  %call32 = call fastcc zeroext i8 @single_imm_use(%union.tree_node* %call27, %struct.ssa_use_operand_d** nonnull %imm_use, %union.gimple_statement_d** nonnull %use_stmt) #7, !dbg !2767
  %tobool33 = icmp eq i8 %call32, 0, !dbg !2767
  br i1 %tobool33, label %cleanup, label %lor.lhs.false34, !dbg !2768

lor.lhs.false34:                                  ; preds = %if.end31
  %14 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2769
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %14, metadata !2721, metadata !DIExpression()), !dbg !2728
  %call35 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %14) #7, !dbg !2770
  %cmp36 = icmp eq i32 %call35, 16, !dbg !2771
  br i1 %cmp36, label %lor.lhs.false38, label %cleanup, !dbg !2772

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %15 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2773
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %15, metadata !2721, metadata !DIExpression()), !dbg !2728
  %call39 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %15) #7, !dbg !2774
  %cmp40 = icmp eq %struct.basic_block_def* %call39, %call7, !dbg !2775
  br i1 %cmp40, label %lor.lhs.false42, label %cleanup, !dbg !2776

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %16 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2777
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %16, metadata !2721, metadata !DIExpression()), !dbg !2728
  %call44 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %16, i64 %conv43) #7, !dbg !2778
  %cmp45 = icmp eq %union.tree_node* %call44, %call27, !dbg !2779
  %spec.select = select i1 %cmp45, i32 0, i32 5, !dbg !2780
  br label %cleanup, !dbg !2780

cleanup:                                          ; preds = %lor.lhs.false38, %lor.lhs.false34, %if.end31, %for.body25, %lor.lhs.false42
  %cleanup.dest.slot.0 = phi i32 [ 7, %for.body25 ], [ 5, %lor.lhs.false38 ], [ 5, %lor.lhs.false34 ], [ 5, %if.end31 ], [ %spec.select, %lor.lhs.false42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !2781
  %switch1 = icmp eq i32 %cleanup.dest.slot.0, 5
  br i1 %switch1, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2705, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2782
  br label %for.cond22, !dbg !2783, !llvm.loop !2784

for.end:                                          ; preds = %cleanup, %for.cond22
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2705, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  %call52 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2786
  %tobool53 = icmp eq i8 %call52, 0, !dbg !2786
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !2788

if.then54:                                        ; preds = %for.end
  %incdec.ptr55 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %current.0, i64 1, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr55, metadata !2699, metadata !DIExpression()), !dbg !2723
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %current.0, align 8, !dbg !2790
  br label %if.end56, !dbg !2791

if.end56:                                         ; preds = %for.end, %if.then54
  %current.1 = phi %struct.basic_block_def** [ %incdec.ptr55, %if.then54 ], [ %current.0, %for.end ], !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.1, metadata !2699, metadata !DIExpression()), !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2792
  br label %cleanup58

cleanup58:                                        ; preds = %lor.lhs.false, %if.end, %for.body, %if.then19, %if.end56
  %current.3 = phi %struct.basic_block_def** [ %current.0, %for.body ], [ %current.0, %lor.lhs.false ], [ %current.0, %if.end ], [ %current.1, %if.end56 ], [ %incdec.ptr, %if.then19 ], !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.3, metadata !2699, metadata !DIExpression()), !dbg !2723
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2729
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2793
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !2729
  br label %for.cond, !dbg !2729, !llvm.loop !2794

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %current.4 = phi %struct.basic_block_def** [ %incdec.ptr66, %while.body ], [ %current.0.lcssa, %while.cond.preheader ], !dbg !2723
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %current.4, metadata !2699, metadata !DIExpression()), !dbg !2723
  %cmp64 = icmp eq %struct.basic_block_def** %current.4, %3, !dbg !2796
  br i1 %cmp64, label %while.end, label %while.body, !dbg !2732

while.body:                                       ; preds = %while.cond
  %incdec.ptr66 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %current.4, i64 -1, !dbg !2797
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr66, metadata !2699, metadata !DIExpression()), !dbg !2723
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr66, align 8, !dbg !2799
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !2700, metadata !DIExpression()), !dbg !2723
  call fastcc void @remove_forwarder_block_with_phi(%struct.basic_block_def* %17) #7, !dbg !2800
  br label %while.cond, !dbg !2732, !llvm.loop !2801

while.end:                                        ; preds = %while.cond
  call void @free(i8* %call) #6, !dbg !2803
  ret i32 0, !dbg !2804
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local zeroext i8 @dom_info_available_p(i32) local_unnamed_addr #2

declare dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #2

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_1() unnamed_addr #5 !dbg !2805 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2811
  %call = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #7, !dbg !2812
  call void @llvm.dbg.value(metadata i8 %call, metadata !2807, metadata !DIExpression()), !dbg !2811
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2813
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !2814
  tail call void @start_recording_case_labels() #6, !dbg !2815
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2816
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2816
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2816
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2816
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !2816
  call void @llvm.dbg.value(metadata i32 %2, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 2, metadata !2809, metadata !DIExpression()), !dbg !2811
  br label %for.cond, !dbg !2817

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.inc ], !dbg !2819
  %retval1.0 = phi i8 [ %call, %entry ], [ %retval1.1, %for.inc ], !dbg !2811
  call void @llvm.dbg.value(metadata i8 %retval1.0, metadata !2807, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2809, metadata !DIExpression()), !dbg !2811
  %cmp = icmp ult i32 %i.0, %2, !dbg !2820
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !2822

while.cond.preheader:                             ; preds = %for.cond
  %retval1.0.lcssa = phi i8 [ %retval1.0, %for.cond ], !dbg !2811
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2807, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2807, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2807, metadata !DIExpression()), !dbg !2811
  br label %while.cond.outer, !dbg !2823

for.body:                                         ; preds = %for.cond
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2824
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2824
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2824
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 2, !dbg !2824
  %5 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2824
  %tobool = icmp eq %struct.VEC_basic_block_gc* %5, null, !dbg !2824
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2824

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %5, i64 0, i32 0, !dbg !2824
  br label %cond.end, !dbg !2824

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2824
  %call11 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %i.0) #7, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call11, metadata !2808, metadata !DIExpression()), !dbg !2811
  %tobool12 = icmp eq %struct.basic_block_def* %call11, null, !dbg !2826
  br i1 %tobool12, label %for.inc, label %if.then, !dbg !2828

if.then:                                          ; preds = %cond.end
  %call13 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(%struct.basic_block_def* nonnull %call11) #7, !dbg !2829
  %or163 = or i8 %retval1.0, %call13, !dbg !2830
  call void @llvm.dbg.value(metadata i8 %or163, metadata !2807, metadata !DIExpression()), !dbg !2811
  br label %for.inc, !dbg !2831

for.inc:                                          ; preds = %cond.end, %if.then
  %retval1.1 = phi i8 [ %or163, %if.then ], [ %retval1.0, %cond.end ], !dbg !2811
  call void @llvm.dbg.value(metadata i8 %retval1.1, metadata !2807, metadata !DIExpression()), !dbg !2811
  %inc = add i32 %i.0, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2809, metadata !DIExpression()), !dbg !2811
  br label %for.cond, !dbg !2833, !llvm.loop !2834

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  call void @llvm.dbg.value(metadata i8 %retval1.2.ph, metadata !2807, metadata !DIExpression()), !dbg !2811
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !2836
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %6, i64 0, i32 0, !dbg !2836
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2836
  %tobool18 = icmp eq %struct.bitmap_element_def* %7, null, !dbg !2836
  br i1 %tobool18, label %while.end, label %while.body, !dbg !2823

while.body:                                       ; preds = %while.cond
  %call20 = tail call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %6) #6, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %call20, metadata !2809, metadata !DIExpression()), !dbg !2811
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !2839
  %call21 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %8, i32 %call20) #6, !dbg !2840
  %cmp22 = icmp ult i32 %call20, 2, !dbg !2841
  br i1 %cmp22, label %while.cond.backedge, label %if.end25, !dbg !2843

while.cond.backedge:                              ; preds = %while.body, %cond.end36
  br label %while.cond, !dbg !2811, !llvm.loop !2844

if.end25:                                         ; preds = %while.body
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2846
  %cfg27 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2846
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27, align 8, !dbg !2846
  %x_basic_block_info28 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2846
  %11 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info28, align 8, !dbg !2846
  %tobool29 = icmp eq %struct.VEC_basic_block_gc* %11, null, !dbg !2846
  br i1 %tobool29, label %cond.end36, label %cond.true30, !dbg !2846

cond.true30:                                      ; preds = %if.end25
  %base34 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %11, i64 0, i32 0, !dbg !2846
  br label %cond.end36, !dbg !2846

cond.end36:                                       ; preds = %if.end25, %cond.true30
  %cond37 = phi %struct.VEC_basic_block_base* [ %base34, %cond.true30 ], [ null, %if.end25 ], !dbg !2846
  %call38 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond37, i32 %call20) #7, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call38, metadata !2808, metadata !DIExpression()), !dbg !2811
  %tobool39 = icmp eq %struct.basic_block_def* %call38, null, !dbg !2847
  br i1 %tobool39, label %while.cond.backedge, label %if.end41, !dbg !2849

if.end41:                                         ; preds = %cond.end36
  %call38.lcssa = phi %struct.basic_block_def* [ %call38, %cond.end36 ], !dbg !2846
  %call42 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(%struct.basic_block_def* nonnull %call38.lcssa) #7, !dbg !2850
  %or451 = or i8 %retval1.2.ph, %call42, !dbg !2851
  call void @llvm.dbg.value(metadata i8 %or451, metadata !2807, metadata !DIExpression()), !dbg !2811
  %call47 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #7, !dbg !2852
  %or502 = or i8 %or451, %call47, !dbg !2853
  call void @llvm.dbg.value(metadata i8 %or502, metadata !2807, metadata !DIExpression()), !dbg !2811
  br label %while.cond.outer, !dbg !2823, !llvm.loop !2844

while.cond.outer:                                 ; preds = %while.cond.preheader, %if.end41
  %retval1.2.ph = phi i8 [ %retval1.0.lcssa, %while.cond.preheader ], [ %or502, %if.end41 ]
  br label %while.cond, !dbg !2823

while.end:                                        ; preds = %while.cond
  %retval1.2.ph.lcssa = phi i8 [ %retval1.2.ph, %while.cond ]
  tail call void @end_recording_case_labels() #6, !dbg !2854
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !2855
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %12) #6, !dbg !2855
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !2855
  ret i8 %retval1.2.ph.lcssa, !dbg !2856
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @compact_blocks() local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !2857 {
entry:
  call void @llvm.dbg.value(metadata i32 64, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2863
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2863
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2863
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2864
  %2 = load i32, i32* %state, align 8, !dbg !2865
  %or = or i32 %2, 64, !dbg !2865
  store i32 %or, i32* %state, align 8, !dbg !2865
  ret void, !dbg !2866
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @split_bbs_on_noreturn_calls() unnamed_addr #5 !dbg !2867 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2872
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2873
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2875
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2875
  %tobool = icmp eq %struct.gimple_df* %1, null, !dbg !2873
  br i1 %tobool, label %if.end51, label %while.cond.preheader, !dbg !2876

while.cond.preheader:                             ; preds = %entry
  br label %while.cond.outer, !dbg !2877

while.cond.outer:                                 ; preds = %while.cond.preheader, %if.end
  %changed.0.ph = phi i8 [ 0, %while.cond.preheader ], [ 1, %if.end ]
  br label %while.cond, !dbg !2877

while.cond:                                       ; preds = %while.cond.outer, %if.then48
  call void @llvm.dbg.value(metadata i8 %changed.0.ph, metadata !2869, metadata !DIExpression()), !dbg !2872
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2878
  %gimple_df2 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !2878
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df2, align 8, !dbg !2878
  %modified_noreturn_calls = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 1, !dbg !2878
  %4 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %modified_noreturn_calls, align 8, !dbg !2878
  %tobool3 = icmp eq %struct.VEC_gimple_gc* %4, null, !dbg !2878
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2878

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %4, i64 0, i32 0, !dbg !2878
  br label %cond.end, !dbg !2878

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2878
  %call = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %cond) #7, !dbg !2878
  %tobool7 = icmp eq i32 %call, 0, !dbg !2877
  br i1 %tobool7, label %if.end51.loopexit, label %while.body, !dbg !2877

while.body:                                       ; preds = %cond.end
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2879
  %gimple_df9 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !2879
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df9, align 8, !dbg !2879
  %modified_noreturn_calls10 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 1, !dbg !2879
  %7 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %modified_noreturn_calls10, align 8, !dbg !2879
  %tobool11 = icmp eq %struct.VEC_gimple_gc* %7, null, !dbg !2879
  br i1 %tobool11, label %cond.end18, label %cond.true12, !dbg !2879

cond.true12:                                      ; preds = %while.body
  %base16 = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %7, i64 0, i32 0, !dbg !2879
  br label %cond.end18, !dbg !2879

cond.end18:                                       ; preds = %while.body, %cond.true12
  %cond19 = phi %struct.VEC_gimple_base* [ %base16, %cond.true12 ], [ null, %while.body ], !dbg !2879
  %call20 = tail call fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %cond19) #7, !dbg !2879
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !2870, metadata !DIExpression()), !dbg !2872
  %call21 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call20) #7, !dbg !2881
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call21, metadata !2871, metadata !DIExpression()), !dbg !2872
  %cmp = icmp eq %struct.basic_block_def* %call21, null, !dbg !2882
  br i1 %cmp, label %if.then48, label %lor.lhs.false, !dbg !2884

lor.lhs.false:                                    ; preds = %cond.end18
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call21, i64 0, i32 9, !dbg !2885
  %8 = load i32, i32* %index, align 8, !dbg !2885
  %cmp22 = icmp slt i32 %8, 2, !dbg !2886
  br i1 %cmp22, label %if.then48, label %lor.lhs.false23, !dbg !2887

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2888
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2888
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2888
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 3, !dbg !2888
  %11 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2888
  %cmp26 = icmp slt i32 %8, %11, !dbg !2889
  br i1 %cmp26, label %lor.lhs.false27, label %if.then48, !dbg !2890

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2891
  %12 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2891
  %tobool30 = icmp eq %struct.VEC_basic_block_gc* %12, null, !dbg !2891
  br i1 %tobool30, label %cond.end37, label %cond.true31, !dbg !2891

cond.true31:                                      ; preds = %lor.lhs.false27
  %base35 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %12, i64 0, i32 0, !dbg !2891
  br label %cond.end37, !dbg !2891

cond.end37:                                       ; preds = %lor.lhs.false27, %cond.true31
  %cond38 = phi %struct.VEC_basic_block_base* [ %base35, %cond.true31 ], [ null, %lor.lhs.false27 ], !dbg !2891
  %call40 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond38, i32 %8) #7, !dbg !2891
  %cmp41 = icmp eq %struct.basic_block_def* %call40, %call21, !dbg !2892
  br i1 %cmp41, label %lor.lhs.false42, label %if.then48, !dbg !2893

lor.lhs.false42:                                  ; preds = %cond.end37
  %call43 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* nonnull %call21) #6, !dbg !2894
  %cmp44 = icmp eq %union.gimple_statement_d* %call43, %call20, !dbg !2895
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45, !dbg !2896

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(%union.gimple_statement_d* %call20) #7, !dbg !2897
  %tobool47 = icmp eq i8 %call46, 0, !dbg !2897
  br i1 %tobool47, label %if.then48, label %if.end, !dbg !2898

if.then48:                                        ; preds = %lor.lhs.false45, %cond.end37, %lor.lhs.false23, %lor.lhs.false42, %lor.lhs.false, %cond.end18
  br label %while.cond, !dbg !2899, !llvm.loop !2900

if.end:                                           ; preds = %lor.lhs.false45
  %call20.lcssa = phi %union.gimple_statement_d* [ %call20, %lor.lhs.false45 ], !dbg !2879
  %call21.lcssa = phi %struct.basic_block_def* [ %call21, %lor.lhs.false45 ], !dbg !2881
  call void @llvm.dbg.value(metadata i8 1, metadata !2869, metadata !DIExpression()), !dbg !2872
  %13 = bitcast %union.gimple_statement_d* %call20.lcssa to i8*, !dbg !2902
  %call49 = tail call %struct.edge_def* @split_block(%struct.basic_block_def* nonnull %call21.lcssa, i8* %13) #6, !dbg !2903
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call21.lcssa, i64 0, i32 1, !dbg !2904
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2904
  %call50 = tail call fastcc zeroext i8 @remove_fallthru_edge(%struct.VEC_edge_gc* %14) #7, !dbg !2905
  br label %while.cond.outer, !dbg !2877, !llvm.loop !2900

if.end51.loopexit:                                ; preds = %cond.end
  %changed.0.ph.lcssa = phi i8 [ %changed.0.ph, %cond.end ]
  br label %if.end51, !dbg !2906

if.end51:                                         ; preds = %if.end51.loopexit, %entry
  %changed.1 = phi i8 [ 0, %entry ], [ %changed.0.ph.lcssa, %if.end51.loopexit ], !dbg !2907
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2869, metadata !DIExpression()), !dbg !2872
  ret i8 %changed.1, !dbg !2906
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @start_recording_case_labels() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2908 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2915, metadata !DIExpression()), !dbg !2916
  br label %land.end, !dbg !2917

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2917
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2917
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2917
  ret %struct.basic_block_def* %0, !dbg !2917
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_bb(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2918 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2922, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 0, metadata !2923, metadata !DIExpression()), !dbg !2924
  %call = tail call fastcc zeroext i8 @cleanup_omp_return(%struct.basic_block_def* %bb) #7, !dbg !2925
  %tobool = icmp eq i8 %call, 0, !dbg !2925
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2927

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @cleanup_control_flow_bb(%struct.basic_block_def* %bb) #7, !dbg !2928
  call void @llvm.dbg.value(metadata i8 %call2, metadata !2923, metadata !DIExpression()), !dbg !2924
  %0 = load i32, i32* @optimize, align 4, !dbg !2929
  %cmp = icmp sgt i32 %0, 0, !dbg !2931
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !2932

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc zeroext i8 @tree_forwarder_block_p(%struct.basic_block_def* %bb, i8 zeroext 0) #7, !dbg !2933
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2933
  br i1 %tobool4, label %if.end10, label %land.lhs.true5, !dbg !2934

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc zeroext i8 @remove_forwarder_block(%struct.basic_block_def* %bb) #7, !dbg !2935
  %tobool8 = icmp eq i8 %call6, 0, !dbg !2935
  br i1 %tobool8, label %if.end10, label %cleanup, !dbg !2936

if.end10:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %call11 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !2937
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2937
  br i1 %tobool13, label %cleanup, label %land.lhs.true14, !dbg !2939

land.lhs.true14:                                  ; preds = %if.end10
  %call15 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) #7, !dbg !2940
  %call16 = tail call zeroext i8 @can_merge_blocks_p(%struct.basic_block_def* %bb, %struct.basic_block_def* %call15) #6, !dbg !2941
  %tobool18 = icmp eq i8 %call16, 0, !dbg !2941
  br i1 %tobool18, label %cleanup, label %if.then19, !dbg !2942

if.then19:                                        ; preds = %land.lhs.true14
  %call20 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) #7, !dbg !2943
  tail call void @merge_blocks(%struct.basic_block_def* %bb, %struct.basic_block_def* %call20) #6, !dbg !2945
  br label %cleanup, !dbg !2946

cleanup:                                          ; preds = %land.lhs.true5, %land.lhs.true14, %if.end10, %entry, %if.then19
  %retval.0 = phi i8 [ 1, %if.then19 ], [ 1, %entry ], [ 1, %land.lhs.true5 ], [ %call2, %land.lhs.true14 ], [ %call2, %if.end10 ], !dbg !2924
  ret i8 %retval.0, !dbg !2947
}

declare dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @end_recording_case_labels() local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !2948 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2954, metadata !DIExpression()), !dbg !2955
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2956
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2956

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2956
  %0 = load i32, i32* %num, align 8, !dbg !2956
  br label %cond.end, !dbg !2956

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2956
  ret i32 %cond, !dbg !2956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2962, metadata !DIExpression()), !dbg !2964
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2965
  %0 = load i32, i32* %num1, align 8, !dbg !2965
  %dec = add i32 %0, -1, !dbg !2965
  store i32 %dec, i32* %num1, align 8, !dbg !2965
  %idxprom = zext i32 %dec to i64, !dbg !2965
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2965
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2965
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !2963, metadata !DIExpression()), !dbg !2964
  ret %union.gimple_statement_d* %1, !dbg !2965
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2966 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2971, metadata !DIExpression()), !dbg !2972
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2973
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2973
  ret %struct.basic_block_def* %0, !dbg !2974
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2979, metadata !DIExpression()), !dbg !2980
  %call = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %s) #6, !dbg !2981
  %and = lshr i32 %call, 3, !dbg !2982
  %0 = trunc i32 %and to i8, !dbg !2982
  %1 = and i8 %0, 1, !dbg !2982
  ret i8 %1, !dbg !2983
}

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_fallthru_edge(%struct.VEC_edge_gc* %ev) unnamed_addr #5 !dbg !2984 {
entry:
  %ev.addr = alloca %struct.VEC_edge_gc*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc* %ev, metadata !2988, metadata !DIExpression()), !dbg !2997
  store %struct.VEC_edge_gc* %ev, %struct.VEC_edge_gc** %ev.addr, align 8
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2998
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2998
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2999
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3000
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev.addr, metadata !2988, metadata !DIExpression(DW_OP_deref)), !dbg !2997
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %ev.addr) #7, !dbg !3000
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3000
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3000
  store i32 %4, i32* %3, align 8, !dbg !3000
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3000
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3000
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3000
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3002
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3002
  br label %for.cond, !dbg !3000

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3004
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !2997
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3004
  %tobool = icmp eq i8 %call1, 0, !dbg !3000
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !3000

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !2996, metadata !DIExpression()), !dbg !2997
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3007
  %12 = load i32, i32* %flags, align 8, !dbg !3007
  %and = and i32 %12, 1, !dbg !3008
  %cmp = icmp eq i32 %and, 0, !dbg !3009
  br i1 %cmp, label %for.inc, label %if.then, !dbg !3010

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.edge_def* [ %11, %for.body ], !dbg !3005
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @remove_edge_and_dominated_blocks(%struct.edge_def* %.lcssa) #6, !dbg !3011
  br label %cleanup, !dbg !3013

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2989, metadata !DIExpression(DW_OP_deref)), !dbg !2997
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3004
  br label %for.cond, !dbg !3004, !llvm.loop !3014

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3016

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3016
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3016
  ret i8 %retval.0, !dbg !3016
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3017 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3021, metadata !DIExpression()), !dbg !3023
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3024
  store i32 0, i32* %index, align 8, !dbg !3025
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3026
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3027
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3028
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3028
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3028
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3029 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3035, metadata !DIExpression()), !dbg !3036
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3037
  %tobool = icmp eq i8 %call, 0, !dbg !3037
  br i1 %tobool, label %if.then, label %if.else, !dbg !3039

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3040
  br label %return, !dbg !3042

if.else:                                          ; preds = %entry
  br label %return, !dbg !3043

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3045
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3045
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3045
  ret i8 %retval.0, !dbg !3046
}

declare dso_local void @remove_edge_and_dominated_blocks(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3047 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3052, metadata !DIExpression()), !dbg !3053
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3054
  %0 = load i32, i32* %index, align 8, !dbg !3054
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3054
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3054
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3054
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3054
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3054

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3054
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3054
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3054
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3054
  br label %cond.end, !dbg !3054

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3054
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3054
  %cmp = icmp ult i32 %0, %call2, !dbg !3054
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3054

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3054
  br label %cond.end5, !dbg !3054

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3055
  %inc = add i32 %5, 1, !dbg !3055
  store i32 %inc, i32* %index, align 8, !dbg !3055
  ret void, !dbg !3056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3057 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3062
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3062
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3062

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3062
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3062
  br label %cond.end, !dbg !3062

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3062
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3062
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3063
  %conv3 = zext i1 %cmp to i8, !dbg !3064
  ret i8 %conv3, !dbg !3065
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3066 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3071
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3071
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3071

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3071
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3071
  br label %cond.end, !dbg !3071

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3071
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3071
  ret %struct.edge_def* %call2, !dbg !3072
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3079, metadata !DIExpression()), !dbg !3080
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3081
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3081

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3081
  %0 = load i32, i32* %num, align 8, !dbg !3081
  br label %cond.end, !dbg !3081

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3081
  ret i32 %cond, !dbg !3081
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3082 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3087
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3087

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3087
  br label %cond.end, !dbg !3087

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3088
  ret %struct.VEC_edge_gc* %0, !dbg !3089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3095, metadata !DIExpression()), !dbg !3096
  br label %land.end, !dbg !3097

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3097
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3097
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3097
  ret %struct.edge_def* %0, !dbg !3097
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_omp_return(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3100, metadata !DIExpression()), !dbg !3103
  %call = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %bb) #6, !dbg !3104
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3101, metadata !DIExpression()), !dbg !3103
  %cmp = icmp eq %union.gimple_statement_d* %call, null, !dbg !3105
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !3107

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !3108
  %cmp2 = icmp eq i32 %call1, 28, !dbg !3109
  br i1 %cmp2, label %lor.lhs.false3, label %cleanup, !dbg !3110

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3111
  %tobool = icmp eq i8 %call4, 0, !dbg !3111
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3112

if.end:                                           ; preds = %lor.lhs.false3
  %call5 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) #7, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !3102, metadata !DIExpression()), !dbg !3103
  %call6 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %call5) #6, !dbg !3114
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !3101, metadata !DIExpression()), !dbg !3103
  %cmp7 = icmp eq %union.gimple_statement_d* %call6, null, !dbg !3115
  br i1 %cmp7, label %cleanup, label %lor.lhs.false8, !dbg !3117

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call6) #7, !dbg !3118
  %cmp10 = icmp eq i32 %call9, 31, !dbg !3119
  br i1 %cmp10, label %if.end12, label %cleanup, !dbg !3120

if.end12:                                         ; preds = %lor.lhs.false8
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call5, i64 0, i32 0, !dbg !3121
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3121
  %tobool13 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3121
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !3121

cond.true:                                        ; preds = %if.end12
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3121
  br label %cond.end, !dbg !3121

cond.end:                                         ; preds = %if.end12, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end12 ], !dbg !3121
  %call15 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3121
  %cmp16 = icmp eq i32 %call15, 2, !dbg !3123
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !3124

if.end18:                                         ; preds = %cond.end
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3125
  %tobool20 = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !3125
  br i1 %tobool20, label %cond.end25, label %cond.true21, !dbg !3125

cond.true21:                                      ; preds = %if.end18
  %base23 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3125
  br label %cond.end25, !dbg !3125

cond.end25:                                       ; preds = %if.end18, %cond.true21
  %cond26 = phi %struct.VEC_edge_base* [ %base23, %cond.true21 ], [ null, %if.end18 ], !dbg !3125
  %call27 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond26) #7, !dbg !3125
  %cmp28 = icmp eq i32 %call27, 1, !dbg !3125
  br i1 %cmp28, label %cond.end31, label %cond.true29, !dbg !3125

cond.true29:                                      ; preds = %cond.end25
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 593, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3125
  br label %cond.end31, !dbg !3125

cond.end31:                                       ; preds = %cond.end25, %cond.true29
  %call33 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !3126
  tail call void @remove_edge_and_dominated_blocks(%struct.edge_def* %call33) #6, !dbg !3127
  br label %cleanup, !dbg !3128

cleanup:                                          ; preds = %lor.lhs.false8, %lor.lhs.false3, %lor.lhs.false, %cond.end, %if.end, %entry, %cond.end31
  %retval.0 = phi i8 [ 1, %cond.end31 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false8 ], [ 0, %if.end ], [ 0, %cond.end ], !dbg !3103
  ret i8 %retval.0, !dbg !3129
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_control_flow_bb(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3130 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp37 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3132, metadata !DIExpression()), !dbg !3143
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3144
  call void @llvm.dbg.value(metadata i8 0, metadata !3134, metadata !DIExpression()), !dbg !3143
  %call = tail call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %bb) #6, !dbg !3145
  call void @llvm.dbg.value(metadata i8 %call, metadata !3134, metadata !DIExpression()), !dbg !3143
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3146
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !3146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3146
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3147
  %tobool = icmp eq i8 %call4, 0, !dbg !3147
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3149

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3150
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3135, metadata !DIExpression()), !dbg !3143
  %call6 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call5) #7, !dbg !3151
  %cmp = icmp eq i32 %call6, 1, !dbg !3152
  br i1 %cmp, label %if.then11, label %lor.lhs.false, !dbg !3153

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call5) #7, !dbg !3154
  %cmp9 = icmp eq i32 %call8, 5, !dbg !3155
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !3156

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call12 = call fastcc zeroext i8 @cleanup_control_expr_graph(%struct.basic_block_def* %bb, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3157
  %or153 = or i8 %call, %call12, !dbg !3158
  call void @llvm.dbg.value(metadata i8 %or153, metadata !3134, metadata !DIExpression()), !dbg !3143
  br label %cleanup, !dbg !3159

if.else:                                          ; preds = %lor.lhs.false
  %call17 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call5) #7, !dbg !3160
  %cmp18 = icmp eq i32 %call17, 3, !dbg !3161
  br i1 %cmp18, label %land.lhs.true, label %if.else51, !dbg !3162

land.lhs.true:                                    ; preds = %if.else
  %call20 = call fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %call5) #7, !dbg !3163
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call20, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3163
  %bf.load = load i64, i64* %2, align 8, !dbg !3163
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3164
  %cmp21 = icmp eq i64 %bf.cast1, 121, !dbg !3164
  br i1 %cmp21, label %land.lhs.true23, label %if.else51, !dbg !3165

land.lhs.true23:                                  ; preds = %land.lhs.true
  %call24 = call fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %call5) #7, !dbg !3166
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3166
  %3 = bitcast %union.tree_node** %operands to i64**, !dbg !3166
  %4 = load i64*, i64** %3, align 8, !dbg !3166
  %bf.load26 = load i64, i64* %4, align 8, !dbg !3166
  %bf.cast282 = and i64 %bf.load26, 65535, !dbg !3167
  %cmp29 = icmp eq i64 %bf.cast282, 30, !dbg !3167
  br i1 %cmp29, label %if.then31, label %if.else51, !dbg !3168

if.then31:                                        ; preds = %land.lhs.true23
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3169
  %call32 = call fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %call5) #7, !dbg !3170
  %operands34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3170
  %6 = load %union.tree_node*, %union.tree_node** %operands34, align 8, !dbg !3170
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3140, metadata !DIExpression()), !dbg !3171
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3172
  %call36 = call %struct.basic_block_def* @label_to_block_fn(%struct.function* %7, %union.tree_node* %6) #6, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call36, metadata !3142, metadata !DIExpression()), !dbg !3171
  %8 = bitcast %struct.edge_iterator* %tmp37 to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3173
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3173
  %call38 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3173
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp37, i64 0, i32 0, !dbg !3173
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 0, !dbg !3173
  store i32 %10, i32* %9, align 8, !dbg !3173
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp37, i64 0, i32 1, !dbg !3173
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 1, !dbg !3173
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !3173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !3173
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3173
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3175
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3175
  br label %for.cond, !dbg !3177

for.cond:                                         ; preds = %if.end47, %if.then31
  %15 = load i32, i32* %13, align 8, !dbg !3178
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3178
  %call39 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %15, %struct.VEC_edge_gc** %16) #7, !dbg !3178
  call void @llvm.dbg.value(metadata %struct.edge_def* %call39, metadata !3136, metadata !DIExpression()), !dbg !3171
  %tobool40 = icmp eq %struct.edge_def* %call39, null, !dbg !3179
  br i1 %tobool40, label %for.end, label %for.body, !dbg !3179

for.body:                                         ; preds = %for.cond
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call39, i64 0, i32 1, !dbg !3180
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3180
  %cmp41 = icmp eq %struct.basic_block_def* %17, %call36, !dbg !3183
  br i1 %cmp41, label %if.else44, label %if.then43, !dbg !3184

if.then43:                                        ; preds = %for.body
  call void @remove_edge_and_dominated_blocks(%struct.edge_def* nonnull %call39) #6, !dbg !3185
  br label %if.end47, !dbg !3185

if.else44:                                        ; preds = %for.body
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call39, i64 0, i32 7, !dbg !3186
  %18 = load i32, i32* %flags, align 8, !dbg !3188
  %and = and i32 %18, -4, !dbg !3188
  %or46 = or i32 %and, 1, !dbg !3189
  store i32 %or46, i32* %flags, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3141, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3190
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then43
  br label %for.cond, !dbg !3191, !llvm.loop !3192

for.end:                                          ; preds = %for.cond
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !3194
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3195
  %20 = load i32, i32* %index, align 8, !dbg !3195
  %call48 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %19, i32 %20) #6, !dbg !3196
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !3197
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call36, i64 0, i32 9, !dbg !3198
  %22 = load i32, i32* %index49, align 8, !dbg !3198
  %call50 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %21, i32 %22) #6, !dbg !3199
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3133, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3200
  call void @llvm.dbg.value(metadata i8 1, metadata !3134, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3201
  br label %cleanup, !dbg !3202

if.else51:                                        ; preds = %land.lhs.true23, %land.lhs.true, %if.else
  %call52 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call5) #7, !dbg !3203
  %tobool54 = icmp eq i8 %call52, 0, !dbg !3203
  br i1 %tobool54, label %cleanup, label %land.lhs.true55, !dbg !3205

land.lhs.true55:                                  ; preds = %if.else51
  %call56 = call fastcc zeroext i8 @gimple_call_noreturn_p(%union.gimple_statement_d* %call5) #7, !dbg !3206
  %tobool58 = icmp eq i8 %call56, 0, !dbg !3206
  br i1 %tobool58, label %cleanup, label %land.lhs.true59, !dbg !3207

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %succs60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3208
  %23 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs60, align 8, !dbg !3208
  %call61 = call fastcc zeroext i8 @remove_fallthru_edge(%struct.VEC_edge_gc* %23) #7, !dbg !3209
  %tobool63 = icmp eq i8 %call61, 0, !dbg !3209
  %spec.select = select i1 %tobool63, i8 %call, i8 1, !dbg !3210
  br label %cleanup, !dbg !3210

cleanup:                                          ; preds = %land.lhs.true55, %if.else51, %entry, %land.lhs.true59, %if.then11, %for.end
  %retval.0 = phi i8 [ %call, %entry ], [ %or153, %if.then11 ], [ 1, %for.end ], [ %call, %land.lhs.true55 ], [ %call, %if.else51 ], [ %spec.select, %land.lhs.true59 ], !dbg !3143
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3211
  ret i8 %retval.0, !dbg !3211
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @tree_forwarder_block_p(%struct.basic_block_def* %bb, i8 zeroext %phi_wanted) unnamed_addr #5 !dbg !3212 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp32 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3216, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %phi_wanted, metadata !3217, metadata !DIExpression()), !dbg !3229
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3230
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3231
  %cmp = icmp eq i8 %call, 1, !dbg !3233
  br i1 %cmp, label %lor.lhs.false, label %cleanup69, !dbg !3234

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) #7, !dbg !3235
  %call3 = tail call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call2) #7, !dbg !3236
  %cmp6 = icmp eq i8 %call3, %phi_wanted, !dbg !3237
  br i1 %cmp6, label %cleanup69, label %lor.lhs.false8, !dbg !3238

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) #7, !dbg !3239
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3240
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3240
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3240
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !3240
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3240
  %cmp10 = icmp eq %struct.basic_block_def* %call9, %3, !dbg !3241
  br i1 %cmp10, label %cleanup69, label %lor.lhs.false12, !dbg !3242

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) #7, !dbg !3243
  %cmp14 = icmp eq %struct.basic_block_def* %call13, %bb, !dbg !3244
  br i1 %cmp14, label %cleanup69, label %lor.lhs.false16, !dbg !3245

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !3246
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 7, !dbg !3247
  %4 = load i32, i32* %flags, align 8, !dbg !3247
  %and = and i32 %4, 2, !dbg !3248
  %tobool = icmp eq i32 %and, 0, !dbg !3248
  br i1 %tobool, label %if.end, label %cleanup69, !dbg !3249

if.end:                                           ; preds = %lor.lhs.false16
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3250
  %6 = bitcast %struct.edge_def** %e to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !3251
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3252
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3252
  %call18 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3252
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3252
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 0, !dbg !3252
  store i32 %9, i32* %8, align 8, !dbg !3252
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3252
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 1, !dbg !3252
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3252
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3252
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3254
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3254
  br label %for.cond, !dbg !3252

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %12, align 8, !dbg !3256
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3221, metadata !DIExpression(DW_OP_deref)), !dbg !3257
  %call19 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !3256
  %tobool20 = icmp eq i8 %call19, 0, !dbg !3252
  br i1 %tobool20, label %cleanup, label %for.body, !dbg !3252

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3258
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3221, metadata !DIExpression()), !dbg !3257
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !3260
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3260
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3261
  %cfg22 = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !3261
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !3261
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !3261
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3261
  %cmp23 = icmp eq %struct.basic_block_def* %17, %20, !dbg !3262
  br i1 %cmp23, label %cleanup, label %lor.lhs.false25, !dbg !3263

lor.lhs.false25:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3221, metadata !DIExpression()), !dbg !3257
  %flags26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 7, !dbg !3264
  %21 = load i32, i32* %flags26, align 8, !dbg !3264
  %and27 = and i32 %21, 8, !dbg !3265
  %tobool28 = icmp eq i32 %and27, 0, !dbg !3265
  br i1 %tobool28, label %for.inc, label %cleanup, !dbg !3266

for.inc:                                          ; preds = %lor.lhs.false25
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3219, metadata !DIExpression(DW_OP_deref)), !dbg !3257
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3256
  br label %for.cond, !dbg !3256, !llvm.loop !3267

cleanup:                                          ; preds = %lor.lhs.false25, %for.cond, %for.body
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.lhs.false25 ], [ false, %for.body ], [ true, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3269
  br i1 %cleanup.dest.slot.0, label %cleanup.cont, label %cleanup69

cleanup.cont:                                     ; preds = %cleanup
  %22 = bitcast %struct.gimple_stmt_iterator* %tmp32 to i8*, !dbg !3270
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22) #8, !dbg !3270
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp32, %struct.basic_block_def* %bb) #7, !dbg !3270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #8, !dbg !3270
  br label %for.cond33, !dbg !3271

for.cond33:                                       ; preds = %for.inc46, %cleanup.cont
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3218, metadata !DIExpression(DW_OP_deref)), !dbg !3229
  %call34 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3272
  %tobool35 = icmp eq i8 %call34, 0, !dbg !3273
  br i1 %tobool35, label %for.body36, label %for.end47, !dbg !3274

for.body36:                                       ; preds = %for.cond33
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3218, metadata !DIExpression(DW_OP_deref)), !dbg !3229
  %call37 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3275
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call37, metadata !3222, metadata !DIExpression()), !dbg !3276
  %call38 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call37) #7, !dbg !3277
  switch i32 %call38, label %cleanup43 [
    i32 4, label %sw.bb
    i32 2, label %sw.epilog
  ], !dbg !3278

sw.bb:                                            ; preds = %for.body36
  %call39 = call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* %call37) #7, !dbg !3279
  %nonlocal_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call39, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3279
  %23 = bitcast i40* %nonlocal_flag to i64*, !dbg !3279
  %bf.load = load i64, i64* %23, align 8, !dbg !3279
  %bf.cast4 = and i64 %bf.load, 256, !dbg !3279
  %tobool40 = icmp eq i64 %bf.cast4, 0, !dbg !3279
  br i1 %tobool40, label %sw.epilog, label %cleanup43, !dbg !3282

sw.epilog:                                        ; preds = %sw.bb, %for.body36
  br label %cleanup43, !dbg !3283

cleanup43:                                        ; preds = %sw.bb, %for.body36, %sw.epilog
  %cleanup.dest.slot.1 = phi i1 [ true, %sw.epilog ], [ false, %sw.bb ], [ false, %for.body36 ]
  br i1 %cleanup.dest.slot.1, label %for.inc46, label %cleanup69.loopexit

for.inc46:                                        ; preds = %cleanup43
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3218, metadata !DIExpression(DW_OP_deref)), !dbg !3229
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3284
  br label %for.cond33, !dbg !3285, !llvm.loop !3286

for.end47:                                        ; preds = %for.cond33
  %24 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3288
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %24, i64 0, i32 4, !dbg !3288
  %25 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3288
  %tobool49 = icmp eq %struct.loops* %25, null, !dbg !3288
  br i1 %tobool49, label %if.end68, label %if.then50, !dbg !3289

if.then50:                                        ; preds = %for.end47
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !3290
  %26 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3290
  %header = getelementptr inbounds %struct.loop, %struct.loop* %26, i64 0, i32 2, !dbg !3292
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3292
  %cmp51 = icmp eq %struct.basic_block_def* %27, %bb, !dbg !3293
  br i1 %cmp51, label %cleanup65, label %if.end54, !dbg !3294

if.end54:                                         ; preds = %if.then50
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3295
  %28 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3295
  %tobool55 = icmp eq %struct.VEC_edge_gc* %28, null, !dbg !3295
  br i1 %tobool55, label %cond.end, label %cond.true, !dbg !3295

cond.true:                                        ; preds = %if.end54
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %28, i64 0, i32 0, !dbg !3295
  br label %cond.end, !dbg !3295

cond.end:                                         ; preds = %if.end54, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end54 ], !dbg !3295
  %call57 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #7, !dbg !3295
  %dest58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call57, i64 0, i32 1, !dbg !3296
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest58, align 8, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %29, metadata !3226, metadata !DIExpression()), !dbg !3297
  %loop_father59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 3, !dbg !3298
  %30 = load %struct.loop*, %struct.loop** %loop_father59, align 8, !dbg !3298
  %header60 = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 2, !dbg !3300
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %header60, align 8, !dbg !3300
  %cmp61 = icmp ne %struct.basic_block_def* %31, %29, !dbg !3301
  br label %cleanup65, !dbg !3302

cleanup65:                                        ; preds = %cond.end, %if.then50
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then50 ], [ %cmp61, %cond.end ]
  br i1 %cleanup.dest.slot.2, label %if.end68, label %cleanup69

if.end68:                                         ; preds = %for.end47, %cleanup65
  br label %cleanup69, !dbg !3303

cleanup69.loopexit:                               ; preds = %cleanup43
  br label %cleanup69, !dbg !3304

cleanup69:                                        ; preds = %cleanup69.loopexit, %lor.lhs.false16, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %cleanup65, %cleanup, %if.end68
  %retval.4 = phi i8 [ 0, %cleanup ], [ 0, %cleanup65 ], [ 1, %if.end68 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %cleanup69.loopexit ], !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3304
  ret i8 %retval.4, !dbg !3304
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_forwarder_block(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3305 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %gsi_to = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp41 = alloca %struct.edge_iterator, align 8
  %tmp58 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp71 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp72 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp115 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp116 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3307, metadata !DIExpression()), !dbg !3342
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !3343
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3308, metadata !DIExpression()), !dbg !3342
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3344
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3345
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !3345
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3311, metadata !DIExpression()), !dbg !3342
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3346
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3346
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3347
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi_to to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3347
  %cmp = icmp eq %struct.basic_block_def* %1, %bb, !dbg !3348
  br i1 %cmp, label %cleanup146, label %if.end, !dbg !3350

if.end:                                           ; preds = %entry
  %call2 = tail call %union.gimple_statement_d* @first_stmt(%struct.basic_block_def* %1) #6, !dbg !3351
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !3312, metadata !DIExpression()), !dbg !3342
  %tobool = icmp eq %union.gimple_statement_d* %call2, null, !dbg !3352
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !3354

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !3355
  %cmp4 = icmp eq i32 %call3, 4, !dbg !3356
  br i1 %cmp4, label %land.lhs.true5, label %if.end11, !dbg !3357

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* nonnull %call2) #7, !dbg !3358
  %nonlocal_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3358
  %5 = bitcast i40* %nonlocal_flag to i64*, !dbg !3358
  %bf.load = load i64, i64* %5, align 8, !dbg !3358
  %bf.cast5 = and i64 %bf.load, 256, !dbg !3358
  %tobool7 = icmp eq i64 %bf.cast5, 0, !dbg !3358
  br i1 %tobool7, label %lor.lhs.false, label %cleanup146, !dbg !3359

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call8 = tail call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* nonnull %call2) #7, !dbg !3360
  %label_decl = bitcast %union.tree_node* %call8 to %struct.tree_label_decl*, !dbg !3360
  %eh_landing_pad_nr = getelementptr inbounds %struct.tree_label_decl, %struct.tree_label_decl* %label_decl, i64 0, i32 2, !dbg !3360
  %6 = load i32, i32* %eh_landing_pad_nr, align 4, !dbg !3360
  %cmp9 = icmp eq i32 %6, 0, !dbg !3361
  br i1 %cmp9, label %if.end11, label %cleanup146, !dbg !3362

if.end11:                                         ; preds = %lor.lhs.false, %if.end, %land.lhs.true
  %call12 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(%struct.basic_block_def* %bb) #7, !dbg !3363
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3363
  br i1 %tobool13, label %if.end23, label %land.lhs.true14, !dbg !3365

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(%struct.basic_block_def* %1) #7, !dbg !3366
  %tobool17 = icmp eq i8 %call15, 0, !dbg !3366
  br i1 %tobool17, label %lor.lhs.false18, label %cleanup146, !dbg !3367

lor.lhs.false18:                                  ; preds = %land.lhs.true14
  %call19 = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %1) #7, !dbg !3368
  %call20 = tail call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call19) #7, !dbg !3369
  %tobool21 = icmp eq i8 %call20, 0, !dbg !3369
  br i1 %tobool21, label %cleanup146, label %if.end23, !dbg !3370

if.end23:                                         ; preds = %lor.lhs.false18, %if.end11
  %call24 = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %1) #7, !dbg !3371
  %call25 = tail call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call24) #7, !dbg !3373
  %tobool26 = icmp eq i8 %call25, 0, !dbg !3373
  br i1 %tobool26, label %if.then27, label %if.end39, !dbg !3374

if.then27:                                        ; preds = %if.end23
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3375
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3375
  %call28 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3375
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3375
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 0, !dbg !3375
  store i32 %9, i32* %8, align 8, !dbg !3375
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3375
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 1, !dbg !3375
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !3375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3375
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3375
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3378
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3378
  br label %for.cond, !dbg !3375

for.cond:                                         ; preds = %for.inc, %if.then27
  %14 = load i32, i32* %12, align 8, !dbg !3380
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3380
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3309, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !3380
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3375
  br i1 %tobool30, label %if.end39.loopexit, label %for.body, !dbg !3375

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3381
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3309, metadata !DIExpression()), !dbg !3342
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !3383
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3383
  %call31 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %17, %struct.basic_block_def* %1) #6, !dbg !3384
  call void @llvm.dbg.value(metadata %struct.edge_def* %call31, metadata !3310, metadata !DIExpression()), !dbg !3342
  %tobool32 = icmp eq %struct.edge_def* %call31, null, !dbg !3385
  br i1 %tobool32, label %for.inc, label %if.end34, !dbg !3387

if.end34:                                         ; preds = %for.body
  %call35 = call fastcc zeroext i8 @phi_alternatives_equal(%struct.basic_block_def* %1, %struct.edge_def* %call, %struct.edge_def* nonnull %call31) #7, !dbg !3388
  %tobool36 = icmp eq i8 %call35, 0, !dbg !3388
  br i1 %tobool36, label %cleanup146.loopexit, label %for.inc, !dbg !3390

for.inc:                                          ; preds = %if.end34, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3313, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3380
  br label %for.cond, !dbg !3380, !llvm.loop !3391

if.end39.loopexit:                                ; preds = %for.cond
  br label %if.end39, !dbg !3393

if.end39:                                         ; preds = %if.end39.loopexit, %if.end23
  %call40 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %1) #7, !dbg !3393
  call void @llvm.dbg.value(metadata i8 %call40, metadata !3316, metadata !DIExpression()), !dbg !3342
  %18 = bitcast %struct.edge_iterator* %tmp41 to i8*, !dbg !3394
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3394
  %preds42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3394
  %call43 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds42) #7, !dbg !3394
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp41, i64 0, i32 0, !dbg !3394
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 0, !dbg !3394
  store i32 %20, i32* %19, align 8, !dbg !3394
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp41, i64 0, i32 1, !dbg !3394
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 1, !dbg !3394
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !3394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3394
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3394
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3395
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3395
  %25 = bitcast %struct.gimple_stmt_iterator* %tmp58 to i8*, !dbg !3396
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 6, !dbg !3397
  br label %for.cond44, !dbg !3398

for.cond44:                                       ; preds = %if.end69, %if.end39
  %26 = load i32, i32* %23, align 8, !dbg !3399
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %24, align 8, !dbg !3399
  %call45 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %26, %struct.VEC_edge_gc** %27) #7, !dbg !3399
  call void @llvm.dbg.value(metadata %struct.edge_def* %call45, metadata !3309, metadata !DIExpression()), !dbg !3342
  store %struct.edge_def* %call45, %struct.edge_def** %e, align 8, !dbg !3400
  %tobool46 = icmp eq %struct.edge_def* %call45, null, !dbg !3401
  br i1 %tobool46, label %for.end70, label %for.body47, !dbg !3401

for.body47:                                       ; preds = %for.cond44
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !3402
  call void @llvm.dbg.value(metadata %struct.edge_def* %call45, metadata !3309, metadata !DIExpression()), !dbg !3342
  %src48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call45, i64 0, i32 0, !dbg !3403
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %src48, align 8, !dbg !3403
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 9, !dbg !3404
  %30 = load i32, i32* %index, align 8, !dbg !3404
  %call49 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %28, i32 %30) #6, !dbg !3405
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3309, metadata !DIExpression()), !dbg !3342
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 7, !dbg !3408
  %32 = load i32, i32* %flags, align 8, !dbg !3408
  %and = and i32 %32, 2, !dbg !3409
  %tobool50 = icmp eq i32 %and, 0, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3309, metadata !DIExpression()), !dbg !3342
  br i1 %tobool50, label %if.else, label %if.then51, !dbg !3410

if.then51:                                        ; preds = %for.body47
  %call52 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %31, %struct.basic_block_def* %1) #6, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.edge_def* %call52, metadata !3310, metadata !DIExpression()), !dbg !3342
  br label %if.end54, !dbg !3413

if.else:                                          ; preds = %for.body47
  %call53 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %31, %struct.basic_block_def* %1) #6, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.edge_def* %call53, metadata !3310, metadata !DIExpression()), !dbg !3342
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then51
  %s.0 = phi %struct.edge_def* [ %call52, %if.then51 ], [ %call53, %if.else ], !dbg !3415
  call void @llvm.dbg.value(metadata %struct.edge_def* %s.0, metadata !3310, metadata !DIExpression()), !dbg !3342
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3416
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3309, metadata !DIExpression()), !dbg !3342
  %cmp55 = icmp eq %struct.edge_def* %s.0, %33, !dbg !3417
  br i1 %cmp55, label %if.then57, label %if.end69, !dbg !3418

if.then57:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %25) #8, !dbg !3419
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp58, %struct.basic_block_def* %1) #6, !dbg !3419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %25, i64 24, i1 false), !dbg !3419
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %25) #8, !dbg !3419
  br label %for.cond59, !dbg !3420

for.cond59:                                       ; preds = %for.body62, %if.then57
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call60 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3421
  %tobool61 = icmp eq i8 %call60, 0, !dbg !3422
  br i1 %tobool61, label %for.body62, label %if.end69.loopexit, !dbg !3423

for.body62:                                       ; preds = %for.cond59
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call63 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3424
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call63, metadata !3317, metadata !DIExpression()), !dbg !3397
  %call64 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call63, %struct.edge_def* %call) #7, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %call64, metadata !3326, metadata !DIExpression()), !dbg !3397
  %34 = load i32, i32* %dest_idx, align 4, !dbg !3426
  %conv65 = zext i32 %34 to i64, !dbg !3427
  %call66 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call63, i64 %conv65) #7, !dbg !3428
  call void @add_phi_arg(%union.gimple_statement_d* %call63, %union.tree_node* %call66, %struct.edge_def* %s.0, i32 %call64) #6, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3430
  br label %for.cond59, !dbg !3431, !llvm.loop !3432

if.end69.loopexit:                                ; preds = %for.cond59
  br label %if.end69, !dbg !3434

if.end69:                                         ; preds = %if.end69.loopexit, %if.end54
  br label %for.cond44, !dbg !3434, !llvm.loop !3435

for.end70:                                        ; preds = %for.cond44
  %35 = bitcast %struct.gimple_stmt_iterator* %tmp71 to i8*, !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %35) #8, !dbg !3437
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp71, %struct.basic_block_def* %1) #7, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %35, i64 24, i1 false), !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %35) #8, !dbg !3437
  %36 = bitcast %struct.gimple_stmt_iterator* %tmp72 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %36) #8, !dbg !3438
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp72, %struct.basic_block_def* %bb) #7, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %36, i64 24, i1 false), !dbg !3438
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %36) #8, !dbg !3438
  br label %for.cond73, !dbg !3439

for.cond73:                                       ; preds = %cleanup, %for.end70
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call74 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3440
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3441
  br i1 %tobool75, label %for.body77, label %for.end112, !dbg !3442

for.body77:                                       ; preds = %for.cond73
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call78 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3443
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call78, metadata !3312, metadata !DIExpression()), !dbg !3342
  %call79 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call78) #7, !dbg !3444
  %tobool80 = icmp eq i8 %call79, 0, !dbg !3444
  br i1 %tobool80, label %if.end82, label %cleanup, !dbg !3446

if.end82:                                         ; preds = %for.body77
  %call83 = call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* %call78) #7, !dbg !3447
  call void @llvm.dbg.value(metadata %union.tree_node* %call83, metadata !3327, metadata !DIExpression()), !dbg !3448
  %label_decl84 = bitcast %union.tree_node* %call83 to %struct.tree_label_decl*, !dbg !3449
  %eh_landing_pad_nr85 = getelementptr inbounds %struct.tree_label_decl, %struct.tree_label_decl* %label_decl84, i64 0, i32 2, !dbg !3449
  %37 = load i32, i32* %eh_landing_pad_nr85, align 4, !dbg !3449
  %cmp86 = icmp eq i32 %37, 0, !dbg !3451
  br i1 %cmp86, label %lor.lhs.false88, label %if.then109, !dbg !3452

lor.lhs.false88:                                  ; preds = %if.end82
  %nonlocal_flag90 = getelementptr inbounds %union.tree_node, %union.tree_node* %call83, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3453
  %38 = bitcast i40* %nonlocal_flag90 to i64*, !dbg !3453
  %bf.load91 = load i64, i64* %38, align 8, !dbg !3453
  %bf.cast942 = and i64 %bf.load91, 256, !dbg !3453
  %tobool95 = icmp eq i64 %bf.cast942, 0, !dbg !3453
  br i1 %tobool95, label %lor.lhs.false96, label %if.then109, !dbg !3454

lor.lhs.false96:                                  ; preds = %lor.lhs.false88
  %39 = getelementptr inbounds %union.tree_node, %union.tree_node* %call83, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3455
  %bf.load97 = load i64, i64* %39, align 8, !dbg !3455
  %bf.cast1003 = and i64 %bf.load97, 65536, !dbg !3455
  %tobool101 = icmp eq i64 %bf.cast1003, 0, !dbg !3455
  br i1 %tobool101, label %lor.lhs.false102, label %if.then109, !dbg !3456

lor.lhs.false102:                                 ; preds = %lor.lhs.false96
  %bf.cast1074 = and i64 %bf.load91, 4096, !dbg !3457
  %tobool108 = icmp eq i64 %bf.cast1074, 0, !dbg !3457
  br i1 %tobool108, label %if.then109, label %if.else110, !dbg !3458

if.then109:                                       ; preds = %lor.lhs.false102, %lor.lhs.false96, %lor.lhs.false88, %if.end82
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 0) #6, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi_to, metadata !3315, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi_to, %union.gimple_statement_d* %call78, i32 1) #6, !dbg !3461
  br label %cleanup, !dbg !3462

if.else110:                                       ; preds = %lor.lhs.false102
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3463
  br label %cleanup

cleanup:                                          ; preds = %for.body77, %if.then109, %if.else110
  %cleanup.dest.slot.0 = phi i1 [ false, %for.body77 ], [ true, %if.else110 ], [ true, %if.then109 ]
  br i1 %cleanup.dest.slot.0, label %for.cond73, label %for.end112, !llvm.loop !3464

for.end112:                                       ; preds = %cleanup, %for.cond73
  %tobool113 = icmp eq i8 %call40, 0, !dbg !3466
  br i1 %tobool113, label %if.end131, label %if.then114, !dbg !3467

if.then114:                                       ; preds = %for.end112
  %40 = bitcast %struct.gimple_stmt_iterator* %tmp115 to i8*, !dbg !3468
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #8, !dbg !3468
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp115, %struct.basic_block_def* %1) #7, !dbg !3468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %40, i64 24, i1 false), !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #8, !dbg !3468
  %41 = bitcast %struct.gimple_stmt_iterator* %tmp116 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %41) #8, !dbg !3469
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp116, %struct.basic_block_def* %bb) #7, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %41, i64 24, i1 false), !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %41) #8, !dbg !3469
  br label %for.cond117, !dbg !3470

for.cond117:                                      ; preds = %cleanup127, %if.then114
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call118 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3471
  %tobool119 = icmp eq i8 %call118, 0, !dbg !3472
  br i1 %tobool119, label %for.body121, label %if.end131.loopexit, !dbg !3473

for.body121:                                      ; preds = %for.cond117
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  %call122 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3474
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call122, metadata !3331, metadata !DIExpression()), !dbg !3475
  %call123 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call122) #7, !dbg !3476
  %tobool124 = icmp eq i8 %call123, 0, !dbg !3476
  br i1 %tobool124, label %cleanup127, label %if.end126, !dbg !3478

if.end126:                                        ; preds = %for.body121
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3314, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 0) #6, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi_to, metadata !3315, metadata !DIExpression(DW_OP_deref)), !dbg !3342
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi_to, %union.gimple_statement_d* %call122, i32 1) #6, !dbg !3480
  br label %cleanup127, !dbg !3481

cleanup127:                                       ; preds = %for.body121, %if.end126
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end126 ], [ false, %for.body121 ]
  br i1 %cleanup.dest.slot.1, label %for.cond117, label %if.end131.loopexit, !llvm.loop !3482

if.end131.loopexit:                               ; preds = %cleanup127, %for.cond117
  br label %if.end131, !dbg !3484

if.end131:                                        ; preds = %if.end131.loopexit, %for.end112
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !3484
  %index132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 9, !dbg !3485
  %43 = load i32, i32* %index132, align 8, !dbg !3485
  %call133 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %42, i32 %43) #6, !dbg !3486
  %call134 = call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3487
  %tobool135 = icmp eq i8 %call134, 0, !dbg !3487
  br i1 %tobool135, label %if.end145, label %if.then136, !dbg !3488

if.then136:                                       ; preds = %if.end131
  %call137 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %bb) #6, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call137, metadata !3340, metadata !DIExpression()), !dbg !3490
  %call138 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %1) #6, !dbg !3491
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call138, metadata !3341, metadata !DIExpression()), !dbg !3490
  %cmp139 = icmp eq %struct.basic_block_def* %call138, %bb, !dbg !3492
  br i1 %cmp139, label %if.end144, label %if.else142, !dbg !3494

if.else142:                                       ; preds = %if.then136
  %call143 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %call138, %struct.basic_block_def* %call137) #6, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call143, metadata !3337, metadata !DIExpression()), !dbg !3490
  br label %if.end144

if.end144:                                        ; preds = %if.then136, %if.else142
  %dom.0 = phi %struct.basic_block_def* [ %call143, %if.else142 ], [ %call137, %if.then136 ], !dbg !3496
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !3337, metadata !DIExpression()), !dbg !3490
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %1, %struct.basic_block_def* %dom.0) #6, !dbg !3497
  br label %if.end145, !dbg !3498

if.end145:                                        ; preds = %if.end131, %if.end144
  call void @delete_basic_block(%struct.basic_block_def* %bb) #6, !dbg !3499
  br label %cleanup146, !dbg !3500

cleanup146.loopexit:                              ; preds = %if.end34
  br label %cleanup146, !dbg !3501

cleanup146:                                       ; preds = %cleanup146.loopexit, %lor.lhs.false, %land.lhs.true5, %lor.lhs.false18, %land.lhs.true14, %entry, %if.end145
  %retval.0 = phi i8 [ 1, %if.end145 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true5 ], [ 0, %lor.lhs.false18 ], [ 0, %land.lhs.true14 ], [ 0, %cleanup146.loopexit ], !dbg !3342
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3501
  ret i8 %retval.0, !dbg !3501
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3502 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3509, metadata !DIExpression()), !dbg !3510
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3511
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3511
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3511
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3511

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3511
  br label %cond.end, !dbg !3511

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3511
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3511
  %cmp = icmp eq i32 %call, 1, !dbg !3512
  %conv2 = zext i1 %cmp to i8, !dbg !3511
  ret i8 %conv2, !dbg !3513
}

declare dso_local zeroext i8 @can_merge_blocks_p(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3514 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3518, metadata !DIExpression()), !dbg !3519
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !3520
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3521
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3521
  ret %struct.basic_block_def* %0, !dbg !3522
}

declare dso_local void @merge_blocks(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3523 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3527, metadata !DIExpression()), !dbg !3528
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3529
  %bf.load = load i32, i32* %0, align 8, !dbg !3529
  %bf.clear = and i32 %bf.load, 255, !dbg !3529
  ret i32 %bf.clear, !dbg !3530
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3531 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3533, metadata !DIExpression()), !dbg !3534
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3535
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3535
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3535
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3535

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3535
  br label %cond.end, !dbg !3535

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3535
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3535
  %cmp = icmp eq i32 %call, 1, !dbg !3536
  %conv2 = zext i1 %cmp to i8, !dbg !3535
  ret i8 %conv2, !dbg !3537
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3538 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3540, metadata !DIExpression()), !dbg !3541
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !3542
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3543
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3543
  ret %struct.basic_block_def* %0, !dbg !3544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3545 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3549, metadata !DIExpression()), !dbg !3550
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3551
  %tobool = icmp eq i8 %call, 0, !dbg !3551
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3551

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3551
  br label %cond.end, !dbg !3551

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3552
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3552
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3552
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3552

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3552
  br label %cond.end5, !dbg !3552

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3552
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3552
  ret %struct.edge_def* %call7, !dbg !3553
}

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3554 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3559, metadata !DIExpression()), !dbg !3562
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3560, metadata !DIExpression()), !dbg !3561
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !3564
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3565
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3566
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3567
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3568
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3569
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3570
  ret void, !dbg !3571
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3572 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3576, metadata !DIExpression()), !dbg !3577
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3578
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3578
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3579
  %conv1 = zext i1 %cmp to i8, !dbg !3580
  ret i8 %conv1, !dbg !3581
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3586, metadata !DIExpression()), !dbg !3587
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3588
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3588
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3589
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3589
  ret %union.gimple_statement_d* %1, !dbg !3590
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cleanup_control_expr_graph(%struct.basic_block_def* %bb, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !3591 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3595, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i8 0, metadata !3598, metadata !DIExpression()), !dbg !3617
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3619
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3599, metadata !DIExpression()), !dbg !3617
  %call2 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3620
  %tobool = icmp eq i8 %call2, 0, !dbg !3620
  br i1 %tobool, label %if.then, label %if.else106, !dbg !3621

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3622
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3622
  tail call void @fold_defer_overflow_warnings() #6, !dbg !3623
  %call3 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3606, metadata !DIExpression()), !dbg !3625
  %call4 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !3626
  switch i32 %call4, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb77
  ], !dbg !3627

sw.bb:                                            ; preds = %if.then
  %call5 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call) #7, !dbg !3628
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3607, metadata !DIExpression()), !dbg !3629
  %call6 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call) #7, !dbg !3630
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3610, metadata !DIExpression()), !dbg !3629
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3631
  %bf.load = load i64, i64* %1, align 8, !dbg !3631
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3632
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3632
  br i1 %cmp, label %land.lhs.true, label %if.end35, !dbg !3633

land.lhs.true:                                    ; preds = %sw.bb
  %call7 = tail call zeroext i8 @name_registered_for_update_p(%union.tree_node* %call5) #6, !dbg !3634
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3634
  br i1 %tobool8, label %if.then9, label %if.end35, !dbg !3635

if.then9:                                         ; preds = %land.lhs.true
  %def_stmt10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3636
  %2 = bitcast %union.tree_node** %def_stmt10 to %union.gimple_statement_d**, !dbg !3636
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !3636
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !3611, metadata !DIExpression()), !dbg !3637
  %call11 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %3) #7, !dbg !3638
  %cmp12 = icmp eq i32 %call11, 16, !dbg !3640
  br i1 %cmp12, label %land.lhs.true13, label %if.end35, !dbg !3641

land.lhs.true13:                                  ; preds = %if.then9
  %call14 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %3) #7, !dbg !3642
  %cmp15 = icmp eq i32 %call14, 1, !dbg !3643
  br i1 %cmp15, label %land.lhs.true16, label %if.end35, !dbg !3644

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call17 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %3) #7, !dbg !3645
  %call18 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !3646
  %cmp19 = icmp eq %struct.basic_block_def* %call17, %call18, !dbg !3647
  br i1 %cmp19, label %land.lhs.true20, label %if.end35, !dbg !3648

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %call21 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %3, i32 0) #7, !dbg !3649
  %call22 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call21) #7, !dbg !3649
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3649
  %bf.load24 = load i64, i64* %4, align 8, !dbg !3649
  %bf.cast264 = and i64 %bf.load24, 65535, !dbg !3650
  %cmp27 = icmp eq i64 %bf.cast264, 141, !dbg !3650
  br i1 %cmp27, label %lor.lhs.false, label %if.then32, !dbg !3651

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %call28 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %3, i32 0) #7, !dbg !3652
  %call29 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call28) #7, !dbg !3652
  %call30 = tail call zeroext i8 @name_registered_for_update_p(%union.tree_node* %call29) #6, !dbg !3653
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3653
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !3654

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true20
  %call33 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %3, i32 0) #7, !dbg !3655
  %call34 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call33) #7, !dbg !3655
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !3607, metadata !DIExpression()), !dbg !3629
  br label %if.end35, !dbg !3656

if.end35:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.then9, %land.lhs.true13, %land.lhs.true16, %if.then32, %sw.bb
  %lhs.1 = phi %union.tree_node* [ %call5, %land.lhs.true ], [ %call5, %sw.bb ], [ %call34, %if.then32 ], [ %call5, %lor.lhs.false ], [ %call5, %land.lhs.true16 ], [ %call5, %land.lhs.true13 ], [ %call5, %if.then9 ], !dbg !3629
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.1, metadata !3607, metadata !DIExpression()), !dbg !3629
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3657
  %bf.load37 = load i64, i64* %5, align 8, !dbg !3657
  %bf.cast392 = and i64 %bf.load37, 65535, !dbg !3658
  %cmp40 = icmp eq i64 %bf.cast392, 141, !dbg !3658
  br i1 %cmp40, label %land.lhs.true41, label %if.end74, !dbg !3659

land.lhs.true41:                                  ; preds = %if.end35
  %call42 = tail call zeroext i8 @name_registered_for_update_p(%union.tree_node* %call6) #6, !dbg !3660
  %tobool43 = icmp eq i8 %call42, 0, !dbg !3660
  br i1 %tobool43, label %if.then44, label %if.end74, !dbg !3661

if.then44:                                        ; preds = %land.lhs.true41
  %def_stmt47 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3662
  %6 = bitcast %union.tree_node** %def_stmt47 to %union.gimple_statement_d**, !dbg !3662
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %6, align 8, !dbg !3662
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !3614, metadata !DIExpression()), !dbg !3663
  %call48 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %7) #7, !dbg !3664
  %cmp49 = icmp eq i32 %call48, 16, !dbg !3666
  br i1 %cmp49, label %land.lhs.true50, label %if.end74, !dbg !3667

land.lhs.true50:                                  ; preds = %if.then44
  %call51 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %7) #7, !dbg !3668
  %cmp52 = icmp eq i32 %call51, 1, !dbg !3669
  br i1 %cmp52, label %land.lhs.true53, label %if.end74, !dbg !3670

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %call54 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %7) #7, !dbg !3671
  %call55 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !3672
  %cmp56 = icmp eq %struct.basic_block_def* %call54, %call55, !dbg !3673
  br i1 %cmp56, label %land.lhs.true57, label %if.end74, !dbg !3674

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %call58 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %7, i32 0) #7, !dbg !3675
  %call59 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call58) #7, !dbg !3675
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3675
  %bf.load61 = load i64, i64* %8, align 8, !dbg !3675
  %bf.cast633 = and i64 %bf.load61, 65535, !dbg !3676
  %cmp64 = icmp eq i64 %bf.cast633, 141, !dbg !3676
  br i1 %cmp64, label %lor.lhs.false65, label %if.then70, !dbg !3677

lor.lhs.false65:                                  ; preds = %land.lhs.true57
  %call66 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %7, i32 0) #7, !dbg !3678
  %call67 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call66) #7, !dbg !3678
  %call68 = tail call zeroext i8 @name_registered_for_update_p(%union.tree_node* %call67) #6, !dbg !3679
  %tobool69 = icmp eq i8 %call68, 0, !dbg !3679
  br i1 %tobool69, label %if.then70, label %if.end74, !dbg !3680

if.then70:                                        ; preds = %lor.lhs.false65, %land.lhs.true57
  %call71 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %7, i32 0) #7, !dbg !3681
  %call72 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call71) #7, !dbg !3681
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3610, metadata !DIExpression()), !dbg !3629
  br label %if.end74, !dbg !3682

if.end74:                                         ; preds = %lor.lhs.false65, %land.lhs.true41, %if.then44, %land.lhs.true50, %land.lhs.true53, %if.then70, %if.end35
  %rhs.1 = phi %union.tree_node* [ %call6, %land.lhs.true41 ], [ %call6, %if.end35 ], [ %call72, %if.then70 ], [ %call6, %lor.lhs.false65 ], [ %call6, %land.lhs.true53 ], [ %call6, %land.lhs.true50 ], [ %call6, %if.then44 ], !dbg !3629
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs.1, metadata !3610, metadata !DIExpression()), !dbg !3629
  %call75 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %call) #7, !dbg !3683
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3684
  %call76 = tail call %union.tree_node* @fold_binary_loc(i32 %call3, i32 %call75, %union.tree_node* %9, %union.tree_node* %lhs.1, %union.tree_node* %rhs.1) #6, !dbg !3685
  call void @llvm.dbg.value(metadata %union.tree_node* %call76, metadata !3600, metadata !DIExpression()), !dbg !3617
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.then
  %call78 = tail call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %call) #7, !dbg !3686
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3600, metadata !DIExpression()), !dbg !3617
  br label %sw.epilog, !dbg !3687

sw.epilog:                                        ; preds = %if.then, %sw.bb77, %if.end74
  %val.0 = phi %union.tree_node* [ %call78, %sw.bb77 ], [ %call76, %if.end74 ], [ null, %if.then ], !dbg !3688
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !3600, metadata !DIExpression()), !dbg !3617
  %call79 = tail call %struct.edge_def* @find_taken_edge(%struct.basic_block_def* %bb, %union.tree_node* %val.0) #6, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.edge_def* %call79, metadata !3597, metadata !DIExpression()), !dbg !3617
  %tobool80 = icmp eq %struct.edge_def* %call79, null, !dbg !3690
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !3692

if.then81:                                        ; preds = %sw.epilog
  tail call void @fold_undefer_and_ignore_overflow_warnings() #6, !dbg !3693
  br label %cleanup, !dbg !3695

if.end82:                                         ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i8 0, metadata !3605, metadata !DIExpression()), !dbg !3625
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3696
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3696
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3696
  %call83 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3696
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3696
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call83, 0, !dbg !3696
  store i32 %12, i32* %11, align 8, !dbg !3696
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3696
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call83, 1, !dbg !3696
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !3696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3696
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3696
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3698
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3698
  %probability91 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call79, i64 0, i32 8, !dbg !3700
  %count92 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call79, i64 0, i32 9, !dbg !3700
  br label %for.cond, !dbg !3704

for.cond:                                         ; preds = %if.end94, %if.end82
  %warned.0 = phi i8 [ 0, %if.end82 ], [ %warned.2, %if.end94 ], !dbg !3705
  %retval1.0 = phi i8 [ 0, %if.end82 ], [ %retval1.1, %if.end94 ], !dbg !3617
  call void @llvm.dbg.value(metadata i8 %retval1.0, metadata !3598, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 %warned.0, metadata !3605, metadata !DIExpression()), !dbg !3625
  %17 = load i32, i32* %15, align 8, !dbg !3706
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3706
  %call84 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %17, %struct.VEC_edge_gc** %18) #7, !dbg !3706
  call void @llvm.dbg.value(metadata %struct.edge_def* %call84, metadata !3601, metadata !DIExpression()), !dbg !3625
  %tobool85 = icmp eq %struct.edge_def* %call84, null, !dbg !3707
  br i1 %tobool85, label %for.end, label %for.body, !dbg !3707

for.body:                                         ; preds = %for.cond
  %cmp86 = icmp eq %struct.edge_def* %call84, %call79, !dbg !3708
  br i1 %cmp86, label %if.else, label %if.then87, !dbg !3709

if.then87:                                        ; preds = %for.body
  %tobool88 = icmp eq i8 %warned.0, 0, !dbg !3710
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !3712

if.then89:                                        ; preds = %if.then87
  call void @fold_undefer_overflow_warnings(i8 zeroext 1, %union.gimple_statement_d* %call, i32 2) #6, !dbg !3713
  call void @llvm.dbg.value(metadata i8 1, metadata !3605, metadata !DIExpression()), !dbg !3625
  br label %if.end90, !dbg !3715

if.end90:                                         ; preds = %if.then87, %if.then89
  %warned.1 = phi i8 [ %warned.0, %if.then87 ], [ 1, %if.then89 ], !dbg !3625
  call void @llvm.dbg.value(metadata i8 %warned.1, metadata !3605, metadata !DIExpression()), !dbg !3625
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call84, i64 0, i32 8, !dbg !3716
  %19 = load i32, i32* %probability, align 4, !dbg !3716
  %20 = load i32, i32* %probability91, align 4, !dbg !3717
  %add = add nsw i32 %20, %19, !dbg !3717
  store i32 %add, i32* %probability91, align 4, !dbg !3717
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call84, i64 0, i32 9, !dbg !3718
  %21 = load i64, i64* %count, align 8, !dbg !3718
  %22 = load i64, i64* %count92, align 8, !dbg !3719
  %add93 = add nsw i64 %22, %21, !dbg !3719
  store i64 %add93, i64* %count92, align 8, !dbg !3719
  call void @remove_edge_and_dominated_blocks(%struct.edge_def* nonnull %call84) #6, !dbg !3720
  call void @llvm.dbg.value(metadata i8 1, metadata !3598, metadata !DIExpression()), !dbg !3617
  br label %if.end94, !dbg !3721

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3604, metadata !DIExpression(DW_OP_deref)), !dbg !3625
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3722
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.end90
  %warned.2 = phi i8 [ %warned.1, %if.end90 ], [ %warned.0, %if.else ], !dbg !3705
  %retval1.1 = phi i8 [ 1, %if.end90 ], [ %retval1.0, %if.else ], !dbg !3617
  call void @llvm.dbg.value(metadata i8 %retval1.1, metadata !3598, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 %warned.2, metadata !3605, metadata !DIExpression()), !dbg !3625
  br label %for.cond, !dbg !3723, !llvm.loop !3724

for.end:                                          ; preds = %for.cond
  %warned.0.lcssa = phi i8 [ %warned.0, %for.cond ], !dbg !3705
  %retval1.0.lcssa = phi i8 [ %retval1.0, %for.cond ], !dbg !3617
  call void @llvm.dbg.value(metadata i8 %warned.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !3598, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 %warned.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !3598, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 %warned.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !3598, metadata !DIExpression()), !dbg !3617
  %tobool95 = icmp eq i8 %warned.0.lcssa, 0, !dbg !3726
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !3728

if.then96:                                        ; preds = %for.end
  call void @fold_undefer_and_ignore_overflow_warnings() #6, !dbg !3729
  br label %if.end97, !dbg !3729

if.end97:                                         ; preds = %for.end, %if.then96
  %23 = load i32, i32* %probability91, align 4, !dbg !3730
  %cmp99 = icmp sgt i32 %23, 10000, !dbg !3732
  br i1 %cmp99, label %if.then100, label %cleanup, !dbg !3733

if.then100:                                       ; preds = %if.end97
  store i32 10000, i32* %probability91, align 4, !dbg !3734
  br label %cleanup, !dbg !3735

cleanup:                                          ; preds = %if.end97, %if.then100, %if.then81
  %retval1.2 = phi i8 [ 0, %if.then81 ], [ %retval1.0.lcssa, %if.then100 ], [ %retval1.0.lcssa, %if.end97 ], !dbg !3736
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then81 ], [ true, %if.then100 ], [ true, %if.end97 ]
  call void @llvm.dbg.value(metadata i8 %retval1.2, metadata !3598, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3737
  br i1 %cleanup.dest.slot.0, label %if.end108, label %cleanup110

if.else106:                                       ; preds = %entry
  %call107 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !3738
  call void @llvm.dbg.value(metadata %struct.edge_def* %call107, metadata !3597, metadata !DIExpression()), !dbg !3617
  br label %if.end108

if.end108:                                        ; preds = %cleanup, %if.else106
  %retval1.3 = phi i8 [ 0, %if.else106 ], [ %retval1.2, %cleanup ], !dbg !3736
  %taken_edge.0 = phi %struct.edge_def* [ %call107, %if.else106 ], [ %call79, %cleanup ], !dbg !3739
  call void @llvm.dbg.value(metadata %struct.edge_def* %taken_edge.0, metadata !3597, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 %retval1.3, metadata !3598, metadata !DIExpression()), !dbg !3617
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @cfgcleanup_altered_bbs, align 8, !dbg !3740
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3741
  %25 = load i32, i32* %index, align 8, !dbg !3741
  %call109 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %24, i32 %25) #6, !dbg !3742
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3743
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge.0, i64 0, i32 7, !dbg !3744
  store i32 1, i32* %flags, align 8, !dbg !3745
  br label %cleanup110, !dbg !3746

cleanup110:                                       ; preds = %cleanup, %if.end108
  %retval.1 = phi i8 [ %retval1.3, %if.end108 ], [ 0, %cleanup ]
  ret i8 %retval.1, !dbg !3747
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_goto_dest(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3748 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3752, metadata !DIExpression()), !dbg !3753
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3754
  ret %union.tree_node* %call, !dbg !3755
}

declare dso_local %struct.basic_block_def* @label_to_block_fn(%struct.function*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3756 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3759
  %tobool = icmp eq i8 %call, 0, !dbg !3759
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3760

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3761
  br label %cond.end, !dbg !3760

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !3760
  ret %struct.edge_def* %cond, !dbg !3762
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3767, metadata !DIExpression()), !dbg !3768
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3769
  %cmp = icmp eq i32 %call, 8, !dbg !3770
  %conv1 = zext i1 %cmp to i8, !dbg !3769
  ret i8 %conv1, !dbg !3771
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3772 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3776, metadata !DIExpression()), !dbg !3777
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3778
  %0 = load i32, i32* %flags, align 8, !dbg !3778
  %and = and i32 %0, 512, !dbg !3779
  %tobool = icmp eq i32 %and, 0, !dbg !3779
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3780

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3781
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3781
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3782
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3783

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3784
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3784
  br label %cond.end, !dbg !3783

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3783
  ret %struct.gimple_seq_d* %cond, !dbg !3785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3786 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3793, metadata !DIExpression()), !dbg !3794
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3795
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3795

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3796
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3796
  br label %cond.end, !dbg !3795

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3795
  ret %struct.gimple_seq_node_d* %cond, !dbg !3797
}

declare dso_local void @fold_defer_overflow_warnings() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3798 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3802, metadata !DIExpression()), !dbg !3803
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3804
  %0 = load i32, i32* %location, align 8, !dbg !3804
  ret i32 %0, !dbg !3805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3808, metadata !DIExpression()), !dbg !3809
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3810
  ret %union.tree_node* %call, !dbg !3811
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3812 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3814, metadata !DIExpression()), !dbg !3815
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3816
  ret %union.tree_node* %call, !dbg !3817
}

declare dso_local zeroext i8 @name_registered_for_update_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3818 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3822, metadata !DIExpression()), !dbg !3823
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3824
  %0 = load i32, i32* %nargs, align 4, !dbg !3824
  ret i32 %0, !dbg !3825
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3826 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3831, metadata !DIExpression()), !dbg !3832
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3833
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3833
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3834
  ret %union.tree_node* %1, !dbg !3835
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3836 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3840, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3841, metadata !DIExpression()), !dbg !3842
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3843
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3844
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3845
}

declare dso_local %union.tree_node* @fold_binary_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3846 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3850, metadata !DIExpression()), !dbg !3851
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3852
  %bf.load = load i32, i32* %0, align 8, !dbg !3852
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3852
  ret i32 %bf.lshr, !dbg !3853
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3854 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3856, metadata !DIExpression()), !dbg !3857
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3858
  ret %union.tree_node* %call, !dbg !3859
}

declare dso_local %struct.edge_def* @find_taken_edge(%struct.basic_block_def*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #2

declare dso_local void @fold_undefer_overflow_warnings(i8 zeroext, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3860 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3862, metadata !DIExpression()), !dbg !3863
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3864
  %tobool = icmp eq i8 %call, 0, !dbg !3864
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3864

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3864
  br label %cond.end, !dbg !3864

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3865
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3865
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3865
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3865

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3865
  br label %cond.end5, !dbg !3865

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3865
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3865
  ret %struct.edge_def* %call7, !dbg !3866
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3867 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %i, metadata !3872, metadata !DIExpression()), !dbg !3873
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3874
  %tobool = icmp eq i8 %call, 0, !dbg !3874
  br i1 %tobool, label %return, label %if.then, !dbg !3876

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3877
  %idxprom = zext i32 %i to i64, !dbg !3877
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3877
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3877
  br label %return, !dbg !3879

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3880
  ret %union.tree_node* %retval.0, !dbg !3881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3882 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3884, metadata !DIExpression()), !dbg !3885
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3886
  %cmp = icmp eq i32 %call, 0, !dbg !3887
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3888

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3889
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3890
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3896, metadata !DIExpression()), !dbg !3898
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3899
  %idxprom = zext i32 %call to i64, !dbg !3900
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3900
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %0, metadata !3897, metadata !DIExpression()), !dbg !3898
  %cmp = icmp eq i64 %0, 0, !dbg !3901
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3901

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3901
  br label %cond.end, !dbg !3901

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3902
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3903
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3904
  ret %union.tree_node** %2, !dbg !3905
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3906 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3910, metadata !DIExpression()), !dbg !3911
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3912
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3913
  ret i32 %call1, !dbg !3914
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3915 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3919, metadata !DIExpression()), !dbg !3920
  %idxprom = zext i32 %code to i64, !dbg !3921
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3921
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3921
  ret i32 %0, !dbg !3922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3923 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %index, metadata !3929, metadata !DIExpression()), !dbg !3930
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3931
  %0 = load i32, i32* %capacity, align 8, !dbg !3931
  %cmp = icmp ult i32 %0, %index, !dbg !3931
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3931

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3931
  br label %cond.end, !dbg !3931

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3932
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3932
  ret %struct.phi_arg_d* %arrayidx, !dbg !3933
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3934 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3938, metadata !DIExpression()), !dbg !3939
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3940
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3941

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3942
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3942
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3943
  %phitmp = zext i1 %cmp1 to i8, !dbg !3941
  br label %lor.end, !dbg !3941

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !3944
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3945 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3947, metadata !DIExpression()), !dbg !3948
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3949
  %0 = load i32, i32* %flags, align 8, !dbg !3949
  %and = and i32 %0, 512, !dbg !3949
  %tobool = icmp eq i32 %and, 0, !dbg !3949
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3949

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3949
  br label %cond.end, !dbg !3949

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3950
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3950
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3952
  br i1 %tobool1, label %return, label %if.end, !dbg !3953

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !3954
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !3954
  br label %return, !dbg !3955

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !3948
  ret %struct.gimple_seq_d* %retval.0, !dbg !3956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3957 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3959, metadata !DIExpression()), !dbg !3960
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3961
  ret %union.tree_node* %call, !dbg !3962
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3963 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3968, metadata !DIExpression()), !dbg !3969
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3970
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3970
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !3971
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !3971
  %2 = load i64, i64* %1, align 8, !dbg !3971
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3972
  store i64 %2, i64* %3, align 8, !dbg !3972
  ret void, !dbg !3973
}

declare dso_local %union.gimple_statement_d* @first_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_abnormal_incoming_edge_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3974 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3976, metadata !DIExpression()), !dbg !3979
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3980
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3980
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3981
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3981
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3982
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3982
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3982
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3982
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3982
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3982
  store i32 %4, i32* %3, align 8, !dbg !3982
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3982
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3982
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3982
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3982
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3984
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3984
  br label %for.cond, !dbg !3982

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3986
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3986
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3977, metadata !DIExpression(DW_OP_deref)), !dbg !3979
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3986
  %tobool = icmp eq i8 %call1, 0, !dbg !3982
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3982

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3987
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3977, metadata !DIExpression()), !dbg !3979
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3989
  %12 = load i32, i32* %flags, align 8, !dbg !3989
  %and = and i32 %12, 2, !dbg !3990
  %tobool2 = icmp eq i32 %and, 0, !dbg !3990
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3991

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3978, metadata !DIExpression(DW_OP_deref)), !dbg !3979
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3986
  br label %for.cond, !dbg !3986, !llvm.loop !3992

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3979
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3994
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3994
  ret i8 %retval.0, !dbg !3994
}

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @phi_alternatives_equal(%struct.basic_block_def* %dest, %struct.edge_def* %e1, %struct.edge_def* %e2) unnamed_addr #5 !dbg !3995 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !3999, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !4000, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata %struct.edge_def* %e2, metadata !4001, metadata !DIExpression()), !dbg !4011
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e1, i64 0, i32 6, !dbg !4012
  %0 = load i32, i32* %dest_idx, align 4, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4011
  %dest_idx1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2, i64 0, i32 6, !dbg !4013
  %1 = load i32, i32* %dest_idx1, align 4, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %1, metadata !4003, metadata !DIExpression()), !dbg !4011
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4014
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4014
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4015
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4015
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %dest) #6, !dbg !4015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !4015
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4015
  %conv = sext i32 %0 to i64, !dbg !4016
  %conv4 = sext i32 %1 to i64, !dbg !4016
  br label %for.cond, !dbg !4017

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4004, metadata !DIExpression(DW_OP_deref)), !dbg !4011
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4018
  %tobool = icmp eq i8 %call, 0, !dbg !4019
  br i1 %tobool, label %for.body, label %cleanup17, !dbg !4020

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4004, metadata !DIExpression(DW_OP_deref)), !dbg !4011
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4021
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !4005, metadata !DIExpression()), !dbg !4016
  %call3 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call2, i64 %conv) #7, !dbg !4022
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4009, metadata !DIExpression()), !dbg !4016
  %call5 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call2, i64 %conv4) #7, !dbg !4023
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4010, metadata !DIExpression()), !dbg !4016
  %cmp = icmp eq %union.tree_node* %call3, null, !dbg !4024
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4024

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4024
  br label %cond.end, !dbg !4024

cond.end:                                         ; preds = %for.body, %cond.true
  %cmp7 = icmp eq %union.tree_node* %call5, null, !dbg !4025
  br i1 %cmp7, label %cond.true9, label %cond.end11, !dbg !4025

cond.true9:                                       ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 368, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4025
  br label %cond.end11, !dbg !4025

cond.end11:                                       ; preds = %cond.end, %cond.true9
  %call13 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call3, %union.tree_node* %call5) #6, !dbg !4026
  %tobool14 = icmp eq i32 %call13, 0, !dbg !4026
  br i1 %tobool14, label %cleanup17, label %for.inc

for.inc:                                          ; preds = %cond.end11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4004, metadata !DIExpression(DW_OP_deref)), !dbg !4011
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4028
  br label %for.cond, !dbg !4029, !llvm.loop !4030

cleanup17:                                        ; preds = %cond.end11, %for.cond
  %retval.2 = phi i8 [ 0, %cond.end11 ], [ 1, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4032
  ret i8 %retval.2, !dbg !4032
}

declare dso_local %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %gs, %struct.edge_def* %e) unnamed_addr #0 !dbg !4033 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4038, metadata !DIExpression()), !dbg !4039
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !4040
  %0 = load i32, i32* %dest_idx, align 4, !dbg !4040
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %0) #7, !dbg !4041
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !4042
  %1 = load i32, i32* %locus, align 8, !dbg !4042
  ret i32 %1, !dbg !4043
}

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4044 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %index, metadata !4049, metadata !DIExpression()), !dbg !4051
  %conv = trunc i64 %index to i32, !dbg !4052
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4053
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4050, metadata !DIExpression()), !dbg !4051
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4054
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !4055
  ret %union.tree_node* %call1, !dbg !4056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4057 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4059, metadata !DIExpression()), !dbg !4060
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4061
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4061
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4062
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4062
  %2 = load i64, i64* %1, align 8, !dbg !4062
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4063
  store i64 %2, i64* %3, align 8, !dbg !4063
  ret void, !dbg !4064
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4065 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4067, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4068, metadata !DIExpression()), !dbg !4071
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4072
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4069, metadata !DIExpression()), !dbg !4070
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4073
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4074
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4075
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4076
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4077
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4078
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4079
  ret void, !dbg !4080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4081 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4083, metadata !DIExpression()), !dbg !4084
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4085
  %cmp = icmp eq i32 %call, 2, !dbg !4086
  %conv1 = zext i1 %cmp to i8, !dbg !4085
  ret i8 %conv1, !dbg !4087
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4088 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4091, metadata !DIExpression()), !dbg !4093
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #7, !dbg !4094
  br label %while.cond, !dbg !4095

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !4096
  %tobool = icmp eq i8 %call, 0, !dbg !4096
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !4097

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !4098
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !4099
  %cmp = icmp eq i32 %call2, 4, !dbg !4100
  br i1 %cmp, label %while.body, label %while.end, !dbg !4095

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !4101
  br label %while.cond, !dbg !4095, !llvm.loop !4102

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !4104
}

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @nearest_common_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @operand_equal_for_phi_arg_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4105 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4107, metadata !DIExpression()), !dbg !4108
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4109
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4109

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4110
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4110
  br label %cond.end, !dbg !4109

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4109
  ret %struct.gimple_seq_node_d* %cond, !dbg !4111
}

declare dso_local void @fix_loop_structure(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @scev_reset() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_clear(i32 %flags) unnamed_addr #0 !dbg !4112 {
entry:
  call void @llvm.dbg.value(metadata i32 64, metadata !4114, metadata !DIExpression()), !dbg !4115
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4116
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4116
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4116
  %tobool = icmp eq %struct.loops* %1, null, !dbg !4116
  br i1 %tobool, label %return, label %if.end, !dbg !4118

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !4119
  %2 = load i32, i32* %state, align 8, !dbg !4120
  %and = and i32 %2, -65, !dbg !4120
  store i32 %and, i32* %state, align 8, !dbg !4120
  br label %return, !dbg !4121

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4121
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4122 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4124, metadata !DIExpression()), !dbg !4125
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4126
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4126
  ret %union.tree_node* %0, !dbg !4127
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !4128 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4135, metadata !DIExpression()), !dbg !4140
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4141
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4136, metadata !DIExpression()), !dbg !4140
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4142
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !4142
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4142
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !4144
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4145

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4146
  %tobool = icmp eq i32 %3, 0, !dbg !4146
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !4148

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !4149
  br label %cleanup, !dbg !4150

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !4140
  ret i8 %retval.0, !dbg !4151
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_imm_use(%union.tree_node* %var, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) unnamed_addr #0 !dbg !4152 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4158, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use_p, metadata !4159, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmt, metadata !4160, metadata !DIExpression()), !dbg !4165
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4166
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4166
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4161, metadata !DIExpression()), !dbg !4165
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4167
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !4167
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4167
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !4168
  br i1 %cmp, label %return_false, label %if.end, !dbg !4169

return_false:                                     ; preds = %if.then4, %if.end12, %entry
  call void @llvm.dbg.label(metadata !4162), !dbg !4170
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %use_p, align 8, !dbg !4171
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !4172
  br label %cleanup, !dbg !4173

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !4174
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !4174
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !4176
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !4177

if.then4:                                         ; preds = %if.end
  %stmt6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !4178
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt6, align 8, !dbg !4178
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !4181
  %tobool = icmp eq i8 %call, 0, !dbg !4181
  br i1 %tobool, label %if.then7, label %return_false, !dbg !4182

if.then7:                                         ; preds = %if.then4
  %5 = bitcast i40* %next to i64*, !dbg !4183
  %6 = load i64, i64* %5, align 8, !dbg !4183
  %7 = bitcast %struct.ssa_use_operand_d** %use_p to i64*, !dbg !4185
  store i64 %6, i64* %7, align 8, !dbg !4185
  %8 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4186
  %stmt11 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %8, i64 0, i32 2, i32 0, !dbg !4187
  %9 = bitcast %union.gimple_statement_d** %stmt11 to i64*, !dbg !4187
  %10 = load i64, i64* %9, align 8, !dbg !4187
  %11 = bitcast %union.gimple_statement_d** %stmt to i64*, !dbg !4188
  store i64 %10, i64* %11, align 8, !dbg !4188
  br label %cleanup, !dbg !4189

if.end12:                                         ; preds = %if.end
  %12 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4190
  %tobool13 = icmp eq i32 %12, 0, !dbg !4190
  br i1 %tobool13, label %return_false, label %if.end15, !dbg !4192

if.end15:                                         ; preds = %if.end12
  %call16 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) #6, !dbg !4193
  br label %cleanup, !dbg !4194

cleanup:                                          ; preds = %if.end15, %if.then7, %return_false
  %retval.0 = phi i8 [ 0, %return_false ], [ 1, %if.then7 ], [ %call16, %if.end15 ], !dbg !4165
  ret i8 %retval.0, !dbg !4195
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_forwarder_block_with_phi(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !4196 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %vm = alloca %struct._edge_var_map*, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4200, metadata !DIExpression()), !dbg !4247
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !4248
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !4201, metadata !DIExpression()), !dbg !4247
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !4249
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4202, metadata !DIExpression()), !dbg !4247
  %cmp = icmp eq %struct.basic_block_def* %0, %bb, !dbg !4250
  br i1 %cmp, label %cleanup.cont94, label %if.end, !dbg !4252

if.end:                                           ; preds = %entry
  %call2 = tail call %union.gimple_statement_d* @first_stmt(%struct.basic_block_def* %0) #6, !dbg !4253
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !4203, metadata !DIExpression()), !dbg !4247
  %tobool = icmp eq %union.gimple_statement_d* %call2, null, !dbg !4254
  br i1 %tobool, label %if.end9, label %land.lhs.true, !dbg !4256

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !4257
  %cmp4 = icmp eq i32 %call3, 4, !dbg !4258
  br i1 %cmp4, label %land.lhs.true5, label %if.end9, !dbg !4259

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %union.tree_node* @gimple_label_label(%union.gimple_statement_d* nonnull %call2) #7, !dbg !4260
  %nonlocal_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4260
  %1 = bitcast i40* %nonlocal_flag to i64*, !dbg !4260
  %bf.load = load i64, i64* %1, align 8, !dbg !4260
  %bf.cast3 = and i64 %bf.load, 256, !dbg !4260
  %tobool7 = icmp eq i64 %bf.cast3, 0, !dbg !4260
  br i1 %tobool7, label %if.end9, label %cleanup.cont94, !dbg !4261

if.end9:                                          ; preds = %land.lhs.true5, %if.end, %land.lhs.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4247
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4262
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4263
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 6, !dbg !4264
  %4 = bitcast %struct._edge_var_map** %vm to i8*, !dbg !4265
  br label %while.cond, !dbg !4266

while.cond:                                       ; preds = %cleanup75, %if.end9
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4267
  %tobool10 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !4267
  br i1 %tobool10, label %cond.end, label %cond.true, !dbg !4267

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !4267
  br label %cond.end, !dbg !4267

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !4267
  %call12 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4267
  %cmp13 = icmp eq i32 %call12, 0, !dbg !4268
  br i1 %cmp13, label %while.end, label %while.body, !dbg !4266

while.body:                                       ; preds = %cond.end
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4269
  %tobool15 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !4269
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !4269

cond.true16:                                      ; preds = %while.body
  %base18 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !4269
  br label %cond.end20, !dbg !4269

cond.end20:                                       ; preds = %while.body, %cond.true16
  %cond21 = phi %struct.VEC_edge_base* [ %base18, %cond.true16 ], [ null, %while.body ], !dbg !4269
  %call22 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond21, i32 0) #7, !dbg !4269
  call void @llvm.dbg.value(metadata %struct.edge_def* %call22, metadata !4207, metadata !DIExpression()), !dbg !4262
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4270
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call22, i64 0, i32 0, !dbg !4271
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4271
  %call23 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %7, %struct.basic_block_def* %0) #6, !dbg !4272
  call void @llvm.dbg.value(metadata %struct.edge_def* %call23, metadata !4209, metadata !DIExpression()), !dbg !4262
  %tobool24 = icmp eq %struct.edge_def* %call23, null, !dbg !4273
  br i1 %tobool24, label %if.end33, label %if.then25, !dbg !4275

if.then25:                                        ; preds = %cond.end20
  %call26 = call fastcc zeroext i8 @phi_alternatives_equal(%struct.basic_block_def* %0, %struct.edge_def* nonnull %call23, %struct.edge_def* %call) #7, !dbg !4276
  %tobool27 = icmp eq i8 %call26, 0, !dbg !4276
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !4279

if.then28:                                        ; preds = %if.then25
  %call29 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %call22, %struct.basic_block_def* %0) #6, !dbg !4280
  call void @llvm.dbg.value(metadata %struct.edge_def* %call29, metadata !4207, metadata !DIExpression()), !dbg !4262
  call void @redirect_edge_var_map_clear(%struct.edge_def* %call29) #6, !dbg !4282
  br label %cleanup75, !dbg !4283, !llvm.loop !4284

if.end30:                                         ; preds = %if.then25
  %call31 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call22) #6, !dbg !4286
  %call32 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call31) #7, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.edge_def* %call32, metadata !4207, metadata !DIExpression()), !dbg !4262
  br label %if.end33, !dbg !4288

if.end33:                                         ; preds = %cond.end20, %if.end30
  %e.0 = phi %struct.edge_def* [ %call32, %if.end30 ], [ %call22, %cond.end20 ], !dbg !4262
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !4207, metadata !DIExpression()), !dbg !4262
  %call34 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %e.0, %struct.basic_block_def* %0) #6, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.edge_def* %call34, metadata !4209, metadata !DIExpression()), !dbg !4262
  %cmp35 = icmp eq %struct.edge_def* %call34, %e.0, !dbg !4290
  br i1 %cmp35, label %cond.end38, label %cond.true36, !dbg !4290

cond.true36:                                      ; preds = %if.end33
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 821, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4290
  br label %cond.end38, !dbg !4290

cond.end38:                                       ; preds = %if.end33, %cond.true36
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4291
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %0) #6, !dbg !4291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !4291
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4291
  br label %for.cond, !dbg !4292

for.cond:                                         ; preds = %if.end72, %cond.end38
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4262
  %call40 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4293
  %tobool41 = icmp eq i8 %call40, 0, !dbg !4294
  br i1 %tobool41, label %for.body, label %for.end74, !dbg !4295

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4262
  %call42 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4296
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call42, metadata !4211, metadata !DIExpression()), !dbg !4264
  %8 = load i32, i32* %dest_idx, align 4, !dbg !4297
  %conv = zext i32 %8 to i64, !dbg !4298
  %call43 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call42, i64 %conv) #7, !dbg !4299
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !4215, metadata !DIExpression()), !dbg !4264
  %call44 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call42, %struct.edge_def* %call) #7, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %call44, metadata !4216, metadata !DIExpression()), !dbg !4264
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call43, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4301
  %bf.load46 = load i64, i64* %9, align 8, !dbg !4301
  %bf.cast482 = and i64 %bf.load46, 65535, !dbg !4302
  %cmp49 = icmp eq i64 %bf.cast482, 141, !dbg !4302
  br i1 %cmp49, label %if.then51, label %if.end72, !dbg !4303

if.then51:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !4304
  %call52 = call %struct.VEC_edge_var_map_heap* @redirect_edge_var_map_vector(%struct.edge_def* %e.0) #6, !dbg !4305
  call void @llvm.dbg.value(metadata %struct.VEC_edge_var_map_heap* %call52, metadata !4217, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 0, metadata !4241, metadata !DIExpression()), !dbg !4265
  %base56 = getelementptr inbounds %struct.VEC_edge_var_map_heap, %struct.VEC_edge_var_map_heap* %call52, i64 0, i32 0, !dbg !4306
  br label %for.cond53, !dbg !4307

for.cond53:                                       ; preds = %for.inc, %if.then51
  %def.0 = phi %union.tree_node* [ %call43, %if.then51 ], [ %def.1, %for.inc ], !dbg !4264
  %locus.0 = phi i32 [ %call44, %if.then51 ], [ %locus.1, %for.inc ], !dbg !4264
  %i.0 = phi i64 [ 0, %if.then51 ], [ %inc, %for.inc ], !dbg !4308
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !4241, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 %locus.0, metadata !4216, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !4215, metadata !DIExpression()), !dbg !4264
  %conv60 = trunc i64 %i.0 to i32, !dbg !4309
  call void @llvm.dbg.value(metadata %struct._edge_var_map** %vm, metadata !4239, metadata !DIExpression(DW_OP_deref)), !dbg !4265
  %call61 = call fastcc i32 @VEC_edge_var_map_base_iterate(%struct.VEC_edge_var_map_base* %base56, i32 %conv60, %struct._edge_var_map** nonnull %vm) #7, !dbg !4309
  %tobool62 = icmp eq i32 %call61, 0, !dbg !4310
  br i1 %tobool62, label %for.end, label %for.body63, !dbg !4310

for.body63:                                       ; preds = %for.cond53
  %10 = load %struct._edge_var_map*, %struct._edge_var_map** %vm, align 8, !dbg !4311
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %10, metadata !4239, metadata !DIExpression()), !dbg !4265
  %call64 = call fastcc %union.tree_node* @redirect_edge_var_map_result(%struct._edge_var_map* %10) #7, !dbg !4312
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !4242, metadata !DIExpression()), !dbg !4313
  %11 = load %struct._edge_var_map*, %struct._edge_var_map** %vm, align 8, !dbg !4314
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %11, metadata !4239, metadata !DIExpression()), !dbg !4265
  %call65 = call fastcc %union.tree_node* @redirect_edge_var_map_def(%struct._edge_var_map* %11) #7, !dbg !4315
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !4246, metadata !DIExpression()), !dbg !4313
  %cmp66 = icmp eq %union.tree_node* %def.0, %call64, !dbg !4316
  br i1 %cmp66, label %if.then68, label %cleanup, !dbg !4318

if.then68:                                        ; preds = %for.body63
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !4215, metadata !DIExpression()), !dbg !4264
  %12 = load %struct._edge_var_map*, %struct._edge_var_map** %vm, align 8, !dbg !4319
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %12, metadata !4239, metadata !DIExpression()), !dbg !4265
  %call69 = call fastcc i32 @redirect_edge_var_map_location(%struct._edge_var_map* %12) #7, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %call69, metadata !4216, metadata !DIExpression()), !dbg !4264
  br label %cleanup, !dbg !4322

cleanup:                                          ; preds = %for.body63, %if.then68
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then68 ], [ true, %for.body63 ]
  %def.1 = phi %union.tree_node* [ %call65, %if.then68 ], [ %def.0, %for.body63 ], !dbg !4264
  %locus.1 = phi i32 [ %call69, %if.then68 ], [ %locus.0, %for.body63 ], !dbg !4264
  call void @llvm.dbg.value(metadata i32 %locus.1, metadata !4216, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata %union.tree_node* %def.1, metadata !4215, metadata !DIExpression()), !dbg !4264
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %inc = add i64 %i.0, 1, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4241, metadata !DIExpression()), !dbg !4265
  br label %for.cond53, !dbg !4324, !llvm.loop !4325

for.end:                                          ; preds = %for.cond53, %cleanup
  %def.2 = phi %union.tree_node* [ %def.1, %cleanup ], [ %def.0, %for.cond53 ], !dbg !4264
  %locus.2 = phi i32 [ %locus.1, %cleanup ], [ %locus.0, %for.cond53 ], !dbg !4264
  call void @llvm.dbg.value(metadata i32 %locus.2, metadata !4216, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata %union.tree_node* %def.2, metadata !4215, metadata !DIExpression()), !dbg !4264
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !4327
  br label %if.end72, !dbg !4328

if.end72:                                         ; preds = %for.end, %for.body
  %def.3 = phi %union.tree_node* [ %def.2, %for.end ], [ %call43, %for.body ], !dbg !4264
  %locus.3 = phi i32 [ %locus.2, %for.end ], [ %call44, %for.body ], !dbg !4264
  call void @llvm.dbg.value(metadata i32 %locus.3, metadata !4216, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata %union.tree_node* %def.3, metadata !4215, metadata !DIExpression()), !dbg !4264
  call void @add_phi_arg(%union.gimple_statement_d* %call42, %union.tree_node* %def.3, %struct.edge_def* %call34, i32 %locus.3) #6, !dbg !4329
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4262
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4330
  br label %for.cond, !dbg !4331, !llvm.loop !4332

for.end74:                                        ; preds = %for.cond
  call void @redirect_edge_var_map_clear(%struct.edge_def* %e.0) #6, !dbg !4334
  br label %cleanup75, !dbg !4285

cleanup75:                                        ; preds = %for.end74, %if.then28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4285
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %call80 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %bb) #6, !dbg !4335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call80, metadata !4204, metadata !DIExpression()), !dbg !4247
  %call81 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %0) #6, !dbg !4336
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call81, metadata !4205, metadata !DIExpression()), !dbg !4247
  %cmp82 = icmp eq %struct.basic_block_def* %call81, %bb, !dbg !4337
  br i1 %cmp82, label %if.end86, label %if.else, !dbg !4339

if.else:                                          ; preds = %while.end
  %call85 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %call81, %struct.basic_block_def* %call80) #6, !dbg !4340
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call85, metadata !4206, metadata !DIExpression()), !dbg !4247
  br label %if.end86

if.end86:                                         ; preds = %while.end, %if.else
  %dom.0 = phi %struct.basic_block_def* [ %call85, %if.else ], [ %call80, %while.end ], !dbg !4341
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !4206, metadata !DIExpression()), !dbg !4247
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %0, %struct.basic_block_def* %dom.0) #6, !dbg !4342
  call void @delete_basic_block(%struct.basic_block_def* %bb) #6, !dbg !4343
  br label %cleanup.cont94, !dbg !4344

cleanup.cont94:                                   ; preds = %land.lhs.true5, %if.end86, %entry
  ret void, !dbg !4344
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

declare dso_local void @redirect_edge_var_map_clear(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.VEC_edge_var_map_heap* @redirect_edge_var_map_vector(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_var_map_base_iterate(%struct.VEC_edge_var_map_base* %vec_, i32 %ix_, %struct._edge_var_map** %ptr) unnamed_addr #0 !dbg !4345 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_var_map_base* %vec_, metadata !4351, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4352, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata %struct._edge_var_map** %ptr, metadata !4353, metadata !DIExpression()), !dbg !4354
  %tobool = icmp eq %struct.VEC_edge_var_map_base* %vec_, null, !dbg !4355
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4355

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_var_map_base, %struct.VEC_edge_var_map_base* %vec_, i64 0, i32 0, !dbg !4355
  %0 = load i32, i32* %num, align 8, !dbg !4355
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4355
  br i1 %cmp, label %if.then, label %if.else, !dbg !4357

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4358
  %arrayidx = getelementptr inbounds %struct.VEC_edge_var_map_base, %struct.VEC_edge_var_map_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4358
  br label %return, !dbg !4358

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4360

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct._edge_var_map* [ null, %if.else ], [ %arrayidx, %if.then ], !dbg !4362
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4362
  store %struct._edge_var_map* %storemerge, %struct._edge_var_map** %ptr, align 8, !dbg !4362
  ret i32 %retval.0, !dbg !4357
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @redirect_edge_var_map_result(%struct._edge_var_map* %v) unnamed_addr #0 !dbg !4363 {
entry:
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %v, metadata !4367, metadata !DIExpression()), !dbg !4368
  %result = getelementptr inbounds %struct._edge_var_map, %struct._edge_var_map* %v, i64 0, i32 0, !dbg !4369
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4369
  ret %union.tree_node* %0, !dbg !4370
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @redirect_edge_var_map_def(%struct._edge_var_map* %v) unnamed_addr #0 !dbg !4371 {
entry:
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %v, metadata !4373, metadata !DIExpression()), !dbg !4374
  %def = getelementptr inbounds %struct._edge_var_map, %struct._edge_var_map* %v, i64 0, i32 1, !dbg !4375
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4375
  ret %union.tree_node* %0, !dbg !4376
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @redirect_edge_var_map_location(%struct._edge_var_map* %v) unnamed_addr #0 !dbg !4377 {
entry:
  call void @llvm.dbg.value(metadata %struct._edge_var_map* %v, metadata !4381, metadata !DIExpression()), !dbg !4382
  %locus = getelementptr inbounds %struct._edge_var_map, %struct._edge_var_map* %v, i64 0, i32 2, !dbg !4383
  %0 = load i32, i32* %locus, align 8, !dbg !4383
  ret i32 %0, !dbg !4384
}

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
!llvm.module.flags = !{!2173, !2174, !2175}
!llvm.ident = !{!2176}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_merge_phi", scope: !2, file: !3, line: 997, type: !2147, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !645, globals: !2144, nameTableKind: None)
!3 = !DIFile(filename: "tree-cfgcleanup.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !344, !348, !353, !372, !379, !386, !580, !619}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !318, line: 30, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !325, line: 363, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!326 = !{!327, !328, !329}
!327 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !325, line: 355, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !336, line: 31, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!340 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!341 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!342 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!343 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !336, line: 91, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347}
!346 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!347 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !349, line: 474, baseType: !7, size: 32, elements: !350)
!349 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = !{!351, !352}
!351 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!352 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !354, line: 280, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!356 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !354, line: 1817, baseType: !7, size: 32, elements: !373)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !354, line: 1805, baseType: !7, size: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !354, line: 39, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!388 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!390 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!391 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!392 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!393 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!394 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!395 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!396 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!397 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!398 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!399 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!400 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!403 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!404 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!405 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!406 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!407 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!408 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!409 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!410 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!411 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!412 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!413 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!414 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!415 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!416 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!417 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!418 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!419 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!420 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!422 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!423 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!424 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!425 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!426 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!427 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!428 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!429 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!430 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!431 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!432 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!433 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!434 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!435 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!436 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!437 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!438 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!439 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!440 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!441 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!442 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!443 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!444 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!445 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!446 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!447 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!448 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!449 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!450 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!451 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!452 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!453 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!454 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!455 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!456 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!457 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!458 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!460 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!461 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!462 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!463 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!464 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!465 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!466 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!467 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!468 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!469 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!470 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!471 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!472 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!473 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!474 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!475 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!476 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!477 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!478 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!479 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!480 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!481 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!482 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!483 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!484 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!485 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!486 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!487 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!488 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!489 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!490 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!491 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!492 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!493 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!494 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!495 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!496 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!497 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!498 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!499 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!500 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!501 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!502 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!503 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!504 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!505 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!506 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!507 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!508 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!509 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!510 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!511 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!512 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!513 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!514 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!515 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!516 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!517 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!518 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!519 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!520 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!521 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!522 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!523 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!524 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!525 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!526 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!527 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!528 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!529 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!530 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!531 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!532 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!533 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!534 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!535 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!536 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!537 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!538 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!539 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!540 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!541 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!542 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!543 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!545 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!546 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!547 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!548 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!549 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!550 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!551 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!552 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!553 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!554 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!555 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!556 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!557 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!560 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!561 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!562 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!563 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!564 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!565 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!566 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!567 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!568 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!569 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!570 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!571 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!572 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!573 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!574 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!575 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!576 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!577 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!578 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!579 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !581, line: 51, baseType: !7, size: 32, elements: !582)
!581 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!583 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!618 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !581, line: 727, baseType: !7, size: 32, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!621 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!644 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!645 = !{!646, !647, !648, !649, !652, !653, !655, !386, !718, !981, !2138, !1015, !650, !2140, !2141}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!648 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !656, line: 47, baseType: !657)
!656 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !659, line: 75, size: 256, elements: !660)
!659 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!660 = !{!661, !676, !677, !678}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !658, file: !659, line: 76, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !659, line: 68, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !659, line: 63, size: 320, elements: !665)
!665 = !{!666, !668, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !659, line: 64, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !664, file: !659, line: 65, baseType: !667, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !664, file: !659, line: 66, baseType: !7, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !664, file: !659, line: 67, baseType: !671, size: 128, offset: 192)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 128, elements: !674)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !659, line: 29, baseType: !673)
!673 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!674 = !{!675}
!675 = !DISubrange(count: 2)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !658, file: !659, line: 77, baseType: !662, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !658, file: !659, line: 78, baseType: !7, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !658, file: !659, line: 79, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !659, line: 49, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !659, line: 45, size: 832, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !681, file: !659, line: 46, baseType: !667, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !681, file: !659, line: 47, baseType: !657, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !681, file: !659, line: 48, baseType: !686, size: 704, offset: 128)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !687, line: 164, size: 704, elements: !688)
!687 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!688 = !{!689, !691, !701, !702, !703, !704, !705, !706, !710, !714, !715, !716, !717}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !686, file: !687, line: 166, baseType: !690, size: 64)
!690 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !686, file: !687, line: 167, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !687, line: 157, size: 192, elements: !694)
!694 = !{!695, !696, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !693, file: !687, line: 159, baseType: !650, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !693, file: !687, line: 160, baseType: !692, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !693, file: !687, line: 161, baseType: !698, size: 32, offset: 128)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 4)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !686, file: !687, line: 168, baseType: !650, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !686, file: !687, line: 169, baseType: !650, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !686, file: !687, line: 170, baseType: !650, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !686, file: !687, line: 171, baseType: !690, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !686, file: !687, line: 172, baseType: !648, size: 32, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !686, file: !687, line: 176, baseType: !707, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!692, !652, !690}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !686, file: !687, line: 177, baseType: !711, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !652, !692}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !686, file: !687, line: 178, baseType: !652, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !686, file: !687, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !686, file: !687, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !686, file: !687, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !656, line: 56, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !354, line: 3371, size: 1792, elements: !721)
!721 = !{!722, !755, !761, !772, !791, !802, !807, !816, !822, !835, !847, !885, !1371, !1399, !1416, !1417, !1422, !1431, !1437, !1442, !1446, !1450, !1789, !1836, !1842, !1848, !1855, !1868, !1882, !1899, !1911, !1933, !1948, !2120}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !720, file: !354, line: 3372, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !354, line: 360, size: 64, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !723, file: !354, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !723, file: !354, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !723, file: !354, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !723, file: !354, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !723, file: !354, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !723, file: !354, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !723, file: !354, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !723, file: !354, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !723, file: !354, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !723, file: !354, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !723, file: !354, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !723, file: !354, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !723, file: !354, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !723, file: !354, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !723, file: !354, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !723, file: !354, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !723, file: !354, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !723, file: !354, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !723, file: !354, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !723, file: !354, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !723, file: !354, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !723, file: !354, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !723, file: !354, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !723, file: !354, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !723, file: !354, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !723, file: !354, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !723, file: !354, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !723, file: !354, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !723, file: !354, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !723, file: !354, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !354, line: 3373, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !354, line: 402, size: 192, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !756, file: !354, line: 403, baseType: !723, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !756, file: !354, line: 404, baseType: !718, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !354, line: 405, baseType: !718, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !720, file: !354, line: 3374, baseType: !762, size: 320)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !354, line: 1384, size: 320, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !354, line: 1385, baseType: !756, size: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !762, file: !354, line: 1386, baseType: !766, size: 128, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !767, line: 58, baseType: !768)
!767 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 54, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !768, file: !767, line: 56, baseType: !673, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !768, file: !767, line: 57, baseType: !690, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !720, file: !354, line: 3375, baseType: !773, size: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !354, line: 1397, size: 256, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !354, line: 1398, baseType: !756, size: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !773, file: !354, line: 1399, baseType: !777, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !779, line: 52, size: 256, elements: !780)
!779 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!780 = !{!781, !782, !783, !784, !785, !786, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !778, file: !779, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !778, file: !779, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !778, file: !779, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !778, file: !779, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !778, file: !779, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !778, file: !779, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !778, file: !779, line: 62, baseType: !788, size: 192, offset: 64)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 192, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 3)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !720, file: !354, line: 3376, baseType: !792, size: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !354, line: 1408, size: 256, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !354, line: 1409, baseType: !756, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !792, file: !354, line: 1410, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !798, line: 27, size: 192, elements: !799)
!798 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !797, file: !798, line: 29, baseType: !766, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !798, line: 30, baseType: !189, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !720, file: !354, line: 3377, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !354, line: 1437, size: 256, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !354, line: 1438, baseType: !756, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !803, file: !354, line: 1439, baseType: !718, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !720, file: !354, line: 3378, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !354, line: 1418, size: 256, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !354, line: 1419, baseType: !756, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !808, file: !354, line: 1420, baseType: !648, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !808, file: !354, line: 1421, baseType: !813, size: 8, offset: 224)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 8, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 1)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !720, file: !354, line: 3379, baseType: !817, size: 320)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !354, line: 1428, size: 320, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !817, file: !354, line: 1429, baseType: !756, size: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !817, file: !354, line: 1430, baseType: !718, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !817, file: !354, line: 1431, baseType: !718, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !720, file: !354, line: 3380, baseType: !823, size: 320)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !354, line: 1460, size: 320, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !823, file: !354, line: 1461, baseType: !756, size: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !823, file: !354, line: 1462, baseType: !827, size: 128, offset: 192)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !828, line: 31, size: 128, elements: !829)
!828 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!829 = !{!830, !833, !834}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !827, file: !828, line: 32, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !827, file: !828, line: 33, baseType: !7, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !827, file: !828, line: 34, baseType: !7, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !720, file: !354, line: 3381, baseType: !836, size: 384)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !354, line: 2507, size: 384, elements: !837)
!837 = !{!838, !839, !844, !845, !846}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !836, file: !354, line: 2508, baseType: !756, size: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !836, file: !354, line: 2509, baseType: !840, size: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !841, line: 58, baseType: !842)
!841 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !843, line: 44, baseType: !7)
!843 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !836, file: !354, line: 2510, baseType: !7, size: 32, offset: 224)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !836, file: !354, line: 2511, baseType: !718, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !836, file: !354, line: 2512, baseType: !718, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !720, file: !354, line: 3382, baseType: !848, size: 896)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !354, line: 2652, size: 896, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !848, file: !354, line: 2653, baseType: !836, size: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !848, file: !354, line: 2654, baseType: !718, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !848, file: !354, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !848, file: !354, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !848, file: !354, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !848, file: !354, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !848, file: !354, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !848, file: !354, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !848, file: !354, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !848, file: !354, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !848, file: !354, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !848, file: !354, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !848, file: !354, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !848, file: !354, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !848, file: !354, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !848, file: !354, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !848, file: !354, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !848, file: !354, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !848, file: !354, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !848, file: !354, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !848, file: !354, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !848, file: !354, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !848, file: !354, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !848, file: !354, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !848, file: !354, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !848, file: !354, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !848, file: !354, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !848, file: !354, line: 2703, baseType: !7, size: 32, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !848, file: !354, line: 2705, baseType: !718, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !848, file: !354, line: 2706, baseType: !718, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !848, file: !354, line: 2707, baseType: !718, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !848, file: !354, line: 2708, baseType: !718, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !848, file: !354, line: 2711, baseType: !883, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !354, line: 2711, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !720, file: !354, line: 3383, baseType: !886, size: 960)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !354, line: 2756, size: 960, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !354, line: 2757, baseType: !848, size: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !886, file: !354, line: 2758, baseType: !890, size: 64, offset: 896)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !656, line: 50, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !893, line: 240, size: 384, elements: !894)
!893 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!894 = !{!895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !892, file: !893, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !892, file: !893, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !892, file: !893, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !892, file: !893, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !892, file: !893, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !892, file: !893, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !892, file: !893, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !892, file: !893, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !892, file: !893, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !892, file: !893, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !892, file: !893, line: 321, baseType: !906, size: 320, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !893, line: 315, size: 320, elements: !907)
!907 = !{!908, !1304, !1306, !1369, !1370}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !906, file: !893, line: 316, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 64, elements: !814)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !893, line: 183, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !893, line: 166, size: 64, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !925, !926, !938, !941, !942, !943, !1281, !1294, !1301}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !911, file: !893, line: 168, baseType: !648, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !911, file: !893, line: 169, baseType: !7, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !911, file: !893, line: 170, baseType: !653, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !911, file: !893, line: 171, baseType: !890, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !911, file: !893, line: 172, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !656, line: 53, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !893, line: 359, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !920, file: !893, line: 360, baseType: !648, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !920, file: !893, line: 361, baseType: !924, size: 64, offset: 64)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 64, elements: !814)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !911, file: !893, line: 173, baseType: !189, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !911, file: !893, line: 174, baseType: !927, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !893, line: 133, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 115, size: 32, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !928, file: !893, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !928, file: !893, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !928, file: !893, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !928, file: !893, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !928, file: !893, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !928, file: !893, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !928, file: !893, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !928, file: !893, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !911, file: !893, line: 175, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !893, line: 175, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !911, file: !893, line: 176, baseType: !657, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !911, file: !893, line: 177, baseType: !718, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !911, file: !893, line: 178, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !946)
!946 = !{!947, !1193, !1194, !1195, !1251, !1255, !1256, !1257, !1275, !1276, !1277, !1278, !1279, !1280}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !945, file: !325, line: 219, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !950, file: !325, line: 151, baseType: !953, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !954, file: !325, line: 150, baseType: !7, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !954, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !954, file: !325, line: 150, baseType: !959, size: 64, offset: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 64, elements: !814)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !656, line: 108, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !963)
!963 = !{!964, !965, !966, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !962, file: !325, line: 124, baseType: !944, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !962, file: !325, line: 125, baseType: !944, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !962, file: !325, line: 131, baseType: !967, size: 64, offset: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !968)
!968 = !{!969, !1184}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !967, file: !325, line: 129, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !656, line: 66, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !581, line: 143, size: 192, elements: !973)
!973 = !{!974, !1182, !1183}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !972, file: !581, line: 145, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !656, line: 69, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !581, line: 136, size: 192, elements: !978)
!978 = !{!979, !1180, !1181}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !977, file: !581, line: 137, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !656, line: 58, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !581, line: 737, size: 768, elements: !983)
!983 = !{!984, !1001, !1035, !1041, !1046, !1051, !1058, !1064, !1070, !1075, !1089, !1094, !1100, !1105, !1115, !1120, !1138, !1145, !1152, !1158, !1163, !1169, !1175}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !982, file: !581, line: 738, baseType: !985, size: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !581, line: 271, size: 256, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !985, file: !581, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !985, file: !581, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !985, file: !581, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !985, file: !581, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !985, file: !581, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !985, file: !581, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !985, file: !581, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !985, file: !581, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !985, file: !581, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !985, file: !581, line: 312, baseType: !7, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !985, file: !581, line: 316, baseType: !840, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !985, file: !581, line: 319, baseType: !7, size: 32, offset: 96)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !985, file: !581, line: 323, baseType: !944, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !985, file: !581, line: 327, baseType: !718, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !982, file: !581, line: 739, baseType: !1002, size: 448)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !581, line: 350, size: 448, elements: !1003)
!1003 = !{!1004, !1033}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1002, file: !581, line: 353, baseType: !1005, size: 384)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !581, line: 333, size: 384, elements: !1006)
!1006 = !{!1007, !1008, !1016}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1005, file: !581, line: 336, baseType: !985, size: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1005, file: !581, line: 343, baseType: !1009, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1011, line: 37, size: 128, elements: !1012)
!1011 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !1011, line: 39, baseType: !1009, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1010, file: !1011, line: 40, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1005, file: !581, line: 344, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1011, line: 45, size: 320, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !1011, line: 47, baseType: !1017, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1018, file: !1011, line: 48, baseType: !1022, size: 256, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !354, line: 1883, size: 256, elements: !1023)
!1023 = !{!1024, !1026, !1027, !1032}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1022, file: !354, line: 1884, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !354, line: 1885, baseType: !1025, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1022, file: !354, line: 1891, baseType: !1028, size: 64, offset: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !354, line: 1891, size: 64, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1028, file: !354, line: 1891, baseType: !980, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1028, file: !354, line: 1891, baseType: !718, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1022, file: !354, line: 1892, baseType: !1015, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1002, file: !581, line: 359, baseType: !1034, size: 64, offset: 384)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 64, elements: !814)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !982, file: !581, line: 740, baseType: !1036, size: 512)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !581, line: 365, size: 512, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1036, file: !581, line: 368, baseType: !1005, size: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1036, file: !581, line: 373, baseType: !718, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1036, file: !581, line: 374, baseType: !718, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !982, file: !581, line: 741, baseType: !1042, size: 576)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !581, line: 380, size: 576, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1042, file: !581, line: 383, baseType: !1036, size: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1042, file: !581, line: 389, baseType: !1034, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !982, file: !581, line: 742, baseType: !1047, size: 320)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !581, line: 395, size: 320, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1047, file: !581, line: 397, baseType: !985, size: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1047, file: !581, line: 400, baseType: !970, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !982, file: !581, line: 743, baseType: !1052, size: 448)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !581, line: 406, size: 448, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1052, file: !581, line: 408, baseType: !985, size: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1052, file: !581, line: 412, baseType: !718, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1052, file: !581, line: 420, baseType: !718, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1052, file: !581, line: 423, baseType: !970, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !982, file: !581, line: 744, baseType: !1059, size: 384)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !581, line: 429, size: 384, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1059, file: !581, line: 431, baseType: !985, size: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1059, file: !581, line: 434, baseType: !718, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1059, file: !581, line: 437, baseType: !970, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !982, file: !581, line: 745, baseType: !1065, size: 384)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !581, line: 443, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1065, file: !581, line: 445, baseType: !985, size: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1065, file: !581, line: 449, baseType: !718, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1065, file: !581, line: 453, baseType: !970, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !982, file: !581, line: 746, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !581, line: 459, size: 320, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1071, file: !581, line: 461, baseType: !985, size: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1071, file: !581, line: 464, baseType: !718, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !982, file: !581, line: 747, baseType: !1076, size: 768)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !581, line: 469, size: 768, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1076, file: !581, line: 471, baseType: !985, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1076, file: !581, line: 474, baseType: !7, size: 32, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1076, file: !581, line: 475, baseType: !7, size: 32, offset: 288)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1076, file: !581, line: 478, baseType: !718, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1076, file: !581, line: 481, baseType: !1083, size: 384, offset: 384)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 384, elements: !814)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !354, line: 1917, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1084, file: !354, line: 1920, baseType: !1022, size: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1084, file: !354, line: 1921, baseType: !718, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1084, file: !354, line: 1922, baseType: !840, size: 32, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !982, file: !581, line: 748, baseType: !1090, size: 320)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !581, line: 487, size: 320, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1090, file: !581, line: 490, baseType: !985, size: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1090, file: !581, line: 494, baseType: !648, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !982, file: !581, line: 749, baseType: !1095, size: 384)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !581, line: 500, size: 384, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1095, file: !581, line: 502, baseType: !985, size: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1095, file: !581, line: 506, baseType: !970, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1095, file: !581, line: 510, baseType: !970, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !982, file: !581, line: 750, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !581, line: 529, size: 320, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1101, file: !581, line: 531, baseType: !985, size: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1101, file: !581, line: 540, baseType: !970, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !982, file: !581, line: 751, baseType: !1106, size: 704)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !581, line: 546, size: 704, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1106, file: !581, line: 549, baseType: !1036, size: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1106, file: !581, line: 553, baseType: !653, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1106, file: !581, line: 557, baseType: !647, size: 8, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1106, file: !581, line: 558, baseType: !647, size: 8, offset: 584)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1106, file: !581, line: 559, baseType: !647, size: 8, offset: 592)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1106, file: !581, line: 560, baseType: !647, size: 8, offset: 600)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1106, file: !581, line: 566, baseType: !1034, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !982, file: !581, line: 752, baseType: !1116, size: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !581, line: 571, size: 384, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1116, file: !581, line: 573, baseType: !1047, size: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1116, file: !581, line: 577, baseType: !718, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !982, file: !581, line: 753, baseType: !1121, size: 576)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !581, line: 600, size: 576, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1128, !1137}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1121, file: !581, line: 602, baseType: !1047, size: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1121, file: !581, line: 605, baseType: !718, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1121, file: !581, line: 609, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1127, line: 46, baseType: !673)
!1127 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1121, file: !581, line: 612, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !581, line: 581, size: 320, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1130, file: !581, line: 583, baseType: !386, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1130, file: !581, line: 586, baseType: !718, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1130, file: !581, line: 589, baseType: !718, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1130, file: !581, line: 592, baseType: !718, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1130, file: !581, line: 595, baseType: !718, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1121, file: !581, line: 616, baseType: !970, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !982, file: !581, line: 754, baseType: !1139, size: 512)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !581, line: 622, size: 512, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1139, file: !581, line: 624, baseType: !1047, size: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1139, file: !581, line: 628, baseType: !718, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1139, file: !581, line: 632, baseType: !718, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1139, file: !581, line: 636, baseType: !718, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !982, file: !581, line: 755, baseType: !1146, size: 704)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !581, line: 642, size: 704, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1146, file: !581, line: 644, baseType: !1139, size: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1146, file: !581, line: 648, baseType: !718, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1146, file: !581, line: 652, baseType: !718, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1146, file: !581, line: 653, baseType: !718, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !982, file: !581, line: 756, baseType: !1153, size: 448)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !581, line: 663, size: 448, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1153, file: !581, line: 665, baseType: !1047, size: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1153, file: !581, line: 668, baseType: !718, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1153, file: !581, line: 673, baseType: !718, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !982, file: !581, line: 757, baseType: !1159, size: 384)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !581, line: 694, size: 384, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1159, file: !581, line: 696, baseType: !1047, size: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1159, file: !581, line: 699, baseType: !718, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !982, file: !581, line: 758, baseType: !1164, size: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !581, line: 681, size: 384, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1164, file: !581, line: 683, baseType: !985, size: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1164, file: !581, line: 686, baseType: !718, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1164, file: !581, line: 689, baseType: !718, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !982, file: !581, line: 759, baseType: !1170, size: 384)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !581, line: 707, size: 384, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1170, file: !581, line: 709, baseType: !985, size: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1170, file: !581, line: 712, baseType: !718, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1170, file: !581, line: 712, baseType: !718, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !982, file: !581, line: 760, baseType: !1176, size: 320)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !581, line: 718, size: 320, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1176, file: !581, line: 720, baseType: !985, size: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1176, file: !581, line: 723, baseType: !718, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !977, file: !581, line: 138, baseType: !976, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !581, line: 139, baseType: !976, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !972, file: !581, line: 146, baseType: !975, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !972, file: !581, line: 152, baseType: !970, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !967, file: !325, line: 130, baseType: !890, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !962, file: !325, line: 134, baseType: !652, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !962, file: !325, line: 137, baseType: !718, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !962, file: !325, line: 138, baseType: !840, size: 32, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !962, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !325, line: 144, baseType: !648, size: 32, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !962, file: !325, line: 145, baseType: !648, size: 32, offset: 416)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !962, file: !325, line: 146, baseType: !1192, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !690)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !945, file: !325, line: 220, baseType: !948, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !945, file: !325, line: 223, baseType: !652, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !945, file: !325, line: 226, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !336, line: 100, size: 1216, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1208, !1209, !1210, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1241, !1249, !1250}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1197, file: !336, line: 102, baseType: !648, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1197, file: !336, line: 105, baseType: !7, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1197, file: !336, line: 108, baseType: !944, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1197, file: !336, line: 111, baseType: !944, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1197, file: !336, line: 114, baseType: !1204, size: 64, offset: 192)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !336, line: 41, size: 64, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1204, file: !336, line: 42, baseType: !335, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1204, file: !336, line: 43, baseType: !7, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1197, file: !336, line: 117, baseType: !7, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1197, file: !336, line: 120, baseType: !7, size: 32, offset: 288)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1197, file: !336, line: 123, baseType: !1211, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !336, line: 87, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !336, line: 87, size: 128, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1213, file: !336, line: 87, baseType: !1216, size: 128)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !336, line: 85, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !336, line: 85, size: 128, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1217, file: !336, line: 85, baseType: !7, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1217, file: !336, line: 85, baseType: !7, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1217, file: !336, line: 85, baseType: !1222, size: 64, offset: 64)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 64, elements: !814)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !336, line: 84, baseType: !1196)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1197, file: !336, line: 126, baseType: !1196, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1197, file: !336, line: 129, baseType: !1196, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1197, file: !336, line: 132, baseType: !652, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1197, file: !336, line: 139, baseType: !718, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1197, file: !336, line: 143, baseType: !766, size: 128, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1197, file: !336, line: 146, baseType: !766, size: 128, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1197, file: !336, line: 148, baseType: !647, size: 8, offset: 896)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1197, file: !336, line: 149, baseType: !647, size: 8, offset: 904)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1197, file: !336, line: 153, baseType: !344, size: 32, offset: 928)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1197, file: !336, line: 156, baseType: !1234, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !336, line: 48, size: 320, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1235, file: !336, line: 50, baseType: !980, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1235, file: !336, line: 59, baseType: !766, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1235, file: !336, line: 64, baseType: !647, size: 8, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !336, line: 67, baseType: !1234, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1197, file: !336, line: 159, baseType: !1242, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !336, line: 72, size: 256, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1243, file: !336, line: 74, baseType: !961, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1243, file: !336, line: 77, baseType: !1242, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !336, line: 78, baseType: !1242, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1243, file: !336, line: 81, baseType: !1242, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1197, file: !336, line: 162, baseType: !647, size: 8, offset: 1088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1197, file: !336, line: 166, baseType: !718, size: 64, offset: 1152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !945, file: !325, line: 229, baseType: !1252, size: 128, offset: 256)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, size: 128, elements: !674)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !945, file: !325, line: 232, baseType: !944, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !945, file: !325, line: 233, baseType: !944, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !945, file: !325, line: 238, baseType: !1258, size: 64, offset: 512)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1259)
!1259 = !{!1260, !1266}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1258, file: !325, line: 236, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1262, file: !325, line: 275, baseType: !970, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1262, file: !325, line: 278, baseType: !970, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1258, file: !325, line: 237, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1268, file: !325, line: 261, baseType: !890, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1268, file: !325, line: 262, baseType: !890, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1268, file: !325, line: 266, baseType: !890, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1268, file: !325, line: 267, baseType: !890, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1268, file: !325, line: 270, baseType: !648, size: 32, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !945, file: !325, line: 241, baseType: !1192, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !945, file: !325, line: 244, baseType: !648, size: 32, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !945, file: !325, line: 247, baseType: !648, size: 32, offset: 672)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !945, file: !325, line: 250, baseType: !648, size: 32, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !945, file: !325, line: 253, baseType: !648, size: 32, offset: 736)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !945, file: !325, line: 256, baseType: !648, size: 32, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !911, file: !893, line: 179, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !893, line: 150, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !893, line: 142, size: 320, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1292, !1293}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1284, file: !893, line: 144, baseType: !718, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1284, file: !893, line: 145, baseType: !890, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1284, file: !893, line: 146, baseType: !890, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1284, file: !893, line: 147, baseType: !1290, size: 32, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1291, line: 31, baseType: !648)
!1291 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1284, file: !893, line: 148, baseType: !7, size: 32, offset: 224)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1284, file: !893, line: 149, baseType: !647, size: 8, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !911, file: !893, line: 180, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !893, line: 162, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !893, line: 159, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1297, file: !893, line: 160, baseType: !718, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1297, file: !893, line: 161, baseType: !690, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !911, file: !893, line: 181, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !893, line: 181, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !906, file: !893, line: 317, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 64, elements: !814)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !906, file: !893, line: 318, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !893, line: 188, size: 320, elements: !1308)
!1308 = !{!1309, !1311, !1368}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1307, file: !893, line: 190, baseType: !1310, size: 192)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 192, elements: !789)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1307, file: !893, line: 193, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !893, line: 206, size: 320, elements: !1314)
!1314 = !{!1315, !1353, !1354, !1355, !1367}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1313, file: !893, line: 208, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !656, line: 62, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1319, line: 538, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1320 = !{!1321, !1325, !1331, !1344}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1318, file: !1319, line: 539, baseType: !1322, size: 32)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1319, line: 482, size: 32, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1322, file: !1319, line: 484, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1318, file: !1319, line: 540, baseType: !1326, size: 192)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1319, line: 488, size: 192, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !1319, line: 489, baseType: !1322, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1326, file: !1319, line: 492, baseType: !653, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1326, file: !1319, line: 496, baseType: !718, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1318, file: !1319, line: 541, baseType: !1332, size: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1319, line: 504, size: 256, elements: !1333)
!1333 = !{!1334, !1335, !1342, !1343}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1332, file: !1319, line: 505, baseType: !1322, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1332, file: !1319, line: 509, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1319, line: 501, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1332, file: !1319, line: 510, baseType: !1340, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1332, file: !1319, line: 513, baseType: !1316, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1318, file: !1319, line: 542, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1319, line: 530, size: 128, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1345, file: !1319, line: 531, baseType: !1322, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1345, file: !1319, line: 534, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1319, line: 525, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!647, !718, !653, !673, !673}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1313, file: !893, line: 211, baseType: !7, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1313, file: !893, line: 214, baseType: !690, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1313, file: !893, line: 224, baseType: !1356, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !893, line: 202, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !893, line: 202, size: 128, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1358, file: !893, line: 202, baseType: !1361, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !893, line: 200, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !893, line: 200, size: 128, elements: !1363)
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1362, file: !893, line: 200, baseType: !7, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1362, file: !893, line: 200, baseType: !7, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1362, file: !893, line: 200, baseType: !924, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1313, file: !893, line: 234, baseType: !1356, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1307, file: !893, line: 197, baseType: !690, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !906, file: !893, line: 319, baseType: !778, size: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !906, file: !893, line: 320, baseType: !797, size: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !720, file: !354, line: 3384, baseType: !1372, size: 1472)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !354, line: 3114, size: 1472, elements: !1373)
!1373 = !{!1374, !1395, !1396, !1397, !1398}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !354, line: 3115, baseType: !1375, size: 1216)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !354, line: 2984, size: 1216, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1375, file: !354, line: 2985, baseType: !886, size: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1375, file: !354, line: 2986, baseType: !718, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1375, file: !354, line: 2987, baseType: !718, size: 64, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1375, file: !354, line: 2988, baseType: !718, size: 64, offset: 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1375, file: !354, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1375, file: !354, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1375, file: !354, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1375, file: !354, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1375, file: !354, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1375, file: !354, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1375, file: !354, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1375, file: !354, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1375, file: !354, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1375, file: !354, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1375, file: !354, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1375, file: !354, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1375, file: !354, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1375, file: !354, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1372, file: !354, line: 3117, baseType: !718, size: 64, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1372, file: !354, line: 3119, baseType: !718, size: 64, offset: 1280)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1372, file: !354, line: 3121, baseType: !718, size: 64, offset: 1344)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1372, file: !354, line: 3123, baseType: !718, size: 64, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !720, file: !354, line: 3385, baseType: !1400, size: 1088)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !354, line: 2874, size: 1088, elements: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !354, line: 2875, baseType: !886, size: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1400, file: !354, line: 2876, baseType: !890, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1400, file: !354, line: 2877, baseType: !1405, size: 64, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1407, line: 172, size: 128, elements: !1408)
!1407 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1406, file: !1407, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1406, file: !1407, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1406, file: !1407, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1406, file: !1407, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1406, file: !1407, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1406, file: !1407, line: 195, baseType: !7, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1406, file: !1407, line: 199, baseType: !718, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !720, file: !354, line: 3386, baseType: !1375, size: 1216)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !720, file: !354, line: 3387, baseType: !1418, size: 1280)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !354, line: 3093, size: 1280, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !354, line: 3094, baseType: !1375, size: 1216)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1418, file: !354, line: 3095, baseType: !1405, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !720, file: !354, line: 3388, baseType: !1423, size: 1216)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !354, line: 2824, size: 1216, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1423, file: !354, line: 2825, baseType: !848, size: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1423, file: !354, line: 2827, baseType: !718, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1423, file: !354, line: 2828, baseType: !718, size: 64, offset: 960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1423, file: !354, line: 2829, baseType: !718, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1423, file: !354, line: 2830, baseType: !718, size: 64, offset: 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1423, file: !354, line: 2831, baseType: !718, size: 64, offset: 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !720, file: !354, line: 3389, baseType: !1432, size: 1024)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !354, line: 2850, size: 1024, elements: !1433)
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1432, file: !354, line: 2851, baseType: !886, size: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1432, file: !354, line: 2852, baseType: !648, size: 32, offset: 960)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1432, file: !354, line: 2853, baseType: !648, size: 32, offset: 992)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !720, file: !354, line: 3390, baseType: !1438, size: 1024)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !354, line: 2857, size: 1024, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !354, line: 2858, baseType: !886, size: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1438, file: !354, line: 2859, baseType: !1405, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !720, file: !354, line: 3391, baseType: !1443, size: 960)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !354, line: 2862, size: 960, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1443, file: !354, line: 2863, baseType: !886, size: 960)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !720, file: !354, line: 3392, baseType: !1447, size: 1472)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !354, line: 3304, size: 1472, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1447, file: !354, line: 3305, baseType: !1372, size: 1472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !720, file: !354, line: 3393, baseType: !1451, size: 1792)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !354, line: 3248, size: 1792, elements: !1452)
!1452 = !{!1453, !1454, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1451, file: !354, line: 3249, baseType: !1372, size: 1472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1451, file: !354, line: 3251, baseType: !1455, size: 64, offset: 1472)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1457, line: 463, size: 1152, elements: !1458)
!1457 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1458 = !{!1459, !1618, !1649, !1650, !1704, !1712, !1713, !1714, !1715, !1716, !1717, !1741, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1456, file: !1457, line: 464, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1462)
!1462 = !{!1463, !1512, !1525, !1539, !1587, !1599}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1461, file: !318, line: 197, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1500, !1509, !1510, !1511}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1466, file: !318, line: 119, baseType: !1465, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1466, file: !318, line: 122, baseType: !1465, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1466, file: !318, line: 123, baseType: !1465, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1466, file: !318, line: 126, baseType: !648, size: 32, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1466, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1466, file: !318, line: 165, baseType: !1474, size: 192, offset: 256)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1475)
!1475 = !{!1476, !1489, !1495}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1474, file: !318, line: 137, baseType: !1477, size: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1478)
!1478 = !{!1479, !1488}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1477, file: !318, line: 135, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1481, file: !318, line: 96, baseType: !1480, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1481, file: !318, line: 97, baseType: !1480, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1481, file: !318, line: 101, baseType: !718, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1481, file: !318, line: 106, baseType: !718, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1481, file: !318, line: 111, baseType: !718, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1477, file: !318, line: 136, baseType: !1480, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1474, file: !318, line: 151, baseType: !1490, size: 192)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1490, file: !318, line: 141, baseType: !718, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1490, file: !318, line: 145, baseType: !718, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1490, file: !318, line: 150, baseType: !648, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1474, file: !318, line: 164, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1496, file: !318, line: 161, baseType: !718, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1496, file: !318, line: 163, baseType: !840, size: 32, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1466, file: !318, line: 168, baseType: !1501, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1502, file: !318, line: 70, baseType: !1501, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1502, file: !318, line: 73, baseType: !1465, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1502, file: !318, line: 78, baseType: !718, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1502, file: !318, line: 85, baseType: !890, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1502, file: !318, line: 88, baseType: !648, size: 32, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1466, file: !318, line: 173, baseType: !890, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1466, file: !318, line: 173, baseType: !890, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1466, file: !318, line: 177, baseType: !647, size: 8, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1461, file: !318, line: 200, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1515, file: !318, line: 185, baseType: !1518, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1519, file: !318, line: 184, baseType: !7, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1519, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1519, file: !318, line: 184, baseType: !1524, size: 64, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 64, elements: !814)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1461, file: !318, line: 203, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1528, file: !318, line: 189, baseType: !1531, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1532, file: !318, line: 188, baseType: !7, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1532, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1532, file: !318, line: 188, baseType: !1537, size: 64, offset: 64)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 64, elements: !814)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1501)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1461, file: !318, line: 207, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1541, line: 144, baseType: !1542)
!1541 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1541, line: 100, size: 896, elements: !1544)
!1544 = !{!1545, !1551, !1556, !1561, !1563, !1564, !1565, !1566, !1567, !1568, !1573, !1575, !1576, !1581, !1586}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1543, file: !1541, line: 102, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1541, line: 52, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1550, !1340}
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1541, line: 47, baseType: !7)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1543, file: !1541, line: 105, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1541, line: 59, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!648, !1340, !1340}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1543, file: !1541, line: 108, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1541, line: 63, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !652}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1543, file: !1541, line: 111, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1543, file: !1541, line: 114, baseType: !1126, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1543, file: !1541, line: 117, baseType: !1126, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1543, file: !1541, line: 120, baseType: !1126, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1543, file: !1541, line: 124, baseType: !7, size: 32, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1543, file: !1541, line: 128, baseType: !7, size: 32, offset: 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1543, file: !1541, line: 131, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1541, line: 75, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!652, !1126, !1126}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1543, file: !1541, line: 132, baseType: !1574, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1541, line: 78, baseType: !1558)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1543, file: !1541, line: 135, baseType: !652, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1543, file: !1541, line: 136, baseType: !1577, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1541, line: 82, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!652, !652, !1126, !1126}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1543, file: !1541, line: 137, baseType: !1582, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1541, line: 83, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !652, !652}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1543, file: !1541, line: 141, baseType: !7, size: 32, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1461, file: !318, line: 211, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !354, line: 183, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !354, line: 183, size: 128, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1590, file: !354, line: 183, baseType: !1593, size: 128)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !354, line: 182, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !354, line: 182, size: 128, elements: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1594, file: !354, line: 182, baseType: !7, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1594, file: !354, line: 182, baseType: !7, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1594, file: !354, line: 182, baseType: !1034, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1461, file: !318, line: 220, baseType: !1600, size: 64, offset: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1600, file: !318, line: 218, baseType: !1588, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1600, file: !318, line: 219, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1606, line: 29, baseType: !1607)
!1606 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1606, line: 29, size: 96, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1607, file: !1606, line: 29, baseType: !1610, size: 96)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1606, line: 27, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1606, line: 27, size: 96, elements: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1611, file: !1606, line: 27, baseType: !7, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1611, file: !1606, line: 27, baseType: !7, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1611, file: !1606, line: 27, baseType: !1616, size: 8, offset: 64)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1617, size: 8, elements: !814)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1606, line: 26, baseType: !647)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1456, file: !1457, line: 467, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1621)
!1621 = !{!1622, !1624, !1625, !1638, !1639, !1640, !1641, !1642, !1643, !1645, !1647, !1648}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1620, file: !325, line: 377, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !656, line: 111, baseType: !944)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1620, file: !325, line: 378, baseType: !1623, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1620, file: !325, line: 381, baseType: !1626, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1628, file: !325, line: 282, baseType: !1631, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1632, file: !325, line: 281, baseType: !7, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1632, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1632, file: !325, line: 281, baseType: !1637, size: 64, offset: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 64, elements: !814)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1620, file: !325, line: 384, baseType: !648, size: 32, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1620, file: !325, line: 387, baseType: !648, size: 32, offset: 224)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1620, file: !325, line: 390, baseType: !648, size: 32, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1620, file: !325, line: 394, baseType: !1626, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1620, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1620, file: !325, line: 399, baseType: !1644, size: 64, offset: 416)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !674)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1620, file: !325, line: 402, baseType: !1646, size: 64, offset: 480)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !674)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1620, file: !325, line: 406, baseType: !648, size: 32, offset: 544)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1620, file: !325, line: 409, baseType: !648, size: 32, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1456, file: !1457, line: 470, baseType: !971, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1456, file: !1457, line: 473, baseType: !1651, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1407, line: 39, size: 1152, elements: !1653)
!1653 = !{!1654, !1655, !1668, !1669, !1670, !1681, !1682, !1686, !1687, !1688, !1689, !1690}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1652, file: !1407, line: 41, baseType: !1540, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1652, file: !1407, line: 48, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !581, line: 35, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !581, line: 35, size: 128, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1658, file: !581, line: 35, baseType: !1661, size: 128)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !581, line: 33, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !581, line: 33, size: 128, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1662, file: !581, line: 33, baseType: !7, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1662, file: !581, line: 33, baseType: !7, size: 32, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1662, file: !581, line: 33, baseType: !1667, size: 64, offset: 64)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 64, elements: !814)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1652, file: !1407, line: 51, baseType: !1588, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1652, file: !1407, line: 54, baseType: !718, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1652, file: !1407, line: 57, baseType: !1671, size: 128, offset: 256)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1672, line: 31, size: 128, elements: !1673)
!1672 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1671, file: !1672, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1671, file: !1672, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1671, file: !1672, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1671, file: !1672, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1671, file: !1672, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1671, file: !1672, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1671, file: !1672, line: 56, baseType: !655, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1652, file: !1407, line: 60, baseType: !1671, size: 128, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1652, file: !1407, line: 64, baseType: !1683, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1685, line: 33, flags: DIFlagFwdDecl)
!1685 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1652, file: !1407, line: 67, baseType: !718, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1652, file: !1407, line: 73, baseType: !1540, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1652, file: !1407, line: 77, baseType: !655, size: 64, offset: 704)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1652, file: !1407, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1652, file: !1407, line: 82, baseType: !1691, size: 320, offset: 832)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1011, line: 62, size: 320, elements: !1692)
!1692 = !{!1693, !1699, !1700, !1701, !1702, !1703}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1691, file: !1011, line: 63, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1011, line: 56, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1695, file: !1011, line: 57, baseType: !1694, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1695, file: !1011, line: 58, baseType: !813, size: 8, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1691, file: !1011, line: 64, baseType: !7, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1691, file: !1011, line: 66, baseType: !7, size: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1691, file: !1011, line: 68, baseType: !647, size: 8, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1691, file: !1011, line: 70, baseType: !1009, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1691, file: !1011, line: 71, baseType: !1017, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1456, file: !1457, line: 476, baseType: !1705, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !336, line: 187, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1706, file: !336, line: 189, baseType: !648, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1706, file: !336, line: 192, baseType: !1211, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1706, file: !336, line: 197, baseType: !1540, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1706, file: !336, line: 200, baseType: !1196, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1456, file: !1457, line: 479, baseType: !1540, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1456, file: !1457, line: 484, baseType: !718, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1456, file: !1457, line: 488, baseType: !718, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1456, file: !1457, line: 493, baseType: !718, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1456, file: !1457, line: 496, baseType: !718, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1456, file: !1457, line: 501, baseType: !1718, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !349, line: 2355, size: 576, elements: !1720)
!1720 = !{!1721, !1724, !1725, !1726, !1727, !1729, !1730, !1735, !1736, !1737, !1738, !1739, !1740}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1719, file: !349, line: 2356, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !349, line: 2356, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1719, file: !349, line: 2357, baseType: !653, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1719, file: !349, line: 2358, baseType: !648, size: 32, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1719, file: !349, line: 2359, baseType: !648, size: 32, offset: 160)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1719, file: !349, line: 2360, baseType: !1728, size: 128, offset: 192)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 128, elements: !699)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1719, file: !349, line: 2364, baseType: !648, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1719, file: !349, line: 2367, baseType: !1731, size: 128, offset: 384)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !349, line: 2349, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1731, file: !349, line: 2351, baseType: !890, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1731, file: !349, line: 2352, baseType: !690, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1719, file: !349, line: 2371, baseType: !348, size: 32, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1719, file: !349, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1719, file: !349, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1719, file: !349, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1719, file: !349, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1719, file: !349, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1456, file: !1457, line: 504, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1457, line: 504, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1456, file: !1457, line: 507, baseType: !1540, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1456, file: !1457, line: 510, baseType: !648, size: 32, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1456, file: !1457, line: 513, baseType: !648, size: 32, offset: 864)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1456, file: !1457, line: 516, baseType: !840, size: 32, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1456, file: !1457, line: 519, baseType: !840, size: 32, offset: 928)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1456, file: !1457, line: 522, baseType: !7, size: 32, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1456, file: !1457, line: 523, baseType: !7, size: 32, offset: 992)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1456, file: !1457, line: 528, baseType: !653, size: 64, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1456, file: !1457, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1456, file: !1457, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1456, file: !1457, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1456, file: !1457, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1456, file: !1457, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1456, file: !1457, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1456, file: !1457, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1456, file: !1457, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1456, file: !1457, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1456, file: !1457, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1456, file: !1457, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1456, file: !1457, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1456, file: !1457, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1456, file: !1457, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1456, file: !1457, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1456, file: !1457, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1451, file: !354, line: 3254, baseType: !718, size: 64, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1451, file: !354, line: 3257, baseType: !718, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1451, file: !354, line: 3258, baseType: !718, size: 64, offset: 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1451, file: !354, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1451, file: !354, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1451, file: !354, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1451, file: !354, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1451, file: !354, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1451, file: !354, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1451, file: !354, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1451, file: !354, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1451, file: !354, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1451, file: !354, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1451, file: !354, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1451, file: !354, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1451, file: !354, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1451, file: !354, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1451, file: !354, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1451, file: !354, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1451, file: !354, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1451, file: !354, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !354, line: 3394, baseType: !1790, size: 1344)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !354, line: 2279, size: 1344, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1790, file: !354, line: 2280, baseType: !756, size: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1790, file: !354, line: 2281, baseType: !718, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1790, file: !354, line: 2282, baseType: !718, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1790, file: !354, line: 2283, baseType: !718, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1790, file: !354, line: 2284, baseType: !718, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1790, file: !354, line: 2285, baseType: !7, size: 32, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1790, file: !354, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1790, file: !354, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1790, file: !354, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1790, file: !354, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1790, file: !354, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1790, file: !354, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1790, file: !354, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1790, file: !354, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1790, file: !354, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1790, file: !354, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1790, file: !354, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1790, file: !354, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1790, file: !354, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1790, file: !354, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1790, file: !354, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1790, file: !354, line: 2305, baseType: !7, size: 32, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1790, file: !354, line: 2306, baseType: !1290, size: 32, offset: 544)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1790, file: !354, line: 2307, baseType: !718, size: 64, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1790, file: !354, line: 2308, baseType: !718, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1790, file: !354, line: 2314, baseType: !1818, size: 64, offset: 704)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !354, line: 2309, size: 64, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1818, file: !354, line: 2310, baseType: !648, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1818, file: !354, line: 2311, baseType: !653, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1818, file: !354, line: 2312, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !354, line: 2277, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !354, line: 2315, baseType: !718, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1790, file: !354, line: 2316, baseType: !718, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1790, file: !354, line: 2317, baseType: !718, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1790, file: !354, line: 2318, baseType: !718, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1790, file: !354, line: 2319, baseType: !718, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1790, file: !354, line: 2320, baseType: !718, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1790, file: !354, line: 2321, baseType: !718, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1790, file: !354, line: 2322, baseType: !718, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1790, file: !354, line: 2324, baseType: !1834, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !354, line: 2324, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !354, line: 3395, baseType: !1837, size: 320)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !354, line: 1469, size: 320, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !354, line: 1470, baseType: !756, size: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1837, file: !354, line: 1471, baseType: !718, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1837, file: !354, line: 1472, baseType: !718, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !720, file: !354, line: 3396, baseType: !1843, size: 320)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !354, line: 1482, size: 320, elements: !1844)
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1843, file: !354, line: 1483, baseType: !756, size: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1843, file: !354, line: 1484, baseType: !648, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1843, file: !354, line: 1485, baseType: !1034, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !720, file: !354, line: 3397, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !354, line: 1829, size: 384, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1849, file: !354, line: 1830, baseType: !756, size: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1849, file: !354, line: 1831, baseType: !840, size: 32, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1849, file: !354, line: 1832, baseType: !718, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1849, file: !354, line: 1835, baseType: !1034, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !720, file: !354, line: 3398, baseType: !1856, size: 704)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !354, line: 1898, size: 704, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1867}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1856, file: !354, line: 1899, baseType: !756, size: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1856, file: !354, line: 1902, baseType: !718, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1856, file: !354, line: 1905, baseType: !980, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1856, file: !354, line: 1908, baseType: !7, size: 32, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1856, file: !354, line: 1911, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1407, line: 117, size: 128, elements: !1865)
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1864, file: !1407, line: 120, baseType: !1671, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1856, file: !354, line: 1914, baseType: !1022, size: 256, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !720, file: !354, line: 3399, baseType: !1869, size: 704)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !354, line: 2008, size: 704, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1869, file: !354, line: 2009, baseType: !756, size: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1869, file: !354, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1869, file: !354, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1869, file: !354, line: 2014, baseType: !840, size: 32, offset: 224)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1869, file: !354, line: 2016, baseType: !718, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1869, file: !354, line: 2017, baseType: !1588, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1869, file: !354, line: 2019, baseType: !718, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1869, file: !354, line: 2020, baseType: !718, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1869, file: !354, line: 2021, baseType: !718, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1869, file: !354, line: 2022, baseType: !718, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1869, file: !354, line: 2023, baseType: !718, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !720, file: !354, line: 3400, baseType: !1883, size: 832)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !354, line: 2430, size: 832, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1883, file: !354, line: 2431, baseType: !756, size: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1883, file: !354, line: 2433, baseType: !718, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1883, file: !354, line: 2434, baseType: !718, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1883, file: !354, line: 2435, baseType: !718, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1883, file: !354, line: 2436, baseType: !718, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1883, file: !354, line: 2437, baseType: !1588, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1883, file: !354, line: 2438, baseType: !718, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1883, file: !354, line: 2440, baseType: !718, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1883, file: !354, line: 2441, baseType: !718, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1883, file: !354, line: 2443, baseType: !1895, size: 128, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !354, line: 182, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !354, line: 182, size: 128, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1896, file: !354, line: 182, baseType: !1593, size: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !720, file: !354, line: 3401, baseType: !1900, size: 320)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !354, line: 3327, size: 320, elements: !1901)
!1901 = !{!1902, !1903, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1900, file: !354, line: 3329, baseType: !756, size: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1900, file: !354, line: 3330, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !354, line: 3320, size: 192, elements: !1906)
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1905, file: !354, line: 3322, baseType: !1904, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1905, file: !354, line: 3323, baseType: !1904, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1905, file: !354, line: 3324, baseType: !718, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1900, file: !354, line: 3331, baseType: !1904, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !720, file: !354, line: 3402, baseType: !1912, size: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !354, line: 1540, size: 256, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1912, file: !354, line: 1541, baseType: !756, size: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1912, file: !354, line: 1542, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !354, line: 1538, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !354, line: 1538, size: 192, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1918, file: !354, line: 1538, baseType: !1921, size: 192)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !354, line: 1537, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !354, line: 1537, size: 192, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1922, file: !354, line: 1537, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1922, file: !354, line: 1537, baseType: !7, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1922, file: !354, line: 1537, baseType: !1927, size: 128, offset: 64)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1928, size: 128, elements: !814)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !354, line: 1535, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !354, line: 1532, size: 128, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1929, file: !354, line: 1533, baseType: !718, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1929, file: !354, line: 1534, baseType: !718, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !720, file: !354, line: 3403, baseType: !1934, size: 512)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !354, line: 1938, size: 512, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1945, !1946, !1947}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1934, file: !354, line: 1939, baseType: !756, size: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1934, file: !354, line: 1940, baseType: !840, size: 32, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1934, file: !354, line: 1941, baseType: !353, size: 32, offset: 224)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1934, file: !354, line: 1946, baseType: !1940, size: 32, offset: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !354, line: 1942, size: 32, elements: !1941)
!1941 = !{!1942, !1943, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1940, file: !354, line: 1943, baseType: !372, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1940, file: !354, line: 1944, baseType: !379, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1940, file: !354, line: 1945, baseType: !386, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1934, file: !354, line: 1950, baseType: !970, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1934, file: !354, line: 1951, baseType: !970, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1934, file: !354, line: 1953, baseType: !1034, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !720, file: !354, line: 3404, baseType: !1949, size: 1664)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !354, line: 3337, size: 1664, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1949, file: !354, line: 3338, baseType: !756, size: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1949, file: !354, line: 3341, baseType: !1953, size: 1472, offset: 192)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1954, line: 410, size: 1472, elements: !1955)
!1954 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1953, file: !1954, line: 412, baseType: !648, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1953, file: !1954, line: 413, baseType: !648, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1953, file: !1954, line: 414, baseType: !648, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1953, file: !1954, line: 415, baseType: !648, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1953, file: !1954, line: 416, baseType: !648, size: 32, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1953, file: !1954, line: 417, baseType: !648, size: 32, offset: 160)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1953, file: !1954, line: 418, baseType: !647, size: 8, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1953, file: !1954, line: 419, baseType: !647, size: 8, offset: 200)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1953, file: !1954, line: 420, baseType: !1965, size: 8, offset: 208)
!1965 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1953, file: !1954, line: 421, baseType: !1965, size: 8, offset: 216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1953, file: !1954, line: 422, baseType: !1965, size: 8, offset: 224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1953, file: !1954, line: 423, baseType: !1965, size: 8, offset: 232)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1953, file: !1954, line: 424, baseType: !1965, size: 8, offset: 240)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1953, file: !1954, line: 425, baseType: !1965, size: 8, offset: 248)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1953, file: !1954, line: 426, baseType: !1965, size: 8, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1953, file: !1954, line: 427, baseType: !1965, size: 8, offset: 264)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1953, file: !1954, line: 428, baseType: !1965, size: 8, offset: 272)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1953, file: !1954, line: 429, baseType: !1965, size: 8, offset: 280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1953, file: !1954, line: 430, baseType: !1965, size: 8, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1953, file: !1954, line: 431, baseType: !1965, size: 8, offset: 296)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1953, file: !1954, line: 432, baseType: !1965, size: 8, offset: 304)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1953, file: !1954, line: 433, baseType: !1965, size: 8, offset: 312)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1953, file: !1954, line: 434, baseType: !1965, size: 8, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1953, file: !1954, line: 435, baseType: !1965, size: 8, offset: 328)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1953, file: !1954, line: 436, baseType: !1965, size: 8, offset: 336)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1953, file: !1954, line: 437, baseType: !1965, size: 8, offset: 344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1953, file: !1954, line: 438, baseType: !1965, size: 8, offset: 352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1953, file: !1954, line: 439, baseType: !1965, size: 8, offset: 360)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1953, file: !1954, line: 440, baseType: !1965, size: 8, offset: 368)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1953, file: !1954, line: 441, baseType: !1965, size: 8, offset: 376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1953, file: !1954, line: 442, baseType: !1965, size: 8, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1953, file: !1954, line: 443, baseType: !1965, size: 8, offset: 392)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1953, file: !1954, line: 444, baseType: !1965, size: 8, offset: 400)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1953, file: !1954, line: 445, baseType: !1965, size: 8, offset: 408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1953, file: !1954, line: 446, baseType: !1965, size: 8, offset: 416)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1953, file: !1954, line: 447, baseType: !1965, size: 8, offset: 424)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1953, file: !1954, line: 448, baseType: !1965, size: 8, offset: 432)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1953, file: !1954, line: 449, baseType: !1965, size: 8, offset: 440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1953, file: !1954, line: 450, baseType: !1965, size: 8, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1953, file: !1954, line: 451, baseType: !1965, size: 8, offset: 456)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1953, file: !1954, line: 452, baseType: !1965, size: 8, offset: 464)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1953, file: !1954, line: 453, baseType: !1965, size: 8, offset: 472)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1953, file: !1954, line: 454, baseType: !1965, size: 8, offset: 480)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1953, file: !1954, line: 455, baseType: !1965, size: 8, offset: 488)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1953, file: !1954, line: 456, baseType: !1965, size: 8, offset: 496)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1953, file: !1954, line: 457, baseType: !1965, size: 8, offset: 504)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1953, file: !1954, line: 458, baseType: !1965, size: 8, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1953, file: !1954, line: 459, baseType: !1965, size: 8, offset: 520)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1953, file: !1954, line: 460, baseType: !1965, size: 8, offset: 528)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1953, file: !1954, line: 461, baseType: !1965, size: 8, offset: 536)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1953, file: !1954, line: 462, baseType: !1965, size: 8, offset: 544)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1953, file: !1954, line: 463, baseType: !1965, size: 8, offset: 552)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1953, file: !1954, line: 464, baseType: !1965, size: 8, offset: 560)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1953, file: !1954, line: 465, baseType: !1965, size: 8, offset: 568)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1953, file: !1954, line: 466, baseType: !1965, size: 8, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1953, file: !1954, line: 467, baseType: !1965, size: 8, offset: 584)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1953, file: !1954, line: 468, baseType: !1965, size: 8, offset: 592)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1953, file: !1954, line: 469, baseType: !1965, size: 8, offset: 600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1953, file: !1954, line: 470, baseType: !1965, size: 8, offset: 608)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1953, file: !1954, line: 471, baseType: !1965, size: 8, offset: 616)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1953, file: !1954, line: 472, baseType: !1965, size: 8, offset: 624)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1953, file: !1954, line: 473, baseType: !1965, size: 8, offset: 632)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1953, file: !1954, line: 474, baseType: !1965, size: 8, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1953, file: !1954, line: 475, baseType: !1965, size: 8, offset: 648)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1953, file: !1954, line: 476, baseType: !1965, size: 8, offset: 656)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1953, file: !1954, line: 477, baseType: !1965, size: 8, offset: 664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1953, file: !1954, line: 478, baseType: !1965, size: 8, offset: 672)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1953, file: !1954, line: 479, baseType: !1965, size: 8, offset: 680)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1953, file: !1954, line: 480, baseType: !1965, size: 8, offset: 688)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1953, file: !1954, line: 481, baseType: !1965, size: 8, offset: 696)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1953, file: !1954, line: 482, baseType: !1965, size: 8, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1953, file: !1954, line: 483, baseType: !1965, size: 8, offset: 712)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1953, file: !1954, line: 484, baseType: !1965, size: 8, offset: 720)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1953, file: !1954, line: 485, baseType: !1965, size: 8, offset: 728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1953, file: !1954, line: 486, baseType: !1965, size: 8, offset: 736)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1953, file: !1954, line: 487, baseType: !1965, size: 8, offset: 744)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1953, file: !1954, line: 488, baseType: !1965, size: 8, offset: 752)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1953, file: !1954, line: 489, baseType: !1965, size: 8, offset: 760)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1953, file: !1954, line: 490, baseType: !1965, size: 8, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1953, file: !1954, line: 491, baseType: !1965, size: 8, offset: 776)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1953, file: !1954, line: 492, baseType: !1965, size: 8, offset: 784)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1953, file: !1954, line: 493, baseType: !1965, size: 8, offset: 792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1953, file: !1954, line: 494, baseType: !1965, size: 8, offset: 800)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1953, file: !1954, line: 495, baseType: !1965, size: 8, offset: 808)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1953, file: !1954, line: 496, baseType: !1965, size: 8, offset: 816)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1953, file: !1954, line: 497, baseType: !1965, size: 8, offset: 824)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1953, file: !1954, line: 498, baseType: !1965, size: 8, offset: 832)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1953, file: !1954, line: 499, baseType: !1965, size: 8, offset: 840)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1953, file: !1954, line: 500, baseType: !1965, size: 8, offset: 848)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1953, file: !1954, line: 501, baseType: !1965, size: 8, offset: 856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1953, file: !1954, line: 502, baseType: !1965, size: 8, offset: 864)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1953, file: !1954, line: 503, baseType: !1965, size: 8, offset: 872)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1953, file: !1954, line: 504, baseType: !1965, size: 8, offset: 880)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1953, file: !1954, line: 505, baseType: !1965, size: 8, offset: 888)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1953, file: !1954, line: 506, baseType: !1965, size: 8, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1953, file: !1954, line: 507, baseType: !1965, size: 8, offset: 904)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1953, file: !1954, line: 508, baseType: !1965, size: 8, offset: 912)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1953, file: !1954, line: 509, baseType: !1965, size: 8, offset: 920)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1953, file: !1954, line: 510, baseType: !1965, size: 8, offset: 928)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1953, file: !1954, line: 511, baseType: !1965, size: 8, offset: 936)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1953, file: !1954, line: 512, baseType: !1965, size: 8, offset: 944)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1953, file: !1954, line: 513, baseType: !1965, size: 8, offset: 952)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1953, file: !1954, line: 514, baseType: !1965, size: 8, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1953, file: !1954, line: 515, baseType: !1965, size: 8, offset: 968)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1953, file: !1954, line: 516, baseType: !1965, size: 8, offset: 976)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1953, file: !1954, line: 517, baseType: !1965, size: 8, offset: 984)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1953, file: !1954, line: 518, baseType: !1965, size: 8, offset: 992)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1953, file: !1954, line: 519, baseType: !1965, size: 8, offset: 1000)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1953, file: !1954, line: 520, baseType: !1965, size: 8, offset: 1008)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1953, file: !1954, line: 521, baseType: !1965, size: 8, offset: 1016)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1953, file: !1954, line: 522, baseType: !1965, size: 8, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1953, file: !1954, line: 523, baseType: !1965, size: 8, offset: 1032)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1953, file: !1954, line: 524, baseType: !1965, size: 8, offset: 1040)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1953, file: !1954, line: 525, baseType: !1965, size: 8, offset: 1048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1953, file: !1954, line: 526, baseType: !1965, size: 8, offset: 1056)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1953, file: !1954, line: 527, baseType: !1965, size: 8, offset: 1064)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1953, file: !1954, line: 528, baseType: !1965, size: 8, offset: 1072)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1953, file: !1954, line: 529, baseType: !1965, size: 8, offset: 1080)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1953, file: !1954, line: 530, baseType: !1965, size: 8, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1953, file: !1954, line: 531, baseType: !1965, size: 8, offset: 1096)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1953, file: !1954, line: 532, baseType: !1965, size: 8, offset: 1104)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1953, file: !1954, line: 533, baseType: !1965, size: 8, offset: 1112)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1953, file: !1954, line: 534, baseType: !1965, size: 8, offset: 1120)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1953, file: !1954, line: 535, baseType: !1965, size: 8, offset: 1128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1953, file: !1954, line: 536, baseType: !1965, size: 8, offset: 1136)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1953, file: !1954, line: 537, baseType: !1965, size: 8, offset: 1144)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1953, file: !1954, line: 538, baseType: !1965, size: 8, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1953, file: !1954, line: 539, baseType: !1965, size: 8, offset: 1160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1953, file: !1954, line: 540, baseType: !1965, size: 8, offset: 1168)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1953, file: !1954, line: 541, baseType: !1965, size: 8, offset: 1176)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1953, file: !1954, line: 542, baseType: !1965, size: 8, offset: 1184)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1953, file: !1954, line: 543, baseType: !1965, size: 8, offset: 1192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1953, file: !1954, line: 544, baseType: !1965, size: 8, offset: 1200)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1953, file: !1954, line: 545, baseType: !1965, size: 8, offset: 1208)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1953, file: !1954, line: 546, baseType: !1965, size: 8, offset: 1216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1953, file: !1954, line: 547, baseType: !1965, size: 8, offset: 1224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1953, file: !1954, line: 548, baseType: !1965, size: 8, offset: 1232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1953, file: !1954, line: 549, baseType: !1965, size: 8, offset: 1240)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1953, file: !1954, line: 550, baseType: !1965, size: 8, offset: 1248)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1953, file: !1954, line: 551, baseType: !1965, size: 8, offset: 1256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1953, file: !1954, line: 552, baseType: !1965, size: 8, offset: 1264)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1953, file: !1954, line: 553, baseType: !1965, size: 8, offset: 1272)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1953, file: !1954, line: 554, baseType: !1965, size: 8, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1953, file: !1954, line: 555, baseType: !1965, size: 8, offset: 1288)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1953, file: !1954, line: 556, baseType: !1965, size: 8, offset: 1296)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1953, file: !1954, line: 557, baseType: !1965, size: 8, offset: 1304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1953, file: !1954, line: 558, baseType: !1965, size: 8, offset: 1312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1953, file: !1954, line: 559, baseType: !1965, size: 8, offset: 1320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1953, file: !1954, line: 560, baseType: !1965, size: 8, offset: 1328)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1953, file: !1954, line: 561, baseType: !1965, size: 8, offset: 1336)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1953, file: !1954, line: 562, baseType: !1965, size: 8, offset: 1344)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1953, file: !1954, line: 563, baseType: !1965, size: 8, offset: 1352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1953, file: !1954, line: 564, baseType: !1965, size: 8, offset: 1360)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1953, file: !1954, line: 565, baseType: !1965, size: 8, offset: 1368)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1953, file: !1954, line: 566, baseType: !1965, size: 8, offset: 1376)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1953, file: !1954, line: 567, baseType: !1965, size: 8, offset: 1384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1953, file: !1954, line: 568, baseType: !1965, size: 8, offset: 1392)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1953, file: !1954, line: 569, baseType: !1965, size: 8, offset: 1400)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1953, file: !1954, line: 570, baseType: !1965, size: 8, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1953, file: !1954, line: 571, baseType: !1965, size: 8, offset: 1416)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1953, file: !1954, line: 572, baseType: !1965, size: 8, offset: 1424)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1953, file: !1954, line: 573, baseType: !1965, size: 8, offset: 1432)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1953, file: !1954, line: 574, baseType: !1965, size: 8, offset: 1440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !720, file: !354, line: 3405, baseType: !2121, size: 384)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !354, line: 3352, size: 384, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2121, file: !354, line: 3353, baseType: !756, size: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2121, file: !354, line: 3356, baseType: !2125, size: 192, offset: 192)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1954, line: 578, size: 192, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2125, file: !1954, line: 580, baseType: !648, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2125, file: !1954, line: 581, baseType: !648, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2125, file: !1954, line: 582, baseType: !648, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2125, file: !1954, line: 583, baseType: !648, size: 32, offset: 96)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2125, file: !1954, line: 584, baseType: !647, size: 8, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2125, file: !1954, line: 585, baseType: !647, size: 8, offset: 136)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2125, file: !1954, line: 586, baseType: !647, size: 8, offset: 144)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2125, file: !1954, line: 587, baseType: !647, size: 8, offset: 152)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2125, file: !1954, line: 588, baseType: !647, size: 8, offset: 160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2125, file: !1954, line: 589, baseType: !647, size: 8, offset: 168)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2125, file: !1954, line: 590, baseType: !647, size: 8, offset: 176)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1011, line: 30, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !354, line: 1893, baseType: !1022)
!2144 = !{!0, !2145}
!2145 = !DIGlobalVariableExpression(var: !2146, expr: !DIExpression())
!2146 = distinct !DIGlobalVariable(name: "cfgcleanup_altered_bbs", scope: !2, file: !3, line: 57, type: !655, isLocal: false, isDefinition: true)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2147, file: !6, line: 158, baseType: !2150, size: 640)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2158, !2162, !2164, !2165, !2166, !2168, !2169, !2170, !2171, !2172}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !6, line: 117, baseType: !5, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2150, file: !6, line: 121, baseType: !653, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2150, file: !6, line: 125, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!647}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2150, file: !6, line: 130, baseType: !2159, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!7}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2150, file: !6, line: 133, baseType: !2163, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2150, file: !6, line: 136, baseType: !2163, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2150, file: !6, line: 139, baseType: !648, size: 32, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2150, file: !6, line: 143, baseType: !2167, size: 32, offset: 416)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2150, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2150, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2150, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2150, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2150, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2173 = !{i32 2, !"Dwarf Version", i32 4}
!2174 = !{i32 2, !"Debug Info Version", i32 3}
!2175 = !{i32 1, !"wchar_size", i32 4}
!2176 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2177 = distinct !DISubprogram(name: "vprintf", scope: !2178, file: !2178, line: 39, type: !2179, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!648, !2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2183, file: !3, baseType: !7, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2183, file: !3, baseType: !7, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2183, file: !3, baseType: !652, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2183, file: !3, baseType: !652, size: 64, offset: 128)
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2177, file: !2178, line: 39, type: !2181)
!2191 = !DILocalVariable(name: "__arg", arg: 2, scope: !2177, file: !2178, line: 39, type: !2182)
!2192 = !DILocation(line: 0, scope: !2177)
!2193 = !DILocation(line: 41, column: 20, scope: !2177)
!2194 = !DILocation(line: 41, column: 10, scope: !2177)
!2195 = !DILocation(line: 41, column: 3, scope: !2177)
!2196 = distinct !DISubprogram(name: "getchar", scope: !2178, file: !2178, line: 47, type: !2197, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!648}
!2199 = !{}
!2200 = !DILocation(line: 49, column: 16, scope: !2196)
!2201 = !DILocation(line: 49, column: 10, scope: !2196)
!2202 = !DILocation(line: 49, column: 3, scope: !2196)
!2203 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2178, file: !2178, line: 56, type: !2204, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!648, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2208, line: 7, baseType: !2209)
!2208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2210, line: 49, size: 1728, elements: !2211)
!2210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2227, !2229, !2230, !2231, !2234, !2236, !2237, !2238, !2241, !2243, !2246, !2249, !2250, !2251, !2252, !2253}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2209, file: !2210, line: 51, baseType: !648, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2209, file: !2210, line: 54, baseType: !650, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2209, file: !2210, line: 55, baseType: !650, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2209, file: !2210, line: 56, baseType: !650, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2209, file: !2210, line: 57, baseType: !650, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2209, file: !2210, line: 58, baseType: !650, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2209, file: !2210, line: 59, baseType: !650, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2209, file: !2210, line: 60, baseType: !650, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2209, file: !2210, line: 61, baseType: !650, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2209, file: !2210, line: 64, baseType: !650, size: 64, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2209, file: !2210, line: 65, baseType: !650, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2209, file: !2210, line: 66, baseType: !650, size: 64, offset: 704)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2209, file: !2210, line: 68, baseType: !2225, size: 64, offset: 768)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2210, line: 36, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2209, file: !2210, line: 70, baseType: !2228, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2209, file: !2210, line: 72, baseType: !648, size: 32, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2209, file: !2210, line: 73, baseType: !648, size: 32, offset: 928)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2209, file: !2210, line: 74, baseType: !2232, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2233, line: 152, baseType: !690)
!2233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2209, file: !2210, line: 77, baseType: !2235, size: 16, offset: 1024)
!2235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2209, file: !2210, line: 78, baseType: !1965, size: 8, offset: 1040)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2209, file: !2210, line: 79, baseType: !813, size: 8, offset: 1048)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2209, file: !2210, line: 81, baseType: !2239, size: 64, offset: 1088)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2210, line: 43, baseType: null)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2209, file: !2210, line: 89, baseType: !2242, size: 64, offset: 1152)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2233, line: 153, baseType: !690)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2209, file: !2210, line: 91, baseType: !2244, size: 64, offset: 1216)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2210, line: 37, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2209, file: !2210, line: 92, baseType: !2247, size: 64, offset: 1280)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2210, line: 38, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2209, file: !2210, line: 93, baseType: !2228, size: 64, offset: 1344)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2209, file: !2210, line: 94, baseType: !652, size: 64, offset: 1408)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2209, file: !2210, line: 95, baseType: !1126, size: 64, offset: 1472)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2209, file: !2210, line: 96, baseType: !648, size: 32, offset: 1536)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2209, file: !2210, line: 98, baseType: !2254, size: 160, offset: 1568)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 160, elements: !2255)
!2255 = !{!2256}
!2256 = !DISubrange(count: 20)
!2257 = !{!2258}
!2258 = !DILocalVariable(name: "__fp", arg: 1, scope: !2203, file: !2178, line: 56, type: !2206)
!2259 = !DILocation(line: 0, scope: !2203)
!2260 = !DILocation(line: 58, column: 10, scope: !2203)
!2261 = !DILocation(line: 58, column: 3, scope: !2203)
!2262 = distinct !DISubprogram(name: "getc_unlocked", scope: !2178, file: !2178, line: 66, type: !2204, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "__fp", arg: 1, scope: !2262, file: !2178, line: 66, type: !2206)
!2265 = !DILocation(line: 0, scope: !2262)
!2266 = !DILocation(line: 68, column: 10, scope: !2262)
!2267 = !DILocation(line: 68, column: 3, scope: !2262)
!2268 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2178, file: !2178, line: 73, type: !2197, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2269 = !DILocation(line: 75, column: 10, scope: !2268)
!2270 = !DILocation(line: 75, column: 3, scope: !2268)
!2271 = distinct !DISubprogram(name: "putchar", scope: !2178, file: !2178, line: 82, type: !2272, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!648, !648}
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "__c", arg: 1, scope: !2271, file: !2178, line: 82, type: !648)
!2276 = !DILocation(line: 0, scope: !2271)
!2277 = !DILocation(line: 84, column: 21, scope: !2271)
!2278 = !DILocation(line: 84, column: 10, scope: !2271)
!2279 = !DILocation(line: 84, column: 3, scope: !2271)
!2280 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2178, file: !2178, line: 91, type: !2281, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!648, !648, !2206}
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "__c", arg: 1, scope: !2280, file: !2178, line: 91, type: !648)
!2285 = !DILocalVariable(name: "__stream", arg: 2, scope: !2280, file: !2178, line: 91, type: !2206)
!2286 = !DILocation(line: 0, scope: !2280)
!2287 = !DILocation(line: 93, column: 10, scope: !2280)
!2288 = !DILocation(line: 93, column: 3, scope: !2280)
!2289 = distinct !DISubprogram(name: "putc_unlocked", scope: !2178, file: !2178, line: 101, type: !2281, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "__c", arg: 1, scope: !2289, file: !2178, line: 101, type: !648)
!2292 = !DILocalVariable(name: "__stream", arg: 2, scope: !2289, file: !2178, line: 101, type: !2206)
!2293 = !DILocation(line: 0, scope: !2289)
!2294 = !DILocation(line: 103, column: 10, scope: !2289)
!2295 = !DILocation(line: 103, column: 3, scope: !2289)
!2296 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2178, file: !2178, line: 108, type: !2272, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2297 = !{!2298}
!2298 = !DILocalVariable(name: "__c", arg: 1, scope: !2296, file: !2178, line: 108, type: !648)
!2299 = !DILocation(line: 0, scope: !2296)
!2300 = !DILocation(line: 110, column: 10, scope: !2296)
!2301 = !DILocation(line: 110, column: 3, scope: !2296)
!2302 = distinct !DISubprogram(name: "getline", scope: !2178, file: !2178, line: 118, type: !2303, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!2305, !649, !2306, !2206}
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2233, line: 193, baseType: !690)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2302, file: !2178, line: 118, type: !649)
!2309 = !DILocalVariable(name: "__n", arg: 2, scope: !2302, file: !2178, line: 118, type: !2306)
!2310 = !DILocalVariable(name: "__stream", arg: 3, scope: !2302, file: !2178, line: 118, type: !2206)
!2311 = !DILocation(line: 0, scope: !2302)
!2312 = !DILocation(line: 120, column: 10, scope: !2302)
!2313 = !DILocation(line: 120, column: 3, scope: !2302)
!2314 = distinct !DISubprogram(name: "feof_unlocked", scope: !2178, file: !2178, line: 128, type: !2204, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2315 = !{!2316}
!2316 = !DILocalVariable(name: "__stream", arg: 1, scope: !2314, file: !2178, line: 128, type: !2206)
!2317 = !DILocation(line: 0, scope: !2314)
!2318 = !DILocation(line: 130, column: 10, scope: !2314)
!2319 = !DILocation(line: 130, column: 3, scope: !2314)
!2320 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2178, file: !2178, line: 135, type: !2204, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2321)
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "__stream", arg: 1, scope: !2320, file: !2178, line: 135, type: !2206)
!2323 = !DILocation(line: 0, scope: !2320)
!2324 = !DILocation(line: 137, column: 10, scope: !2320)
!2325 = !DILocation(line: 137, column: 3, scope: !2320)
!2326 = distinct !DISubprogram(name: "tolower", scope: !2327, file: !2327, line: 207, type: !2272, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2328)
!2327 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2328 = !{!2329}
!2329 = !DILocalVariable(name: "__c", arg: 1, scope: !2326, file: !2327, line: 207, type: !648)
!2330 = !DILocation(line: 0, scope: !2326)
!2331 = !DILocation(line: 209, column: 22, scope: !2326)
!2332 = !DILocation(line: 209, column: 39, scope: !2326)
!2333 = !DILocation(line: 209, column: 38, scope: !2326)
!2334 = !DILocation(line: 209, column: 37, scope: !2326)
!2335 = !DILocation(line: 209, column: 10, scope: !2326)
!2336 = !DILocation(line: 209, column: 3, scope: !2326)
!2337 = distinct !DISubprogram(name: "toupper", scope: !2327, file: !2327, line: 213, type: !2272, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "__c", arg: 1, scope: !2337, file: !2327, line: 213, type: !648)
!2340 = !DILocation(line: 0, scope: !2337)
!2341 = !DILocation(line: 215, column: 22, scope: !2337)
!2342 = !DILocation(line: 215, column: 39, scope: !2337)
!2343 = !DILocation(line: 215, column: 38, scope: !2337)
!2344 = !DILocation(line: 215, column: 37, scope: !2337)
!2345 = !DILocation(line: 215, column: 10, scope: !2337)
!2346 = !DILocation(line: 215, column: 3, scope: !2337)
!2347 = distinct !DISubprogram(name: "atoi", scope: !2348, file: !2348, line: 361, type: !2349, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2348 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!648, !653}
!2351 = !{!2352}
!2352 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2347, file: !2348, line: 361, type: !653)
!2353 = !DILocation(line: 0, scope: !2347)
!2354 = !DILocation(line: 363, column: 16, scope: !2347)
!2355 = !DILocation(line: 363, column: 10, scope: !2347)
!2356 = !DILocation(line: 363, column: 3, scope: !2347)
!2357 = distinct !DISubprogram(name: "atol", scope: !2348, file: !2348, line: 366, type: !2358, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!690, !653}
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2357, file: !2348, line: 366, type: !653)
!2362 = !DILocation(line: 0, scope: !2357)
!2363 = !DILocation(line: 368, column: 10, scope: !2357)
!2364 = !DILocation(line: 368, column: 3, scope: !2357)
!2365 = distinct !DISubprogram(name: "atoll", scope: !2348, file: !2348, line: 373, type: !2366, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!2368, !653}
!2368 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2365, file: !2348, line: 373, type: !653)
!2371 = !DILocation(line: 0, scope: !2365)
!2372 = !DILocation(line: 375, column: 10, scope: !2365)
!2373 = !DILocation(line: 375, column: 3, scope: !2365)
!2374 = distinct !DISubprogram(name: "bsearch", scope: !2375, file: !2375, line: 20, type: !2376, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!652, !1340, !1340, !1126, !1126, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2348, line: 808, baseType: !1553)
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2380 = !DILocalVariable(name: "__key", arg: 1, scope: !2374, file: !2375, line: 20, type: !1340)
!2381 = !DILocalVariable(name: "__base", arg: 2, scope: !2374, file: !2375, line: 20, type: !1340)
!2382 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2374, file: !2375, line: 20, type: !1126)
!2383 = !DILocalVariable(name: "__size", arg: 4, scope: !2374, file: !2375, line: 20, type: !1126)
!2384 = !DILocalVariable(name: "__compar", arg: 5, scope: !2374, file: !2375, line: 21, type: !2378)
!2385 = !DILocalVariable(name: "__l", scope: !2374, file: !2375, line: 23, type: !1126)
!2386 = !DILocalVariable(name: "__u", scope: !2374, file: !2375, line: 23, type: !1126)
!2387 = !DILocalVariable(name: "__idx", scope: !2374, file: !2375, line: 23, type: !1126)
!2388 = !DILocalVariable(name: "__p", scope: !2374, file: !2375, line: 24, type: !1340)
!2389 = !DILocalVariable(name: "__comparison", scope: !2374, file: !2375, line: 25, type: !648)
!2390 = !DILocation(line: 0, scope: !2374)
!2391 = !DILocation(line: 29, column: 3, scope: !2374)
!2392 = !DILocation(line: 27, column: 7, scope: !2374)
!2393 = !DILocation(line: 29, column: 14, scope: !2374)
!2394 = !DILocation(line: 31, column: 20, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2374, file: !2375, line: 30, column: 5)
!2396 = !DILocation(line: 31, column: 27, scope: !2395)
!2397 = !DILocation(line: 32, column: 56, scope: !2395)
!2398 = !DILocation(line: 32, column: 47, scope: !2395)
!2399 = !DILocation(line: 33, column: 22, scope: !2395)
!2400 = !DILocation(line: 34, column: 24, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2395, file: !2375, line: 34, column: 11)
!2402 = !DILocation(line: 34, column: 11, scope: !2395)
!2403 = !DILocation(line: 36, column: 29, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !2375, line: 36, column: 16)
!2405 = !DILocation(line: 36, column: 16, scope: !2401)
!2406 = !DILocation(line: 37, column: 14, scope: !2404)
!2407 = distinct !{!2407, !2391, !2408}
!2408 = !DILocation(line: 40, column: 5, scope: !2374)
!2409 = !DILocation(line: 43, column: 1, scope: !2374)
!2410 = distinct !DISubprogram(name: "atof", scope: !2411, file: !2411, line: 25, type: !2412, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2414, !653}
!2414 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2415 = !{!2416}
!2416 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2410, file: !2411, line: 25, type: !653)
!2417 = !DILocation(line: 0, scope: !2410)
!2418 = !DILocation(line: 27, column: 10, scope: !2410)
!2419 = !DILocation(line: 27, column: 3, scope: !2410)
!2420 = distinct !DISubprogram(name: "strtoimax", scope: !2421, file: !2421, line: 324, type: !2422, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2421 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2424, !2181, !2427, !648}
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2425, line: 101, baseType: !2426)
!2425 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2233, line: 72, baseType: !690)
!2427 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!2428 = !{!2429, !2430, !2431}
!2429 = !DILocalVariable(name: "nptr", arg: 1, scope: !2420, file: !2421, line: 324, type: !2181)
!2430 = !DILocalVariable(name: "endptr", arg: 2, scope: !2420, file: !2421, line: 324, type: !2427)
!2431 = !DILocalVariable(name: "base", arg: 3, scope: !2420, file: !2421, line: 324, type: !648)
!2432 = !DILocation(line: 0, scope: !2420)
!2433 = !DILocation(line: 327, column: 10, scope: !2420)
!2434 = !DILocation(line: 327, column: 3, scope: !2420)
!2435 = distinct !DISubprogram(name: "strtoumax", scope: !2421, file: !2421, line: 336, type: !2436, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2438, !2181, !2427, !648}
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2425, line: 102, baseType: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2233, line: 73, baseType: !673)
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "nptr", arg: 1, scope: !2435, file: !2421, line: 336, type: !2181)
!2442 = !DILocalVariable(name: "endptr", arg: 2, scope: !2435, file: !2421, line: 336, type: !2427)
!2443 = !DILocalVariable(name: "base", arg: 3, scope: !2435, file: !2421, line: 336, type: !648)
!2444 = !DILocation(line: 0, scope: !2435)
!2445 = !DILocation(line: 339, column: 10, scope: !2435)
!2446 = !DILocation(line: 339, column: 3, scope: !2435)
!2447 = distinct !DISubprogram(name: "wcstoimax", scope: !2421, file: !2421, line: 348, type: !2448, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2424, !2450, !2454, !648}
!2450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2451)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2421, line: 34, baseType: !648)
!2454 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2455)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2457 = !{!2458, !2459, !2460}
!2458 = !DILocalVariable(name: "nptr", arg: 1, scope: !2447, file: !2421, line: 348, type: !2450)
!2459 = !DILocalVariable(name: "endptr", arg: 2, scope: !2447, file: !2421, line: 348, type: !2454)
!2460 = !DILocalVariable(name: "base", arg: 3, scope: !2447, file: !2421, line: 348, type: !648)
!2461 = !DILocation(line: 0, scope: !2447)
!2462 = !DILocation(line: 351, column: 10, scope: !2447)
!2463 = !DILocation(line: 351, column: 3, scope: !2447)
!2464 = distinct !DISubprogram(name: "wcstoumax", scope: !2421, file: !2421, line: 362, type: !2465, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2438, !2450, !2454, !648}
!2467 = !{!2468, !2469, !2470}
!2468 = !DILocalVariable(name: "nptr", arg: 1, scope: !2464, file: !2421, line: 362, type: !2450)
!2469 = !DILocalVariable(name: "endptr", arg: 2, scope: !2464, file: !2421, line: 362, type: !2454)
!2470 = !DILocalVariable(name: "base", arg: 3, scope: !2464, file: !2421, line: 362, type: !648)
!2471 = !DILocation(line: 0, scope: !2464)
!2472 = !DILocation(line: 365, column: 10, scope: !2464)
!2473 = !DILocation(line: 365, column: 3, scope: !2464)
!2474 = distinct !DISubprogram(name: "stat", scope: !2475, file: !2475, line: 453, type: !2476, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2513)
!2475 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!648, !653, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2480, line: 46, size: 1152, elements: !2481)
!2480 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2481 = !{!2482, !2484, !2486, !2488, !2490, !2492, !2494, !2495, !2496, !2497, !2499, !2501, !2509, !2510, !2511}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2479, file: !2480, line: 48, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2233, line: 145, baseType: !673)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2479, file: !2480, line: 53, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2233, line: 148, baseType: !673)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2479, file: !2480, line: 61, baseType: !2487, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2233, line: 151, baseType: !673)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2479, file: !2480, line: 62, baseType: !2489, size: 32, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2233, line: 150, baseType: !7)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2479, file: !2480, line: 64, baseType: !2491, size: 32, offset: 224)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2233, line: 146, baseType: !7)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2479, file: !2480, line: 65, baseType: !2493, size: 32, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2233, line: 147, baseType: !7)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2479, file: !2480, line: 67, baseType: !648, size: 32, offset: 288)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2479, file: !2480, line: 69, baseType: !2483, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2479, file: !2480, line: 74, baseType: !2232, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2479, file: !2480, line: 78, baseType: !2498, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2233, line: 174, baseType: !690)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2479, file: !2480, line: 80, baseType: !2500, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2233, line: 179, baseType: !690)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2479, file: !2480, line: 91, baseType: !2502, size: 128, offset: 576)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2503, line: 10, size: 128, elements: !2504)
!2503 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2504 = !{!2505, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2502, file: !2503, line: 12, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2233, line: 160, baseType: !690)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2502, file: !2503, line: 16, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2233, line: 196, baseType: !690)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2479, file: !2480, line: 92, baseType: !2502, size: 128, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2479, file: !2480, line: 93, baseType: !2502, size: 128, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2479, file: !2480, line: 106, baseType: !2512, size: 192, offset: 960)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, size: 192, elements: !789)
!2513 = !{!2514, !2515}
!2514 = !DILocalVariable(name: "__path", arg: 1, scope: !2474, file: !2475, line: 453, type: !653)
!2515 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2474, file: !2475, line: 453, type: !2478)
!2516 = !DILocation(line: 0, scope: !2474)
!2517 = !DILocation(line: 455, column: 10, scope: !2474)
!2518 = !DILocation(line: 455, column: 3, scope: !2474)
!2519 = distinct !DISubprogram(name: "lstat", scope: !2475, file: !2475, line: 460, type: !2476, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "__path", arg: 1, scope: !2519, file: !2475, line: 460, type: !653)
!2522 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2519, file: !2475, line: 460, type: !2478)
!2523 = !DILocation(line: 0, scope: !2519)
!2524 = !DILocation(line: 462, column: 10, scope: !2519)
!2525 = !DILocation(line: 462, column: 3, scope: !2519)
!2526 = distinct !DISubprogram(name: "fstat", scope: !2475, file: !2475, line: 467, type: !2527, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!648, !648, !2478}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "__fd", arg: 1, scope: !2526, file: !2475, line: 467, type: !648)
!2531 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2526, file: !2475, line: 467, type: !2478)
!2532 = !DILocation(line: 0, scope: !2526)
!2533 = !DILocation(line: 469, column: 10, scope: !2526)
!2534 = !DILocation(line: 469, column: 3, scope: !2526)
!2535 = distinct !DISubprogram(name: "fstatat", scope: !2475, file: !2475, line: 474, type: !2536, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!648, !648, !653, !2478, !648}
!2538 = !{!2539, !2540, !2541, !2542}
!2539 = !DILocalVariable(name: "__fd", arg: 1, scope: !2535, file: !2475, line: 474, type: !648)
!2540 = !DILocalVariable(name: "__filename", arg: 2, scope: !2535, file: !2475, line: 474, type: !653)
!2541 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2535, file: !2475, line: 474, type: !2478)
!2542 = !DILocalVariable(name: "__flag", arg: 4, scope: !2535, file: !2475, line: 474, type: !648)
!2543 = !DILocation(line: 0, scope: !2535)
!2544 = !DILocation(line: 477, column: 10, scope: !2535)
!2545 = !DILocation(line: 477, column: 3, scope: !2535)
!2546 = distinct !DISubprogram(name: "mknod", scope: !2475, file: !2475, line: 483, type: !2547, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!648, !653, !2489, !2483}
!2549 = !{!2550, !2551, !2552}
!2550 = !DILocalVariable(name: "__path", arg: 1, scope: !2546, file: !2475, line: 483, type: !653)
!2551 = !DILocalVariable(name: "__mode", arg: 2, scope: !2546, file: !2475, line: 483, type: !2489)
!2552 = !DILocalVariable(name: "__dev", arg: 3, scope: !2546, file: !2475, line: 483, type: !2483)
!2553 = !DILocation(line: 0, scope: !2546)
!2554 = !DILocation(line: 485, column: 10, scope: !2546)
!2555 = !DILocation(line: 485, column: 3, scope: !2546)
!2556 = distinct !DISubprogram(name: "mknodat", scope: !2475, file: !2475, line: 491, type: !2557, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!648, !648, !653, !2489, !2483}
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "__fd", arg: 1, scope: !2556, file: !2475, line: 491, type: !648)
!2561 = !DILocalVariable(name: "__path", arg: 2, scope: !2556, file: !2475, line: 491, type: !653)
!2562 = !DILocalVariable(name: "__mode", arg: 3, scope: !2556, file: !2475, line: 491, type: !2489)
!2563 = !DILocalVariable(name: "__dev", arg: 4, scope: !2556, file: !2475, line: 491, type: !2483)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 494, column: 10, scope: !2556)
!2566 = !DILocation(line: 494, column: 3, scope: !2556)
!2567 = distinct !DISubprogram(name: "stat64", scope: !2475, file: !2475, line: 502, type: !2568, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!648, !653, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2480, line: 119, size: 1152, elements: !2572)
!2572 = !{!2573, !2574, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2586, !2587, !2588, !2589}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2571, file: !2480, line: 121, baseType: !2483, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2571, file: !2480, line: 123, baseType: !2575, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2233, line: 149, baseType: !673)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2571, file: !2480, line: 124, baseType: !2487, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2571, file: !2480, line: 125, baseType: !2489, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2571, file: !2480, line: 132, baseType: !2491, size: 32, offset: 224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2571, file: !2480, line: 133, baseType: !2493, size: 32, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2571, file: !2480, line: 135, baseType: !648, size: 32, offset: 288)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2571, file: !2480, line: 136, baseType: !2483, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2571, file: !2480, line: 137, baseType: !2232, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2571, file: !2480, line: 143, baseType: !2498, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2571, file: !2480, line: 144, baseType: !2585, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2233, line: 180, baseType: !690)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2571, file: !2480, line: 152, baseType: !2502, size: 128, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2571, file: !2480, line: 153, baseType: !2502, size: 128, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2571, file: !2480, line: 154, baseType: !2502, size: 128, offset: 832)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2571, file: !2480, line: 164, baseType: !2512, size: 192, offset: 960)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "__path", arg: 1, scope: !2567, file: !2475, line: 502, type: !653)
!2592 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2567, file: !2475, line: 502, type: !2570)
!2593 = !DILocation(line: 0, scope: !2567)
!2594 = !DILocation(line: 504, column: 10, scope: !2567)
!2595 = !DILocation(line: 504, column: 3, scope: !2567)
!2596 = distinct !DISubprogram(name: "lstat64", scope: !2475, file: !2475, line: 509, type: !2568, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "__path", arg: 1, scope: !2596, file: !2475, line: 509, type: !653)
!2599 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2596, file: !2475, line: 509, type: !2570)
!2600 = !DILocation(line: 0, scope: !2596)
!2601 = !DILocation(line: 511, column: 10, scope: !2596)
!2602 = !DILocation(line: 511, column: 3, scope: !2596)
!2603 = distinct !DISubprogram(name: "fstat64", scope: !2475, file: !2475, line: 516, type: !2604, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!648, !648, !2570}
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "__fd", arg: 1, scope: !2603, file: !2475, line: 516, type: !648)
!2608 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2603, file: !2475, line: 516, type: !2570)
!2609 = !DILocation(line: 0, scope: !2603)
!2610 = !DILocation(line: 518, column: 10, scope: !2603)
!2611 = !DILocation(line: 518, column: 3, scope: !2603)
!2612 = distinct !DISubprogram(name: "fstatat64", scope: !2475, file: !2475, line: 523, type: !2613, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!648, !648, !653, !2570, !648}
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DILocalVariable(name: "__fd", arg: 1, scope: !2612, file: !2475, line: 523, type: !648)
!2617 = !DILocalVariable(name: "__filename", arg: 2, scope: !2612, file: !2475, line: 523, type: !653)
!2618 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2612, file: !2475, line: 523, type: !2570)
!2619 = !DILocalVariable(name: "__flag", arg: 4, scope: !2612, file: !2475, line: 523, type: !648)
!2620 = !DILocation(line: 0, scope: !2612)
!2621 = !DILocation(line: 526, column: 10, scope: !2612)
!2622 = !DILocation(line: 526, column: 3, scope: !2612)
!2623 = distinct !DISubprogram(name: "cleanup_tree_cfg", scope: !3, file: !3, line: 758, type: !2156, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2624)
!2624 = !{!2625}
!2625 = !DILocalVariable(name: "changed", scope: !2623, file: !3, line: 760, type: !647)
!2626 = !DILocation(line: 760, column: 18, scope: !2623)
!2627 = !DILocation(line: 0, scope: !2623)
!2628 = !DILocation(line: 762, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 762, column: 7)
!2630 = !DILocation(line: 762, column: 21, scope: !2629)
!2631 = !DILocation(line: 763, column: 7, scope: !2629)
!2632 = !DILocation(line: 763, column: 10, scope: !2629)
!2633 = !DILocation(line: 762, column: 7, scope: !2623)
!2634 = !DILocation(line: 764, column: 5, scope: !2629)
!2635 = !DILocation(line: 766, column: 3, scope: !2623)
!2636 = distinct !DISubprogram(name: "cleanup_tree_cfg_noloop", scope: !3, file: !3, line: 690, type: !2156, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "changed", scope: !2636, file: !3, line: 692, type: !647)
!2639 = !DILocation(line: 694, column: 3, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 694, column: 3)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 694, column: 3)
!2642 = !DILocation(line: 694, column: 3, scope: !2641)
!2643 = !DILocation(line: 701, column: 8, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 701, column: 7)
!2645 = !DILocation(line: 701, column: 7, scope: !2636)
!2646 = !DILocation(line: 703, column: 17, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 702, column: 5)
!2648 = !DILocation(line: 0, scope: !2636)
!2649 = !DILocation(line: 704, column: 7, scope: !2647)
!2650 = !DILocation(line: 705, column: 5, scope: !2647)
!2651 = !DILocation(line: 714, column: 14, scope: !2636)
!2652 = !DILocation(line: 714, column: 11, scope: !2636)
!2653 = !DILocation(line: 716, column: 3, scope: !2636)
!2654 = !DILocation(line: 717, column: 3, scope: !2636)
!2655 = !DILocation(line: 723, column: 3, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 723, column: 3)
!2657 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 723, column: 3)
!2658 = !DILocation(line: 723, column: 3, scope: !2657)
!2659 = !DILocation(line: 725, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 725, column: 7)
!2661 = !DILocation(line: 725, column: 15, scope: !2660)
!2662 = !DILocation(line: 725, column: 18, scope: !2660)
!2663 = !DILocation(line: 725, column: 7, scope: !2636)
!2664 = !DILocation(line: 726, column: 5, scope: !2660)
!2665 = !DILocation(line: 728, column: 3, scope: !2636)
!2666 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !336, file: !336, line: 471, type: !2667, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!647, !7}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "flags", arg: 1, scope: !2666, file: !336, line: 471, type: !7)
!2671 = !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 473, column: 11, scope: !2666)
!2673 = !DILocation(line: 473, column: 26, scope: !2666)
!2674 = !DILocation(line: 473, column: 32, scope: !2666)
!2675 = !DILocation(line: 473, column: 41, scope: !2666)
!2676 = !DILocation(line: 473, column: 10, scope: !2666)
!2677 = !DILocation(line: 473, column: 3, scope: !2666)
!2678 = distinct !DISubprogram(name: "repair_loop_structures", scope: !3, file: !3, line: 734, type: !2679, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "changed_bbs", scope: !2678, file: !3, line: 736, type: !655)
!2683 = !DILocation(line: 736, column: 24, scope: !2678)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 737, column: 3, scope: !2678)
!2686 = !DILocation(line: 742, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 742, column: 7)
!2688 = !DILocation(line: 742, column: 7, scope: !2678)
!2689 = !DILocation(line: 743, column: 5, scope: !2687)
!2690 = !DILocation(line: 745, column: 3, scope: !2678)
!2691 = !DILocation(line: 750, column: 3, scope: !2678)
!2692 = !DILocation(line: 752, column: 3, scope: !2678)
!2693 = !DILocation(line: 753, column: 1, scope: !2678)
!2694 = distinct !DISubprogram(name: "gate_merge_phi", scope: !3, file: !3, line: 992, type: !2156, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2695 = !DILocation(line: 994, column: 3, scope: !2694)
!2696 = distinct !DISubprogram(name: "merge_phi_nodes", scope: !3, file: !3, line: 908, type: !2160, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2705, !2714, !2715, !2719, !2720, !2721}
!2698 = !DILocalVariable(name: "worklist", scope: !2696, file: !3, line: 910, type: !2140)
!2699 = !DILocalVariable(name: "current", scope: !2696, file: !3, line: 911, type: !2140)
!2700 = !DILocalVariable(name: "bb", scope: !2696, file: !3, line: 912, type: !1623)
!2701 = !DILocalVariable(name: "dest", scope: !2702, file: !3, line: 919, type: !1623)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 918, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 917, column: 3)
!2704 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 917, column: 3)
!2705 = !DILocalVariable(name: "gsi", scope: !2706, file: !3, line: 944, type: !2708)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 943, column: 2)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 935, column: 11)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !581, line: 265, baseType: !2709)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 254, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2709, file: !581, line: 257, baseType: !975, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2709, file: !581, line: 263, baseType: !970, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2709, file: !581, line: 264, baseType: !1623, size: 64, offset: 128)
!2714 = !DILocalVariable(name: "dest_idx", scope: !2706, file: !3, line: 945, type: !7)
!2715 = !DILocalVariable(name: "phi", scope: !2716, file: !3, line: 955, type: !980)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 954, column: 6)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 952, column: 4)
!2718 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 952, column: 4)
!2719 = !DILocalVariable(name: "result", scope: !2716, file: !3, line: 956, type: !718)
!2720 = !DILocalVariable(name: "imm_use", scope: !2716, file: !3, line: 957, type: !2141)
!2721 = !DILocalVariable(name: "use_stmt", scope: !2716, file: !3, line: 958, type: !980)
!2722 = !DILocation(line: 910, column: 27, scope: !2696)
!2723 = !DILocation(line: 0, scope: !2696)
!2724 = !DILocation(line: 914, column: 3, scope: !2696)
!2725 = !DILocation(line: 917, column: 3, scope: !2704)
!2726 = !DILocation(line: 0, scope: !2706)
!2727 = !DILocation(line: 0, scope: !2718)
!2728 = !DILocation(line: 0, scope: !2716)
!2729 = !DILocation(line: 917, column: 3, scope: !2703)
!2730 = !DILocation(line: 911, column: 16, scope: !2696)
!2731 = !DILocation(line: 0, scope: !2704)
!2732 = !DILocation(line: 981, column: 3, scope: !2696)
!2733 = !DILocation(line: 922, column: 12, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 922, column: 11)
!2735 = !DILocation(line: 922, column: 11, scope: !2702)
!2736 = !DILocation(line: 925, column: 14, scope: !2702)
!2737 = !DILocation(line: 0, scope: !2702)
!2738 = !DILocation(line: 929, column: 31, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 929, column: 11)
!2740 = !DILocation(line: 929, column: 11, scope: !2739)
!2741 = !DILocation(line: 932, column: 4, scope: !2739)
!2742 = !DILocation(line: 932, column: 7, scope: !2739)
!2743 = !DILocation(line: 929, column: 11, scope: !2702)
!2744 = !DILocation(line: 935, column: 12, scope: !2707)
!2745 = !DILocation(line: 935, column: 11, scope: !2702)
!2746 = !DILocation(line: 940, column: 12, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 936, column: 2)
!2748 = !DILocation(line: 940, column: 15, scope: !2747)
!2749 = !DILocation(line: 941, column: 2, scope: !2747)
!2750 = !DILocation(line: 944, column: 4, scope: !2706)
!2751 = !DILocation(line: 945, column: 28, scope: !2706)
!2752 = !DILocation(line: 945, column: 51, scope: !2706)
!2753 = !DILocation(line: 952, column: 15, scope: !2718)
!2754 = !DILocation(line: 0, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 966, column: 14)
!2756 = !DILocation(line: 952, column: 9, scope: !2718)
!2757 = !DILocation(line: 952, column: 37, scope: !2717)
!2758 = !DILocation(line: 952, column: 36, scope: !2717)
!2759 = !DILocation(line: 952, column: 4, scope: !2718)
!2760 = !DILocation(line: 955, column: 21, scope: !2716)
!2761 = !DILocation(line: 956, column: 22, scope: !2716)
!2762 = !DILocation(line: 957, column: 8, scope: !2716)
!2763 = !DILocation(line: 958, column: 8, scope: !2716)
!2764 = !DILocation(line: 962, column: 12, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 962, column: 12)
!2766 = !DILocation(line: 962, column: 12, scope: !2716)
!2767 = !DILocation(line: 966, column: 15, scope: !2755)
!2768 = !DILocation(line: 967, column: 5, scope: !2755)
!2769 = !DILocation(line: 967, column: 21, scope: !2755)
!2770 = !DILocation(line: 967, column: 8, scope: !2755)
!2771 = !DILocation(line: 967, column: 31, scope: !2755)
!2772 = !DILocation(line: 968, column: 5, scope: !2755)
!2773 = !DILocation(line: 968, column: 19, scope: !2755)
!2774 = !DILocation(line: 968, column: 8, scope: !2755)
!2775 = !DILocation(line: 968, column: 29, scope: !2755)
!2776 = !DILocation(line: 969, column: 5, scope: !2755)
!2777 = !DILocation(line: 969, column: 28, scope: !2755)
!2778 = !DILocation(line: 969, column: 8, scope: !2755)
!2779 = !DILocation(line: 969, column: 48, scope: !2755)
!2780 = !DILocation(line: 966, column: 14, scope: !2716)
!2781 = !DILocation(line: 971, column: 6, scope: !2717)
!2782 = !DILocation(line: 953, column: 9, scope: !2717)
!2783 = !DILocation(line: 952, column: 4, scope: !2717)
!2784 = distinct !{!2784, !2759, !2785}
!2785 = !DILocation(line: 971, column: 6, scope: !2718)
!2786 = !DILocation(line: 975, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 975, column: 8)
!2788 = !DILocation(line: 975, column: 8, scope: !2706)
!2789 = !DILocation(line: 976, column: 14, scope: !2787)
!2790 = !DILocation(line: 976, column: 17, scope: !2787)
!2791 = !DILocation(line: 976, column: 6, scope: !2787)
!2792 = !DILocation(line: 977, column: 2, scope: !2707)
!2793 = !DILocation(line: 0, scope: !2703)
!2794 = distinct !{!2794, !2725, !2795}
!2795 = !DILocation(line: 978, column: 5, scope: !2704)
!2796 = !DILocation(line: 981, column: 18, scope: !2696)
!2797 = !DILocation(line: 983, column: 13, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 982, column: 5)
!2799 = !DILocation(line: 983, column: 12, scope: !2798)
!2800 = !DILocation(line: 984, column: 7, scope: !2798)
!2801 = distinct !{!2801, !2732, !2802}
!2802 = !DILocation(line: 985, column: 5, scope: !2696)
!2803 = !DILocation(line: 987, column: 3, scope: !2696)
!2804 = !DILocation(line: 988, column: 3, scope: !2696)
!2805 = distinct !DISubprogram(name: "cleanup_tree_cfg_1", scope: !3, file: !3, line: 635, type: !2156, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2806 = !{!2807, !2808, !2809, !2810}
!2807 = !DILocalVariable(name: "retval", scope: !2805, file: !3, line: 637, type: !647)
!2808 = !DILocalVariable(name: "bb", scope: !2805, file: !3, line: 638, type: !1623)
!2809 = !DILocalVariable(name: "i", scope: !2805, file: !3, line: 639, type: !7)
!2810 = !DILocalVariable(name: "n", scope: !2805, file: !3, line: 639, type: !7)
!2811 = !DILocation(line: 0, scope: !2805)
!2812 = !DILocation(line: 641, column: 13, scope: !2805)
!2813 = !DILocation(line: 644, column: 28, scope: !2805)
!2814 = !DILocation(line: 644, column: 26, scope: !2805)
!2815 = !DILocation(line: 649, column: 3, scope: !2805)
!2816 = !DILocation(line: 653, column: 7, scope: !2805)
!2817 = !DILocation(line: 654, column: 8, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 654, column: 3)
!2819 = !DILocation(line: 0, scope: !2818)
!2820 = !DILocation(line: 654, column: 32, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 654, column: 3)
!2822 = !DILocation(line: 654, column: 3, scope: !2818)
!2823 = !DILocation(line: 662, column: 3, scope: !2805)
!2824 = !DILocation(line: 656, column: 12, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 655, column: 5)
!2826 = !DILocation(line: 657, column: 11, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 657, column: 11)
!2828 = !DILocation(line: 657, column: 11, scope: !2825)
!2829 = !DILocation(line: 658, column: 12, scope: !2827)
!2830 = !DILocation(line: 658, column: 9, scope: !2827)
!2831 = !DILocation(line: 658, column: 2, scope: !2827)
!2832 = !DILocation(line: 654, column: 38, scope: !2821)
!2833 = !DILocation(line: 654, column: 3, scope: !2821)
!2834 = distinct !{!2834, !2822, !2835}
!2835 = !DILocation(line: 659, column: 5, scope: !2818)
!2836 = !DILocation(line: 662, column: 11, scope: !2805)
!2837 = !DILocation(line: 664, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 663, column: 5)
!2839 = !DILocation(line: 665, column: 25, scope: !2838)
!2840 = !DILocation(line: 665, column: 7, scope: !2838)
!2841 = !DILocation(line: 666, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 666, column: 11)
!2843 = !DILocation(line: 666, column: 11, scope: !2838)
!2844 = distinct !{!2844, !2823, !2845}
!2845 = !DILocation(line: 678, column: 5, scope: !2805)
!2846 = !DILocation(line: 669, column: 12, scope: !2838)
!2847 = !DILocation(line: 670, column: 12, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 670, column: 11)
!2849 = !DILocation(line: 670, column: 11, scope: !2838)
!2850 = !DILocation(line: 673, column: 17, scope: !2838)
!2851 = !DILocation(line: 673, column: 14, scope: !2838)
!2852 = !DILocation(line: 677, column: 17, scope: !2838)
!2853 = !DILocation(line: 677, column: 14, scope: !2838)
!2854 = !DILocation(line: 680, column: 3, scope: !2805)
!2855 = !DILocation(line: 681, column: 3, scope: !2805)
!2856 = !DILocation(line: 682, column: 3, scope: !2805)
!2857 = distinct !DISubprogram(name: "loops_state_set", scope: !336, file: !336, line: 479, type: !2858, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !7}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "flags", arg: 1, scope: !2857, file: !336, line: 479, type: !7)
!2862 = !DILocation(line: 0, scope: !2857)
!2863 = !DILocation(line: 481, column: 3, scope: !2857)
!2864 = !DILocation(line: 481, column: 18, scope: !2857)
!2865 = !DILocation(line: 481, column: 24, scope: !2857)
!2866 = !DILocation(line: 482, column: 1, scope: !2857)
!2867 = distinct !DISubprogram(name: "split_bbs_on_noreturn_calls", scope: !3, file: !3, line: 538, type: !2156, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2868)
!2868 = !{!2869, !2870, !2871}
!2869 = !DILocalVariable(name: "changed", scope: !2867, file: !3, line: 540, type: !647)
!2870 = !DILocalVariable(name: "stmt", scope: !2867, file: !3, line: 541, type: !980)
!2871 = !DILocalVariable(name: "bb", scope: !2867, file: !3, line: 542, type: !1623)
!2872 = !DILocation(line: 0, scope: !2867)
!2873 = !DILocation(line: 545, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 545, column: 7)
!2875 = !DILocation(line: 545, column: 13, scope: !2874)
!2876 = !DILocation(line: 545, column: 7, scope: !2867)
!2877 = !DILocation(line: 546, column: 5, scope: !2874)
!2878 = !DILocation(line: 546, column: 12, scope: !2874)
!2879 = !DILocation(line: 548, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 547, column: 7)
!2881 = !DILocation(line: 549, column: 7, scope: !2880)
!2882 = !DILocation(line: 552, column: 9, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 552, column: 6)
!2884 = !DILocation(line: 553, column: 6, scope: !2883)
!2885 = !DILocation(line: 553, column: 13, scope: !2883)
!2886 = !DILocation(line: 553, column: 19, scope: !2883)
!2887 = !DILocation(line: 554, column: 6, scope: !2883)
!2888 = !DILocation(line: 554, column: 22, scope: !2883)
!2889 = !DILocation(line: 554, column: 19, scope: !2883)
!2890 = !DILocation(line: 555, column: 6, scope: !2883)
!2891 = !DILocation(line: 555, column: 9, scope: !2883)
!2892 = !DILocation(line: 555, column: 33, scope: !2883)
!2893 = !DILocation(line: 556, column: 6, scope: !2883)
!2894 = !DILocation(line: 556, column: 9, scope: !2883)
!2895 = !DILocation(line: 556, column: 24, scope: !2883)
!2896 = !DILocation(line: 557, column: 6, scope: !2883)
!2897 = !DILocation(line: 557, column: 10, scope: !2883)
!2898 = !DILocation(line: 552, column: 6, scope: !2880)
!2899 = !DILocation(line: 558, column: 4, scope: !2883)
!2900 = distinct !{!2900, !2877, !2901}
!2901 = !DILocation(line: 563, column: 7, scope: !2874)
!2902 = !DILocation(line: 561, column: 19, scope: !2880)
!2903 = !DILocation(line: 561, column: 2, scope: !2880)
!2904 = !DILocation(line: 562, column: 28, scope: !2880)
!2905 = !DILocation(line: 562, column: 2, scope: !2880)
!2906 = !DILocation(line: 565, column: 3, scope: !2867)
!2907 = !DILocation(line: 540, column: 8, scope: !2867)
!2908 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !325, file: !325, line: 281, type: !2909, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2913)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!1623, !2911, !7}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!2913 = !{!2914, !2915}
!2914 = !DILocalVariable(name: "vec_", arg: 1, scope: !2908, file: !325, line: 281, type: !2911)
!2915 = !DILocalVariable(name: "ix_", arg: 2, scope: !2908, file: !325, line: 281, type: !7)
!2916 = !DILocation(line: 0, scope: !2908)
!2917 = !DILocation(line: 281, column: 1, scope: !2908)
!2918 = distinct !DISubprogram(name: "cleanup_tree_cfg_bb", scope: !3, file: !3, line: 602, type: !2919, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!647, !1623}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "bb", arg: 1, scope: !2918, file: !3, line: 602, type: !1623)
!2923 = !DILocalVariable(name: "retval", scope: !2918, file: !3, line: 604, type: !647)
!2924 = !DILocation(line: 0, scope: !2918)
!2925 = !DILocation(line: 606, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 606, column: 7)
!2927 = !DILocation(line: 606, column: 7, scope: !2918)
!2928 = !DILocation(line: 609, column: 12, scope: !2918)
!2929 = !DILocation(line: 614, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 614, column: 7)
!2931 = !DILocation(line: 614, column: 16, scope: !2930)
!2932 = !DILocation(line: 615, column: 7, scope: !2930)
!2933 = !DILocation(line: 615, column: 10, scope: !2930)
!2934 = !DILocation(line: 616, column: 7, scope: !2930)
!2935 = !DILocation(line: 616, column: 10, scope: !2930)
!2936 = !DILocation(line: 614, column: 7, scope: !2918)
!2937 = !DILocation(line: 622, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 622, column: 7)
!2939 = !DILocation(line: 623, column: 7, scope: !2938)
!2940 = !DILocation(line: 623, column: 34, scope: !2938)
!2941 = !DILocation(line: 623, column: 10, scope: !2938)
!2942 = !DILocation(line: 622, column: 7, scope: !2918)
!2943 = !DILocation(line: 625, column: 25, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 624, column: 5)
!2945 = !DILocation(line: 625, column: 7, scope: !2944)
!2946 = !DILocation(line: 626, column: 7, scope: !2944)
!2947 = !DILocation(line: 630, column: 1, scope: !2918)
!2948 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !581, file: !581, line: 33, type: !2949, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!7, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "vec_", arg: 1, scope: !2948, file: !581, line: 33, type: !2951)
!2955 = !DILocation(line: 0, scope: !2948)
!2956 = !DILocation(line: 33, column: 1, scope: !2948)
!2957 = distinct !DISubprogram(name: "VEC_gimple_base_pop", scope: !581, file: !581, line: 33, type: !2958, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2961)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!980, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "vec_", arg: 1, scope: !2957, file: !581, line: 33, type: !2960)
!2963 = !DILocalVariable(name: "obj_", scope: !2957, file: !581, line: 33, type: !980)
!2964 = !DILocation(line: 0, scope: !2957)
!2965 = !DILocation(line: 33, column: 1, scope: !2957)
!2966 = distinct !DISubprogram(name: "gimple_bb", scope: !581, file: !581, line: 1112, type: !2967, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!944, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !656, line: 60, baseType: !2138)
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "g", arg: 1, scope: !2966, file: !581, line: 1112, type: !2969)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 1114, column: 20, scope: !2966)
!2974 = !DILocation(line: 1114, column: 3, scope: !2966)
!2975 = distinct !DISubprogram(name: "gimple_call_noreturn_p", scope: !581, file: !581, line: 2178, type: !2976, scopeLine: 2179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!647, !980}
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "s", arg: 1, scope: !2975, file: !581, line: 2178, type: !980)
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocation(line: 2181, column: 11, scope: !2975)
!2982 = !DILocation(line: 2181, column: 10, scope: !2975)
!2983 = !DILocation(line: 2181, column: 3, scope: !2975)
!2984 = distinct !DISubprogram(name: "remove_fallthru_edge", scope: !3, file: !3, line: 62, type: !2985, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!647, !948}
!2987 = !{!2988, !2989, !2996}
!2988 = !DILocalVariable(name: "ev", arg: 1, scope: !2984, file: !3, line: 62, type: !948)
!2989 = !DILocalVariable(name: "ei", scope: !2984, file: !3, line: 64, type: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2991, file: !325, line: 680, baseType: !7, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2991, file: !325, line: 681, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!2996 = !DILocalVariable(name: "e", scope: !2984, file: !3, line: 65, type: !960)
!2997 = !DILocation(line: 0, scope: !2984)
!2998 = !DILocation(line: 64, column: 3, scope: !2984)
!2999 = !DILocation(line: 65, column: 3, scope: !2984)
!3000 = !DILocation(line: 67, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 67, column: 3)
!3002 = !DILocation(line: 0, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 67, column: 3)
!3004 = !DILocation(line: 67, column: 3, scope: !3003)
!3005 = !DILocation(line: 68, column: 10, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 68, column: 9)
!3007 = !DILocation(line: 68, column: 13, scope: !3006)
!3008 = !DILocation(line: 68, column: 19, scope: !3006)
!3009 = !DILocation(line: 68, column: 36, scope: !3006)
!3010 = !DILocation(line: 68, column: 9, scope: !3003)
!3011 = !DILocation(line: 70, column: 2, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 69, column: 7)
!3013 = !DILocation(line: 71, column: 2, scope: !3012)
!3014 = distinct !{!3014, !3000, !3015}
!3015 = !DILocation(line: 72, column: 7, scope: !3001)
!3016 = !DILocation(line: 74, column: 1, scope: !2984)
!3017 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !3018, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!2990, !2995}
!3020 = !{!3021, !3022}
!3021 = !DILocalVariable(name: "ev", arg: 1, scope: !3017, file: !325, line: 696, type: !2995)
!3022 = !DILocalVariable(name: "i", scope: !3017, file: !325, line: 698, type: !2990)
!3023 = !DILocation(line: 0, scope: !3017)
!3024 = !DILocation(line: 700, column: 5, scope: !3017)
!3025 = !DILocation(line: 700, column: 11, scope: !3017)
!3026 = !DILocation(line: 701, column: 5, scope: !3017)
!3027 = !DILocation(line: 701, column: 15, scope: !3017)
!3028 = !DILocation(line: 703, column: 3, scope: !3017)
!3029 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !3030, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!647, !2990, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "ei", arg: 1, scope: !3029, file: !325, line: 771, type: !2990)
!3035 = !DILocalVariable(name: "p", arg: 2, scope: !3029, file: !325, line: 771, type: !3032)
!3036 = !DILocation(line: 0, scope: !3029)
!3037 = !DILocation(line: 773, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !325, line: 773, column: 7)
!3039 = !DILocation(line: 773, column: 7, scope: !3029)
!3040 = !DILocation(line: 775, column: 12, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !325, line: 774, column: 5)
!3042 = !DILocation(line: 776, column: 7, scope: !3041)
!3043 = !DILocation(line: 781, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3038, file: !325, line: 779, column: 5)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 783, column: 1, scope: !3029)
!3047 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !3048, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3051)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!3051 = !{!3052}
!3052 = !DILocalVariable(name: "i", arg: 1, scope: !3047, file: !325, line: 736, type: !3050)
!3053 = !DILocation(line: 0, scope: !3047)
!3054 = !DILocation(line: 738, column: 3, scope: !3047)
!3055 = !DILocation(line: 739, column: 11, scope: !3047)
!3056 = !DILocation(line: 740, column: 1, scope: !3047)
!3057 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !3058, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!647, !2990}
!3060 = !{!3061}
!3061 = !DILocalVariable(name: "i", arg: 1, scope: !3057, file: !325, line: 721, type: !2990)
!3062 = !DILocation(line: 723, column: 22, scope: !3057)
!3063 = !DILocation(line: 723, column: 19, scope: !3057)
!3064 = !DILocation(line: 723, column: 10, scope: !3057)
!3065 = !DILocation(line: 723, column: 3, scope: !3057)
!3066 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !3067, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!960, !2990}
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "i", arg: 1, scope: !3066, file: !325, line: 752, type: !2990)
!3071 = !DILocation(line: 754, column: 10, scope: !3066)
!3072 = !DILocation(line: 754, column: 3, scope: !3066)
!3073 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !3074, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3078)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!7, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "vec_", arg: 1, scope: !3073, file: !325, line: 150, type: !3076)
!3080 = !DILocation(line: 0, scope: !3073)
!3081 = !DILocation(line: 150, column: 1, scope: !3073)
!3082 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !3083, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!948, !2990}
!3085 = !{!3086}
!3086 = !DILocalVariable(name: "i", arg: 1, scope: !3082, file: !325, line: 685, type: !2990)
!3087 = !DILocation(line: 687, column: 3, scope: !3082)
!3088 = !DILocation(line: 688, column: 10, scope: !3082)
!3089 = !DILocation(line: 688, column: 3, scope: !3082)
!3090 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !3091, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!960, !3076, !7}
!3093 = !{!3094, !3095}
!3094 = !DILocalVariable(name: "vec_", arg: 1, scope: !3090, file: !325, line: 150, type: !3076)
!3095 = !DILocalVariable(name: "ix_", arg: 2, scope: !3090, file: !325, line: 150, type: !7)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocation(line: 150, column: 1, scope: !3090)
!3098 = distinct !DISubprogram(name: "cleanup_omp_return", scope: !3, file: !3, line: 571, type: !2919, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DILocalVariable(name: "bb", arg: 1, scope: !3098, file: !3, line: 571, type: !1623)
!3101 = !DILocalVariable(name: "stmt", scope: !3098, file: !3, line: 573, type: !980)
!3102 = !DILocalVariable(name: "control_bb", scope: !3098, file: !3, line: 574, type: !1623)
!3103 = !DILocation(line: 0, scope: !3098)
!3104 = !DILocation(line: 573, column: 17, scope: !3098)
!3105 = !DILocation(line: 576, column: 12, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 576, column: 7)
!3107 = !DILocation(line: 577, column: 7, scope: !3106)
!3108 = !DILocation(line: 577, column: 10, scope: !3106)
!3109 = !DILocation(line: 577, column: 29, scope: !3106)
!3110 = !DILocation(line: 578, column: 7, scope: !3106)
!3111 = !DILocation(line: 578, column: 11, scope: !3106)
!3112 = !DILocation(line: 576, column: 7, scope: !3098)
!3113 = !DILocation(line: 581, column: 16, scope: !3098)
!3114 = !DILocation(line: 582, column: 10, scope: !3098)
!3115 = !DILocation(line: 584, column: 12, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 584, column: 7)
!3117 = !DILocation(line: 584, column: 20, scope: !3116)
!3118 = !DILocation(line: 584, column: 23, scope: !3116)
!3119 = !DILocation(line: 584, column: 42, scope: !3116)
!3120 = !DILocation(line: 584, column: 7, scope: !3098)
!3121 = !DILocation(line: 590, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 590, column: 7)
!3123 = !DILocation(line: 590, column: 38, scope: !3122)
!3124 = !DILocation(line: 590, column: 7, scope: !3098)
!3125 = !DILocation(line: 593, column: 3, scope: !3098)
!3126 = !DILocation(line: 594, column: 37, scope: !3098)
!3127 = !DILocation(line: 594, column: 3, scope: !3098)
!3128 = !DILocation(line: 595, column: 3, scope: !3098)
!3129 = !DILocation(line: 596, column: 1, scope: !3098)
!3130 = distinct !DISubprogram(name: "cleanup_control_flow_bb", scope: !3, file: !3, line: 189, type: !2919, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3140, !3141, !3142}
!3132 = !DILocalVariable(name: "bb", arg: 1, scope: !3130, file: !3, line: 189, type: !1623)
!3133 = !DILocalVariable(name: "gsi", scope: !3130, file: !3, line: 191, type: !2708)
!3134 = !DILocalVariable(name: "retval", scope: !3130, file: !3, line: 192, type: !647)
!3135 = !DILocalVariable(name: "stmt", scope: !3130, file: !3, line: 193, type: !980)
!3136 = !DILocalVariable(name: "e", scope: !3137, file: !3, line: 215, type: !960)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 212, column: 5)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 208, column: 12)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 205, column: 7)
!3140 = !DILocalVariable(name: "label", scope: !3137, file: !3, line: 216, type: !718)
!3141 = !DILocalVariable(name: "ei", scope: !3137, file: !3, line: 217, type: !2990)
!3142 = !DILocalVariable(name: "target_block", scope: !3137, file: !3, line: 218, type: !1623)
!3143 = !DILocation(line: 0, scope: !3130)
!3144 = !DILocation(line: 191, column: 3, scope: !3130)
!3145 = !DILocation(line: 197, column: 13, scope: !3130)
!3146 = !DILocation(line: 199, column: 9, scope: !3130)
!3147 = !DILocation(line: 200, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 200, column: 7)
!3149 = !DILocation(line: 200, column: 7, scope: !3130)
!3150 = !DILocation(line: 203, column: 10, scope: !3130)
!3151 = !DILocation(line: 205, column: 7, scope: !3139)
!3152 = !DILocation(line: 205, column: 26, scope: !3139)
!3153 = !DILocation(line: 206, column: 7, scope: !3139)
!3154 = !DILocation(line: 206, column: 10, scope: !3139)
!3155 = !DILocation(line: 206, column: 29, scope: !3139)
!3156 = !DILocation(line: 205, column: 7, scope: !3130)
!3157 = !DILocation(line: 207, column: 15, scope: !3139)
!3158 = !DILocation(line: 207, column: 12, scope: !3139)
!3159 = !DILocation(line: 207, column: 5, scope: !3139)
!3160 = !DILocation(line: 208, column: 12, scope: !3138)
!3161 = !DILocation(line: 208, column: 31, scope: !3138)
!3162 = !DILocation(line: 209, column: 5, scope: !3138)
!3163 = !DILocation(line: 209, column: 8, scope: !3138)
!3164 = !DILocation(line: 209, column: 44, scope: !3138)
!3165 = !DILocation(line: 210, column: 5, scope: !3138)
!3166 = !DILocation(line: 210, column: 9, scope: !3138)
!3167 = !DILocation(line: 211, column: 9, scope: !3138)
!3168 = !DILocation(line: 208, column: 12, scope: !3139)
!3169 = !DILocation(line: 217, column: 7, scope: !3137)
!3170 = !DILocation(line: 223, column: 15, scope: !3137)
!3171 = !DILocation(line: 0, scope: !3137)
!3172 = !DILocation(line: 224, column: 22, scope: !3137)
!3173 = !DILocation(line: 225, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 225, column: 7)
!3175 = !DILocation(line: 0, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 225, column: 7)
!3177 = !DILocation(line: 225, column: 12, scope: !3174)
!3178 = !DILocation(line: 225, column: 44, scope: !3176)
!3179 = !DILocation(line: 225, column: 7, scope: !3174)
!3180 = !DILocation(line: 227, column: 11, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 227, column: 8)
!3182 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 226, column: 2)
!3183 = !DILocation(line: 227, column: 16, scope: !3181)
!3184 = !DILocation(line: 227, column: 8, scope: !3182)
!3185 = !DILocation(line: 228, column: 6, scope: !3181)
!3186 = !DILocation(line: 232, column: 11, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 230, column: 6)
!3188 = !DILocation(line: 232, column: 17, scope: !3187)
!3189 = !DILocation(line: 235, column: 17, scope: !3187)
!3190 = !DILocation(line: 236, column: 8, scope: !3187)
!3191 = !DILocation(line: 225, column: 7, scope: !3176)
!3192 = distinct !{!3192, !3179, !3193}
!3193 = !DILocation(line: 238, column: 2, scope: !3174)
!3194 = !DILocation(line: 240, column: 23, scope: !3137)
!3195 = !DILocation(line: 240, column: 51, scope: !3137)
!3196 = !DILocation(line: 240, column: 7, scope: !3137)
!3197 = !DILocation(line: 241, column: 23, scope: !3137)
!3198 = !DILocation(line: 241, column: 61, scope: !3137)
!3199 = !DILocation(line: 241, column: 7, scope: !3137)
!3200 = !DILocation(line: 245, column: 7, scope: !3137)
!3201 = !DILocation(line: 247, column: 5, scope: !3138)
!3202 = !DILocation(line: 247, column: 5, scope: !3137)
!3203 = !DILocation(line: 251, column: 12, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 251, column: 12)
!3205 = !DILocation(line: 252, column: 12, scope: !3204)
!3206 = !DILocation(line: 252, column: 15, scope: !3204)
!3207 = !DILocation(line: 253, column: 12, scope: !3204)
!3208 = !DILocation(line: 253, column: 41, scope: !3204)
!3209 = !DILocation(line: 253, column: 15, scope: !3204)
!3210 = !DILocation(line: 251, column: 12, scope: !3138)
!3211 = !DILocation(line: 257, column: 1, scope: !3130)
!3212 = distinct !DISubprogram(name: "tree_forwarder_block_p", scope: !3, file: !3, line: 267, type: !3213, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!647, !1623, !647}
!3215 = !{!3216, !3217, !3218, !3219, !3221, !3222, !3226}
!3216 = !DILocalVariable(name: "bb", arg: 1, scope: !3212, file: !3, line: 267, type: !1623)
!3217 = !DILocalVariable(name: "phi_wanted", arg: 2, scope: !3212, file: !3, line: 267, type: !647)
!3218 = !DILocalVariable(name: "gsi", scope: !3212, file: !3, line: 269, type: !2708)
!3219 = !DILocalVariable(name: "ei", scope: !3220, file: !3, line: 290, type: !2990)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 289, column: 3)
!3221 = !DILocalVariable(name: "e", scope: !3220, file: !3, line: 291, type: !960)
!3222 = !DILocalVariable(name: "stmt", scope: !3223, file: !3, line: 302, type: !980)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 301, column: 5)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 300, column: 3)
!3225 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 300, column: 3)
!3226 = !DILocalVariable(name: "dest", scope: !3227, file: !3, line: 323, type: !1623)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 322, column: 5)
!3228 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 321, column: 7)
!3229 = !DILocation(line: 0, scope: !3212)
!3230 = !DILocation(line: 269, column: 3, scope: !3212)
!3231 = !DILocation(line: 272, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 272, column: 7)
!3233 = !DILocation(line: 272, column: 26, scope: !3232)
!3234 = !DILocation(line: 275, column: 7, scope: !3232)
!3235 = !DILocation(line: 275, column: 30, scope: !3232)
!3236 = !DILocation(line: 275, column: 10, scope: !3232)
!3237 = !DILocation(line: 275, column: 46, scope: !3232)
!3238 = !DILocation(line: 277, column: 7, scope: !3232)
!3239 = !DILocation(line: 277, column: 10, scope: !3232)
!3240 = !DILocation(line: 277, column: 30, scope: !3232)
!3241 = !DILocation(line: 277, column: 27, scope: !3232)
!3242 = !DILocation(line: 279, column: 7, scope: !3232)
!3243 = !DILocation(line: 279, column: 10, scope: !3232)
!3244 = !DILocation(line: 279, column: 27, scope: !3232)
!3245 = !DILocation(line: 281, column: 7, scope: !3232)
!3246 = !DILocation(line: 281, column: 11, scope: !3232)
!3247 = !DILocation(line: 281, column: 34, scope: !3232)
!3248 = !DILocation(line: 281, column: 40, scope: !3232)
!3249 = !DILocation(line: 272, column: 7, scope: !3212)
!3250 = !DILocation(line: 290, column: 5, scope: !3220)
!3251 = !DILocation(line: 291, column: 5, scope: !3220)
!3252 = !DILocation(line: 293, column: 5, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 293, column: 5)
!3254 = !DILocation(line: 0, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 293, column: 5)
!3256 = !DILocation(line: 293, column: 5, scope: !3255)
!3257 = !DILocation(line: 0, scope: !3220)
!3258 = !DILocation(line: 294, column: 11, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 294, column: 11)
!3260 = !DILocation(line: 294, column: 14, scope: !3259)
!3261 = !DILocation(line: 294, column: 21, scope: !3259)
!3262 = !DILocation(line: 294, column: 18, scope: !3259)
!3263 = !DILocation(line: 294, column: 37, scope: !3259)
!3264 = !DILocation(line: 294, column: 44, scope: !3259)
!3265 = !DILocation(line: 294, column: 50, scope: !3259)
!3266 = !DILocation(line: 294, column: 11, scope: !3255)
!3267 = distinct !{!3267, !3252, !3268}
!3268 = !DILocation(line: 295, column: 9, scope: !3253)
!3269 = !DILocation(line: 296, column: 3, scope: !3212)
!3270 = !DILocation(line: 300, column: 14, scope: !3225)
!3271 = !DILocation(line: 300, column: 8, scope: !3225)
!3272 = !DILocation(line: 300, column: 33, scope: !3224)
!3273 = !DILocation(line: 300, column: 32, scope: !3224)
!3274 = !DILocation(line: 300, column: 3, scope: !3225)
!3275 = !DILocation(line: 302, column: 21, scope: !3223)
!3276 = !DILocation(line: 0, scope: !3223)
!3277 = !DILocation(line: 304, column: 15, scope: !3223)
!3278 = !DILocation(line: 304, column: 7, scope: !3223)
!3279 = !DILocation(line: 307, column: 8, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 307, column: 8)
!3281 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 305, column: 2)
!3282 = !DILocation(line: 307, column: 8, scope: !3281)
!3283 = !DILocation(line: 319, column: 5, scope: !3224)
!3284 = !DILocation(line: 300, column: 50, scope: !3224)
!3285 = !DILocation(line: 300, column: 3, scope: !3224)
!3286 = distinct !{!3286, !3274, !3287}
!3287 = !DILocation(line: 319, column: 5, scope: !3225)
!3288 = !DILocation(line: 321, column: 7, scope: !3228)
!3289 = !DILocation(line: 321, column: 7, scope: !3212)
!3290 = !DILocation(line: 325, column: 15, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 325, column: 11)
!3292 = !DILocation(line: 325, column: 28, scope: !3291)
!3293 = !DILocation(line: 325, column: 35, scope: !3291)
!3294 = !DILocation(line: 325, column: 11, scope: !3227)
!3295 = !DILocation(line: 327, column: 14, scope: !3227)
!3296 = !DILocation(line: 327, column: 33, scope: !3227)
!3297 = !DILocation(line: 0, scope: !3227)
!3298 = !DILocation(line: 329, column: 17, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 329, column: 11)
!3300 = !DILocation(line: 329, column: 30, scope: !3299)
!3301 = !DILocation(line: 329, column: 37, scope: !3299)
!3302 = !DILocation(line: 0, scope: !3228)
!3303 = !DILocation(line: 332, column: 3, scope: !3212)
!3304 = !DILocation(line: 333, column: 1, scope: !3212)
!3305 = distinct !DISubprogram(name: "remove_forwarder_block", scope: !3, file: !3, line: 380, type: !2919, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3326, !3327, !3331, !3337, !3340, !3341}
!3307 = !DILocalVariable(name: "bb", arg: 1, scope: !3305, file: !3, line: 380, type: !1623)
!3308 = !DILocalVariable(name: "succ", scope: !3305, file: !3, line: 382, type: !960)
!3309 = !DILocalVariable(name: "e", scope: !3305, file: !3, line: 382, type: !960)
!3310 = !DILocalVariable(name: "s", scope: !3305, file: !3, line: 382, type: !960)
!3311 = !DILocalVariable(name: "dest", scope: !3305, file: !3, line: 383, type: !1623)
!3312 = !DILocalVariable(name: "label", scope: !3305, file: !3, line: 384, type: !980)
!3313 = !DILocalVariable(name: "ei", scope: !3305, file: !3, line: 385, type: !2990)
!3314 = !DILocalVariable(name: "gsi", scope: !3305, file: !3, line: 386, type: !2708)
!3315 = !DILocalVariable(name: "gsi_to", scope: !3305, file: !3, line: 386, type: !2708)
!3316 = !DILocalVariable(name: "can_move_debug_stmts", scope: !3305, file: !3, line: 387, type: !647)
!3317 = !DILocalVariable(name: "phi", scope: !3318, file: !3, line: 460, type: !980)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 459, column: 6)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 456, column: 4)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 456, column: 4)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 453, column: 2)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 452, column: 11)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 440, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 439, column: 3)
!3325 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 439, column: 3)
!3326 = !DILocalVariable(name: "l", scope: !3318, file: !3, line: 461, type: !842)
!3327 = !DILocalVariable(name: "decl", scope: !3328, file: !3, line: 475, type: !718)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 474, column: 5)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 473, column: 3)
!3330 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 473, column: 3)
!3331 = !DILocalVariable(name: "debug", scope: !3332, file: !3, line: 499, type: !980)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 498, column: 2)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 497, column: 7)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 497, column: 7)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 495, column: 5)
!3336 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 494, column: 7)
!3337 = !DILocalVariable(name: "dom", scope: !3338, file: !3, line: 512, type: !1623)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 511, column: 5)
!3339 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 510, column: 7)
!3340 = !DILocalVariable(name: "dombb", scope: !3338, file: !3, line: 512, type: !1623)
!3341 = !DILocalVariable(name: "domdest", scope: !3338, file: !3, line: 512, type: !1623)
!3342 = !DILocation(line: 0, scope: !3305)
!3343 = !DILocation(line: 382, column: 15, scope: !3305)
!3344 = !DILocation(line: 382, column: 3, scope: !3305)
!3345 = !DILocation(line: 383, column: 28, scope: !3305)
!3346 = !DILocation(line: 385, column: 3, scope: !3305)
!3347 = !DILocation(line: 386, column: 3, scope: !3305)
!3348 = !DILocation(line: 392, column: 12, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 392, column: 7)
!3350 = !DILocation(line: 392, column: 7, scope: !3305)
!3351 = !DILocation(line: 397, column: 11, scope: !3305)
!3352 = !DILocation(line: 398, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 398, column: 7)
!3354 = !DILocation(line: 399, column: 7, scope: !3353)
!3355 = !DILocation(line: 399, column: 10, scope: !3353)
!3356 = !DILocation(line: 399, column: 30, scope: !3353)
!3357 = !DILocation(line: 400, column: 7, scope: !3353)
!3358 = !DILocation(line: 400, column: 11, scope: !3353)
!3359 = !DILocation(line: 401, column: 4, scope: !3353)
!3360 = !DILocation(line: 401, column: 7, scope: !3353)
!3361 = !DILocation(line: 401, column: 54, scope: !3353)
!3362 = !DILocation(line: 398, column: 7, scope: !3305)
!3363 = !DILocation(line: 415, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 415, column: 7)
!3365 = !DILocation(line: 416, column: 7, scope: !3364)
!3366 = !DILocation(line: 416, column: 11, scope: !3364)
!3367 = !DILocation(line: 417, column: 4, scope: !3364)
!3368 = !DILocation(line: 417, column: 28, scope: !3364)
!3369 = !DILocation(line: 417, column: 8, scope: !3364)
!3370 = !DILocation(line: 415, column: 7, scope: !3305)
!3371 = !DILocation(line: 423, column: 28, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 423, column: 7)
!3373 = !DILocation(line: 423, column: 8, scope: !3372)
!3374 = !DILocation(line: 423, column: 7, scope: !3305)
!3375 = !DILocation(line: 425, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 425, column: 7)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 424, column: 5)
!3378 = !DILocation(line: 0, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 425, column: 7)
!3380 = !DILocation(line: 425, column: 7, scope: !3379)
!3381 = !DILocation(line: 427, column: 19, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 426, column: 2)
!3383 = !DILocation(line: 427, column: 22, scope: !3382)
!3384 = !DILocation(line: 427, column: 8, scope: !3382)
!3385 = !DILocation(line: 428, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 428, column: 8)
!3387 = !DILocation(line: 428, column: 8, scope: !3382)
!3388 = !DILocation(line: 431, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 431, column: 8)
!3390 = !DILocation(line: 431, column: 8, scope: !3382)
!3391 = distinct !{!3391, !3375, !3392}
!3392 = !DILocation(line: 433, column: 2, scope: !3376)
!3393 = !DILocation(line: 436, column: 26, scope: !3305)
!3394 = !DILocation(line: 439, column: 13, scope: !3325)
!3395 = !DILocation(line: 0, scope: !3324)
!3396 = !DILocation(line: 0, scope: !3320)
!3397 = !DILocation(line: 0, scope: !3318)
!3398 = !DILocation(line: 439, column: 8, scope: !3325)
!3399 = !DILocation(line: 439, column: 40, scope: !3324)
!3400 = !DILocation(line: 439, column: 38, scope: !3324)
!3401 = !DILocation(line: 439, column: 3, scope: !3325)
!3402 = !DILocation(line: 441, column: 23, scope: !3323)
!3403 = !DILocation(line: 441, column: 50, scope: !3323)
!3404 = !DILocation(line: 441, column: 55, scope: !3323)
!3405 = !DILocation(line: 441, column: 7, scope: !3323)
!3406 = !DILocation(line: 443, column: 11, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 443, column: 11)
!3408 = !DILocation(line: 443, column: 14, scope: !3407)
!3409 = !DILocation(line: 443, column: 20, scope: !3407)
!3410 = !DILocation(line: 443, column: 11, scope: !3323)
!3411 = !DILocation(line: 447, column: 8, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 444, column: 2)
!3413 = !DILocation(line: 448, column: 2, scope: !3412)
!3414 = !DILocation(line: 450, column: 6, scope: !3407)
!3415 = !DILocation(line: 0, scope: !3407)
!3416 = !DILocation(line: 452, column: 16, scope: !3322)
!3417 = !DILocation(line: 452, column: 13, scope: !3322)
!3418 = !DILocation(line: 452, column: 11, scope: !3323)
!3419 = !DILocation(line: 456, column: 15, scope: !3320)
!3420 = !DILocation(line: 456, column: 9, scope: !3320)
!3421 = !DILocation(line: 457, column: 10, scope: !3319)
!3422 = !DILocation(line: 457, column: 9, scope: !3319)
!3423 = !DILocation(line: 456, column: 4, scope: !3320)
!3424 = !DILocation(line: 460, column: 21, scope: !3318)
!3425 = !DILocation(line: 461, column: 28, scope: !3318)
!3426 = !DILocation(line: 462, column: 57, scope: !3318)
!3427 = !DILocation(line: 462, column: 51, scope: !3318)
!3428 = !DILocation(line: 462, column: 26, scope: !3318)
!3429 = !DILocation(line: 462, column: 8, scope: !3318)
!3430 = !DILocation(line: 458, column: 9, scope: !3319)
!3431 = !DILocation(line: 456, column: 4, scope: !3319)
!3432 = distinct !{!3432, !3423, !3433}
!3433 = !DILocation(line: 463, column: 6, scope: !3320)
!3434 = !DILocation(line: 439, column: 3, scope: !3324)
!3435 = distinct !{!3435, !3401, !3436}
!3436 = !DILocation(line: 465, column: 5, scope: !3325)
!3437 = !DILocation(line: 472, column: 12, scope: !3305)
!3438 = !DILocation(line: 473, column: 14, scope: !3330)
!3439 = !DILocation(line: 473, column: 8, scope: !3330)
!3440 = !DILocation(line: 473, column: 34, scope: !3329)
!3441 = !DILocation(line: 473, column: 33, scope: !3329)
!3442 = !DILocation(line: 473, column: 3, scope: !3330)
!3443 = !DILocation(line: 476, column: 15, scope: !3328)
!3444 = !DILocation(line: 477, column: 11, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 477, column: 11)
!3446 = !DILocation(line: 477, column: 11, scope: !3328)
!3447 = !DILocation(line: 479, column: 14, scope: !3328)
!3448 = !DILocation(line: 0, scope: !3328)
!3449 = !DILocation(line: 480, column: 11, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 480, column: 11)
!3451 = !DILocation(line: 480, column: 36, scope: !3450)
!3452 = !DILocation(line: 481, column: 4, scope: !3450)
!3453 = !DILocation(line: 481, column: 7, scope: !3450)
!3454 = !DILocation(line: 482, column: 4, scope: !3450)
!3455 = !DILocation(line: 482, column: 7, scope: !3450)
!3456 = !DILocation(line: 483, column: 4, scope: !3450)
!3457 = !DILocation(line: 483, column: 8, scope: !3450)
!3458 = !DILocation(line: 480, column: 11, scope: !3328)
!3459 = !DILocation(line: 485, column: 4, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 484, column: 2)
!3461 = !DILocation(line: 486, column: 4, scope: !3460)
!3462 = !DILocation(line: 487, column: 2, scope: !3460)
!3463 = !DILocation(line: 489, column: 2, scope: !3450)
!3464 = distinct !{!3464, !3442, !3465}
!3465 = !DILocation(line: 490, column: 5, scope: !3330)
!3466 = !DILocation(line: 494, column: 7, scope: !3336)
!3467 = !DILocation(line: 494, column: 7, scope: !3305)
!3468 = !DILocation(line: 496, column: 16, scope: !3335)
!3469 = !DILocation(line: 497, column: 18, scope: !3334)
!3470 = !DILocation(line: 497, column: 12, scope: !3334)
!3471 = !DILocation(line: 497, column: 42, scope: !3333)
!3472 = !DILocation(line: 497, column: 41, scope: !3333)
!3473 = !DILocation(line: 497, column: 7, scope: !3334)
!3474 = !DILocation(line: 499, column: 19, scope: !3332)
!3475 = !DILocation(line: 0, scope: !3332)
!3476 = !DILocation(line: 500, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 500, column: 8)
!3478 = !DILocation(line: 500, column: 8, scope: !3332)
!3479 = !DILocation(line: 502, column: 4, scope: !3332)
!3480 = !DILocation(line: 503, column: 4, scope: !3332)
!3481 = !DILocation(line: 504, column: 2, scope: !3333)
!3482 = distinct !{!3482, !3473, !3483}
!3483 = !DILocation(line: 504, column: 2, scope: !3334)
!3484 = !DILocation(line: 507, column: 19, scope: !3305)
!3485 = !DILocation(line: 507, column: 49, scope: !3305)
!3486 = !DILocation(line: 507, column: 3, scope: !3305)
!3487 = !DILocation(line: 510, column: 7, scope: !3339)
!3488 = !DILocation(line: 510, column: 7, scope: !3305)
!3489 = !DILocation(line: 514, column: 15, scope: !3338)
!3490 = !DILocation(line: 0, scope: !3338)
!3491 = !DILocation(line: 515, column: 17, scope: !3338)
!3492 = !DILocation(line: 516, column: 19, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 516, column: 11)
!3494 = !DILocation(line: 516, column: 11, scope: !3338)
!3495 = !DILocation(line: 523, column: 8, scope: !3493)
!3496 = !DILocation(line: 0, scope: !3493)
!3497 = !DILocation(line: 525, column: 7, scope: !3338)
!3498 = !DILocation(line: 526, column: 5, scope: !3338)
!3499 = !DILocation(line: 529, column: 3, scope: !3305)
!3500 = !DILocation(line: 531, column: 3, scope: !3305)
!3501 = !DILocation(line: 532, column: 1, scope: !3305)
!3502 = distinct !DISubprogram(name: "single_succ_p", scope: !325, file: !325, line: 626, type: !3503, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!647, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !656, line: 112, baseType: !3506)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "bb", arg: 1, scope: !3502, file: !325, line: 626, type: !3505)
!3510 = !DILocation(line: 0, scope: !3502)
!3511 = !DILocation(line: 628, column: 10, scope: !3502)
!3512 = !DILocation(line: 628, column: 33, scope: !3502)
!3513 = !DILocation(line: 628, column: 3, scope: !3502)
!3514 = distinct !DISubprogram(name: "single_succ", scope: !325, file: !325, line: 663, type: !3515, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!1623, !3505}
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "bb", arg: 1, scope: !3514, file: !325, line: 663, type: !3505)
!3519 = !DILocation(line: 0, scope: !3514)
!3520 = !DILocation(line: 665, column: 10, scope: !3514)
!3521 = !DILocation(line: 665, column: 33, scope: !3514)
!3522 = !DILocation(line: 665, column: 3, scope: !3514)
!3523 = distinct !DISubprogram(name: "gimple_code", scope: !581, file: !581, line: 1052, type: !3524, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!580, !2969}
!3526 = !{!3527}
!3527 = !DILocalVariable(name: "g", arg: 1, scope: !3523, file: !581, line: 1052, type: !2969)
!3528 = !DILocation(line: 0, scope: !3523)
!3529 = !DILocation(line: 1054, column: 20, scope: !3523)
!3530 = !DILocation(line: 1054, column: 3, scope: !3523)
!3531 = distinct !DISubprogram(name: "single_pred_p", scope: !325, file: !325, line: 634, type: !3503, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3532 = !{!3533}
!3533 = !DILocalVariable(name: "bb", arg: 1, scope: !3531, file: !325, line: 634, type: !3505)
!3534 = !DILocation(line: 0, scope: !3531)
!3535 = !DILocation(line: 636, column: 10, scope: !3531)
!3536 = !DILocation(line: 636, column: 33, scope: !3531)
!3537 = !DILocation(line: 636, column: 3, scope: !3531)
!3538 = distinct !DISubprogram(name: "single_pred", scope: !325, file: !325, line: 672, type: !3515, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "bb", arg: 1, scope: !3538, file: !325, line: 672, type: !3505)
!3541 = !DILocation(line: 0, scope: !3538)
!3542 = !DILocation(line: 674, column: 10, scope: !3538)
!3543 = !DILocation(line: 674, column: 33, scope: !3538)
!3544 = !DILocation(line: 674, column: 3, scope: !3538)
!3545 = distinct !DISubprogram(name: "single_pred_edge", scope: !325, file: !325, line: 653, type: !3546, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!960, !3505}
!3548 = !{!3549}
!3549 = !DILocalVariable(name: "bb", arg: 1, scope: !3545, file: !325, line: 653, type: !3505)
!3550 = !DILocation(line: 0, scope: !3545)
!3551 = !DILocation(line: 655, column: 3, scope: !3545)
!3552 = !DILocation(line: 656, column: 10, scope: !3545)
!3553 = !DILocation(line: 656, column: 3, scope: !3545)
!3554 = distinct !DISubprogram(name: "gsi_last_bb", scope: !581, file: !581, line: 4450, type: !3555, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!2708, !1623}
!3557 = !{!3558, !3559, !3560}
!3558 = !DILocalVariable(name: "bb", arg: 1, scope: !3554, file: !581, line: 4450, type: !1623)
!3559 = !DILocalVariable(name: "i", scope: !3554, file: !581, line: 4452, type: !2708)
!3560 = !DILocalVariable(name: "seq", scope: !3554, file: !581, line: 4453, type: !970)
!3561 = !DILocation(line: 0, scope: !3554)
!3562 = !DILocation(line: 4452, column: 24, scope: !3554)
!3563 = !DILocation(line: 4455, column: 9, scope: !3554)
!3564 = !DILocation(line: 4456, column: 11, scope: !3554)
!3565 = !DILocation(line: 4456, column: 5, scope: !3554)
!3566 = !DILocation(line: 4456, column: 9, scope: !3554)
!3567 = !DILocation(line: 4457, column: 5, scope: !3554)
!3568 = !DILocation(line: 4457, column: 9, scope: !3554)
!3569 = !DILocation(line: 4458, column: 5, scope: !3554)
!3570 = !DILocation(line: 4458, column: 8, scope: !3554)
!3571 = !DILocation(line: 4461, column: 1, scope: !3554)
!3572 = distinct !DISubprogram(name: "gsi_end_p", scope: !581, file: !581, line: 4467, type: !3573, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!647, !2708}
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "i", arg: 1, scope: !3572, file: !581, line: 4467, type: !2708)
!3577 = !DILocation(line: 4467, column: 33, scope: !3572)
!3578 = !DILocation(line: 4469, column: 12, scope: !3572)
!3579 = !DILocation(line: 4469, column: 16, scope: !3572)
!3580 = !DILocation(line: 4469, column: 10, scope: !3572)
!3581 = !DILocation(line: 4469, column: 3, scope: !3572)
!3582 = distinct !DISubprogram(name: "gsi_stmt", scope: !581, file: !581, line: 4501, type: !3583, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!980, !2708}
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "i", arg: 1, scope: !3582, file: !581, line: 4501, type: !2708)
!3587 = !DILocation(line: 4501, column: 32, scope: !3582)
!3588 = !DILocation(line: 4503, column: 12, scope: !3582)
!3589 = !DILocation(line: 4503, column: 17, scope: !3582)
!3590 = !DILocation(line: 4503, column: 3, scope: !3582)
!3591 = distinct !DISubprogram(name: "cleanup_control_expr_graph", scope: !3, file: !3, line: 81, type: !3592, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!647, !1623, !2708}
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3604, !3605, !3606, !3607, !3610, !3611, !3614}
!3595 = !DILocalVariable(name: "bb", arg: 1, scope: !3591, file: !3, line: 81, type: !1623)
!3596 = !DILocalVariable(name: "gsi", arg: 2, scope: !3591, file: !3, line: 81, type: !2708)
!3597 = !DILocalVariable(name: "taken_edge", scope: !3591, file: !3, line: 83, type: !960)
!3598 = !DILocalVariable(name: "retval", scope: !3591, file: !3, line: 84, type: !647)
!3599 = !DILocalVariable(name: "stmt", scope: !3591, file: !3, line: 85, type: !980)
!3600 = !DILocalVariable(name: "val", scope: !3591, file: !3, line: 86, type: !718)
!3601 = !DILocalVariable(name: "e", scope: !3602, file: !3, line: 90, type: !960)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 89, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 88, column: 7)
!3604 = !DILocalVariable(name: "ei", scope: !3602, file: !3, line: 91, type: !2990)
!3605 = !DILocalVariable(name: "warned", scope: !3602, file: !3, line: 92, type: !647)
!3606 = !DILocalVariable(name: "loc", scope: !3602, file: !3, line: 93, type: !840)
!3607 = !DILocalVariable(name: "lhs", scope: !3608, file: !3, line: 101, type: !718)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 100, column: 4)
!3609 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 98, column: 2)
!3610 = !DILocalVariable(name: "rhs", scope: !3608, file: !3, line: 102, type: !718)
!3611 = !DILocalVariable(name: "def_stmt", scope: !3612, file: !3, line: 109, type: !980)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 108, column: 8)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 106, column: 10)
!3614 = !DILocalVariable(name: "def_stmt", scope: !3615, file: !3, line: 121, type: !980)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 120, column: 8)
!3616 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 118, column: 10)
!3617 = !DILocation(line: 0, scope: !3591)
!3618 = !DILocation(line: 81, column: 66, scope: !3591)
!3619 = !DILocation(line: 85, column: 17, scope: !3591)
!3620 = !DILocation(line: 88, column: 8, scope: !3603)
!3621 = !DILocation(line: 88, column: 7, scope: !3591)
!3622 = !DILocation(line: 91, column: 7, scope: !3602)
!3623 = !DILocation(line: 95, column: 7, scope: !3602)
!3624 = !DILocation(line: 96, column: 13, scope: !3602)
!3625 = !DILocation(line: 0, scope: !3602)
!3626 = !DILocation(line: 97, column: 15, scope: !3602)
!3627 = !DILocation(line: 97, column: 7, scope: !3602)
!3628 = !DILocation(line: 101, column: 17, scope: !3608)
!3629 = !DILocation(line: 0, scope: !3608)
!3630 = !DILocation(line: 102, column: 17, scope: !3608)
!3631 = !DILocation(line: 106, column: 10, scope: !3613)
!3632 = !DILocation(line: 106, column: 26, scope: !3613)
!3633 = !DILocation(line: 107, column: 3, scope: !3613)
!3634 = !DILocation(line: 107, column: 7, scope: !3613)
!3635 = !DILocation(line: 106, column: 10, scope: !3608)
!3636 = !DILocation(line: 109, column: 21, scope: !3612)
!3637 = !DILocation(line: 0, scope: !3612)
!3638 = !DILocation(line: 110, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 110, column: 7)
!3640 = !DILocation(line: 110, column: 30, scope: !3639)
!3641 = !DILocation(line: 111, column: 7, scope: !3639)
!3642 = !DILocation(line: 111, column: 10, scope: !3639)
!3643 = !DILocation(line: 111, column: 41, scope: !3639)
!3644 = !DILocation(line: 112, column: 7, scope: !3639)
!3645 = !DILocation(line: 112, column: 10, scope: !3639)
!3646 = !DILocation(line: 112, column: 34, scope: !3639)
!3647 = !DILocation(line: 112, column: 31, scope: !3639)
!3648 = !DILocation(line: 113, column: 7, scope: !3639)
!3649 = !DILocation(line: 113, column: 11, scope: !3639)
!3650 = !DILocation(line: 113, column: 49, scope: !3639)
!3651 = !DILocation(line: 114, column: 4, scope: !3639)
!3652 = !DILocation(line: 114, column: 38, scope: !3639)
!3653 = !DILocation(line: 114, column: 8, scope: !3639)
!3654 = !DILocation(line: 110, column: 7, scope: !3612)
!3655 = !DILocation(line: 116, column: 11, scope: !3639)
!3656 = !DILocation(line: 116, column: 5, scope: !3639)
!3657 = !DILocation(line: 118, column: 10, scope: !3616)
!3658 = !DILocation(line: 118, column: 26, scope: !3616)
!3659 = !DILocation(line: 119, column: 3, scope: !3616)
!3660 = !DILocation(line: 119, column: 7, scope: !3616)
!3661 = !DILocation(line: 118, column: 10, scope: !3608)
!3662 = !DILocation(line: 121, column: 21, scope: !3615)
!3663 = !DILocation(line: 0, scope: !3615)
!3664 = !DILocation(line: 122, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 122, column: 7)
!3666 = !DILocation(line: 122, column: 30, scope: !3665)
!3667 = !DILocation(line: 123, column: 7, scope: !3665)
!3668 = !DILocation(line: 123, column: 10, scope: !3665)
!3669 = !DILocation(line: 123, column: 41, scope: !3665)
!3670 = !DILocation(line: 124, column: 7, scope: !3665)
!3671 = !DILocation(line: 124, column: 10, scope: !3665)
!3672 = !DILocation(line: 124, column: 34, scope: !3665)
!3673 = !DILocation(line: 124, column: 31, scope: !3665)
!3674 = !DILocation(line: 125, column: 7, scope: !3665)
!3675 = !DILocation(line: 125, column: 11, scope: !3665)
!3676 = !DILocation(line: 125, column: 49, scope: !3665)
!3677 = !DILocation(line: 126, column: 4, scope: !3665)
!3678 = !DILocation(line: 126, column: 38, scope: !3665)
!3679 = !DILocation(line: 126, column: 8, scope: !3665)
!3680 = !DILocation(line: 122, column: 7, scope: !3615)
!3681 = !DILocation(line: 128, column: 11, scope: !3665)
!3682 = !DILocation(line: 128, column: 5, scope: !3665)
!3683 = !DILocation(line: 130, column: 34, scope: !3608)
!3684 = !DILocation(line: 131, column: 8, scope: !3608)
!3685 = !DILocation(line: 130, column: 12, scope: !3608)
!3686 = !DILocation(line: 136, column: 10, scope: !3609)
!3687 = !DILocation(line: 137, column: 4, scope: !3609)
!3688 = !DILocation(line: 0, scope: !3609)
!3689 = !DILocation(line: 142, column: 20, scope: !3602)
!3690 = !DILocation(line: 143, column: 12, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 143, column: 11)
!3692 = !DILocation(line: 143, column: 11, scope: !3602)
!3693 = !DILocation(line: 145, column: 4, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 144, column: 2)
!3695 = !DILocation(line: 146, column: 4, scope: !3694)
!3696 = !DILocation(line: 151, column: 17, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 151, column: 7)
!3698 = !DILocation(line: 0, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 151, column: 7)
!3700 = !DILocation(line: 0, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 154, column: 6)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 153, column: 8)
!3703 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 152, column: 2)
!3704 = !DILocation(line: 151, column: 12, scope: !3697)
!3705 = !DILocation(line: 150, column: 14, scope: !3602)
!3706 = !DILocation(line: 151, column: 44, scope: !3699)
!3707 = !DILocation(line: 151, column: 7, scope: !3697)
!3708 = !DILocation(line: 153, column: 10, scope: !3702)
!3709 = !DILocation(line: 153, column: 8, scope: !3703)
!3710 = !DILocation(line: 155, column: 13, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 155, column: 12)
!3712 = !DILocation(line: 155, column: 12, scope: !3701)
!3713 = !DILocation(line: 157, column: 5, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 156, column: 3)
!3715 = !DILocation(line: 160, column: 3, scope: !3714)
!3716 = !DILocation(line: 162, column: 38, scope: !3701)
!3717 = !DILocation(line: 162, column: 32, scope: !3701)
!3718 = !DILocation(line: 163, column: 32, scope: !3701)
!3719 = !DILocation(line: 163, column: 26, scope: !3701)
!3720 = !DILocation(line: 164, column: 8, scope: !3701)
!3721 = !DILocation(line: 166, column: 6, scope: !3701)
!3722 = !DILocation(line: 168, column: 6, scope: !3702)
!3723 = !DILocation(line: 151, column: 7, scope: !3699)
!3724 = distinct !{!3724, !3707, !3725}
!3725 = !DILocation(line: 169, column: 2, scope: !3697)
!3726 = !DILocation(line: 170, column: 12, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 170, column: 11)
!3728 = !DILocation(line: 170, column: 11, scope: !3602)
!3729 = !DILocation(line: 171, column: 2, scope: !3727)
!3730 = !DILocation(line: 172, column: 23, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 172, column: 11)
!3732 = !DILocation(line: 172, column: 35, scope: !3731)
!3733 = !DILocation(line: 172, column: 11, scope: !3602)
!3734 = !DILocation(line: 173, column: 26, scope: !3731)
!3735 = !DILocation(line: 173, column: 2, scope: !3731)
!3736 = !DILocation(line: 84, column: 8, scope: !3591)
!3737 = !DILocation(line: 174, column: 5, scope: !3603)
!3738 = !DILocation(line: 176, column: 18, scope: !3603)
!3739 = !DILocation(line: 0, scope: !3603)
!3740 = !DILocation(line: 178, column: 19, scope: !3591)
!3741 = !DILocation(line: 178, column: 47, scope: !3591)
!3742 = !DILocation(line: 178, column: 3, scope: !3591)
!3743 = !DILocation(line: 179, column: 3, scope: !3591)
!3744 = !DILocation(line: 180, column: 15, scope: !3591)
!3745 = !DILocation(line: 180, column: 21, scope: !3591)
!3746 = !DILocation(line: 182, column: 3, scope: !3591)
!3747 = !DILocation(line: 183, column: 1, scope: !3591)
!3748 = distinct !DISubprogram(name: "gimple_goto_dest", scope: !581, file: !581, line: 2465, type: !3749, scopeLine: 2466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!718, !2969}
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "gs", arg: 1, scope: !3748, file: !581, line: 2465, type: !2969)
!3753 = !DILocation(line: 0, scope: !3748)
!3754 = !DILocation(line: 2468, column: 10, scope: !3748)
!3755 = !DILocation(line: 2468, column: 3, scope: !3748)
!3756 = distinct !DISubprogram(name: "ei_safe_edge", scope: !325, file: !325, line: 761, type: !3067, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3757)
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "i", arg: 1, scope: !3756, file: !325, line: 761, type: !2990)
!3759 = !DILocation(line: 763, column: 11, scope: !3756)
!3760 = !DILocation(line: 763, column: 10, scope: !3756)
!3761 = !DILocation(line: 763, column: 26, scope: !3756)
!3762 = !DILocation(line: 763, column: 3, scope: !3756)
!3763 = distinct !DISubprogram(name: "is_gimple_call", scope: !581, file: !581, line: 1870, type: !3764, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!647, !2969}
!3766 = !{!3767}
!3767 = !DILocalVariable(name: "gs", arg: 1, scope: !3763, file: !581, line: 1870, type: !2969)
!3768 = !DILocation(line: 0, scope: !3763)
!3769 = !DILocation(line: 1872, column: 10, scope: !3763)
!3770 = !DILocation(line: 1872, column: 27, scope: !3763)
!3771 = !DILocation(line: 1872, column: 3, scope: !3763)
!3772 = distinct !DISubprogram(name: "bb_seq", scope: !581, file: !581, line: 237, type: !3773, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!970, !3505}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "bb", arg: 1, scope: !3772, file: !581, line: 237, type: !3505)
!3777 = !DILocation(line: 0, scope: !3772)
!3778 = !DILocation(line: 239, column: 17, scope: !3772)
!3779 = !DILocation(line: 239, column: 23, scope: !3772)
!3780 = !DILocation(line: 239, column: 33, scope: !3772)
!3781 = !DILocation(line: 239, column: 43, scope: !3772)
!3782 = !DILocation(line: 239, column: 36, scope: !3772)
!3783 = !DILocation(line: 239, column: 10, scope: !3772)
!3784 = !DILocation(line: 239, column: 68, scope: !3772)
!3785 = !DILocation(line: 239, column: 3, scope: !3772)
!3786 = distinct !DISubprogram(name: "gimple_seq_last", scope: !581, file: !581, line: 178, type: !3787, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3792)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!975, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !656, line: 67, baseType: !3790)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "s", arg: 1, scope: !3786, file: !581, line: 178, type: !3789)
!3794 = !DILocation(line: 0, scope: !3786)
!3795 = !DILocation(line: 180, column: 10, scope: !3786)
!3796 = !DILocation(line: 180, column: 17, scope: !3786)
!3797 = !DILocation(line: 180, column: 3, scope: !3786)
!3798 = distinct !DISubprogram(name: "gimple_location", scope: !581, file: !581, line: 1139, type: !3799, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!840, !2969}
!3801 = !{!3802}
!3802 = !DILocalVariable(name: "g", arg: 1, scope: !3798, file: !581, line: 1139, type: !2969)
!3803 = !DILocation(line: 0, scope: !3798)
!3804 = !DILocation(line: 1141, column: 20, scope: !3798)
!3805 = !DILocation(line: 1141, column: 3, scope: !3798)
!3806 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !581, file: !581, line: 2241, type: !3749, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "gs", arg: 1, scope: !3806, file: !581, line: 2241, type: !2969)
!3809 = !DILocation(line: 0, scope: !3806)
!3810 = !DILocation(line: 2244, column: 10, scope: !3806)
!3811 = !DILocation(line: 2244, column: 3, scope: !3806)
!3812 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !581, file: !581, line: 2271, type: !3749, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3813)
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "gs", arg: 1, scope: !3812, file: !581, line: 2271, type: !2969)
!3815 = !DILocation(line: 0, scope: !3812)
!3816 = !DILocation(line: 2274, column: 10, scope: !3812)
!3817 = !DILocation(line: 2274, column: 3, scope: !3812)
!3818 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !581, file: !581, line: 3061, type: !3819, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!7, !2969}
!3821 = !{!3822}
!3822 = !DILocalVariable(name: "gs", arg: 1, scope: !3818, file: !581, line: 3061, type: !2969)
!3823 = !DILocation(line: 0, scope: !3818)
!3824 = !DILocation(line: 3064, column: 25, scope: !3818)
!3825 = !DILocation(line: 3064, column: 3, scope: !3818)
!3826 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3827, file: !3827, line: 427, type: !3828, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3830)
!3827 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!718, !2141}
!3830 = !{!3831}
!3831 = !DILocalVariable(name: "use", arg: 1, scope: !3826, file: !3827, line: 427, type: !2141)
!3832 = !DILocation(line: 0, scope: !3826)
!3833 = !DILocation(line: 429, column: 17, scope: !3826)
!3834 = !DILocation(line: 429, column: 10, scope: !3826)
!3835 = !DILocation(line: 429, column: 3, scope: !3826)
!3836 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3827, file: !3827, line: 442, type: !3837, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!2141, !980, !648}
!3839 = !{!3840, !3841}
!3840 = !DILocalVariable(name: "gs", arg: 1, scope: !3836, file: !3827, line: 442, type: !980)
!3841 = !DILocalVariable(name: "i", arg: 2, scope: !3836, file: !3827, line: 442, type: !648)
!3842 = !DILocation(line: 0, scope: !3836)
!3843 = !DILocation(line: 444, column: 11, scope: !3836)
!3844 = !DILocation(line: 444, column: 35, scope: !3836)
!3845 = !DILocation(line: 444, column: 3, scope: !3836)
!3846 = distinct !DISubprogram(name: "gimple_cond_code", scope: !581, file: !581, line: 2221, type: !3847, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!386, !2969}
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "gs", arg: 1, scope: !3846, file: !581, line: 2221, type: !2969)
!3851 = !DILocation(line: 0, scope: !3846)
!3852 = !DILocation(line: 2224, column: 38, scope: !3846)
!3853 = !DILocation(line: 2224, column: 3, scope: !3846)
!3854 = distinct !DISubprogram(name: "gimple_switch_index", scope: !581, file: !581, line: 3180, type: !3749, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3855)
!3855 = !{!3856}
!3856 = !DILocalVariable(name: "gs", arg: 1, scope: !3854, file: !581, line: 3180, type: !2969)
!3857 = !DILocation(line: 0, scope: !3854)
!3858 = !DILocation(line: 3183, column: 10, scope: !3854)
!3859 = !DILocation(line: 3183, column: 3, scope: !3854)
!3860 = distinct !DISubprogram(name: "single_succ_edge", scope: !325, file: !325, line: 643, type: !3546, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3861)
!3861 = !{!3862}
!3862 = !DILocalVariable(name: "bb", arg: 1, scope: !3860, file: !325, line: 643, type: !3505)
!3863 = !DILocation(line: 0, scope: !3860)
!3864 = !DILocation(line: 645, column: 3, scope: !3860)
!3865 = !DILocation(line: 646, column: 10, scope: !3860)
!3866 = !DILocation(line: 646, column: 3, scope: !3860)
!3867 = distinct !DISubprogram(name: "gimple_op", scope: !581, file: !581, line: 1631, type: !3868, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!718, !2969, !7}
!3870 = !{!3871, !3872}
!3871 = !DILocalVariable(name: "gs", arg: 1, scope: !3867, file: !581, line: 1631, type: !2969)
!3872 = !DILocalVariable(name: "i", arg: 2, scope: !3867, file: !581, line: 1631, type: !7)
!3873 = !DILocation(line: 0, scope: !3867)
!3874 = !DILocation(line: 1633, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3867, file: !581, line: 1633, column: 7)
!3876 = !DILocation(line: 1633, column: 7, scope: !3867)
!3877 = !DILocation(line: 1638, column: 14, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !581, line: 1634, column: 5)
!3879 = !DILocation(line: 1638, column: 7, scope: !3878)
!3880 = !DILocation(line: 0, scope: !3875)
!3881 = !DILocation(line: 1642, column: 1, scope: !3867)
!3882 = distinct !DISubprogram(name: "gimple_has_ops", scope: !581, file: !581, line: 1274, type: !3764, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3883)
!3883 = !{!3884}
!3884 = !DILocalVariable(name: "g", arg: 1, scope: !3882, file: !581, line: 1274, type: !2969)
!3885 = !DILocation(line: 0, scope: !3882)
!3886 = !DILocation(line: 1276, column: 10, scope: !3882)
!3887 = !DILocation(line: 1276, column: 26, scope: !3882)
!3888 = !DILocation(line: 1276, column: 41, scope: !3882)
!3889 = !DILocation(line: 1276, column: 44, scope: !3882)
!3890 = !DILocation(line: 1276, column: 60, scope: !3882)
!3891 = !DILocation(line: 1276, column: 3, scope: !3882)
!3892 = distinct !DISubprogram(name: "gimple_ops", scope: !581, file: !581, line: 1614, type: !3893, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!1015, !980}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "gs", arg: 1, scope: !3892, file: !581, line: 1614, type: !980)
!3897 = !DILocalVariable(name: "off", scope: !3892, file: !581, line: 1616, type: !1126)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 1621, column: 28, scope: !3892)
!3900 = !DILocation(line: 1621, column: 9, scope: !3892)
!3901 = !DILocation(line: 1622, column: 3, scope: !3892)
!3902 = !DILocation(line: 1624, column: 20, scope: !3892)
!3903 = !DILocation(line: 1624, column: 32, scope: !3892)
!3904 = !DILocation(line: 1624, column: 10, scope: !3892)
!3905 = !DILocation(line: 1624, column: 3, scope: !3892)
!3906 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !581, file: !581, line: 1073, type: !3907, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!619, !980}
!3909 = !{!3910}
!3910 = !DILocalVariable(name: "gs", arg: 1, scope: !3906, file: !581, line: 1073, type: !980)
!3911 = !DILocation(line: 0, scope: !3906)
!3912 = !DILocation(line: 1075, column: 24, scope: !3906)
!3913 = !DILocation(line: 1075, column: 10, scope: !3906)
!3914 = !DILocation(line: 1075, column: 3, scope: !3906)
!3915 = distinct !DISubprogram(name: "gss_for_code", scope: !581, file: !581, line: 1061, type: !3916, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!619, !580}
!3918 = !{!3919}
!3919 = !DILocalVariable(name: "code", arg: 1, scope: !3915, file: !581, line: 1061, type: !580)
!3920 = !DILocation(line: 0, scope: !3915)
!3921 = !DILocation(line: 1066, column: 10, scope: !3915)
!3922 = !DILocation(line: 1066, column: 3, scope: !3915)
!3923 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !581, file: !581, line: 3100, type: !3924, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!3926, !980, !7}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!3927 = !{!3928, !3929}
!3928 = !DILocalVariable(name: "gs", arg: 1, scope: !3923, file: !581, line: 3100, type: !980)
!3929 = !DILocalVariable(name: "index", arg: 2, scope: !3923, file: !581, line: 3100, type: !7)
!3930 = !DILocation(line: 0, scope: !3923)
!3931 = !DILocation(line: 3103, column: 3, scope: !3923)
!3932 = !DILocation(line: 3104, column: 12, scope: !3923)
!3933 = !DILocation(line: 3104, column: 3, scope: !3923)
!3934 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !581, file: !581, line: 215, type: !3935, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!647, !3789}
!3937 = !{!3938}
!3938 = !DILocalVariable(name: "s", arg: 1, scope: !3934, file: !581, line: 215, type: !3789)
!3939 = !DILocation(line: 0, scope: !3934)
!3940 = !DILocation(line: 217, column: 12, scope: !3934)
!3941 = !DILocation(line: 217, column: 20, scope: !3934)
!3942 = !DILocation(line: 217, column: 26, scope: !3934)
!3943 = !DILocation(line: 217, column: 32, scope: !3934)
!3944 = !DILocation(line: 217, column: 3, scope: !3934)
!3945 = distinct !DISubprogram(name: "phi_nodes", scope: !3827, file: !3827, line: 508, type: !3773, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3946)
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "bb", arg: 1, scope: !3945, file: !3827, line: 508, type: !3505)
!3948 = !DILocation(line: 0, scope: !3945)
!3949 = !DILocation(line: 510, column: 3, scope: !3945)
!3950 = !DILocation(line: 511, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3945, file: !3827, line: 511, column: 7)
!3952 = !DILocation(line: 511, column: 8, scope: !3951)
!3953 = !DILocation(line: 511, column: 7, scope: !3945)
!3954 = !DILocation(line: 513, column: 25, scope: !3945)
!3955 = !DILocation(line: 513, column: 3, scope: !3945)
!3956 = !DILocation(line: 514, column: 1, scope: !3945)
!3957 = distinct !DISubprogram(name: "gimple_label_label", scope: !581, file: !581, line: 2444, type: !3749, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "gs", arg: 1, scope: !3957, file: !581, line: 2444, type: !2969)
!3960 = !DILocation(line: 0, scope: !3957)
!3961 = !DILocation(line: 2447, column: 10, scope: !3957)
!3962 = !DILocation(line: 2447, column: 3, scope: !3957)
!3963 = distinct !DISubprogram(name: "gsi_prev", scope: !581, file: !581, line: 4493, type: !3964, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3967)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "i", arg: 1, scope: !3963, file: !581, line: 4493, type: !3966)
!3969 = !DILocation(line: 0, scope: !3963)
!3970 = !DILocation(line: 4495, column: 15, scope: !3963)
!3971 = !DILocation(line: 4495, column: 20, scope: !3963)
!3972 = !DILocation(line: 4495, column: 10, scope: !3963)
!3973 = !DILocation(line: 4496, column: 1, scope: !3963)
!3974 = distinct !DISubprogram(name: "has_abnormal_incoming_edge_p", scope: !3, file: !3, line: 338, type: !2919, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3975 = !{!3976, !3977, !3978}
!3976 = !DILocalVariable(name: "bb", arg: 1, scope: !3974, file: !3, line: 338, type: !1623)
!3977 = !DILocalVariable(name: "e", scope: !3974, file: !3, line: 340, type: !960)
!3978 = !DILocalVariable(name: "ei", scope: !3974, file: !3, line: 341, type: !2990)
!3979 = !DILocation(line: 0, scope: !3974)
!3980 = !DILocation(line: 340, column: 3, scope: !3974)
!3981 = !DILocation(line: 341, column: 3, scope: !3974)
!3982 = !DILocation(line: 343, column: 3, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 343, column: 3)
!3984 = !DILocation(line: 0, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 343, column: 3)
!3986 = !DILocation(line: 343, column: 3, scope: !3985)
!3987 = !DILocation(line: 344, column: 9, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 344, column: 9)
!3989 = !DILocation(line: 344, column: 12, scope: !3988)
!3990 = !DILocation(line: 344, column: 18, scope: !3988)
!3991 = !DILocation(line: 344, column: 9, scope: !3985)
!3992 = distinct !{!3992, !3982, !3993}
!3993 = !DILocation(line: 345, column: 14, scope: !3983)
!3994 = !DILocation(line: 348, column: 1, scope: !3974)
!3995 = distinct !DISubprogram(name: "phi_alternatives_equal", scope: !3, file: !3, line: 355, type: !3996, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!647, !1623, !960, !960}
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005, !4009, !4010}
!3999 = !DILocalVariable(name: "dest", arg: 1, scope: !3995, file: !3, line: 355, type: !1623)
!4000 = !DILocalVariable(name: "e1", arg: 2, scope: !3995, file: !3, line: 355, type: !960)
!4001 = !DILocalVariable(name: "e2", arg: 3, scope: !3995, file: !3, line: 355, type: !960)
!4002 = !DILocalVariable(name: "n1", scope: !3995, file: !3, line: 357, type: !648)
!4003 = !DILocalVariable(name: "n2", scope: !3995, file: !3, line: 358, type: !648)
!4004 = !DILocalVariable(name: "gsi", scope: !3995, file: !3, line: 359, type: !2708)
!4005 = !DILocalVariable(name: "phi", scope: !4006, file: !3, line: 363, type: !980)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 362, column: 5)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 361, column: 3)
!4008 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 361, column: 3)
!4009 = !DILocalVariable(name: "val1", scope: !4006, file: !3, line: 364, type: !718)
!4010 = !DILocalVariable(name: "val2", scope: !4006, file: !3, line: 365, type: !718)
!4011 = !DILocation(line: 0, scope: !3995)
!4012 = !DILocation(line: 357, column: 16, scope: !3995)
!4013 = !DILocation(line: 358, column: 16, scope: !3995)
!4014 = !DILocation(line: 359, column: 3, scope: !3995)
!4015 = !DILocation(line: 361, column: 14, scope: !4008)
!4016 = !DILocation(line: 0, scope: !4006)
!4017 = !DILocation(line: 361, column: 8, scope: !4008)
!4018 = !DILocation(line: 361, column: 38, scope: !4007)
!4019 = !DILocation(line: 361, column: 37, scope: !4007)
!4020 = !DILocation(line: 361, column: 3, scope: !4008)
!4021 = !DILocation(line: 363, column: 20, scope: !4006)
!4022 = !DILocation(line: 364, column: 19, scope: !4006)
!4023 = !DILocation(line: 365, column: 19, scope: !4006)
!4024 = !DILocation(line: 367, column: 7, scope: !4006)
!4025 = !DILocation(line: 368, column: 7, scope: !4006)
!4026 = !DILocation(line: 370, column: 12, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 370, column: 11)
!4028 = !DILocation(line: 361, column: 55, scope: !4007)
!4029 = !DILocation(line: 361, column: 3, scope: !4007)
!4030 = distinct !{!4030, !4020, !4031}
!4031 = !DILocation(line: 372, column: 5, scope: !4008)
!4032 = !DILocation(line: 375, column: 1, scope: !3995)
!4033 = distinct !DISubprogram(name: "gimple_phi_arg_location_from_edge", scope: !3827, file: !3827, line: 483, type: !4034, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!842, !980, !960}
!4036 = !{!4037, !4038}
!4037 = !DILocalVariable(name: "gs", arg: 1, scope: !4033, file: !3827, line: 483, type: !980)
!4038 = !DILocalVariable(name: "e", arg: 2, scope: !4033, file: !3827, line: 483, type: !960)
!4039 = !DILocation(line: 0, scope: !4033)
!4040 = !DILocation(line: 485, column: 33, scope: !4033)
!4041 = !DILocation(line: 485, column: 10, scope: !4033)
!4042 = !DILocation(line: 485, column: 44, scope: !4033)
!4043 = !DILocation(line: 485, column: 3, scope: !4033)
!4044 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !3827, file: !3827, line: 450, type: !4045, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!718, !980, !1126}
!4047 = !{!4048, !4049, !4050}
!4048 = !DILocalVariable(name: "gs", arg: 1, scope: !4044, file: !3827, line: 450, type: !980)
!4049 = !DILocalVariable(name: "index", arg: 2, scope: !4044, file: !3827, line: 450, type: !1126)
!4050 = !DILocalVariable(name: "pd", scope: !4044, file: !3827, line: 452, type: !3926)
!4051 = !DILocation(line: 0, scope: !4044)
!4052 = !DILocation(line: 452, column: 46, scope: !4044)
!4053 = !DILocation(line: 452, column: 26, scope: !4044)
!4054 = !DILocation(line: 453, column: 33, scope: !4044)
!4055 = !DILocation(line: 453, column: 10, scope: !4044)
!4056 = !DILocation(line: 453, column: 3, scope: !4044)
!4057 = distinct !DISubprogram(name: "gsi_next", scope: !581, file: !581, line: 4485, type: !3964, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "i", arg: 1, scope: !4057, file: !581, line: 4485, type: !3966)
!4060 = !DILocation(line: 0, scope: !4057)
!4061 = !DILocation(line: 4487, column: 15, scope: !4057)
!4062 = !DILocation(line: 4487, column: 20, scope: !4057)
!4063 = !DILocation(line: 4487, column: 10, scope: !4057)
!4064 = !DILocation(line: 4488, column: 1, scope: !4057)
!4065 = distinct !DISubprogram(name: "gsi_start_bb", scope: !581, file: !581, line: 4418, type: !3555, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DILocalVariable(name: "bb", arg: 1, scope: !4065, file: !581, line: 4418, type: !1623)
!4068 = !DILocalVariable(name: "i", scope: !4065, file: !581, line: 4420, type: !2708)
!4069 = !DILocalVariable(name: "seq", scope: !4065, file: !581, line: 4421, type: !970)
!4070 = !DILocation(line: 0, scope: !4065)
!4071 = !DILocation(line: 4420, column: 24, scope: !4065)
!4072 = !DILocation(line: 4423, column: 9, scope: !4065)
!4073 = !DILocation(line: 4424, column: 11, scope: !4065)
!4074 = !DILocation(line: 4424, column: 5, scope: !4065)
!4075 = !DILocation(line: 4424, column: 9, scope: !4065)
!4076 = !DILocation(line: 4425, column: 5, scope: !4065)
!4077 = !DILocation(line: 4425, column: 9, scope: !4065)
!4078 = !DILocation(line: 4426, column: 5, scope: !4065)
!4079 = !DILocation(line: 4426, column: 8, scope: !4065)
!4080 = !DILocation(line: 4429, column: 1, scope: !4065)
!4081 = distinct !DISubprogram(name: "is_gimple_debug", scope: !581, file: !581, line: 3249, type: !3764, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4082)
!4082 = !{!4083}
!4083 = !DILocalVariable(name: "gs", arg: 1, scope: !4081, file: !581, line: 3249, type: !2969)
!4084 = !DILocation(line: 0, scope: !4081)
!4085 = !DILocation(line: 3251, column: 10, scope: !4081)
!4086 = !DILocation(line: 3251, column: 27, scope: !4081)
!4087 = !DILocation(line: 3251, column: 3, scope: !4081)
!4088 = distinct !DISubprogram(name: "gsi_after_labels", scope: !581, file: !581, line: 4510, type: !3555, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4089)
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "bb", arg: 1, scope: !4088, file: !581, line: 4510, type: !1623)
!4091 = !DILocalVariable(name: "gsi", scope: !4088, file: !581, line: 4512, type: !2708)
!4092 = !DILocation(line: 0, scope: !4088)
!4093 = !DILocation(line: 4512, column: 24, scope: !4088)
!4094 = !DILocation(line: 4512, column: 30, scope: !4088)
!4095 = !DILocation(line: 4514, column: 3, scope: !4088)
!4096 = !DILocation(line: 4514, column: 11, scope: !4088)
!4097 = !DILocation(line: 4514, column: 27, scope: !4088)
!4098 = !DILocation(line: 4514, column: 43, scope: !4088)
!4099 = !DILocation(line: 4514, column: 30, scope: !4088)
!4100 = !DILocation(line: 4514, column: 59, scope: !4088)
!4101 = !DILocation(line: 4515, column: 5, scope: !4088)
!4102 = distinct !{!4102, !4095, !4103}
!4103 = !DILocation(line: 4515, column: 19, scope: !4088)
!4104 = !DILocation(line: 4517, column: 3, scope: !4088)
!4105 = distinct !DISubprogram(name: "gimple_seq_first", scope: !581, file: !581, line: 159, type: !3787, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4106)
!4106 = !{!4107}
!4107 = !DILocalVariable(name: "s", arg: 1, scope: !4105, file: !581, line: 159, type: !3789)
!4108 = !DILocation(line: 0, scope: !4105)
!4109 = !DILocation(line: 161, column: 10, scope: !4105)
!4110 = !DILocation(line: 161, column: 17, scope: !4105)
!4111 = !DILocation(line: 161, column: 3, scope: !4105)
!4112 = distinct !DISubprogram(name: "loops_state_clear", scope: !336, file: !336, line: 487, type: !2858, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4113)
!4113 = !{!4114}
!4114 = !DILocalVariable(name: "flags", arg: 1, scope: !4112, file: !336, line: 487, type: !7)
!4115 = !DILocation(line: 0, scope: !4112)
!4116 = !DILocation(line: 489, column: 8, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4112, file: !336, line: 489, column: 7)
!4118 = !DILocation(line: 489, column: 7, scope: !4112)
!4119 = !DILocation(line: 491, column: 18, scope: !4112)
!4120 = !DILocation(line: 491, column: 24, scope: !4112)
!4121 = !DILocation(line: 492, column: 1, scope: !4112)
!4122 = distinct !DISubprogram(name: "gimple_phi_result", scope: !581, file: !581, line: 3071, type: !3749, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4123)
!4123 = !{!4124}
!4124 = !DILocalVariable(name: "gs", arg: 1, scope: !4122, file: !581, line: 3071, type: !2969)
!4125 = !DILocation(line: 0, scope: !4122)
!4126 = !DILocation(line: 3074, column: 25, scope: !4122)
!4127 = !DILocation(line: 3074, column: 3, scope: !4122)
!4128 = distinct !DISubprogram(name: "has_zero_uses", scope: !3827, file: !3827, line: 332, type: !4129, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4134)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!647, !4131}
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !656, line: 59, baseType: !4132)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!4134 = !{!4135, !4136}
!4135 = !DILocalVariable(name: "var", arg: 1, scope: !4128, file: !3827, line: 332, type: !4131)
!4136 = !DILocalVariable(name: "ptr", scope: !4128, file: !3827, line: 334, type: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4138)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!4140 = !DILocation(line: 0, scope: !4128)
!4141 = !DILocation(line: 334, column: 42, scope: !4128)
!4142 = !DILocation(line: 337, column: 19, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4128, file: !3827, line: 337, column: 7)
!4144 = !DILocation(line: 337, column: 11, scope: !4143)
!4145 = !DILocation(line: 337, column: 7, scope: !4128)
!4146 = !DILocation(line: 342, column: 8, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4128, file: !3827, line: 342, column: 7)
!4148 = !DILocation(line: 342, column: 7, scope: !4128)
!4149 = !DILocation(line: 345, column: 10, scope: !4128)
!4150 = !DILocation(line: 345, column: 3, scope: !4128)
!4151 = !DILocation(line: 346, column: 1, scope: !4128)
!4152 = distinct !DISubprogram(name: "single_imm_use", scope: !3827, file: !3827, line: 373, type: !4153, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4157)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!647, !4131, !4155, !4156}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!4157 = !{!4158, !4159, !4160, !4161, !4162}
!4158 = !DILocalVariable(name: "var", arg: 1, scope: !4152, file: !3827, line: 373, type: !4131)
!4159 = !DILocalVariable(name: "use_p", arg: 2, scope: !4152, file: !3827, line: 373, type: !4155)
!4160 = !DILocalVariable(name: "stmt", arg: 3, scope: !4152, file: !3827, line: 373, type: !4156)
!4161 = !DILocalVariable(name: "ptr", scope: !4152, file: !3827, line: 375, type: !4137)
!4162 = !DILabel(scope: !4163, name: "return_false", file: !3827, line: 380)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3827, line: 379, column: 5)
!4164 = distinct !DILexicalBlock(scope: !4152, file: !3827, line: 378, column: 7)
!4165 = !DILocation(line: 0, scope: !4152)
!4166 = !DILocation(line: 375, column: 42, scope: !4152)
!4167 = !DILocation(line: 378, column: 19, scope: !4164)
!4168 = !DILocation(line: 378, column: 11, scope: !4164)
!4169 = !DILocation(line: 378, column: 7, scope: !4152)
!4170 = !DILocation(line: 380, column: 5, scope: !4163)
!4171 = !DILocation(line: 381, column: 14, scope: !4163)
!4172 = !DILocation(line: 382, column: 13, scope: !4163)
!4173 = !DILocation(line: 383, column: 7, scope: !4163)
!4174 = !DILocation(line: 387, column: 25, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4152, file: !3827, line: 387, column: 7)
!4176 = !DILocation(line: 387, column: 11, scope: !4175)
!4177 = !DILocation(line: 387, column: 7, scope: !4152)
!4178 = !DILocation(line: 389, column: 29, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !3827, line: 389, column: 11)
!4180 = distinct !DILexicalBlock(scope: !4175, file: !3827, line: 388, column: 5)
!4181 = !DILocation(line: 389, column: 12, scope: !4179)
!4182 = !DILocation(line: 389, column: 11, scope: !4180)
!4183 = !DILocation(line: 391, column: 18, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4179, file: !3827, line: 390, column: 2)
!4185 = !DILocation(line: 391, column: 11, scope: !4184)
!4186 = !DILocation(line: 392, column: 17, scope: !4184)
!4187 = !DILocation(line: 392, column: 27, scope: !4184)
!4188 = !DILocation(line: 392, column: 10, scope: !4184)
!4189 = !DILocation(line: 393, column: 4, scope: !4184)
!4190 = !DILocation(line: 400, column: 8, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4152, file: !3827, line: 400, column: 7)
!4192 = !DILocation(line: 400, column: 7, scope: !4152)
!4193 = !DILocation(line: 403, column: 10, scope: !4152)
!4194 = !DILocation(line: 403, column: 3, scope: !4152)
!4195 = !DILocation(line: 404, column: 1, scope: !4152)
!4196 = distinct !DISubprogram(name: "remove_forwarder_block_with_phi", scope: !3, file: !3, line: 772, type: !4197, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !1623}
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4209, !4210, !4211, !4215, !4216, !4217, !4239, !4241, !4242, !4246}
!4200 = !DILocalVariable(name: "bb", arg: 1, scope: !4196, file: !3, line: 772, type: !1623)
!4201 = !DILocalVariable(name: "succ", scope: !4196, file: !3, line: 774, type: !960)
!4202 = !DILocalVariable(name: "dest", scope: !4196, file: !3, line: 775, type: !1623)
!4203 = !DILocalVariable(name: "label", scope: !4196, file: !3, line: 776, type: !980)
!4204 = !DILocalVariable(name: "dombb", scope: !4196, file: !3, line: 777, type: !1623)
!4205 = !DILocalVariable(name: "domdest", scope: !4196, file: !3, line: 777, type: !1623)
!4206 = !DILocalVariable(name: "dom", scope: !4196, file: !3, line: 777, type: !1623)
!4207 = !DILocalVariable(name: "e", scope: !4208, file: !3, line: 796, type: !960)
!4208 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 795, column: 5)
!4209 = !DILocalVariable(name: "s", scope: !4208, file: !3, line: 796, type: !960)
!4210 = !DILocalVariable(name: "gsi", scope: !4208, file: !3, line: 797, type: !2708)
!4211 = !DILocalVariable(name: "phi", scope: !4212, file: !3, line: 829, type: !980)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 828, column: 2)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 825, column: 7)
!4214 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 825, column: 7)
!4215 = !DILocalVariable(name: "def", scope: !4212, file: !3, line: 830, type: !718)
!4216 = !DILocalVariable(name: "locus", scope: !4212, file: !3, line: 831, type: !842)
!4217 = !DILocalVariable(name: "head", scope: !4218, file: !3, line: 835, type: !4220)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 834, column: 6)
!4219 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 833, column: 8)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_var_map_vector", file: !1407, line: 563, baseType: !4221)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_var_map_heap", file: !1407, line: 560, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_var_map_heap", file: !1407, line: 560, size: 256, elements: !4224)
!4224 = !{!4225}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4223, file: !1407, line: 560, baseType: !4226, size: 256)
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_var_map_base", file: !1407, line: 559, baseType: !4227)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_var_map_base", file: !1407, line: 559, size: 256, elements: !4228)
!4228 = !{!4229, !4230, !4231}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4227, file: !1407, line: 559, baseType: !7, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4227, file: !1407, line: 559, baseType: !7, size: 32, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !4227, file: !1407, line: 559, baseType: !4232, size: 192, offset: 64)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4233, size: 192, elements: !814)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_var_map", file: !1407, line: 557, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge_var_map", file: !1407, line: 552, size: 192, elements: !4235)
!4235 = !{!4236, !4237, !4238}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4234, file: !1407, line: 553, baseType: !718, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4234, file: !1407, line: 554, baseType: !718, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !4234, file: !1407, line: 555, baseType: !842, size: 32, offset: 128)
!4239 = !DILocalVariable(name: "vm", scope: !4218, file: !3, line: 836, type: !4240)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4241 = !DILocalVariable(name: "i", scope: !4218, file: !3, line: 837, type: !1126)
!4242 = !DILocalVariable(name: "old_arg", scope: !4243, file: !3, line: 845, type: !718)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 844, column: 3)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 843, column: 8)
!4245 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 843, column: 8)
!4246 = !DILocalVariable(name: "new_arg", scope: !4243, file: !3, line: 846, type: !718)
!4247 = !DILocation(line: 0, scope: !4196)
!4248 = !DILocation(line: 774, column: 15, scope: !4196)
!4249 = !DILocation(line: 775, column: 28, scope: !4196)
!4250 = !DILocation(line: 782, column: 12, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 782, column: 7)
!4252 = !DILocation(line: 782, column: 7, scope: !4196)
!4253 = !DILocation(line: 787, column: 11, scope: !4196)
!4254 = !DILocation(line: 788, column: 7, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 788, column: 7)
!4256 = !DILocation(line: 789, column: 7, scope: !4255)
!4257 = !DILocation(line: 789, column: 10, scope: !4255)
!4258 = !DILocation(line: 789, column: 30, scope: !4255)
!4259 = !DILocation(line: 790, column: 7, scope: !4255)
!4260 = !DILocation(line: 790, column: 10, scope: !4255)
!4261 = !DILocation(line: 788, column: 7, scope: !4196)
!4262 = !DILocation(line: 0, scope: !4208)
!4263 = !DILocation(line: 0, scope: !4214)
!4264 = !DILocation(line: 0, scope: !4212)
!4265 = !DILocation(line: 0, scope: !4218)
!4266 = !DILocation(line: 794, column: 3, scope: !4196)
!4267 = !DILocation(line: 794, column: 10, scope: !4196)
!4268 = !DILocation(line: 794, column: 33, scope: !4196)
!4269 = !DILocation(line: 796, column: 16, scope: !4208)
!4270 = !DILocation(line: 797, column: 7, scope: !4208)
!4271 = !DILocation(line: 799, column: 25, scope: !4208)
!4272 = !DILocation(line: 799, column: 11, scope: !4208)
!4273 = !DILocation(line: 800, column: 11, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 800, column: 11)
!4275 = !DILocation(line: 800, column: 11, scope: !4208)
!4276 = !DILocation(line: 805, column: 8, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 805, column: 8)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 801, column: 2)
!4279 = !DILocation(line: 805, column: 8, scope: !4278)
!4280 = !DILocation(line: 807, column: 12, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 806, column: 6)
!4282 = !DILocation(line: 808, column: 8, scope: !4281)
!4283 = !DILocation(line: 809, column: 8, scope: !4281)
!4284 = distinct !{!4284, !4266, !4285}
!4285 = !DILocation(line: 861, column: 5, scope: !4196)
!4286 = !DILocation(line: 815, column: 26, scope: !4278)
!4287 = !DILocation(line: 815, column: 8, scope: !4278)
!4288 = !DILocation(line: 816, column: 2, scope: !4278)
!4289 = !DILocation(line: 818, column: 11, scope: !4208)
!4290 = !DILocation(line: 821, column: 7, scope: !4208)
!4291 = !DILocation(line: 825, column: 18, scope: !4214)
!4292 = !DILocation(line: 825, column: 12, scope: !4214)
!4293 = !DILocation(line: 826, column: 6, scope: !4213)
!4294 = !DILocation(line: 826, column: 5, scope: !4213)
!4295 = !DILocation(line: 825, column: 7, scope: !4214)
!4296 = !DILocation(line: 829, column: 17, scope: !4212)
!4297 = !DILocation(line: 830, column: 46, scope: !4212)
!4298 = !DILocation(line: 830, column: 40, scope: !4212)
!4299 = !DILocation(line: 830, column: 15, scope: !4212)
!4300 = !DILocation(line: 831, column: 28, scope: !4212)
!4301 = !DILocation(line: 833, column: 8, scope: !4219)
!4302 = !DILocation(line: 833, column: 24, scope: !4219)
!4303 = !DILocation(line: 833, column: 8, scope: !4212)
!4304 = !DILocation(line: 836, column: 8, scope: !4218)
!4305 = !DILocation(line: 842, column: 15, scope: !4218)
!4306 = !DILocation(line: 0, scope: !4244)
!4307 = !DILocation(line: 843, column: 13, scope: !4245)
!4308 = !DILocation(line: 0, scope: !4245)
!4309 = !DILocation(line: 843, column: 20, scope: !4244)
!4310 = !DILocation(line: 843, column: 8, scope: !4245)
!4311 = !DILocation(line: 845, column: 50, scope: !4243)
!4312 = !DILocation(line: 845, column: 20, scope: !4243)
!4313 = !DILocation(line: 0, scope: !4243)
!4314 = !DILocation(line: 846, column: 47, scope: !4243)
!4315 = !DILocation(line: 846, column: 20, scope: !4243)
!4316 = !DILocation(line: 848, column: 13, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 848, column: 9)
!4318 = !DILocation(line: 848, column: 9, scope: !4243)
!4319 = !DILocation(line: 851, column: 49, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 849, column: 7)
!4321 = !DILocation(line: 851, column: 17, scope: !4320)
!4322 = !DILocation(line: 852, column: 9, scope: !4320)
!4323 = !DILocation(line: 843, column: 61, scope: !4244)
!4324 = !DILocation(line: 843, column: 8, scope: !4244)
!4325 = distinct !{!4325, !4310, !4326}
!4326 = !DILocation(line: 854, column: 3, scope: !4245)
!4327 = !DILocation(line: 855, column: 6, scope: !4219)
!4328 = !DILocation(line: 855, column: 6, scope: !4218)
!4329 = !DILocation(line: 857, column: 4, scope: !4212)
!4330 = !DILocation(line: 827, column: 5, scope: !4213)
!4331 = !DILocation(line: 825, column: 7, scope: !4213)
!4332 = distinct !{!4332, !4295, !4333}
!4333 = !DILocation(line: 858, column: 2, scope: !4214)
!4334 = !DILocation(line: 860, column: 7, scope: !4208)
!4335 = !DILocation(line: 864, column: 11, scope: !4196)
!4336 = !DILocation(line: 865, column: 13, scope: !4196)
!4337 = !DILocation(line: 866, column: 15, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 866, column: 7)
!4339 = !DILocation(line: 866, column: 7, scope: !4196)
!4340 = !DILocation(line: 873, column: 11, scope: !4338)
!4341 = !DILocation(line: 0, scope: !4338)
!4342 = !DILocation(line: 875, column: 3, scope: !4196)
!4343 = !DILocation(line: 879, column: 3, scope: !4196)
!4344 = !DILocation(line: 880, column: 1, scope: !4196)
!4345 = distinct !DISubprogram(name: "VEC_edge_var_map_base_iterate", scope: !1407, file: !1407, line: 559, type: !4346, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!648, !4348, !7, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4350 = !{!4351, !4352, !4353}
!4351 = !DILocalVariable(name: "vec_", arg: 1, scope: !4345, file: !1407, line: 559, type: !4348)
!4352 = !DILocalVariable(name: "ix_", arg: 2, scope: !4345, file: !1407, line: 559, type: !7)
!4353 = !DILocalVariable(name: "ptr", arg: 3, scope: !4345, file: !1407, line: 559, type: !4349)
!4354 = !DILocation(line: 0, scope: !4345)
!4355 = !DILocation(line: 559, column: 1, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4345, file: !1407, line: 559, column: 1)
!4357 = !DILocation(line: 559, column: 1, scope: !4345)
!4358 = !DILocation(line: 559, column: 1, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !1407, line: 559, column: 1)
!4360 = !DILocation(line: 559, column: 1, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4356, file: !1407, line: 559, column: 1)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = distinct !DISubprogram(name: "redirect_edge_var_map_result", scope: !3827, file: !3827, line: 1227, type: !4364, scopeLine: 1228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!718, !4240}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "v", arg: 1, scope: !4363, file: !3827, line: 1227, type: !4240)
!4368 = !DILocation(line: 0, scope: !4363)
!4369 = !DILocation(line: 1229, column: 13, scope: !4363)
!4370 = !DILocation(line: 1229, column: 3, scope: !4363)
!4371 = distinct !DISubprogram(name: "redirect_edge_var_map_def", scope: !3827, file: !3827, line: 1219, type: !4364, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4372)
!4372 = !{!4373}
!4373 = !DILocalVariable(name: "v", arg: 1, scope: !4371, file: !3827, line: 1219, type: !4240)
!4374 = !DILocation(line: 0, scope: !4371)
!4375 = !DILocation(line: 1221, column: 13, scope: !4371)
!4376 = !DILocation(line: 1221, column: 3, scope: !4371)
!4377 = distinct !DISubprogram(name: "redirect_edge_var_map_location", scope: !3827, file: !3827, line: 1235, type: !4378, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!842, !4240}
!4380 = !{!4381}
!4381 = !DILocalVariable(name: "v", arg: 1, scope: !4377, file: !3827, line: 1235, type: !4240)
!4382 = !DILocation(line: 0, scope: !4377)
!4383 = !DILocation(line: 1237, column: 13, scope: !4377)
!4384 = !DILocation(line: 1237, column: 3, scope: !4377)
