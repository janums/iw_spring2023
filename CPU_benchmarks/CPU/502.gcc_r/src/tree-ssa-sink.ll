; ModuleID = 'tree-ssa-sink.bc'
source_filename = "tree-ssa-sink.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32 }
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
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-sink.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@pass_sink_code = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_sink, i32 ()* @do_sink, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 72, i32 104, i32 0, i32 0, i32 0, i32 2055 } }, align 8, !dbg !0
@flag_tree_sink = external dso_local local_unnamed_addr global i32, align 4
@sink_stats = internal global %struct.anon zeroinitializer, align 4, !dbg !2015
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Sunk statements\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Sinking \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" from bb %d to bb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"Not moving store, common dominator post-dominates from block.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Common dominator of all uses is %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2064, metadata !DIExpression()), !dbg !2065
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2066
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2067
  ret i32 %call, !dbg !2068
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2069 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2073
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2074
  ret i32 %call, !dbg !2075
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2076 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2131, metadata !DIExpression()), !dbg !2132
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2133
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2133
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2133
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2133
  %cmp = icmp uge i8* %0, %1, !dbg !2133
  %conv1 = zext i1 %cmp to i64, !dbg !2133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2133
  %tobool = icmp eq i64 %expval, 0, !dbg !2133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2133

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2133
  br label %cond.end, !dbg !2133

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2133
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2133
  %2 = load i8, i8* %0, align 1, !dbg !2133
  %conv3 = zext i8 %2 to i32, !dbg !2133
  br label %cond.end, !dbg !2133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2133
  ret i32 %cond, !dbg !2134
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2137, metadata !DIExpression()), !dbg !2138
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2139
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2139
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2139
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2139
  %cmp = icmp uge i8* %0, %1, !dbg !2139
  %conv1 = zext i1 %cmp to i64, !dbg !2139
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2139
  %tobool = icmp eq i64 %expval, 0, !dbg !2139
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2139

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2139
  br label %cond.end, !dbg !2139

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2139
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2139
  %2 = load i8, i8* %0, align 1, !dbg !2139
  %conv3 = zext i8 %2 to i32, !dbg !2139
  br label %cond.end, !dbg !2139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2139
  ret i32 %cond, !dbg !2140
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2141 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2142
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2142
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2142
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2142
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2142
  %cmp = icmp uge i8* %1, %2, !dbg !2142
  %conv1 = zext i1 %cmp to i64, !dbg !2142
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2142
  %tobool = icmp eq i64 %expval, 0, !dbg !2142
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2142

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2142
  br label %cond.end, !dbg !2142

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2142
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2142
  %3 = load i8, i8* %1, align 1, !dbg !2142
  %conv3 = zext i8 %3 to i32, !dbg !2142
  br label %cond.end, !dbg !2142

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2142
  ret i32 %cond, !dbg !2143
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2148, metadata !DIExpression()), !dbg !2149
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2150
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2151
  ret i32 %call, !dbg !2152
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2158, metadata !DIExpression()), !dbg !2159
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2160
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2160
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2160
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2160
  %cmp = icmp uge i8* %0, %1, !dbg !2160
  %conv1 = zext i1 %cmp to i64, !dbg !2160
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2160
  %tobool = icmp eq i64 %expval, 0, !dbg !2160
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2160

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2160
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2160
  br label %cond.end, !dbg !2160

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2160
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2160
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2160
  store i8 %conv2, i8* %0, align 1, !dbg !2160
  %conv6 = and i32 %__c, 255, !dbg !2160
  br label %cond.end, !dbg !2160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2160
  ret i32 %cond, !dbg !2161
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2164, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2165, metadata !DIExpression()), !dbg !2166
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2167
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2167
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2167
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2167
  %cmp = icmp uge i8* %0, %1, !dbg !2167
  %conv1 = zext i1 %cmp to i64, !dbg !2167
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2167
  %tobool = icmp eq i64 %expval, 0, !dbg !2167
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2167

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2167
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2167
  br label %cond.end, !dbg !2167

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2167
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2167
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2167
  store i8 %conv2, i8* %0, align 1, !dbg !2167
  %conv6 = and i32 %__c, 255, !dbg !2167
  br label %cond.end, !dbg !2167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2167
  ret i32 %cond, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2171, metadata !DIExpression()), !dbg !2172
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2173
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2173
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2173
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2173
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2173
  %cmp = icmp uge i8* %1, %2, !dbg !2173
  %conv1 = zext i1 %cmp to i64, !dbg !2173
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2173
  %tobool = icmp eq i64 %expval, 0, !dbg !2173
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2173

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2173
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2173
  br label %cond.end, !dbg !2173

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2173
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2173
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2173
  store i8 %conv4, i8* %1, align 1, !dbg !2173
  %conv6 = and i32 %__c, 255, !dbg !2173
  br label %cond.end, !dbg !2173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2173
  ret i32 %cond, !dbg !2174
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2183, metadata !DIExpression()), !dbg !2184
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2185
  ret i64 %call, !dbg !2186
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2189, metadata !DIExpression()), !dbg !2190
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2191
  %0 = load i32, i32* %_flags, align 8, !dbg !2191
  %and = lshr i32 %0, 4, !dbg !2191
  %and.lobit = and i32 %and, 1, !dbg !2191
  ret i32 %and.lobit, !dbg !2192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2195, metadata !DIExpression()), !dbg !2196
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2197
  %0 = load i32, i32* %_flags, align 8, !dbg !2197
  %and = lshr i32 %0, 5, !dbg !2197
  %and.lobit = and i32 %and, 1, !dbg !2197
  ret i32 %and.lobit, !dbg !2198
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2199 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2202, metadata !DIExpression()), !dbg !2203
  %__c.off = add i32 %__c, 128, !dbg !2204
  %0 = icmp ult i32 %__c.off, 384, !dbg !2204
  br i1 %0, label %cond.true, label %cond.end, !dbg !2204

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2205
  %1 = load i32*, i32** %call, align 8, !dbg !2206
  %idxprom = sext i32 %__c to i64, !dbg !2207
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2207
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2207
  br label %cond.end, !dbg !2208

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2208
  ret i32 %cond, !dbg !2209
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2210 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2212, metadata !DIExpression()), !dbg !2213
  %__c.off = add i32 %__c, 128, !dbg !2214
  %0 = icmp ult i32 %__c.off, 384, !dbg !2214
  br i1 %0, label %cond.true, label %cond.end, !dbg !2214

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2215
  %1 = load i32*, i32** %call, align 8, !dbg !2216
  %idxprom = sext i32 %__c to i64, !dbg !2217
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2217
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2217
  br label %cond.end, !dbg !2218

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2218
  ret i32 %cond, !dbg !2219
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2227
  %conv = trunc i64 %call to i32, !dbg !2228
  ret i32 %conv, !dbg !2229
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2230 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2236
  ret i64 %call, !dbg !2237
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2245
  ret i64 %call, !dbg !2246
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2253, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2254, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2255, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2256, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2257, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 0, metadata !2258, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2259, metadata !DIExpression()), !dbg !2263
  br label %while.cond, !dbg !2264

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2265
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2258, metadata !DIExpression()), !dbg !2263
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2266
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2264

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2267
  %div = lshr i64 %add, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %div, metadata !2260, metadata !DIExpression()), !dbg !2263
  %mul = mul i64 %div, %__size, !dbg !2270
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2261, metadata !DIExpression()), !dbg !2263
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %call, metadata !2262, metadata !DIExpression()), !dbg !2263
  %cmp1 = icmp slt i32 %call, 0, !dbg !2273
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2275

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2276
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2278

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2258, metadata !DIExpression()), !dbg !2263
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2263
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2258, metadata !DIExpression()), !dbg !2263
  br label %while.cond, !dbg !2264, !llvm.loop !2280

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2263
  ret i8* %retval.0, !dbg !2282
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2289, metadata !DIExpression()), !dbg !2290
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2291
  ret double %call, !dbg !2292
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2293 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %base, metadata !2304, metadata !DIExpression()), !dbg !2305
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2306
  ret i64 %call, !dbg !2307
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2314, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %base, metadata !2316, metadata !DIExpression()), !dbg !2317
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2318
  ret i64 %call, !dbg !2319
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %base, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2335
  ret i64 %call, !dbg !2336
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2341, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %base, metadata !2343, metadata !DIExpression()), !dbg !2344
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2345
  ret i64 %call, !dbg !2346
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2387, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2388, metadata !DIExpression()), !dbg !2389
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2390
  ret i32 %call, !dbg !2391
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2392 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2395, metadata !DIExpression()), !dbg !2396
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2397
  ret i32 %call, !dbg !2398
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2399 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2404, metadata !DIExpression()), !dbg !2405
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2406
  ret i32 %call, !dbg !2407
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2408 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2412, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2413, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2414, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2415, metadata !DIExpression()), !dbg !2416
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2417
  ret i32 %call, !dbg !2418
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2419 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2424, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2426
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2427
  ret i32 %call, !dbg !2428
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2429 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2436, metadata !DIExpression(DW_OP_deref)), !dbg !2437
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2438
  ret i32 %call, !dbg !2439
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2465, metadata !DIExpression()), !dbg !2466
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2467
  ret i32 %call, !dbg !2468
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2469 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2472, metadata !DIExpression()), !dbg !2473
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2474
  ret i32 %call, !dbg !2475
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2481, metadata !DIExpression()), !dbg !2482
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2483
  ret i32 %call, !dbg !2484
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2492, metadata !DIExpression()), !dbg !2493
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2494
  ret i32 %call, !dbg !2495
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_hidden_global_store(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2496 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2500, metadata !DIExpression()), !dbg !2504
  %call = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !2505
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2505
  br i1 %tobool, label %if.end54, label %if.then, !dbg !2506

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !2507
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2507
  br i1 %tobool2, label %lor.lhs.false, label %cond.end, !dbg !2507

lor.lhs.false:                                    ; preds = %if.then
  %call3 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #7, !dbg !2507
  %tobool5 = icmp eq i8 %call3, 0, !dbg !2507
  br i1 %tobool5, label %cond.true, label %cond.end, !dbg !2507

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2507
  br label %cond.end, !dbg !2507

cond.end:                                         ; preds = %lor.lhs.false, %if.then, %cond.true
  %call6 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !2508
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2501, metadata !DIExpression()), !dbg !2509
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2510
  %bf.load = load i64, i64* %0, align 8, !dbg !2510
  %bf.cast = and i64 %bf.load, 65535, !dbg !2510
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2510
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2510
  %cmp = icmp eq i32 %1, 4, !dbg !2510
  br i1 %cmp, label %if.then8, label %if.end, !dbg !2512

if.then8:                                         ; preds = %cond.end
  %call9 = tail call %union.tree_node* @get_base_address(%union.tree_node* %call6) #6, !dbg !2513
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !2501, metadata !DIExpression()), !dbg !2509
  br label %if.end, !dbg !2514

if.end:                                           ; preds = %if.then8, %cond.end
  %lhs.0 = phi %union.tree_node* [ %call9, %if.then8 ], [ %call6, %cond.end ], !dbg !2509
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.0, metadata !2501, metadata !DIExpression()), !dbg !2509
  %cmp10 = icmp eq %union.tree_node* %lhs.0, null, !dbg !2515
  br i1 %cmp10, label %cleanup, label %if.else, !dbg !2517

if.else:                                          ; preds = %if.end
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2518
  %bf.load14 = load i64, i64* %2, align 8, !dbg !2518
  %bf.cast16 = and i64 %bf.load14, 65535, !dbg !2518
  %arrayidx18 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast16, !dbg !2518
  %3 = load i32, i32* %arrayidx18, align 4, !dbg !2518
  %cmp19 = icmp eq i32 %3, 3, !dbg !2518
  br i1 %cmp19, label %if.then21, label %if.else26, !dbg !2520

if.then21:                                        ; preds = %if.else
  %call22 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* nonnull %lhs.0) #7, !dbg !2521
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2521
  br i1 %tobool23, label %if.end53, label %cleanup, !dbg !2524

if.else26:                                        ; preds = %if.else
  %cmp31 = icmp eq i64 %bf.cast16, 47, !dbg !2525
  br i1 %cmp31, label %if.then47, label %lor.lhs.false33, !dbg !2525

lor.lhs.false33:                                  ; preds = %if.else26
  %cmp38 = icmp eq i64 %bf.cast16, 48, !dbg !2525
  br i1 %cmp38, label %if.then47, label %lor.lhs.false40, !dbg !2525

lor.lhs.false40:                                  ; preds = %lor.lhs.false33
  %cmp45 = icmp eq i64 %bf.cast16, 49, !dbg !2525
  br i1 %cmp45, label %if.then47, label %if.else50, !dbg !2527

if.then47:                                        ; preds = %lor.lhs.false40, %lor.lhs.false33, %if.else26
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2528
  %4 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2528
  %call49 = tail call zeroext i8 @ptr_deref_may_alias_global_p(%union.tree_node* %4) #6, !dbg !2529
  br label %cleanup, !dbg !2530

if.else50:                                        ; preds = %lor.lhs.false40
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2531
  br label %if.end53

if.end53:                                         ; preds = %if.then21, %if.else50
  br label %cleanup, !dbg !2532

cleanup:                                          ; preds = %if.then21, %if.end, %if.end53, %if.then47
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end53 ], [ false, %if.then47 ], [ false, %if.end ], [ false, %if.then21 ]
  %retval.0 = phi i8 [ undef, %if.end53 ], [ %call49, %if.then47 ], [ 1, %if.end ], [ 1, %if.then21 ]
  br i1 %cleanup.dest.slot.0, label %if.end54, label %return

if.end54:                                         ; preds = %entry, %cleanup
  br label %return, !dbg !2533

return:                                           ; preds = %cleanup, %if.end54
  %retval.1 = phi i8 [ %retval.0, %cleanup ], [ 0, %if.end54 ], !dbg !2504
  ret i8 %retval.1, !dbg !2534
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2535 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2540, metadata !DIExpression()), !dbg !2541
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2542
  %tobool = icmp eq i8 %call, 0, !dbg !2542
  br i1 %tobool, label %return, label %if.end, !dbg !2544

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2545
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2545
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2545
  br label %return, !dbg !2546

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2541
  ret %union.tree_node* %retval.0, !dbg !2547
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2552, metadata !DIExpression()), !dbg !2553
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2554
  %cmp = icmp eq i32 %call, 6, !dbg !2555
  %conv1 = zext i1 %cmp to i8, !dbg !2554
  ret i8 %conv1, !dbg !2556
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2557 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2559, metadata !DIExpression()), !dbg !2560
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2561
  %cmp = icmp eq i32 %call, 8, !dbg !2562
  %conv1 = zext i1 %cmp to i8, !dbg !2561
  ret i8 %conv1, !dbg !2563
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2572, metadata !DIExpression()), !dbg !2573
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2574
  %bf.load = load i64, i64* %0, align 8, !dbg !2574
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !2574
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2574
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2575

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2576
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2576
  %bf.load1 = load i64, i64* %1, align 8, !dbg !2576
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !2575
  %2 = trunc i64 %bf.cast42 to i8, !dbg !2575
  %3 = and i8 %2, 1, !dbg !2575
  br label %lor.end, !dbg !2575

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !2577
}

declare dso_local zeroext i8 @ptr_deref_may_alias_global_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_sink() #5 !dbg !2578 {
entry:
  %0 = load i32, i32* @flag_tree_sink, align 4, !dbg !2579
  %cmp = icmp ne i32 %0, 0, !dbg !2580
  %conv1 = zext i1 %cmp to i8, !dbg !2579
  ret i8 %conv1, !dbg !2581
}

; Function Attrs: nounwind uwtable
define internal i32 @do_sink() #5 !dbg !2582 {
entry:
  tail call fastcc void @execute_sink_code() #7, !dbg !2583
  ret i32 0, !dbg !2584
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2585 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2587, metadata !DIExpression()), !dbg !2588
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2589
  %cmp = icmp ugt i32 %call, 5, !dbg !2590
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2591

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2592
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2593
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2594
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2595 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2601
  %bf.load = load i32, i32* %0, align 8, !dbg !2601
  %bf.clear = and i32 %bf.load, 255, !dbg !2601
  ret i32 %bf.clear, !dbg !2602
}

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_sink_code() unnamed_addr #5 !dbg !2603 {
entry:
  tail call void @loop_optimizer_init(i32 7) #6, !dbg !2606
  tail call void @connect_infinite_loops_to_exit() #6, !dbg !2607
  %call = tail call i8* @memset(i8* bitcast (%struct.anon* @sink_stats to i8*), i32 0, i64 4) #6, !dbg !2608
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2609
  tail call void @calculate_dominance_info(i32 2) #6, !dbg !2610
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2611
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2611
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2611
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2611
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2611
  tail call fastcc void @sink_code_in_bb(%struct.basic_block_def* %2) #7, !dbg !2612
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2613
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @sink_stats, i64 0, i32 0), align 4, !dbg !2614
  tail call void @statistics_counter_event(%struct.function* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %4) #6, !dbg !2615
  tail call void @free_dominance_info(i32 2) #6, !dbg !2616
  tail call void @remove_fake_exit_edges() #6, !dbg !2617
  tail call void @loop_optimizer_finalize() #6, !dbg !2618
  ret void, !dbg !2619
}

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #2

declare dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sink_code_in_bb(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2620 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp6 = alloca %struct.gimple_stmt_iterator, align 8
  %togsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp34 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2624, metadata !DIExpression()), !dbg !2648
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2649
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2650
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2651
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2651
  call void @llvm.dbg.value(metadata i8 1, metadata !2641, metadata !DIExpression()), !dbg !2648
  %call = tail call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %bb) #6, !dbg !2652
  %cmp = icmp eq %struct.basic_block_def* %call, null, !dbg !2654
  br i1 %cmp, label %earlyout, label %if.end, !dbg !2655

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2656
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2656
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2656
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2656
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2656
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !2656
  store i32 %5, i32* %4, align 8, !dbg !2656
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2656
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !2656
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !2656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2656
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2658
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2658
  br label %for.cond, !dbg !2656

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %8, align 8, !dbg !2660
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #7, !dbg !2660
  %tobool = icmp eq i8 %call2, 0, !dbg !2656
  br i1 %tobool, label %for.end, label %for.body, !dbg !2656

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2640, metadata !DIExpression()), !dbg !2648
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !2663
  %13 = load i32, i32* %flags, align 8, !dbg !2663
  %and = and i32 %13, 2, !dbg !2664
  %tobool3 = icmp eq i32 %and, 0, !dbg !2664
  br i1 %tobool3, label %for.inc, label %earlyout.loopexit1, !dbg !2665

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2660
  br label %for.cond, !dbg !2660, !llvm.loop !2666

for.end:                                          ; preds = %for.cond
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp6 to i8*, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2668
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp6, %struct.basic_block_def* %bb) #7, !dbg !2668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2668
  %15 = bitcast %struct.gimple_stmt_iterator* %togsi to i8*, !dbg !2669
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2670
  %16 = bitcast %struct.gimple_stmt_iterator* %tmp34 to i8*, !dbg !2673
  br label %for.cond7, !dbg !2676

for.cond7:                                        ; preds = %cleanup, %for.end
  %last.0 = phi i8 [ 1, %for.end ], [ %last.1, %cleanup ], !dbg !2677
  call void @llvm.dbg.value(metadata i8 %last.0, metadata !2641, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2678
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2679
  br i1 %tobool9, label %for.body10, label %earlyout.loopexit, !dbg !2680

for.body10:                                       ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  %call11 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2681
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !2642, metadata !DIExpression()), !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2646, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  %call12 = call fastcc zeroext i8 @statement_sink_location(%union.gimple_statement_d* %call11, %struct.basic_block_def* %bb, %struct.gimple_stmt_iterator* nonnull %togsi) #7, !dbg !2683
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2683
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !2685

if.then14:                                        ; preds = %for.body10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  %call15 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2686
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2686
  br i1 %tobool16, label %if.then17, label %cleanup, !dbg !2689, !llvm.loop !2690

if.then17:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2692
  br label %cleanup, !dbg !2692, !llvm.loop !2690

if.end19:                                         ; preds = %for.body10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2693
  %tobool20 = icmp eq %struct._IO_FILE* %17, null, !dbg !2693
  br i1 %tobool20, label %if.end26, label %if.then21, !dbg !2694

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2695
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2696
  call void @print_gimple_stmt(%struct._IO_FILE* %18, %union.gimple_statement_d* %call11, i32 0, i32 64) #6, !dbg !2697
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2698
  %20 = load i32, i32* %index, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2646, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  %call23 = call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %togsi) #7, !dbg !2700
  %index24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call23, i64 0, i32 9, !dbg !2701
  %21 = load i32, i32* %index24, align 8, !dbg !2701
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %20, i32 %21) #6, !dbg !2702
  br label %if.end26, !dbg !2703

if.end26:                                         ; preds = %if.end19, %if.then21
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2646, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  %call27 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %togsi) #7, !dbg !2704
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2704
  br i1 %tobool28, label %if.else, label %if.then29, !dbg !2706

if.then29:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2646, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  %call30 = call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %togsi) #7, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call void @gsi_move_to_bb_end(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.basic_block_def* %call30) #6, !dbg !2708
  br label %if.end31, !dbg !2708

if.else:                                          ; preds = %if.end26
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2646, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  call void @gsi_move_before(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_stmt_iterator* nonnull %togsi) #6, !dbg !2709
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @sink_stats, i64 0, i32 0), align 4, !dbg !2710
  %inc = add nsw i32 %22, 1, !dbg !2710
  store i32 %inc, i32* getelementptr inbounds (%struct.anon, %struct.anon* @sink_stats, i64 0, i32 0), align 4, !dbg !2710
  %tobool32 = icmp eq i8 %last.0, 0, !dbg !2711
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !2712

if.then33:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8, !dbg !2713
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp34, %struct.basic_block_def* %bb) #7, !dbg !2713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !2713
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8, !dbg !2713
  br label %cleanup, !dbg !2714, !llvm.loop !2690

if.end35:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  %call36 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2715
  %tobool37 = icmp eq i8 %call36, 0, !dbg !2715
  br i1 %tobool37, label %if.then38, label %cleanup, !dbg !2717

if.then38:                                        ; preds = %if.end35
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2626, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2718
  br label %cleanup, !dbg !2718

cleanup:                                          ; preds = %if.end35, %if.then14, %if.then38, %if.then17, %if.then33
  %last.1 = phi i8 [ %last.0, %if.then33 ], [ 0, %if.then17 ], [ 0, %if.then14 ], [ 0, %if.then38 ], [ 0, %if.end35 ], !dbg !2648
  call void @llvm.dbg.value(metadata i8 %last.1, metadata !2641, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8, !dbg !2719
  br label %for.cond7

earlyout.loopexit:                                ; preds = %for.cond7
  br label %earlyout, !dbg !2720

earlyout.loopexit1:                               ; preds = %for.body
  br label %earlyout, !dbg !2720

earlyout:                                         ; preds = %earlyout.loopexit1, %earlyout.loopexit, %entry
  call void @llvm.dbg.label(metadata !2647), !dbg !2722
  %call42 = call %struct.basic_block_def* @first_dom_son(i32 2, %struct.basic_block_def* %bb) #6, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call42, metadata !2625, metadata !DIExpression()), !dbg !2648
  br label %for.cond43, !dbg !2723

for.cond43:                                       ; preds = %for.body45, %earlyout
  %son.0 = phi %struct.basic_block_def* [ %call42, %earlyout ], [ %call47, %for.body45 ], !dbg !2724
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %son.0, metadata !2625, metadata !DIExpression()), !dbg !2648
  %tobool44 = icmp eq %struct.basic_block_def* %son.0, null, !dbg !2725
  br i1 %tobool44, label %for.end48, label %for.body45, !dbg !2725

for.body45:                                       ; preds = %for.cond43
  call fastcc void @sink_code_in_bb(%struct.basic_block_def* nonnull %son.0) #7, !dbg !2726
  %call47 = call %struct.basic_block_def* @next_dom_son(i32 2, %struct.basic_block_def* nonnull %son.0) #6, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call47, metadata !2625, metadata !DIExpression()), !dbg !2648
  br label %for.cond43, !dbg !2730, !llvm.loop !2731

for.end48:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2733
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2733
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2733
  ret void, !dbg !2733
}

declare dso_local void @statistics_counter_event(%struct.function*, i8*, i32) local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @remove_fake_exit_edges() local_unnamed_addr #2

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2734 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2738, metadata !DIExpression()), !dbg !2740
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2741
  store i32 0, i32* %index, align 8, !dbg !2742
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2743
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2744
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2745
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2745
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2745
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2746 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2752, metadata !DIExpression()), !dbg !2753
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2754
  %tobool = icmp eq i8 %call, 0, !dbg !2754
  br i1 %tobool, label %if.then, label %if.else, !dbg !2756

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2757
  br label %return, !dbg !2759

if.else:                                          ; preds = %entry
  br label %return, !dbg !2760

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2762
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2762
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2762
  ret i8 %retval.0, !dbg !2763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2764 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2769, metadata !DIExpression()), !dbg !2770
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2771
  %0 = load i32, i32* %index, align 8, !dbg !2771
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2771
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2771
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2771
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2771
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2771

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2771
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2771
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2771
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2771
  br label %cond.end, !dbg !2771

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2771
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2771
  %cmp = icmp ult i32 %0, %call2, !dbg !2771
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2771

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2771
  br label %cond.end5, !dbg !2771

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2772
  %inc = add i32 %5, 1, !dbg !2772
  store i32 %inc, i32* %index, align 8, !dbg !2772
  ret void, !dbg !2773
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2779, metadata !DIExpression()), !dbg !2782
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2780, metadata !DIExpression()), !dbg !2781
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !2784
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2785
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2786
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2787
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2788
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2789
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2790
  ret void, !dbg !2791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2796, metadata !DIExpression()), !dbg !2797
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2798
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2798
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2799
  %conv1 = zext i1 %cmp to i8, !dbg !2800
  ret i8 %conv1, !dbg !2801
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2802 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2806, metadata !DIExpression()), !dbg !2807
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2808
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2808
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2809
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2809
  ret %union.gimple_statement_d* %1, !dbg !2810
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @statement_sink_location(%union.gimple_statement_d* %stmt, %struct.basic_block_def* %frombb, %struct.gimple_stmt_iterator* %togsi) unnamed_addr #5 !dbg !2811 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  %debug_stmts = alloca i8, align 1
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp171 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp209 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2816, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %frombb, metadata !2817, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %togsi, metadata !2818, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* null, metadata !2821, metadata !DIExpression()), !dbg !2858
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2859
  %1 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2861
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2820, metadata !DIExpression()), !dbg !2858
  br label %for.cond, !dbg !2861

for.cond:                                         ; preds = %for.inc14, %entry
  %def.0 = phi %union.tree_node* [ %call, %entry ], [ %call15, %for.inc14 ], !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !2820, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* null, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2864
  %tobool = icmp eq i8 %call1, 0, !dbg !2864
  br i1 %tobool, label %for.body, label %for.end16, !dbg !2861

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call2 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %def.0) #7, !dbg !2866
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call2, metadata !2821, metadata !DIExpression()), !dbg !2858
  br label %for.cond3, !dbg !2866

for.cond3:                                        ; preds = %for.inc, %for.body
  %one_use.1 = phi %struct.ssa_use_operand_d* [ %call2, %for.body ], [ %call11, %for.inc ], !dbg !2869
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call4 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !2870
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2870
  br i1 %tobool5, label %for.body7, label %for.end, !dbg !2866

for.body7:                                        ; preds = %for.cond3
  %stmt8 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %one_use.1, i64 0, i32 2, i32 0, !dbg !2872
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt8, align 8, !dbg !2872
  %call9 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %2) #7, !dbg !2875
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2875
  br i1 %tobool10, label %for.end, label %for.inc, !dbg !2876

for.inc:                                          ; preds = %for.body7
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call11 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !2821, metadata !DIExpression()), !dbg !2858
  br label %for.cond3, !dbg !2870, !llvm.loop !2877

for.end:                                          ; preds = %for.body7, %for.cond3
  %one_use.1.lcssa = phi %struct.ssa_use_operand_d* [ %one_use.1, %for.body7 ], [ %one_use.1, %for.cond3 ], !dbg !2869
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.1.lcssa, metadata !2821, metadata !DIExpression()), !dbg !2858
  %cmp = icmp eq %struct.ssa_use_operand_d* %one_use.1.lcssa, null, !dbg !2879
  br i1 %cmp, label %for.inc14, label %for.end16, !dbg !2881

for.inc14:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call15 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2864
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2820, metadata !DIExpression()), !dbg !2858
  br label %for.cond, !dbg !2864, !llvm.loop !2882

for.end16:                                        ; preds = %for.end, %for.cond
  %one_use.2 = phi %struct.ssa_use_operand_d* [ null, %for.cond ], [ %one_use.1.lcssa, %for.end ], !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %one_use.2, metadata !2821, metadata !DIExpression()), !dbg !2858
  %cmp17 = icmp eq %struct.ssa_use_operand_d* %one_use.2, null, !dbg !2884
  br i1 %cmp17, label %cleanup210, label %if.end19, !dbg !2886

if.end19:                                         ; preds = %for.end16
  %call20 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2887
  %cmp21 = icmp eq i32 %call20, 6, !dbg !2889
  br i1 %cmp21, label %if.end23, label %cleanup210, !dbg !2890

if.end23:                                         ; preds = %if.end19
  %call24 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %stmt) #6, !dbg !2891
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2891
  br i1 %tobool25, label %lor.lhs.false, label %cleanup210, !dbg !2893

lor.lhs.false:                                    ; preds = %if.end23
  %call26 = call zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d* %stmt) #6, !dbg !2894
  %tobool28 = icmp eq i8 %call26, 0, !dbg !2894
  br i1 %tobool28, label %lor.lhs.false29, label %cleanup210, !dbg !2895

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %call30 = call zeroext i8 @is_hidden_global_store(%union.gimple_statement_d* %stmt) #7, !dbg !2896
  %tobool32 = icmp eq i8 %call30, 0, !dbg !2896
  br i1 %tobool32, label %lor.lhs.false33, label %cleanup210, !dbg !2897

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %call34 = call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2898
  %tobool36 = icmp eq i8 %call34, 0, !dbg !2898
  br i1 %tobool36, label %lor.lhs.false37, label %cleanup210, !dbg !2899

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %call38 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !2900
  %tobool39 = icmp eq %union.tree_node* %call38, null, !dbg !2900
  br i1 %tobool39, label %lor.lhs.false40, label %cleanup210, !dbg !2901

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2902
  %has_local_explicit_reg_vars = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 20, !dbg !2903
  %bf.load = load i32, i32* %has_local_explicit_reg_vars, align 8, !dbg !2903
  %bf.clear = and i32 %bf.load, 536870912, !dbg !2903
  %tobool41 = icmp eq i32 %bf.clear, 0, !dbg !2902
  br i1 %tobool41, label %if.end61, label %land.lhs.true, !dbg !2904

land.lhs.true:                                    ; preds = %lor.lhs.false40
  %call42 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !2905
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call42, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2905
  %4 = bitcast %union.tree_node** %type to i64**, !dbg !2905
  %5 = load i64*, i64** %4, align 8, !dbg !2905
  %bf.load43 = load i64, i64* %5, align 8, !dbg !2905
  %bf.cast6 = and i64 %bf.load43, 65535, !dbg !2905
  %cmp45 = icmp eq i64 %bf.cast6, 14, !dbg !2905
  %call47 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !2905
  %type49 = getelementptr inbounds %union.tree_node, %union.tree_node* %call47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2905
  %6 = load %union.tree_node*, %union.tree_node** %type49, align 8, !dbg !2905
  br i1 %cmp45, label %cond.true, label %cond.false, !dbg !2905

cond.true:                                        ; preds = %land.lhs.true
  %call50 = call i32 @vector_type_mode(%union.tree_node* %6) #6, !dbg !2905
  br label %cond.end, !dbg !2905

cond.false:                                       ; preds = %land.lhs.true
  %type54 = bitcast %union.tree_node* %6 to %struct.tree_type*, !dbg !2905
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type54, i64 0, i32 6, !dbg !2905
  %bf.load55 = load i32, i32* %mode, align 4, !dbg !2905
  %bf.lshr56 = lshr i32 %bf.load55, 16, !dbg !2905
  %bf.clear57 = and i32 %bf.lshr56, 255, !dbg !2905
  br label %cond.end, !dbg !2905

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call50, %cond.true ], [ %bf.clear57, %cond.false ], !dbg !2905
  %cmp58 = icmp eq i32 %cond, 1, !dbg !2906
  br i1 %cmp58, label %cleanup210, label %if.end61, !dbg !2907

if.end61:                                         ; preds = %lor.lhs.false40, %cond.end
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call62 = call fastcc %union.tree_node** @op_iter_init_def(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node** %call62, metadata !2824, metadata !DIExpression()), !dbg !2858
  br label %for.cond63, !dbg !2908

for.cond63:                                       ; preds = %for.inc82, %if.end61
  %def_p.0 = phi %union.tree_node** [ %call62, %if.end61 ], [ %call83, %for.inc82 ], !dbg !2909
  call void @llvm.dbg.value(metadata %union.tree_node** %def_p.0, metadata !2824, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call64 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2910
  %tobool65 = icmp eq i8 %call64, 0, !dbg !2910
  br i1 %tobool65, label %for.body67, label %for.end84, !dbg !2908

for.body67:                                       ; preds = %for.cond63
  %call69 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def_p.0) #7, !dbg !2911
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !2846, metadata !DIExpression()), !dbg !2912
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call69, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2913
  %7 = bitcast i32* %var to %union.tree_node**, !dbg !2913
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2913
  %call70 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %8) #7, !dbg !2915
  %tobool72 = icmp eq i8 %call70, 0, !dbg !2915
  br i1 %tobool72, label %lor.lhs.false73, label %cleanup, !dbg !2916

lor.lhs.false73:                                  ; preds = %for.body67
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call69, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2917
  %bf.load75 = load i64, i64* %9, align 8, !dbg !2917
  %bf.cast785 = lshr i64 %bf.load75, 22, !dbg !2918
  %10 = trunc i64 %bf.cast785 to i32, !dbg !2918
  %11 = and i32 %10, 1, !dbg !2918
  br label %cleanup, !dbg !2918

cleanup:                                          ; preds = %for.body67, %lor.lhs.false73
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body67 ], [ %11, %lor.lhs.false73 ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond2, label %for.inc82, label %cleanup210.loopexit7

for.inc82:                                        ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call83 = call fastcc %union.tree_node** @op_iter_next_def(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2910
  call void @llvm.dbg.value(metadata %union.tree_node** %call83, metadata !2824, metadata !DIExpression()), !dbg !2858
  br label %for.cond63, !dbg !2910, !llvm.loop !2919

for.end84:                                        ; preds = %for.cond63
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call85 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !2921
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call85, metadata !2823, metadata !DIExpression()), !dbg !2858
  br label %for.cond86, !dbg !2921

for.cond86:                                       ; preds = %for.inc104, %for.end84
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call85, %for.end84 ], [ %call105, %for.inc104 ], !dbg !2922
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2823, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call87 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2923
  %tobool88 = icmp eq i8 %call87, 0, !dbg !2923
  br i1 %tobool88, label %for.body90, label %for.end106, !dbg !2921

for.body90:                                       ; preds = %for.cond86
  %call92 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %call92, metadata !2850, metadata !DIExpression()), !dbg !2925
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call92, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2926
  %bf.load94 = load i64, i64* %12, align 8, !dbg !2926
  %bf.cast974 = and i64 %bf.load94, 4194304, !dbg !2926
  %tobool98 = icmp eq i64 %bf.cast974, 0, !dbg !2926
  br i1 %tobool98, label %for.inc104, label %cleanup210.loopexit

for.inc104:                                       ; preds = %for.body90
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call105 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call105, metadata !2823, metadata !DIExpression()), !dbg !2858
  br label %for.cond86, !dbg !2923, !llvm.loop !2928

for.end106:                                       ; preds = %for.cond86
  %call107 = call fastcc zeroext i8 @all_immediate_uses_same_place(%union.gimple_statement_d* %stmt) #7, !dbg !2930
  %tobool108 = icmp eq i8 %call107, 0, !dbg !2930
  br i1 %tobool108, label %if.then109, label %if.end146, !dbg !2931

if.then109:                                       ; preds = %for.end106
  call void @llvm.dbg.value(metadata i8* %debug_stmts, metadata !2854, metadata !DIExpression(DW_OP_deref)), !dbg !2932
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %debug_stmts) #8, !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2932
  store i8 0, i8* %debug_stmts, align 1, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %debug_stmts, metadata !2854, metadata !DIExpression(DW_OP_deref)), !dbg !2932
  %call110 = call fastcc %struct.basic_block_def* @nearest_common_dominator_of_uses(%union.gimple_statement_d* %stmt, i8* nonnull %debug_stmts) #7, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call110, metadata !2857, metadata !DIExpression()), !dbg !2932
  %cmp111 = icmp eq %struct.basic_block_def* %call110, %frombb, !dbg !2936
  br i1 %cmp111, label %cleanup144, label %if.end114, !dbg !2938

if.end114:                                        ; preds = %if.then109
  %call115 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call110, %struct.basic_block_def* %frombb) #6, !dbg !2939
  %tobool116 = icmp eq i8 %call115, 0, !dbg !2939
  br i1 %tobool116, label %cleanup144, label %if.end118, !dbg !2941

if.end118:                                        ; preds = %if.end114
  %call119 = call zeroext i8 @dominated_by_p(i32 2, %struct.basic_block_def* %frombb, %struct.basic_block_def* %call110) #6, !dbg !2942
  %tobool120 = icmp eq i8 %call119, 0, !dbg !2942
  br i1 %tobool120, label %if.end128, label %if.then121, !dbg !2944

if.then121:                                       ; preds = %if.end118
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2945
  %tobool122 = icmp eq %struct._IO_FILE* %13, null, !dbg !2945
  br i1 %tobool122, label %cleanup144, label %land.lhs.true123, !dbg !2948

land.lhs.true123:                                 ; preds = %if.then121
  %14 = load i32, i32* @dump_flags, align 4, !dbg !2949
  %and = and i32 %14, 8, !dbg !2950
  %tobool124 = icmp eq i32 %and, 0, !dbg !2950
  br i1 %tobool124, label %cleanup144, label %if.then125, !dbg !2951

if.then125:                                       ; preds = %land.lhs.true123
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2952
  br label %cleanup144, !dbg !2952

if.end128:                                        ; preds = %if.end118
  br i1 false, label %if.end128.cleanup144_crit_edge, label %lor.lhs.false131, !dbg !2953

if.end128.cleanup144_crit_edge:                   ; preds = %if.end128
  br label %cleanup144, !dbg !2953

lor.lhs.false131:                                 ; preds = %if.end128
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call110, i64 0, i32 10, !dbg !2955
  %15 = load i32, i32* %loop_depth, align 4, !dbg !2955
  %loop_depth132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %frombb, i64 0, i32 10, !dbg !2956
  %16 = load i32, i32* %loop_depth132, align 4, !dbg !2956
  %cmp133 = icmp sgt i32 %15, %16, !dbg !2957
  br i1 %cmp133, label %cleanup144, label %if.end136, !dbg !2958

if.end136:                                        ; preds = %lor.lhs.false131
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2959
  %tobool137 = icmp eq %struct._IO_FILE* %17, null, !dbg !2959
  br i1 %tobool137, label %if.end143, label %land.lhs.true138, !dbg !2961

land.lhs.true138:                                 ; preds = %if.end136
  %18 = load i32, i32* @dump_flags, align 4, !dbg !2962
  %and139 = and i32 %18, 8, !dbg !2963
  %tobool140 = icmp eq i32 %and139, 0, !dbg !2963
  br i1 %tobool140, label %if.end143, label %if.then141, !dbg !2964

if.then141:                                       ; preds = %land.lhs.true138
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call110, i64 0, i32 9, !dbg !2965
  %19 = load i32, i32* %index, align 8, !dbg !2965
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %19) #6, !dbg !2967
  br label %if.end143, !dbg !2968

if.end143:                                        ; preds = %land.lhs.true138, %if.end136, %if.then141
  %20 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20) #8, !dbg !2969
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call110) #7, !dbg !2969
  %21 = bitcast %struct.gimple_stmt_iterator* %togsi to i8*, !dbg !2969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* nonnull align 8 %20, i64 24, i1 false), !dbg !2969
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20) #8, !dbg !2969
  br label %cleanup144, !dbg !2970

cleanup144:                                       ; preds = %if.end128.cleanup144_crit_edge, %land.lhs.true123, %if.then121, %if.end114, %lor.lhs.false131, %if.then125, %if.then109, %if.end143
  %retval.4 = phi i8 [ 1, %if.end143 ], [ 0, %if.then109 ], [ 0, %if.end114 ], [ 0, %if.then125 ], [ 0, %land.lhs.true123 ], [ 0, %if.then121 ], [ 0, %lor.lhs.false131 ], [ undef, %if.end128.cleanup144_crit_edge ], !dbg !2932
  call void @llvm.dbg.value(metadata i8* %debug_stmts, metadata !2854, metadata !DIExpression(DW_OP_deref)), !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %debug_stmts) #8, !dbg !2971
  br label %cleanup210

if.end146:                                        ; preds = %for.end106
  %stmt148 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %one_use.2, i64 0, i32 2, i32 0, !dbg !2972
  %22 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt148, align 8, !dbg !2972
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %22, metadata !2819, metadata !DIExpression()), !dbg !2858
  %call149 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %22) #7, !dbg !2973
  %cmp150 = icmp eq i32 %call149, 16, !dbg !2975
  br i1 %cmp150, label %if.end172, label %if.then152, !dbg !2976

if.then152:                                       ; preds = %if.end146
  %call153 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %22) #7, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call153, metadata !2822, metadata !DIExpression()), !dbg !2858
  %cmp154 = icmp eq %struct.basic_block_def* %call153, %frombb, !dbg !2979
  br i1 %cmp154, label %cleanup210, label %lor.lhs.false156, !dbg !2981

lor.lhs.false156:                                 ; preds = %if.then152
  %loop_depth157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call153, i64 0, i32 10, !dbg !2982
  %23 = load i32, i32* %loop_depth157, align 4, !dbg !2982
  %loop_depth158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %frombb, i64 0, i32 10, !dbg !2983
  %24 = load i32, i32* %loop_depth158, align 4, !dbg !2983
  %cmp159 = icmp sgt i32 %23, %24, !dbg !2984
  br i1 %cmp159, label %cleanup210, label %lor.lhs.false161, !dbg !2985

lor.lhs.false161:                                 ; preds = %lor.lhs.false156
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call153, i64 0, i32 3, !dbg !2986
  %25 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2986
  %loop_father162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %frombb, i64 0, i32 3, !dbg !2987
  %26 = load %struct.loop*, %struct.loop** %loop_father162, align 8, !dbg !2987
  %cmp163 = icmp eq %struct.loop* %25, %26, !dbg !2988
  br i1 %cmp163, label %if.end166, label %cleanup210, !dbg !2989

if.end166:                                        ; preds = %lor.lhs.false161
  %call167 = call zeroext i8 @dominated_by_p(i32 2, %struct.basic_block_def* %frombb, %struct.basic_block_def* %call153) #6, !dbg !2990
  %tobool168 = icmp eq i8 %call167, 0, !dbg !2990
  br i1 %tobool168, label %if.end170, label %cleanup210, !dbg !2992

if.end170:                                        ; preds = %if.end166
  %27 = bitcast %struct.gimple_stmt_iterator* %tmp171 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27) #8, !dbg !2993
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp171, %union.gimple_statement_d* %22) #6, !dbg !2993
  %28 = bitcast %struct.gimple_stmt_iterator* %togsi to i8*, !dbg !2993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* nonnull align 8 %27, i64 24, i1 false), !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27) #8, !dbg !2993
  br label %cleanup210, !dbg !2994

if.end172:                                        ; preds = %if.end146
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call173 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2995
  call void @llvm.dbg.value(metadata %union.tree_node* %call173, metadata !2820, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2858
  %call175 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2997
  %call182 = call fastcc %struct.basic_block_def* @find_bb_for_arg(%union.gimple_statement_d* %22, %union.tree_node* %call173) #7, !dbg !2999
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call182, metadata !2822, metadata !DIExpression()), !dbg !2858
  %tobool183 = icmp eq %struct.basic_block_def* %call182, null, !dbg !3000
  br i1 %tobool183, label %cleanup210, label %if.end185, !dbg !3002

if.end185:                                        ; preds = %if.end172
  %call186 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %22) #7, !dbg !3003
  %cmp187 = icmp eq %struct.basic_block_def* %call186, %frombb, !dbg !3005
  %cmp191 = icmp eq %struct.basic_block_def* %call182, %frombb, !dbg !3006
  %or.cond = or i1 %cmp187, %cmp191, !dbg !3008
  br i1 %or.cond, label %cleanup210, label %lor.lhs.false193, !dbg !3008

lor.lhs.false193:                                 ; preds = %if.end185
  %loop_depth194 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call182, i64 0, i32 10, !dbg !3009
  %29 = load i32, i32* %loop_depth194, align 4, !dbg !3009
  %loop_depth195 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %frombb, i64 0, i32 10, !dbg !3010
  %30 = load i32, i32* %loop_depth195, align 4, !dbg !3010
  %cmp196 = icmp sgt i32 %29, %30, !dbg !3011
  br i1 %cmp196, label %cleanup210, label %lor.lhs.false198, !dbg !3012

lor.lhs.false198:                                 ; preds = %lor.lhs.false193
  %loop_father199 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call182, i64 0, i32 3, !dbg !3013
  %31 = load %struct.loop*, %struct.loop** %loop_father199, align 8, !dbg !3013
  %loop_father200 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %frombb, i64 0, i32 3, !dbg !3014
  %32 = load %struct.loop*, %struct.loop** %loop_father200, align 8, !dbg !3014
  %cmp201 = icmp eq %struct.loop* %31, %32, !dbg !3015
  br i1 %cmp201, label %if.end204, label %cleanup210, !dbg !3016

if.end204:                                        ; preds = %lor.lhs.false198
  %call205 = call zeroext i8 @dominated_by_p(i32 2, %struct.basic_block_def* %frombb, %struct.basic_block_def* nonnull %call182) #6, !dbg !3017
  %tobool206 = icmp eq i8 %call205, 0, !dbg !3017
  br i1 %tobool206, label %if.end208, label %cleanup210, !dbg !3019

if.end208:                                        ; preds = %if.end204
  %33 = bitcast %struct.gimple_stmt_iterator* %tmp209 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %33) #8, !dbg !3020
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp209, %struct.basic_block_def* nonnull %call182) #7, !dbg !3020
  %34 = bitcast %struct.gimple_stmt_iterator* %togsi to i8*, !dbg !3020
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* nonnull align 8 %33, i64 24, i1 false), !dbg !3020
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %33) #8, !dbg !3020
  br label %cleanup210, !dbg !3021

cleanup210.loopexit:                              ; preds = %for.body90
  br label %cleanup210, !dbg !3022

cleanup210.loopexit7:                             ; preds = %cleanup
  br label %cleanup210, !dbg !3022

cleanup210:                                       ; preds = %cleanup210.loopexit7, %cleanup210.loopexit, %if.end166, %lor.lhs.false161, %if.end204, %lor.lhs.false198, %if.end172, %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false, %if.end23, %if.end19, %lor.lhs.false193, %if.end185, %if.then152, %lor.lhs.false156, %cond.end, %for.end16, %if.end208, %if.end170, %cleanup144
  %retval.5 = phi i8 [ 1, %if.end170 ], [ 1, %if.end208 ], [ %retval.4, %cleanup144 ], [ 0, %for.end16 ], [ 0, %if.end19 ], [ 0, %cond.end ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false ], [ 0, %if.end23 ], [ 0, %lor.lhs.false161 ], [ 0, %lor.lhs.false156 ], [ 0, %if.then152 ], [ 0, %if.end166 ], [ 0, %if.end172 ], [ 0, %if.end185 ], [ 0, %lor.lhs.false198 ], [ 0, %lor.lhs.false193 ], [ 0, %if.end204 ], [ 0, %cleanup210.loopexit ], [ 0, %cleanup210.loopexit7 ], !dbg !2858
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3022
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3022
  ret i8 %retval.5, !dbg !3022
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3023 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3027, metadata !DIExpression()), !dbg !3028
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3029
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3029
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !3030
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !3030
  %2 = load i64, i64* %1, align 8, !dbg !3030
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3031
  store i64 %2, i64* %3, align 8, !dbg !3031
  ret void, !dbg !3032
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3033 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3037, metadata !DIExpression()), !dbg !3038
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 2, !dbg !3039
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3039
  ret %struct.basic_block_def* %0, !dbg !3040
}

declare dso_local void @gsi_move_to_bb_end(%struct.gimple_stmt_iterator*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @gsi_move_before(%struct.gimple_stmt_iterator*, %struct.gimple_stmt_iterator*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.basic_block_def* @next_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3041 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3046
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3046
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3046

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3046
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3046
  br label %cond.end, !dbg !3046

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3046
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3046
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3047
  %conv3 = zext i1 %cmp to i8, !dbg !3048
  ret i8 %conv3, !dbg !3049
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3050 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3055
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3055
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3055

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3055
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3055
  br label %cond.end, !dbg !3055

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3055
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3055
  ret %struct.edge_def* %call2, !dbg !3056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3057 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3063, metadata !DIExpression()), !dbg !3064
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3065
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3065

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3065
  %0 = load i32, i32* %num, align 8, !dbg !3065
  br label %cond.end, !dbg !3065

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3065
  ret i32 %cond, !dbg !3065
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3066 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3071
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3071

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3071
  br label %cond.end, !dbg !3071

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3072
  ret %struct.VEC_edge_gc* %0, !dbg !3073
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3074 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3079, metadata !DIExpression()), !dbg !3080
  br label %land.end, !dbg !3081

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3081
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3081
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3081
  ret %struct.edge_def* %0, !dbg !3081
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3082 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3089, metadata !DIExpression()), !dbg !3090
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3091
  %0 = load i32, i32* %flags, align 8, !dbg !3091
  %and = and i32 %0, 512, !dbg !3092
  %tobool = icmp eq i32 %and, 0, !dbg !3092
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3093

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3094
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3094
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3095
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3096

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3097
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3097
  br label %cond.end, !dbg !3096

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3096
  ret %struct.gimple_seq_d* %cond, !dbg !3098
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3099 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3106, metadata !DIExpression()), !dbg !3107
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3108
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3108

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3109
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3109
  br label %cond.end, !dbg !3108

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3108
  ret %struct.gimple_seq_node_d* %cond, !dbg !3110
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3111 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3116, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3117, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 10, metadata !3118, metadata !DIExpression()), !dbg !3119
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3120
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3121
  store i32 1, i32* %iter_type, align 4, !dbg !3122
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3123
  ret %union.tree_node* %call, !dbg !3124
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3125 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3131, metadata !DIExpression()), !dbg !3132
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3133
  %0 = load i8, i8* %done, align 8, !dbg !3133
  ret i8 %0, !dbg !3134
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3141, metadata !DIExpression()), !dbg !3142
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3143
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3144
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3145
  store i40* %imm_uses, i40** %0, align 8, !dbg !3145
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3146
  %1 = bitcast i40* %next to i64*, !dbg !3146
  %2 = load i64, i64* %1, align 8, !dbg !3146
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3147
  store i64 %2, i64* %3, align 8, !dbg !3147
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3148
  %tobool = icmp eq i8 %call, 0, !dbg !3148
  br i1 %tobool, label %if.end, label %return, !dbg !3150

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3151
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !3151
  br label %return, !dbg !3152

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3142
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3153
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3154 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3160, metadata !DIExpression()), !dbg !3161
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3162
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3162
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3163
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3163
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3164
  %conv1 = zext i1 %cmp to i8, !dbg !3165
  ret i8 %conv1, !dbg !3166
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3167 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3169, metadata !DIExpression()), !dbg !3170
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3171
  %cmp = icmp eq i32 %call, 2, !dbg !3172
  %conv1 = zext i1 %cmp to i8, !dbg !3171
  ret i8 %conv1, !dbg !3173
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3174 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3178, metadata !DIExpression()), !dbg !3180
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3181
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3181
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3179, metadata !DIExpression()), !dbg !3180
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3182
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3182
  %2 = load i64, i64* %1, align 8, !dbg !3182
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3183
  store i64 %2, i64* %3, align 8, !dbg !3183
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3184
  %tobool = icmp eq i8 %call, 0, !dbg !3184
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3186

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3187
  br label %cleanup, !dbg !3188

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3180
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3189
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3190 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3194, metadata !DIExpression()), !dbg !3196
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3197
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3197
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3199
  br i1 %tobool, label %if.end, label %if.then, !dbg !3200

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3201
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !3201
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3195, metadata !DIExpression()), !dbg !3196
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3203
  %2 = load i64*, i64** %1, align 8, !dbg !3203
  %3 = load i64, i64* %2, align 8, !dbg !3204
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3205
  store i64 %3, i64* %4, align 8, !dbg !3205
  br label %cleanup, !dbg !3206

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3207
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3207
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !3209
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !3210

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !3211
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3211
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !3211
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3195, metadata !DIExpression()), !dbg !3196
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3213
  %8 = load i64*, i64** %7, align 8, !dbg !3213
  %9 = load i64, i64* %8, align 8, !dbg !3214
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3215
  store i64 %9, i64* %10, align 8, !dbg !3215
  br label %cleanup, !dbg !3216

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3217
  store i8 1, i8* %done, align 8, !dbg !3218
  br label %cleanup, !dbg !3219

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !3196
  ret %union.tree_node* %retval.0, !dbg !3220
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3221 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3223, metadata !DIExpression()), !dbg !3224
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3225
  %tobool = icmp eq i8 %call, 0, !dbg !3225
  br i1 %tobool, label %return, label %if.then, !dbg !3227

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3228
  %bf.load = load i32, i32* %0, align 8, !dbg !3228
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !3228
  %1 = trunc i32 %bf.lshr to i8, !dbg !3229
  %conv = and i8 %1, 1, !dbg !3229
  br label %return, !dbg !3230

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !3231
  ret i8 %retval.0, !dbg !3232
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3233 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3235, metadata !DIExpression()), !dbg !3236
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3237
  %tobool = icmp eq i8 %call, 0, !dbg !3237
  br i1 %tobool, label %return, label %if.end, !dbg !3239

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3240
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3240
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3240
  br label %return, !dbg !3241

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3236
  ret %union.tree_node* %retval.0, !dbg !3242
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3243 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3245, metadata !DIExpression()), !dbg !3246
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3247
  ret %union.tree_node* %call, !dbg !3248
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @op_iter_init_def(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3249 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 10, metadata !3255, metadata !DIExpression()), !dbg !3256
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3257
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3258
  store i32 3, i32* %iter_type, align 4, !dbg !3259
  %call = tail call fastcc %union.tree_node** @op_iter_next_def(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3260
  ret %union.tree_node** %call, !dbg !3261
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3262 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3266, metadata !DIExpression()), !dbg !3267
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3268
  ret %union.tree_node* %0, !dbg !3269
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @op_iter_next_def(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3270 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3274, metadata !DIExpression()), !dbg !3276
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3277
  %0 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3277
  %tobool = icmp eq %struct.def_optype_d* %0, null, !dbg !3279
  br i1 %tobool, label %if.end, label %if.then, !dbg !3280

if.then:                                          ; preds = %entry
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %0, i64 0, i32 1, !dbg !3281
  %1 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node** %1, metadata !3275, metadata !DIExpression()), !dbg !3276
  %2 = bitcast %struct.def_optype_d* %0 to i64*, !dbg !3283
  %3 = load i64, i64* %2, align 8, !dbg !3283
  %4 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3284
  store i64 %3, i64* %4, align 8, !dbg !3284
  br label %cleanup, !dbg !3285

if.end:                                           ; preds = %entry
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3286
  store i8 1, i8* %done, align 8, !dbg !3287
  br label %cleanup, !dbg !3288

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %union.tree_node** [ %1, %if.then ], [ null, %if.end ], !dbg !3276
  ret %union.tree_node** %retval.0, !dbg !3289
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3290 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3294, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 5, metadata !3296, metadata !DIExpression()), !dbg !3297
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !3298
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3299
  store i32 2, i32* %iter_type, align 4, !dbg !3300
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3301
  ret %struct.ssa_use_operand_d* %call, !dbg !3302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3307, metadata !DIExpression()), !dbg !3308
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3309
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3309
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3310
  ret %union.tree_node* %1, !dbg !3311
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3312 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3316, metadata !DIExpression()), !dbg !3318
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3319
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3319
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3321
  br i1 %tobool, label %if.end, label %if.then, !dbg !3322

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3323
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3317, metadata !DIExpression()), !dbg !3318
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3325
  %2 = load i64, i64* %1, align 8, !dbg !3325
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3326
  store i64 %2, i64* %3, align 8, !dbg !3326
  br label %cleanup, !dbg !3327

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3328
  %4 = load i32, i32* %phi_i, align 8, !dbg !3328
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3330
  %5 = load i32, i32* %num_phi, align 4, !dbg !3330
  %cmp = icmp slt i32 %4, %5, !dbg !3331
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3332

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3333
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3333
  %inc = add nsw i32 %4, 1, !dbg !3333
  store i32 %inc, i32* %phi_i, align 8, !dbg !3333
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !3333
  br label %cleanup, !dbg !3335

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3336
  store i8 1, i8* %done, align 8, !dbg !3337
  br label %cleanup, !dbg !3338

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3318
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3339
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @all_immediate_uses_same_place(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3340 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3342, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3343, metadata !DIExpression()), !dbg !3348
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3349
  %1 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3344, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3351
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3347, metadata !DIExpression()), !dbg !3348
  br label %for.cond, !dbg !3351

for.cond:                                         ; preds = %for.inc21, %entry
  %var.0 = phi %union.tree_node* [ %call, %entry ], [ %call22, %for.inc21 ], !dbg !3353
  %firstuse.0 = phi %union.gimple_statement_d* [ null, %entry ], [ %firstuse.1.lcssa, %for.inc21 ], !dbg !3354
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.0, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3344, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !3355
  %tobool = icmp eq i8 %call1, 0, !dbg !3355
  br i1 %tobool, label %for.body, label %cleanup.loopexit1, !dbg !3351

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3345, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call2 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %var.0) #7, !dbg !3357
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call2, metadata !3346, metadata !DIExpression()), !dbg !3348
  br label %for.cond3, !dbg !3357

for.cond3:                                        ; preds = %for.inc, %for.body
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call2, %for.body ], [ %call20, %for.inc ], !dbg !3360
  %firstuse.1 = phi %union.gimple_statement_d* [ %firstuse.0, %for.body ], [ %firstuse.3, %for.inc ], !dbg !3354
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.1, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3345, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call4 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3361
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3361
  br i1 %tobool5, label %for.body7, label %for.inc21, !dbg !3357

for.body7:                                        ; preds = %for.cond3
  %stmt8 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3363
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt8, align 8, !dbg !3363
  %call9 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %2) #7, !dbg !3366
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3366
  br i1 %tobool10, label %if.end, label %for.inc, !dbg !3367

if.end:                                           ; preds = %for.body7
  %cmp = icmp eq %union.gimple_statement_d* %firstuse.1, null, !dbg !3368
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt8, align 8, !dbg !3370
  br i1 %cmp, label %for.inc, label %if.else, !dbg !3371

if.else:                                          ; preds = %if.end
  %cmp16 = icmp eq %union.gimple_statement_d* %firstuse.1, %3, !dbg !3372
  br i1 %cmp16, label %for.inc, label %cleanup.loopexit, !dbg !3374

for.inc:                                          ; preds = %if.else, %for.body7, %if.end
  %firstuse.3 = phi %union.gimple_statement_d* [ %firstuse.1, %for.body7 ], [ %3, %if.end ], [ %firstuse.1, %if.else ], !dbg !3348
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.3, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3345, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call20 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call20, metadata !3346, metadata !DIExpression()), !dbg !3348
  br label %for.cond3, !dbg !3361, !llvm.loop !3375

for.inc21:                                        ; preds = %for.cond3
  %firstuse.1.lcssa = phi %union.gimple_statement_d* [ %firstuse.1, %for.cond3 ], !dbg !3354
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.1.lcssa, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.1.lcssa, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %firstuse.1.lcssa, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3344, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call22 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !3355
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !3347, metadata !DIExpression()), !dbg !3348
  br label %for.cond, !dbg !3355, !llvm.loop !3377

cleanup.loopexit:                                 ; preds = %if.else
  br label %cleanup, !dbg !3379

cleanup.loopexit1:                                ; preds = %for.cond
  br label %cleanup, !dbg !3379

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit
  %retval.0 = phi i8 [ 0, %cleanup.loopexit ], [ 1, %cleanup.loopexit1 ], !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3379
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3379
  ret i8 %retval.0, !dbg !3379
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @nearest_common_dominator_of_uses(%union.gimple_statement_d* %stmt, i8* %debug_stmts) unnamed_addr #5 !dbg !3380 {
entry:
  %j = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3384, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %debug_stmts, metadata !3385, metadata !DIExpression()), !dbg !3412
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3386, metadata !DIExpression()), !dbg !3412
  %0 = bitcast i32* %j to i8*, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3414
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3415
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8, !dbg !3416
  %3 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3417
  tail call void @bitmap_clear(%struct.bitmap_head_def* %call) #6, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call1 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3419
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3400, metadata !DIExpression()), !dbg !3412
  br label %for.cond, !dbg !3419

for.cond:                                         ; preds = %for.inc26, %entry
  %var.0 = phi %union.tree_node* [ %call1, %entry ], [ %call27, %for.inc26 ], !dbg !3420
  %blocks.0 = phi %struct.bitmap_head_def* [ %call, %entry ], [ %blocks.1.lcssa, %for.inc26 ], !dbg !3421
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.0, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3400, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !3422
  %tobool = icmp eq i8 %call2, 0, !dbg !3422
  br i1 %tobool, label %for.body, label %for.end28, !dbg !3419

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call3 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %var.0) #7, !dbg !3423
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call3, metadata !3399, metadata !DIExpression()), !dbg !3412
  br label %for.cond4, !dbg !3423

for.cond4:                                        ; preds = %for.inc, %for.body
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call3, %for.body ], [ %call25, %for.inc ], !dbg !3424
  %blocks.1 = phi %struct.bitmap_head_def* [ %blocks.0, %for.body ], [ %blocks.2, %for.inc ], !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.1, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3399, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call5 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3425
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3425
  br i1 %tobool6, label %for.body8, label %for.inc26, !dbg !3423

for.body8:                                        ; preds = %for.cond4
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3426
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !3426
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %4, metadata !3401, metadata !DIExpression()), !dbg !3427
  %call10 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %4) #7, !dbg !3428
  %cmp = icmp eq i32 %call10, 16, !dbg !3429
  br i1 %cmp, label %if.then, label %if.else, !dbg !3430

if.then:                                          ; preds = %for.body8
  %call11 = call fastcc i32 @phi_arg_index_from_use(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !3431
  call void @llvm.dbg.value(metadata i32 %call11, metadata !3409, metadata !DIExpression()), !dbg !3432
  %conv = sext i32 %call11 to i64, !dbg !3433
  %call12 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %4, i64 %conv) #7, !dbg !3434
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call12, i64 0, i32 0, !dbg !3435
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3408, metadata !DIExpression()), !dbg !3427
  br label %if.end18, !dbg !3436

if.else:                                          ; preds = %for.body8
  %call13 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !3437
  %tobool14 = icmp eq i8 %call13, 0, !dbg !3437
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !3439

if.then15:                                        ; preds = %if.else
  store i8 1, i8* %debug_stmts, align 1, !dbg !3440
  br label %cleanup, !dbg !3442

if.else16:                                        ; preds = %if.else
  %call17 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %4) #7, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call17, metadata !3408, metadata !DIExpression()), !dbg !3427
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then
  %useblock.0 = phi %struct.basic_block_def* [ %5, %if.then ], [ %call17, %if.else16 ], !dbg !3445
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %useblock.0, metadata !3408, metadata !DIExpression()), !dbg !3427
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3446
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !3446
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3446
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !3446
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3446
  %cmp19 = icmp eq %struct.basic_block_def* %useblock.0, %8, !dbg !3448
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3449

if.then21:                                        ; preds = %if.end18
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %blocks.1) #6, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3386, metadata !DIExpression()), !dbg !3412
  br label %cleanup, !dbg !3452

if.end22:                                         ; preds = %if.end18
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %useblock.0, i64 0, i32 9, !dbg !3453
  %9 = load i32, i32* %index, align 8, !dbg !3453
  %call23 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %blocks.1, i32 %9) #6, !dbg !3454
  br label %cleanup, !dbg !3455

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then15
  %blocks.2 = phi %struct.bitmap_head_def* [ null, %if.then21 ], [ %blocks.1, %if.end22 ], [ %blocks.1, %if.then15 ], !dbg !3412
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then21 ], [ 0, %if.end22 ], [ 7, %if.then15 ]
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.2, metadata !3386, metadata !DIExpression()), !dbg !3412
  switch i32 %cleanup.dest.slot.0, label %cleanup57.loopexit [
    i32 0, label %for.inc
    i32 7, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup, %cleanup
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call25 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3425
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call25, metadata !3399, metadata !DIExpression()), !dbg !3412
  br label %for.cond4, !dbg !3425, !llvm.loop !3456

for.inc26:                                        ; preds = %for.cond4
  %blocks.1.lcssa = phi %struct.bitmap_head_def* [ %blocks.1, %for.cond4 ], !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.1.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.1.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.1.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call27 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !3422
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !3400, metadata !DIExpression()), !dbg !3412
  br label %for.cond, !dbg !3422, !llvm.loop !3458

for.end28:                                        ; preds = %for.cond
  %blocks.0.lcssa = phi %struct.bitmap_head_def* [ %blocks.0, %for.cond ], !dbg !3421
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.0.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.0.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks.0.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3412
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3460
  %cfg30 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !3460
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg30, align 8, !dbg !3460
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 2, !dbg !3460
  %12 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3460
  %tobool31 = icmp eq %struct.VEC_basic_block_gc* %12, null, !dbg !3460
  br i1 %tobool31, label %cond.end, label %cond.true, !dbg !3460

cond.true:                                        ; preds = %for.end28
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %12, i64 0, i32 0, !dbg !3460
  br label %cond.end, !dbg !3460

cond.end:                                         ; preds = %for.end28, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.end28 ], !dbg !3460
  %call35 = call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %blocks.0.lcssa) #6, !dbg !3460
  %call36 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %call35) #7, !dbg !3460
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call36, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32* %j, metadata !3388, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3389, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %blocks.0.lcssa, i32 0, i32* nonnull %j) #7, !dbg !3461
  br label %for.cond37, !dbg !3461

for.cond37:                                       ; preds = %cond.end51, %cond.end
  %commondom.0 = phi %struct.basic_block_def* [ %call36, %cond.end ], [ %call54, %cond.end51 ], !dbg !3412
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %commondom.0, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32* %j, metadata !3388, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3389, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call38 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !3463
  %tobool39 = icmp eq i8 %call38, 0, !dbg !3461
  br i1 %tobool39, label %for.end56, label %for.body40, !dbg !3461

for.body40:                                       ; preds = %for.cond37
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3465
  %cfg42 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !3465
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42, align 8, !dbg !3465
  %x_basic_block_info43 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 2, !dbg !3465
  %15 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info43, align 8, !dbg !3465
  %tobool44 = icmp eq %struct.VEC_basic_block_gc* %15, null, !dbg !3465
  br i1 %tobool44, label %cond.end51, label %cond.true45, !dbg !3465

cond.true45:                                      ; preds = %for.body40
  %base49 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %15, i64 0, i32 0, !dbg !3465
  br label %cond.end51, !dbg !3465

cond.end51:                                       ; preds = %for.body40, %cond.true45
  %cond52 = phi %struct.VEC_basic_block_base* [ %base49, %cond.true45 ], [ null, %for.body40 ], !dbg !3465
  %16 = load i32, i32* %j, align 4, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %16, metadata !3388, metadata !DIExpression()), !dbg !3412
  %call53 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond52, i32 %16) #7, !dbg !3465
  %call54 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %commondom.0, %struct.basic_block_def* %call53) #6, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call54, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32* %j, metadata !3388, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3389, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !3463
  br label %for.cond37, !dbg !3463, !llvm.loop !3467

for.end56:                                        ; preds = %for.cond37
  %commondom.0.lcssa = phi %struct.basic_block_def* [ %commondom.0, %for.cond37 ], !dbg !3412
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %commondom.0.lcssa, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %commondom.0.lcssa, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %commondom.0.lcssa, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %blocks.0.lcssa) #6, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3386, metadata !DIExpression()), !dbg !3412
  br label %cleanup57, !dbg !3470

cleanup57.loopexit:                               ; preds = %cleanup
  br label %cleanup57, !dbg !3471

cleanup57:                                        ; preds = %cleanup57.loopexit, %for.end56
  %retval.3 = phi %struct.basic_block_def* [ %commondom.0.lcssa, %for.end56 ], [ null, %cleanup57.loopexit ], !dbg !3412
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8, !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3471
  ret %struct.basic_block_def* %retval.3, !dbg !3471
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3472 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3475, metadata !DIExpression()), !dbg !3477
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #7, !dbg !3478
  br label %while.cond, !dbg !3479

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !3480
  %tobool = icmp eq i8 %call, 0, !dbg !3480
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !3481

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !3482
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !3483
  %cmp = icmp eq i32 %call2, 4, !dbg !3484
  br i1 %cmp, label %while.body, label %while.end, !dbg !3479

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !3485
  br label %while.cond, !dbg !3479, !llvm.loop !3486

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !3488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3489 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3493, metadata !DIExpression()), !dbg !3494
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3495
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3495
  ret %struct.basic_block_def* %0, !dbg !3496
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @find_bb_for_arg(%union.gimple_statement_d* %phi, %union.tree_node* %def) unnamed_addr #5 !dbg !3497 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3501, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3502, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 0, metadata !3504, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 0, metadata !3503, metadata !DIExpression()), !dbg !3506
  br label %for.cond, !dbg !3507

for.cond:                                         ; preds = %for.inc, %entry
  %foundone.0 = phi i8 [ 0, %entry ], [ %foundone.1, %for.inc ], !dbg !3506
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3509
  %result.0 = phi %struct.basic_block_def* [ null, %entry ], [ %result.1, %for.inc ], !dbg !3506
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %result.0, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3503, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 %foundone.0, metadata !3504, metadata !DIExpression()), !dbg !3506
  %call = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !3510
  %conv = zext i32 %call to i64, !dbg !3510
  %cmp = icmp ult i64 %i.0, %conv, !dbg !3512
  br i1 %cmp, label %for.body, label %cleanup, !dbg !3513

for.body:                                         ; preds = %for.cond
  %conv2 = trunc i64 %i.0 to i32, !dbg !3514
  %call3 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %conv2) #7, !dbg !3514
  %call4 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call3) #7, !dbg !3514
  %cmp5 = icmp eq %union.tree_node* %call4, %def, !dbg !3516
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !3517

if.then:                                          ; preds = %for.body
  %tobool = icmp eq i8 %foundone.0, 0, !dbg !3518
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3521

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 1, metadata !3504, metadata !DIExpression()), !dbg !3506
  %call8 = tail call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %phi, i64 %i.0) #7, !dbg !3522
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call8, i64 0, i32 0, !dbg !3523
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3505, metadata !DIExpression()), !dbg !3506
  br label %for.inc, !dbg !3524

for.inc:                                          ; preds = %for.body, %if.end
  %foundone.1 = phi i8 [ 1, %if.end ], [ %foundone.0, %for.body ], !dbg !3506
  %result.1 = phi %struct.basic_block_def* [ %0, %if.end ], [ %result.0, %for.body ], !dbg !3506
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %result.1, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 %foundone.1, metadata !3504, metadata !DIExpression()), !dbg !3506
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3503, metadata !DIExpression()), !dbg !3506
  br label %for.cond, !dbg !3526, !llvm.loop !3527

cleanup:                                          ; preds = %if.then, %for.cond
  %retval.0 = phi %struct.basic_block_def* [ null, %if.then ], [ %result.0, %for.cond ], !dbg !3506
  ret %struct.basic_block_def* %retval.0, !dbg !3529
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3530 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3536, metadata !DIExpression()), !dbg !3537
  %0 = and i32 %flags, 10, !dbg !3538
  %1 = icmp eq i32 %0, 8, !dbg !3538
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3538

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3538
  %3 = icmp eq i32 %2, 4, !dbg !3538
  br i1 %3, label %cond.true, label %cond.end, !dbg !3538

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3538
  br label %cond.end, !dbg !3538

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3539
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3540

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3541
  br label %cond.end12, !dbg !3540

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3540
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3542
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3543
  %and14 = and i32 %flags, 8, !dbg !3544
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3544
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3546

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3547
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3548

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3549
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3550
  br i1 %cmp, label %if.end, label %if.then, !dbg !3551

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3552
  %6 = load i64*, i64** %5, align 8, !dbg !3552
  %7 = load i64, i64* %6, align 8, !dbg !3553
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3554
  store i64 %7, i64* %8, align 8, !dbg !3554
  br label %if.end, !dbg !3555

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3556
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3556
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3557

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3558
  br label %cond.end28, !dbg !3557

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3557
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3559
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3560
  %and30 = and i32 %flags, 4, !dbg !3561
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3561
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3563

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3564
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3565

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3566
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3567
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3568

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3569
  %11 = load i64*, i64** %10, align 8, !dbg !3569
  %12 = load i64, i64* %11, align 8, !dbg !3570
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3571
  store i64 %12, i64* %13, align 8, !dbg !3571
  br label %if.end42, !dbg !3572

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3573
  store i8 0, i8* %done, align 8, !dbg !3574
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3575
  store i32 0, i32* %phi_i, align 8, !dbg !3576
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3577
  store i32 0, i32* %num_phi, align 4, !dbg !3578
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3579
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3580
  ret void, !dbg !3581
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3586, metadata !DIExpression()), !dbg !3587
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3588
  %tobool = icmp eq i8 %call, 0, !dbg !3588
  br i1 %tobool, label %return, label %if.end, !dbg !3590

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3591
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3591
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3591
  br label %return, !dbg !3592

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3587
  ret %struct.def_optype_d* %retval.0, !dbg !3593
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3598, metadata !DIExpression()), !dbg !3599
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3600
  %tobool = icmp eq i8 %call, 0, !dbg !3600
  br i1 %tobool, label %return, label %if.end, !dbg !3602

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3603
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3603
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3603
  br label %return, !dbg !3604

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3599
  ret %struct.use_optype_d* %retval.0, !dbg !3605
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3608, metadata !DIExpression()), !dbg !3609
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3610
  %cmp = icmp eq i32 %call, 0, !dbg !3611
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3612

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3613
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3614
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3616 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 0, metadata !3621, metadata !DIExpression()), !dbg !3622
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3623
  %tobool = icmp eq i8 %call, 0, !dbg !3623
  br i1 %tobool, label %return, label %if.then, !dbg !3625

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3626
  %0 = load %union.tree_node*, %union.tree_node** %call1, align 8, !dbg !3626
  br label %return, !dbg !3628

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3629
  ret %union.tree_node* %retval.0, !dbg !3630
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3631 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3635, metadata !DIExpression()), !dbg !3637
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3638
  %idxprom = zext i32 %call to i64, !dbg !3639
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3639
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  %cmp = icmp eq i64 %0, 0, !dbg !3640
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3640

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3640
  br label %cond.end, !dbg !3640

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3641
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3642
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3643
  ret %union.tree_node** %2, !dbg !3644
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3645 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3649, metadata !DIExpression()), !dbg !3650
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3651
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3652
  ret i32 %call1, !dbg !3653
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3654 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3658, metadata !DIExpression()), !dbg !3659
  %idxprom = zext i32 %code to i64, !dbg !3660
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3660
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3660
  ret i32 %0, !dbg !3661
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3662 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 %i, metadata !3667, metadata !DIExpression()), !dbg !3668
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3669
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3670
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3671
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3672 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3676, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %index, metadata !3677, metadata !DIExpression()), !dbg !3678
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3679
  %0 = load i32, i32* %capacity, align 8, !dbg !3679
  %cmp = icmp ult i32 %0, %index, !dbg !3679
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3679

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3679
  br label %cond.end, !dbg !3679

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3680
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3680
  ret %struct.phi_arg_d* %arrayidx, !dbg !3681
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @phi_arg_index_from_use(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3682 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3686, metadata !DIExpression()), !dbg !3691
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 2, i32 0, !dbg !3692
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3692
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !3690, metadata !DIExpression()), !dbg !3691
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #7, !dbg !3693
  %cmp = icmp eq i32 %call, 16, !dbg !3693
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3693

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3693
  br label %cond.end, !dbg !3693

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3687, metadata !DIExpression()), !dbg !3691
  %call1 = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %0, i32 0) #7, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call1, metadata !3688, metadata !DIExpression()), !dbg !3691
  %sub.ptr.lhs.cast = ptrtoint %struct.ssa_use_operand_d* %use to i64, !dbg !3695
  %sub.ptr.rhs.cast = ptrtoint %struct.phi_arg_d* %call1 to i64, !dbg !3695
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3695
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !3689, metadata !DIExpression()), !dbg !3691
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !3696
  ret i32 %conv, !dbg !3697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %i, metadata !3703, metadata !DIExpression()), !dbg !3704
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3705
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3705
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3705
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3705
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3705

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3705
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !3705
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !3705
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3705
  br label %cond.end, !dbg !3705

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3705
  %conv = trunc i64 %i to i32, !dbg !3705
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !3705
  ret %struct.edge_def* %call3, !dbg !3706
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3707 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3714, metadata !DIExpression()), !dbg !3715
  br label %land.end, !dbg !3716

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3716
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3716
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3716
  ret %struct.basic_block_def* %0, !dbg !3716
}

declare dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3717 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3729, metadata !DIExpression()), !dbg !3730
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3731
  %1 = load i64, i64* %0, align 8, !dbg !3731
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3732
  store i64 %1, i64* %2, align 8, !dbg !3732
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3733
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3734
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3735
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3738
  br label %while.body, !dbg !3738

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3739
  br i1 %tobool, label %if.then, label %if.end, !dbg !3740

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3741
  br label %while.end, !dbg !3743

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3744

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3738, !llvm.loop !3745

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3747

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3747
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3749
  %7 = load i32, i32* %indx9, align 8, !dbg !3749
  %cmp11 = icmp eq i32 %7, 0, !dbg !3750
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3751

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3752
  %8 = load i32, i32* %indx14, align 8, !dbg !3752
  %mul = shl i32 %8, 7, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3728, metadata !DIExpression()), !dbg !3730
  br label %if.end15, !dbg !3754

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3728, metadata !DIExpression()), !dbg !3730
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3755
  store i32 0, i32* %word_no, align 8, !dbg !3756
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3757
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3757
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3758
  store i64 %9, i64* %bits21, align 8, !dbg !3759
  %tobool23 = icmp eq i64 %9, 0, !dbg !3760
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3760
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %add, metadata !3728, metadata !DIExpression()), !dbg !3730
  store i32 %add, i32* %bit_no, align 4, !dbg !3762
  ret void, !dbg !3763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3764 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3768, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3769, metadata !DIExpression()), !dbg !3773
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3774
  %0 = load i64, i64* %bits, align 8, !dbg !3774
  %tobool = icmp eq i64 %0, 0, !dbg !3775
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3776

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3777
  br label %next_bit, !dbg !3780

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3770), !dbg !3781
  br label %while.cond, !dbg !3780

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3782
  %and = and i64 %2, 1, !dbg !3783
  %tobool2 = icmp eq i64 %and, 0, !dbg !3784
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3780

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3785
  store i64 %shr, i64* %bits, align 8, !dbg !3785
  %3 = load i32, i32* %bit_no, align 4, !dbg !3787
  %add = add i32 %3, 1, !dbg !3787
  store i32 %add, i32* %bit_no, align 4, !dbg !3787
  %.pre = load i64, i64* %bits, align 8, !dbg !3782
  br label %while.cond, !dbg !3780, !llvm.loop !3788

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3790
  %sub = add i32 %4, 63, !dbg !3791
  %div = and i32 %sub, -64, !dbg !3792
  store i32 %div, i32* %bit_no, align 4, !dbg !3793
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3794
  %5 = load i32, i32* %word_no, align 8, !dbg !3795
  %inc = add i32 %5, 1, !dbg !3795
  store i32 %inc, i32* %word_no, align 8, !dbg !3795
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3796
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3796
  br label %while.body6, !dbg !3797

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3798

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3799
  %cmp = icmp eq i32 %8, 2, !dbg !3800
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3796
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3798

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3777
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3777
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3777
  store i64 %10, i64* %bits, align 8, !dbg !3801
  %tobool14 = icmp eq i64 %10, 0, !dbg !3802
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3804

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3805
  %add17 = add i32 %11, 64, !dbg !3805
  store i32 %add17, i32* %bit_no, align 4, !dbg !3805
  %12 = load i32, i32* %word_no, align 8, !dbg !3806
  %inc19 = add i32 %12, 1, !dbg !3806
  store i32 %inc19, i32* %word_no, align 8, !dbg !3806
  br label %while.cond7, !dbg !3798, !llvm.loop !3807

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3796
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3809
  %14 = load i64, i64* %13, align 8, !dbg !3809
  store i64 %14, i64* %6, align 8, !dbg !3810
  %tobool24 = icmp eq i64 %14, 0, !dbg !3811
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3813

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3813
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3814
  %16 = load i32, i32* %indx, align 8, !dbg !3814
  %mul28 = shl i32 %16, 7, !dbg !3815
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3816
  store i32 0, i32* %word_no, align 8, !dbg !3817
  br label %while.body6, !dbg !3797, !llvm.loop !3818

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3820

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3820

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3773
  ret i8 %retval.0, !dbg !3820
}

declare dso_local %struct.basic_block_def* @nearest_common_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3821 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3825, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3826, metadata !DIExpression()), !dbg !3827
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3828
  %0 = load i64, i64* %bits, align 8, !dbg !3829
  %shr = lshr i64 %0, 1, !dbg !3829
  store i64 %shr, i64* %bits, align 8, !dbg !3829
  %1 = load i32, i32* %bit_no, align 4, !dbg !3830
  %add = add i32 %1, 1, !dbg !3830
  store i32 %add, i32* %bit_no, align 4, !dbg !3830
  ret void, !dbg !3831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3832 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3834, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3835, metadata !DIExpression()), !dbg !3838
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3839
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3836, metadata !DIExpression()), !dbg !3837
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3840
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3841
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3842
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3843
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3844
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3845
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3846
  ret void, !dbg !3847
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3848 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3850, metadata !DIExpression()), !dbg !3851
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3852
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3852
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3853
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3853
  %2 = load i64, i64* %1, align 8, !dbg !3853
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3854
  store i64 %2, i64* %3, align 8, !dbg !3854
  ret void, !dbg !3855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3856 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3858, metadata !DIExpression()), !dbg !3859
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3860
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3860

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3861
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3861
  br label %cond.end, !dbg !3860

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3860
  ret %struct.gimple_seq_node_d* %cond, !dbg !3862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3863 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3867, metadata !DIExpression()), !dbg !3868
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3869
  %0 = load i32, i32* %nargs, align 4, !dbg !3869
  ret i32 %0, !dbg !3870
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
!llvm.module.flags = !{!2046, !2047, !2048}
!llvm.ident = !{!2049}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_sink_code", scope: !2, file: !3, line: 582, type: !2020, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !645, globals: !2014, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-sink.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !154, !158, !163, !182, !189, !196, !390, !397, !573, !612, !619}
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
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !146, line: 31, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !146, line: 91, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !159, line: 474, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !164, line: 280, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !164, line: 1817, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !164, line: 1805, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !164, line: 39, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!198 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!203 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!204 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!205 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!208 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!209 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!210 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!214 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!215 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!216 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!217 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!218 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!219 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!220 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!221 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!222 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!223 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!225 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!226 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!227 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!228 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!229 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!230 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!231 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!232 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!233 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!234 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!235 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!236 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!237 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!238 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!240 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!241 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!242 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!244 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!245 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!246 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!247 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!248 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!249 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!251 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!252 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!253 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!254 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!255 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!256 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!257 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!258 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!259 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!260 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!261 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!262 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!263 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!264 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!266 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!267 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!268 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!270 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!271 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!272 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!273 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!274 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!275 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!277 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!278 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!280 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!281 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!282 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!283 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!284 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!287 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!288 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!293 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!295 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!296 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!297 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!298 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!299 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!300 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!301 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!302 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!303 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!304 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!305 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!306 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!307 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!308 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!309 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!310 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!311 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!313 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!314 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!315 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!316 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!317 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!318 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!320 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!321 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!322 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!323 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!324 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!325 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!326 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!327 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!328 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!329 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!330 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!331 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!332 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!333 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!334 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!335 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!336 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!337 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!338 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!339 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!340 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!341 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!342 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!343 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!344 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!345 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!346 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!347 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!348 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!349 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!363 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!364 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!365 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!366 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!367 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!383 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!384 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!385 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!386 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!387 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!388 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !391, line: 104, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396}
!393 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 74, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!400 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!572 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !574, line: 51, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!576 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!611 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !613, line: 119, baseType: !7, size: 32, elements: !614)
!613 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!614 = !{!615, !616, !617, !618}
!615 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!616 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!617 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!618 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !574, line: 727, baseType: !7, size: 32, elements: !620)
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
!645 = !{!646, !647, !648, !649, !652, !653, !196, !655, !2007, !980, !2010, !1013, !650, !2012, !1549, !2013}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!648 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !656, line: 56, baseType: !657)
!656 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !659)
!659 = !{!660, !693, !699, !712, !731, !742, !747, !756, !762, !775, !787, !825, !1335, !1363, !1380, !1381, !1386, !1395, !1401, !1406, !1410, !1414, !1658, !1705, !1711, !1717, !1724, !1737, !1751, !1768, !1780, !1802, !1817, !1989}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !164, line: 3372, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !661, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !661, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !661, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !661, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !661, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !661, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !661, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !661, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !661, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !661, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !661, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !661, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !661, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !661, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !661, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !661, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !661, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !661, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !661, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !661, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !661, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !661, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !661, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !661, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !661, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !661, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !661, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !661, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !661, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !661, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !164, line: 3373, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !694, file: !164, line: 403, baseType: !661, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !694, file: !164, line: 404, baseType: !655, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !164, line: 405, baseType: !655, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !658, file: !164, line: 3374, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !164, line: 1385, baseType: !694, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !700, file: !164, line: 1386, baseType: !704, size: 128, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !705, line: 58, baseType: !706)
!705 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 54, size: 128, elements: !707)
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !706, file: !705, line: 56, baseType: !709, size: 64)
!709 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !706, file: !705, line: 57, baseType: !711, size: 64, offset: 64)
!711 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !658, file: !164, line: 3375, baseType: !713, size: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !164, line: 1398, baseType: !694, size: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !713, file: !164, line: 1399, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !719, line: 52, size: 256, elements: !720)
!719 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !{!721, !722, !723, !724, !725, !726, !727}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !718, file: !719, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !718, file: !719, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !718, file: !719, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !718, file: !719, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !718, file: !719, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !718, file: !719, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !718, file: !719, line: 62, baseType: !728, size: 192, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 192, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 3)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !658, file: !164, line: 3376, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !732, file: !164, line: 1409, baseType: !694, size: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !732, file: !164, line: 1410, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !738, line: 27, size: 192, elements: !739)
!738 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !737, file: !738, line: 29, baseType: !704, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !737, file: !738, line: 30, baseType: !5, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !658, file: !164, line: 3377, baseType: !743, size: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !743, file: !164, line: 1438, baseType: !694, size: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !743, file: !164, line: 1439, baseType: !655, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !658, file: !164, line: 3378, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !164, line: 1419, baseType: !694, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !748, file: !164, line: 1420, baseType: !648, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !748, file: !164, line: 1421, baseType: !753, size: 8, offset: 224)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 8, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 1)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !658, file: !164, line: 3379, baseType: !757, size: 320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !164, line: 1429, baseType: !694, size: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !757, file: !164, line: 1430, baseType: !655, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !757, file: !164, line: 1431, baseType: !655, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !658, file: !164, line: 3380, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !164, line: 1461, baseType: !694, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !763, file: !164, line: 1462, baseType: !767, size: 128, offset: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !768, line: 31, size: 128, elements: !769)
!768 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = !{!770, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !767, file: !768, line: 32, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !767, file: !768, line: 33, baseType: !7, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !767, file: !768, line: 34, baseType: !7, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !658, file: !164, line: 3381, baseType: !776, size: 384)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !777)
!777 = !{!778, !779, !784, !785, !786}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !164, line: 2508, baseType: !694, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !776, file: !164, line: 2509, baseType: !780, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !781, line: 58, baseType: !782)
!781 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !783, line: 44, baseType: !7)
!783 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !776, file: !164, line: 2511, baseType: !655, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !776, file: !164, line: 2512, baseType: !655, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !658, file: !164, line: 3382, baseType: !788, size: 896)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !788, file: !164, line: 2653, baseType: !776, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !164, line: 2654, baseType: !655, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !788, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !788, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !788, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !788, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !788, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !788, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !788, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !788, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !788, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !788, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !788, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !788, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !788, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !788, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !788, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !788, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !788, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !788, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !788, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !788, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !788, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !788, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !788, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !788, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !788, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !788, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !788, file: !164, line: 2705, baseType: !655, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !788, file: !164, line: 2706, baseType: !655, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !788, file: !164, line: 2707, baseType: !655, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !788, file: !164, line: 2708, baseType: !655, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !788, file: !164, line: 2711, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !658, file: !164, line: 3383, baseType: !826, size: 960)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !164, line: 2757, baseType: !788, size: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !826, file: !164, line: 2758, baseType: !830, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !656, line: 50, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !833, line: 240, size: 384, elements: !834)
!833 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !832, file: !833, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !832, file: !833, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !832, file: !833, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !832, file: !833, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !832, file: !833, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !832, file: !833, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !832, file: !833, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !832, file: !833, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !832, file: !833, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !832, file: !833, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !832, file: !833, line: 321, baseType: !846, size: 320, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !833, line: 315, size: 320, elements: !847)
!847 = !{!848, !1302, !1304, !1333, !1334}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !846, file: !833, line: 316, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !754)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !833, line: 183, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !833, line: 166, size: 64, elements: !852)
!852 = !{!853, !854, !855, !856, !857, !865, !866, !878, !881, !941, !942, !1279, !1292, !1299}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !851, file: !833, line: 168, baseType: !648, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !851, file: !833, line: 169, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !851, file: !833, line: 170, baseType: !653, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !851, file: !833, line: 171, baseType: !830, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !851, file: !833, line: 172, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !656, line: 53, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !833, line: 359, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !860, file: !833, line: 360, baseType: !648, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !860, file: !833, line: 361, baseType: !864, size: 64, offset: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 64, elements: !754)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !851, file: !833, line: 173, baseType: !5, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !851, file: !833, line: 174, baseType: !867, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !833, line: 133, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 115, size: 32, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !868, file: !833, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !868, file: !833, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !868, file: !833, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !868, file: !833, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !868, file: !833, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !868, file: !833, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !868, file: !833, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !868, file: !833, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !851, file: !833, line: 175, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !833, line: 175, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !851, file: !833, line: 176, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !884, line: 75, size: 256, elements: !885)
!884 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!885 = !{!886, !900, !901, !902}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !883, file: !884, line: 76, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !884, line: 68, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !884, line: 63, size: 320, elements: !890)
!890 = !{!891, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !884, line: 64, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !889, file: !884, line: 65, baseType: !892, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !889, file: !884, line: 66, baseType: !7, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !889, file: !884, line: 67, baseType: !896, size: 128, offset: 192)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 128, elements: !898)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !884, line: 29, baseType: !709)
!898 = !{!899}
!899 = !DISubrange(count: 2)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !883, file: !884, line: 77, baseType: !887, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !883, file: !884, line: 78, baseType: !7, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !883, file: !884, line: 79, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !884, line: 49, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !884, line: 45, size: 832, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !905, file: !884, line: 46, baseType: !892, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !905, file: !884, line: 47, baseType: !882, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !905, file: !884, line: 48, baseType: !910, size: 704, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !911, line: 164, size: 704, elements: !912)
!911 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!912 = !{!913, !914, !924, !925, !926, !927, !928, !929, !933, !937, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !910, file: !911, line: 166, baseType: !711, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !910, file: !911, line: 167, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !911, line: 157, size: 192, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !916, file: !911, line: 159, baseType: !650, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !916, file: !911, line: 160, baseType: !915, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !916, file: !911, line: 161, baseType: !921, size: 32, offset: 128)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 4)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !910, file: !911, line: 168, baseType: !650, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !910, file: !911, line: 169, baseType: !650, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !910, file: !911, line: 170, baseType: !650, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !910, file: !911, line: 171, baseType: !711, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !910, file: !911, line: 172, baseType: !648, size: 32, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !910, file: !911, line: 176, baseType: !930, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!915, !652, !711}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !910, file: !911, line: 177, baseType: !934, size: 64, offset: 512)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !652, !915}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !910, file: !911, line: 178, baseType: !652, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !910, file: !911, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !910, file: !911, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !910, file: !911, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !851, file: !833, line: 177, baseType: !655, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !851, file: !833, line: 178, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !945)
!945 = !{!946, !1191, !1192, !1193, !1249, !1253, !1254, !1255, !1273, !1274, !1275, !1276, !1277, !1278}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !944, file: !135, line: 219, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !949, file: !135, line: 151, baseType: !952, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !953, file: !135, line: 150, baseType: !7, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !953, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !953, file: !135, line: 150, baseType: !958, size: 64, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 64, elements: !754)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !656, line: 108, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !962)
!962 = !{!963, !964, !965, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !961, file: !135, line: 124, baseType: !943, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !961, file: !135, line: 125, baseType: !943, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !961, file: !135, line: 131, baseType: !966, size: 64, offset: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !967)
!967 = !{!968, !1182}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !966, file: !135, line: 129, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !656, line: 66, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !574, line: 143, size: 192, elements: !972)
!972 = !{!973, !1180, !1181}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !971, file: !574, line: 145, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !656, line: 69, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !574, line: 136, size: 192, elements: !977)
!977 = !{!978, !1178, !1179}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !976, file: !574, line: 137, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !656, line: 58, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !574, line: 737, size: 768, elements: !982)
!982 = !{!983, !1000, !1033, !1039, !1044, !1049, !1056, !1062, !1068, !1073, !1087, !1092, !1098, !1103, !1113, !1118, !1136, !1143, !1150, !1156, !1161, !1167, !1173}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !981, file: !574, line: 738, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !574, line: 271, size: 256, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !984, file: !574, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !984, file: !574, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !984, file: !574, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !984, file: !574, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !984, file: !574, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !984, file: !574, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !984, file: !574, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !984, file: !574, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !984, file: !574, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !984, file: !574, line: 312, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !984, file: !574, line: 316, baseType: !780, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !984, file: !574, line: 319, baseType: !7, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !984, file: !574, line: 323, baseType: !943, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !984, file: !574, line: 327, baseType: !655, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !981, file: !574, line: 739, baseType: !1001, size: 448)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !574, line: 350, size: 448, elements: !1002)
!1002 = !{!1003, !1031}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1001, file: !574, line: 353, baseType: !1004, size: 384)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !574, line: 333, size: 384, elements: !1005)
!1005 = !{!1006, !1007, !1014}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1004, file: !574, line: 336, baseType: !984, size: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1004, file: !574, line: 343, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !613, line: 37, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !613, line: 39, baseType: !1008, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1009, file: !613, line: 40, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1004, file: !574, line: 344, baseType: !1015, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !613, line: 45, size: 320, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !613, line: 47, baseType: !1015, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1016, file: !613, line: 48, baseType: !1020, size: 256, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1021)
!1021 = !{!1022, !1024, !1025, !1030}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1020, file: !164, line: 1884, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1020, file: !164, line: 1885, baseType: !1023, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1020, file: !164, line: 1891, baseType: !1026, size: 64, offset: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !164, line: 1891, size: 64, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1026, file: !164, line: 1891, baseType: !979, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1026, file: !164, line: 1891, baseType: !655, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1020, file: !164, line: 1892, baseType: !1013, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1001, file: !574, line: 359, baseType: !1032, size: 64, offset: 384)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !754)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !981, file: !574, line: 740, baseType: !1034, size: 512)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !574, line: 365, size: 512, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1034, file: !574, line: 368, baseType: !1004, size: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1034, file: !574, line: 373, baseType: !655, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1034, file: !574, line: 374, baseType: !655, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !981, file: !574, line: 741, baseType: !1040, size: 576)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !574, line: 380, size: 576, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1040, file: !574, line: 383, baseType: !1034, size: 512)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1040, file: !574, line: 389, baseType: !1032, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !981, file: !574, line: 742, baseType: !1045, size: 320)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !574, line: 395, size: 320, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1045, file: !574, line: 397, baseType: !984, size: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1045, file: !574, line: 400, baseType: !969, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !981, file: !574, line: 743, baseType: !1050, size: 448)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !574, line: 406, size: 448, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1050, file: !574, line: 408, baseType: !984, size: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1050, file: !574, line: 412, baseType: !655, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1050, file: !574, line: 420, baseType: !655, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1050, file: !574, line: 423, baseType: !969, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !981, file: !574, line: 744, baseType: !1057, size: 384)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !574, line: 429, size: 384, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1057, file: !574, line: 431, baseType: !984, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1057, file: !574, line: 434, baseType: !655, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1057, file: !574, line: 437, baseType: !969, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !981, file: !574, line: 745, baseType: !1063, size: 384)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !574, line: 443, size: 384, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1063, file: !574, line: 445, baseType: !984, size: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1063, file: !574, line: 449, baseType: !655, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1063, file: !574, line: 453, baseType: !969, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !981, file: !574, line: 746, baseType: !1069, size: 320)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !574, line: 459, size: 320, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1069, file: !574, line: 461, baseType: !984, size: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1069, file: !574, line: 464, baseType: !655, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !981, file: !574, line: 747, baseType: !1074, size: 768)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !574, line: 469, size: 768, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1074, file: !574, line: 471, baseType: !984, size: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1074, file: !574, line: 474, baseType: !7, size: 32, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1074, file: !574, line: 475, baseType: !7, size: 32, offset: 288)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1074, file: !574, line: 478, baseType: !655, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1074, file: !574, line: 481, baseType: !1081, size: 384, offset: 384)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 384, elements: !754)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !164, line: 1917, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1082, file: !164, line: 1920, baseType: !1020, size: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1082, file: !164, line: 1921, baseType: !655, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1082, file: !164, line: 1922, baseType: !780, size: 32, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !981, file: !574, line: 748, baseType: !1088, size: 320)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !574, line: 487, size: 320, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1088, file: !574, line: 490, baseType: !984, size: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1088, file: !574, line: 494, baseType: !648, size: 32, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !981, file: !574, line: 749, baseType: !1093, size: 384)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !574, line: 500, size: 384, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1093, file: !574, line: 502, baseType: !984, size: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1093, file: !574, line: 506, baseType: !969, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1093, file: !574, line: 510, baseType: !969, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !981, file: !574, line: 750, baseType: !1099, size: 320)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !574, line: 529, size: 320, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1099, file: !574, line: 531, baseType: !984, size: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1099, file: !574, line: 540, baseType: !969, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !981, file: !574, line: 751, baseType: !1104, size: 704)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !574, line: 546, size: 704, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1104, file: !574, line: 549, baseType: !1034, size: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1104, file: !574, line: 553, baseType: !653, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1104, file: !574, line: 557, baseType: !647, size: 8, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1104, file: !574, line: 558, baseType: !647, size: 8, offset: 584)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1104, file: !574, line: 559, baseType: !647, size: 8, offset: 592)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1104, file: !574, line: 560, baseType: !647, size: 8, offset: 600)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1104, file: !574, line: 566, baseType: !1032, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !981, file: !574, line: 752, baseType: !1114, size: 384)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !574, line: 571, size: 384, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1114, file: !574, line: 573, baseType: !1045, size: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1114, file: !574, line: 577, baseType: !655, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !981, file: !574, line: 753, baseType: !1119, size: 576)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !574, line: 600, size: 576, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1126, !1135}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1119, file: !574, line: 602, baseType: !1045, size: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1119, file: !574, line: 605, baseType: !655, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1119, file: !574, line: 609, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1125, line: 46, baseType: !709)
!1125 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1119, file: !574, line: 612, baseType: !1127, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !574, line: 581, size: 320, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1128, file: !574, line: 583, baseType: !196, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1128, file: !574, line: 586, baseType: !655, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1128, file: !574, line: 589, baseType: !655, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1128, file: !574, line: 592, baseType: !655, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1128, file: !574, line: 595, baseType: !655, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1119, file: !574, line: 616, baseType: !969, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !981, file: !574, line: 754, baseType: !1137, size: 512)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !574, line: 622, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1137, file: !574, line: 624, baseType: !1045, size: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1137, file: !574, line: 628, baseType: !655, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1137, file: !574, line: 632, baseType: !655, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1137, file: !574, line: 636, baseType: !655, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !981, file: !574, line: 755, baseType: !1144, size: 704)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !574, line: 642, size: 704, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1144, file: !574, line: 644, baseType: !1137, size: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1144, file: !574, line: 648, baseType: !655, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1144, file: !574, line: 652, baseType: !655, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1144, file: !574, line: 653, baseType: !655, size: 64, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !981, file: !574, line: 756, baseType: !1151, size: 448)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !574, line: 663, size: 448, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1151, file: !574, line: 665, baseType: !1045, size: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1151, file: !574, line: 668, baseType: !655, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1151, file: !574, line: 673, baseType: !655, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !981, file: !574, line: 757, baseType: !1157, size: 384)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !574, line: 694, size: 384, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1157, file: !574, line: 696, baseType: !1045, size: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1157, file: !574, line: 699, baseType: !655, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !981, file: !574, line: 758, baseType: !1162, size: 384)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !574, line: 681, size: 384, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1162, file: !574, line: 683, baseType: !984, size: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1162, file: !574, line: 686, baseType: !655, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1162, file: !574, line: 689, baseType: !655, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !981, file: !574, line: 759, baseType: !1168, size: 384)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !574, line: 707, size: 384, elements: !1169)
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1168, file: !574, line: 709, baseType: !984, size: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1168, file: !574, line: 712, baseType: !655, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1168, file: !574, line: 712, baseType: !655, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !981, file: !574, line: 760, baseType: !1174, size: 320)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !574, line: 718, size: 320, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1174, file: !574, line: 720, baseType: !984, size: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1174, file: !574, line: 723, baseType: !655, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !976, file: !574, line: 138, baseType: !975, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !574, line: 139, baseType: !975, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !971, file: !574, line: 146, baseType: !974, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !971, file: !574, line: 152, baseType: !969, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !966, file: !135, line: 130, baseType: !830, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !961, file: !135, line: 134, baseType: !652, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !961, file: !135, line: 137, baseType: !655, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !961, file: !135, line: 138, baseType: !780, size: 32, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !961, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !135, line: 144, baseType: !648, size: 32, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !961, file: !135, line: 145, baseType: !648, size: 32, offset: 416)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !961, file: !135, line: 146, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !711)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !944, file: !135, line: 220, baseType: !947, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !944, file: !135, line: 223, baseType: !652, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !944, file: !135, line: 226, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !146, line: 100, size: 1216, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1206, !1207, !1208, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1239, !1247, !1248}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1195, file: !146, line: 102, baseType: !648, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1195, file: !146, line: 105, baseType: !7, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1195, file: !146, line: 108, baseType: !943, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1195, file: !146, line: 111, baseType: !943, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1195, file: !146, line: 114, baseType: !1202, size: 64, offset: 192)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !146, line: 41, size: 64, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1202, file: !146, line: 42, baseType: !145, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1202, file: !146, line: 43, baseType: !7, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1195, file: !146, line: 117, baseType: !7, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1195, file: !146, line: 120, baseType: !7, size: 32, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1195, file: !146, line: 123, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !146, line: 87, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !146, line: 87, size: 128, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1211, file: !146, line: 87, baseType: !1214, size: 128)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !146, line: 85, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !146, line: 85, size: 128, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1215, file: !146, line: 85, baseType: !7, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1215, file: !146, line: 85, baseType: !7, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1215, file: !146, line: 85, baseType: !1220, size: 64, offset: 64)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 64, elements: !754)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !146, line: 84, baseType: !1194)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1195, file: !146, line: 126, baseType: !1194, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1195, file: !146, line: 129, baseType: !1194, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1195, file: !146, line: 132, baseType: !652, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1195, file: !146, line: 139, baseType: !655, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1195, file: !146, line: 143, baseType: !704, size: 128, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1195, file: !146, line: 146, baseType: !704, size: 128, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1195, file: !146, line: 148, baseType: !647, size: 8, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1195, file: !146, line: 149, baseType: !647, size: 8, offset: 904)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1195, file: !146, line: 153, baseType: !154, size: 32, offset: 928)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1195, file: !146, line: 156, baseType: !1232, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !146, line: 48, size: 320, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1233, file: !146, line: 50, baseType: !979, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1233, file: !146, line: 59, baseType: !704, size: 128, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1233, file: !146, line: 64, baseType: !647, size: 8, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1233, file: !146, line: 67, baseType: !1232, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1195, file: !146, line: 159, baseType: !1240, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !146, line: 72, size: 256, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1241, file: !146, line: 74, baseType: !960, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1241, file: !146, line: 77, baseType: !1240, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1241, file: !146, line: 78, baseType: !1240, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1241, file: !146, line: 81, baseType: !1240, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1195, file: !146, line: 162, baseType: !647, size: 8, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1195, file: !146, line: 166, baseType: !655, size: 64, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !944, file: !135, line: 229, baseType: !1250, size: 128, offset: 256)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 128, elements: !898)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !944, file: !135, line: 232, baseType: !943, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !944, file: !135, line: 233, baseType: !943, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !944, file: !135, line: 238, baseType: !1256, size: 64, offset: 512)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1257)
!1257 = !{!1258, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1256, file: !135, line: 236, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1260, file: !135, line: 275, baseType: !969, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1260, file: !135, line: 278, baseType: !969, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1256, file: !135, line: 237, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1266, file: !135, line: 261, baseType: !830, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1266, file: !135, line: 262, baseType: !830, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1266, file: !135, line: 266, baseType: !830, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1266, file: !135, line: 267, baseType: !830, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1266, file: !135, line: 270, baseType: !648, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !944, file: !135, line: 241, baseType: !1190, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !944, file: !135, line: 244, baseType: !648, size: 32, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !944, file: !135, line: 247, baseType: !648, size: 32, offset: 672)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !944, file: !135, line: 250, baseType: !648, size: 32, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !944, file: !135, line: 253, baseType: !648, size: 32, offset: 736)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !135, line: 256, baseType: !648, size: 32, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !851, file: !833, line: 179, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !833, line: 150, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !833, line: 142, size: 320, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1290, !1291}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1282, file: !833, line: 144, baseType: !655, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1282, file: !833, line: 145, baseType: !830, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1282, file: !833, line: 146, baseType: !830, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1282, file: !833, line: 147, baseType: !1288, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1289, line: 31, baseType: !648)
!1289 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1282, file: !833, line: 148, baseType: !7, size: 32, offset: 224)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1282, file: !833, line: 149, baseType: !647, size: 8, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !851, file: !833, line: 180, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !833, line: 162, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !833, line: 159, size: 128, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1295, file: !833, line: 160, baseType: !655, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1295, file: !833, line: 161, baseType: !711, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !851, file: !833, line: 181, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !833, line: 181, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !846, file: !833, line: 317, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !754)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !846, file: !833, line: 318, baseType: !1305, size: 320)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !833, line: 188, size: 320, elements: !1306)
!1306 = !{!1307, !1309, !1332}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1305, file: !833, line: 190, baseType: !1308, size: 192)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 192, elements: !729)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1305, file: !833, line: 193, baseType: !1310, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !833, line: 206, size: 320, elements: !1312)
!1312 = !{!1313, !1317, !1318, !1319, !1331}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1311, file: !833, line: 208, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !656, line: 62, baseType: !1316)
!1316 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !656, line: 61, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1311, file: !833, line: 211, baseType: !7, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1311, file: !833, line: 214, baseType: !711, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1311, file: !833, line: 224, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !833, line: 202, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !833, line: 202, size: 128, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1322, file: !833, line: 202, baseType: !1325, size: 128)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !833, line: 200, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !833, line: 200, size: 128, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1326, file: !833, line: 200, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1326, file: !833, line: 200, baseType: !7, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1326, file: !833, line: 200, baseType: !864, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1311, file: !833, line: 234, baseType: !1320, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !833, line: 197, baseType: !711, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !846, file: !833, line: 319, baseType: !718, size: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !846, file: !833, line: 320, baseType: !737, size: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !658, file: !164, line: 3384, baseType: !1336, size: 1472)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !1337)
!1337 = !{!1338, !1359, !1360, !1361, !1362}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1336, file: !164, line: 3115, baseType: !1339, size: 1216)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1339, file: !164, line: 2985, baseType: !826, size: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1339, file: !164, line: 2986, baseType: !655, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1339, file: !164, line: 2987, baseType: !655, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1339, file: !164, line: 2988, baseType: !655, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1339, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1339, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1339, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1339, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1339, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1339, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1339, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1339, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1339, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1339, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1339, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1339, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1339, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1339, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1336, file: !164, line: 3117, baseType: !655, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1336, file: !164, line: 3119, baseType: !655, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1336, file: !164, line: 3121, baseType: !655, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1336, file: !164, line: 3123, baseType: !655, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !658, file: !164, line: 3385, baseType: !1364, size: 1088)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !164, line: 2875, baseType: !826, size: 960)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1364, file: !164, line: 2876, baseType: !830, size: 64, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1364, file: !164, line: 2877, baseType: !1369, size: 64, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1371, line: 172, size: 128, elements: !1372)
!1371 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1370, file: !1371, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1370, file: !1371, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1370, file: !1371, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1370, file: !1371, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1370, file: !1371, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1370, file: !1371, line: 195, baseType: !7, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1370, file: !1371, line: 199, baseType: !655, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !658, file: !164, line: 3386, baseType: !1339, size: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !658, file: !164, line: 3387, baseType: !1382, size: 1280)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1382, file: !164, line: 3094, baseType: !1339, size: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1382, file: !164, line: 3095, baseType: !1369, size: 64, offset: 1216)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !658, file: !164, line: 3388, baseType: !1387, size: 1216)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1387, file: !164, line: 2825, baseType: !788, size: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1387, file: !164, line: 2827, baseType: !655, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1387, file: !164, line: 2828, baseType: !655, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1387, file: !164, line: 2829, baseType: !655, size: 64, offset: 1024)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1387, file: !164, line: 2830, baseType: !655, size: 64, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1387, file: !164, line: 2831, baseType: !655, size: 64, offset: 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !658, file: !164, line: 3389, baseType: !1396, size: 1024)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1396, file: !164, line: 2851, baseType: !826, size: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1396, file: !164, line: 2852, baseType: !648, size: 32, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1396, file: !164, line: 2853, baseType: !648, size: 32, offset: 992)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !658, file: !164, line: 3390, baseType: !1402, size: 1024)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1402, file: !164, line: 2858, baseType: !826, size: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1402, file: !164, line: 2859, baseType: !1369, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !658, file: !164, line: 3391, baseType: !1407, size: 960)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1407, file: !164, line: 2863, baseType: !826, size: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !658, file: !164, line: 3392, baseType: !1411, size: 1472)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !164, line: 3305, baseType: !1336, size: 1472)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !658, file: !164, line: 3393, baseType: !1415, size: 1792)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !1416)
!1416 = !{!1417, !1418, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1415, file: !164, line: 3249, baseType: !1336, size: 1472)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1415, file: !164, line: 3251, baseType: !1419, size: 64, offset: 1472)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1421, line: 463, size: 1152, elements: !1422)
!1421 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1422 = !{!1423, !1426, !1457, !1458, !1573, !1581, !1582, !1583, !1584, !1585, !1586, !1610, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1420, file: !1421, line: 464, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1421, line: 464, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1420, file: !1421, line: 467, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1429)
!1429 = !{!1430, !1432, !1433, !1446, !1447, !1448, !1449, !1450, !1451, !1453, !1455, !1456}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1428, file: !135, line: 377, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !656, line: 111, baseType: !943)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1428, file: !135, line: 378, baseType: !1431, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1428, file: !135, line: 381, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1436, file: !135, line: 282, baseType: !1439, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1440, file: !135, line: 281, baseType: !7, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1440, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1440, file: !135, line: 281, baseType: !1445, size: 64, offset: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1431, size: 64, elements: !754)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1428, file: !135, line: 384, baseType: !648, size: 32, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1428, file: !135, line: 387, baseType: !648, size: 32, offset: 224)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1428, file: !135, line: 390, baseType: !648, size: 32, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1428, file: !135, line: 394, baseType: !1434, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1428, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1428, file: !135, line: 399, baseType: !1452, size: 64, offset: 416)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !898)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1428, file: !135, line: 402, baseType: !1454, size: 64, offset: 480)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !898)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1428, file: !135, line: 406, baseType: !648, size: 32, offset: 544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1428, file: !135, line: 409, baseType: !648, size: 32, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1420, file: !1421, line: 470, baseType: !970, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1420, file: !1421, line: 473, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1371, line: 39, size: 1152, elements: !1461)
!1461 = !{!1462, !1512, !1525, !1537, !1538, !1550, !1551, !1555, !1556, !1557, !1558, !1559}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1460, file: !1371, line: 41, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1464, line: 144, baseType: !1465)
!1464 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1464, line: 100, size: 896, elements: !1467)
!1467 = !{!1468, !1476, !1481, !1486, !1488, !1489, !1490, !1491, !1492, !1493, !1498, !1500, !1501, !1506, !1511}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1466, file: !1464, line: 102, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1464, line: 52, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1464, line: 47, baseType: !7)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1466, file: !1464, line: 105, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1464, line: 59, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!648, !1474, !1474}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1466, file: !1464, line: 108, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1464, line: 63, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !652}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1466, file: !1464, line: 111, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1466, file: !1464, line: 114, baseType: !1124, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1466, file: !1464, line: 117, baseType: !1124, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1466, file: !1464, line: 120, baseType: !1124, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1466, file: !1464, line: 124, baseType: !7, size: 32, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1466, file: !1464, line: 128, baseType: !7, size: 32, offset: 480)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1466, file: !1464, line: 131, baseType: !1494, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1464, line: 75, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!652, !1124, !1124}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1466, file: !1464, line: 132, baseType: !1499, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1464, line: 78, baseType: !1483)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1466, file: !1464, line: 135, baseType: !652, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1466, file: !1464, line: 136, baseType: !1502, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1464, line: 82, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!652, !652, !1124, !1124}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1466, file: !1464, line: 137, baseType: !1507, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1464, line: 83, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !652, !652}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1466, file: !1464, line: 141, baseType: !7, size: 32, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1460, file: !1371, line: 48, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !574, line: 35, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !574, line: 35, size: 128, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1515, file: !574, line: 35, baseType: !1518, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !574, line: 33, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !574, line: 33, size: 128, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1519, file: !574, line: 33, baseType: !7, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1519, file: !574, line: 33, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1519, file: !574, line: 33, baseType: !1524, size: 64, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 64, elements: !754)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1460, file: !1371, line: 51, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1528, file: !164, line: 183, baseType: !1531, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1532, file: !164, line: 182, baseType: !7, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1532, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1532, file: !164, line: 182, baseType: !1032, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1460, file: !1371, line: 54, baseType: !655, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1460, file: !1371, line: 57, baseType: !1539, size: 128, offset: 256)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1540, line: 31, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1539, file: !1540, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1539, file: !1540, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1539, file: !1540, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1539, file: !1540, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1539, file: !1540, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1539, file: !1540, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1539, file: !1540, line: 56, baseType: !1549, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !656, line: 47, baseType: !882)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1460, file: !1371, line: 60, baseType: !1539, size: 128, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1460, file: !1371, line: 64, baseType: !1552, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1554, line: 33, flags: DIFlagFwdDecl)
!1554 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1460, file: !1371, line: 67, baseType: !655, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1460, file: !1371, line: 73, baseType: !1463, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1460, file: !1371, line: 77, baseType: !1549, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1460, file: !1371, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1460, file: !1371, line: 82, baseType: !1560, size: 320, offset: 832)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !613, line: 62, size: 320, elements: !1561)
!1561 = !{!1562, !1568, !1569, !1570, !1571, !1572}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1560, file: !613, line: 63, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !613, line: 56, size: 128, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1564, file: !613, line: 57, baseType: !1563, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1564, file: !613, line: 58, baseType: !753, size: 8, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1560, file: !613, line: 64, baseType: !7, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1560, file: !613, line: 66, baseType: !7, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1560, file: !613, line: 68, baseType: !647, size: 8, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1560, file: !613, line: 70, baseType: !1008, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1560, file: !613, line: 71, baseType: !1015, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1420, file: !1421, line: 476, baseType: !1574, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !146, line: 187, size: 256, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1575, file: !146, line: 189, baseType: !648, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1575, file: !146, line: 192, baseType: !1209, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1575, file: !146, line: 197, baseType: !1463, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1575, file: !146, line: 200, baseType: !1194, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1420, file: !1421, line: 479, baseType: !1463, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1420, file: !1421, line: 484, baseType: !655, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1420, file: !1421, line: 488, baseType: !655, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1420, file: !1421, line: 493, baseType: !655, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1420, file: !1421, line: 496, baseType: !655, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1420, file: !1421, line: 501, baseType: !1587, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1589)
!1589 = !{!1590, !1593, !1594, !1595, !1596, !1598, !1599, !1604, !1605, !1606, !1607, !1608, !1609}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1588, file: !159, line: 2356, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1588, file: !159, line: 2357, baseType: !653, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1588, file: !159, line: 2358, baseType: !648, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1588, file: !159, line: 2359, baseType: !648, size: 32, offset: 160)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1588, file: !159, line: 2360, baseType: !1597, size: 128, offset: 192)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 128, elements: !922)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1588, file: !159, line: 2364, baseType: !648, size: 32, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1588, file: !159, line: 2367, baseType: !1600, size: 128, offset: 384)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1600, file: !159, line: 2351, baseType: !830, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1600, file: !159, line: 2352, baseType: !711, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1588, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1588, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1588, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1588, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1588, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1588, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1420, file: !1421, line: 504, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1421, line: 504, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1420, file: !1421, line: 507, baseType: !1463, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1420, file: !1421, line: 510, baseType: !648, size: 32, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1420, file: !1421, line: 513, baseType: !648, size: 32, offset: 864)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1420, file: !1421, line: 516, baseType: !780, size: 32, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1420, file: !1421, line: 519, baseType: !780, size: 32, offset: 928)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1420, file: !1421, line: 522, baseType: !7, size: 32, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1420, file: !1421, line: 523, baseType: !7, size: 32, offset: 992)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1420, file: !1421, line: 528, baseType: !653, size: 64, offset: 1024)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1420, file: !1421, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1420, file: !1421, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1420, file: !1421, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1420, file: !1421, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1420, file: !1421, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1420, file: !1421, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1420, file: !1421, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1420, file: !1421, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1420, file: !1421, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1420, file: !1421, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1420, file: !1421, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1420, file: !1421, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1420, file: !1421, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1420, file: !1421, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1420, file: !1421, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1420, file: !1421, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1415, file: !164, line: 3254, baseType: !655, size: 64, offset: 1536)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1415, file: !164, line: 3257, baseType: !655, size: 64, offset: 1600)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1415, file: !164, line: 3258, baseType: !655, size: 64, offset: 1664)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1415, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1415, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1415, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1415, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1415, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1415, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1415, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1415, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1415, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1415, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1415, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1415, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1415, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1415, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1415, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1415, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1415, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1415, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !164, line: 3394, baseType: !1659, size: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1659, file: !164, line: 2280, baseType: !694, size: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1659, file: !164, line: 2281, baseType: !655, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1659, file: !164, line: 2282, baseType: !655, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1659, file: !164, line: 2283, baseType: !655, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1659, file: !164, line: 2284, baseType: !655, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1659, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1659, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1659, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1659, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1659, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1659, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1659, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1659, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1659, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1659, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1659, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1659, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1659, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1659, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1659, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1659, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1659, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1659, file: !164, line: 2306, baseType: !1288, size: 32, offset: 544)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1659, file: !164, line: 2307, baseType: !655, size: 64, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1659, file: !164, line: 2308, baseType: !655, size: 64, offset: 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1659, file: !164, line: 2314, baseType: !1687, size: 64, offset: 704)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1687, file: !164, line: 2310, baseType: !648, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1687, file: !164, line: 2311, baseType: !653, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1687, file: !164, line: 2312, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !164, line: 2315, baseType: !655, size: 64, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1659, file: !164, line: 2316, baseType: !655, size: 64, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1659, file: !164, line: 2317, baseType: !655, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1659, file: !164, line: 2318, baseType: !655, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1659, file: !164, line: 2319, baseType: !655, size: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1659, file: !164, line: 2320, baseType: !655, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1659, file: !164, line: 2321, baseType: !655, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1659, file: !164, line: 2322, baseType: !655, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1659, file: !164, line: 2324, baseType: !1703, size: 64, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !164, line: 3395, baseType: !1706, size: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1706, file: !164, line: 1470, baseType: !694, size: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1706, file: !164, line: 1471, baseType: !655, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1706, file: !164, line: 1472, baseType: !655, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !658, file: !164, line: 3396, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !164, line: 1483, baseType: !694, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1712, file: !164, line: 1484, baseType: !648, size: 32, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1712, file: !164, line: 1485, baseType: !1032, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !658, file: !164, line: 3397, baseType: !1718, size: 384)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1718, file: !164, line: 1830, baseType: !694, size: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1718, file: !164, line: 1831, baseType: !780, size: 32, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1718, file: !164, line: 1832, baseType: !655, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1718, file: !164, line: 1835, baseType: !1032, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !658, file: !164, line: 3398, baseType: !1725, size: 704)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1736}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1725, file: !164, line: 1899, baseType: !694, size: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1725, file: !164, line: 1902, baseType: !655, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1725, file: !164, line: 1905, baseType: !979, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1725, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1725, file: !164, line: 1911, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1371, line: 117, size: 128, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1733, file: !1371, line: 120, baseType: !1539, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1725, file: !164, line: 1914, baseType: !1020, size: 256, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !658, file: !164, line: 3399, baseType: !1738, size: 704)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1738, file: !164, line: 2009, baseType: !694, size: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1738, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1738, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1738, file: !164, line: 2014, baseType: !780, size: 32, offset: 224)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1738, file: !164, line: 2016, baseType: !655, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1738, file: !164, line: 2017, baseType: !1526, size: 64, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1738, file: !164, line: 2019, baseType: !655, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1738, file: !164, line: 2020, baseType: !655, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1738, file: !164, line: 2021, baseType: !655, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1738, file: !164, line: 2022, baseType: !655, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1738, file: !164, line: 2023, baseType: !655, size: 64, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !658, file: !164, line: 3400, baseType: !1752, size: 832)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1752, file: !164, line: 2431, baseType: !694, size: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1752, file: !164, line: 2433, baseType: !655, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1752, file: !164, line: 2434, baseType: !655, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1752, file: !164, line: 2435, baseType: !655, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1752, file: !164, line: 2436, baseType: !655, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1752, file: !164, line: 2437, baseType: !1526, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1752, file: !164, line: 2438, baseType: !655, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1752, file: !164, line: 2440, baseType: !655, size: 64, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1752, file: !164, line: 2441, baseType: !655, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1752, file: !164, line: 2443, baseType: !1764, size: 128, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1765, file: !164, line: 182, baseType: !1531, size: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !658, file: !164, line: 3401, baseType: !1769, size: 320)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1770)
!1770 = !{!1771, !1772, !1779}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1769, file: !164, line: 3329, baseType: !694, size: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1769, file: !164, line: 3330, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1774, file: !164, line: 3322, baseType: !1773, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1774, file: !164, line: 3323, baseType: !1773, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1774, file: !164, line: 3324, baseType: !655, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1769, file: !164, line: 3331, baseType: !1773, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !658, file: !164, line: 3402, baseType: !1781, size: 256)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1781, file: !164, line: 1541, baseType: !694, size: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1781, file: !164, line: 1542, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1787, file: !164, line: 1538, baseType: !1790, size: 192)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1791, file: !164, line: 1537, baseType: !7, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1791, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1791, file: !164, line: 1537, baseType: !1796, size: 128, offset: 64)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1797, size: 128, elements: !754)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1798, file: !164, line: 1533, baseType: !655, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1798, file: !164, line: 1534, baseType: !655, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !658, file: !164, line: 3403, baseType: !1803, size: 512)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1814, !1815, !1816}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1803, file: !164, line: 1939, baseType: !694, size: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1803, file: !164, line: 1940, baseType: !780, size: 32, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1803, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1803, file: !164, line: 1946, baseType: !1809, size: 32, offset: 256)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1809, file: !164, line: 1943, baseType: !182, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1809, file: !164, line: 1944, baseType: !189, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1809, file: !164, line: 1945, baseType: !196, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1803, file: !164, line: 1950, baseType: !969, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1803, file: !164, line: 1951, baseType: !969, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1803, file: !164, line: 1953, baseType: !1032, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !658, file: !164, line: 3404, baseType: !1818, size: 1664)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1818, file: !164, line: 3338, baseType: !694, size: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1818, file: !164, line: 3341, baseType: !1822, size: 1472, offset: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1823, line: 410, size: 1472, elements: !1824)
!1823 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1822, file: !1823, line: 412, baseType: !648, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1822, file: !1823, line: 413, baseType: !648, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1822, file: !1823, line: 414, baseType: !648, size: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1822, file: !1823, line: 415, baseType: !648, size: 32, offset: 96)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1822, file: !1823, line: 416, baseType: !648, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1822, file: !1823, line: 417, baseType: !648, size: 32, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1822, file: !1823, line: 418, baseType: !647, size: 8, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1822, file: !1823, line: 419, baseType: !647, size: 8, offset: 200)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1822, file: !1823, line: 420, baseType: !1834, size: 8, offset: 208)
!1834 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1822, file: !1823, line: 421, baseType: !1834, size: 8, offset: 216)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1822, file: !1823, line: 422, baseType: !1834, size: 8, offset: 224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1822, file: !1823, line: 423, baseType: !1834, size: 8, offset: 232)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1822, file: !1823, line: 424, baseType: !1834, size: 8, offset: 240)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1822, file: !1823, line: 425, baseType: !1834, size: 8, offset: 248)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1822, file: !1823, line: 426, baseType: !1834, size: 8, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1822, file: !1823, line: 427, baseType: !1834, size: 8, offset: 264)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1822, file: !1823, line: 428, baseType: !1834, size: 8, offset: 272)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1822, file: !1823, line: 429, baseType: !1834, size: 8, offset: 280)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1822, file: !1823, line: 430, baseType: !1834, size: 8, offset: 288)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1822, file: !1823, line: 431, baseType: !1834, size: 8, offset: 296)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1822, file: !1823, line: 432, baseType: !1834, size: 8, offset: 304)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1822, file: !1823, line: 433, baseType: !1834, size: 8, offset: 312)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1822, file: !1823, line: 434, baseType: !1834, size: 8, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1822, file: !1823, line: 435, baseType: !1834, size: 8, offset: 328)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1822, file: !1823, line: 436, baseType: !1834, size: 8, offset: 336)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1822, file: !1823, line: 437, baseType: !1834, size: 8, offset: 344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1822, file: !1823, line: 438, baseType: !1834, size: 8, offset: 352)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1822, file: !1823, line: 439, baseType: !1834, size: 8, offset: 360)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1822, file: !1823, line: 440, baseType: !1834, size: 8, offset: 368)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1822, file: !1823, line: 441, baseType: !1834, size: 8, offset: 376)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1822, file: !1823, line: 442, baseType: !1834, size: 8, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1822, file: !1823, line: 443, baseType: !1834, size: 8, offset: 392)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1822, file: !1823, line: 444, baseType: !1834, size: 8, offset: 400)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1822, file: !1823, line: 445, baseType: !1834, size: 8, offset: 408)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1822, file: !1823, line: 446, baseType: !1834, size: 8, offset: 416)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1822, file: !1823, line: 447, baseType: !1834, size: 8, offset: 424)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1822, file: !1823, line: 448, baseType: !1834, size: 8, offset: 432)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1822, file: !1823, line: 449, baseType: !1834, size: 8, offset: 440)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1822, file: !1823, line: 450, baseType: !1834, size: 8, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1822, file: !1823, line: 451, baseType: !1834, size: 8, offset: 456)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1822, file: !1823, line: 452, baseType: !1834, size: 8, offset: 464)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1822, file: !1823, line: 453, baseType: !1834, size: 8, offset: 472)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1822, file: !1823, line: 454, baseType: !1834, size: 8, offset: 480)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1822, file: !1823, line: 455, baseType: !1834, size: 8, offset: 488)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1822, file: !1823, line: 456, baseType: !1834, size: 8, offset: 496)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1822, file: !1823, line: 457, baseType: !1834, size: 8, offset: 504)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1822, file: !1823, line: 458, baseType: !1834, size: 8, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1822, file: !1823, line: 459, baseType: !1834, size: 8, offset: 520)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1822, file: !1823, line: 460, baseType: !1834, size: 8, offset: 528)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1822, file: !1823, line: 461, baseType: !1834, size: 8, offset: 536)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1822, file: !1823, line: 462, baseType: !1834, size: 8, offset: 544)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1822, file: !1823, line: 463, baseType: !1834, size: 8, offset: 552)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1822, file: !1823, line: 464, baseType: !1834, size: 8, offset: 560)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1822, file: !1823, line: 465, baseType: !1834, size: 8, offset: 568)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1822, file: !1823, line: 466, baseType: !1834, size: 8, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1822, file: !1823, line: 467, baseType: !1834, size: 8, offset: 584)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1822, file: !1823, line: 468, baseType: !1834, size: 8, offset: 592)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1822, file: !1823, line: 469, baseType: !1834, size: 8, offset: 600)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1822, file: !1823, line: 470, baseType: !1834, size: 8, offset: 608)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1822, file: !1823, line: 471, baseType: !1834, size: 8, offset: 616)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1822, file: !1823, line: 472, baseType: !1834, size: 8, offset: 624)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1822, file: !1823, line: 473, baseType: !1834, size: 8, offset: 632)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1822, file: !1823, line: 474, baseType: !1834, size: 8, offset: 640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1822, file: !1823, line: 475, baseType: !1834, size: 8, offset: 648)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1822, file: !1823, line: 476, baseType: !1834, size: 8, offset: 656)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1822, file: !1823, line: 477, baseType: !1834, size: 8, offset: 664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1822, file: !1823, line: 478, baseType: !1834, size: 8, offset: 672)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1822, file: !1823, line: 479, baseType: !1834, size: 8, offset: 680)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1822, file: !1823, line: 480, baseType: !1834, size: 8, offset: 688)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1822, file: !1823, line: 481, baseType: !1834, size: 8, offset: 696)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1822, file: !1823, line: 482, baseType: !1834, size: 8, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1822, file: !1823, line: 483, baseType: !1834, size: 8, offset: 712)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1822, file: !1823, line: 484, baseType: !1834, size: 8, offset: 720)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1822, file: !1823, line: 485, baseType: !1834, size: 8, offset: 728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1822, file: !1823, line: 486, baseType: !1834, size: 8, offset: 736)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1822, file: !1823, line: 487, baseType: !1834, size: 8, offset: 744)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1822, file: !1823, line: 488, baseType: !1834, size: 8, offset: 752)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1822, file: !1823, line: 489, baseType: !1834, size: 8, offset: 760)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1822, file: !1823, line: 490, baseType: !1834, size: 8, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1822, file: !1823, line: 491, baseType: !1834, size: 8, offset: 776)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1822, file: !1823, line: 492, baseType: !1834, size: 8, offset: 784)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1822, file: !1823, line: 493, baseType: !1834, size: 8, offset: 792)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1822, file: !1823, line: 494, baseType: !1834, size: 8, offset: 800)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1822, file: !1823, line: 495, baseType: !1834, size: 8, offset: 808)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1822, file: !1823, line: 496, baseType: !1834, size: 8, offset: 816)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1822, file: !1823, line: 497, baseType: !1834, size: 8, offset: 824)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1822, file: !1823, line: 498, baseType: !1834, size: 8, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1822, file: !1823, line: 499, baseType: !1834, size: 8, offset: 840)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1822, file: !1823, line: 500, baseType: !1834, size: 8, offset: 848)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1822, file: !1823, line: 501, baseType: !1834, size: 8, offset: 856)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1822, file: !1823, line: 502, baseType: !1834, size: 8, offset: 864)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1822, file: !1823, line: 503, baseType: !1834, size: 8, offset: 872)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1822, file: !1823, line: 504, baseType: !1834, size: 8, offset: 880)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1822, file: !1823, line: 505, baseType: !1834, size: 8, offset: 888)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1822, file: !1823, line: 506, baseType: !1834, size: 8, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1822, file: !1823, line: 507, baseType: !1834, size: 8, offset: 904)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1822, file: !1823, line: 508, baseType: !1834, size: 8, offset: 912)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1822, file: !1823, line: 509, baseType: !1834, size: 8, offset: 920)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1822, file: !1823, line: 510, baseType: !1834, size: 8, offset: 928)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1822, file: !1823, line: 511, baseType: !1834, size: 8, offset: 936)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1822, file: !1823, line: 512, baseType: !1834, size: 8, offset: 944)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1822, file: !1823, line: 513, baseType: !1834, size: 8, offset: 952)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1822, file: !1823, line: 514, baseType: !1834, size: 8, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1822, file: !1823, line: 515, baseType: !1834, size: 8, offset: 968)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1822, file: !1823, line: 516, baseType: !1834, size: 8, offset: 976)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1822, file: !1823, line: 517, baseType: !1834, size: 8, offset: 984)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1822, file: !1823, line: 518, baseType: !1834, size: 8, offset: 992)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1822, file: !1823, line: 519, baseType: !1834, size: 8, offset: 1000)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1822, file: !1823, line: 520, baseType: !1834, size: 8, offset: 1008)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1822, file: !1823, line: 521, baseType: !1834, size: 8, offset: 1016)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1822, file: !1823, line: 522, baseType: !1834, size: 8, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1822, file: !1823, line: 523, baseType: !1834, size: 8, offset: 1032)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1822, file: !1823, line: 524, baseType: !1834, size: 8, offset: 1040)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1822, file: !1823, line: 525, baseType: !1834, size: 8, offset: 1048)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1822, file: !1823, line: 526, baseType: !1834, size: 8, offset: 1056)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1822, file: !1823, line: 527, baseType: !1834, size: 8, offset: 1064)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1822, file: !1823, line: 528, baseType: !1834, size: 8, offset: 1072)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1822, file: !1823, line: 529, baseType: !1834, size: 8, offset: 1080)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1822, file: !1823, line: 530, baseType: !1834, size: 8, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1822, file: !1823, line: 531, baseType: !1834, size: 8, offset: 1096)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1822, file: !1823, line: 532, baseType: !1834, size: 8, offset: 1104)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1822, file: !1823, line: 533, baseType: !1834, size: 8, offset: 1112)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1822, file: !1823, line: 534, baseType: !1834, size: 8, offset: 1120)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1822, file: !1823, line: 535, baseType: !1834, size: 8, offset: 1128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1822, file: !1823, line: 536, baseType: !1834, size: 8, offset: 1136)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1822, file: !1823, line: 537, baseType: !1834, size: 8, offset: 1144)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1822, file: !1823, line: 538, baseType: !1834, size: 8, offset: 1152)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1822, file: !1823, line: 539, baseType: !1834, size: 8, offset: 1160)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1822, file: !1823, line: 540, baseType: !1834, size: 8, offset: 1168)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1822, file: !1823, line: 541, baseType: !1834, size: 8, offset: 1176)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1822, file: !1823, line: 542, baseType: !1834, size: 8, offset: 1184)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1822, file: !1823, line: 543, baseType: !1834, size: 8, offset: 1192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1822, file: !1823, line: 544, baseType: !1834, size: 8, offset: 1200)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1822, file: !1823, line: 545, baseType: !1834, size: 8, offset: 1208)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1822, file: !1823, line: 546, baseType: !1834, size: 8, offset: 1216)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1822, file: !1823, line: 547, baseType: !1834, size: 8, offset: 1224)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1822, file: !1823, line: 548, baseType: !1834, size: 8, offset: 1232)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1822, file: !1823, line: 549, baseType: !1834, size: 8, offset: 1240)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1822, file: !1823, line: 550, baseType: !1834, size: 8, offset: 1248)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1822, file: !1823, line: 551, baseType: !1834, size: 8, offset: 1256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1822, file: !1823, line: 552, baseType: !1834, size: 8, offset: 1264)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1822, file: !1823, line: 553, baseType: !1834, size: 8, offset: 1272)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1822, file: !1823, line: 554, baseType: !1834, size: 8, offset: 1280)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1822, file: !1823, line: 555, baseType: !1834, size: 8, offset: 1288)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1822, file: !1823, line: 556, baseType: !1834, size: 8, offset: 1296)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1822, file: !1823, line: 557, baseType: !1834, size: 8, offset: 1304)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1822, file: !1823, line: 558, baseType: !1834, size: 8, offset: 1312)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1822, file: !1823, line: 559, baseType: !1834, size: 8, offset: 1320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1822, file: !1823, line: 560, baseType: !1834, size: 8, offset: 1328)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1822, file: !1823, line: 561, baseType: !1834, size: 8, offset: 1336)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1822, file: !1823, line: 562, baseType: !1834, size: 8, offset: 1344)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1822, file: !1823, line: 563, baseType: !1834, size: 8, offset: 1352)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1822, file: !1823, line: 564, baseType: !1834, size: 8, offset: 1360)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1822, file: !1823, line: 565, baseType: !1834, size: 8, offset: 1368)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1822, file: !1823, line: 566, baseType: !1834, size: 8, offset: 1376)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1822, file: !1823, line: 567, baseType: !1834, size: 8, offset: 1384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1822, file: !1823, line: 568, baseType: !1834, size: 8, offset: 1392)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1822, file: !1823, line: 569, baseType: !1834, size: 8, offset: 1400)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1822, file: !1823, line: 570, baseType: !1834, size: 8, offset: 1408)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1822, file: !1823, line: 571, baseType: !1834, size: 8, offset: 1416)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1822, file: !1823, line: 572, baseType: !1834, size: 8, offset: 1424)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1822, file: !1823, line: 573, baseType: !1834, size: 8, offset: 1432)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1822, file: !1823, line: 574, baseType: !1834, size: 8, offset: 1440)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !658, file: !164, line: 3405, baseType: !1990, size: 384)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1990, file: !164, line: 3353, baseType: !694, size: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1990, file: !164, line: 3356, baseType: !1994, size: 192, offset: 192)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1823, line: 578, size: 192, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1994, file: !1823, line: 580, baseType: !648, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1994, file: !1823, line: 581, baseType: !648, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1994, file: !1823, line: 582, baseType: !648, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1994, file: !1823, line: 583, baseType: !648, size: 32, offset: 96)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1994, file: !1823, line: 584, baseType: !647, size: 8, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1994, file: !1823, line: 585, baseType: !647, size: 8, offset: 136)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1994, file: !1823, line: 586, baseType: !647, size: 8, offset: 144)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1994, file: !1823, line: 587, baseType: !647, size: 8, offset: 152)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1994, file: !1823, line: 588, baseType: !647, size: 8, offset: 160)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1994, file: !1823, line: 589, baseType: !647, size: 8, offset: 168)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1994, file: !1823, line: 590, baseType: !647, size: 8, offset: 176)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !613, line: 30, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !164, line: 1893, baseType: !1020)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !613, line: 27, baseType: !1013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2014 = !{!0, !2015}
!2015 = !DIGlobalVariableExpression(var: !2016, expr: !DIExpression())
!2016 = distinct !DIGlobalVariable(name: "sink_stats", scope: !2, file: !3, line: 78, type: !2017, isLocal: true, isDefinition: true)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 73, size: 32, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sunk", scope: !2017, file: !3, line: 76, baseType: !648, size: 32)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !391, line: 156, size: 640, elements: !2021)
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2020, file: !391, line: 158, baseType: !2023, size: 640)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !391, line: 114, size: 640, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2031, !2035, !2037, !2038, !2039, !2041, !2042, !2043, !2044, !2045}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2023, file: !391, line: 117, baseType: !390, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2023, file: !391, line: 121, baseType: !653, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2023, file: !391, line: 125, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!647}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2023, file: !391, line: 130, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!7}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2023, file: !391, line: 133, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2023, file: !391, line: 136, baseType: !2036, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2023, file: !391, line: 139, baseType: !648, size: 32, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2023, file: !391, line: 143, baseType: !2040, size: 32, offset: 416)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !398, line: 80, baseType: !397)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2023, file: !391, line: 146, baseType: !7, size: 32, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2023, file: !391, line: 147, baseType: !7, size: 32, offset: 480)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2023, file: !391, line: 148, baseType: !7, size: 32, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2023, file: !391, line: 151, baseType: !7, size: 32, offset: 544)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2023, file: !391, line: 152, baseType: !7, size: 32, offset: 576)
!2046 = !{i32 2, !"Dwarf Version", i32 4}
!2047 = !{i32 2, !"Debug Info Version", i32 3}
!2048 = !{i32 1, !"wchar_size", i32 4}
!2049 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2050 = distinct !DISubprogram(name: "vprintf", scope: !2051, file: !2051, line: 39, type: !2052, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!648, !2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2056, file: !3, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2056, file: !3, baseType: !7, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2056, file: !3, baseType: !652, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2056, file: !3, baseType: !652, size: 64, offset: 128)
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2050, file: !2051, line: 39, type: !2054)
!2064 = !DILocalVariable(name: "__arg", arg: 2, scope: !2050, file: !2051, line: 39, type: !2055)
!2065 = !DILocation(line: 0, scope: !2050)
!2066 = !DILocation(line: 41, column: 20, scope: !2050)
!2067 = !DILocation(line: 41, column: 10, scope: !2050)
!2068 = !DILocation(line: 41, column: 3, scope: !2050)
!2069 = distinct !DISubprogram(name: "getchar", scope: !2051, file: !2051, line: 47, type: !2070, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!648}
!2072 = !{}
!2073 = !DILocation(line: 49, column: 16, scope: !2069)
!2074 = !DILocation(line: 49, column: 10, scope: !2069)
!2075 = !DILocation(line: 49, column: 3, scope: !2069)
!2076 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2051, file: !2051, line: 56, type: !2077, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!648, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2081, line: 7, baseType: !2082)
!2081 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2083, line: 49, size: 1728, elements: !2084)
!2083 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2100, !2102, !2103, !2104, !2107, !2109, !2110, !2111, !2114, !2116, !2119, !2122, !2123, !2124, !2125, !2126}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2082, file: !2083, line: 51, baseType: !648, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2082, file: !2083, line: 54, baseType: !650, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2082, file: !2083, line: 55, baseType: !650, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2082, file: !2083, line: 56, baseType: !650, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2082, file: !2083, line: 57, baseType: !650, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2082, file: !2083, line: 58, baseType: !650, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2082, file: !2083, line: 59, baseType: !650, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2082, file: !2083, line: 60, baseType: !650, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2082, file: !2083, line: 61, baseType: !650, size: 64, offset: 512)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2082, file: !2083, line: 64, baseType: !650, size: 64, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2082, file: !2083, line: 65, baseType: !650, size: 64, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2082, file: !2083, line: 66, baseType: !650, size: 64, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2082, file: !2083, line: 68, baseType: !2098, size: 64, offset: 768)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2083, line: 36, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2082, file: !2083, line: 70, baseType: !2101, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2082, file: !2083, line: 72, baseType: !648, size: 32, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2082, file: !2083, line: 73, baseType: !648, size: 32, offset: 928)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2082, file: !2083, line: 74, baseType: !2105, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2106, line: 152, baseType: !711)
!2106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2082, file: !2083, line: 77, baseType: !2108, size: 16, offset: 1024)
!2108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2082, file: !2083, line: 78, baseType: !1834, size: 8, offset: 1040)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2082, file: !2083, line: 79, baseType: !753, size: 8, offset: 1048)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2082, file: !2083, line: 81, baseType: !2112, size: 64, offset: 1088)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2083, line: 43, baseType: null)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2082, file: !2083, line: 89, baseType: !2115, size: 64, offset: 1152)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2106, line: 153, baseType: !711)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2082, file: !2083, line: 91, baseType: !2117, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2083, line: 37, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2082, file: !2083, line: 92, baseType: !2120, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2083, line: 38, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2082, file: !2083, line: 93, baseType: !2101, size: 64, offset: 1344)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2082, file: !2083, line: 94, baseType: !652, size: 64, offset: 1408)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2082, file: !2083, line: 95, baseType: !1124, size: 64, offset: 1472)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2082, file: !2083, line: 96, baseType: !648, size: 32, offset: 1536)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2082, file: !2083, line: 98, baseType: !2127, size: 160, offset: 1568)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 160, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 20)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__fp", arg: 1, scope: !2076, file: !2051, line: 56, type: !2079)
!2132 = !DILocation(line: 0, scope: !2076)
!2133 = !DILocation(line: 58, column: 10, scope: !2076)
!2134 = !DILocation(line: 58, column: 3, scope: !2076)
!2135 = distinct !DISubprogram(name: "getc_unlocked", scope: !2051, file: !2051, line: 66, type: !2077, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2136 = !{!2137}
!2137 = !DILocalVariable(name: "__fp", arg: 1, scope: !2135, file: !2051, line: 66, type: !2079)
!2138 = !DILocation(line: 0, scope: !2135)
!2139 = !DILocation(line: 68, column: 10, scope: !2135)
!2140 = !DILocation(line: 68, column: 3, scope: !2135)
!2141 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2051, file: !2051, line: 73, type: !2070, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2142 = !DILocation(line: 75, column: 10, scope: !2141)
!2143 = !DILocation(line: 75, column: 3, scope: !2141)
!2144 = distinct !DISubprogram(name: "putchar", scope: !2051, file: !2051, line: 82, type: !2145, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!648, !648}
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "__c", arg: 1, scope: !2144, file: !2051, line: 82, type: !648)
!2149 = !DILocation(line: 0, scope: !2144)
!2150 = !DILocation(line: 84, column: 21, scope: !2144)
!2151 = !DILocation(line: 84, column: 10, scope: !2144)
!2152 = !DILocation(line: 84, column: 3, scope: !2144)
!2153 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2051, file: !2051, line: 91, type: !2154, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!648, !648, !2079}
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "__c", arg: 1, scope: !2153, file: !2051, line: 91, type: !648)
!2158 = !DILocalVariable(name: "__stream", arg: 2, scope: !2153, file: !2051, line: 91, type: !2079)
!2159 = !DILocation(line: 0, scope: !2153)
!2160 = !DILocation(line: 93, column: 10, scope: !2153)
!2161 = !DILocation(line: 93, column: 3, scope: !2153)
!2162 = distinct !DISubprogram(name: "putc_unlocked", scope: !2051, file: !2051, line: 101, type: !2154, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2163)
!2163 = !{!2164, !2165}
!2164 = !DILocalVariable(name: "__c", arg: 1, scope: !2162, file: !2051, line: 101, type: !648)
!2165 = !DILocalVariable(name: "__stream", arg: 2, scope: !2162, file: !2051, line: 101, type: !2079)
!2166 = !DILocation(line: 0, scope: !2162)
!2167 = !DILocation(line: 103, column: 10, scope: !2162)
!2168 = !DILocation(line: 103, column: 3, scope: !2162)
!2169 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2051, file: !2051, line: 108, type: !2145, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "__c", arg: 1, scope: !2169, file: !2051, line: 108, type: !648)
!2172 = !DILocation(line: 0, scope: !2169)
!2173 = !DILocation(line: 110, column: 10, scope: !2169)
!2174 = !DILocation(line: 110, column: 3, scope: !2169)
!2175 = distinct !DISubprogram(name: "getline", scope: !2051, file: !2051, line: 118, type: !2176, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2178, !649, !2179, !2079}
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2106, line: 193, baseType: !711)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!2180 = !{!2181, !2182, !2183}
!2181 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2175, file: !2051, line: 118, type: !649)
!2182 = !DILocalVariable(name: "__n", arg: 2, scope: !2175, file: !2051, line: 118, type: !2179)
!2183 = !DILocalVariable(name: "__stream", arg: 3, scope: !2175, file: !2051, line: 118, type: !2079)
!2184 = !DILocation(line: 0, scope: !2175)
!2185 = !DILocation(line: 120, column: 10, scope: !2175)
!2186 = !DILocation(line: 120, column: 3, scope: !2175)
!2187 = distinct !DISubprogram(name: "feof_unlocked", scope: !2051, file: !2051, line: 128, type: !2077, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "__stream", arg: 1, scope: !2187, file: !2051, line: 128, type: !2079)
!2190 = !DILocation(line: 0, scope: !2187)
!2191 = !DILocation(line: 130, column: 10, scope: !2187)
!2192 = !DILocation(line: 130, column: 3, scope: !2187)
!2193 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2051, file: !2051, line: 135, type: !2077, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "__stream", arg: 1, scope: !2193, file: !2051, line: 135, type: !2079)
!2196 = !DILocation(line: 0, scope: !2193)
!2197 = !DILocation(line: 137, column: 10, scope: !2193)
!2198 = !DILocation(line: 137, column: 3, scope: !2193)
!2199 = distinct !DISubprogram(name: "tolower", scope: !2200, file: !2200, line: 207, type: !2145, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2200 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "__c", arg: 1, scope: !2199, file: !2200, line: 207, type: !648)
!2203 = !DILocation(line: 0, scope: !2199)
!2204 = !DILocation(line: 209, column: 22, scope: !2199)
!2205 = !DILocation(line: 209, column: 39, scope: !2199)
!2206 = !DILocation(line: 209, column: 38, scope: !2199)
!2207 = !DILocation(line: 209, column: 37, scope: !2199)
!2208 = !DILocation(line: 209, column: 10, scope: !2199)
!2209 = !DILocation(line: 209, column: 3, scope: !2199)
!2210 = distinct !DISubprogram(name: "toupper", scope: !2200, file: !2200, line: 213, type: !2145, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2211 = !{!2212}
!2212 = !DILocalVariable(name: "__c", arg: 1, scope: !2210, file: !2200, line: 213, type: !648)
!2213 = !DILocation(line: 0, scope: !2210)
!2214 = !DILocation(line: 215, column: 22, scope: !2210)
!2215 = !DILocation(line: 215, column: 39, scope: !2210)
!2216 = !DILocation(line: 215, column: 38, scope: !2210)
!2217 = !DILocation(line: 215, column: 37, scope: !2210)
!2218 = !DILocation(line: 215, column: 10, scope: !2210)
!2219 = !DILocation(line: 215, column: 3, scope: !2210)
!2220 = distinct !DISubprogram(name: "atoi", scope: !2221, file: !2221, line: 361, type: !2222, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2221 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!648, !653}
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2220, file: !2221, line: 361, type: !653)
!2226 = !DILocation(line: 0, scope: !2220)
!2227 = !DILocation(line: 363, column: 16, scope: !2220)
!2228 = !DILocation(line: 363, column: 10, scope: !2220)
!2229 = !DILocation(line: 363, column: 3, scope: !2220)
!2230 = distinct !DISubprogram(name: "atol", scope: !2221, file: !2221, line: 366, type: !2231, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!711, !653}
!2233 = !{!2234}
!2234 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2230, file: !2221, line: 366, type: !653)
!2235 = !DILocation(line: 0, scope: !2230)
!2236 = !DILocation(line: 368, column: 10, scope: !2230)
!2237 = !DILocation(line: 368, column: 3, scope: !2230)
!2238 = distinct !DISubprogram(name: "atoll", scope: !2221, file: !2221, line: 373, type: !2239, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2241, !653}
!2241 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2238, file: !2221, line: 373, type: !653)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 375, column: 10, scope: !2238)
!2246 = !DILocation(line: 375, column: 3, scope: !2238)
!2247 = distinct !DISubprogram(name: "bsearch", scope: !2248, file: !2248, line: 20, type: !2249, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!652, !1474, !1474, !1124, !1124, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2221, line: 808, baseType: !1478)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2253 = !DILocalVariable(name: "__key", arg: 1, scope: !2247, file: !2248, line: 20, type: !1474)
!2254 = !DILocalVariable(name: "__base", arg: 2, scope: !2247, file: !2248, line: 20, type: !1474)
!2255 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2247, file: !2248, line: 20, type: !1124)
!2256 = !DILocalVariable(name: "__size", arg: 4, scope: !2247, file: !2248, line: 20, type: !1124)
!2257 = !DILocalVariable(name: "__compar", arg: 5, scope: !2247, file: !2248, line: 21, type: !2251)
!2258 = !DILocalVariable(name: "__l", scope: !2247, file: !2248, line: 23, type: !1124)
!2259 = !DILocalVariable(name: "__u", scope: !2247, file: !2248, line: 23, type: !1124)
!2260 = !DILocalVariable(name: "__idx", scope: !2247, file: !2248, line: 23, type: !1124)
!2261 = !DILocalVariable(name: "__p", scope: !2247, file: !2248, line: 24, type: !1474)
!2262 = !DILocalVariable(name: "__comparison", scope: !2247, file: !2248, line: 25, type: !648)
!2263 = !DILocation(line: 0, scope: !2247)
!2264 = !DILocation(line: 29, column: 3, scope: !2247)
!2265 = !DILocation(line: 27, column: 7, scope: !2247)
!2266 = !DILocation(line: 29, column: 14, scope: !2247)
!2267 = !DILocation(line: 31, column: 20, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2247, file: !2248, line: 30, column: 5)
!2269 = !DILocation(line: 31, column: 27, scope: !2268)
!2270 = !DILocation(line: 32, column: 56, scope: !2268)
!2271 = !DILocation(line: 32, column: 47, scope: !2268)
!2272 = !DILocation(line: 33, column: 22, scope: !2268)
!2273 = !DILocation(line: 34, column: 24, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !2248, line: 34, column: 11)
!2275 = !DILocation(line: 34, column: 11, scope: !2268)
!2276 = !DILocation(line: 36, column: 29, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !2248, line: 36, column: 16)
!2278 = !DILocation(line: 36, column: 16, scope: !2274)
!2279 = !DILocation(line: 37, column: 14, scope: !2277)
!2280 = distinct !{!2280, !2264, !2281}
!2281 = !DILocation(line: 40, column: 5, scope: !2247)
!2282 = !DILocation(line: 43, column: 1, scope: !2247)
!2283 = distinct !DISubprogram(name: "atof", scope: !2284, file: !2284, line: 25, type: !2285, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!2287, !653}
!2287 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2283, file: !2284, line: 25, type: !653)
!2290 = !DILocation(line: 0, scope: !2283)
!2291 = !DILocation(line: 27, column: 10, scope: !2283)
!2292 = !DILocation(line: 27, column: 3, scope: !2283)
!2293 = distinct !DISubprogram(name: "strtoimax", scope: !2294, file: !2294, line: 324, type: !2295, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2301)
!2294 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2297, !2054, !2300, !648}
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2298, line: 101, baseType: !2299)
!2298 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2106, line: 72, baseType: !711)
!2300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!2301 = !{!2302, !2303, !2304}
!2302 = !DILocalVariable(name: "nptr", arg: 1, scope: !2293, file: !2294, line: 324, type: !2054)
!2303 = !DILocalVariable(name: "endptr", arg: 2, scope: !2293, file: !2294, line: 324, type: !2300)
!2304 = !DILocalVariable(name: "base", arg: 3, scope: !2293, file: !2294, line: 324, type: !648)
!2305 = !DILocation(line: 0, scope: !2293)
!2306 = !DILocation(line: 327, column: 10, scope: !2293)
!2307 = !DILocation(line: 327, column: 3, scope: !2293)
!2308 = distinct !DISubprogram(name: "strtoumax", scope: !2294, file: !2294, line: 336, type: !2309, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2311, !2054, !2300, !648}
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2298, line: 102, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2106, line: 73, baseType: !709)
!2313 = !{!2314, !2315, !2316}
!2314 = !DILocalVariable(name: "nptr", arg: 1, scope: !2308, file: !2294, line: 336, type: !2054)
!2315 = !DILocalVariable(name: "endptr", arg: 2, scope: !2308, file: !2294, line: 336, type: !2300)
!2316 = !DILocalVariable(name: "base", arg: 3, scope: !2308, file: !2294, line: 336, type: !648)
!2317 = !DILocation(line: 0, scope: !2308)
!2318 = !DILocation(line: 339, column: 10, scope: !2308)
!2319 = !DILocation(line: 339, column: 3, scope: !2308)
!2320 = distinct !DISubprogram(name: "wcstoimax", scope: !2294, file: !2294, line: 348, type: !2321, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!2297, !2323, !2327, !648}
!2323 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2324)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2326)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2294, line: 34, baseType: !648)
!2327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "nptr", arg: 1, scope: !2320, file: !2294, line: 348, type: !2323)
!2332 = !DILocalVariable(name: "endptr", arg: 2, scope: !2320, file: !2294, line: 348, type: !2327)
!2333 = !DILocalVariable(name: "base", arg: 3, scope: !2320, file: !2294, line: 348, type: !648)
!2334 = !DILocation(line: 0, scope: !2320)
!2335 = !DILocation(line: 351, column: 10, scope: !2320)
!2336 = !DILocation(line: 351, column: 3, scope: !2320)
!2337 = distinct !DISubprogram(name: "wcstoumax", scope: !2294, file: !2294, line: 362, type: !2338, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!2311, !2323, !2327, !648}
!2340 = !{!2341, !2342, !2343}
!2341 = !DILocalVariable(name: "nptr", arg: 1, scope: !2337, file: !2294, line: 362, type: !2323)
!2342 = !DILocalVariable(name: "endptr", arg: 2, scope: !2337, file: !2294, line: 362, type: !2327)
!2343 = !DILocalVariable(name: "base", arg: 3, scope: !2337, file: !2294, line: 362, type: !648)
!2344 = !DILocation(line: 0, scope: !2337)
!2345 = !DILocation(line: 365, column: 10, scope: !2337)
!2346 = !DILocation(line: 365, column: 3, scope: !2337)
!2347 = distinct !DISubprogram(name: "stat", scope: !2348, file: !2348, line: 453, type: !2349, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!648, !653, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2353, line: 46, size: 1152, elements: !2354)
!2353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2354 = !{!2355, !2357, !2359, !2361, !2363, !2365, !2367, !2368, !2369, !2370, !2372, !2374, !2382, !2383, !2384}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2352, file: !2353, line: 48, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2106, line: 145, baseType: !709)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2352, file: !2353, line: 53, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2106, line: 148, baseType: !709)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2352, file: !2353, line: 61, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2106, line: 151, baseType: !709)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2352, file: !2353, line: 62, baseType: !2362, size: 32, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2106, line: 150, baseType: !7)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2352, file: !2353, line: 64, baseType: !2364, size: 32, offset: 224)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2106, line: 146, baseType: !7)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2352, file: !2353, line: 65, baseType: !2366, size: 32, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2106, line: 147, baseType: !7)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2352, file: !2353, line: 67, baseType: !648, size: 32, offset: 288)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2352, file: !2353, line: 69, baseType: !2356, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2352, file: !2353, line: 74, baseType: !2105, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2352, file: !2353, line: 78, baseType: !2371, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2106, line: 174, baseType: !711)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2352, file: !2353, line: 80, baseType: !2373, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2106, line: 179, baseType: !711)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2352, file: !2353, line: 91, baseType: !2375, size: 128, offset: 576)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2376, line: 10, size: 128, elements: !2377)
!2376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2377 = !{!2378, !2380}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2375, file: !2376, line: 12, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2106, line: 160, baseType: !711)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2375, file: !2376, line: 16, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2106, line: 196, baseType: !711)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2352, file: !2353, line: 92, baseType: !2375, size: 128, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2352, file: !2353, line: 93, baseType: !2375, size: 128, offset: 832)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2352, file: !2353, line: 106, baseType: !2385, size: 192, offset: 960)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 192, elements: !729)
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "__path", arg: 1, scope: !2347, file: !2348, line: 453, type: !653)
!2388 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2347, file: !2348, line: 453, type: !2351)
!2389 = !DILocation(line: 0, scope: !2347)
!2390 = !DILocation(line: 455, column: 10, scope: !2347)
!2391 = !DILocation(line: 455, column: 3, scope: !2347)
!2392 = distinct !DISubprogram(name: "lstat", scope: !2348, file: !2348, line: 460, type: !2349, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2393 = !{!2394, !2395}
!2394 = !DILocalVariable(name: "__path", arg: 1, scope: !2392, file: !2348, line: 460, type: !653)
!2395 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2392, file: !2348, line: 460, type: !2351)
!2396 = !DILocation(line: 0, scope: !2392)
!2397 = !DILocation(line: 462, column: 10, scope: !2392)
!2398 = !DILocation(line: 462, column: 3, scope: !2392)
!2399 = distinct !DISubprogram(name: "fstat", scope: !2348, file: !2348, line: 467, type: !2400, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!648, !648, !2351}
!2402 = !{!2403, !2404}
!2403 = !DILocalVariable(name: "__fd", arg: 1, scope: !2399, file: !2348, line: 467, type: !648)
!2404 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2399, file: !2348, line: 467, type: !2351)
!2405 = !DILocation(line: 0, scope: !2399)
!2406 = !DILocation(line: 469, column: 10, scope: !2399)
!2407 = !DILocation(line: 469, column: 3, scope: !2399)
!2408 = distinct !DISubprogram(name: "fstatat", scope: !2348, file: !2348, line: 474, type: !2409, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!648, !648, !653, !2351, !648}
!2411 = !{!2412, !2413, !2414, !2415}
!2412 = !DILocalVariable(name: "__fd", arg: 1, scope: !2408, file: !2348, line: 474, type: !648)
!2413 = !DILocalVariable(name: "__filename", arg: 2, scope: !2408, file: !2348, line: 474, type: !653)
!2414 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2408, file: !2348, line: 474, type: !2351)
!2415 = !DILocalVariable(name: "__flag", arg: 4, scope: !2408, file: !2348, line: 474, type: !648)
!2416 = !DILocation(line: 0, scope: !2408)
!2417 = !DILocation(line: 477, column: 10, scope: !2408)
!2418 = !DILocation(line: 477, column: 3, scope: !2408)
!2419 = distinct !DISubprogram(name: "mknod", scope: !2348, file: !2348, line: 483, type: !2420, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!648, !653, !2362, !2356}
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "__path", arg: 1, scope: !2419, file: !2348, line: 483, type: !653)
!2424 = !DILocalVariable(name: "__mode", arg: 2, scope: !2419, file: !2348, line: 483, type: !2362)
!2425 = !DILocalVariable(name: "__dev", arg: 3, scope: !2419, file: !2348, line: 483, type: !2356)
!2426 = !DILocation(line: 0, scope: !2419)
!2427 = !DILocation(line: 485, column: 10, scope: !2419)
!2428 = !DILocation(line: 485, column: 3, scope: !2419)
!2429 = distinct !DISubprogram(name: "mknodat", scope: !2348, file: !2348, line: 491, type: !2430, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!648, !648, !653, !2362, !2356}
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "__fd", arg: 1, scope: !2429, file: !2348, line: 491, type: !648)
!2434 = !DILocalVariable(name: "__path", arg: 2, scope: !2429, file: !2348, line: 491, type: !653)
!2435 = !DILocalVariable(name: "__mode", arg: 3, scope: !2429, file: !2348, line: 491, type: !2362)
!2436 = !DILocalVariable(name: "__dev", arg: 4, scope: !2429, file: !2348, line: 491, type: !2356)
!2437 = !DILocation(line: 0, scope: !2429)
!2438 = !DILocation(line: 494, column: 10, scope: !2429)
!2439 = !DILocation(line: 494, column: 3, scope: !2429)
!2440 = distinct !DISubprogram(name: "stat64", scope: !2348, file: !2348, line: 502, type: !2441, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!648, !653, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2353, line: 119, size: 1152, elements: !2445)
!2445 = !{!2446, !2447, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2459, !2460, !2461, !2462}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2444, file: !2353, line: 121, baseType: !2356, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2444, file: !2353, line: 123, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2106, line: 149, baseType: !709)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2444, file: !2353, line: 124, baseType: !2360, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2444, file: !2353, line: 125, baseType: !2362, size: 32, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2444, file: !2353, line: 132, baseType: !2364, size: 32, offset: 224)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2444, file: !2353, line: 133, baseType: !2366, size: 32, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2444, file: !2353, line: 135, baseType: !648, size: 32, offset: 288)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2444, file: !2353, line: 136, baseType: !2356, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2444, file: !2353, line: 137, baseType: !2105, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2444, file: !2353, line: 143, baseType: !2371, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2444, file: !2353, line: 144, baseType: !2458, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2106, line: 180, baseType: !711)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2444, file: !2353, line: 152, baseType: !2375, size: 128, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2444, file: !2353, line: 153, baseType: !2375, size: 128, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2444, file: !2353, line: 154, baseType: !2375, size: 128, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2444, file: !2353, line: 164, baseType: !2385, size: 192, offset: 960)
!2463 = !{!2464, !2465}
!2464 = !DILocalVariable(name: "__path", arg: 1, scope: !2440, file: !2348, line: 502, type: !653)
!2465 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2440, file: !2348, line: 502, type: !2443)
!2466 = !DILocation(line: 0, scope: !2440)
!2467 = !DILocation(line: 504, column: 10, scope: !2440)
!2468 = !DILocation(line: 504, column: 3, scope: !2440)
!2469 = distinct !DISubprogram(name: "lstat64", scope: !2348, file: !2348, line: 509, type: !2441, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "__path", arg: 1, scope: !2469, file: !2348, line: 509, type: !653)
!2472 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2469, file: !2348, line: 509, type: !2443)
!2473 = !DILocation(line: 0, scope: !2469)
!2474 = !DILocation(line: 511, column: 10, scope: !2469)
!2475 = !DILocation(line: 511, column: 3, scope: !2469)
!2476 = distinct !DISubprogram(name: "fstat64", scope: !2348, file: !2348, line: 516, type: !2477, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!648, !648, !2443}
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "__fd", arg: 1, scope: !2476, file: !2348, line: 516, type: !648)
!2481 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2476, file: !2348, line: 516, type: !2443)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 518, column: 10, scope: !2476)
!2484 = !DILocation(line: 518, column: 3, scope: !2476)
!2485 = distinct !DISubprogram(name: "fstatat64", scope: !2348, file: !2348, line: 523, type: !2486, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!648, !648, !653, !2443, !648}
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "__fd", arg: 1, scope: !2485, file: !2348, line: 523, type: !648)
!2490 = !DILocalVariable(name: "__filename", arg: 2, scope: !2485, file: !2348, line: 523, type: !653)
!2491 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2485, file: !2348, line: 523, type: !2443)
!2492 = !DILocalVariable(name: "__flag", arg: 4, scope: !2485, file: !2348, line: 523, type: !648)
!2493 = !DILocation(line: 0, scope: !2485)
!2494 = !DILocation(line: 526, column: 10, scope: !2485)
!2495 = !DILocation(line: 526, column: 3, scope: !2485)
!2496 = distinct !DISubprogram(name: "is_hidden_global_store", scope: !3, file: !3, line: 140, type: !2497, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!647, !979}
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "stmt", arg: 1, scope: !2496, file: !3, line: 140, type: !979)
!2501 = !DILocalVariable(name: "lhs", scope: !2502, file: !3, line: 147, type: !655)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 146, column: 5)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 145, column: 7)
!2504 = !DILocation(line: 0, scope: !2496)
!2505 = !DILocation(line: 145, column: 7, scope: !2503)
!2506 = !DILocation(line: 145, column: 7, scope: !2496)
!2507 = !DILocation(line: 149, column: 7, scope: !2502)
!2508 = !DILocation(line: 176, column: 13, scope: !2502)
!2509 = !DILocation(line: 0, scope: !2502)
!2510 = !DILocation(line: 178, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 178, column: 11)
!2512 = !DILocation(line: 178, column: 11, scope: !2502)
!2513 = !DILocation(line: 179, column: 8, scope: !2511)
!2514 = !DILocation(line: 179, column: 2, scope: !2511)
!2515 = !DILocation(line: 181, column: 15, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 181, column: 11)
!2517 = !DILocation(line: 181, column: 11, scope: !2502)
!2518 = !DILocation(line: 188, column: 16, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 188, column: 16)
!2520 = !DILocation(line: 188, column: 16, scope: !2516)
!2521 = !DILocation(line: 191, column: 8, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 191, column: 8)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 189, column: 2)
!2524 = !DILocation(line: 191, column: 8, scope: !2523)
!2525 = !DILocation(line: 195, column: 16, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 195, column: 16)
!2527 = !DILocation(line: 195, column: 16, scope: !2519)
!2528 = !DILocation(line: 196, column: 39, scope: !2526)
!2529 = !DILocation(line: 196, column: 9, scope: !2526)
!2530 = !DILocation(line: 196, column: 2, scope: !2526)
!2531 = !DILocation(line: 198, column: 2, scope: !2526)
!2532 = !DILocation(line: 199, column: 5, scope: !2503)
!2533 = !DILocation(line: 201, column: 3, scope: !2496)
!2534 = !DILocation(line: 202, column: 1, scope: !2496)
!2535 = distinct !DISubprogram(name: "gimple_vdef", scope: !574, file: !574, line: 1375, type: !2536, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!655, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !656, line: 60, baseType: !2010)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "g", arg: 1, scope: !2535, file: !574, line: 1375, type: !2538)
!2541 = !DILocation(line: 0, scope: !2535)
!2542 = !DILocation(line: 1377, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !574, line: 1377, column: 7)
!2544 = !DILocation(line: 1377, column: 7, scope: !2535)
!2545 = !DILocation(line: 1379, column: 23, scope: !2535)
!2546 = !DILocation(line: 1379, column: 3, scope: !2535)
!2547 = !DILocation(line: 1380, column: 1, scope: !2535)
!2548 = distinct !DISubprogram(name: "is_gimple_assign", scope: !574, file: !574, line: 1677, type: !2549, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!647, !2538}
!2551 = !{!2552}
!2552 = !DILocalVariable(name: "gs", arg: 1, scope: !2548, file: !574, line: 1677, type: !2538)
!2553 = !DILocation(line: 0, scope: !2548)
!2554 = !DILocation(line: 1679, column: 10, scope: !2548)
!2555 = !DILocation(line: 1679, column: 27, scope: !2548)
!2556 = !DILocation(line: 1679, column: 3, scope: !2548)
!2557 = distinct !DISubprogram(name: "is_gimple_call", scope: !574, file: !574, line: 1870, type: !2549, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2558 = !{!2559}
!2559 = !DILocalVariable(name: "gs", arg: 1, scope: !2557, file: !574, line: 1870, type: !2538)
!2560 = !DILocation(line: 0, scope: !2557)
!2561 = !DILocation(line: 1872, column: 10, scope: !2557)
!2562 = !DILocation(line: 1872, column: 27, scope: !2557)
!2563 = !DILocation(line: 1872, column: 3, scope: !2557)
!2564 = distinct !DISubprogram(name: "is_global_var", scope: !2565, file: !2565, line: 575, type: !2566, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2565 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!647, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !656, line: 59, baseType: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "t", arg: 1, scope: !2564, file: !2565, line: 575, type: !2568)
!2573 = !DILocation(line: 0, scope: !2564)
!2574 = !DILocation(line: 577, column: 11, scope: !2564)
!2575 = !DILocation(line: 577, column: 27, scope: !2564)
!2576 = !DILocation(line: 577, column: 30, scope: !2564)
!2577 = !DILocation(line: 577, column: 3, scope: !2564)
!2578 = distinct !DISubprogram(name: "gate_sink", scope: !3, file: !3, line: 577, type: !2029, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2579 = !DILocation(line: 579, column: 10, scope: !2578)
!2580 = !DILocation(line: 579, column: 25, scope: !2578)
!2581 = !DILocation(line: 579, column: 3, scope: !2578)
!2582 = distinct !DISubprogram(name: "do_sink", scope: !3, file: !3, line: 570, type: !2033, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2583 = !DILocation(line: 572, column: 3, scope: !2582)
!2584 = !DILocation(line: 573, column: 3, scope: !2582)
!2585 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !574, file: !574, line: 1283, type: !2549, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "g", arg: 1, scope: !2585, file: !574, line: 1283, type: !2538)
!2588 = !DILocation(line: 0, scope: !2585)
!2589 = !DILocation(line: 1285, column: 10, scope: !2585)
!2590 = !DILocation(line: 1285, column: 26, scope: !2585)
!2591 = !DILocation(line: 1285, column: 43, scope: !2585)
!2592 = !DILocation(line: 1285, column: 46, scope: !2585)
!2593 = !DILocation(line: 1285, column: 62, scope: !2585)
!2594 = !DILocation(line: 1285, column: 3, scope: !2585)
!2595 = distinct !DISubprogram(name: "gimple_code", scope: !574, file: !574, line: 1052, type: !2596, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!573, !2538}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "g", arg: 1, scope: !2595, file: !574, line: 1052, type: !2538)
!2600 = !DILocation(line: 0, scope: !2595)
!2601 = !DILocation(line: 1054, column: 20, scope: !2595)
!2602 = !DILocation(line: 1054, column: 3, scope: !2595)
!2603 = distinct !DISubprogram(name: "execute_sink_code", scope: !3, file: !3, line: 552, type: !2604, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null}
!2606 = !DILocation(line: 554, column: 3, scope: !2603)
!2607 = !DILocation(line: 556, column: 3, scope: !2603)
!2608 = !DILocation(line: 557, column: 3, scope: !2603)
!2609 = !DILocation(line: 558, column: 3, scope: !2603)
!2610 = !DILocation(line: 559, column: 3, scope: !2603)
!2611 = !DILocation(line: 560, column: 20, scope: !2603)
!2612 = !DILocation(line: 560, column: 3, scope: !2603)
!2613 = !DILocation(line: 561, column: 29, scope: !2603)
!2614 = !DILocation(line: 561, column: 65, scope: !2603)
!2615 = !DILocation(line: 561, column: 3, scope: !2603)
!2616 = !DILocation(line: 562, column: 3, scope: !2603)
!2617 = !DILocation(line: 563, column: 3, scope: !2603)
!2618 = !DILocation(line: 564, column: 3, scope: !2603)
!2619 = !DILocation(line: 565, column: 1, scope: !2603)
!2620 = distinct !DISubprogram(name: "sink_code_in_bb", scope: !3, file: !3, line: 443, type: !2621, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !1431}
!2623 = !{!2624, !2625, !2626, !2633, !2640, !2641, !2642, !2646, !2647}
!2624 = !DILocalVariable(name: "bb", arg: 1, scope: !2620, file: !3, line: 443, type: !1431)
!2625 = !DILocalVariable(name: "son", scope: !2620, file: !3, line: 445, type: !1431)
!2626 = !DILocalVariable(name: "gsi", scope: !2620, file: !3, line: 446, type: !2627)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !574, line: 265, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 254, size: 192, elements: !2629)
!2629 = !{!2630, !2631, !2632}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2628, file: !574, line: 257, baseType: !974, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2628, file: !574, line: 263, baseType: !969, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2628, file: !574, line: 264, baseType: !1431, size: 64, offset: 128)
!2633 = !DILocalVariable(name: "ei", scope: !2620, file: !3, line: 447, type: !2634)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2635, file: !135, line: 680, baseType: !7, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2635, file: !135, line: 681, baseType: !2639, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!2640 = !DILocalVariable(name: "e", scope: !2620, file: !3, line: 448, type: !959)
!2641 = !DILocalVariable(name: "last", scope: !2620, file: !3, line: 449, type: !647)
!2642 = !DILocalVariable(name: "stmt", scope: !2643, file: !3, line: 463, type: !979)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 462, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 461, column: 3)
!2645 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 461, column: 3)
!2646 = !DILocalVariable(name: "togsi", scope: !2643, file: !3, line: 464, type: !2627)
!2647 = !DILabel(scope: !2620, name: "earlyout", file: !3, line: 506)
!2648 = !DILocation(line: 0, scope: !2620)
!2649 = !DILocation(line: 446, column: 3, scope: !2620)
!2650 = !DILocation(line: 447, column: 3, scope: !2620)
!2651 = !DILocation(line: 448, column: 3, scope: !2620)
!2652 = !DILocation(line: 453, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 453, column: 7)
!2654 = !DILocation(line: 453, column: 42, scope: !2653)
!2655 = !DILocation(line: 453, column: 7, scope: !2620)
!2656 = !DILocation(line: 457, column: 3, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 457, column: 3)
!2658 = !DILocation(line: 0, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 457, column: 3)
!2660 = !DILocation(line: 457, column: 3, scope: !2659)
!2661 = !DILocation(line: 458, column: 9, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 458, column: 9)
!2663 = !DILocation(line: 458, column: 12, scope: !2662)
!2664 = !DILocation(line: 458, column: 18, scope: !2662)
!2665 = !DILocation(line: 458, column: 9, scope: !2659)
!2666 = distinct !{!2666, !2656, !2667}
!2667 = !DILocation(line: 459, column: 12, scope: !2657)
!2668 = !DILocation(line: 461, column: 14, scope: !2645)
!2669 = !DILocation(line: 0, scope: !2643)
!2670 = !DILocation(line: 0, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 474, column: 2)
!2672 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 473, column: 11)
!2673 = !DILocation(line: 0, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 496, column: 2)
!2675 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 495, column: 11)
!2676 = !DILocation(line: 461, column: 8, scope: !2645)
!2677 = !DILocation(line: 449, column: 8, scope: !2620)
!2678 = !DILocation(line: 461, column: 33, scope: !2644)
!2679 = !DILocation(line: 461, column: 32, scope: !2644)
!2680 = !DILocation(line: 461, column: 3, scope: !2645)
!2681 = !DILocation(line: 463, column: 21, scope: !2643)
!2682 = !DILocation(line: 464, column: 7, scope: !2643)
!2683 = !DILocation(line: 466, column: 12, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 466, column: 11)
!2685 = !DILocation(line: 466, column: 11, scope: !2643)
!2686 = !DILocation(line: 468, column: 9, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 468, column: 8)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 467, column: 2)
!2689 = !DILocation(line: 468, column: 8, scope: !2688)
!2690 = distinct !{!2690, !2680, !2691}
!2691 = !DILocation(line: 505, column: 5, scope: !2645)
!2692 = !DILocation(line: 469, column: 6, scope: !2687)
!2693 = !DILocation(line: 473, column: 11, scope: !2672)
!2694 = !DILocation(line: 473, column: 11, scope: !2643)
!2695 = !DILocation(line: 475, column: 4, scope: !2671)
!2696 = !DILocation(line: 476, column: 23, scope: !2671)
!2697 = !DILocation(line: 476, column: 4, scope: !2671)
!2698 = !DILocation(line: 477, column: 13, scope: !2671)
!2699 = !DILocation(line: 478, column: 10, scope: !2671)
!2700 = !DILocation(line: 478, column: 18, scope: !2671)
!2701 = !DILocation(line: 478, column: 35, scope: !2671)
!2702 = !DILocation(line: 477, column: 4, scope: !2671)
!2703 = !DILocation(line: 479, column: 2, scope: !2671)
!2704 = !DILocation(line: 483, column: 11, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 483, column: 11)
!2706 = !DILocation(line: 483, column: 11, scope: !2643)
!2707 = !DILocation(line: 484, column: 28, scope: !2705)
!2708 = !DILocation(line: 484, column: 2, scope: !2705)
!2709 = !DILocation(line: 486, column: 2, scope: !2705)
!2710 = !DILocation(line: 488, column: 22, scope: !2643)
!2711 = !DILocation(line: 495, column: 11, scope: !2675)
!2712 = !DILocation(line: 495, column: 11, scope: !2643)
!2713 = !DILocation(line: 497, column: 10, scope: !2674)
!2714 = !DILocation(line: 498, column: 4, scope: !2674)
!2715 = !DILocation(line: 502, column: 12, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 502, column: 11)
!2717 = !DILocation(line: 502, column: 11, scope: !2643)
!2718 = !DILocation(line: 503, column: 2, scope: !2716)
!2719 = !DILocation(line: 505, column: 5, scope: !2644)
!2720 = !DILocation(line: 507, column: 14, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 507, column: 3)
!2722 = !DILocation(line: 506, column: 2, scope: !2620)
!2723 = !DILocation(line: 507, column: 8, scope: !2721)
!2724 = !DILocation(line: 0, scope: !2721)
!2725 = !DILocation(line: 507, column: 3, scope: !2721)
!2726 = !DILocation(line: 511, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 510, column: 5)
!2728 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 507, column: 3)
!2729 = !DILocation(line: 509, column: 14, scope: !2728)
!2730 = !DILocation(line: 507, column: 3, scope: !2728)
!2731 = distinct !{!2731, !2725, !2732}
!2732 = !DILocation(line: 512, column: 5, scope: !2721)
!2733 = !DILocation(line: 513, column: 1, scope: !2620)
!2734 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !2735, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2634, !2639}
!2737 = !{!2738, !2739}
!2738 = !DILocalVariable(name: "ev", arg: 1, scope: !2734, file: !135, line: 696, type: !2639)
!2739 = !DILocalVariable(name: "i", scope: !2734, file: !135, line: 698, type: !2634)
!2740 = !DILocation(line: 0, scope: !2734)
!2741 = !DILocation(line: 700, column: 5, scope: !2734)
!2742 = !DILocation(line: 700, column: 11, scope: !2734)
!2743 = !DILocation(line: 701, column: 5, scope: !2734)
!2744 = !DILocation(line: 701, column: 15, scope: !2734)
!2745 = !DILocation(line: 703, column: 3, scope: !2734)
!2746 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !2747, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2750)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!647, !2634, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "ei", arg: 1, scope: !2746, file: !135, line: 771, type: !2634)
!2752 = !DILocalVariable(name: "p", arg: 2, scope: !2746, file: !135, line: 771, type: !2749)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 773, column: 8, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2746, file: !135, line: 773, column: 7)
!2756 = !DILocation(line: 773, column: 7, scope: !2746)
!2757 = !DILocation(line: 775, column: 12, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !135, line: 774, column: 5)
!2759 = !DILocation(line: 776, column: 7, scope: !2758)
!2760 = !DILocation(line: 781, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2755, file: !135, line: 779, column: 5)
!2762 = !DILocation(line: 0, scope: !2755)
!2763 = !DILocation(line: 783, column: 1, scope: !2746)
!2764 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !2765, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2768)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2768 = !{!2769}
!2769 = !DILocalVariable(name: "i", arg: 1, scope: !2764, file: !135, line: 736, type: !2767)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 738, column: 3, scope: !2764)
!2772 = !DILocation(line: 739, column: 11, scope: !2764)
!2773 = !DILocation(line: 740, column: 1, scope: !2764)
!2774 = distinct !DISubprogram(name: "gsi_last_bb", scope: !574, file: !574, line: 4450, type: !2775, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!2627, !1431}
!2777 = !{!2778, !2779, !2780}
!2778 = !DILocalVariable(name: "bb", arg: 1, scope: !2774, file: !574, line: 4450, type: !1431)
!2779 = !DILocalVariable(name: "i", scope: !2774, file: !574, line: 4452, type: !2627)
!2780 = !DILocalVariable(name: "seq", scope: !2774, file: !574, line: 4453, type: !969)
!2781 = !DILocation(line: 0, scope: !2774)
!2782 = !DILocation(line: 4452, column: 24, scope: !2774)
!2783 = !DILocation(line: 4455, column: 9, scope: !2774)
!2784 = !DILocation(line: 4456, column: 11, scope: !2774)
!2785 = !DILocation(line: 4456, column: 5, scope: !2774)
!2786 = !DILocation(line: 4456, column: 9, scope: !2774)
!2787 = !DILocation(line: 4457, column: 5, scope: !2774)
!2788 = !DILocation(line: 4457, column: 9, scope: !2774)
!2789 = !DILocation(line: 4458, column: 5, scope: !2774)
!2790 = !DILocation(line: 4458, column: 8, scope: !2774)
!2791 = !DILocation(line: 4461, column: 1, scope: !2774)
!2792 = distinct !DISubprogram(name: "gsi_end_p", scope: !574, file: !574, line: 4467, type: !2793, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!647, !2627}
!2795 = !{!2796}
!2796 = !DILocalVariable(name: "i", arg: 1, scope: !2792, file: !574, line: 4467, type: !2627)
!2797 = !DILocation(line: 4467, column: 33, scope: !2792)
!2798 = !DILocation(line: 4469, column: 12, scope: !2792)
!2799 = !DILocation(line: 4469, column: 16, scope: !2792)
!2800 = !DILocation(line: 4469, column: 10, scope: !2792)
!2801 = !DILocation(line: 4469, column: 3, scope: !2792)
!2802 = distinct !DISubprogram(name: "gsi_stmt", scope: !574, file: !574, line: 4501, type: !2803, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!979, !2627}
!2805 = !{!2806}
!2806 = !DILocalVariable(name: "i", arg: 1, scope: !2802, file: !574, line: 4501, type: !2627)
!2807 = !DILocation(line: 4501, column: 32, scope: !2802)
!2808 = !DILocation(line: 4503, column: 12, scope: !2802)
!2809 = !DILocation(line: 4503, column: 17, scope: !2802)
!2810 = !DILocation(line: 4503, column: 3, scope: !2802)
!2811 = distinct !DISubprogram(name: "statement_sink_location", scope: !3, file: !3, line: 265, type: !2812, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!647, !979, !1431, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2838, !2846, !2850, !2854, !2857}
!2816 = !DILocalVariable(name: "stmt", arg: 1, scope: !2811, file: !3, line: 265, type: !979)
!2817 = !DILocalVariable(name: "frombb", arg: 2, scope: !2811, file: !3, line: 265, type: !1431)
!2818 = !DILocalVariable(name: "togsi", arg: 3, scope: !2811, file: !3, line: 266, type: !2814)
!2819 = !DILocalVariable(name: "use", scope: !2811, file: !3, line: 268, type: !979)
!2820 = !DILocalVariable(name: "def", scope: !2811, file: !3, line: 269, type: !655)
!2821 = !DILocalVariable(name: "one_use", scope: !2811, file: !3, line: 270, type: !2007)
!2822 = !DILocalVariable(name: "sinkbb", scope: !2811, file: !3, line: 271, type: !1431)
!2823 = !DILocalVariable(name: "use_p", scope: !2811, file: !3, line: 272, type: !2007)
!2824 = !DILocalVariable(name: "def_p", scope: !2811, file: !3, line: 273, type: !2012)
!2825 = !DILocalVariable(name: "iter", scope: !2811, file: !3, line: 274, type: !2826)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !613, line: 140, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !613, line: 131, size: 320, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2833, !2835, !2836, !2837}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2827, file: !613, line: 133, baseType: !647, size: 8)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2827, file: !613, line: 134, baseType: !612, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2827, file: !613, line: 135, baseType: !2832, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !613, line: 42, baseType: !1008)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2827, file: !613, line: 136, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !613, line: 50, baseType: !1015)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2827, file: !613, line: 137, baseType: !648, size: 32, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2827, file: !613, line: 138, baseType: !648, size: 32, offset: 224)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2827, file: !613, line: 139, baseType: !979, size: 64, offset: 256)
!2838 = !DILocalVariable(name: "imm_iter", scope: !2811, file: !3, line: 275, type: !2839)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1371, line: 249, baseType: !2840)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1371, line: 238, size: 448, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2845}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2840, file: !1371, line: 241, baseType: !2008, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2840, file: !1371, line: 243, baseType: !2008, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2840, file: !1371, line: 245, baseType: !2009, size: 256, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2840, file: !1371, line: 248, baseType: !2008, size: 64, offset: 384)
!2846 = !DILocalVariable(name: "def", scope: !2847, file: !3, line: 333, type: !655)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 332, column: 5)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 331, column: 3)
!2849 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 331, column: 3)
!2850 = !DILocalVariable(name: "use", scope: !2851, file: !3, line: 341, type: !655)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 340, column: 5)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 339, column: 3)
!2853 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 339, column: 3)
!2854 = !DILocalVariable(name: "debug_stmts", scope: !2855, file: !3, line: 352, type: !647)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 351, column: 5)
!2856 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 350, column: 7)
!2857 = !DILocalVariable(name: "commondom", scope: !2855, file: !3, line: 353, type: !1431)
!2858 = !DILocation(line: 0, scope: !2811)
!2859 = !DILocation(line: 274, column: 3, scope: !2811)
!2860 = !DILocation(line: 275, column: 3, scope: !2811)
!2861 = !DILocation(line: 277, column: 3, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 277, column: 3)
!2863 = !DILocation(line: 0, scope: !2862)
!2864 = !DILocation(line: 277, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 277, column: 3)
!2866 = !DILocation(line: 279, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 279, column: 7)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 278, column: 5)
!2869 = !DILocation(line: 0, scope: !2867)
!2870 = !DILocation(line: 279, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 279, column: 7)
!2872 = !DILocation(line: 281, column: 25, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 281, column: 8)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 280, column: 2)
!2875 = !DILocation(line: 281, column: 8, scope: !2873)
!2876 = !DILocation(line: 281, column: 8, scope: !2874)
!2877 = distinct !{!2877, !2866, !2878}
!2878 = !DILocation(line: 285, column: 2, scope: !2867)
!2879 = !DILocation(line: 286, column: 19, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 286, column: 11)
!2881 = !DILocation(line: 286, column: 11, scope: !2868)
!2882 = distinct !{!2882, !2861, !2883}
!2883 = !DILocation(line: 288, column: 5, scope: !2862)
!2884 = !DILocation(line: 291, column: 15, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 291, column: 7)
!2886 = !DILocation(line: 291, column: 7, scope: !2811)
!2887 = !DILocation(line: 294, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 294, column: 7)
!2889 = !DILocation(line: 294, column: 26, scope: !2888)
!2890 = !DILocation(line: 294, column: 7, scope: !2811)
!2891 = !DILocation(line: 322, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 322, column: 7)
!2893 = !DILocation(line: 323, column: 7, scope: !2892)
!2894 = !DILocation(line: 323, column: 10, scope: !2892)
!2895 = !DILocation(line: 324, column: 7, scope: !2892)
!2896 = !DILocation(line: 324, column: 10, scope: !2892)
!2897 = !DILocation(line: 325, column: 7, scope: !2892)
!2898 = !DILocation(line: 325, column: 10, scope: !2892)
!2899 = !DILocation(line: 326, column: 7, scope: !2892)
!2900 = !DILocation(line: 326, column: 10, scope: !2892)
!2901 = !DILocation(line: 327, column: 7, scope: !2892)
!2902 = !DILocation(line: 327, column: 11, scope: !2892)
!2903 = !DILocation(line: 327, column: 17, scope: !2892)
!2904 = !DILocation(line: 328, column: 4, scope: !2892)
!2905 = !DILocation(line: 328, column: 7, scope: !2892)
!2906 = !DILocation(line: 328, column: 56, scope: !2892)
!2907 = !DILocation(line: 322, column: 7, scope: !2811)
!2908 = !DILocation(line: 331, column: 3, scope: !2849)
!2909 = !DILocation(line: 0, scope: !2849)
!2910 = !DILocation(line: 331, column: 3, scope: !2848)
!2911 = !DILocation(line: 333, column: 18, scope: !2847)
!2912 = !DILocation(line: 0, scope: !2847)
!2913 = !DILocation(line: 334, column: 26, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 334, column: 11)
!2915 = !DILocation(line: 334, column: 11, scope: !2914)
!2916 = !DILocation(line: 335, column: 4, scope: !2914)
!2917 = !DILocation(line: 335, column: 7, scope: !2914)
!2918 = !DILocation(line: 334, column: 11, scope: !2847)
!2919 = distinct !{!2919, !2908, !2920}
!2920 = !DILocation(line: 337, column: 5, scope: !2849)
!2921 = !DILocation(line: 339, column: 3, scope: !2853)
!2922 = !DILocation(line: 0, scope: !2853)
!2923 = !DILocation(line: 339, column: 3, scope: !2852)
!2924 = !DILocation(line: 341, column: 18, scope: !2851)
!2925 = !DILocation(line: 0, scope: !2851)
!2926 = !DILocation(line: 342, column: 11, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 342, column: 11)
!2928 = distinct !{!2928, !2921, !2929}
!2929 = !DILocation(line: 344, column: 5, scope: !2853)
!2930 = !DILocation(line: 350, column: 8, scope: !2856)
!2931 = !DILocation(line: 350, column: 7, scope: !2811)
!2932 = !DILocation(line: 0, scope: !2855)
!2933 = !DILocation(line: 352, column: 7, scope: !2855)
!2934 = !DILocation(line: 352, column: 12, scope: !2855)
!2935 = !DILocation(line: 353, column: 31, scope: !2855)
!2936 = !DILocation(line: 356, column: 21, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 356, column: 11)
!2938 = !DILocation(line: 356, column: 11, scope: !2855)
!2939 = !DILocation(line: 362, column: 12, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 362, column: 11)
!2941 = !DILocation(line: 362, column: 11, scope: !2855)
!2942 = !DILocation(line: 369, column: 11, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 369, column: 11)
!2944 = !DILocation(line: 369, column: 11, scope: !2855)
!2945 = !DILocation(line: 371, column: 8, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 371, column: 8)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 370, column: 2)
!2948 = !DILocation(line: 371, column: 18, scope: !2946)
!2949 = !DILocation(line: 371, column: 22, scope: !2946)
!2950 = !DILocation(line: 371, column: 33, scope: !2946)
!2951 = !DILocation(line: 371, column: 8, scope: !2947)
!2952 = !DILocation(line: 372, column: 6, scope: !2946)
!2953 = !DILocation(line: 376, column: 31, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 376, column: 11)
!2955 = !DILocation(line: 376, column: 45, scope: !2954)
!2956 = !DILocation(line: 376, column: 66, scope: !2954)
!2957 = !DILocation(line: 376, column: 56, scope: !2954)
!2958 = !DILocation(line: 376, column: 11, scope: !2855)
!2959 = !DILocation(line: 378, column: 11, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 378, column: 11)
!2961 = !DILocation(line: 378, column: 21, scope: !2960)
!2962 = !DILocation(line: 378, column: 25, scope: !2960)
!2963 = !DILocation(line: 378, column: 36, scope: !2960)
!2964 = !DILocation(line: 378, column: 11, scope: !2855)
!2965 = !DILocation(line: 381, column: 17, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 379, column: 2)
!2967 = !DILocation(line: 380, column: 4, scope: !2966)
!2968 = !DILocation(line: 382, column: 2, scope: !2966)
!2969 = !DILocation(line: 384, column: 16, scope: !2855)
!2970 = !DILocation(line: 386, column: 7, scope: !2855)
!2971 = !DILocation(line: 387, column: 5, scope: !2856)
!2972 = !DILocation(line: 389, column: 9, scope: !2811)
!2973 = !DILocation(line: 390, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 390, column: 7)
!2975 = !DILocation(line: 390, column: 25, scope: !2974)
!2976 = !DILocation(line: 390, column: 7, scope: !2811)
!2977 = !DILocation(line: 392, column: 16, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 391, column: 5)
!2979 = !DILocation(line: 393, column: 18, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 393, column: 11)
!2981 = !DILocation(line: 393, column: 28, scope: !2980)
!2982 = !DILocation(line: 393, column: 39, scope: !2980)
!2983 = !DILocation(line: 393, column: 60, scope: !2980)
!2984 = !DILocation(line: 393, column: 50, scope: !2980)
!2985 = !DILocation(line: 394, column: 4, scope: !2980)
!2986 = !DILocation(line: 394, column: 15, scope: !2980)
!2987 = !DILocation(line: 394, column: 38, scope: !2980)
!2988 = !DILocation(line: 394, column: 27, scope: !2980)
!2989 = !DILocation(line: 393, column: 11, scope: !2978)
!2990 = !DILocation(line: 399, column: 11, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 399, column: 11)
!2992 = !DILocation(line: 399, column: 11, scope: !2978)
!2993 = !DILocation(line: 402, column: 16, scope: !2978)
!2994 = !DILocation(line: 404, column: 7, scope: !2978)
!2995 = !DILocation(line: 409, column: 3, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 409, column: 3)
!2997 = !DILocation(line: 409, column: 3, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 409, column: 3)
!2999 = !DILocation(line: 412, column: 12, scope: !2811)
!3000 = !DILocation(line: 413, column: 8, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 413, column: 7)
!3002 = !DILocation(line: 413, column: 7, scope: !2811)
!3003 = !DILocation(line: 424, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 424, column: 7)
!3005 = !DILocation(line: 424, column: 23, scope: !3004)
!3006 = !DILocation(line: 426, column: 14, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 426, column: 7)
!3008 = !DILocation(line: 424, column: 7, scope: !2811)
!3009 = !DILocation(line: 426, column: 35, scope: !3007)
!3010 = !DILocation(line: 426, column: 56, scope: !3007)
!3011 = !DILocation(line: 426, column: 46, scope: !3007)
!3012 = !DILocation(line: 427, column: 7, scope: !3007)
!3013 = !DILocation(line: 427, column: 18, scope: !3007)
!3014 = !DILocation(line: 427, column: 41, scope: !3007)
!3015 = !DILocation(line: 427, column: 30, scope: !3007)
!3016 = !DILocation(line: 426, column: 7, scope: !2811)
!3017 = !DILocation(line: 432, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 432, column: 7)
!3019 = !DILocation(line: 432, column: 7, scope: !2811)
!3020 = !DILocation(line: 435, column: 12, scope: !2811)
!3021 = !DILocation(line: 437, column: 3, scope: !2811)
!3022 = !DILocation(line: 438, column: 1, scope: !2811)
!3023 = distinct !DISubprogram(name: "gsi_prev", scope: !574, file: !574, line: 4493, type: !3024, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2814}
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "i", arg: 1, scope: !3023, file: !574, line: 4493, type: !2814)
!3028 = !DILocation(line: 0, scope: !3023)
!3029 = !DILocation(line: 4495, column: 15, scope: !3023)
!3030 = !DILocation(line: 4495, column: 20, scope: !3023)
!3031 = !DILocation(line: 4495, column: 10, scope: !3023)
!3032 = !DILocation(line: 4496, column: 1, scope: !3023)
!3033 = distinct !DISubprogram(name: "gsi_bb", scope: !574, file: !574, line: 4588, type: !3034, scopeLine: 4589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!1431, !2627}
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "i", arg: 1, scope: !3033, file: !574, line: 4588, type: !2627)
!3038 = !DILocation(line: 4588, column: 30, scope: !3033)
!3039 = !DILocation(line: 4590, column: 12, scope: !3033)
!3040 = !DILocation(line: 4590, column: 3, scope: !3033)
!3041 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !3042, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!647, !2634}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "i", arg: 1, scope: !3041, file: !135, line: 721, type: !2634)
!3046 = !DILocation(line: 723, column: 22, scope: !3041)
!3047 = !DILocation(line: 723, column: 19, scope: !3041)
!3048 = !DILocation(line: 723, column: 10, scope: !3041)
!3049 = !DILocation(line: 723, column: 3, scope: !3041)
!3050 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !3051, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!959, !2634}
!3053 = !{!3054}
!3054 = !DILocalVariable(name: "i", arg: 1, scope: !3050, file: !135, line: 752, type: !2634)
!3055 = !DILocation(line: 754, column: 10, scope: !3050)
!3056 = !DILocation(line: 754, column: 3, scope: !3050)
!3057 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !3058, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!7, !3060}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "vec_", arg: 1, scope: !3057, file: !135, line: 150, type: !3060)
!3064 = !DILocation(line: 0, scope: !3057)
!3065 = !DILocation(line: 150, column: 1, scope: !3057)
!3066 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !3067, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!947, !2634}
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "i", arg: 1, scope: !3066, file: !135, line: 685, type: !2634)
!3071 = !DILocation(line: 687, column: 3, scope: !3066)
!3072 = !DILocation(line: 688, column: 10, scope: !3066)
!3073 = !DILocation(line: 688, column: 3, scope: !3066)
!3074 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !3075, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!959, !3060, !7}
!3077 = !{!3078, !3079}
!3078 = !DILocalVariable(name: "vec_", arg: 1, scope: !3074, file: !135, line: 150, type: !3060)
!3079 = !DILocalVariable(name: "ix_", arg: 2, scope: !3074, file: !135, line: 150, type: !7)
!3080 = !DILocation(line: 0, scope: !3074)
!3081 = !DILocation(line: 150, column: 1, scope: !3074)
!3082 = distinct !DISubprogram(name: "bb_seq", scope: !574, file: !574, line: 237, type: !3083, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!969, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !656, line: 112, baseType: !3086)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!3088 = !{!3089}
!3089 = !DILocalVariable(name: "bb", arg: 1, scope: !3082, file: !574, line: 237, type: !3085)
!3090 = !DILocation(line: 0, scope: !3082)
!3091 = !DILocation(line: 239, column: 17, scope: !3082)
!3092 = !DILocation(line: 239, column: 23, scope: !3082)
!3093 = !DILocation(line: 239, column: 33, scope: !3082)
!3094 = !DILocation(line: 239, column: 43, scope: !3082)
!3095 = !DILocation(line: 239, column: 36, scope: !3082)
!3096 = !DILocation(line: 239, column: 10, scope: !3082)
!3097 = !DILocation(line: 239, column: 68, scope: !3082)
!3098 = !DILocation(line: 239, column: 3, scope: !3082)
!3099 = distinct !DISubprogram(name: "gimple_seq_last", scope: !574, file: !574, line: 178, type: !3100, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3105)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!974, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !656, line: 67, baseType: !3103)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!3105 = !{!3106}
!3106 = !DILocalVariable(name: "s", arg: 1, scope: !3099, file: !574, line: 178, type: !3102)
!3107 = !DILocation(line: 0, scope: !3099)
!3108 = !DILocation(line: 180, column: 10, scope: !3099)
!3109 = !DILocation(line: 180, column: 17, scope: !3099)
!3110 = !DILocation(line: 180, column: 3, scope: !3099)
!3111 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2565, file: !2565, line: 792, type: !3112, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!655, !3114, !979, !648}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!3115 = !{!3116, !3117, !3118}
!3116 = !DILocalVariable(name: "ptr", arg: 1, scope: !3111, file: !2565, line: 792, type: !3114)
!3117 = !DILocalVariable(name: "stmt", arg: 2, scope: !3111, file: !2565, line: 792, type: !979)
!3118 = !DILocalVariable(name: "flags", arg: 3, scope: !3111, file: !2565, line: 792, type: !648)
!3119 = !DILocation(line: 0, scope: !3111)
!3120 = !DILocation(line: 794, column: 3, scope: !3111)
!3121 = !DILocation(line: 795, column: 8, scope: !3111)
!3122 = !DILocation(line: 795, column: 18, scope: !3111)
!3123 = !DILocation(line: 796, column: 10, scope: !3111)
!3124 = !DILocation(line: 796, column: 3, scope: !3111)
!3125 = distinct !DISubprogram(name: "op_iter_done", scope: !2565, file: !2565, line: 652, type: !3126, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3130)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!647, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2826)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "ptr", arg: 1, scope: !3125, file: !2565, line: 652, type: !3128)
!3132 = !DILocation(line: 0, scope: !3125)
!3133 = !DILocation(line: 654, column: 15, scope: !3125)
!3134 = !DILocation(line: 654, column: 3, scope: !3125)
!3135 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2565, file: !2565, line: 292, type: !3136, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3139)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!2007, !3138, !655}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "imm", arg: 1, scope: !3135, file: !2565, line: 292, type: !3138)
!3141 = !DILocalVariable(name: "var", arg: 2, scope: !3135, file: !2565, line: 292, type: !655)
!3142 = !DILocation(line: 0, scope: !3135)
!3143 = !DILocation(line: 294, column: 18, scope: !3135)
!3144 = !DILocation(line: 294, column: 8, scope: !3135)
!3145 = !DILocation(line: 294, column: 14, scope: !3135)
!3146 = !DILocation(line: 295, column: 30, scope: !3135)
!3147 = !DILocation(line: 295, column: 16, scope: !3135)
!3148 = !DILocation(line: 299, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3135, file: !2565, line: 299, column: 7)
!3150 = !DILocation(line: 299, column: 7, scope: !3135)
!3151 = !DILocation(line: 301, column: 15, scope: !3135)
!3152 = !DILocation(line: 301, column: 3, scope: !3135)
!3153 = !DILocation(line: 302, column: 1, scope: !3135)
!3154 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2565, file: !2565, line: 285, type: !3155, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!647, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "imm", arg: 1, scope: !3154, file: !2565, line: 285, type: !3157)
!3161 = !DILocation(line: 0, scope: !3154)
!3162 = !DILocation(line: 287, column: 16, scope: !3154)
!3163 = !DILocation(line: 287, column: 32, scope: !3154)
!3164 = !DILocation(line: 287, column: 24, scope: !3154)
!3165 = !DILocation(line: 287, column: 10, scope: !3154)
!3166 = !DILocation(line: 287, column: 3, scope: !3154)
!3167 = distinct !DISubprogram(name: "is_gimple_debug", scope: !574, file: !574, line: 3249, type: !2549, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "gs", arg: 1, scope: !3167, file: !574, line: 3249, type: !2538)
!3170 = !DILocation(line: 0, scope: !3167)
!3171 = !DILocation(line: 3251, column: 10, scope: !3167)
!3172 = !DILocation(line: 3251, column: 27, scope: !3167)
!3173 = !DILocation(line: 3251, column: 3, scope: !3167)
!3174 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2565, file: !2565, line: 306, type: !3175, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!2007, !3138}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "imm", arg: 1, scope: !3174, file: !2565, line: 306, type: !3138)
!3179 = !DILocalVariable(name: "old", scope: !3174, file: !2565, line: 308, type: !2007)
!3180 = !DILocation(line: 0, scope: !3174)
!3181 = !DILocation(line: 308, column: 28, scope: !3174)
!3182 = !DILocation(line: 319, column: 23, scope: !3174)
!3183 = !DILocation(line: 319, column: 16, scope: !3174)
!3184 = !DILocation(line: 320, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3174, file: !2565, line: 320, column: 7)
!3186 = !DILocation(line: 320, column: 7, scope: !3174)
!3187 = !DILocation(line: 322, column: 15, scope: !3174)
!3188 = !DILocation(line: 322, column: 3, scope: !3174)
!3189 = !DILocation(line: 323, column: 1, scope: !3174)
!3190 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2565, file: !2565, line: 699, type: !3191, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!655, !3114}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "ptr", arg: 1, scope: !3190, file: !2565, line: 699, type: !3114)
!3195 = !DILocalVariable(name: "val", scope: !3190, file: !2565, line: 701, type: !655)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocation(line: 705, column: 12, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3190, file: !2565, line: 705, column: 7)
!3199 = !DILocation(line: 705, column: 7, scope: !3198)
!3200 = !DILocation(line: 705, column: 7, scope: !3190)
!3201 = !DILocation(line: 707, column: 13, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !2565, line: 706, column: 5)
!3203 = !DILocation(line: 708, column: 24, scope: !3202)
!3204 = !DILocation(line: 708, column: 30, scope: !3202)
!3205 = !DILocation(line: 708, column: 17, scope: !3202)
!3206 = !DILocation(line: 709, column: 7, scope: !3202)
!3207 = !DILocation(line: 711, column: 12, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3190, file: !2565, line: 711, column: 7)
!3209 = !DILocation(line: 711, column: 7, scope: !3208)
!3210 = !DILocation(line: 711, column: 7, scope: !3190)
!3211 = !DILocation(line: 713, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !2565, line: 712, column: 5)
!3213 = !DILocation(line: 714, column: 24, scope: !3212)
!3214 = !DILocation(line: 714, column: 30, scope: !3212)
!3215 = !DILocation(line: 714, column: 17, scope: !3212)
!3216 = !DILocation(line: 715, column: 7, scope: !3212)
!3217 = !DILocation(line: 718, column: 8, scope: !3190)
!3218 = !DILocation(line: 718, column: 13, scope: !3190)
!3219 = !DILocation(line: 719, column: 3, scope: !3190)
!3220 = !DILocation(line: 721, column: 1, scope: !3190)
!3221 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !574, file: !574, line: 1477, type: !2549, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3222)
!3222 = !{!3223}
!3223 = !DILocalVariable(name: "stmt", arg: 1, scope: !3221, file: !574, line: 1477, type: !2538)
!3224 = !DILocation(line: 0, scope: !3221)
!3225 = !DILocation(line: 1479, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !574, line: 1479, column: 7)
!3227 = !DILocation(line: 1479, column: 7, scope: !3221)
!3228 = !DILocation(line: 1480, column: 25, scope: !3226)
!3229 = !DILocation(line: 1480, column: 12, scope: !3226)
!3230 = !DILocation(line: 1480, column: 5, scope: !3226)
!3231 = !DILocation(line: 0, scope: !3226)
!3232 = !DILocation(line: 1483, column: 1, scope: !3221)
!3233 = distinct !DISubprogram(name: "gimple_vuse", scope: !574, file: !574, line: 1365, type: !2536, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3234)
!3234 = !{!3235}
!3235 = !DILocalVariable(name: "g", arg: 1, scope: !3233, file: !574, line: 1365, type: !2538)
!3236 = !DILocation(line: 0, scope: !3233)
!3237 = !DILocation(line: 1367, column: 8, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3233, file: !574, line: 1367, column: 7)
!3239 = !DILocation(line: 1367, column: 7, scope: !3233)
!3240 = !DILocation(line: 1369, column: 23, scope: !3233)
!3241 = !DILocation(line: 1369, column: 3, scope: !3233)
!3242 = !DILocation(line: 1370, column: 1, scope: !3233)
!3243 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !574, file: !574, line: 1694, type: !2536, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "gs", arg: 1, scope: !3243, file: !574, line: 1694, type: !2538)
!3246 = !DILocation(line: 0, scope: !3243)
!3247 = !DILocation(line: 1697, column: 10, scope: !3243)
!3248 = !DILocation(line: 1697, column: 3, scope: !3243)
!3249 = distinct !DISubprogram(name: "op_iter_init_def", scope: !2565, file: !2565, line: 780, type: !3250, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!2012, !3114, !979, !648}
!3252 = !{!3253, !3254, !3255}
!3253 = !DILocalVariable(name: "ptr", arg: 1, scope: !3249, file: !2565, line: 780, type: !3114)
!3254 = !DILocalVariable(name: "stmt", arg: 2, scope: !3249, file: !2565, line: 780, type: !979)
!3255 = !DILocalVariable(name: "flags", arg: 3, scope: !3249, file: !2565, line: 780, type: !648)
!3256 = !DILocation(line: 0, scope: !3249)
!3257 = !DILocation(line: 784, column: 3, scope: !3249)
!3258 = !DILocation(line: 785, column: 8, scope: !3249)
!3259 = !DILocation(line: 785, column: 18, scope: !3249)
!3260 = !DILocation(line: 786, column: 10, scope: !3249)
!3261 = !DILocation(line: 786, column: 3, scope: !3249)
!3262 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2565, file: !2565, line: 434, type: !3263, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!655, !2012}
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "def", arg: 1, scope: !3262, file: !2565, line: 434, type: !2012)
!3267 = !DILocation(line: 0, scope: !3262)
!3268 = !DILocation(line: 436, column: 10, scope: !3262)
!3269 = !DILocation(line: 436, column: 3, scope: !3262)
!3270 = distinct !DISubprogram(name: "op_iter_next_def", scope: !2565, file: !2565, line: 681, type: !3271, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!2012, !3114}
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "ptr", arg: 1, scope: !3270, file: !2565, line: 681, type: !3114)
!3275 = !DILocalVariable(name: "def_p", scope: !3270, file: !2565, line: 683, type: !2012)
!3276 = !DILocation(line: 0, scope: !3270)
!3277 = !DILocation(line: 687, column: 12, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !2565, line: 687, column: 7)
!3279 = !DILocation(line: 687, column: 7, scope: !3278)
!3280 = !DILocation(line: 687, column: 7, scope: !3270)
!3281 = !DILocation(line: 689, column: 15, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !2565, line: 688, column: 5)
!3283 = !DILocation(line: 690, column: 30, scope: !3282)
!3284 = !DILocation(line: 690, column: 17, scope: !3282)
!3285 = !DILocation(line: 691, column: 7, scope: !3282)
!3286 = !DILocation(line: 693, column: 8, scope: !3270)
!3287 = !DILocation(line: 693, column: 13, scope: !3270)
!3288 = !DILocation(line: 694, column: 3, scope: !3270)
!3289 = !DILocation(line: 695, column: 1, scope: !3270)
!3290 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2565, file: !2565, line: 768, type: !3291, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!2007, !3114, !979, !648}
!3293 = !{!3294, !3295, !3296}
!3294 = !DILocalVariable(name: "ptr", arg: 1, scope: !3290, file: !2565, line: 768, type: !3114)
!3295 = !DILocalVariable(name: "stmt", arg: 2, scope: !3290, file: !2565, line: 768, type: !979)
!3296 = !DILocalVariable(name: "flags", arg: 3, scope: !3290, file: !2565, line: 768, type: !648)
!3297 = !DILocation(line: 0, scope: !3290)
!3298 = !DILocation(line: 772, column: 3, scope: !3290)
!3299 = !DILocation(line: 773, column: 8, scope: !3290)
!3300 = !DILocation(line: 773, column: 18, scope: !3290)
!3301 = !DILocation(line: 774, column: 10, scope: !3290)
!3302 = !DILocation(line: 774, column: 3, scope: !3290)
!3303 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2565, file: !2565, line: 427, type: !3304, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!655, !2007}
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "use", arg: 1, scope: !3303, file: !2565, line: 427, type: !2007)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 429, column: 17, scope: !3303)
!3310 = !DILocation(line: 429, column: 10, scope: !3303)
!3311 = !DILocation(line: 429, column: 3, scope: !3303)
!3312 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2565, file: !2565, line: 659, type: !3313, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!2007, !3114}
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "ptr", arg: 1, scope: !3312, file: !2565, line: 659, type: !3114)
!3317 = !DILocalVariable(name: "use_p", scope: !3312, file: !2565, line: 661, type: !2007)
!3318 = !DILocation(line: 0, scope: !3312)
!3319 = !DILocation(line: 665, column: 12, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3312, file: !2565, line: 665, column: 7)
!3321 = !DILocation(line: 665, column: 7, scope: !3320)
!3322 = !DILocation(line: 665, column: 7, scope: !3312)
!3323 = !DILocation(line: 667, column: 15, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !2565, line: 666, column: 5)
!3325 = !DILocation(line: 668, column: 30, scope: !3324)
!3326 = !DILocation(line: 668, column: 17, scope: !3324)
!3327 = !DILocation(line: 669, column: 7, scope: !3324)
!3328 = !DILocation(line: 671, column: 12, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3312, file: !2565, line: 671, column: 7)
!3330 = !DILocation(line: 671, column: 25, scope: !3329)
!3331 = !DILocation(line: 671, column: 18, scope: !3329)
!3332 = !DILocation(line: 671, column: 7, scope: !3312)
!3333 = !DILocation(line: 673, column: 14, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !2565, line: 672, column: 5)
!3335 = !DILocation(line: 673, column: 7, scope: !3334)
!3336 = !DILocation(line: 675, column: 8, scope: !3312)
!3337 = !DILocation(line: 675, column: 13, scope: !3312)
!3338 = !DILocation(line: 676, column: 3, scope: !3312)
!3339 = !DILocation(line: 677, column: 1, scope: !3312)
!3340 = distinct !DISubprogram(name: "all_immediate_uses_same_place", scope: !3, file: !3, line: 111, type: !2497, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347}
!3342 = !DILocalVariable(name: "stmt", arg: 1, scope: !3340, file: !3, line: 111, type: !979)
!3343 = !DILocalVariable(name: "firstuse", scope: !3340, file: !3, line: 113, type: !979)
!3344 = !DILocalVariable(name: "op_iter", scope: !3340, file: !3, line: 114, type: !2826)
!3345 = !DILocalVariable(name: "imm_iter", scope: !3340, file: !3, line: 115, type: !2839)
!3346 = !DILocalVariable(name: "use_p", scope: !3340, file: !3, line: 116, type: !2007)
!3347 = !DILocalVariable(name: "var", scope: !3340, file: !3, line: 117, type: !655)
!3348 = !DILocation(line: 0, scope: !3340)
!3349 = !DILocation(line: 114, column: 3, scope: !3340)
!3350 = !DILocation(line: 115, column: 3, scope: !3340)
!3351 = !DILocation(line: 119, column: 3, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 119, column: 3)
!3353 = !DILocation(line: 0, scope: !3352)
!3354 = !DILocation(line: 113, column: 10, scope: !3340)
!3355 = !DILocation(line: 119, column: 3, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 119, column: 3)
!3357 = !DILocation(line: 121, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 121, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 120, column: 5)
!3360 = !DILocation(line: 0, scope: !3358)
!3361 = !DILocation(line: 121, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 121, column: 7)
!3363 = !DILocation(line: 123, column: 25, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 123, column: 8)
!3365 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 122, column: 9)
!3366 = !DILocation(line: 123, column: 8, scope: !3364)
!3367 = !DILocation(line: 123, column: 8, scope: !3365)
!3368 = !DILocation(line: 125, column: 17, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 125, column: 8)
!3370 = !DILocation(line: 0, scope: !3369)
!3371 = !DILocation(line: 125, column: 8, scope: !3365)
!3372 = !DILocation(line: 128, column: 19, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 128, column: 10)
!3374 = !DILocation(line: 128, column: 10, scope: !3369)
!3375 = distinct !{!3375, !3357, !3376}
!3376 = !DILocation(line: 130, column: 2, scope: !3358)
!3377 = distinct !{!3377, !3351, !3378}
!3378 = !DILocation(line: 131, column: 5, scope: !3352)
!3379 = !DILocation(line: 134, column: 1, scope: !3340)
!3380 = distinct !DISubprogram(name: "nearest_common_dominator_of_uses", scope: !3, file: !3, line: 207, type: !3381, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!1431, !979, !646}
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3397, !3398, !3399, !3400, !3401, !3408, !3409}
!3384 = !DILocalVariable(name: "stmt", arg: 1, scope: !3380, file: !3, line: 207, type: !979)
!3385 = !DILocalVariable(name: "debug_stmts", arg: 2, scope: !3380, file: !3, line: 207, type: !646)
!3386 = !DILocalVariable(name: "blocks", scope: !3380, file: !3, line: 209, type: !1549)
!3387 = !DILocalVariable(name: "commondom", scope: !3380, file: !3, line: 210, type: !1431)
!3388 = !DILocalVariable(name: "j", scope: !3380, file: !3, line: 211, type: !7)
!3389 = !DILocalVariable(name: "bi", scope: !3380, file: !3, line: 212, type: !3390)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !884, line: 218, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 203, size: 256, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3391, file: !884, line: 206, baseType: !887, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3391, file: !884, line: 209, baseType: !887, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3391, file: !884, line: 212, baseType: !7, size: 32, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3391, file: !884, line: 217, baseType: !897, size: 64, offset: 192)
!3397 = !DILocalVariable(name: "op_iter", scope: !3380, file: !3, line: 213, type: !2826)
!3398 = !DILocalVariable(name: "imm_iter", scope: !3380, file: !3, line: 214, type: !2839)
!3399 = !DILocalVariable(name: "use_p", scope: !3380, file: !3, line: 215, type: !2007)
!3400 = !DILocalVariable(name: "var", scope: !3380, file: !3, line: 216, type: !655)
!3401 = !DILocalVariable(name: "usestmt", scope: !3402, file: !3, line: 223, type: !979)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 222, column: 9)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 221, column: 7)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 221, column: 7)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 220, column: 5)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 219, column: 3)
!3407 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 219, column: 3)
!3408 = !DILocalVariable(name: "useblock", scope: !3402, file: !3, line: 224, type: !1431)
!3409 = !DILocalVariable(name: "idx", scope: !3410, file: !3, line: 228, type: !648)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 227, column: 6)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 226, column: 8)
!3412 = !DILocation(line: 0, scope: !3380)
!3413 = !DILocation(line: 209, column: 19, scope: !3380)
!3414 = !DILocation(line: 211, column: 3, scope: !3380)
!3415 = !DILocation(line: 212, column: 3, scope: !3380)
!3416 = !DILocation(line: 213, column: 3, scope: !3380)
!3417 = !DILocation(line: 214, column: 3, scope: !3380)
!3418 = !DILocation(line: 218, column: 3, scope: !3380)
!3419 = !DILocation(line: 219, column: 3, scope: !3407)
!3420 = !DILocation(line: 0, scope: !3407)
!3421 = !DILocation(line: 209, column: 10, scope: !3380)
!3422 = !DILocation(line: 219, column: 3, scope: !3406)
!3423 = !DILocation(line: 221, column: 7, scope: !3404)
!3424 = !DILocation(line: 0, scope: !3404)
!3425 = !DILocation(line: 221, column: 7, scope: !3403)
!3426 = !DILocation(line: 223, column: 21, scope: !3402)
!3427 = !DILocation(line: 0, scope: !3402)
!3428 = !DILocation(line: 226, column: 8, scope: !3411)
!3429 = !DILocation(line: 226, column: 30, scope: !3411)
!3430 = !DILocation(line: 226, column: 8, scope: !3402)
!3431 = !DILocation(line: 228, column: 18, scope: !3410)
!3432 = !DILocation(line: 0, scope: !3410)
!3433 = !DILocation(line: 230, column: 49, scope: !3410)
!3434 = !DILocation(line: 230, column: 19, scope: !3410)
!3435 = !DILocation(line: 230, column: 55, scope: !3410)
!3436 = !DILocation(line: 231, column: 6, scope: !3410)
!3437 = !DILocation(line: 232, column: 13, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 232, column: 13)
!3439 = !DILocation(line: 232, column: 13, scope: !3411)
!3440 = !DILocation(line: 234, column: 21, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 233, column: 6)
!3442 = !DILocation(line: 235, column: 8, scope: !3441)
!3443 = !DILocation(line: 239, column: 19, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 238, column: 6)
!3445 = !DILocation(line: 0, scope: !3411)
!3446 = !DILocation(line: 243, column: 20, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 243, column: 8)
!3448 = !DILocation(line: 243, column: 17, scope: !3447)
!3449 = !DILocation(line: 243, column: 8, scope: !3402)
!3450 = !DILocation(line: 245, column: 8, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 244, column: 6)
!3452 = !DILocation(line: 246, column: 8, scope: !3451)
!3453 = !DILocation(line: 248, column: 38, scope: !3402)
!3454 = !DILocation(line: 248, column: 4, scope: !3402)
!3455 = !DILocation(line: 249, column: 2, scope: !3403)
!3456 = distinct !{!3456, !3423, !3457}
!3457 = !DILocation(line: 249, column: 2, scope: !3404)
!3458 = distinct !{!3458, !3419, !3459}
!3459 = !DILocation(line: 250, column: 5, scope: !3407)
!3460 = !DILocation(line: 251, column: 15, scope: !3380)
!3461 = !DILocation(line: 252, column: 3, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 252, column: 3)
!3463 = !DILocation(line: 252, column: 3, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 252, column: 3)
!3465 = !DILocation(line: 254, column: 8, scope: !3464)
!3466 = !DILocation(line: 253, column: 17, scope: !3464)
!3467 = distinct !{!3467, !3461, !3468}
!3468 = !DILocation(line: 254, column: 23, scope: !3462)
!3469 = !DILocation(line: 255, column: 3, scope: !3380)
!3470 = !DILocation(line: 256, column: 3, scope: !3380)
!3471 = !DILocation(line: 257, column: 1, scope: !3380)
!3472 = distinct !DISubprogram(name: "gsi_after_labels", scope: !574, file: !574, line: 4510, type: !2775, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3473)
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "bb", arg: 1, scope: !3472, file: !574, line: 4510, type: !1431)
!3475 = !DILocalVariable(name: "gsi", scope: !3472, file: !574, line: 4512, type: !2627)
!3476 = !DILocation(line: 0, scope: !3472)
!3477 = !DILocation(line: 4512, column: 24, scope: !3472)
!3478 = !DILocation(line: 4512, column: 30, scope: !3472)
!3479 = !DILocation(line: 4514, column: 3, scope: !3472)
!3480 = !DILocation(line: 4514, column: 11, scope: !3472)
!3481 = !DILocation(line: 4514, column: 27, scope: !3472)
!3482 = !DILocation(line: 4514, column: 43, scope: !3472)
!3483 = !DILocation(line: 4514, column: 30, scope: !3472)
!3484 = !DILocation(line: 4514, column: 59, scope: !3472)
!3485 = !DILocation(line: 4515, column: 5, scope: !3472)
!3486 = distinct !{!3486, !3479, !3487}
!3487 = !DILocation(line: 4515, column: 19, scope: !3472)
!3488 = !DILocation(line: 4517, column: 3, scope: !3472)
!3489 = distinct !DISubprogram(name: "gimple_bb", scope: !574, file: !574, line: 1112, type: !3490, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!943, !2538}
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "g", arg: 1, scope: !3489, file: !574, line: 1112, type: !2538)
!3494 = !DILocation(line: 0, scope: !3489)
!3495 = !DILocation(line: 1114, column: 20, scope: !3489)
!3496 = !DILocation(line: 1114, column: 3, scope: !3489)
!3497 = distinct !DISubprogram(name: "find_bb_for_arg", scope: !3, file: !3, line: 86, type: !3498, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!1431, !979, !655}
!3500 = !{!3501, !3502, !3503, !3504, !3505}
!3501 = !DILocalVariable(name: "phi", arg: 1, scope: !3497, file: !3, line: 86, type: !979)
!3502 = !DILocalVariable(name: "def", arg: 2, scope: !3497, file: !3, line: 86, type: !655)
!3503 = !DILocalVariable(name: "i", scope: !3497, file: !3, line: 88, type: !1124)
!3504 = !DILocalVariable(name: "foundone", scope: !3497, file: !3, line: 89, type: !647)
!3505 = !DILocalVariable(name: "result", scope: !3497, file: !3, line: 90, type: !1431)
!3506 = !DILocation(line: 0, scope: !3497)
!3507 = !DILocation(line: 91, column: 8, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 91, column: 3)
!3509 = !DILocation(line: 0, scope: !3508)
!3510 = !DILocation(line: 91, column: 19, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 91, column: 3)
!3512 = !DILocation(line: 91, column: 17, scope: !3511)
!3513 = !DILocation(line: 91, column: 3, scope: !3508)
!3514 = !DILocation(line: 92, column: 9, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 92, column: 9)
!3516 = !DILocation(line: 92, column: 30, scope: !3515)
!3517 = !DILocation(line: 92, column: 9, scope: !3511)
!3518 = !DILocation(line: 94, column: 6, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 94, column: 6)
!3520 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 93, column: 7)
!3521 = !DILocation(line: 94, column: 6, scope: !3520)
!3522 = !DILocation(line: 97, column: 11, scope: !3520)
!3523 = !DILocation(line: 97, column: 41, scope: !3520)
!3524 = !DILocation(line: 98, column: 7, scope: !3520)
!3525 = !DILocation(line: 91, column: 47, scope: !3511)
!3526 = !DILocation(line: 91, column: 3, scope: !3511)
!3527 = distinct !{!3527, !3513, !3528}
!3528 = !DILocation(line: 98, column: 7, scope: !3508)
!3529 = !DILocation(line: 100, column: 1, scope: !3497)
!3530 = distinct !DISubprogram(name: "op_iter_init", scope: !2565, file: !2565, line: 742, type: !3531, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !3114, !979, !648}
!3533 = !{!3534, !3535, !3536}
!3534 = !DILocalVariable(name: "ptr", arg: 1, scope: !3530, file: !2565, line: 742, type: !3114)
!3535 = !DILocalVariable(name: "stmt", arg: 2, scope: !3530, file: !2565, line: 742, type: !979)
!3536 = !DILocalVariable(name: "flags", arg: 3, scope: !3530, file: !2565, line: 742, type: !648)
!3537 = !DILocation(line: 0, scope: !3530)
!3538 = !DILocation(line: 746, column: 3, scope: !3530)
!3539 = !DILocation(line: 748, column: 22, scope: !3530)
!3540 = !DILocation(line: 748, column: 15, scope: !3530)
!3541 = !DILocation(line: 748, column: 52, scope: !3530)
!3542 = !DILocation(line: 748, column: 8, scope: !3530)
!3543 = !DILocation(line: 748, column: 13, scope: !3530)
!3544 = !DILocation(line: 749, column: 15, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3530, file: !2565, line: 749, column: 7)
!3546 = !DILocation(line: 750, column: 7, scope: !3545)
!3547 = !DILocation(line: 750, column: 10, scope: !3545)
!3548 = !DILocation(line: 751, column: 7, scope: !3545)
!3549 = !DILocation(line: 751, column: 10, scope: !3545)
!3550 = !DILocation(line: 751, column: 29, scope: !3545)
!3551 = !DILocation(line: 749, column: 7, scope: !3530)
!3552 = !DILocation(line: 752, column: 22, scope: !3545)
!3553 = !DILocation(line: 752, column: 28, scope: !3545)
!3554 = !DILocation(line: 752, column: 15, scope: !3545)
!3555 = !DILocation(line: 752, column: 5, scope: !3545)
!3556 = !DILocation(line: 753, column: 22, scope: !3530)
!3557 = !DILocation(line: 753, column: 15, scope: !3530)
!3558 = !DILocation(line: 753, column: 52, scope: !3530)
!3559 = !DILocation(line: 753, column: 8, scope: !3530)
!3560 = !DILocation(line: 753, column: 13, scope: !3530)
!3561 = !DILocation(line: 754, column: 15, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3530, file: !2565, line: 754, column: 7)
!3563 = !DILocation(line: 755, column: 7, scope: !3562)
!3564 = !DILocation(line: 755, column: 10, scope: !3562)
!3565 = !DILocation(line: 756, column: 7, scope: !3562)
!3566 = !DILocation(line: 756, column: 10, scope: !3562)
!3567 = !DILocation(line: 756, column: 29, scope: !3562)
!3568 = !DILocation(line: 754, column: 7, scope: !3530)
!3569 = !DILocation(line: 757, column: 22, scope: !3562)
!3570 = !DILocation(line: 757, column: 28, scope: !3562)
!3571 = !DILocation(line: 757, column: 15, scope: !3562)
!3572 = !DILocation(line: 757, column: 5, scope: !3562)
!3573 = !DILocation(line: 758, column: 8, scope: !3530)
!3574 = !DILocation(line: 758, column: 13, scope: !3530)
!3575 = !DILocation(line: 760, column: 8, scope: !3530)
!3576 = !DILocation(line: 760, column: 14, scope: !3530)
!3577 = !DILocation(line: 761, column: 8, scope: !3530)
!3578 = !DILocation(line: 761, column: 16, scope: !3530)
!3579 = !DILocation(line: 762, column: 8, scope: !3530)
!3580 = !DILocation(line: 762, column: 17, scope: !3530)
!3581 = !DILocation(line: 763, column: 1, scope: !3530)
!3582 = distinct !DISubprogram(name: "gimple_def_ops", scope: !574, file: !574, line: 1292, type: !3583, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!1008, !2538}
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "g", arg: 1, scope: !3582, file: !574, line: 1292, type: !2538)
!3587 = !DILocation(line: 0, scope: !3582)
!3588 = !DILocation(line: 1294, column: 8, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3582, file: !574, line: 1294, column: 7)
!3590 = !DILocation(line: 1294, column: 7, scope: !3582)
!3591 = !DILocation(line: 1296, column: 26, scope: !3582)
!3592 = !DILocation(line: 1296, column: 3, scope: !3582)
!3593 = !DILocation(line: 1297, column: 1, scope: !3582)
!3594 = distinct !DISubprogram(name: "gimple_use_ops", scope: !574, file: !574, line: 1313, type: !3595, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!1015, !2538}
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "g", arg: 1, scope: !3594, file: !574, line: 1313, type: !2538)
!3599 = !DILocation(line: 0, scope: !3594)
!3600 = !DILocation(line: 1315, column: 8, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3594, file: !574, line: 1315, column: 7)
!3602 = !DILocation(line: 1315, column: 7, scope: !3594)
!3603 = !DILocation(line: 1317, column: 26, scope: !3594)
!3604 = !DILocation(line: 1317, column: 3, scope: !3594)
!3605 = !DILocation(line: 1318, column: 1, scope: !3594)
!3606 = distinct !DISubprogram(name: "gimple_has_ops", scope: !574, file: !574, line: 1274, type: !2549, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3607)
!3607 = !{!3608}
!3608 = !DILocalVariable(name: "g", arg: 1, scope: !3606, file: !574, line: 1274, type: !2538)
!3609 = !DILocation(line: 0, scope: !3606)
!3610 = !DILocation(line: 1276, column: 10, scope: !3606)
!3611 = !DILocation(line: 1276, column: 26, scope: !3606)
!3612 = !DILocation(line: 1276, column: 41, scope: !3606)
!3613 = !DILocation(line: 1276, column: 44, scope: !3606)
!3614 = !DILocation(line: 1276, column: 60, scope: !3606)
!3615 = !DILocation(line: 1276, column: 3, scope: !3606)
!3616 = distinct !DISubprogram(name: "gimple_op", scope: !574, file: !574, line: 1631, type: !3617, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!655, !2538, !7}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "gs", arg: 1, scope: !3616, file: !574, line: 1631, type: !2538)
!3621 = !DILocalVariable(name: "i", arg: 2, scope: !3616, file: !574, line: 1631, type: !7)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 1633, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3616, file: !574, line: 1633, column: 7)
!3625 = !DILocation(line: 1633, column: 7, scope: !3616)
!3626 = !DILocation(line: 1638, column: 14, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !574, line: 1634, column: 5)
!3628 = !DILocation(line: 1638, column: 7, scope: !3627)
!3629 = !DILocation(line: 0, scope: !3624)
!3630 = !DILocation(line: 1642, column: 1, scope: !3616)
!3631 = distinct !DISubprogram(name: "gimple_ops", scope: !574, file: !574, line: 1614, type: !3632, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!1013, !979}
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "gs", arg: 1, scope: !3631, file: !574, line: 1614, type: !979)
!3636 = !DILocalVariable(name: "off", scope: !3631, file: !574, line: 1616, type: !1124)
!3637 = !DILocation(line: 0, scope: !3631)
!3638 = !DILocation(line: 1621, column: 28, scope: !3631)
!3639 = !DILocation(line: 1621, column: 9, scope: !3631)
!3640 = !DILocation(line: 1622, column: 3, scope: !3631)
!3641 = !DILocation(line: 1624, column: 20, scope: !3631)
!3642 = !DILocation(line: 1624, column: 32, scope: !3631)
!3643 = !DILocation(line: 1624, column: 10, scope: !3631)
!3644 = !DILocation(line: 1624, column: 3, scope: !3631)
!3645 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !574, file: !574, line: 1073, type: !3646, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!619, !979}
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "gs", arg: 1, scope: !3645, file: !574, line: 1073, type: !979)
!3650 = !DILocation(line: 0, scope: !3645)
!3651 = !DILocation(line: 1075, column: 24, scope: !3645)
!3652 = !DILocation(line: 1075, column: 10, scope: !3645)
!3653 = !DILocation(line: 1075, column: 3, scope: !3645)
!3654 = distinct !DISubprogram(name: "gss_for_code", scope: !574, file: !574, line: 1061, type: !3655, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!619, !573}
!3657 = !{!3658}
!3658 = !DILocalVariable(name: "code", arg: 1, scope: !3654, file: !574, line: 1061, type: !573)
!3659 = !DILocation(line: 0, scope: !3654)
!3660 = !DILocation(line: 1066, column: 10, scope: !3654)
!3661 = !DILocation(line: 1066, column: 3, scope: !3654)
!3662 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2565, file: !2565, line: 442, type: !3663, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!2007, !979, !648}
!3665 = !{!3666, !3667}
!3666 = !DILocalVariable(name: "gs", arg: 1, scope: !3662, file: !2565, line: 442, type: !979)
!3667 = !DILocalVariable(name: "i", arg: 2, scope: !3662, file: !2565, line: 442, type: !648)
!3668 = !DILocation(line: 0, scope: !3662)
!3669 = !DILocation(line: 444, column: 11, scope: !3662)
!3670 = !DILocation(line: 444, column: 35, scope: !3662)
!3671 = !DILocation(line: 444, column: 3, scope: !3662)
!3672 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !574, file: !574, line: 3100, type: !3673, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3675)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!2013, !979, !7}
!3675 = !{!3676, !3677}
!3676 = !DILocalVariable(name: "gs", arg: 1, scope: !3672, file: !574, line: 3100, type: !979)
!3677 = !DILocalVariable(name: "index", arg: 2, scope: !3672, file: !574, line: 3100, type: !7)
!3678 = !DILocation(line: 0, scope: !3672)
!3679 = !DILocation(line: 3103, column: 3, scope: !3672)
!3680 = !DILocation(line: 3104, column: 12, scope: !3672)
!3681 = !DILocation(line: 3104, column: 3, scope: !3672)
!3682 = distinct !DISubprogram(name: "phi_arg_index_from_use", scope: !2565, file: !2565, line: 533, type: !3683, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!648, !2007}
!3685 = !{!3686, !3687, !3688, !3689, !3690}
!3686 = !DILocalVariable(name: "use", arg: 1, scope: !3682, file: !2565, line: 533, type: !2007)
!3687 = !DILocalVariable(name: "element", scope: !3682, file: !2565, line: 535, type: !2013)
!3688 = !DILocalVariable(name: "root", scope: !3682, file: !2565, line: 535, type: !2013)
!3689 = !DILocalVariable(name: "index", scope: !3682, file: !2565, line: 536, type: !1124)
!3690 = !DILocalVariable(name: "phi", scope: !3682, file: !2565, line: 537, type: !979)
!3691 = !DILocation(line: 0, scope: !3682)
!3692 = !DILocation(line: 543, column: 9, scope: !3682)
!3693 = !DILocation(line: 544, column: 3, scope: !3682)
!3694 = !DILocation(line: 547, column: 10, scope: !3682)
!3695 = !DILocation(line: 548, column: 19, scope: !3682)
!3696 = !DILocation(line: 558, column: 9, scope: !3682)
!3697 = !DILocation(line: 558, column: 2, scope: !3682)
!3698 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2565, file: !2565, line: 467, type: !3699, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!959, !979, !1124}
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "gs", arg: 1, scope: !3698, file: !2565, line: 467, type: !979)
!3703 = !DILocalVariable(name: "i", arg: 2, scope: !3698, file: !2565, line: 467, type: !1124)
!3704 = !DILocation(line: 0, scope: !3698)
!3705 = !DILocation(line: 469, column: 10, scope: !3698)
!3706 = !DILocation(line: 469, column: 3, scope: !3698)
!3707 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !3708, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3712)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!1431, !3710, !7}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "vec_", arg: 1, scope: !3707, file: !135, line: 281, type: !3710)
!3714 = !DILocalVariable(name: "ix_", arg: 2, scope: !3707, file: !135, line: 281, type: !7)
!3715 = !DILocation(line: 0, scope: !3707)
!3716 = !DILocation(line: 281, column: 1, scope: !3707)
!3717 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !884, file: !884, line: 224, type: !3718, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3725)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3720, !3721, !7, !3724}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !656, line: 48, baseType: !3722)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DILocalVariable(name: "bi", arg: 1, scope: !3717, file: !884, line: 224, type: !3720)
!3727 = !DILocalVariable(name: "map", arg: 2, scope: !3717, file: !884, line: 224, type: !3721)
!3728 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3717, file: !884, line: 225, type: !7)
!3729 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3717, file: !884, line: 225, type: !3724)
!3730 = !DILocation(line: 0, scope: !3717)
!3731 = !DILocation(line: 227, column: 19, scope: !3717)
!3732 = !DILocation(line: 227, column: 12, scope: !3717)
!3733 = !DILocation(line: 228, column: 7, scope: !3717)
!3734 = !DILocation(line: 228, column: 12, scope: !3717)
!3735 = !DILocation(line: 0, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !884, line: 233, column: 11)
!3737 = distinct !DILexicalBlock(scope: !3717, file: !884, line: 232, column: 5)
!3738 = !DILocation(line: 231, column: 3, scope: !3717)
!3739 = !DILocation(line: 233, column: 12, scope: !3736)
!3740 = !DILocation(line: 233, column: 11, scope: !3737)
!3741 = !DILocation(line: 235, column: 13, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3736, file: !884, line: 234, column: 2)
!3743 = !DILocation(line: 236, column: 4, scope: !3742)
!3744 = !DILocation(line: 239, column: 11, scope: !3737)
!3745 = distinct !{!3745, !3738, !3746}
!3746 = !DILocation(line: 242, column: 5, scope: !3717)
!3747 = !DILocation(line: 245, column: 11, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3717, file: !884, line: 245, column: 7)
!3749 = !DILocation(line: 245, column: 17, scope: !3748)
!3750 = !DILocation(line: 245, column: 22, scope: !3748)
!3751 = !DILocation(line: 245, column: 7, scope: !3717)
!3752 = !DILocation(line: 246, column: 27, scope: !3748)
!3753 = !DILocation(line: 246, column: 32, scope: !3748)
!3754 = !DILocation(line: 246, column: 5, scope: !3748)
!3755 = !DILocation(line: 249, column: 7, scope: !3717)
!3756 = !DILocation(line: 249, column: 15, scope: !3717)
!3757 = !DILocation(line: 250, column: 14, scope: !3717)
!3758 = !DILocation(line: 251, column: 7, scope: !3717)
!3759 = !DILocation(line: 251, column: 12, scope: !3717)
!3760 = !DILocation(line: 257, column: 16, scope: !3717)
!3761 = !DILocation(line: 257, column: 13, scope: !3717)
!3762 = !DILocation(line: 259, column: 11, scope: !3717)
!3763 = !DILocation(line: 260, column: 1, scope: !3717)
!3764 = distinct !DISubprogram(name: "bmp_iter_set", scope: !884, file: !884, line: 393, type: !3765, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!647, !3720, !3724}
!3767 = !{!3768, !3769, !3770}
!3768 = !DILocalVariable(name: "bi", arg: 1, scope: !3764, file: !884, line: 393, type: !3720)
!3769 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3764, file: !884, line: 393, type: !3724)
!3770 = !DILabel(scope: !3771, name: "next_bit", file: !884, line: 398)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !884, line: 397, column: 5)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !884, line: 396, column: 7)
!3773 = !DILocation(line: 0, scope: !3764)
!3774 = !DILocation(line: 396, column: 11, scope: !3772)
!3775 = !DILocation(line: 396, column: 7, scope: !3772)
!3776 = !DILocation(line: 396, column: 7, scope: !3764)
!3777 = !DILocation(line: 419, column: 15, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !884, line: 418, column: 2)
!3779 = distinct !DILexicalBlock(scope: !3764, file: !884, line: 415, column: 5)
!3780 = !DILocation(line: 399, column: 7, scope: !3771)
!3781 = !DILocation(line: 398, column: 5, scope: !3771)
!3782 = !DILocation(line: 399, column: 20, scope: !3771)
!3783 = !DILocation(line: 399, column: 25, scope: !3771)
!3784 = !DILocation(line: 399, column: 14, scope: !3771)
!3785 = !DILocation(line: 401, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3771, file: !884, line: 400, column: 2)
!3787 = !DILocation(line: 402, column: 12, scope: !3786)
!3788 = distinct !{!3788, !3780, !3789}
!3789 = !DILocation(line: 403, column: 2, scope: !3771)
!3790 = !DILocation(line: 410, column: 15, scope: !3764)
!3791 = !DILocation(line: 410, column: 42, scope: !3764)
!3792 = !DILocation(line: 411, column: 26, scope: !3764)
!3793 = !DILocation(line: 410, column: 11, scope: !3764)
!3794 = !DILocation(line: 412, column: 7, scope: !3764)
!3795 = !DILocation(line: 412, column: 14, scope: !3764)
!3796 = !DILocation(line: 0, scope: !3779)
!3797 = !DILocation(line: 414, column: 3, scope: !3764)
!3798 = !DILocation(line: 417, column: 7, scope: !3779)
!3799 = !DILocation(line: 417, column: 18, scope: !3779)
!3800 = !DILocation(line: 417, column: 26, scope: !3779)
!3801 = !DILocation(line: 419, column: 13, scope: !3778)
!3802 = !DILocation(line: 420, column: 8, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3778, file: !884, line: 420, column: 8)
!3804 = !DILocation(line: 420, column: 8, scope: !3778)
!3805 = !DILocation(line: 422, column: 12, scope: !3778)
!3806 = !DILocation(line: 423, column: 15, scope: !3778)
!3807 = distinct !{!3807, !3798, !3808}
!3808 = !DILocation(line: 424, column: 2, scope: !3779)
!3809 = !DILocation(line: 427, column: 28, scope: !3779)
!3810 = !DILocation(line: 427, column: 16, scope: !3779)
!3811 = !DILocation(line: 428, column: 12, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3779, file: !884, line: 428, column: 11)
!3813 = !DILocation(line: 428, column: 11, scope: !3779)
!3814 = !DILocation(line: 430, column: 27, scope: !3779)
!3815 = !DILocation(line: 430, column: 32, scope: !3779)
!3816 = !DILocation(line: 430, column: 15, scope: !3779)
!3817 = !DILocation(line: 431, column: 19, scope: !3779)
!3818 = distinct !{!3818, !3797, !3819}
!3819 = !DILocation(line: 432, column: 5, scope: !3764)
!3820 = !DILocation(line: 433, column: 1, scope: !3764)
!3821 = distinct !DISubprogram(name: "bmp_iter_next", scope: !884, file: !884, line: 382, type: !3822, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !3720, !3724}
!3824 = !{!3825, !3826}
!3825 = !DILocalVariable(name: "bi", arg: 1, scope: !3821, file: !884, line: 382, type: !3720)
!3826 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3821, file: !884, line: 382, type: !3724)
!3827 = !DILocation(line: 0, scope: !3821)
!3828 = !DILocation(line: 384, column: 7, scope: !3821)
!3829 = !DILocation(line: 384, column: 12, scope: !3821)
!3830 = !DILocation(line: 385, column: 11, scope: !3821)
!3831 = !DILocation(line: 386, column: 1, scope: !3821)
!3832 = distinct !DISubprogram(name: "gsi_start_bb", scope: !574, file: !574, line: 4418, type: !2775, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DILocalVariable(name: "bb", arg: 1, scope: !3832, file: !574, line: 4418, type: !1431)
!3835 = !DILocalVariable(name: "i", scope: !3832, file: !574, line: 4420, type: !2627)
!3836 = !DILocalVariable(name: "seq", scope: !3832, file: !574, line: 4421, type: !969)
!3837 = !DILocation(line: 0, scope: !3832)
!3838 = !DILocation(line: 4420, column: 24, scope: !3832)
!3839 = !DILocation(line: 4423, column: 9, scope: !3832)
!3840 = !DILocation(line: 4424, column: 11, scope: !3832)
!3841 = !DILocation(line: 4424, column: 5, scope: !3832)
!3842 = !DILocation(line: 4424, column: 9, scope: !3832)
!3843 = !DILocation(line: 4425, column: 5, scope: !3832)
!3844 = !DILocation(line: 4425, column: 9, scope: !3832)
!3845 = !DILocation(line: 4426, column: 5, scope: !3832)
!3846 = !DILocation(line: 4426, column: 8, scope: !3832)
!3847 = !DILocation(line: 4429, column: 1, scope: !3832)
!3848 = distinct !DISubprogram(name: "gsi_next", scope: !574, file: !574, line: 4485, type: !3024, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3849)
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "i", arg: 1, scope: !3848, file: !574, line: 4485, type: !2814)
!3851 = !DILocation(line: 0, scope: !3848)
!3852 = !DILocation(line: 4487, column: 15, scope: !3848)
!3853 = !DILocation(line: 4487, column: 20, scope: !3848)
!3854 = !DILocation(line: 4487, column: 10, scope: !3848)
!3855 = !DILocation(line: 4488, column: 1, scope: !3848)
!3856 = distinct !DISubprogram(name: "gimple_seq_first", scope: !574, file: !574, line: 159, type: !3100, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3857 = !{!3858}
!3858 = !DILocalVariable(name: "s", arg: 1, scope: !3856, file: !574, line: 159, type: !3102)
!3859 = !DILocation(line: 0, scope: !3856)
!3860 = !DILocation(line: 161, column: 10, scope: !3856)
!3861 = !DILocation(line: 161, column: 17, scope: !3856)
!3862 = !DILocation(line: 161, column: 3, scope: !3856)
!3863 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !574, file: !574, line: 3061, type: !3864, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!7, !2538}
!3866 = !{!3867}
!3867 = !DILocalVariable(name: "gs", arg: 1, scope: !3863, file: !574, line: 3061, type: !2538)
!3868 = !DILocation(line: 0, scope: !3863)
!3869 = !DILocation(line: 3064, column: 25, scope: !3863)
!3870 = !DILocation(line: 3064, column: 3, scope: !3863)
