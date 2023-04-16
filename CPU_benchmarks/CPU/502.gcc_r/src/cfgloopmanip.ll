; ModuleID = 'cfgloopmanip.bc'
source_filename = "cfgloopmanip.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [15 x i8] c"cfgloopmanip.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mfb_kj_edge = common dso_local local_unnamed_addr global %struct.edge_def* null, align 8, !dbg !0
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Created preheader block for loop %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2041, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2042, metadata !DIExpression()), !dbg !2043
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2044
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2045
  ret i32 %call, !dbg !2046
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2047 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2051
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2052
  ret i32 %call, !dbg !2053
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2054 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2109, metadata !DIExpression()), !dbg !2110
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2111
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2111
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2111
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2111
  %cmp = icmp uge i8* %0, %1, !dbg !2111
  %conv1 = zext i1 %cmp to i64, !dbg !2111
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2111
  %tobool = icmp eq i64 %expval, 0, !dbg !2111
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2111

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2111
  br label %cond.end, !dbg !2111

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2111
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2111
  %2 = load i8, i8* %0, align 1, !dbg !2111
  %conv3 = zext i8 %2 to i32, !dbg !2111
  br label %cond.end, !dbg !2111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2111
  ret i32 %cond, !dbg !2112
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2115, metadata !DIExpression()), !dbg !2116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2117
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2117
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2117
  %cmp = icmp uge i8* %0, %1, !dbg !2117
  %conv1 = zext i1 %cmp to i64, !dbg !2117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2117
  %tobool = icmp eq i64 %expval, 0, !dbg !2117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2117
  br label %cond.end, !dbg !2117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2117
  %2 = load i8, i8* %0, align 1, !dbg !2117
  %conv3 = zext i8 %2 to i32, !dbg !2117
  br label %cond.end, !dbg !2117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2117
  ret i32 %cond, !dbg !2118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2119 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2120
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2120
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2120
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2120
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2120
  %cmp = icmp uge i8* %1, %2, !dbg !2120
  %conv1 = zext i1 %cmp to i64, !dbg !2120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2120
  %tobool = icmp eq i64 %expval, 0, !dbg !2120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2120

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2120
  br label %cond.end, !dbg !2120

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2120
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2120
  %3 = load i8, i8* %1, align 1, !dbg !2120
  %conv3 = zext i8 %3 to i32, !dbg !2120
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2126, metadata !DIExpression()), !dbg !2127
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2128
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2129
  ret i32 %call, !dbg !2130
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2131 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2136, metadata !DIExpression()), !dbg !2137
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2138
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2138
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2138
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2138
  %cmp = icmp uge i8* %0, %1, !dbg !2138
  %conv1 = zext i1 %cmp to i64, !dbg !2138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2138
  %tobool = icmp eq i64 %expval, 0, !dbg !2138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2138

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2138
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2138
  br label %cond.end, !dbg !2138

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2138
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2138
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2138
  store i8 %conv2, i8* %0, align 1, !dbg !2138
  %conv6 = and i32 %__c, 255, !dbg !2138
  br label %cond.end, !dbg !2138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2138
  ret i32 %cond, !dbg !2139
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2143, metadata !DIExpression()), !dbg !2144
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2145
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2145
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2145
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2145
  %cmp = icmp uge i8* %0, %1, !dbg !2145
  %conv1 = zext i1 %cmp to i64, !dbg !2145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2145
  %tobool = icmp eq i64 %expval, 0, !dbg !2145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2145

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2145
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2145
  br label %cond.end, !dbg !2145

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2145
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2145
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2145
  store i8 %conv2, i8* %0, align 1, !dbg !2145
  %conv6 = and i32 %__c, 255, !dbg !2145
  br label %cond.end, !dbg !2145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2145
  ret i32 %cond, !dbg !2146
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2149, metadata !DIExpression()), !dbg !2150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2151
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2151
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2151
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2151
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2151
  %cmp = icmp uge i8* %1, %2, !dbg !2151
  %conv1 = zext i1 %cmp to i64, !dbg !2151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2151
  %tobool = icmp eq i64 %expval, 0, !dbg !2151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2151

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2151
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2151
  br label %cond.end, !dbg !2151

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2151
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2151
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2151
  store i8 %conv4, i8* %1, align 1, !dbg !2151
  %conv6 = and i32 %__c, 255, !dbg !2151
  br label %cond.end, !dbg !2151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2151
  ret i32 %cond, !dbg !2152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2163
  ret i64 %call, !dbg !2164
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2167, metadata !DIExpression()), !dbg !2168
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2169
  %0 = load i32, i32* %_flags, align 8, !dbg !2169
  %and = lshr i32 %0, 4, !dbg !2169
  %and.lobit = and i32 %and, 1, !dbg !2169
  ret i32 %and.lobit, !dbg !2170
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2173, metadata !DIExpression()), !dbg !2174
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2175
  %0 = load i32, i32* %_flags, align 8, !dbg !2175
  %and = lshr i32 %0, 5, !dbg !2175
  %and.lobit = and i32 %and, 1, !dbg !2175
  ret i32 %and.lobit, !dbg !2176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2180, metadata !DIExpression()), !dbg !2181
  %__c.off = add i32 %__c, 128, !dbg !2182
  %0 = icmp ult i32 %__c.off, 384, !dbg !2182
  br i1 %0, label %cond.true, label %cond.end, !dbg !2182

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2183
  %1 = load i32*, i32** %call, align 8, !dbg !2184
  %idxprom = sext i32 %__c to i64, !dbg !2185
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2185
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2185
  br label %cond.end, !dbg !2186

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2186
  ret i32 %cond, !dbg !2187
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2188 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2190, metadata !DIExpression()), !dbg !2191
  %__c.off = add i32 %__c, 128, !dbg !2192
  %0 = icmp ult i32 %__c.off, 384, !dbg !2192
  br i1 %0, label %cond.true, label %cond.end, !dbg !2192

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2193
  %1 = load i32*, i32** %call, align 8, !dbg !2194
  %idxprom = sext i32 %__c to i64, !dbg !2195
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2195
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2195
  br label %cond.end, !dbg !2196

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2196
  ret i32 %cond, !dbg !2197
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2203, metadata !DIExpression()), !dbg !2204
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2205
  %conv = trunc i64 %call to i32, !dbg !2206
  ret i32 %conv, !dbg !2207
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2212, metadata !DIExpression()), !dbg !2213
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2214
  ret i64 %call, !dbg !2215
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2221, metadata !DIExpression()), !dbg !2222
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2223
  ret i64 %call, !dbg !2224
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2225 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2231, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2232, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2233, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2234, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2235, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2237, metadata !DIExpression()), !dbg !2241
  br label %while.cond, !dbg !2242

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2243
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2237, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2236, metadata !DIExpression()), !dbg !2241
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2244
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2242

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2245
  %div = lshr i64 %add, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %div, metadata !2238, metadata !DIExpression()), !dbg !2241
  %mul = mul i64 %div, %__size, !dbg !2248
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2239, metadata !DIExpression()), !dbg !2241
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %call, metadata !2240, metadata !DIExpression()), !dbg !2241
  %cmp1 = icmp slt i32 %call, 0, !dbg !2251
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2253

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2254
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2256

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2236, metadata !DIExpression()), !dbg !2241
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2241
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2237, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2236, metadata !DIExpression()), !dbg !2241
  br label %while.cond, !dbg !2242, !llvm.loop !2258

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2241
  ret i8* %retval.0, !dbg !2260
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2267, metadata !DIExpression()), !dbg !2268
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2269
  ret double %call, !dbg !2270
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 %base, metadata !2282, metadata !DIExpression()), !dbg !2283
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2284
  ret i64 %call, !dbg !2285
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %base, metadata !2294, metadata !DIExpression()), !dbg !2295
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2296
  ret i64 %call, !dbg !2297
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %base, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2313
  ret i64 %call, !dbg !2314
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2315 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %base, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2323
  ret i64 %call, !dbg !2324
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2366, metadata !DIExpression()), !dbg !2367
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2368
  ret i32 %call, !dbg !2369
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2373, metadata !DIExpression()), !dbg !2374
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2375
  ret i32 %call, !dbg !2376
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2377 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2382, metadata !DIExpression()), !dbg !2383
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2384
  ret i32 %call, !dbg !2385
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2386 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2393, metadata !DIExpression()), !dbg !2394
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2395
  ret i32 %call, !dbg !2396
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2397 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2404
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2405
  ret i32 %call, !dbg !2406
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2407 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2411, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2414, metadata !DIExpression()), !dbg !2415
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2414, metadata !DIExpression(DW_OP_deref)), !dbg !2415
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2416
  ret i32 %call, !dbg !2417
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2443, metadata !DIExpression()), !dbg !2444
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2445
  ret i32 %call, !dbg !2446
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2447 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2450, metadata !DIExpression()), !dbg !2451
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2452
  ret i32 %call, !dbg !2453
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2454 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2459, metadata !DIExpression()), !dbg !2460
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2461
  ret i32 %call, !dbg !2462
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2463 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2467, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2468, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2470, metadata !DIExpression()), !dbg !2471
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2472
  ret i32 %call, !dbg !2473
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @remove_path(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !2474 {
entry:
  %ae = alloca %struct.edge_def*, align 8
  %rem_bbs = alloca %struct.basic_block_def**, align 8
  %dom_bbs = alloca %struct.VEC_basic_block_heap*, align 8
  %irred_invalidated = alloca i8, align 1
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2478, metadata !DIExpression()), !dbg !2514
  %0 = bitcast %struct.edge_def** %ae to i8*, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2515
  %1 = bitcast %struct.basic_block_def*** %rem_bbs to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2516
  %2 = bitcast %struct.VEC_basic_block_heap** %dom_bbs to i8*, !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2517
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %irred_invalidated) #7, !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2514
  store i8 0, i8* %irred_invalidated, align 1, !dbg !2519
  %call = tail call zeroext i8 @can_remove_branch_p(%struct.edge_def* %e) #6, !dbg !2520
  %tobool = icmp eq i8 %call, 0, !dbg !2520
  br i1 %tobool, label %cleanup136, label %if.end, !dbg !2522

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !2523
  %3 = load i32, i32* %flags, align 8, !dbg !2523
  %4 = trunc i32 %3 to i8, !dbg !2525
  %tobool1 = icmp slt i8 %4, 0, !dbg !2525
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2526

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !2499, metadata !DIExpression()), !dbg !2514
  store i8 1, i8* %irred_invalidated, align 1, !dbg !2527
  br label %if.end3, !dbg !2528

if.end3:                                          ; preds = %if.then2, %if.end
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2529
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2529
  %call4 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %5) #8, !dbg !2531
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2531
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !2532

if.then6:                                         ; preds = %if.end3
  %call7 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %e) #6, !dbg !2533
  %call8 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call7) #8, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.edge_def* %call8, metadata !2478, metadata !DIExpression()), !dbg !2514
  br label %if.end9, !dbg !2535

if.end9:                                          ; preds = %if.end3, %if.then6
  %e.addr.0 = phi %struct.edge_def* [ %e, %if.end3 ], [ %call8, %if.then6 ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0, metadata !2478, metadata !DIExpression()), !dbg !2514
  %src12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0, i64 0, i32 0, !dbg !2536
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0, i64 0, i32 1, !dbg !2514
  br label %while.cond, !dbg !2537

while.cond:                                       ; preds = %while.body, %if.end9
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !2538
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 3, !dbg !2539
  %7 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2539
  %call10 = call fastcc %struct.loop* @loop_outer(%struct.loop* %7) #8, !dbg !2540
  %tobool11 = icmp eq %struct.loop* %call10, null, !dbg !2540
  br i1 %tobool11, label %while.end, label %land.rhs, !dbg !2541

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !2536
  %loop_father13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 3, !dbg !2542
  %9 = load %struct.loop*, %struct.loop** %loop_father13, align 8, !dbg !2542
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 3, !dbg !2543
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2543
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8, !dbg !2544
  %call15 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %10, %struct.basic_block_def* %11) #6, !dbg !2545
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2541
  br i1 %tobool16, label %while.end, label %while.body, !dbg !2537

while.body:                                       ; preds = %land.rhs
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !2546
  %loop_father18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 3, !dbg !2547
  %13 = load %struct.loop*, %struct.loop** %loop_father18, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @unloop(%struct.loop* %13, i8* nonnull %irred_invalidated) #8, !dbg !2548
  br label %while.cond, !dbg !2537, !llvm.loop !2549

while.end:                                        ; preds = %land.rhs, %while.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def*** %rem_bbs, metadata !2480, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %call19 = call fastcc i32 @find_path(%struct.edge_def* %e.addr.0, %struct.basic_block_def*** nonnull %rem_bbs) #8, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2486, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()), !dbg !2514
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2552
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !2552
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2552
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 3, !dbg !2552
  %16 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2552
  %conv20 = sext i32 %16 to i64, !dbg !2552
  %call21 = call i8* @xcalloc(i64 %conv20, i64 8) #6, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %21, metadata !2481, metadata !DIExpression()), !dbg !2514
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2553
  %cfg23 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !2553
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg23, align 8, !dbg !2553
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 5, !dbg !2553
  %19 = load i32, i32* %x_last_basic_block, align 8, !dbg !2553
  %call24 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %19) #6, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call24, metadata !2488, metadata !DIExpression()), !dbg !2514
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call24) #6, !dbg !2555
  call void @llvm.dbg.value(metadata i32 0, metadata !2485, metadata !DIExpression()), !dbg !2514
  %20 = sext i32 %call19 to i64, !dbg !2556
  br label %for.cond, !dbg !2556

for.cond:                                         ; preds = %for.body, %while.end
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 0, %while.end ], !dbg !2558
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2485, metadata !DIExpression()), !dbg !2514
  %cmp = icmp slt i64 %indvars.iv5, %20, !dbg !2559
  br i1 %cmp, label %for.body, label %for.cond26.preheader, !dbg !2561

for.cond26.preheader:                             ; preds = %for.cond
  %21 = bitcast i8* %call21 to %struct.basic_block_def**, !dbg !2552
  %22 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2562
  %23 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2563
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2563
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2563
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2565
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2565
  %28 = sext i32 %call19 to i64, !dbg !2567
  br label %for.cond26, !dbg !2567

for.body:                                         ; preds = %for.cond
  %29 = load %struct.basic_block_def**, %struct.basic_block_def*** %rem_bbs, align 8, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %29, metadata !2480, metadata !DIExpression()), !dbg !2514
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %29, i64 %indvars.iv5, !dbg !2568
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2568
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 9, !dbg !2569
  %31 = load i32, i32* %index, align 8, !dbg !2569
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call24, i32 %31) #8, !dbg !2570
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 undef, metadata !2485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %for.cond, !dbg !2572, !llvm.loop !2573

for.cond26:                                       ; preds = %for.cond26.preheader, %for.end66
  %indvars.iv3 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next4, %for.end66 ], !dbg !2575
  %n_bord_bbs.0 = phi i32 [ 0, %for.cond26.preheader ], [ %n_bord_bbs.1.lcssa, %for.end66 ], !dbg !2575
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2485, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.0, metadata !2487, metadata !DIExpression()), !dbg !2514
  %cmp27 = icmp slt i64 %indvars.iv3, %28, !dbg !2576
  br i1 %cmp27, label %for.body29, label %for.end69, !dbg !2567

for.body29:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.basic_block_def* undef, metadata !2483, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2578
  %32 = load %struct.basic_block_def**, %struct.basic_block_def*** %rem_bbs, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %32, metadata !2480, metadata !DIExpression()), !dbg !2514
  %arrayidx33 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %32, i64 %indvars.iv3, !dbg !2578
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx33, align 8, !dbg !2578
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 1, !dbg !2578
  %call34 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2578
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call34, 0, !dbg !2578
  store i32 %34, i32* %24, align 8, !dbg !2578
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call34, 1, !dbg !2578
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %25, align 8, !dbg !2578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %22, i8* nonnull align 8 %23, i64 16, i1 false), !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2578
  br label %for.cond35, !dbg !2578

for.cond35:                                       ; preds = %for.inc65, %for.body29
  %n_bord_bbs.1 = phi i32 [ %n_bord_bbs.0, %for.body29 ], [ %n_bord_bbs.2, %for.inc65 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.1, metadata !2487, metadata !DIExpression()), !dbg !2514
  %36 = load i32, i32* %26, align 8, !dbg !2579
  %37 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %27, align 8, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.edge_def** %ae, metadata !2479, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %call36 = call fastcc zeroext i8 @ei_cond(i32 %36, %struct.VEC_edge_gc** %37, %struct.edge_def** nonnull %ae) #8, !dbg !2579
  %tobool37 = icmp eq i8 %call36, 0, !dbg !2578
  br i1 %tobool37, label %for.end66, label %for.body38, !dbg !2578

for.body38:                                       ; preds = %for.cond35
  %38 = load %struct.edge_def*, %struct.edge_def** %ae, align 8, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2479, metadata !DIExpression()), !dbg !2514
  %dest39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 1, !dbg !2582
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %dest39, align 8, !dbg !2582
  %40 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2583
  %cfg41 = getelementptr inbounds %struct.function, %struct.function* %40, i64 0, i32 1, !dbg !2583
  %41 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg41, align 8, !dbg !2583
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %41, i64 0, i32 1, !dbg !2583
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2583
  %cmp42 = icmp eq %struct.basic_block_def* %39, %42, !dbg !2584
  br i1 %cmp42, label %for.inc65, label %land.lhs.true, !dbg !2585

land.lhs.true:                                    ; preds = %for.body38
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2479, metadata !DIExpression()), !dbg !2514
  %index45 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 9, !dbg !2586
  %43 = load i32, i32* %index45, align 8, !dbg !2586
  %div = lshr i32 %43, 6, !dbg !2586
  %idxprom46 = zext i32 %div to i64, !dbg !2586
  %arrayidx47 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call24, i64 0, i32 3, i64 %idxprom46, !dbg !2586
  %44 = load i64, i64* %arrayidx47, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2479, metadata !DIExpression()), !dbg !2514
  %rem = and i32 %43, 63, !dbg !2586
  %sh_prom = zext i32 %rem to i64, !dbg !2586
  %45 = shl i64 1, %sh_prom, !dbg !2586
  %46 = and i64 %44, %45, !dbg !2586
  %tobool51 = icmp eq i64 %46, 0, !dbg !2586
  br i1 %tobool51, label %if.then52, label %for.inc65, !dbg !2587

if.then52:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2479, metadata !DIExpression()), !dbg !2514
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call24, i32 %43) #8, !dbg !2588
  %47 = load %struct.edge_def*, %struct.edge_def** %ae, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.edge_def* %47, metadata !2479, metadata !DIExpression()), !dbg !2514
  %dest55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i64 0, i32 1, !dbg !2591
  %48 = bitcast %struct.basic_block_def** %dest55 to i64*, !dbg !2591
  %49 = load i64, i64* %48, align 8, !dbg !2591
  %inc56 = add nsw i32 %n_bord_bbs.1, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !2487, metadata !DIExpression()), !dbg !2514
  %idxprom57 = sext i32 %n_bord_bbs.1 to i64, !dbg !2593
  %arrayidx58 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %21, i64 %idxprom57, !dbg !2593
  %50 = bitcast %struct.basic_block_def** %arrayidx58 to i64*, !dbg !2594
  store i64 %49, i64* %50, align 8, !dbg !2594
  %51 = load %struct.edge_def*, %struct.edge_def** %ae, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2479, metadata !DIExpression()), !dbg !2514
  %flags59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 7, !dbg !2597
  %52 = load i32, i32* %flags59, align 8, !dbg !2597
  %53 = trunc i32 %52 to i8, !dbg !2598
  %tobool61 = icmp slt i8 %53, 0, !dbg !2598
  br i1 %tobool61, label %if.then62, label %for.inc65, !dbg !2599

if.then62:                                        ; preds = %if.then52
  call void @llvm.dbg.value(metadata i8 1, metadata !2499, metadata !DIExpression()), !dbg !2514
  store i8 1, i8* %irred_invalidated, align 1, !dbg !2600
  br label %for.inc65, !dbg !2601

for.inc65:                                        ; preds = %land.lhs.true, %for.body38, %if.then62, %if.then52
  %n_bord_bbs.2 = phi i32 [ %n_bord_bbs.1, %land.lhs.true ], [ %n_bord_bbs.1, %for.body38 ], [ %inc56, %if.then62 ], [ %inc56, %if.then52 ], !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.2, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2562
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2579
  br label %for.cond35, !dbg !2579, !llvm.loop !2602

for.end66:                                        ; preds = %for.cond35
  %n_bord_bbs.1.lcssa = phi i32 [ %n_bord_bbs.1, %for.cond35 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.1.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.1.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.1.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2604
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i32 undef, metadata !2485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %for.cond26, !dbg !2606, !llvm.loop !2607

for.end69:                                        ; preds = %for.cond26
  %n_bord_bbs.0.lcssa = phi i32 [ %n_bord_bbs.0, %for.cond26 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.0.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.0.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %n_bord_bbs.0.lcssa, metadata !2487, metadata !DIExpression()), !dbg !2514
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !2609
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %54, metadata !2482, metadata !DIExpression()), !dbg !2514
  call void @remove_branch(%struct.edge_def* %e.addr.0) #6, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2484, metadata !DIExpression()), !dbg !2514
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2485, metadata !DIExpression()), !dbg !2514
  %55 = sext i32 %call19 to i64, !dbg !2612
  br label %for.cond71, !dbg !2612

for.cond71:                                       ; preds = %for.inc87, %for.end69
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc87 ], [ 0, %for.end69 ], !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2485, metadata !DIExpression()), !dbg !2514
  %cmp72 = icmp slt i64 %indvars.iv1, %55, !dbg !2615
  %56 = load %struct.basic_block_def**, %struct.basic_block_def*** %rem_bbs, align 8, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %56, metadata !2480, metadata !DIExpression()), !dbg !2514
  br i1 %cmp72, label %for.body74, label %for.end89, !dbg !2617

for.body74:                                       ; preds = %for.cond71
  %arrayidx76 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %56, i64 %indvars.iv1, !dbg !2618
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx76, align 8, !dbg !2618
  %loop_father77 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i64 0, i32 3, !dbg !2620
  %58 = load %struct.loop*, %struct.loop** %loop_father77, align 8, !dbg !2620
  %header = getelementptr inbounds %struct.loop, %struct.loop* %58, i64 0, i32 2, !dbg !2621
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2621
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %56, metadata !2480, metadata !DIExpression()), !dbg !2514
  %cmp80 = icmp eq %struct.basic_block_def* %59, %57, !dbg !2622
  br i1 %cmp80, label %if.then82, label %for.inc87, !dbg !2623

if.then82:                                        ; preds = %for.body74
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %56, metadata !2480, metadata !DIExpression()), !dbg !2514
  call void @cancel_loop_tree(%struct.loop* %58) #6, !dbg !2624
  br label %for.inc87, !dbg !2624

for.inc87:                                        ; preds = %for.body74, %if.then82
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i32 undef, metadata !2485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %for.cond71, !dbg !2626, !llvm.loop !2627

for.end89:                                        ; preds = %for.cond71
  %.lcssa = phi %struct.basic_block_def** [ %56, %for.cond71 ], !dbg !2514
  call fastcc void @remove_bbs(%struct.basic_block_def** %.lcssa, i32 %call19) #8, !dbg !2629
  %60 = bitcast %struct.basic_block_def*** %rem_bbs to i8**, !dbg !2630
  %61 = load i8*, i8** %60, align 8, !dbg !2630
  call void @free(i8* %61) #6, !dbg !2631
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call24) #6, !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2485, metadata !DIExpression()), !dbg !2514
  %62 = sext i32 %n_bord_bbs.0.lcssa to i64, !dbg !2633
  br label %for.cond90, !dbg !2633

for.cond90:                                       ; preds = %cleanup, %for.end89
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %for.end89 ], !dbg !2634
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2485, metadata !DIExpression()), !dbg !2514
  %cmp91 = icmp slt i64 %indvars.iv, %62, !dbg !2635
  br i1 %cmp91, label %for.body93, label %for.end125, !dbg !2636

for.body93:                                       ; preds = %for.cond90
  %arrayidx95 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %21, i64 %indvars.iv, !dbg !2637
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx95, align 8, !dbg !2637
  %call96 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %63) #6, !dbg !2638
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call96, metadata !2483, metadata !DIExpression()), !dbg !2514
  %index98 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call96, i64 0, i32 9, !dbg !2639
  %64 = load i32, i32* %index98, align 8, !dbg !2639
  %div99 = lshr i32 %64, 6, !dbg !2639
  %idxprom100 = zext i32 %div99 to i64, !dbg !2639
  %arrayidx101 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call24, i64 0, i32 3, i64 %idxprom100, !dbg !2639
  %65 = load i64, i64* %arrayidx101, align 8, !dbg !2639
  %rem103 = and i32 %64, 63, !dbg !2639
  %sh_prom104 = zext i32 %rem103 to i64, !dbg !2639
  %66 = shl i64 1, %sh_prom104, !dbg !2639
  %67 = and i64 %65, %66, !dbg !2639
  %tobool107 = icmp eq i64 %67, 0, !dbg !2639
  br i1 %tobool107, label %if.end109, label %cleanup, !dbg !2641

if.end109:                                        ; preds = %for.body93
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call24, i32 %64) #8, !dbg !2642
  %call111 = call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %call96) #6, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call111, metadata !2510, metadata !DIExpression()), !dbg !2645
  br label %for.cond112, !dbg !2646

for.cond112:                                      ; preds = %for.inc120, %if.end109
  %ldom.0 = phi %struct.basic_block_def* [ %call111, %if.end109 ], [ %call121, %for.inc120 ], !dbg !2647
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %ldom.0, metadata !2510, metadata !DIExpression()), !dbg !2645
  %tobool113 = icmp eq %struct.basic_block_def* %ldom.0, null, !dbg !2648
  br i1 %tobool113, label %cleanup.loopexit, label %for.body114, !dbg !2648

for.body114:                                      ; preds = %for.cond112
  %call115 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %54, %struct.basic_block_def* nonnull %ldom.0) #6, !dbg !2649
  %tobool116 = icmp eq i8 %call115, 0, !dbg !2649
  br i1 %tobool116, label %if.then117, label %for.inc120, !dbg !2652

if.then117:                                       ; preds = %for.body114
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !2484, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %call118 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %dom_bbs, %struct.basic_block_def* nonnull %ldom.0) #8, !dbg !2653
  br label %for.inc120, !dbg !2653

for.inc120:                                       ; preds = %for.body114, %if.then117
  %call121 = call %struct.basic_block_def* @next_dom_son(i32 1, %struct.basic_block_def* nonnull %ldom.0) #6, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call121, metadata !2510, metadata !DIExpression()), !dbg !2645
  br label %for.cond112, !dbg !2655, !llvm.loop !2656

cleanup.loopexit:                                 ; preds = %for.cond112
  br label %cleanup, !dbg !2658

cleanup:                                          ; preds = %cleanup.loopexit, %for.body93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2658
  call void @llvm.dbg.value(metadata i32 undef, metadata !2485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %for.cond90, !dbg !2659, !llvm.loop !2660

for.end125:                                       ; preds = %for.cond90
  %68 = bitcast %struct.simple_bitmap_def* %call24 to i8*, !dbg !2662
  call void @free(i8* %68) #6, !dbg !2663
  %69 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %69, metadata !2484, metadata !DIExpression()), !dbg !2514
  call void @iterate_fix_dominators(i32 1, %struct.VEC_basic_block_heap* %69, i8 zeroext 1) #6, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !2484, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %dom_bbs) #8, !dbg !2666
  call void @free(i8* %call21) #6, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @fix_bb_placements(%struct.basic_block_def* %54, i8* nonnull %irred_invalidated) #8, !dbg !2668
  %loop_father126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i64 0, i32 3, !dbg !2669
  %70 = load %struct.loop*, %struct.loop** %loop_father126, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @fix_loop_placements(%struct.loop* %70, i8* nonnull %irred_invalidated) #8, !dbg !2670
  %71 = load i8, i8* %irred_invalidated, align 1, !dbg !2671
  call void @llvm.dbg.value(metadata i8 %71, metadata !2499, metadata !DIExpression()), !dbg !2514
  %tobool128 = icmp eq i8 %71, 0, !dbg !2671
  br i1 %tobool128, label %cleanup136, label %land.lhs.true129, !dbg !2673

land.lhs.true129:                                 ; preds = %for.end125
  %call130 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 4) #8, !dbg !2674
  %tobool132 = icmp eq i8 %call130, 0, !dbg !2674
  br i1 %tobool132, label %cleanup136, label %if.then133, !dbg !2675

if.then133:                                       ; preds = %land.lhs.true129
  %call134 = call zeroext i8 @mark_irreducible_loops() #6, !dbg !2676
  br label %cleanup136, !dbg !2676

cleanup136:                                       ; preds = %land.lhs.true129, %for.end125, %entry, %if.then133
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %if.then133 ], [ 1, %land.lhs.true129 ], [ 1, %for.end125 ], !dbg !2514
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %irred_invalidated) #7, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2677
  ret i8 %retval.0, !dbg !2677
}

declare dso_local zeroext i8 @can_remove_branch_p(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2678 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2682, metadata !DIExpression()), !dbg !2683
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2684
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2684
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2684
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2684

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2684
  br label %cond.end, !dbg !2684

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2684
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2684
  %cmp = icmp eq i32 %call, 1, !dbg !2685
  %conv2 = zext i1 %cmp to i8, !dbg !2684
  ret i8 %conv2, !dbg !2686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2687 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2691, metadata !DIExpression()), !dbg !2692
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !2693
  %tobool = icmp eq i8 %call, 0, !dbg !2693
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2693

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2693
  br label %cond.end, !dbg !2693

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2694
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2694
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2694
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2694

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2694
  br label %cond.end5, !dbg !2694

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2694
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2694
  ret %struct.edge_def* %call7, !dbg !2695
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2696 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2702, metadata !DIExpression()), !dbg !2704
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2705
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2705
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2705
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2705

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2705
  br label %cond.end, !dbg !2705

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2705
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %call, metadata !2703, metadata !DIExpression()), !dbg !2704
  %cmp = icmp eq i32 %call, 0, !dbg !2706
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2708

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2709
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2709
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2709

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2709
  br label %cond.end8, !dbg !2709

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2709
  %sub = add i32 %call, -1, !dbg !2709
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2709
  br label %cleanup, !dbg !2710

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2704
  ret %struct.loop* %retval.0, !dbg !2711
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @unloop(%struct.loop* %loop, i8* %irred_invalidated) unnamed_addr #5 !dbg !2712 {
entry:
  %dummy = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2716, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2717, metadata !DIExpression()), !dbg !2724
  %latch1 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2725
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch1, align 8, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !2723, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %dummy) #7, !dbg !2726
  call void @llvm.dbg.value(metadata i8 0, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i8 0, i8* %dummy, align 1, !dbg !2727
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2728
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !2730
  %1 = load i32, i32* %flags, align 8, !dbg !2730
  %2 = trunc i32 %1 to i8, !dbg !2731
  %tobool = icmp slt i8 %2, 0, !dbg !2731
  br i1 %tobool, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %entry
  store i8 1, i8* %irred_invalidated, align 1, !dbg !2733
  br label %if.end, !dbg !2734

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call2, metadata !2718, metadata !DIExpression()), !dbg !2724
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2736
  %3 = load i32, i32* %num_nodes, align 4, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %3, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2724
  %wide.trip.count = zext i32 %3 to i64, !dbg !2737
  br label %for.cond, !dbg !2740

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !2741
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2720, metadata !DIExpression()), !dbg !2724
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2737
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2742

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call2, i64 %indvars.iv, !dbg !2743
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2743
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 3, !dbg !2745
  %5 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2745
  %cmp3 = icmp eq %struct.loop* %5, %loop, !dbg !2746
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !2747

if.then4:                                         ; preds = %for.body
  tail call void @remove_bb_from_loops(%struct.basic_block_def* %4) #6, !dbg !2748
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2750
  %call9 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #8, !dbg !2751
  tail call void @add_bb_to_loop(%struct.basic_block_def* %6, %struct.loop* %call9) #6, !dbg !2752
  br label %for.inc, !dbg !2753

for.inc:                                          ; preds = %for.body, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2754
  br label %for.cond, !dbg !2755, !llvm.loop !2756

for.end:                                          ; preds = %for.cond
  %7 = bitcast %struct.basic_block_def** %call2 to i8*, !dbg !2758
  tail call void @free(i8* %7) #6, !dbg !2759
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2724
  br label %while.cond, !dbg !2760

while.cond:                                       ; preds = %while.body, %for.end
  %8 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2761
  %tobool11 = icmp eq %struct.loop* %8, null, !dbg !2760
  br i1 %tobool11, label %while.end, label %while.body, !dbg !2760

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2719, metadata !DIExpression()), !dbg !2724
  tail call void @flow_loop_tree_node_remove(%struct.loop* nonnull %8) #6, !dbg !2762
  %call13 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #8, !dbg !2764
  tail call void @flow_loop_tree_node_add(%struct.loop* %call13, %struct.loop* nonnull %8) #6, !dbg !2765
  br label %while.cond, !dbg !2760, !llvm.loop !2766

while.end:                                        ; preds = %while.cond
  tail call void @delete_loop(%struct.loop* %loop) #6, !dbg !2768
  %call14 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %0) #8, !dbg !2769
  tail call void @remove_edge(%struct.edge_def* %call14) #6, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !2723, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call fastcc void @fix_bb_placements(%struct.basic_block_def* %0, i8* nonnull %dummy) #8, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !2723, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %dummy) #7, !dbg !2772
  ret void, !dbg !2772
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_path(%struct.edge_def* %e, %struct.basic_block_def*** %bbs) unnamed_addr #5 !dbg !2773 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.basic_block_def*** %bbs, metadata !2779, metadata !DIExpression()), !dbg !2780
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2781
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2781
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2781
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2781
  %tobool = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !2781
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2781

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !2781
  br label %cond.end, !dbg !2781

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2781
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2781
  %cmp = icmp ult i32 %call, 2, !dbg !2781
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2781

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2781
  br label %cond.end5, !dbg !2781

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2782
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2782
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2782
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2782
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2782
  %conv = sext i32 %4 to i64, !dbg !2782
  %call7 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2782
  %5 = bitcast %struct.basic_block_def*** %bbs to i8**, !dbg !2783
  store i8* %call7, i8** %5, align 8, !dbg !2783
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2784
  %.cast = bitcast i8* %call7 to %struct.basic_block_def**, !dbg !2785
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2786
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2786
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2786
  %x_n_basic_blocks11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 3, !dbg !2786
  %9 = load i32, i32* %x_n_basic_blocks11, align 8, !dbg !2786
  %10 = bitcast %struct.basic_block_def* %6 to i8*, !dbg !2787
  %call13 = tail call i32 @dfs_enumerate_from(%struct.basic_block_def* %6, i32 0, i8 (%struct.basic_block_def*, i8*)* nonnull @rpe_enum_p, %struct.basic_block_def** %.cast, i32 %9, i8* %10) #6, !dbg !2788
  ret i32 %call13, !dbg !2789
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2790 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2795, metadata !DIExpression()), !dbg !2799
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2800
  %0 = load i8*, i8** %popcount, align 8, !dbg !2800
  %tobool = icmp eq i8* %0, null, !dbg !2801
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2802

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2803
  %.pre2 = zext i32 %.pre to i64, !dbg !2804
  %.pre3 = shl i64 1, %.pre2, !dbg !2804
  %.pre4 = lshr i32 %bitno, 6, !dbg !2805
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2806
  br label %if.end7, !dbg !2802

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2807
  %idxprom = zext i32 %div to i64, !dbg !2807
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2807
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2807
  %rem = and i32 %bitno, 63, !dbg !2807
  %sh_prom = zext i32 %rem to i64, !dbg !2807
  %2 = shl i64 1, %sh_prom, !dbg !2808
  %3 = and i64 %1, %2, !dbg !2808
  %tobool1 = icmp eq i64 %3, 0, !dbg !2808
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2810

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2811
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2812
  %inc = add i8 %4, 1, !dbg !2812
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2812
  br label %if.end7, !dbg !2811

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2806
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2804
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2806
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2813
  %or = or i64 %5, %shl.pre-phi, !dbg !2813
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2813
  ret void, !dbg !2814
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2815 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2819, metadata !DIExpression()), !dbg !2821
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2822
  store i32 0, i32* %index, align 8, !dbg !2823
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2824
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2825
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2826
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2826
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2826
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2827 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2833, metadata !DIExpression()), !dbg !2834
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2835
  %tobool = icmp eq i8 %call, 0, !dbg !2835
  br i1 %tobool, label %if.then, label %if.else, !dbg !2837

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2838
  br label %return, !dbg !2840

if.else:                                          ; preds = %entry
  br label %return, !dbg !2841

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2843
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2843
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2843
  ret i8 %retval.0, !dbg !2844
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2850, metadata !DIExpression()), !dbg !2851
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2852
  %0 = load i32, i32* %index, align 8, !dbg !2852
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2852
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2852
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2852
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2852
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2852

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2852
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2852
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2852
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2852
  br label %cond.end, !dbg !2852

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2852
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2852
  %cmp = icmp ult i32 %0, %call2, !dbg !2852
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2852

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2852
  br label %cond.end5, !dbg !2852

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2853
  %inc = add i32 %5, 1, !dbg !2853
  store i32 %inc, i32* %index, align 8, !dbg !2853
  ret void, !dbg !2854
}

declare dso_local void @remove_branch(%struct.edge_def*) local_unnamed_addr #2

declare dso_local void @cancel_loop_tree(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_bbs(%struct.basic_block_def** %bbs, i32 %nbbs) unnamed_addr #5 !dbg !2855 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bbs, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %nbbs, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 0, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = sext i32 %nbbs to i64, !dbg !2863
  br label %for.cond, !dbg !2863

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2865
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2861, metadata !DIExpression()), !dbg !2862
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !2866
  br i1 %cmp, label %for.body, label %for.end, !dbg !2868

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv, !dbg !2869
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2869
  tail call void @delete_basic_block(%struct.basic_block_def* %1) #6, !dbg !2870
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i32 undef, metadata !2861, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2862
  br label %for.cond, !dbg !2872, !llvm.loop !2873

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2875
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !2882, metadata !DIExpression()), !dbg !2883
  %call = tail call fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 1) #8, !dbg !2884
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2884
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !2884
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2884

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !2884
  br label %cond.end, !dbg !2884

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2884
  %call1 = tail call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %cond, %struct.basic_block_def* %obj_) #8, !dbg !2884
  ret %struct.basic_block_def** %call1, !dbg !2884
}

declare dso_local %struct.basic_block_def* @next_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @iterate_fix_dominators(i32, %struct.VEC_basic_block_heap*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !2889, metadata !DIExpression()), !dbg !2890
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2891
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !2891
  br i1 %tobool, label %if.end, label %if.then, !dbg !2893

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !2893
  tail call void @free(i8* nonnull %1) #6, !dbg !2891
  br label %if.end, !dbg !2891

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2893
  ret void, !dbg !2893
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_bb_placements(%struct.basic_block_def* %from, i8* %irred_invalidated) unnamed_addr #5 !dbg !2894 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp35 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %from, metadata !2898, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !2899, metadata !DIExpression()), !dbg !2914
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2915
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2915
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %from, i64 0, i32 3, !dbg !2916
  %1 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.loop* %1, metadata !2905, metadata !DIExpression()), !dbg !2914
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2917
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2917
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2917
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2919
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2919
  %cmp = icmp eq %struct.loop* %1, %4, !dbg !2920
  br i1 %cmp, label %cleanup98, label %if.end, !dbg !2921

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2922
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2922
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2922
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !2922
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !2900, metadata !DIExpression()), !dbg !2914
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !2924
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %from, i64 0, i32 9, !dbg !2925
  %7 = load i32, i32* %index, align 8, !dbg !2925
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %7) #8, !dbg !2926
  %header = getelementptr inbounds %struct.loop, %struct.loop* %1, i64 0, i32 2, !dbg !2927
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2927
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 9, !dbg !2928
  %9 = load i32, i32* %index2, align 8, !dbg !2928
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %9) #8, !dbg !2929
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %1, i64 0, i32 6, !dbg !2930
  %10 = load i32, i32* %num_nodes, align 4, !dbg !2930
  %add = add i32 %10, 1, !dbg !2930
  %conv = zext i32 %add to i64, !dbg !2930
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2930
  %call3 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2930
  %11 = bitcast i8* %call3 to %struct.basic_block_def**, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %11, metadata !2901, metadata !DIExpression()), !dbg !2914
  %12 = load i32, i32* %num_nodes, align 4, !dbg !2931
  %idx.ext = zext i32 %12 to i64, !dbg !2932
  %add.ptr5 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %11, i64 %idx.ext, !dbg !2932
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %add.ptr5, metadata !2902, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %11, metadata !2903, metadata !DIExpression()), !dbg !2914
  %add.ptr7 = getelementptr inbounds i8, i8* %call3, i64 8, !dbg !2933
  %13 = bitcast i8* %add.ptr7 to %struct.basic_block_def**, !dbg !2933
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %13, metadata !2904, metadata !DIExpression()), !dbg !2914
  store %struct.basic_block_def* %from, %struct.basic_block_def** %11, align 8, !dbg !2934
  %14 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2935
  %15 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2936
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2936
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2936
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2938
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2938
  %20 = bitcast %struct.edge_iterator* %tmp35 to i8*, !dbg !2940
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp35, i64 0, i32 0, !dbg !2940
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp35, i64 0, i32 1, !dbg !2940
  br label %while.cond, !dbg !2941

while.cond:                                       ; preds = %cleanup95, %if.end
  %qbeg.0 = phi %struct.basic_block_def** [ %11, %if.end ], [ %spec.select, %cleanup95 ], !dbg !2914
  %qend.0 = phi %struct.basic_block_def** [ %13, %if.end ], [ %qend.4, %cleanup95 ], !dbg !2942
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.0, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qbeg.0, metadata !2903, metadata !DIExpression()), !dbg !2914
  %cmp8 = icmp eq %struct.basic_block_def** %qbeg.0, %qend.0, !dbg !2943
  br i1 %cmp8, label %while.end, label %while.body, !dbg !2941

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2944
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %qbeg.0, align 8, !dbg !2945
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %23, metadata !2898, metadata !DIExpression()), !dbg !2914
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qbeg.0, i64 1, !dbg !2946
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2903, metadata !DIExpression()), !dbg !2914
  %cmp10 = icmp eq %struct.basic_block_def** %qbeg.0, %add.ptr5, !dbg !2947
  %spec.select = select i1 %cmp10, %struct.basic_block_def** %11, %struct.basic_block_def** %incdec.ptr, !dbg !2949
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select, metadata !2903, metadata !DIExpression()), !dbg !2914
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 9, !dbg !2950
  %24 = load i32, i32* %index14, align 8, !dbg !2950
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call, i32 %24) #8, !dbg !2951
  %loop_father15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 3, !dbg !2952
  %25 = load %struct.loop*, %struct.loop** %loop_father15, align 8, !dbg !2952
  %header16 = getelementptr inbounds %struct.loop, %struct.loop* %25, i64 0, i32 2, !dbg !2954
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %header16, align 8, !dbg !2954
  %cmp17 = icmp eq %struct.basic_block_def* %26, %23, !dbg !2955
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !2956

if.then19:                                        ; preds = %while.body
  %call21 = call fastcc zeroext i8 @fix_loop_placement(%struct.loop* %25) #8, !dbg !2957
  %tobool = icmp eq i8 %call21, 0, !dbg !2957
  br i1 %tobool, label %cleanup95, label %if.end28, !dbg !2960, !llvm.loop !2961

if.else:                                          ; preds = %while.body
  %call24 = call fastcc zeroext i8 @fix_bb_placement(%struct.basic_block_def* %23) #8, !dbg !2963
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2963
  br i1 %tobool25, label %cleanup95, label %if.end28, !dbg !2966, !llvm.loop !2961

if.end28:                                         ; preds = %if.then19, %if.else
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2967
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 1, !dbg !2967
  %call29 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2967
  %27 = extractvalue { i32, %struct.VEC_edge_gc** } %call29, 0, !dbg !2967
  store i32 %27, i32* %16, align 8, !dbg !2967
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call29, 1, !dbg !2967
  store %struct.VEC_edge_gc** %28, %struct.VEC_edge_gc*** %17, align 8, !dbg !2967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2967
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2967
  br label %for.cond, !dbg !2967

for.cond:                                         ; preds = %for.inc, %if.end28
  %29 = load i32, i32* %18, align 8, !dbg !2968
  %30 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2914
  %call30 = call fastcc zeroext i8 @ei_cond(i32 %29, %struct.VEC_edge_gc** %30, %struct.edge_def** nonnull %e) #8, !dbg !2968
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2967
  br i1 %tobool31, label %for.end, label %for.body, !dbg !2967

for.body:                                         ; preds = %for.cond
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !2906, metadata !DIExpression()), !dbg !2914
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 7, !dbg !2972
  %32 = load i32, i32* %flags, align 8, !dbg !2972
  %33 = trunc i32 %32 to i8, !dbg !2973
  %tobool32 = icmp slt i8 %33, 0, !dbg !2973
  br i1 %tobool32, label %if.then33, label %for.inc, !dbg !2974

if.then33:                                        ; preds = %for.body
  store i8 1, i8* %irred_invalidated, align 1, !dbg !2975
  br label %for.inc, !dbg !2976

for.inc:                                          ; preds = %for.body, %if.then33
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !2935
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2968
  br label %for.cond, !dbg !2968, !llvm.loop !2977

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !2979
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 0, !dbg !2979
  %call36 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2979
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call36, 0, !dbg !2979
  store i32 %34, i32* %21, align 8, !dbg !2979
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call36, 1, !dbg !2979
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %22, align 8, !dbg !2979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !2979
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !2979
  br label %for.cond37, !dbg !2979

for.cond37:                                       ; preds = %cleanup, %for.end
  %qend.1 = phi %struct.basic_block_def** [ %qend.0, %for.end ], [ %qend.3, %cleanup ], !dbg !2942
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.1, metadata !2904, metadata !DIExpression()), !dbg !2914
  %36 = load i32, i32* %18, align 8, !dbg !2980
  %37 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2914
  %call38 = call fastcc zeroext i8 @ei_cond(i32 %36, %struct.VEC_edge_gc** %37, %struct.edge_def** nonnull %e) #8, !dbg !2980
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2979
  br i1 %tobool39, label %cleanup95.loopexit, label %for.body40, !dbg !2979

for.body40:                                       ; preds = %for.cond37
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2906, metadata !DIExpression()), !dbg !2914
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 0, !dbg !2982
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %39, metadata !2909, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2906, metadata !DIExpression()), !dbg !2914
  %flags41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 7, !dbg !2984
  %40 = load i32, i32* %flags41, align 8, !dbg !2984
  %41 = trunc i32 %40 to i8, !dbg !2986
  %tobool43 = icmp slt i8 %41, 0, !dbg !2986
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2987

if.then44:                                        ; preds = %for.body40
  store i8 1, i8* %irred_invalidated, align 1, !dbg !2988
  br label %if.end45, !dbg !2989

if.end45:                                         ; preds = %if.then44, %for.body40
  %index46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 9, !dbg !2990
  %42 = load i32, i32* %index46, align 8, !dbg !2990
  %div = lshr i32 %42, 6, !dbg !2990
  %idxprom = zext i32 %div to i64, !dbg !2990
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom, !dbg !2990
  %43 = load i64, i64* %arrayidx, align 8, !dbg !2990
  %rem = and i32 %42, 63, !dbg !2990
  %sh_prom = zext i32 %rem to i64, !dbg !2990
  %44 = shl i64 1, %sh_prom, !dbg !2990
  %45 = and i64 %43, %44, !dbg !2990
  %tobool49 = icmp eq i64 %45, 0, !dbg !2990
  br i1 %tobool49, label %if.end51, label %cleanup, !dbg !2992

if.end51:                                         ; preds = %if.end45
  %loop_father52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 3, !dbg !2993
  %46 = load %struct.loop*, %struct.loop** %loop_father52, align 8, !dbg !2993
  %call53 = call %struct.loop* @find_common_loop(%struct.loop* %46, %struct.loop* %1) #6, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.loop* %call53, metadata !2913, metadata !DIExpression()), !dbg !2983
  %47 = load %struct.loop*, %struct.loop** %loop_father52, align 8, !dbg !2995
  %cmp55 = icmp eq %struct.loop* %47, %1, !dbg !2997
  br i1 %cmp55, label %if.else65, label %land.lhs.true, !dbg !2998

land.lhs.true:                                    ; preds = %if.end51
  %cmp57 = icmp eq %struct.loop* %call53, %1, !dbg !2999
  br i1 %cmp57, label %if.then62, label %lor.lhs.false, !dbg !3000

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp60 = icmp eq %struct.loop* %call53, %47, !dbg !3001
  br i1 %cmp60, label %if.else65, label %if.then62, !dbg !3002

if.then62:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %header64 = getelementptr inbounds %struct.loop, %struct.loop* %47, i64 0, i32 2, !dbg !3003
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %header64, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %48, metadata !2909, metadata !DIExpression()), !dbg !2983
  br label %if.end72, !dbg !3004

if.else65:                                        ; preds = %lor.lhs.false, %if.end51
  %49 = load %struct.loop*, %struct.loop** %loop_father15, align 8, !dbg !3005
  %call68 = call zeroext i8 @flow_loop_nested_p(%struct.loop* %49, %struct.loop* %47) #6, !dbg !3007
  %tobool69 = icmp eq i8 %call68, 0, !dbg !3007
  br i1 %tobool69, label %cleanup, label %if.end72, !dbg !3008

if.end72:                                         ; preds = %if.else65, %if.then62
  %pred.0 = phi %struct.basic_block_def* [ %48, %if.then62 ], [ %39, %if.else65 ], !dbg !2983
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %pred.0, metadata !2909, metadata !DIExpression()), !dbg !2983
  %index74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %pred.0, i64 0, i32 9, !dbg !3009
  %50 = load i32, i32* %index74, align 8, !dbg !3009
  %div75 = lshr i32 %50, 6, !dbg !3009
  %idxprom76 = zext i32 %div75 to i64, !dbg !3009
  %arrayidx77 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom76, !dbg !3009
  %51 = load i64, i64* %arrayidx77, align 8, !dbg !3009
  %rem79 = and i32 %50, 63, !dbg !3009
  %sh_prom80 = zext i32 %rem79 to i64, !dbg !3009
  %52 = shl i64 1, %sh_prom80, !dbg !3009
  %53 = and i64 %51, %52, !dbg !3009
  %tobool83 = icmp eq i64 %53, 0, !dbg !3009
  br i1 %tobool83, label %if.end85, label %cleanup, !dbg !3011

if.end85:                                         ; preds = %if.end72
  store %struct.basic_block_def* %pred.0, %struct.basic_block_def** %qend.1, align 8, !dbg !3012
  %incdec.ptr86 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qend.1, i64 1, !dbg !3013
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr86, metadata !2904, metadata !DIExpression()), !dbg !2914
  %cmp87 = icmp eq %struct.basic_block_def** %qend.1, %add.ptr5, !dbg !3014
  %spec.select1 = select i1 %cmp87, %struct.basic_block_def** %11, %struct.basic_block_def** %incdec.ptr86, !dbg !3016
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select1, metadata !2904, metadata !DIExpression()), !dbg !2914
  %54 = load i32, i32* %index74, align 8, !dbg !3017
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %54) #8, !dbg !3018
  br label %cleanup, !dbg !3019

cleanup:                                          ; preds = %if.end72, %if.else65, %if.end45, %if.end85
  %qend.3 = phi %struct.basic_block_def** [ %spec.select1, %if.end85 ], [ %qend.1, %if.end45 ], [ %qend.1, %if.else65 ], [ %qend.1, %if.end72 ], !dbg !2914
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.3, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !2935
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2980
  br label %for.cond37, !dbg !2980, !llvm.loop !3020

cleanup95.loopexit:                               ; preds = %for.cond37
  %qend.1.lcssa = phi %struct.basic_block_def** [ %qend.1, %for.cond37 ], !dbg !2942
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.1.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.1.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.1.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2914
  br label %cleanup95, !dbg !2962

cleanup95:                                        ; preds = %cleanup95.loopexit, %if.then19, %if.else
  %qend.4 = phi %struct.basic_block_def** [ %qend.0, %if.then19 ], [ %qend.0, %if.else ], [ %qend.1.lcssa, %cleanup95.loopexit ], !dbg !2942
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qend.4, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2962
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3022
  call void @free(i8* %55) #6, !dbg !3023
  call void @free(i8* %call3) #6, !dbg !3024
  br label %cleanup98, !dbg !3025

cleanup98:                                        ; preds = %entry, %while.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3025
  ret void, !dbg !3025
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_loop_placements(%struct.loop* %loop, i8* %irred_invalidated) unnamed_addr #5 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %irred_invalidated, metadata !3029, metadata !DIExpression()), !dbg !3031
  br label %while.cond, !dbg !3032

while.cond:                                       ; preds = %if.end, %entry
  %loop.addr.0 = phi %struct.loop* [ %loop, %entry ], [ %call1, %if.end ]
  call void @llvm.dbg.value(metadata %struct.loop* %loop.addr.0, metadata !3028, metadata !DIExpression()), !dbg !3031
  %call = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop.addr.0) #8, !dbg !3033
  %tobool = icmp eq %struct.loop* %call, null, !dbg !3032
  br i1 %tobool, label %while.end, label %while.body, !dbg !3032

while.body:                                       ; preds = %while.cond
  %call1 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %loop.addr.0) #8, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !3030, metadata !DIExpression()), !dbg !3031
  %call2 = tail call fastcc zeroext i8 @fix_loop_placement(%struct.loop* %loop.addr.0) #8, !dbg !3036
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3036
  br i1 %tobool3, label %while.end, label %if.end, !dbg !3038

if.end:                                           ; preds = %while.body
  %call4 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop.addr.0) #6, !dbg !3039
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call4, i64 0, i32 0, !dbg !3040
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3040
  tail call fastcc void @fix_bb_placements(%struct.basic_block_def* %0, i8* %irred_invalidated) #8, !dbg !3041
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !3028, metadata !DIExpression()), !dbg !3031
  br label %while.cond, !dbg !3032, !llvm.loop !3042

while.end:                                        ; preds = %while.body, %while.cond
  ret void, !dbg !3044
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !3045 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3049, metadata !DIExpression()), !dbg !3050
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3051
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3051
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3051
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3052
  %2 = load i32, i32* %state, align 8, !dbg !3052
  %and = and i32 %2, %flags, !dbg !3053
  %cmp = icmp eq i32 %and, %flags, !dbg !3054
  %conv1 = zext i1 %cmp to i8, !dbg !3055
  ret i8 %conv1, !dbg !3056
}

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @add_loop(%struct.loop* %loop, %struct.loop* %outer) local_unnamed_addr #5 !dbg !3057 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata %struct.loop* %outer, metadata !3062, metadata !DIExpression()), !dbg !3069
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3070
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3071
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3071
  tail call fastcc void @place_new_loop(%struct.loop* %loop) #8, !dbg !3072
  tail call void @flow_loop_tree_node_add(%struct.loop* %outer, %struct.loop* %loop) #6, !dbg !3073
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3074
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3074
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3074
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !3074
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3074
  %conv = sext i32 %4 to i64, !dbg !3074
  %mul = shl nsw i64 %conv, 3, !dbg !3074
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3074
  %5 = bitcast i8* %call to %struct.basic_block_def**, !dbg !3074
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !3063, metadata !DIExpression()), !dbg !3069
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3075
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !3075
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3075
  %x_n_basic_blocks3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 3, !dbg !3075
  %8 = load i32, i32* %x_n_basic_blocks3, align 8, !dbg !3075
  %call4 = tail call i32 @get_loop_body_with_size(%struct.loop* %loop, %struct.basic_block_def** %5, i32 %8) #6, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3065, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 0, metadata !3064, metadata !DIExpression()), !dbg !3069
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3077
  %9 = sext i32 %call4 to i64, !dbg !3081
  br label %for.cond, !dbg !3081

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ 0, %entry ], !dbg !3082
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3064, metadata !DIExpression()), !dbg !3069
  %cmp = icmp slt i64 %indvars.iv1, %9, !dbg !3083
  br i1 %cmp, label %for.body, label %for.cond25.preheader, !dbg !3084

for.cond25.preheader:                             ; preds = %for.cond
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3085
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3085
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3085
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3090
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3090
  %15 = sext i32 %call4 to i64, !dbg !3092
  br label %for.cond25, !dbg !3092

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %indvars.iv1, !dbg !3093
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3093
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 3, !dbg !3095
  %17 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3095
  %cmp6 = icmp eq %struct.loop* %17, %outer, !dbg !3096
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3097

if.then:                                          ; preds = %for.body
  tail call void @remove_bb_from_loops(%struct.basic_block_def* %16) #6, !dbg !3098
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3100
  tail call void @add_bb_to_loop(%struct.basic_block_def* %18, %struct.loop* %loop) #6, !dbg !3101
  br label %for.inc, !dbg !3102

if.end:                                           ; preds = %for.body
  %19 = load i32, i32* %num_nodes, align 4, !dbg !3103
  %inc = add i32 %19, 1, !dbg !3103
  store i32 %inc, i32* %num_nodes, align 4, !dbg !3103
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3104
  %loop_father14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 3, !dbg !3105
  %21 = load %struct.loop*, %struct.loop** %loop_father14, align 8, !dbg !3105
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !3066, metadata !DIExpression()), !dbg !3069
  %call15 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %21) #8, !dbg !3106
  %cmp16 = icmp eq %struct.loop* %call15, %outer, !dbg !3108
  br i1 %cmp16, label %land.lhs.true, label %for.inc, !dbg !3109

land.lhs.true:                                    ; preds = %if.end
  %header = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 2, !dbg !3110
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3110
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3111
  %cmp20 = icmp eq %struct.basic_block_def* %22, %23, !dbg !3112
  br i1 %cmp20, label %if.then22, label %for.inc, !dbg !3113

if.then22:                                        ; preds = %land.lhs.true
  tail call void @flow_loop_tree_node_remove(%struct.loop* %21) #6, !dbg !3114
  tail call void @flow_loop_tree_node_add(%struct.loop* %loop, %struct.loop* %21) #6, !dbg !3116
  br label %for.inc, !dbg !3117

for.inc:                                          ; preds = %if.end, %land.lhs.true, %if.then22, %if.then
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3118
  call void @llvm.dbg.value(metadata i32 undef, metadata !3064, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3069
  br label %for.cond, !dbg !3119, !llvm.loop !3120

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc37
  %indvars.iv = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next, %for.inc37 ], !dbg !3122
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3064, metadata !DIExpression()), !dbg !3069
  %cmp26 = icmp slt i64 %indvars.iv, %15, !dbg !3123
  br i1 %cmp26, label %for.body28, label %for.end39, !dbg !3092

for.body28:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3124
  %arrayidx30 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %indvars.iv, !dbg !3124
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8, !dbg !3124
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 1, !dbg !3124
  %call31 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3124
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 0, !dbg !3124
  store i32 %25, i32* %11, align 8, !dbg !3124
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 1, !dbg !3124
  store %struct.VEC_edge_gc** %26, %struct.VEC_edge_gc*** %12, align 8, !dbg !3124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3124
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3124
  br label %for.cond32, !dbg !3124

for.cond32:                                       ; preds = %for.body34, %for.body28
  %27 = load i32, i32* %13, align 8, !dbg !3125
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3125
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3067, metadata !DIExpression(DW_OP_deref)), !dbg !3069
  %call33 = call fastcc zeroext i8 @ei_cond(i32 %27, %struct.VEC_edge_gc** %28, %struct.edge_def** nonnull %e) #8, !dbg !3125
  %tobool = icmp eq i8 %call33, 0, !dbg !3124
  br i1 %tobool, label %for.inc37, label %for.body34, !dbg !3124

for.body34:                                       ; preds = %for.cond32
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3126
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3067, metadata !DIExpression()), !dbg !3069
  call void @rescan_loop_exit(%struct.edge_def* %29, i8 zeroext 0, i8 zeroext 0) #6, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3068, metadata !DIExpression(DW_OP_deref)), !dbg !3069
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3125
  br label %for.cond32, !dbg !3125, !llvm.loop !3129

for.inc37:                                        ; preds = %for.cond32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3131
  call void @llvm.dbg.value(metadata i32 undef, metadata !3064, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3069
  br label %for.cond25, !dbg !3132, !llvm.loop !3133

for.end39:                                        ; preds = %for.cond25
  call void @free(i8* %call) #6, !dbg !3135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3136
  ret void, !dbg !3136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @place_new_loop(%struct.loop* %loop) unnamed_addr #5 !dbg !3137 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3141, metadata !DIExpression()), !dbg !3142
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !3143
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3144
  store i32 %call, i32* %num, align 8, !dbg !3145
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3146
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3146
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3146
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3146
  %call1 = tail call fastcc %struct.loop** @VEC_loop_p_gc_safe_push(%struct.VEC_loop_p_gc** nonnull %larray, %struct.loop* %loop) #8, !dbg !3146
  ret void, !dbg !3147
}

declare dso_local void @flow_loop_tree_node_add(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i32 @get_loop_body_with_size(%struct.loop*, %struct.basic_block_def**, i32) local_unnamed_addr #2

declare dso_local void @remove_bb_from_loops(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @add_bb_to_loop(%struct.basic_block_def*, %struct.loop*) local_unnamed_addr #2

declare dso_local void @flow_loop_tree_node_remove(%struct.loop*) local_unnamed_addr #2

declare dso_local void @rescan_loop_exit(%struct.edge_def*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @scale_loop_frequencies(%struct.loop* %loop, i32 %num, i32 %den) local_unnamed_addr #5 !dbg !3148 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3152, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %num, metadata !3153, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %den, metadata !3154, metadata !DIExpression()), !dbg !3156
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3155, metadata !DIExpression()), !dbg !3156
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3158
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3158
  tail call void @scale_bbs_frequencies_int(%struct.basic_block_def** %call, i32 %0, i32 %num, i32 %den) #6, !dbg !3159
  %1 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3160
  tail call void @free(i8* %1) #6, !dbg !3161
  ret void, !dbg !3162
}

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #2

declare dso_local void @scale_bbs_frequencies_int(%struct.basic_block_def**, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @create_empty_if_region_on_edge(%struct.edge_def* %entry_edge, %union.tree_node* %condition) local_unnamed_addr #5 !dbg !3163 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %entry_edge, metadata !3167, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata %union.tree_node* %condition, metadata !3168, metadata !DIExpression()), !dbg !3185
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3186
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3186
  %call = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %entry_edge) #6, !dbg !3187
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3169, metadata !DIExpression()), !dbg !3185
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3188
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call) #8, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  %call1 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %condition, i8 zeroext 1, %union.tree_node* null, i8 zeroext 0, i32 0) #6, !dbg !3189
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3177, metadata !DIExpression()), !dbg !3185
  %call2 = call %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node* %call1, %union.tree_node* null, %union.tree_node* null) #6, !dbg !3190
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !3176, metadata !DIExpression()), !dbg !3185
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp3 to i8*, !dbg !3191
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3191
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp3, %struct.basic_block_def* %call) #8, !dbg !3191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call2, i32 0) #6, !dbg !3192
  %call4 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !3193
  %call5 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call4) #6, !dbg !3194
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !3172, metadata !DIExpression()), !dbg !3185
  %call6 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.edge_def* %call6, metadata !3173, metadata !DIExpression()), !dbg !3185
  %call7 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call6) #6, !dbg !3196
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call7, metadata !3170, metadata !DIExpression()), !dbg !3185
  %call8 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call, %struct.basic_block_def* %call5, i32 0) #6, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.edge_def* %call8, metadata !3174, metadata !DIExpression()), !dbg !3185
  %call9 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call8) #6, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call9, metadata !3171, metadata !DIExpression()), !dbg !3185
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call6, i64 0, i32 7, !dbg !3199
  %3 = load i32, i32* %flags, align 8, !dbg !3200
  %and = and i32 %3, -1026, !dbg !3200
  %or = or i32 %and, 1024, !dbg !3201
  store i32 %or, i32* %flags, align 8, !dbg !3201
  %flags11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call8, i64 0, i32 7, !dbg !3202
  %4 = load i32, i32* %flags11, align 8, !dbg !3203
  %and12 = and i32 %4, -2050, !dbg !3203
  %or14 = or i32 %and12, 2048, !dbg !3204
  store i32 %or14, i32* %flags11, align 8, !dbg !3204
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %entry_edge, i64 0, i32 0, !dbg !3205
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3205
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call, %struct.basic_block_def* %5) #6, !dbg !3206
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call7, %struct.basic_block_def* %call) #6, !dbg !3207
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call9, %struct.basic_block_def* %call) #6, !dbg !3208
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call5, %struct.basic_block_def* %call) #6, !dbg !3209
  %call15 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call5) #8, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !3175, metadata !DIExpression()), !dbg !3185
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 1, !dbg !3211
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3211
  %call16 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %6) #8, !dbg !3213
  %tobool = icmp eq i8 %call16, 0, !dbg !3213
  br i1 %tobool, label %if.end, label %if.then, !dbg !3214

if.then:                                          ; preds = %entry
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3215
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %7, %struct.basic_block_def* %call5) #6, !dbg !3216
  br label %if.end, !dbg !3216

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3217
  ret %struct.edge_def* %call15, !dbg !3218
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3219 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3224, metadata !DIExpression()), !dbg !3227
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3228
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3225, metadata !DIExpression()), !dbg !3226
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !3229
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3230
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3231
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3232
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3233
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3234
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3235
  ret void, !dbg !3236
}

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3237 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3239, metadata !DIExpression()), !dbg !3240
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !3241
  %tobool = icmp eq i8 %call, 0, !dbg !3241
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3241

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3241
  br label %cond.end, !dbg !3241

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3242
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3242
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3242
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3242

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3242
  br label %cond.end5, !dbg !3242

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3242
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !3242
  ret %struct.edge_def* %call7, !dbg !3243
}

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @create_empty_loop_on_edge(%struct.edge_def* %entry_edge, %union.tree_node* %initial_value, %union.tree_node* %stride, %union.tree_node* %upper_bound, %union.tree_node* %iv, %union.tree_node** %iv_before, %union.tree_node** %iv_after, %struct.loop* %outer) local_unnamed_addr #5 !dbg !3244 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %stmts = alloca %struct.gimple_seq_d*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp29 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %entry_edge, metadata !3248, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %initial_value, metadata !3249, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %stride, metadata !3250, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %upper_bound, metadata !3251, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %iv, metadata !3252, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node** %iv_before, metadata !3253, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node** %iv_after, metadata !3254, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %struct.loop* %outer, metadata !3255, metadata !DIExpression()), !dbg !3267
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3268
  %1 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !3269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3269
  %tobool = icmp ne %struct.edge_def* %entry_edge, null, !dbg !3270
  %tobool1 = icmp ne %union.tree_node* %initial_value, null, !dbg !3270
  %or.cond = and i1 %tobool, %tobool1, !dbg !3270
  %tobool3 = icmp ne %union.tree_node* %stride, null, !dbg !3270
  %or.cond1 = and i1 %or.cond, %tobool3, !dbg !3270
  %tobool5 = icmp ne %union.tree_node* %upper_bound, null, !dbg !3270
  %or.cond2 = and i1 %or.cond1, %tobool5, !dbg !3270
  %tobool7 = icmp ne %union.tree_node* %iv, null, !dbg !3270
  %or.cond3 = and i1 %or.cond2, %tobool7, !dbg !3270
  br i1 %or.cond3, label %cond.end, label %cond.true, !dbg !3270

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 630, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3270
  br label %cond.end, !dbg !3270

cond.end:                                         ; preds = %entry, %cond.true
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %entry_edge, i64 0, i32 0, !dbg !3271
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !3259, metadata !DIExpression()), !dbg !3267
  %call = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %entry_edge) #6, !dbg !3272
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3256, metadata !DIExpression()), !dbg !3267
  %call8 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !3273
  %call9 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %call8) #6, !dbg !3274
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call9, metadata !3257, metadata !DIExpression()), !dbg !3267
  %call10 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call9) #8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call10, metadata !3258, metadata !DIExpression()), !dbg !3267
  %call11 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call, %struct.basic_block_def* %call10, i32 0) #6, !dbg !3276
  %call12 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call9) #8, !dbg !3277
  %call13 = tail call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %call12, %struct.basic_block_def* %call) #6, !dbg !3278
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call, %struct.basic_block_def* %2) #6, !dbg !3279
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call9, %struct.basic_block_def* %call) #6, !dbg !3280
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call10, %struct.basic_block_def* %call) #6, !dbg !3281
  %call14 = tail call %struct.loop* @alloc_loop() #6, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.loop* %call14, metadata !3260, metadata !DIExpression()), !dbg !3267
  %header = getelementptr inbounds %struct.loop, %struct.loop* %call14, i64 0, i32 2, !dbg !3283
  store %struct.basic_block_def* %call, %struct.basic_block_def** %header, align 8, !dbg !3284
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %call14, i64 0, i32 3, !dbg !3285
  store %struct.basic_block_def* %call9, %struct.basic_block_def** %latch, align 8, !dbg !3286
  tail call void @add_loop(%struct.loop* %call14, %struct.loop* %outer) #8, !dbg !3287
  call void @llvm.dbg.value(metadata i32 5000, metadata !3266, metadata !DIExpression()), !dbg !3267
  tail call void @scale_loop_frequencies(%struct.loop* %call14, i32 5000, i32 10000) #8, !dbg !3288
  tail call fastcc void @update_dominators_in_loop(%struct.loop* %call14) #8, !dbg !3289
  %call15 = tail call %struct.edge_def* @single_exit(%struct.loop* %call14) #6, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !3265, metadata !DIExpression()), !dbg !3267
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 7, !dbg !3291
  store i32 2560, i32* %flags, align 8, !dbg !3292
  %call16 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call9) #8, !dbg !3293
  %flags17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !3294
  store i32 1024, i32* %flags17, align 8, !dbg !3295
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3262, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  %call18 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %initial_value, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* %iv) #6, !dbg !3296
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !3249, metadata !DIExpression()), !dbg !3267
  %3 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %3, metadata !3262, metadata !DIExpression()), !dbg !3267
  %tobool19 = icmp eq %struct.gimple_seq_d* %3, null, !dbg !3297
  br i1 %tobool19, label %if.end, label %if.then, !dbg !3299

if.then:                                          ; preds = %cond.end
  %call20 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call14) #6, !dbg !3300
  %4 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %4, metadata !3262, metadata !DIExpression()), !dbg !3267
  call void @gsi_insert_seq_on_edge(%struct.edge_def* %call20, %struct.gimple_seq_d* %4) #6, !dbg !3303
  call void @gsi_commit_edge_inserts() #6, !dbg !3304
  br label %if.end, !dbg !3305

if.end:                                           ; preds = %cond.end, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3262, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  %call21 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %upper_bound, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !3306
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3251, metadata !DIExpression()), !dbg !3267
  %5 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %5, metadata !3262, metadata !DIExpression()), !dbg !3267
  %tobool22 = icmp eq %struct.gimple_seq_d* %5, null, !dbg !3307
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !3309

if.then23:                                        ; preds = %if.end
  %call24 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call14) #6, !dbg !3310
  %6 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3312
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %6, metadata !3262, metadata !DIExpression()), !dbg !3267
  call void @gsi_insert_seq_on_edge(%struct.edge_def* %call24, %struct.gimple_seq_d* %6) #6, !dbg !3313
  call void @gsi_commit_edge_inserts() #6, !dbg !3314
  br label %if.end25, !dbg !3315

if.end25:                                         ; preds = %if.end, %if.then23
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3316
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call) #8, !dbg !3316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !3316
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  call void @create_iv(%union.tree_node* %call18, %union.tree_node* %stride, %union.tree_node* %iv, %struct.loop* %call14, %struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 0, %union.tree_node** %iv_before, %union.tree_node** %iv_after) #6, !dbg !3317
  %8 = load %union.tree_node*, %union.tree_node** %iv_before, align 8, !dbg !3318
  %call26 = call %union.gimple_statement_d* @gimple_build_cond(i32 97, %union.tree_node* %8, %union.tree_node* %call21, %union.tree_node* null, %union.tree_node* null) #6, !dbg !3319
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call26, metadata !3263, metadata !DIExpression()), !dbg !3267
  %call27 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call26) #8, !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  %call28 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call27, i8 zeroext 1, %union.tree_node* null, i8 zeroext 0, i32 0) #6, !dbg !3321
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3264, metadata !DIExpression()), !dbg !3267
  call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call26, %union.tree_node* %call28) #8, !dbg !3322
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp29 to i8*, !dbg !3323
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !3323
  %src30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 0, !dbg !3324
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src30, align 8, !dbg !3324
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp29, %struct.basic_block_def* %10) #8, !dbg !3323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !3323
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !3323
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3261, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call26, i32 0) #6, !dbg !3325
  %call31 = call %struct.edge_def* @split_block_after_labels(%struct.basic_block_def* %call) #6, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3327
  ret %struct.loop* %call14, !dbg !3328
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3329 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3333, metadata !DIExpression()), !dbg !3334
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !3335
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3336
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3336
  ret %struct.basic_block_def* %0, !dbg !3337
}

declare dso_local %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.loop* @alloc_loop() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_dominators_in_loop(%struct.loop* %loop) unnamed_addr #5 !dbg !3338 {
entry:
  %dom_bbs = alloca %struct.VEC_basic_block_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3340, metadata !DIExpression()), !dbg !3349
  %0 = bitcast %struct.VEC_basic_block_heap** %dom_bbs to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !3341, metadata !DIExpression()), !dbg !3349
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !3351
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3352
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3352
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3352
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !3352
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !3352
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3) #6, !dbg !3353
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3342, metadata !DIExpression()), !dbg !3349
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3354
  %call1 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3355
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call1, metadata !3343, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3349
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3356
  br label %for.cond, !dbg !3359

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry ], !dbg !3360
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3344, metadata !DIExpression()), !dbg !3349
  %4 = load i32, i32* %num_nodes, align 4, !dbg !3361
  %5 = zext i32 %4 to i64, !dbg !3362
  %cmp = icmp ult i64 %indvars.iv1, %5, !dbg !3362
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !dbg !3363

for.cond2.preheader:                              ; preds = %for.cond
  %.lcssa = phi i32 [ %4, %for.cond ], !dbg !3361
  br label %for.cond2, !dbg !3364

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv1, !dbg !3365
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3365
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !3366
  %7 = load i32, i32* %index, align 8, !dbg !3366
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %7) #8, !dbg !3367
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3368
  br label %for.cond, !dbg !3369, !llvm.loop !3370

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc21
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc21 ], !dbg !3372
  %8 = phi i32 [ %.lcssa, %for.cond2.preheader ], [ %.pre, %for.inc21 ], !dbg !3372
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3344, metadata !DIExpression()), !dbg !3349
  %9 = zext i32 %8 to i64, !dbg !3373
  %cmp4 = icmp ult i64 %indvars.iv, %9, !dbg !3373
  br i1 %cmp4, label %for.body5, label %for.end23, !dbg !3364

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv, !dbg !3374
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8, !dbg !3374
  %call8 = call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %10) #6, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !3345, metadata !DIExpression()), !dbg !3377
  br label %for.cond9, !dbg !3378

for.cond9:                                        ; preds = %for.inc18, %for.body5
  %ldom.0 = phi %struct.basic_block_def* [ %call8, %for.body5 ], [ %call19, %for.inc18 ], !dbg !3379
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %ldom.0, metadata !3345, metadata !DIExpression()), !dbg !3377
  %tobool = icmp eq %struct.basic_block_def* %ldom.0, null, !dbg !3380
  br i1 %tobool, label %for.inc21, label %for.body10, !dbg !3380

for.body10:                                       ; preds = %for.cond9
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %ldom.0, i64 0, i32 9, !dbg !3381
  %11 = load i32, i32* %index11, align 8, !dbg !3381
  %div = lshr i32 %11, 6, !dbg !3381
  %idxprom12 = zext i32 %div to i64, !dbg !3381
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom12, !dbg !3381
  %12 = load i64, i64* %arrayidx13, align 8, !dbg !3381
  %rem = and i32 %11, 63, !dbg !3381
  %sh_prom = zext i32 %rem to i64, !dbg !3381
  %13 = shl i64 1, %sh_prom, !dbg !3381
  %14 = and i64 %12, %13, !dbg !3381
  %tobool15 = icmp eq i64 %14, 0, !dbg !3381
  br i1 %tobool15, label %if.then, label %for.inc18, !dbg !3384

if.then:                                          ; preds = %for.body10
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %11) #8, !dbg !3385
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !3341, metadata !DIExpression(DW_OP_deref)), !dbg !3349
  %call17 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %dom_bbs, %struct.basic_block_def* nonnull %ldom.0) #8, !dbg !3387
  br label %for.inc18, !dbg !3388

for.inc18:                                        ; preds = %for.body10, %if.then
  %call19 = call %struct.basic_block_def* @next_dom_son(i32 1, %struct.basic_block_def* nonnull %ldom.0) #6, !dbg !3389
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call19, metadata !3345, metadata !DIExpression()), !dbg !3377
  br label %for.cond9, !dbg !3390, !llvm.loop !3391

for.inc21:                                        ; preds = %for.cond9
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !3372
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3393
  br label %for.cond2, !dbg !3394, !llvm.loop !3395

for.end23:                                        ; preds = %for.cond2
  %15 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %15, metadata !3341, metadata !DIExpression()), !dbg !3349
  call void @iterate_fix_dominators(i32 1, %struct.VEC_basic_block_heap* %15, i8 zeroext 0) #6, !dbg !3398
  %16 = bitcast %struct.basic_block_def** %call1 to i8*, !dbg !3399
  call void @free(i8* %16) #6, !dbg !3400
  %17 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3401
  call void @free(i8* %17) #6, !dbg !3402
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !3341, metadata !DIExpression(DW_OP_deref)), !dbg !3349
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %dom_bbs) #8, !dbg !3403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3404
  ret void, !dbg !3404
}

declare dso_local %struct.edge_def* @single_exit(%struct.loop*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand(%union.tree_node*, %struct.gimple_seq_d**, i8 zeroext, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_seq_on_edge(%struct.edge_def*, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

declare dso_local void @create_iv(%union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.loop*, %struct.gimple_stmt_iterator*, i8 zeroext, %union.tree_node**, %union.tree_node**) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3405 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3410, metadata !DIExpression()), !dbg !3411
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3412
  ret %union.tree_node* %call, !dbg !3413
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3414 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3419, metadata !DIExpression()), !dbg !3420
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !3421
  ret void, !dbg !3422
}

declare dso_local %struct.edge_def* @split_block_after_labels(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @loopify(%struct.edge_def* %latch_edge, %struct.edge_def* %header_edge, %struct.basic_block_def* %switch_bb, %struct.edge_def* %true_edge, %struct.edge_def* %false_edge, i8 zeroext %redirect_all_edges, i32 %true_scale, i32 %false_scale) local_unnamed_addr #5 !dbg !3423 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch_edge, metadata !3427, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata %struct.edge_def* %header_edge, metadata !3428, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %switch_bb, metadata !3429, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata %struct.edge_def* %true_edge, metadata !3430, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata %struct.edge_def* %false_edge, metadata !3431, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8 %redirect_all_edges, metadata !3432, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %true_scale, metadata !3433, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %false_scale, metadata !3434, metadata !DIExpression()), !dbg !3443
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %latch_edge, i64 0, i32 1, !dbg !3444
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3444
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3435, metadata !DIExpression()), !dbg !3443
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %header_edge, i64 0, i32 0, !dbg !3445
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3436, metadata !DIExpression()), !dbg !3443
  %call = tail call %struct.loop* @alloc_loop() #6, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !3437, metadata !DIExpression()), !dbg !3443
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 3, !dbg !3447
  %2 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3447
  %call1 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %2) #8, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !3438, metadata !DIExpression()), !dbg !3443
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3449
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3450
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3450
  %dest2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %header_edge, i64 0, i32 1, !dbg !3451
  %5 = bitcast %struct.basic_block_def** %dest2 to i64*, !dbg !3451
  %6 = load i64, i64* %5, align 8, !dbg !3451
  %header = getelementptr inbounds %struct.loop, %struct.loop* %call, i64 0, i32 2, !dbg !3452
  %7 = bitcast %struct.basic_block_def** %header to i64*, !dbg !3453
  store i64 %6, i64* %7, align 8, !dbg !3453
  %8 = bitcast %struct.edge_def* %latch_edge to i64*, !dbg !3454
  %9 = load i64, i64* %8, align 8, !dbg !3454
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %call, i64 0, i32 3, !dbg !3455
  %10 = bitcast %struct.basic_block_def** %latch to i64*, !dbg !3456
  store i64 %9, i64* %10, align 8, !dbg !3456
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3457
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 11, !dbg !3457
  %12 = load i32, i32* %frequency, align 8, !dbg !3457
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %header_edge, i64 0, i32 8, !dbg !3457
  %13 = load i32, i32* %probability, align 4, !dbg !3457
  %mul = mul nsw i32 %12, %13, !dbg !3457
  %add = add nsw i32 %mul, 5000, !dbg !3457
  %div = sdiv i32 %add, 10000, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %div, metadata !3439, metadata !DIExpression()), !dbg !3443
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %header_edge, i64 0, i32 9, !dbg !3458
  %14 = load i64, i64* %count, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %14, metadata !3440, metadata !DIExpression()), !dbg !3443
  %15 = inttoptr i64 %6 to %struct.basic_block_def*, !dbg !3459
  tail call fastcc void @loop_redirect_edge(%struct.edge_def* %latch_edge, %struct.basic_block_def* %15) #8, !dbg !3460
  tail call fastcc void @loop_redirect_edge(%struct.edge_def* %true_edge, %struct.basic_block_def* %0) #8, !dbg !3461
  %tobool = icmp eq i8 %redirect_all_edges, 0, !dbg !3462
  br i1 %tobool, label %if.end, label %if.then, !dbg !3464

if.then:                                          ; preds = %entry
  tail call fastcc void @loop_redirect_edge(%struct.edge_def* %header_edge, %struct.basic_block_def* %switch_bb) #8, !dbg !3465
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3467
  tail call fastcc void @loop_redirect_edge(%struct.edge_def* %false_edge, %struct.basic_block_def* %16) #8, !dbg !3468
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %switch_bb, %struct.basic_block_def* %1) #6, !dbg !3469
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3470
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %17, %struct.basic_block_def* %switch_bb) #6, !dbg !3471
  br label %if.end, !dbg !3472

if.end:                                           ; preds = %entry, %if.then
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %0, %struct.basic_block_def* %switch_bb) #6, !dbg !3473
  tail call void @add_loop(%struct.loop* %call, %struct.loop* %call1) #8, !dbg !3474
  %loop_father8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %switch_bb, i64 0, i32 3, !dbg !3475
  %18 = load %struct.loop*, %struct.loop** %loop_father8, align 8, !dbg !3475
  %tobool9 = icmp eq %struct.loop* %18, null, !dbg !3477
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3478

if.then10:                                        ; preds = %if.end
  tail call void @remove_bb_from_loops(%struct.basic_block_def* %switch_bb) #6, !dbg !3479
  br label %if.end11, !dbg !3479

if.end11:                                         ; preds = %if.end, %if.then10
  tail call void @add_bb_to_loop(%struct.basic_block_def* %switch_bb, %struct.loop* %call1) #6, !dbg !3480
  br i1 %tobool, label %if.end24, label %if.then13, !dbg !3481

if.then13:                                        ; preds = %if.end11
  %frequency14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %switch_bb, i64 0, i32 11, !dbg !3482
  store i32 %div, i32* %frequency14, align 8, !dbg !3485
  %count15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %switch_bb, i64 0, i32 8, !dbg !3486
  store i64 %14, i64* %count15, align 8, !dbg !3487
  %19 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3488
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #7, !dbg !3488
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %switch_bb, i64 0, i32 1, !dbg !3488
  %call16 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3488
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3488
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 0, !dbg !3488
  store i32 %21, i32* %20, align 8, !dbg !3488
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3488
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 1, !dbg !3488
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %22, align 8, !dbg !3488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #7, !dbg !3488
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3490
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3490
  br label %for.cond, !dbg !3488

for.cond:                                         ; preds = %for.body, %if.then13
  %26 = load i32, i32* %24, align 8, !dbg !3492
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !3492
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3441, metadata !DIExpression(DW_OP_deref)), !dbg !3443
  %call17 = call fastcc zeroext i8 @ei_cond(i32 %26, %struct.VEC_edge_gc** %27, %struct.edge_def** nonnull %e) #8, !dbg !3492
  %tobool18 = icmp eq i8 %call17, 0, !dbg !3488
  br i1 %tobool18, label %if.end24.loopexit, label %for.body, !dbg !3488

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %count15, align 8, !dbg !3493
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3441, metadata !DIExpression()), !dbg !3443
  %probability20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 8, !dbg !3496
  %30 = load i32, i32* %probability20, align 4, !dbg !3496
  %conv = sext i32 %30 to i64, !dbg !3495
  %mul21 = mul nsw i64 %28, %conv, !dbg !3497
  %div22 = sdiv i64 %mul21, 10000, !dbg !3498
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3441, metadata !DIExpression()), !dbg !3443
  %count23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 9, !dbg !3499
  store i64 %div22, i64* %count23, align 8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3442, metadata !DIExpression(DW_OP_deref)), !dbg !3443
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3492
  br label %for.cond, !dbg !3492, !llvm.loop !3501

if.end24.loopexit:                                ; preds = %for.cond
  br label %if.end24, !dbg !3503

if.end24:                                         ; preds = %if.end24.loopexit, %if.end11
  call void @scale_loop_frequencies(%struct.loop* %call, i32 %false_scale, i32 10000) #8, !dbg !3503
  %31 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3504
  call void @scale_loop_frequencies(%struct.loop* %31, i32 %true_scale, i32 10000) #8, !dbg !3505
  call fastcc void @update_dominators_in_loop(%struct.loop* %call) #8, !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3507
  ret %struct.loop* %call, !dbg !3508
}

; Function Attrs: nounwind uwtable
define internal fastcc void @loop_redirect_edge(%struct.edge_def* %e, %struct.basic_block_def* %dest) unnamed_addr #5 !dbg !3509 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !3514, metadata !DIExpression()), !dbg !3515
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3516
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !3516
  %cmp = icmp eq %struct.basic_block_def* %0, %dest, !dbg !3518
  br i1 %cmp, label %return, label %if.end, !dbg !3519

if.end:                                           ; preds = %entry
  %call = tail call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %e, %struct.basic_block_def* %dest) #6, !dbg !3520
  br label %return, !dbg !3521

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3521
}

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @duplicate_loop(%struct.loop* %loop, %struct.loop* %target) local_unnamed_addr #5 !dbg !3522 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3526, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata %struct.loop* %target, metadata !3527, metadata !DIExpression()), !dbg !3529
  %call = tail call %struct.loop* @alloc_loop() #6, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !3528, metadata !DIExpression()), !dbg !3529
  tail call fastcc void @place_new_loop(%struct.loop* %call) #8, !dbg !3531
  tail call void @set_loop_copy(%struct.loop* %loop, %struct.loop* %call) #6, !dbg !3532
  tail call void @flow_loop_tree_node_add(%struct.loop* %target, %struct.loop* %call) #6, !dbg !3533
  ret %struct.loop* %call, !dbg !3534
}

declare dso_local void @set_loop_copy(%struct.loop*, %struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @duplicate_subloops(%struct.loop* %loop, %struct.loop* %target) local_unnamed_addr #5 !dbg !3535 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3537, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct.loop* %target, metadata !3538, metadata !DIExpression()), !dbg !3541
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !3542
  br label %for.cond, !dbg !3544

for.cond:                                         ; preds = %for.body, %entry
  %aloop.0.in = phi %struct.loop** [ %inner, %entry ], [ %next, %for.body ]
  %aloop.0 = load %struct.loop*, %struct.loop** %aloop.0.in, align 8, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.loop* %aloop.0, metadata !3539, metadata !DIExpression()), !dbg !3541
  %tobool = icmp eq %struct.loop* %aloop.0, null, !dbg !3546
  br i1 %tobool, label %for.end, label %for.body, !dbg !3546

for.body:                                         ; preds = %for.cond
  %call = tail call %struct.loop* @duplicate_loop(%struct.loop* nonnull %aloop.0, %struct.loop* %target) #8, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !3540, metadata !DIExpression()), !dbg !3541
  tail call void @duplicate_subloops(%struct.loop* nonnull %aloop.0, %struct.loop* %call) #8, !dbg !3550
  %next = getelementptr inbounds %struct.loop, %struct.loop* %aloop.0, i64 0, i32 9, !dbg !3551
  br label %for.cond, !dbg !3552, !llvm.loop !3553

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3555
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_duplicate_loop_p(%struct.loop* %loop) local_unnamed_addr #5 !dbg !3556 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3560, metadata !DIExpression()), !dbg !3563
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3562, metadata !DIExpression()), !dbg !3563
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3565
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3565
  %call1 = tail call zeroext i8 @can_copy_bbs_p(%struct.basic_block_def** %call, i32 %0) #6, !dbg !3566
  call void @llvm.dbg.value(metadata i8 %call1, metadata !3561, metadata !DIExpression()), !dbg !3563
  %1 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3567
  tail call void @free(i8* %1) #6, !dbg !3568
  ret i8 %call1, !dbg !3569
}

declare dso_local zeroext i8 @can_copy_bbs_p(%struct.basic_block_def**, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %e, i32 %ndupl, %struct.simple_bitmap_def* %wont_exit, %struct.edge_def* %orig, %struct.VEC_edge_heap** %to_remove, i32 %flags) local_unnamed_addr #5 !dbg !3570 {
entry:
  %ae = alloca %struct.edge_def*, align 8
  %spec_edges = alloca [2 x %struct.edge_def*], align 16
  %new_spec_edges = alloca [2 x %struct.edge_def*], align 16
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %dominated = alloca %struct.basic_block_def*, align 8
  %dom_bbs = alloca %struct.VEC_basic_block_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3575, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %ndupl, metadata !3577, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %wont_exit, metadata !3578, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %orig, metadata !3579, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !3580, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3581, metadata !DIExpression()), !dbg !3646
  %header1 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3647
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !3647
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3586, metadata !DIExpression()), !dbg !3646
  %latch2 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3648
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %latch2, align 8, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3587, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3593, metadata !DIExpression()), !dbg !3646
  %2 = bitcast %struct.edge_def** %ae to i8*, !dbg !3649
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3649
  %3 = bitcast [2 x %struct.edge_def*]* %spec_edges to i8*, !dbg !3650
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3650
  call void @llvm.dbg.declare(metadata [2 x %struct.edge_def*]* %spec_edges, metadata !3596, metadata !DIExpression()), !dbg !3651
  %4 = bitcast [2 x %struct.edge_def*]* %new_spec_edges to i8*, !dbg !3650
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3650
  call void @llvm.dbg.declare(metadata [2 x %struct.edge_def*]* %new_spec_edges, metadata !3598, metadata !DIExpression()), !dbg !3652
  %5 = bitcast i32* %i to i8*, !dbg !3653
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !3653
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3654
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3654
  %cmp = icmp eq %struct.basic_block_def* %1, %6, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !3602, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32* null, metadata !3604, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3616, metadata !DIExpression()), !dbg !3646
  %7 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #7, !dbg !3656
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3657
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3657
  %cmp4 = icmp eq %struct.basic_block_def* %8, %0, !dbg !3657
  br i1 %cmp4, label %cond.end, label %cond.true, !dbg !3657

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 998, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3657
  br label %cond.end, !dbg !3657

cond.end:                                         ; preds = %entry, %cond.true
  %cmp6 = icmp eq i32 %ndupl, 0, !dbg !3658
  br i1 %cmp6, label %cond.true8, label %cond.end10, !dbg !3658

cond.true8:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 999, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3658
  br label %cond.end10, !dbg !3658

cond.end10:                                       ; preds = %cond.end, %cond.true8
  %tobool = icmp eq %struct.edge_def* %orig, null, !dbg !3659
  br i1 %tobool, label %if.end, label %if.then, !dbg !3661

if.then:                                          ; preds = %cond.end10
  %src12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 0, !dbg !3662
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !3662
  %call = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %9) #6, !dbg !3662
  %tobool13 = icmp eq i8 %call, 0, !dbg !3662
  br i1 %tobool13, label %cond.true14, label %cond.end16, !dbg !3662

cond.true14:                                      ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1004, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3662
  br label %cond.end16, !dbg !3662

cond.end16:                                       ; preds = %if.then, %cond.true14
  %dest18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 1, !dbg !3664
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest18, align 8, !dbg !3664
  %call19 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %10) #6, !dbg !3664
  %tobool20 = icmp eq i8 %call19, 0, !dbg !3664
  br i1 %tobool20, label %if.end, label %cond.true21, !dbg !3664

cond.true21:                                      ; preds = %cond.end16
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1005, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3664
  br label %if.end, !dbg !3664

if.end:                                           ; preds = %cond.end16, %cond.end10, %cond.true21
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3665
  %11 = load i32, i32* %num_nodes, align 4, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %11, metadata !3601, metadata !DIExpression()), !dbg !3646
  %call25 = tail call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %loop) #6, !dbg !3666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call25, metadata !3589, metadata !DIExpression()), !dbg !3646
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %call25, align 8, !dbg !3667
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !3667
  %cmp27 = icmp eq %struct.basic_block_def* %12, %13, !dbg !3667
  br i1 %cmp27, label %cond.end31, label %cond.true29, !dbg !3667

cond.true29:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1010, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3667
  br label %cond.end31, !dbg !3667

cond.end31:                                       ; preds = %if.end, %cond.true29
  %sub = add i32 %11, -1, !dbg !3668
  %idxprom = zext i32 %sub to i64, !dbg !3668
  %arrayidx33 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call25, i64 %idxprom, !dbg !3668
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx33, align 8, !dbg !3668
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %latch2, align 8, !dbg !3668
  %cmp35 = icmp eq %struct.basic_block_def* %14, %15, !dbg !3668
  br i1 %cmp35, label %cond.end39, label %cond.true37, !dbg !3668

cond.true37:                                      ; preds = %cond.end31
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1011, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3668
  br label %cond.end39, !dbg !3668

cond.end39:                                       ; preds = %cond.end31, %cond.true37
  %16 = load i32, i32* %num_nodes, align 4, !dbg !3669
  %call42 = tail call zeroext i8 @can_copy_bbs_p(%struct.basic_block_def** %call25, i32 %16) #6, !dbg !3671
  %tobool43 = icmp eq i8 %call42, 0, !dbg !3671
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3672

if.then44:                                        ; preds = %cond.end39
  %17 = bitcast %struct.basic_block_def** %call25 to i8*, !dbg !3673
  tail call void @free(i8* %17) #6, !dbg !3675
  br label %cleanup, !dbg !3676

if.end45:                                         ; preds = %cond.end39
  %18 = load i32, i32* %num_nodes, align 4, !dbg !3677
  %conv47 = zext i32 %18 to i64, !dbg !3677
  %mul = shl nuw nsw i64 %conv47, 3, !dbg !3677
  %call48 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3677
  %19 = bitcast i8* %call48 to %struct.basic_block_def**, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %19, metadata !3588, metadata !DIExpression()), !dbg !3646
  %flags49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3678
  %20 = load i32, i32* %flags49, align 8, !dbg !3678
  %and = and i32 %20, 128, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %and, metadata !3614, metadata !DIExpression()), !dbg !3646
  %tobool51 = icmp ne i32 %and, 0, !dbg !3680
  %or.cond = and i1 %cmp, %tobool51, !dbg !3680
  br i1 %or.cond, label %cond.true52, label %cond.end54, !dbg !3680

cond.true52:                                      ; preds = %if.end45
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3680
  br label %cond.end54, !dbg !3680

cond.end54:                                       ; preds = %if.end45, %cond.true52
  %call56 = tail call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !3681
  call void @llvm.dbg.value(metadata %struct.edge_def* %call56, metadata !3595, metadata !DIExpression()), !dbg !3646
  %and57 = and i32 %flags, 1, !dbg !3682
  %tobool58 = icmp eq i32 %and57, 0, !dbg !3682
  br i1 %tobool58, label %if.end271, label %if.then59, !dbg !3683

if.then59:                                        ; preds = %cond.end54
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 11, !dbg !3684
  %21 = load i32, i32* %frequency, align 8, !dbg !3684
  call void @llvm.dbg.value(metadata i32 %21, metadata !3608, metadata !DIExpression()), !dbg !3646
  %src60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call56, i64 0, i32 0, !dbg !3685
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src60, align 8, !dbg !3685
  %frequency61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 11, !dbg !3685
  %23 = load i32, i32* %frequency61, align 8, !dbg !3685
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call56, i64 0, i32 8, !dbg !3685
  %24 = load i32, i32* %probability, align 4, !dbg !3685
  %mul62 = mul nsw i32 %23, %24, !dbg !3685
  %add = add nsw i32 %mul62, 5000, !dbg !3685
  %div = sdiv i32 %add, 10000, !dbg !3685
  call void @llvm.dbg.value(metadata i32 %div, metadata !3609, metadata !DIExpression()), !dbg !3646
  %cmp63 = icmp eq i32 %21, 0, !dbg !3686
  %spec.select = select i1 %cmp63, i32 1, i32 %21, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3608, metadata !DIExpression()), !dbg !3646
  %cmp67 = icmp slt i32 %spec.select, %div, !dbg !3689
  %freq_in.1 = select i1 %cmp67, i32 %div, i32 %spec.select, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %freq_in.1, metadata !3608, metadata !DIExpression()), !dbg !3646
  br i1 %tobool, label %cond.false79, label %cond.true72, !dbg !3692

cond.true72:                                      ; preds = %if.then59
  %src73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 0, !dbg !3693
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src73, align 8, !dbg !3693
  %frequency74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 11, !dbg !3693
  %26 = load i32, i32* %frequency74, align 8, !dbg !3693
  %probability75 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 8, !dbg !3693
  %27 = load i32, i32* %probability75, align 4, !dbg !3693
  %mul76 = mul nsw i32 %26, %27, !dbg !3693
  %add77 = add nsw i32 %mul76, 5000, !dbg !3693
  %div78 = sdiv i32 %add77, 10000, !dbg !3693
  %.pre22 = sub nsw i32 %freq_in.1, %div, !dbg !3694
  br label %cond.end81, !dbg !3692

cond.false79:                                     ; preds = %if.then59
  %sub80 = sub nsw i32 %freq_in.1, %div, !dbg !3696
  br label %cond.end81, !dbg !3692

cond.end81:                                       ; preds = %cond.false79, %cond.true72
  %sub83.pre-phi = phi i32 [ %sub80, %cond.false79 ], [ %.pre22, %cond.true72 ], !dbg !3694
  %cond82 = phi i32 [ %sub80, %cond.false79 ], [ %div78, %cond.true72 ], !dbg !3692
  call void @llvm.dbg.value(metadata i32 %cond82, metadata !3610, metadata !DIExpression()), !dbg !3646
  %cmp84 = icmp sgt i32 %cond82, %sub83.pre-phi, !dbg !3697
  %spec.select1 = select i1 %cmp84, i32 %sub83.pre-phi, i32 %cond82, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !3610, metadata !DIExpression()), !dbg !3646
  %mul89 = mul nsw i32 %div, 10000, !dbg !3699
  %div90 = sdiv i32 %freq_in.1, 2, !dbg !3699
  %add91 = add nsw i32 %mul89, %div90, !dbg !3699
  %div92 = sdiv i32 %add91, %freq_in.1, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %div92, metadata !3611, metadata !DIExpression()), !dbg !3646
  %add93 = add nsw i32 %div, %spec.select1, !dbg !3700
  %mul94 = mul nsw i32 %add93, 10000, !dbg !3700
  %add96 = add nsw i32 %mul94, %div90, !dbg !3700
  %div97 = sdiv i32 %add96, %freq_in.1, !dbg !3700
  call void @llvm.dbg.value(metadata i32 %div97, metadata !3612, metadata !DIExpression()), !dbg !3646
  br i1 %tobool, label %if.end129, label %land.lhs.true, !dbg !3701

land.lhs.true:                                    ; preds = %cond.end81
  %probability99 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 8, !dbg !3703
  %28 = load i32, i32* %probability99, align 4, !dbg !3703
  %cmp101 = icmp eq i32 %28, 10000, !dbg !3704
  br i1 %cmp101, label %if.end129, label %if.then103, !dbg !3705

if.then103:                                       ; preds = %land.lhs.true
  %sub105 = sub nsw i32 10000, %28, !dbg !3706
  %div106 = sdiv i32 %sub105, 2, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %div110, metadata !3606, metadata !DIExpression()), !dbg !3646
  %call111 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3708
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call111, metadata !3616, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %src116 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %orig, i64 0, i32 0, !dbg !3709
  %wide.trip.count49 = zext i32 %11 to i64, !dbg !3714
  br label %for.cond, !dbg !3715

for.cond:                                         ; preds = %for.inc, %if.then103
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc ], [ 0, %if.then103 ], !dbg !3716
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond50 = icmp eq i64 %indvars.iv47, %wide.trip.count49, !dbg !3714
  br i1 %exitcond50, label %if.end129.loopexit, label %for.body, !dbg !3717

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx115 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call25, i64 %indvars.iv47, !dbg !3718
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx115, align 8, !dbg !3718
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src116, align 8, !dbg !3719
  %cmp117 = icmp eq %struct.basic_block_def* %29, %30, !dbg !3720
  br i1 %cmp117, label %for.inc, label %land.lhs.true119, !dbg !3721

land.lhs.true119:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3599, metadata !DIExpression()), !dbg !3646
  %call123 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %29, %struct.basic_block_def* %30) #6, !dbg !3722
  %tobool125 = icmp eq i8 %call123, 0, !dbg !3722
  br i1 %tobool125, label %for.inc, label %if.then126, !dbg !3723

if.then126:                                       ; preds = %land.lhs.true119
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3599, metadata !DIExpression()), !dbg !3646
  %31 = trunc i64 %indvars.iv47 to i32, !dbg !3724
  %call127 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call111, i32 %31) #6, !dbg !3724
  br label %for.inc, !dbg !3724

for.inc:                                          ; preds = %land.lhs.true119, %for.body, %if.then126
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !3725
  br label %for.cond, !dbg !3726, !llvm.loop !3727

if.end129.loopexit:                               ; preds = %for.cond
  %indvars.iv47.lcssa = phi i64 [ %indvars.iv47, %for.cond ], !dbg !3716
  %add107 = add nsw i32 %div106, 100000000, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %indvars.iv47.lcssa, metadata !3599, metadata !DIExpression()), !dbg !3646
  %div110 = sdiv i32 %add107, %sub105, !dbg !3706
  %32 = trunc i64 %indvars.iv47.lcssa to i32, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %32, metadata !3599, metadata !DIExpression()), !dbg !3646
  store i32 %32, i32* %i, align 4, !dbg !3716
  br label %if.end129, !dbg !3729

if.end129:                                        ; preds = %if.end129.loopexit, %land.lhs.true, %cond.end81
  %scale_after_exit.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %cond.end81 ], [ %div110, %if.end129.loopexit ], !dbg !3646
  %bbs_to_scale.0 = phi %struct.bitmap_head_def* [ null, %land.lhs.true ], [ null, %cond.end81 ], [ %call111, %if.end129.loopexit ], !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %bbs_to_scale.0, metadata !3616, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_after_exit.0, metadata !3606, metadata !DIExpression()), !dbg !3646
  %conv130 = zext i32 %ndupl to i64, !dbg !3729
  %mul131 = shl nuw nsw i64 %conv130, 2, !dbg !3729
  %call132 = tail call i8* @xmalloc(i64 %mul131) #6, !dbg !3729
  %33 = bitcast i8* %call132 to i32*, !dbg !3729
  call void @llvm.dbg.value(metadata i32* %33, metadata !3604, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 1, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond133, !dbg !3730

for.cond133:                                      ; preds = %for.body136, %if.end129
  %34 = phi i32 [ 1, %if.end129 ], [ %inc150, %for.body136 ], !dbg !3732
  store i32 %34, i32* %i, align 4, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %34, metadata !3599, metadata !DIExpression()), !dbg !3646
  %cmp134 = icmp ugt i32 %34, %ndupl, !dbg !3733
  br i1 %cmp134, label %for.end151, label %for.body136, !dbg !3735

for.body136:                                      ; preds = %for.cond133
  call void @llvm.dbg.value(metadata i32 %34, metadata !3599, metadata !DIExpression()), !dbg !3646
  %div137 = lshr i32 %34, 6, !dbg !3736
  %idxprom138 = zext i32 %div137 to i64, !dbg !3736
  %arrayidx139 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %wont_exit, i64 0, i32 3, i64 %idxprom138, !dbg !3736
  %35 = load i64, i64* %arrayidx139, align 8, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %34, metadata !3599, metadata !DIExpression()), !dbg !3646
  %rem = and i32 %34, 63, !dbg !3736
  %sh_prom = zext i32 %rem to i64, !dbg !3736
  %36 = shl i64 1, %sh_prom, !dbg !3736
  %37 = and i64 %35, %36, !dbg !3736
  %tobool141 = icmp eq i64 %37, 0, !dbg !3736
  %div97.div92 = select i1 %tobool141, i32 %div92, i32 %div97, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %34, metadata !3599, metadata !DIExpression()), !dbg !3646
  %sub146 = add i32 %34, -1, !dbg !3737
  %idxprom147 = zext i32 %sub146 to i64, !dbg !3738
  %arrayidx148 = getelementptr inbounds i32, i32* %33, i64 %idxprom147, !dbg !3738
  store i32 %div97.div92, i32* %arrayidx148, align 4, !dbg !3739
  %38 = load i32, i32* %i, align 4, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %38, metadata !3599, metadata !DIExpression()), !dbg !3646
  %inc150 = add i32 %38, 1, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %inc150, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond133, !dbg !3741, !llvm.loop !3742

for.end151:                                       ; preds = %for.cond133
  %and152 = and i32 %flags, 4, !dbg !3744
  %tobool153 = icmp eq i32 %and152, 0, !dbg !3744
  br i1 %tobool153, label %if.else, label %if.then154, !dbg !3745

if.then154:                                       ; preds = %for.end151
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3746
  %frequency156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 11, !dbg !3746
  %40 = load i32, i32* %frequency156, align 8, !dbg !3746
  %probability157 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3746
  %41 = load i32, i32* %probability157, align 4, !dbg !3746
  %mul158 = mul nsw i32 %40, %41, !dbg !3746
  %add159 = add nsw i32 %mul158, 5000, !dbg !3746
  %div160 = sdiv i32 %add159, 10000, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %div160, metadata !3625, metadata !DIExpression()), !dbg !3747
  %cmp161 = icmp sgt i32 %div160, %freq_in.1, !dbg !3748
  %spec.select2 = select i1 %cmp161, i32 %freq_in.1, i32 %div160, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !3625, metadata !DIExpression()), !dbg !3747
  br i1 %cmp, label %cond.true166, label %cond.end168, !dbg !3751

cond.true166:                                     ; preds = %if.then154
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1078, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3751
  br label %cond.end168, !dbg !3751

cond.end168:                                      ; preds = %if.then154, %cond.true166
  %mul170 = mul nsw i32 %spec.select2, 10000, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %div173, metadata !3603, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count45 = zext i32 %ndupl to i64, !dbg !3753
  br label %for.cond174, !dbg !3756

for.cond174:                                      ; preds = %for.body177, %cond.end168
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body177 ], [ 0, %cond.end168 ], !dbg !3757
  %wanted_freq.1 = phi i32 [ %div182, %for.body177 ], [ %spec.select2, %cond.end168 ], !dbg !3747
  %42 = trunc i64 %indvars.iv43 to i32, !dbg !3757
  store i32 %42, i32* %i, align 4, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %wanted_freq.1, metadata !3625, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %indvars.iv43, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond46 = icmp eq i64 %indvars.iv43, %wide.trip.count45, !dbg !3753
  br i1 %exitcond46, label %for.end185, label %for.body177, !dbg !3758

for.body177:                                      ; preds = %for.cond174
  call void @llvm.dbg.value(metadata i64 %indvars.iv43, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx179 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv43, !dbg !3759
  %43 = load i32, i32* %arrayidx179, align 4, !dbg !3759
  %mul180 = mul nsw i32 %wanted_freq.1, %43, !dbg !3759
  %add181 = add nsw i32 %mul180, 5000, !dbg !3759
  %div182 = sdiv i32 %add181, 10000, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %div182, metadata !3625, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %indvars.iv43, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !3760
  br label %for.cond174, !dbg !3761, !llvm.loop !3762

for.end185:                                       ; preds = %for.cond174
  %wanted_freq.1.lcssa = phi i32 [ %wanted_freq.1, %for.cond174 ], !dbg !3747
  %add172 = add nsw i32 %mul170, %div90, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %wanted_freq.1.lcssa, metadata !3625, metadata !DIExpression()), !dbg !3747
  %div173 = sdiv i32 %add172, %freq_in.1, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %wanted_freq.1.lcssa, metadata !3625, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32 %wanted_freq.1.lcssa, metadata !3625, metadata !DIExpression()), !dbg !3747
  %mul186 = mul nsw i32 %wanted_freq.1.lcssa, 10000, !dbg !3764
  %add188 = add nsw i32 %mul186, %div90, !dbg !3764
  %div189 = sdiv i32 %add188, %freq_in.1, !dbg !3764
  call void @llvm.dbg.value(metadata i32 %div189, metadata !3605, metadata !DIExpression()), !dbg !3646
  br label %if.end235, !dbg !3765

if.else:                                          ; preds = %for.end151
  br i1 %cmp, label %if.then191, label %if.else220, !dbg !3766

if.then191:                                       ; preds = %if.else
  %arrayidx193 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %wont_exit, i64 0, i32 3, i64 0, !dbg !3767
  %44 = load i64, i64* %arrayidx193, align 8, !dbg !3767
  %and195 = and i64 %44, 1, !dbg !3767
  %tobool196 = icmp eq i64 %and195, 0, !dbg !3767
  %div97.div923 = select i1 %tobool196, i32 %div92, i32 %div97, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %div97.div923, metadata !3613, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %div97.div923, metadata !3607, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 10000, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count37 = zext i32 %ndupl to i64, !dbg !3770
  br label %for.cond201, !dbg !3773

for.cond201:                                      ; preds = %for.body204, %if.then191
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body204 ], [ 0, %if.then191 ], !dbg !3774
  %scale_main.0 = phi i32 [ %add205, %for.body204 ], [ 10000, %if.then191 ], !dbg !3775
  %p.0 = phi i32 [ %div210, %for.body204 ], [ %div97.div923, %if.then191 ], !dbg !3775
  %45 = trunc i64 %indvars.iv35 to i32, !dbg !3774
  store i32 %45, i32* %i, align 4, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %p.0, metadata !3607, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.0, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond38 = icmp eq i64 %indvars.iv35, %wide.trip.count37, !dbg !3770
  br i1 %exitcond38, label %for.end213, label %for.body204, !dbg !3776

for.body204:                                      ; preds = %for.cond201
  %add205 = add nsw i32 %scale_main.0, %p.0, !dbg !3777
  call void @llvm.dbg.value(metadata i32 %add205, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx207 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv35, !dbg !3779
  %46 = load i32, i32* %arrayidx207, align 4, !dbg !3779
  %mul208 = mul nsw i32 %p.0, %46, !dbg !3779
  %add209 = add nsw i32 %mul208, 5000, !dbg !3779
  %div210 = sdiv i32 %add209, 10000, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %div210, metadata !3607, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !3780
  br label %for.cond201, !dbg !3781, !llvm.loop !3782

for.end213:                                       ; preds = %for.cond201
  %scale_main.0.lcssa = phi i32 [ %scale_main.0, %for.cond201 ], !dbg !3775
  call void @llvm.dbg.value(metadata i32 %scale_main.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.0.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  %div214 = sdiv i32 %scale_main.0.lcssa, 2, !dbg !3784
  %add215 = add nsw i32 %div214, 100000000, !dbg !3784
  %div216 = sdiv i32 %add215, %scale_main.0.lcssa, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %div216, metadata !3605, metadata !DIExpression()), !dbg !3646
  %mul217 = mul nsw i32 %div216, %div97.div923, !dbg !3785
  %add218 = add nsw i32 %mul217, 5000, !dbg !3785
  %div219 = sdiv i32 %add218, 10000, !dbg !3785
  call void @llvm.dbg.value(metadata i32 %div219, metadata !3603, metadata !DIExpression()), !dbg !3646
  br label %if.end235, !dbg !3786

if.else220:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 10000, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count41 = zext i32 %ndupl to i64, !dbg !3787
  br label %for.cond221, !dbg !3791

for.cond221:                                      ; preds = %for.body224, %if.else220
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body224 ], [ 0, %if.else220 ], !dbg !3792
  %scale_main.1 = phi i32 [ %div229, %for.body224 ], [ 10000, %if.else220 ], !dbg !3793
  %47 = trunc i64 %indvars.iv39 to i32, !dbg !3792
  store i32 %47, i32* %i, align 4, !dbg !3792
  call void @llvm.dbg.value(metadata i32 %scale_main.1, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond42 = icmp eq i64 %indvars.iv39, %wide.trip.count41, !dbg !3787
  br i1 %exitcond42, label %for.end232, label %for.body224, !dbg !3794

for.body224:                                      ; preds = %for.cond221
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx226 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv39, !dbg !3795
  %48 = load i32, i32* %arrayidx226, align 4, !dbg !3795
  %mul227 = mul nsw i32 %scale_main.1, %48, !dbg !3795
  %add228 = add nsw i32 %mul227, 5000, !dbg !3795
  %div229 = sdiv i32 %add228, 10000, !dbg !3795
  call void @llvm.dbg.value(metadata i32 %div229, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !3796
  br label %for.cond221, !dbg !3797, !llvm.loop !3798

for.end232:                                       ; preds = %for.cond221
  %scale_main.1.lcssa = phi i32 [ %scale_main.1, %for.cond221 ], !dbg !3793
  call void @llvm.dbg.value(metadata i32 %scale_main.1.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.1.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.1.lcssa, metadata !3605, metadata !DIExpression()), !dbg !3646
  %sub233 = sub nsw i32 10000, %div92, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %sub233, metadata !3603, metadata !DIExpression()), !dbg !3646
  br label %if.end235

if.end235:                                        ; preds = %for.end213, %for.end232, %for.end185
  %scale_act.1 = phi i32 [ %div173, %for.end185 ], [ %div219, %for.end213 ], [ %sub233, %for.end232 ], !dbg !3801
  %scale_main.3 = phi i32 [ %div189, %for.end185 ], [ %div216, %for.end213 ], [ %scale_main.1.lcssa, %for.end232 ], !dbg !3801
  call void @llvm.dbg.value(metadata i32 %scale_main.3, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_act.1, metadata !3603, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count33 = zext i32 %ndupl to i64, !dbg !3802
  br label %for.cond236, !dbg !3805

for.cond236:                                      ; preds = %for.inc253, %if.end235
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc253 ], [ 0, %if.end235 ], !dbg !3806
  %49 = trunc i64 %indvars.iv31 to i32, !dbg !3806
  store i32 %49, i32* %i, align 4, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond34 = icmp eq i64 %indvars.iv31, %wide.trip.count33, !dbg !3802
  br i1 %exitcond34, label %for.end255, label %for.body239, !dbg !3807

for.body239:                                      ; preds = %for.cond236
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx241 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv31, !dbg !3808
  %50 = load i32, i32* %arrayidx241, align 4, !dbg !3808
  %cmp242 = icmp sgt i32 %50, -1, !dbg !3808
  br i1 %cmp242, label %land.lhs.true244, label %cond.true249, !dbg !3808

land.lhs.true244:                                 ; preds = %for.body239
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !3599, metadata !DIExpression()), !dbg !3646
  %cmp247 = icmp slt i32 %50, 10001, !dbg !3808
  br i1 %cmp247, label %for.inc253, label %cond.true249, !dbg !3808

cond.true249:                                     ; preds = %land.lhs.true244, %for.body239
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3808
  br label %for.inc253, !dbg !3808

for.inc253:                                       ; preds = %cond.true249, %land.lhs.true244
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !3809
  br label %for.cond236, !dbg !3810, !llvm.loop !3811

for.end255:                                       ; preds = %for.cond236
  %51 = icmp ult i32 %scale_main.3, 10001, !dbg !3813
  %52 = icmp ult i32 %scale_act.1, 10001, !dbg !3813
  %53 = and i1 %52, %51, !dbg !3813
  br i1 %53, label %if.end271, label %cond.true267, !dbg !3813

cond.true267:                                     ; preds = %for.end255
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3813
  br label %if.end271, !dbg !3813

if.end271:                                        ; preds = %cond.end54, %cond.true267, %for.end255
  %scale_act.2 = phi i32 [ 0, %cond.end54 ], [ %scale_act.1, %for.end255 ], [ %scale_act.1, %cond.true267 ], !dbg !3646
  %54 = phi i8* [ null, %cond.end54 ], [ %call132, %for.end255 ], [ %call132, %cond.true267 ], !dbg !3646
  %scale_step.0 = phi i32* [ null, %cond.end54 ], [ %33, %for.end255 ], [ %33, %cond.true267 ], !dbg !3646
  %scale_main.4 = phi i32 [ 0, %cond.end54 ], [ %scale_main.3, %for.end255 ], [ %scale_main.3, %cond.true267 ], !dbg !3646
  %scale_after_exit.1 = phi i32 [ 0, %cond.end54 ], [ %scale_after_exit.0, %for.end255 ], [ %scale_after_exit.0, %cond.true267 ], !dbg !3646
  %bbs_to_scale.1 = phi %struct.bitmap_head_def* [ null, %cond.end54 ], [ %bbs_to_scale.0, %for.end255 ], [ %bbs_to_scale.0, %cond.true267 ], !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %bbs_to_scale.1, metadata !3616, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_after_exit.1, metadata !3606, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_main.4, metadata !3605, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32* %scale_step.0, metadata !3604, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_act.2, metadata !3603, metadata !DIExpression()), !dbg !3646
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3814
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i64 0, i32 3, !dbg !3815
  %56 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.loop* %56, metadata !3582, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3585, metadata !DIExpression()), !dbg !3646
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !3816
  br label %for.cond273, !dbg !3818

for.cond273:                                      ; preds = %for.body275, %if.end271
  %n_orig_loops.0 = phi i32 [ 0, %if.end271 ], [ %inc276, %for.body275 ], !dbg !3646
  %aloop.0.in = phi %struct.loop** [ %inner, %if.end271 ], [ %next, %for.body275 ]
  %aloop.0 = load %struct.loop*, %struct.loop** %aloop.0.in, align 8, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.loop* %aloop.0, metadata !3583, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %n_orig_loops.0, metadata !3585, metadata !DIExpression()), !dbg !3646
  %tobool274 = icmp eq %struct.loop* %aloop.0, null, !dbg !3820
  br i1 %tobool274, label %for.end278, label %for.body275, !dbg !3820

for.body275:                                      ; preds = %for.cond273
  %inc276 = add i32 %n_orig_loops.0, 1, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %inc276, metadata !3585, metadata !DIExpression()), !dbg !3646
  %next = getelementptr inbounds %struct.loop, %struct.loop* %aloop.0, i64 0, i32 9, !dbg !3823
  br label %for.cond273, !dbg !3824, !llvm.loop !3825

for.end278:                                       ; preds = %for.cond273
  %n_orig_loops.0.lcssa = phi i32 [ %n_orig_loops.0, %for.cond273 ], !dbg !3646
  call void @llvm.dbg.value(metadata i32 %n_orig_loops.0.lcssa, metadata !3585, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %n_orig_loops.0.lcssa, metadata !3585, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %n_orig_loops.0.lcssa, metadata !3585, metadata !DIExpression()), !dbg !3646
  %conv279 = zext i32 %n_orig_loops.0.lcssa to i64, !dbg !3827
  %call280 = tail call i8* @xcalloc(i64 %conv279, i64 8) #6, !dbg !3827
  %57 = bitcast i8* %call280 to %struct.loop**, !dbg !3827
  call void @llvm.dbg.value(metadata %struct.loop** %57, metadata !3584, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond282, !dbg !3828

for.cond282:                                      ; preds = %for.body284, %for.end278
  %storemerge = phi i32 [ 0, %for.end278 ], [ %inc289, %for.body284 ], !dbg !3830
  %aloop.1.in = phi %struct.loop** [ %inner, %for.end278 ], [ %next288, %for.body284 ]
  %aloop.1 = load %struct.loop*, %struct.loop** %aloop.1.in, align 8, !dbg !3830
  call void @llvm.dbg.value(metadata %struct.loop* %aloop.1, metadata !3583, metadata !DIExpression()), !dbg !3646
  %tobool283 = icmp eq %struct.loop* %aloop.1, null, !dbg !3831
  br i1 %tobool283, label %for.end290, label %for.body284, !dbg !3831

for.body284:                                      ; preds = %for.cond282
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idxprom285 = zext i32 %storemerge to i64, !dbg !3832
  %arrayidx286 = getelementptr inbounds %struct.loop*, %struct.loop** %57, i64 %idxprom285, !dbg !3832
  store %struct.loop* %aloop.1, %struct.loop** %arrayidx286, align 8, !dbg !3834
  %next288 = getelementptr inbounds %struct.loop, %struct.loop* %aloop.1, i64 0, i32 9, !dbg !3835
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3599, metadata !DIExpression()), !dbg !3646
  %inc289 = add i32 %storemerge, 1, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %inc289, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond282, !dbg !3837, !llvm.loop !3838

for.end290:                                       ; preds = %for.cond282
  %storemerge.lcssa = phi i32 [ %storemerge, %for.cond282 ], !dbg !3830
  store i32 %storemerge.lcssa, i32* %i, align 4, !dbg !3830
  tail call void @set_loop_copy(%struct.loop* %loop, %struct.loop* %56) #6, !dbg !3840
  %conv291 = zext i32 %11 to i64, !dbg !3841
  %mul292 = shl nuw nsw i64 %conv291, 3, !dbg !3841
  %call293 = tail call i8* @xmalloc(i64 %mul292) #6, !dbg !3841
  %58 = bitcast i8* %call293 to %struct.basic_block_def**, !dbg !3841
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %58, metadata !3590, metadata !DIExpression()), !dbg !3646
  br i1 %cmp, label %if.then295, label %if.end299, !dbg !3842

if.then295:                                       ; preds = %for.end290
  %59 = bitcast %struct.basic_block_def** %call25 to i8*, !dbg !3843
  %call298 = tail call i8* @memcpy(i8* %call293, i8* %59, i64 %mul292) #6, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3593, metadata !DIExpression()), !dbg !3646
  br label %if.end299, !dbg !3847

if.end299:                                        ; preds = %if.then295, %for.end290
  %first_active_latch.0 = phi %struct.basic_block_def* [ %1, %if.then295 ], [ null, %for.end290 ], !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.0, metadata !3593, metadata !DIExpression()), !dbg !3646
  %arrayidx300 = getelementptr inbounds [2 x %struct.edge_def*], [2 x %struct.edge_def*]* %spec_edges, i64 0, i64 1, !dbg !3848
  store %struct.edge_def* %orig, %struct.edge_def** %arrayidx300, align 8, !dbg !3849
  %arrayidx301 = getelementptr inbounds [2 x %struct.edge_def*], [2 x %struct.edge_def*]* %spec_edges, i64 0, i64 0, !dbg !3850
  store %struct.edge_def* %call56, %struct.edge_def** %arrayidx301, align 16, !dbg !3851
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %60, metadata !3615, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3646
  %arraydecay307 = getelementptr inbounds [2 x %struct.edge_def*], [2 x %struct.edge_def*]* %new_spec_edges, i64 0, i64 0, !dbg !3853
  %and310 = and i32 %flags, 2, !dbg !3854
  %tobool311 = icmp eq i32 %and310, 0, !dbg !3854
  %tobool333 = icmp eq i32 %and, 0, !dbg !3856
  %61 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3857
  %62 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3858
  %63 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3858
  %64 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3858
  %65 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3860
  %66 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3860
  %arrayidx408 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idxprom, !dbg !3862
  %tobool435 = icmp eq %struct.VEC_edge_heap** %to_remove, null, !dbg !3865
  %arrayidx437 = getelementptr inbounds [2 x %struct.edge_def*], [2 x %struct.edge_def*]* %new_spec_edges, i64 0, i64 1, !dbg !3865
  %tobool441 = icmp eq %struct.bitmap_head_def* %bbs_to_scale.1, null, !dbg !3869
  %wide.trip.count29 = zext i32 %ndupl to i64, !dbg !3871
  br label %for.cond303, !dbg !3872

for.cond303:                                      ; preds = %for.inc469, %if.end299
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc469 ], [ 0, %if.end299 ], !dbg !3873
  %first_active_latch.1 = phi %struct.basic_block_def* [ %first_active_latch.2, %for.inc469 ], [ %first_active_latch.0, %if.end299 ], !dbg !3873
  %latch_edge.0 = phi %struct.edge_def* [ %latch_edge.1, %for.inc469 ], [ %call56, %if.end299 ], !dbg !3646
  %scale_act.3 = phi i32 [ %scale_act.4, %for.inc469 ], [ %scale_act.2, %if.end299 ], !dbg !3646
  %latch.0 = phi %struct.basic_block_def* [ %latch.1, %for.inc469 ], [ %1, %if.end299 ], !dbg !3646
  %place_after.0 = phi %struct.basic_block_def* [ %68, %for.inc469 ], [ %60, %if.end299 ], !dbg !3646
  %e.addr.0 = phi %struct.edge_def* [ %e.addr.1, %for.inc469 ], [ %e, %if.end299 ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %place_after.0, metadata !3615, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %latch.0, metadata !3587, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_act.3, metadata !3603, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !3600, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch_edge.0, metadata !3595, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.1, metadata !3593, metadata !DIExpression()), !dbg !3646
  %exitcond30 = icmp eq i64 %indvars.iv27, %wide.trip.count29, !dbg !3871
  br i1 %exitcond30, label %for.end471, label %for.body306, !dbg !3874

for.body306:                                      ; preds = %for.cond303
  call fastcc void @copy_loops_to(%struct.loop** %57, i32 %n_orig_loops.0.lcssa, %struct.loop* %56) #8, !dbg !3875
  call void @copy_bbs(%struct.basic_block_def** %call25, i32 %11, %struct.basic_block_def** %19, %struct.edge_def** nonnull %arrayidx301, i32 2, %struct.edge_def** nonnull %arraydecay307, %struct.loop* %loop, %struct.basic_block_def* %place_after.0) #6, !dbg !3876
  %67 = load %struct.edge_def*, %struct.edge_def** %arraydecay307, align 16, !dbg !3877
  %src309 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i64 0, i32 0, !dbg !3878
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %src309, align 8, !dbg !3878
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %68, metadata !3615, metadata !DIExpression()), !dbg !3646
  br i1 %tobool311, label %if.end332, label %if.then312, !dbg !3879

if.then312:                                       ; preds = %for.body306
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %add324 = add nuw nsw i64 %indvars.iv27, 1, !dbg !3880
  %conv325 = and i64 %add324, 4294967295, !dbg !3880
  %69 = inttoptr i64 %conv325 to i8*, !dbg !3880
  br label %for.cond313, !dbg !3884

for.cond313:                                      ; preds = %cond.end322, %if.then312
  %70 = phi i32 [ 0, %if.then312 ], [ %inc330, %cond.end322 ], !dbg !3885
  store i32 %70, i32* %i, align 4, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %70, metadata !3599, metadata !DIExpression()), !dbg !3646
  %cmp314 = icmp ult i32 %70, %11, !dbg !3886
  br i1 %cmp314, label %for.body316, label %if.end332.loopexit, !dbg !3887

for.body316:                                      ; preds = %for.cond313
  call void @llvm.dbg.value(metadata i32 %70, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idxprom317 = zext i32 %70 to i64, !dbg !3888
  %arrayidx318 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idxprom317, !dbg !3888
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx318, align 8, !dbg !3888
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i64 0, i32 2, !dbg !3888
  %72 = load i8*, i8** %aux, align 8, !dbg !3888
  %tobool319 = icmp eq i8* %72, null, !dbg !3888
  br i1 %tobool319, label %cond.end322, label %cond.true320, !dbg !3888

cond.true320:                                     ; preds = %for.body316
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3888
  %.pre20 = load i32, i32* %i, align 4, !dbg !3889
  %idxprom326.phi.trans.insert = zext i32 %.pre20 to i64, !dbg !3880
  %arrayidx327.phi.trans.insert = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idxprom326.phi.trans.insert, !dbg !3880
  %.pre21 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx327.phi.trans.insert, align 8, !dbg !3890
  br label %cond.end322, !dbg !3888

cond.end322:                                      ; preds = %for.body316, %cond.true320
  %73 = phi %struct.basic_block_def* [ %71, %for.body316 ], [ %.pre21, %cond.true320 ], !dbg !3890
  %74 = phi i32 [ %70, %for.body316 ], [ %.pre20, %cond.true320 ], !dbg !3889
  call void @llvm.dbg.value(metadata i32 %74, metadata !3599, metadata !DIExpression()), !dbg !3646
  %aux328 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i64 0, i32 2, !dbg !3891
  store i8* %69, i8** %aux328, align 8, !dbg !3892
  call void @llvm.dbg.value(metadata i32 %74, metadata !3599, metadata !DIExpression()), !dbg !3646
  %inc330 = add i32 %74, 1, !dbg !3893
  call void @llvm.dbg.value(metadata i32 %inc330, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond313, !dbg !3894, !llvm.loop !3895

if.end332.loopexit:                               ; preds = %for.cond313
  br label %if.end332, !dbg !3897

if.end332:                                        ; preds = %if.end332.loopexit, %for.body306
  br i1 %tobool333, label %if.end397, label %if.then334, !dbg !3898

if.then334:                                       ; preds = %if.end332
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count = zext i32 %11 to i64, !dbg !3899
  br label %for.cond335, !dbg !3902

for.cond335:                                      ; preds = %for.body338, %if.then334
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body338 ], [ 0, %if.then334 ], !dbg !3903
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3899
  br i1 %exitcond, label %for.end344, label %for.body338, !dbg !3904

for.body338:                                      ; preds = %for.cond335
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx340 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %indvars.iv, !dbg !3905
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx340, align 8, !dbg !3905
  %flags341 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i64 0, i32 13, !dbg !3906
  %76 = load i32, i32* %flags341, align 8, !dbg !3907
  %or = or i32 %76, 128, !dbg !3907
  store i32 %or, i32* %flags341, align 8, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3908
  br label %for.cond335, !dbg !3909, !llvm.loop !3910

for.end344:                                       ; preds = %for.cond335
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond335 ], !dbg !3903
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3599, metadata !DIExpression()), !dbg !3646
  %77 = trunc i64 %indvars.iv.lcssa to i32, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %77, metadata !3599, metadata !DIExpression()), !dbg !3646
  store i32 %77, i32* %i, align 4, !dbg !3903
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond345, !dbg !3912

for.cond345:                                      ; preds = %for.end382, %for.end344
  %78 = phi i32 [ 0, %for.end344 ], [ %inc384, %for.end382 ], !dbg !3913
  store i32 %78, i32* %i, align 4, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %78, metadata !3599, metadata !DIExpression()), !dbg !3646
  %cmp346 = icmp ult i32 %78, %11, !dbg !3914
  br i1 %cmp346, label %for.body348, label %for.end385, !dbg !3915

for.body348:                                      ; preds = %for.cond345
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #7, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %78, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idxprom349 = zext i32 %78 to i64, !dbg !3917
  %arrayidx350 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idxprom349, !dbg !3917
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx350, align 8, !dbg !3917
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %79, metadata !3591, metadata !DIExpression()), !dbg !3646
  %loop_father351 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i64 0, i32 3, !dbg !3918
  %80 = load %struct.loop*, %struct.loop** %loop_father351, align 8, !dbg !3918
  %cmp352 = icmp eq %struct.loop* %80, %56, !dbg !3920
  br i1 %cmp352, label %if.then354, label %if.end357, !dbg !3921

if.then354:                                       ; preds = %for.body348
  %flags355 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i64 0, i32 13, !dbg !3922
  %81 = load i32, i32* %flags355, align 8, !dbg !3923
  %or356 = or i32 %81, 4, !dbg !3923
  store i32 %or356, i32* %flags355, align 8, !dbg !3923
  br label %if.end357, !dbg !3924

if.end357:                                        ; preds = %if.then354, %for.body348
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #7, !dbg !3925
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i64 0, i32 1, !dbg !3925
  %call358 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3925
  %82 = extractvalue { i32, %struct.VEC_edge_gc** } %call358, 0, !dbg !3925
  store i32 %82, i32* %63, align 8, !dbg !3925
  %83 = extractvalue { i32, %struct.VEC_edge_gc** } %call358, 1, !dbg !3925
  store %struct.VEC_edge_gc** %83, %struct.VEC_edge_gc*** %64, align 8, !dbg !3925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %61, i8* nonnull align 8 %62, i64 16, i1 false), !dbg !3925
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #7, !dbg !3925
  br label %for.cond359, !dbg !3925

for.cond359:                                      ; preds = %for.inc381, %if.end357
  %84 = load i32, i32* %65, align 8, !dbg !3926
  %85 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %66, align 8, !dbg !3926
  call void @llvm.dbg.value(metadata %struct.edge_def** %ae, metadata !3594, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  %call360 = call fastcc zeroext i8 @ei_cond(i32 %84, %struct.VEC_edge_gc** %85, %struct.edge_def** nonnull %ae) #8, !dbg !3926
  %tobool361 = icmp eq i8 %call360, 0, !dbg !3925
  br i1 %tobool361, label %for.end382, label %for.body362, !dbg !3925

for.body362:                                      ; preds = %for.cond359
  %86 = load %struct.edge_def*, %struct.edge_def** %ae, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata %struct.edge_def* %86, metadata !3594, metadata !DIExpression()), !dbg !3646
  %dest363 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i64 0, i32 1, !dbg !3929
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %dest363, align 8, !dbg !3929
  %flags364 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i64 0, i32 13, !dbg !3930
  %88 = load i32, i32* %flags364, align 8, !dbg !3930
  %89 = trunc i32 %88 to i8, !dbg !3931
  %tobool366 = icmp slt i8 %89, 0, !dbg !3931
  br i1 %tobool366, label %land.lhs.true367, label %for.inc381, !dbg !3932

land.lhs.true367:                                 ; preds = %for.body362
  call void @llvm.dbg.value(metadata %struct.edge_def* %86, metadata !3594, metadata !DIExpression()), !dbg !3646
  %src368 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i64 0, i32 0, !dbg !3933
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %src368, align 8, !dbg !3933
  %loop_father369 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i64 0, i32 3, !dbg !3934
  %91 = load %struct.loop*, %struct.loop** %loop_father369, align 8, !dbg !3934
  %cmp370 = icmp eq %struct.loop* %91, %56, !dbg !3935
  br i1 %cmp370, label %if.then377, label %lor.lhs.false372, !dbg !3936

lor.lhs.false372:                                 ; preds = %land.lhs.true367
  call void @llvm.dbg.value(metadata %struct.edge_def* %86, metadata !3594, metadata !DIExpression()), !dbg !3646
  %loop_father374 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i64 0, i32 3, !dbg !3937
  %92 = load %struct.loop*, %struct.loop** %loop_father374, align 8, !dbg !3937
  %cmp375 = icmp eq %struct.loop* %92, %56, !dbg !3938
  br i1 %cmp375, label %if.then377, label %for.inc381, !dbg !3939

if.then377:                                       ; preds = %lor.lhs.false372, %land.lhs.true367
  call void @llvm.dbg.value(metadata %struct.edge_def* %86, metadata !3594, metadata !DIExpression()), !dbg !3646
  %flags378 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i64 0, i32 7, !dbg !3940
  %93 = load i32, i32* %flags378, align 8, !dbg !3941
  %or379 = or i32 %93, 128, !dbg !3941
  store i32 %or379, i32* %flags378, align 8, !dbg !3941
  br label %for.inc381, !dbg !3942

for.inc381:                                       ; preds = %for.body362, %lor.lhs.false372, %if.then377
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3630, metadata !DIExpression(DW_OP_deref)), !dbg !3857
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3926
  br label %for.cond359, !dbg !3926, !llvm.loop !3943

for.end382:                                       ; preds = %for.cond359
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #7, !dbg !3945
  %94 = load i32, i32* %i, align 4, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %94, metadata !3599, metadata !DIExpression()), !dbg !3646
  %inc384 = add i32 %94, 1, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %inc384, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond345, !dbg !3947, !llvm.loop !3948

for.end385:                                       ; preds = %for.cond345
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %wide.trip.count25 = zext i32 %11 to i64, !dbg !3950
  br label %for.cond386, !dbg !3953

for.cond386:                                      ; preds = %for.body389, %for.end385
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body389 ], [ 0, %for.end385 ], !dbg !3954
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !3599, metadata !DIExpression()), !dbg !3646
  %exitcond26 = icmp eq i64 %indvars.iv23, %wide.trip.count25, !dbg !3950
  br i1 %exitcond26, label %if.end397.loopexit, label %for.body389, !dbg !3955

for.body389:                                      ; preds = %for.cond386
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !3599, metadata !DIExpression()), !dbg !3646
  %arrayidx391 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %indvars.iv23, !dbg !3956
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx391, align 8, !dbg !3956
  %flags392 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %95, i64 0, i32 13, !dbg !3957
  %96 = load i32, i32* %flags392, align 8, !dbg !3958
  %and393 = and i32 %96, -129, !dbg !3958
  store i32 %and393, i32* %flags392, align 8, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !3599, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !3959
  br label %for.cond386, !dbg !3960, !llvm.loop !3961

if.end397.loopexit:                               ; preds = %for.cond386
  %indvars.iv23.lcssa = phi i64 [ %indvars.iv23, %for.cond386 ], !dbg !3954
  call void @llvm.dbg.value(metadata i64 %indvars.iv23.lcssa, metadata !3599, metadata !DIExpression()), !dbg !3646
  %97 = trunc i64 %indvars.iv23.lcssa to i32, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %97, metadata !3599, metadata !DIExpression()), !dbg !3646
  store i32 %97, i32* %i, align 4, !dbg !3954
  br label %if.end397, !dbg !3963

if.end397:                                        ; preds = %if.end397.loopexit, %if.end332
  br i1 %cmp, label %if.then399, label %if.else411, !dbg !3963

if.then399:                                       ; preds = %if.end397
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %19, align 8, !dbg !3964
  %call401 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %latch_edge.0, %struct.basic_block_def* %98) #6, !dbg !3965
  %99 = load %struct.edge_def*, %struct.edge_def** %arraydecay307, align 16, !dbg !3966
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !3967
  %call404 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %99, %struct.basic_block_def* %100) #6, !dbg !3968
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %19, align 8, !dbg !3969
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %101, %struct.basic_block_def* %latch.0) #6, !dbg !3970
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx408, align 8, !dbg !3971
  store %struct.basic_block_def* %102, %struct.basic_block_def** %latch2, align 8, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %102, metadata !3587, metadata !DIExpression()), !dbg !3646
  %103 = load %struct.edge_def*, %struct.edge_def** %arraydecay307, align 16, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.edge_def* %103, metadata !3595, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %103, metadata !3576, metadata !DIExpression()), !dbg !3646
  br label %if.end420, !dbg !3974

if.else411:                                       ; preds = %if.end397
  %104 = load %struct.edge_def*, %struct.edge_def** %arraydecay307, align 16, !dbg !3975
  %105 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !3977
  %call414 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %104, %struct.basic_block_def* %105) #6, !dbg !3978
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %19, align 8, !dbg !3979
  %call416 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %e.addr.0, %struct.basic_block_def* %106) #6, !dbg !3980
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %19, align 8, !dbg !3981
  %src418 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0, i64 0, i32 0, !dbg !3982
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %src418, align 8, !dbg !3982
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %107, %struct.basic_block_def* %108) #6, !dbg !3983
  %109 = load %struct.edge_def*, %struct.edge_def** %arraydecay307, align 16, !dbg !3984
  call void @llvm.dbg.value(metadata %struct.edge_def* %109, metadata !3576, metadata !DIExpression()), !dbg !3646
  br label %if.end420

if.end420:                                        ; preds = %if.else411, %if.then399
  %latch_edge.1 = phi %struct.edge_def* [ %103, %if.then399 ], [ %latch_edge.0, %if.else411 ], !dbg !3646
  %latch.1 = phi %struct.basic_block_def* [ %102, %if.then399 ], [ %latch.0, %if.else411 ], !dbg !3646
  %e.addr.1 = phi %struct.edge_def* [ %103, %if.then399 ], [ %109, %if.else411 ], !dbg !3985
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.1, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %latch.1, metadata !3587, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %latch_edge.1, metadata !3595, metadata !DIExpression()), !dbg !3646
  br i1 %tobool, label %if.end450, label %land.lhs.true422, !dbg !3986

land.lhs.true422:                                 ; preds = %if.end420
  %110 = trunc i64 %indvars.iv27 to i32, !dbg !3987
  %add424 = add i32 %110, 1, !dbg !3987
  %div425 = lshr i32 %add424, 6, !dbg !3987
  %idxprom426 = zext i32 %div425 to i64, !dbg !3987
  %arrayidx427 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %wont_exit, i64 0, i32 3, i64 %idxprom426, !dbg !3987
  %111 = load i64, i64* %arrayidx427, align 8, !dbg !3987
  %rem429 = and i32 %add424, 63, !dbg !3987
  %sh_prom430 = zext i32 %rem429 to i64, !dbg !3987
  %112 = shl i64 1, %sh_prom430, !dbg !3987
  %113 = and i64 %111, %112, !dbg !3987
  %tobool433 = icmp eq i64 %113, 0, !dbg !3987
  br i1 %tobool433, label %if.end450, label %if.then434, !dbg !3988

if.then434:                                       ; preds = %land.lhs.true422
  br i1 %tobool435, label %if.end439, label %if.then436, !dbg !3989

if.then436:                                       ; preds = %if.then434
  %114 = load %struct.edge_def*, %struct.edge_def** %arrayidx437, align 8, !dbg !3990
  %call438 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %to_remove, %struct.edge_def* %114) #8, !dbg !3990
  br label %if.end439, !dbg !3990

if.end439:                                        ; preds = %if.then434, %if.then436
  %115 = load %struct.edge_def*, %struct.edge_def** %arrayidx437, align 8, !dbg !3991
  call fastcc void @set_zero_probability(%struct.edge_def* %115) #8, !dbg !3992
  br i1 %tobool441, label %if.end450, label %if.then442, !dbg !3993

if.then442:                                       ; preds = %if.end439
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %bbs_to_scale.1, i32 0, i32* nonnull %i) #8, !dbg !3994
  br label %for.cond443, !dbg !3994

for.cond443:                                      ; preds = %for.body446, %if.then442
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  %call444 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !3997
  %tobool445 = icmp eq i8 %call444, 0, !dbg !3994
  br i1 %tobool445, label %if.end450.loopexit, label %for.body446, !dbg !3994

for.body446:                                      ; preds = %for.cond443
  %116 = load i32, i32* %i, align 4, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %116, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idx.ext = zext i32 %116 to i64, !dbg !4001
  %add.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idx.ext, !dbg !4001
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** %add.ptr, i32 1, i32 %scale_after_exit.1, i32 10000) #6, !dbg !4002
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !3997
  br label %for.cond443, !dbg !3997, !llvm.loop !4003

if.end450.loopexit:                               ; preds = %for.cond443
  br label %if.end450, !dbg !4005

if.end450:                                        ; preds = %if.end450.loopexit, %if.end439, %land.lhs.true422, %if.end420
  %tobool451 = icmp eq %struct.basic_block_def* %first_active_latch.1, null, !dbg !4005
  br i1 %tobool451, label %if.then452, label %if.end459, !dbg !4007

if.then452:                                       ; preds = %if.end450
  %call455 = call i8* @memcpy(i8* %call293, i8* %call48, i64 %mul292) #6, !dbg !4008
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx408, align 8, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %117, metadata !3593, metadata !DIExpression()), !dbg !3646
  br label %if.end459, !dbg !4011

if.end459:                                        ; preds = %if.end450, %if.then452
  %first_active_latch.2 = phi %struct.basic_block_def* [ %first_active_latch.1, %if.end450 ], [ %117, %if.then452 ], !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.2, metadata !3593, metadata !DIExpression()), !dbg !3646
  br i1 %tobool58, label %for.inc469, label %if.then462, !dbg !4012

if.then462:                                       ; preds = %if.end459
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** %19, i32 %11, i32 %scale_act.3, i32 10000) #6, !dbg !4013
  %arrayidx464 = getelementptr inbounds i32, i32* %scale_step.0, i64 %indvars.iv27, !dbg !4016
  %118 = load i32, i32* %arrayidx464, align 4, !dbg !4016
  %mul465 = mul nsw i32 %scale_act.3, %118, !dbg !4016
  %add466 = add nsw i32 %mul465, 5000, !dbg !4016
  %div467 = sdiv i32 %add466, 10000, !dbg !4016
  call void @llvm.dbg.value(metadata i32 %div467, metadata !3603, metadata !DIExpression()), !dbg !3646
  br label %for.inc469, !dbg !4017

for.inc469:                                       ; preds = %if.end459, %if.then462
  %scale_act.4 = phi i32 [ %div467, %if.then462 ], [ %scale_act.3, %if.end459 ], !dbg !3646
  call void @llvm.dbg.value(metadata i32 %scale_act.4, metadata !3603, metadata !DIExpression()), !dbg !3646
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !4018
  br label %for.cond303, !dbg !4019, !llvm.loop !4020

for.end471:                                       ; preds = %for.cond303
  %first_active_latch.1.lcssa = phi %struct.basic_block_def* [ %first_active_latch.1, %for.cond303 ], !dbg !3873
  %e.addr.0.lcssa = phi %struct.edge_def* [ %e.addr.0, %for.cond303 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.1.lcssa, metadata !3593, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0.lcssa, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.1.lcssa, metadata !3593, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0.lcssa, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_active_latch.1.lcssa, metadata !3593, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0.lcssa, metadata !3576, metadata !DIExpression()), !dbg !3646
  call void @free(i8* %call48) #6, !dbg !4022
  call void @free(i8* %call280) #6, !dbg !4023
  br i1 %tobool, label %if.end495, label %land.lhs.true473, !dbg !4024

land.lhs.true473:                                 ; preds = %for.end471
  %arrayidx475 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %wont_exit, i64 0, i32 3, i64 0, !dbg !4026
  %119 = load i64, i64* %arrayidx475, align 8, !dbg !4026
  %and477 = and i64 %119, 1, !dbg !4026
  %tobool478 = icmp eq i64 %and477, 0, !dbg !4026
  br i1 %tobool478, label %if.end495, label %if.then479, !dbg !4027

if.then479:                                       ; preds = %land.lhs.true473
  br i1 %tobool435, label %if.end483, label %if.then481, !dbg !4028

if.then481:                                       ; preds = %if.then479
  %call482 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %to_remove, %struct.edge_def* nonnull %orig) #8, !dbg !4030
  br label %if.end483, !dbg !4030

if.end483:                                        ; preds = %if.then479, %if.then481
  call fastcc void @set_zero_probability(%struct.edge_def* nonnull %orig) #8, !dbg !4032
  br i1 %tobool441, label %if.end495, label %if.then485, !dbg !4033

if.then485:                                       ; preds = %if.end483
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %bbs_to_scale.1, i32 0, i32* nonnull %i) #8, !dbg !4034
  br label %for.cond486, !dbg !4034

for.cond486:                                      ; preds = %for.body489, %if.then485
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  %call487 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !4038
  %tobool488 = icmp eq i8 %call487, 0, !dbg !4034
  br i1 %tobool488, label %if.end495.loopexit, label %for.body489, !dbg !4034

for.body489:                                      ; preds = %for.cond486
  %120 = load i32, i32* %i, align 4, !dbg !4040
  call void @llvm.dbg.value(metadata i32 %120, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idx.ext490 = zext i32 %120 to i64, !dbg !4042
  %add.ptr491 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call25, i64 %idx.ext490, !dbg !4042
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** %add.ptr491, i32 1, i32 %scale_after_exit.1, i32 10000) #6, !dbg !4043
  call void @llvm.dbg.value(metadata i32* %i, metadata !3599, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3617, metadata !DIExpression(DW_OP_deref)), !dbg !3646
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !4038
  br label %for.cond486, !dbg !4038, !llvm.loop !4044

if.end495.loopexit:                               ; preds = %for.cond486
  br label %if.end495, !dbg !4046

if.end495:                                        ; preds = %if.end495.loopexit, %if.end483, %land.lhs.true473, %for.end471
  br i1 %cmp, label %if.end500, label %if.then497, !dbg !4046

if.then497:                                       ; preds = %if.end495
  %dest498 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0.lcssa, i64 0, i32 1, !dbg !4047
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %dest498, align 8, !dbg !4047
  %src499 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0.lcssa, i64 0, i32 0, !dbg !4049
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %src499, align 8, !dbg !4049
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %121, %struct.basic_block_def* %122) #6, !dbg !4050
  br label %if.end500, !dbg !4050

if.end500:                                        ; preds = %if.then497, %if.end495
  br i1 %tobool58, label %if.end504, label %if.then503, !dbg !4051

if.then503:                                       ; preds = %if.end500
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** %call25, i32 %11, i32 %scale_main.4, i32 10000) #6, !dbg !4052
  call void @free(i8* %54) #6, !dbg !4055
  br label %if.end504, !dbg !4056

if.end504:                                        ; preds = %if.end500, %if.then503
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3646
  %123 = bitcast %struct.basic_block_def** %dominated to i8*, !dbg !4057
  %124 = bitcast %struct.VEC_basic_block_heap** %dom_bbs to i8*, !dbg !4057
  br label %for.cond505, !dbg !4058

for.cond505:                                      ; preds = %for.end532, %if.end504
  %125 = phi i32 [ 0, %if.end504 ], [ %inc534, %for.end532 ], !dbg !4059
  store i32 %125, i32* %i, align 4, !dbg !4059
  call void @llvm.dbg.value(metadata i32 %125, metadata !3599, metadata !DIExpression()), !dbg !3646
  %cmp506 = icmp ult i32 %125, %11, !dbg !4060
  br i1 %cmp506, label %for.body508, label %for.end535, !dbg !4061

for.body508:                                      ; preds = %for.cond505
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #7, !dbg !4062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124) #7, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %125, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idxprom510 = zext i32 %125 to i64, !dbg !4064
  %arrayidx511 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call25, i64 %idxprom510, !dbg !4064
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx511, align 8, !dbg !4064
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %126, metadata !3592, metadata !DIExpression()), !dbg !3646
  %aux512 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i64 0, i32 2, !dbg !4065
  store i8* null, i8** %aux512, align 8, !dbg !4066
  %call513 = call %struct.VEC_basic_block_heap* @get_dominated_by(i32 1, %struct.basic_block_def* %126) #6, !dbg !4067
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call513, metadata !3644, metadata !DIExpression()), !dbg !4057
  store %struct.VEC_basic_block_heap* %call513, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !4068
  call void @llvm.dbg.value(metadata i32 0, metadata !3645, metadata !DIExpression()), !dbg !4057
  br label %for.cond514, !dbg !4069

for.cond514:                                      ; preds = %for.inc530, %for.body508
  %127 = phi %struct.VEC_basic_block_heap* [ %call513, %for.body508 ], [ %.pre, %for.inc530 ], !dbg !4071
  %j509.0 = phi i32 [ 0, %for.body508 ], [ %inc531, %for.inc530 ], !dbg !4073
  call void @llvm.dbg.value(metadata i32 %j509.0, metadata !3645, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %127, metadata !3644, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %127, metadata !3644, metadata !DIExpression()), !dbg !4057
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %127, i64 0, i32 0, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %dominated, metadata !3639, metadata !DIExpression(DW_OP_deref)), !dbg !4057
  %call520 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base, i32 %j509.0, %struct.basic_block_def** nonnull %dominated) #8, !dbg !4071
  %tobool521 = icmp eq i32 %call520, 0, !dbg !4074
  br i1 %tobool521, label %for.end532, label %for.body522, !dbg !4074

for.body522:                                      ; preds = %for.cond514
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %dominated, align 8, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %128, metadata !3639, metadata !DIExpression()), !dbg !4057
  %call523 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %128) #6, !dbg !4078
  %tobool524 = icmp eq i8 %call523, 0, !dbg !4078
  br i1 %tobool524, label %if.end526, label %for.inc530, !dbg !4079

if.end526:                                        ; preds = %for.body522
  %129 = load i32, i32* %i, align 4, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %129, metadata !3599, metadata !DIExpression()), !dbg !3646
  %idxprom527 = zext i32 %129 to i64, !dbg !4081
  %arrayidx528 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %58, i64 %idxprom527, !dbg !4081
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx528, align 8, !dbg !4081
  %call529 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %130, %struct.basic_block_def* %first_active_latch.1.lcssa) #6, !dbg !4082
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call529, metadata !3643, metadata !DIExpression()), !dbg !4057
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %dominated, align 8, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %131, metadata !3639, metadata !DIExpression()), !dbg !4057
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %131, %struct.basic_block_def* %call529) #6, !dbg !4084
  br label %for.inc530, !dbg !4085

for.inc530:                                       ; preds = %for.body522, %if.end526
  %inc531 = add i32 %j509.0, 1, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %inc531, metadata !3645, metadata !DIExpression()), !dbg !4057
  %.pre = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !4071
  br label %for.cond514, !dbg !4087, !llvm.loop !4088

for.end532:                                       ; preds = %for.cond514
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !3644, metadata !DIExpression(DW_OP_deref)), !dbg !4057
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %dom_bbs) #8, !dbg !4090
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #7, !dbg !4091
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #7, !dbg !4091
  %132 = load i32, i32* %i, align 4, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %132, metadata !3599, metadata !DIExpression()), !dbg !3646
  %inc534 = add i32 %132, 1, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %inc534, metadata !3599, metadata !DIExpression()), !dbg !3646
  br label %for.cond505, !dbg !4093, !llvm.loop !4094

for.end535:                                       ; preds = %for.cond505
  call void @free(i8* %call293) #6, !dbg !4096
  %133 = bitcast %struct.basic_block_def** %call25 to i8*, !dbg !4097
  call void @free(i8* %133) #6, !dbg !4098
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %bbs_to_scale.1) #6, !dbg !4099
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3616, metadata !DIExpression()), !dbg !3646
  br label %cleanup, !dbg !4100

cleanup:                                          ; preds = %for.end535, %if.then44
  %retval.0 = phi i8 [ 1, %for.end535 ], [ 0, %if.then44 ], !dbg !3646
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #7, !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4101
  ret i8 %retval.0, !dbg !4101
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_loops_to(%struct.loop** %copied_loops, i32 %n, %struct.loop* %target) unnamed_addr #5 !dbg !4102 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop** %copied_loops, metadata !4106, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 %n, metadata !4107, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata %struct.loop* %target, metadata !4108, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4110, metadata !DIExpression()), !dbg !4111
  %0 = sext i32 %n to i64, !dbg !4112
  br label %for.cond, !dbg !4112

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !4114
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4110, metadata !DIExpression()), !dbg !4111
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !4115
  br i1 %cmp, label %for.body, label %for.end, !dbg !4117

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.loop*, %struct.loop** %copied_loops, i64 %indvars.iv, !dbg !4118
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4118
  %call = tail call %struct.loop* @duplicate_loop(%struct.loop* %1, %struct.loop* %target) #8, !dbg !4120
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !4109, metadata !DIExpression()), !dbg !4111
  %2 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4121
  tail call void @duplicate_subloops(%struct.loop* %2, %struct.loop* %call) #8, !dbg !4122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4123
  call void @llvm.dbg.value(metadata i32 undef, metadata !4110, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4111
  br label %for.cond, !dbg !4124, !llvm.loop !4125

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4127
}

declare dso_local void @copy_bbs(%struct.basic_block_def**, i32, %struct.basic_block_def**, %struct.edge_def**, i32, %struct.edge_def**, %struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !4128 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !4132, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !4133, metadata !DIExpression()), !dbg !4134
  %call = tail call fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 1) #8, !dbg !4135
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !4135
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !4135
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4135

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !4135
  br label %cond.end, !dbg !4135

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4135
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %cond, %struct.edge_def* %obj_) #8, !dbg !4135
  ret %struct.edge_def** %call1, !dbg !4135
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_zero_probability(%struct.edge_def* %e) unnamed_addr #5 !dbg !4136 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %ae = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4140, metadata !DIExpression()), !dbg !4150
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !4151
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4141, metadata !DIExpression()), !dbg !4150
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4152
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4152
  %2 = bitcast %struct.edge_def** %ae to i8*, !dbg !4153
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4153
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4144, metadata !DIExpression()), !dbg !4150
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !4154
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4154
  %tobool = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !4154
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4154

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !4154
  br label %cond.end, !dbg !4154

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4154
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4154
  call void @llvm.dbg.value(metadata i32 %call, metadata !4145, metadata !DIExpression()), !dbg !4150
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !4155
  %4 = load i64, i64* %count, align 8, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %4, metadata !4146, metadata !DIExpression()), !dbg !4150
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !4156
  %5 = load i32, i32* %probability, align 4, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %5, metadata !4148, metadata !DIExpression()), !dbg !4150
  %cmp = icmp ugt i32 %call, 1, !dbg !4157
  br i1 %cmp, label %cond.end4, label %cond.true2, !dbg !4157

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 938, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4157
  br label %cond.end4, !dbg !4157

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %sub = add i32 %call, -1, !dbg !4158
  %conv = zext i32 %sub to i64, !dbg !4159
  %div = sdiv i64 %4, %conv, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %div, metadata !4147, metadata !DIExpression()), !dbg !4150
  %div7 = udiv i32 %5, %sub, !dbg !4161
  call void @llvm.dbg.value(metadata i32 %div7, metadata !4149, metadata !DIExpression()), !dbg !4150
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4162
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !4162
  %call9 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4162
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4162
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 0, !dbg !4162
  store i32 %8, i32* %7, align 8, !dbg !4162
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4162
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 1, !dbg !4162
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !4162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !4162
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !4162
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4164
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4164
  br label %for.cond, !dbg !4162

for.cond:                                         ; preds = %for.inc, %cond.end4
  %last.0 = phi %struct.edge_def* [ null, %cond.end4 ], [ %last.1, %for.inc ], !dbg !4166
  call void @llvm.dbg.value(metadata %struct.edge_def* %last.0, metadata !4144, metadata !DIExpression()), !dbg !4150
  %13 = load i32, i32* %11, align 8, !dbg !4167
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !4167
  call void @llvm.dbg.value(metadata %struct.edge_def** %ae, metadata !4143, metadata !DIExpression(DW_OP_deref)), !dbg !4150
  %call10 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %ae) #8, !dbg !4167
  %tobool11 = icmp eq i8 %call10, 0, !dbg !4162
  br i1 %tobool11, label %for.end, label %for.body, !dbg !4162

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %ae, align 8, !dbg !4168
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4143, metadata !DIExpression()), !dbg !4150
  %cmp12 = icmp eq %struct.edge_def* %15, %e, !dbg !4171
  br i1 %cmp12, label %for.inc, label %if.end, !dbg !4172

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4143, metadata !DIExpression()), !dbg !4150
  %probability14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 8, !dbg !4173
  %16 = load i32, i32* %probability14, align 4, !dbg !4174
  %add = add i32 %16, %div7, !dbg !4174
  store i32 %add, i32* %probability14, align 4, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4143, metadata !DIExpression()), !dbg !4150
  %count15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 9, !dbg !4175
  %17 = load i64, i64* %count15, align 8, !dbg !4176
  %add16 = add nsw i64 %17, %div, !dbg !4176
  store i64 %add16, i64* %count15, align 8, !dbg !4176
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4143, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4144, metadata !DIExpression()), !dbg !4150
  br label %for.inc, !dbg !4177

for.inc:                                          ; preds = %for.body, %if.end
  %last.1 = phi %struct.edge_def* [ %15, %if.end ], [ %last.0, %for.body ], !dbg !4150
  call void @llvm.dbg.value(metadata %struct.edge_def* %last.1, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4142, metadata !DIExpression(DW_OP_deref)), !dbg !4150
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4167
  br label %for.cond, !dbg !4167, !llvm.loop !4178

for.end:                                          ; preds = %for.cond
  %last.0.lcssa = phi %struct.edge_def* [ %last.0, %for.cond ], !dbg !4166
  call void @llvm.dbg.value(metadata %struct.edge_def* %last.0.lcssa, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.edge_def* %last.0.lcssa, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.edge_def* %last.0.lcssa, metadata !4144, metadata !DIExpression()), !dbg !4150
  %rem = urem i32 %5, %sub, !dbg !4180
  %probability18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %last.0.lcssa, i64 0, i32 8, !dbg !4181
  %18 = load i32, i32* %probability18, align 4, !dbg !4182
  %add19 = add i32 %18, %rem, !dbg !4182
  store i32 %add19, i32* %probability18, align 4, !dbg !4182
  %rem22 = srem i64 %4, %conv, !dbg !4183
  %count23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %last.0.lcssa, i64 0, i32 9, !dbg !4184
  %19 = load i64, i64* %count23, align 8, !dbg !4185
  %add24 = add nsw i64 %19, %rem22, !dbg !4185
  store i64 %add24, i64* %count23, align 8, !dbg !4185
  store i32 0, i32* %probability, align 4, !dbg !4186
  store i64 0, i64* %count, align 8, !dbg !4187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4188
  ret void, !dbg !4188
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4189 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4198, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4199, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4201, metadata !DIExpression()), !dbg !4202
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4203
  %1 = load i64, i64* %0, align 8, !dbg !4203
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4204
  store i64 %1, i64* %2, align 8, !dbg !4204
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4205
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4206
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4207
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4210
  br label %while.body, !dbg !4210

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4211
  br i1 %tobool, label %if.then, label %if.end, !dbg !4212

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4213
  br label %while.end, !dbg !4215

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4216

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4210, !llvm.loop !4217

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4219

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4219
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4221
  %7 = load i32, i32* %indx9, align 8, !dbg !4221
  %cmp11 = icmp eq i32 %7, 0, !dbg !4222
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4223

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4224
  %8 = load i32, i32* %indx14, align 8, !dbg !4224
  %mul = shl i32 %8, 7, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4200, metadata !DIExpression()), !dbg !4202
  br label %if.end15, !dbg !4226

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4200, metadata !DIExpression()), !dbg !4202
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4227
  store i32 0, i32* %word_no, align 8, !dbg !4228
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4229
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4229
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4230
  store i64 %9, i64* %bits21, align 8, !dbg !4231
  %tobool23 = icmp eq i64 %9, 0, !dbg !4232
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4232
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4233
  call void @llvm.dbg.value(metadata i32 %add, metadata !4200, metadata !DIExpression()), !dbg !4202
  store i32 %add, i32* %bit_no, align 4, !dbg !4234
  ret void, !dbg !4235
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4236 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4240, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4241, metadata !DIExpression()), !dbg !4245
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4246
  %0 = load i64, i64* %bits, align 8, !dbg !4246
  %tobool = icmp eq i64 %0, 0, !dbg !4247
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4248

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4249
  br label %next_bit, !dbg !4252

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4242), !dbg !4253
  br label %while.cond, !dbg !4252

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4254
  %and = and i64 %2, 1, !dbg !4255
  %tobool2 = icmp eq i64 %and, 0, !dbg !4256
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4252

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4257
  store i64 %shr, i64* %bits, align 8, !dbg !4257
  %3 = load i32, i32* %bit_no, align 4, !dbg !4259
  %add = add i32 %3, 1, !dbg !4259
  store i32 %add, i32* %bit_no, align 4, !dbg !4259
  %.pre = load i64, i64* %bits, align 8, !dbg !4254
  br label %while.cond, !dbg !4252, !llvm.loop !4260

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4262
  %sub = add i32 %4, 63, !dbg !4263
  %div = and i32 %sub, -64, !dbg !4264
  store i32 %div, i32* %bit_no, align 4, !dbg !4265
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4266
  %5 = load i32, i32* %word_no, align 8, !dbg !4267
  %inc = add i32 %5, 1, !dbg !4267
  store i32 %inc, i32* %word_no, align 8, !dbg !4267
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4268
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4268
  br label %while.body6, !dbg !4269

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4270

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4271
  %cmp = icmp eq i32 %8, 2, !dbg !4272
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4268
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4270

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4249
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4249
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4249
  store i64 %10, i64* %bits, align 8, !dbg !4273
  %tobool14 = icmp eq i64 %10, 0, !dbg !4274
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4276

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4277
  %add17 = add i32 %11, 64, !dbg !4277
  store i32 %add17, i32* %bit_no, align 4, !dbg !4277
  %12 = load i32, i32* %word_no, align 8, !dbg !4278
  %inc19 = add i32 %12, 1, !dbg !4278
  store i32 %inc19, i32* %word_no, align 8, !dbg !4278
  br label %while.cond7, !dbg !4270, !llvm.loop !4279

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4268
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4281
  %14 = load i64, i64* %13, align 8, !dbg !4281
  store i64 %14, i64* %6, align 8, !dbg !4282
  %tobool24 = icmp eq i64 %14, 0, !dbg !4283
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4285

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4285
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4286
  %16 = load i32, i32* %indx, align 8, !dbg !4286
  %mul28 = shl i32 %16, 7, !dbg !4287
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4288
  store i32 0, i32* %word_no, align 8, !dbg !4289
  br label %while.body6, !dbg !4269, !llvm.loop !4290

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4292

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4292

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4245
  ret i8 %retval.0, !dbg !4292
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4293 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4297, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4298, metadata !DIExpression()), !dbg !4299
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4300
  %0 = load i64, i64* %bits, align 8, !dbg !4301
  %shr = lshr i64 %0, 1, !dbg !4301
  store i64 %shr, i64* %bits, align 8, !dbg !4301
  %1 = load i32, i32* %bit_no, align 4, !dbg !4302
  %add = add i32 %1, 1, !dbg !4302
  store i32 %add, i32* %bit_no, align 4, !dbg !4302
  ret void, !dbg !4303
}

declare dso_local %struct.VEC_basic_block_heap* @get_dominated_by(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def** %ptr) unnamed_addr #0 !dbg !4304 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4310, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4311, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %ptr, metadata !4312, metadata !DIExpression()), !dbg !4313
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !4314
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4314

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4314
  %0 = load i32, i32* %num, align 8, !dbg !4314
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4314
  br i1 %cmp, label %if.then, label %if.else, !dbg !4316

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4317
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4317
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4317
  br label %return, !dbg !4317

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4319

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.basic_block_def* [ null, %if.else ], [ %1, %if.then ], !dbg !4321
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4321
  store %struct.basic_block_def* %storemerge, %struct.basic_block_def** %ptr, align 8, !dbg !4321
  ret i32 %retval.0, !dbg !4316
}

declare dso_local %struct.basic_block_def* @nearest_common_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @mfb_keep_just(%struct.edge_def* %e) #5 !dbg !4322 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4324, metadata !DIExpression()), !dbg !4325
  %0 = load %struct.edge_def*, %struct.edge_def** @mfb_kj_edge, align 8, !dbg !4326
  %cmp = icmp ne %struct.edge_def* %0, %e, !dbg !4327
  %conv1 = zext i1 %cmp to i8, !dbg !4328
  ret i8 %conv1, !dbg !4329
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @create_preheader(%struct.loop* %loop, i32 %flags) local_unnamed_addr #5 !dbg !4330 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4334, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4335, metadata !DIExpression()), !dbg !4348
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4349
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4349
  call void @llvm.dbg.value(metadata i32 0, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i8 0, metadata !4340, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4343, metadata !DIExpression()), !dbg !4348
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4350
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4350
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4351
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4351
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4351
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 0, !dbg !4351
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !4351
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4351
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4351
  store i32 %5, i32* %4, align 8, !dbg !4351
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4351
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4351
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !4351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4351
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4351
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4353
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4353
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4355
  br label %for.cond, !dbg !4351

for.cond:                                         ; preds = %for.inc, %entry
  %irred.0 = phi i8 [ 0, %entry ], [ %irred.1, %for.inc ], !dbg !4358
  %nentry.0 = phi i32 [ 0, %entry ], [ %nentry.1, %for.inc ], !dbg !4359
  %one_succ_pred.0 = phi %struct.edge_def* [ null, %entry ], [ %one_succ_pred.2, %for.inc ], !dbg !4360
  %single_entry.0 = phi %struct.edge_def* [ null, %entry ], [ %single_entry.1, %for.inc ], !dbg !4361
  call void @llvm.dbg.value(metadata %struct.edge_def* %single_entry.0, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.0, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %nentry.0, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i8 %irred.0, metadata !4340, metadata !DIExpression()), !dbg !4348
  %10 = load i32, i32* %8, align 8, !dbg !4362
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !4362
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4336, metadata !DIExpression(DW_OP_deref)), !dbg !4348
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #8, !dbg !4362
  %tobool = icmp eq i8 %call1, 0, !dbg !4351
  br i1 %tobool, label %for.end, label %for.body, !dbg !4351

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4363
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4336, metadata !DIExpression()), !dbg !4348
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4364
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4364
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4365
  %cmp = icmp eq %struct.basic_block_def* %13, %14, !dbg !4366
  br i1 %cmp, label %for.inc, label %if.end, !dbg !4367

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4336, metadata !DIExpression()), !dbg !4348
  %flags2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !4368
  %15 = load i32, i32* %flags2, align 8, !dbg !4368
  %.lobit = lshr i32 %15, 7, !dbg !4369
  %16 = trunc i32 %.lobit to i8, !dbg !4370
  %17 = and i8 %16, 1, !dbg !4370
  %conv5 = or i8 %irred.0, %17, !dbg !4370
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !4340, metadata !DIExpression()), !dbg !4348
  %inc = add nsw i32 %nentry.0, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4336, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4336, metadata !DIExpression()), !dbg !4348
  %call7 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %13) #8, !dbg !4372
  %tobool8 = icmp eq i8 %call7, 0, !dbg !4372
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4374
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !4336, metadata !DIExpression()), !dbg !4348
  %spec.select = select i1 %tobool8, %struct.edge_def* %one_succ_pred.0, %struct.edge_def* %18, !dbg !4375
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !4342, metadata !DIExpression()), !dbg !4348
  br label %for.inc, !dbg !4376

for.inc:                                          ; preds = %for.body, %if.end
  %irred.1 = phi i8 [ %conv5, %if.end ], [ %irred.0, %for.body ], !dbg !4348
  %nentry.1 = phi i32 [ %inc, %if.end ], [ %nentry.0, %for.body ], !dbg !4348
  %one_succ_pred.2 = phi %struct.edge_def* [ %spec.select, %if.end ], [ %one_succ_pred.0, %for.body ], !dbg !4348
  %single_entry.1 = phi %struct.edge_def* [ %12, %if.end ], [ %single_entry.0, %for.body ], !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %single_entry.1, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.2, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %nentry.1, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i8 %irred.1, metadata !4340, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4344, metadata !DIExpression(DW_OP_deref)), !dbg !4348
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4362
  br label %for.cond, !dbg !4362, !llvm.loop !4377

for.end:                                          ; preds = %for.cond
  %irred.0.lcssa = phi i8 [ %irred.0, %for.cond ], !dbg !4358
  %nentry.0.lcssa = phi i32 [ %nentry.0, %for.cond ], !dbg !4359
  %one_succ_pred.0.lcssa = phi %struct.edge_def* [ %one_succ_pred.0, %for.cond ], !dbg !4360
  %single_entry.0.lcssa = phi %struct.edge_def* [ %single_entry.0, %for.cond ], !dbg !4361
  call void @llvm.dbg.value(metadata i8 %irred.0.lcssa, metadata !4340, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %nentry.0.lcssa, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.0.lcssa, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %single_entry.0.lcssa, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i8 %irred.0.lcssa, metadata !4340, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %nentry.0.lcssa, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.0.lcssa, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %single_entry.0.lcssa, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i8 %irred.0.lcssa, metadata !4340, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %nentry.0.lcssa, metadata !4339, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.0.lcssa, metadata !4342, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.edge_def* %single_entry.0.lcssa, metadata !4343, metadata !DIExpression()), !dbg !4348
  switch i32 %nentry.0.lcssa, label %if.end43 [
    i32 0, label %cond.true
    i32 1, label %if.then14
  ], !dbg !4379

cond.true:                                        ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1346, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4379
  br label %if.end43, !dbg !4380

if.then14:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata i8 0, metadata !4345, metadata !DIExpression()), !dbg !4381
  %src15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %single_entry.0.lcssa, i64 0, i32 0, !dbg !4382
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %src15, align 8, !dbg !4382
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4384
  %cfg = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 1, !dbg !4384
  %21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4384
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %21, i64 0, i32 0, !dbg !4384
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4384
  %cmp16 = icmp eq %struct.basic_block_def* %19, %22, !dbg !4385
  br i1 %cmp16, label %if.end39, label %if.else, !dbg !4386

if.else:                                          ; preds = %if.then14
  %and19 = and i32 %flags, 1, !dbg !4387
  %tobool20 = icmp eq i32 %and19, 0, !dbg !4387
  br i1 %tobool20, label %if.else25, label %land.lhs.true, !dbg !4390

land.lhs.true:                                    ; preds = %if.else
  %call22 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %19) #8, !dbg !4391
  %tobool23 = icmp eq i8 %call22, 0, !dbg !4391
  br i1 %tobool23, label %if.end39, label %if.else25, !dbg !4392

if.else25:                                        ; preds = %land.lhs.true, %if.else
  %and26 = and i32 %flags, 2, !dbg !4393
  %tobool27 = icmp eq i32 %and26, 0, !dbg !4393
  br i1 %tobool27, label %if.end39, label %land.lhs.true28, !dbg !4395

land.lhs.true28:                                  ; preds = %if.else25
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src15, align 8, !dbg !4396
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 7, !dbg !4396
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4396
  %24 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4396
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %24, i64 0, i32 1, !dbg !4396
  %25 = bitcast %struct.rtx_def** %end_ to i32**, !dbg !4396
  %26 = load i32*, i32** %25, align 8, !dbg !4396
  %bf.load = load i32, i32* %26, align 8, !dbg !4396
  %bf.clear = and i32 %bf.load, 65535, !dbg !4396
  %cmp30 = icmp eq i32 %bf.clear, 9, !dbg !4396
  br i1 %cmp30, label %if.then36, label %lor.lhs.false, !dbg !4397

lor.lhs.false:                                    ; preds = %land.lhs.true28
  %call33 = call fastcc zeroext i8 @has_preds_from_loop(%struct.basic_block_def* %23, %struct.loop* %loop) #8, !dbg !4398
  %tobool35 = icmp eq i8 %call33, 0, !dbg !4398
  br i1 %tobool35, label %if.end39, label %if.then36, !dbg !4399

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true28
  call void @llvm.dbg.value(metadata i8 1, metadata !4345, metadata !DIExpression()), !dbg !4381
  br label %if.end39, !dbg !4400

if.end39:                                         ; preds = %land.lhs.true, %lor.lhs.false, %if.else25, %if.then36, %if.then14
  %need_forwarder_block.2 = phi i1 [ true, %if.then14 ], [ true, %land.lhs.true ], [ true, %if.then36 ], [ false, %lor.lhs.false ], [ false, %if.else25 ]
  br i1 %need_forwarder_block.2, label %if.end43, label %cleanup103

if.end43:                                         ; preds = %cond.true, %if.end39, %for.end
  %call44 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !4401
  store %struct.edge_def* %call44, %struct.edge_def** @mfb_kj_edge, align 8, !dbg !4402
  %flags45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call44, i64 0, i32 7, !dbg !4403
  %27 = load i32, i32* %flags45, align 8, !dbg !4403
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4404
  %call51 = call %struct.edge_def* @make_forwarder_block(%struct.basic_block_def* %28, i8 (%struct.edge_def*)* nonnull @mfb_keep_just, void (%struct.basic_block_def*)* null) #6, !dbg !4405
  call void @llvm.dbg.value(metadata %struct.edge_def* %call51, metadata !4337, metadata !DIExpression()), !dbg !4348
  %src52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call51, i64 0, i32 0, !dbg !4406
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %src52, align 8, !dbg !4406
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %29, metadata !4338, metadata !DIExpression()), !dbg !4348
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call51, i64 0, i32 1, !dbg !4407
  %30 = bitcast %struct.basic_block_def** %dest to i64*, !dbg !4407
  %31 = load i64, i64* %30, align 8, !dbg !4407
  %32 = bitcast %struct.basic_block_def** %header to i64*, !dbg !4408
  store i64 %31, i64* %32, align 8, !dbg !4408
  %33 = and i32 %27, 1, !dbg !4409
  %tobool54 = icmp eq i32 %33, 0, !dbg !4409
  br i1 %tobool54, label %if.end70, label %if.then55, !dbg !4411

if.then55:                                        ; preds = %if.end43
  %tobool56 = icmp eq %struct.edge_def* %one_succ_pred.0.lcssa, null, !dbg !4412
  br i1 %tobool56, label %if.else58, label %if.then57, !dbg !4415

if.then57:                                        ; preds = %if.then55
  call void @llvm.dbg.value(metadata %struct.edge_def* %one_succ_pred.0.lcssa, metadata !4336, metadata !DIExpression()), !dbg !4348
  br label %if.end67, !dbg !4416

if.else58:                                        ; preds = %if.then55
  %preds59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 0, !dbg !4417
  %34 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds59, align 8, !dbg !4417
  %tobool60 = icmp eq %struct.VEC_edge_gc* %34, null, !dbg !4417
  br i1 %tobool60, label %cond.end64, label %cond.true61, !dbg !4417

cond.true61:                                      ; preds = %if.else58
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %34, i64 0, i32 0, !dbg !4417
  br label %cond.end64, !dbg !4417

cond.end64:                                       ; preds = %if.else58, %cond.true61
  %cond65 = phi %struct.VEC_edge_base* [ %base, %cond.true61 ], [ null, %if.else58 ], !dbg !4417
  %call66 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond65, i32 0) #8, !dbg !4417
  call void @llvm.dbg.value(metadata %struct.edge_def* %call66, metadata !4336, metadata !DIExpression()), !dbg !4348
  br label %if.end67

if.end67:                                         ; preds = %cond.end64, %if.then57
  %storemerge = phi %struct.edge_def* [ %call66, %cond.end64 ], [ %one_succ_pred.0.lcssa, %if.then57 ], !dbg !4418
  store %struct.edge_def* %storemerge, %struct.edge_def** %e, align 8, !dbg !4418
  call void @llvm.dbg.value(metadata %struct.edge_def* %storemerge, metadata !4336, metadata !DIExpression()), !dbg !4348
  %src68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %storemerge, i64 0, i32 0, !dbg !4419
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src68, align 8, !dbg !4419
  %call69 = call zeroext i8 @move_block_after(%struct.basic_block_def* %29, %struct.basic_block_def* %35) #6, !dbg !4420
  br label %if.end70, !dbg !4421

if.end70:                                         ; preds = %if.end43, %if.end67
  %tobool71 = icmp eq i8 %irred.0.lcssa, 0, !dbg !4422
  br i1 %tobool71, label %if.end78, label %if.then72, !dbg !4424

if.then72:                                        ; preds = %if.end70
  %flags73 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 13, !dbg !4425
  %36 = load i32, i32* %flags73, align 8, !dbg !4427
  %or74 = or i32 %36, 4, !dbg !4427
  store i32 %or74, i32* %flags73, align 8, !dbg !4427
  %call75 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %29) #8, !dbg !4428
  %flags76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call75, i64 0, i32 7, !dbg !4429
  %37 = load i32, i32* %flags76, align 8, !dbg !4430
  %or77 = or i32 %37, 128, !dbg !4430
  store i32 %or77, i32* %flags76, align 8, !dbg !4430
  br label %if.end78, !dbg !4431

if.end78:                                         ; preds = %if.end70, %if.then72
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4432
  %tobool79 = icmp eq %struct._IO_FILE* %38, null, !dbg !4432
  br i1 %tobool79, label %if.end82, label %if.then80, !dbg !4434

if.then80:                                        ; preds = %if.end78
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !4435
  %39 = load i32, i32* %num, align 8, !dbg !4435
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %39) #6, !dbg !4436
  br label %if.end82, !dbg !4436

if.end82:                                         ; preds = %if.end78, %if.then80
  %and83 = and i32 %flags, 2, !dbg !4437
  %tobool84 = icmp eq i32 %and83, 0, !dbg !4437
  br i1 %tobool84, label %cleanup103, label %if.then85, !dbg !4439

if.then85:                                        ; preds = %if.end82
  %call86 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %29) #8, !dbg !4440
  %flags87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call86, i64 0, i32 7, !dbg !4440
  %40 = load i32, i32* %flags87, align 8, !dbg !4440
  %and88 = and i32 %40, 1, !dbg !4440
  %tobool89 = icmp eq i32 %and88, 0, !dbg !4440
  br i1 %tobool89, label %cond.true98, label %land.lhs.true90, !dbg !4440

land.lhs.true90:                                  ; preds = %if.then85
  %il91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 7, !dbg !4440
  %rtl92 = bitcast %union.basic_block_il_dependent* %il91 to %struct.rtl_bb_info**, !dbg !4440
  %41 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl92, align 8, !dbg !4440
  %end_93 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %41, i64 0, i32 1, !dbg !4440
  %42 = bitcast %struct.rtx_def** %end_93 to i32**, !dbg !4440
  %43 = load i32*, i32** %42, align 8, !dbg !4440
  %bf.load94 = load i32, i32* %43, align 8, !dbg !4440
  %bf.clear95 = and i32 %bf.load94, 65535, !dbg !4440
  %cmp96 = icmp eq i32 %bf.clear95, 9, !dbg !4440
  br i1 %cmp96, label %cond.true98, label %cleanup103, !dbg !4440

cond.true98:                                      ; preds = %if.then85, %land.lhs.true90
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4440
  br label %cleanup103, !dbg !4440

cleanup103:                                       ; preds = %if.end82, %land.lhs.true90, %cond.true98, %if.end39
  %retval.1 = phi %struct.basic_block_def* [ null, %if.end39 ], [ %29, %cond.true98 ], [ %29, %land.lhs.true90 ], [ %29, %if.end82 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4441
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4441
  ret %struct.basic_block_def* %retval.1, !dbg !4441
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4442 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4444, metadata !DIExpression()), !dbg !4445
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4446
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4446
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4446
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4446

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4446
  br label %cond.end, !dbg !4446

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4446
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4446
  %cmp = icmp eq i32 %call, 1, !dbg !4447
  %conv2 = zext i1 %cmp to i8, !dbg !4446
  ret i8 %conv2, !dbg !4448
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @has_preds_from_loop(%struct.basic_block_def* %block, %struct.loop* %loop) unnamed_addr #5 !dbg !4449 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %block, metadata !4453, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4454, metadata !DIExpression()), !dbg !4457
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4458
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4459
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4460
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %block, i64 0, i32 0, !dbg !4460
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !4460
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4460
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4460
  store i32 %4, i32* %3, align 8, !dbg !4460
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4460
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4460
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !4460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4460
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4460
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4462
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4462
  br label %for.cond, !dbg !4460

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !4464
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4464
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4455, metadata !DIExpression(DW_OP_deref)), !dbg !4457
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !4464
  %tobool = icmp eq i8 %call1, 0, !dbg !4460
  br i1 %tobool, label %cleanup, label %for.body, !dbg !4460

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !4455, metadata !DIExpression()), !dbg !4457
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 0, !dbg !4467
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4467
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 3, !dbg !4468
  %13 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4468
  %cmp = icmp eq %struct.loop* %13, %loop, !dbg !4469
  br i1 %cmp, label %cleanup, label %for.inc, !dbg !4470

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4456, metadata !DIExpression(DW_OP_deref)), !dbg !4457
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4464
  br label %for.cond, !dbg !4464, !llvm.loop !4471

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !4457
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4473
  ret i8 %retval.0, !dbg !4473
}

declare dso_local %struct.edge_def* @make_forwarder_block(%struct.basic_block_def*, i8 (%struct.edge_def*)*, void (%struct.basic_block_def*)*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4474 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4480, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4481, metadata !DIExpression()), !dbg !4482
  br label %land.end, !dbg !4483

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4483
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4483
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4483
  ret %struct.edge_def* %0, !dbg !4483
}

declare dso_local zeroext i8 @move_block_after(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @create_preheaders(i32 %flags) local_unnamed_addr #5 !dbg !4484 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4488, metadata !DIExpression()), !dbg !4496
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !4497
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4497
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !4498
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4498
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4499
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !4499
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4499
  %tobool = icmp eq %struct.loops* %3, null, !dbg !4499
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4501

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4489, metadata !DIExpression(DW_OP_deref)), !dbg !4496
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4495, metadata !DIExpression(DW_OP_deref)), !dbg !4496
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !4502
  br label %for.cond, !dbg !4502

for.cond:                                         ; preds = %for.body, %if.end
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4504
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !4495, metadata !DIExpression()), !dbg !4496
  %tobool1 = icmp eq %struct.loop* %4, null, !dbg !4502
  br i1 %tobool1, label %for.end, label %for.body, !dbg !4502

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !4495, metadata !DIExpression()), !dbg !4496
  %call = call %struct.basic_block_def* @create_preheader(%struct.loop* nonnull %4, i32 %flags) #8, !dbg !4506
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4489, metadata !DIExpression(DW_OP_deref)), !dbg !4496
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4495, metadata !DIExpression(DW_OP_deref)), !dbg !4496
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !4504
  br label %for.cond, !dbg !4504, !llvm.loop !4507

for.end:                                          ; preds = %for.cond
  call fastcc void @loops_state_set(i32 1) #8, !dbg !4509
  br label %cleanup, !dbg !4510

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4510
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4510
  ret void, !dbg !4510
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !4511 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4517, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4518, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4519, metadata !DIExpression()), !dbg !4523
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !4524
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4524
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4525
  store i32 0, i32* %idx, align 8, !dbg !4526
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4527
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !4527
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4527
  %tobool = icmp eq %struct.loops* %2, null, !dbg !4527
  br i1 %tobool, label %if.then, label %if.end, !dbg !4529

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4530
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4532
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4533
  br label %cleanup, !dbg !4534

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !4535
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !4535
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4536
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4537
  %and = and i32 %flags, 1, !dbg !4538
  %3 = xor i32 %and, 1, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %3, metadata !4522, metadata !DIExpression()), !dbg !4523
  %and4 = and i32 %flags, 4, !dbg !4540
  %tobool5 = icmp eq i32 %and4, 0, !dbg !4540
  br i1 %tobool5, label %if.else, label %for.cond.preheader, !dbg !4542

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !4543

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !4546
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4521, metadata !DIExpression()), !dbg !4523
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4547
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !4547
  %5 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !4547
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %5, i64 0, i32 1, !dbg !4547
  %6 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4547
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %6, null, !dbg !4547
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !4547

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %6, i64 0, i32 0, !dbg !4547
  br label %cond.end, !dbg !4547

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !4547
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !4520, metadata !DIExpression(DW_OP_deref)), !dbg !4523
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #8, !dbg !4547
  %tobool15 = icmp eq i32 %call14, 0, !dbg !4543
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !4543

for.body:                                         ; preds = %cond.end
  %7 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !4549
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !4520, metadata !DIExpression()), !dbg !4523
  %cmp = icmp eq %struct.loop* %7, null, !dbg !4551
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !4552

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 8, !dbg !4553
  %8 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !4553
  %cmp16 = icmp eq %struct.loop* %8, null, !dbg !4554
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !4555

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !4520, metadata !DIExpression()), !dbg !4523
  %num = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 0, !dbg !4556
  %9 = load i32, i32* %num, align 8, !dbg !4556
  %cmp18 = icmp slt i32 %9, %3, !dbg !4557
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !4558

if.then19:                                        ; preds = %land.lhs.true17
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4559
  %tobool21 = icmp eq %struct.VEC_int_heap* %10, null, !dbg !4559
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !4559

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !4559
  br label %cond.end26, !dbg !4559

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !4559
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !4520, metadata !DIExpression()), !dbg !4523
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %9) #8, !dbg !4559
  br label %for.inc, !dbg !4559

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4521, metadata !DIExpression()), !dbg !4523
  br label %for.cond, !dbg !4561, !llvm.loop !4562

if.else:                                          ; preds = %if.end
  %and31 = and i32 %flags, 2, !dbg !4564
  %tobool32 = icmp eq i32 %and31, 0, !dbg !4564
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4566
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 4, !dbg !4566
  %12 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !4566
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %12, i64 0, i32 3, !dbg !4566
  %13 = bitcast %struct.loop** %tree_root to i64*, !dbg !4566
  %14 = load i64, i64* %13, align 8, !dbg !4566
  %15 = bitcast %struct.loop** %aloop to i64*, !dbg !4566
  store i64 %14, i64* %15, align 8, !dbg !4566
  %16 = inttoptr i64 %14 to %struct.loop*, !dbg !4567
  br i1 %tobool32, label %while.cond79.preheader, label %for.cond36.preheader, !dbg !4567

for.cond36.preheader:                             ; preds = %if.else
  br label %for.cond36, !dbg !4568

while.cond79.preheader:                           ; preds = %if.else
  br label %while.cond79, !dbg !4571

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc40
  %17 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %18 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %19 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %20 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %21 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %22 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ], !dbg !4573
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !4575
  %23 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !4575
  %cmp38 = icmp eq %struct.loop* %23, null, !dbg !4576
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !4568

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa16 = phi %struct.loop* [ %17, %for.cond36 ]
  %.lcssa15 = phi %struct.loop* [ %18, %for.cond36 ]
  %.lcssa14 = phi %struct.loop* [ %19, %for.cond36 ]
  %.lcssa13 = phi %struct.loop* [ %20, %for.cond36 ]
  br label %while.cond, !dbg !4577

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 8, !dbg !4578
  %24 = bitcast %struct.loop** %inner41 to i64*, !dbg !4578
  %25 = load i64, i64* %24, align 8, !dbg !4578
  store i64 %25, i64* %15, align 8, !dbg !4579
  %26 = inttoptr i64 %25 to %struct.loop*, !dbg !4580
  br label %for.cond36, !dbg !4580, !llvm.loop !4581

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %27 = phi %struct.loop* [ %.lcssa16, %while.cond.preheader ], [ %43, %if.end74 ]
  %28 = phi %struct.loop* [ %.lcssa15, %while.cond.preheader ], [ %44, %if.end74 ]
  %29 = phi %struct.loop* [ %.lcssa14, %while.cond.preheader ], [ %44, %if.end74 ]
  %30 = phi %struct.loop* [ %.lcssa13, %while.cond.preheader ], [ %44, %if.end74 ], !dbg !4583
  call void @llvm.dbg.value(metadata %struct.loop* %30, metadata !4520, metadata !DIExpression()), !dbg !4523
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 0, !dbg !4586
  %31 = load i32, i32* %num43, align 8, !dbg !4586
  %cmp44 = icmp slt i32 %31, %3, !dbg !4587
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !4588

if.then45:                                        ; preds = %while.cond
  %32 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4589
  %tobool47 = icmp eq %struct.VEC_int_heap* %32, null, !dbg !4589
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !4589

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %32, i64 0, i32 0, !dbg !4589
  br label %cond.end52, !dbg !4589

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !4589
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !4520, metadata !DIExpression()), !dbg !4523
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %29, i64 0, i32 0, !dbg !4589
  %33 = load i32, i32* %num54, align 8, !dbg !4589
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %33) #8, !dbg !4589
  br label %if.end56, !dbg !4589

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !4520, metadata !DIExpression()), !dbg !4523
  %next = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 9, !dbg !4590
  %34 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !4590
  %tobool57 = icmp eq %struct.loop* %34, null, !dbg !4592
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !4520, metadata !DIExpression()), !dbg !4523
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !4593

if.then58:                                        ; preds = %if.end56
  %35 = ptrtoint %struct.loop* %34 to i64, !dbg !4593
  store i64 %35, i64* %15, align 8, !dbg !4594
  br label %for.cond60, !dbg !4597

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %36 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %37 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %38 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ], !dbg !4598
  call void @llvm.dbg.value(metadata %struct.loop* %38, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %38, i64 0, i32 8, !dbg !4600
  %39 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !4600
  %cmp62 = icmp eq %struct.loop* %39, null, !dbg !4601
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !4602

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 8, !dbg !4603
  %40 = bitcast %struct.loop** %inner65 to i64*, !dbg !4603
  %41 = load i64, i64* %40, align 8, !dbg !4603
  store i64 %41, i64* %15, align 8, !dbg !4604
  %42 = inttoptr i64 %41 to %struct.loop*, !dbg !4605
  br label %for.cond60, !dbg !4605, !llvm.loop !4606

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %28) #8, !dbg !4608
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !4608
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !4610

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %27, metadata !4520, metadata !DIExpression()), !dbg !4523
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %27) #8, !dbg !4611
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !4520, metadata !DIExpression()), !dbg !4523
  store %struct.loop* %call72, %struct.loop** %aloop, align 8, !dbg !4612
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa12 = phi %struct.loop* [ %36, %for.cond60 ]
  %.lcssa11 = phi %struct.loop* [ %38, %for.cond60 ], !dbg !4598
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !4520, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !4520, metadata !DIExpression()), !dbg !4523
  br label %if.end74, !dbg !4577

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %43 = phi %struct.loop* [ %.lcssa12, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %44 = phi %struct.loop* [ %.lcssa11, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !4577, !llvm.loop !4613

while.cond79:                                     ; preds = %while.cond79.preheader, %if.end111
  %45 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %69, %if.end111 ]
  %46 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %70, %if.end111 ]
  %47 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %71, %if.end111 ]
  %48 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %72, %if.end111 ]
  %49 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %73, %if.end111 ]
  %50 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %74, %if.end111 ]
  %51 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %75, %if.end111 ]
  %52 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %76, %if.end111 ], !dbg !4615
  call void @llvm.dbg.value(metadata %struct.loop* %52, metadata !4520, metadata !DIExpression()), !dbg !4523
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %52, i64 0, i32 0, !dbg !4618
  %53 = load i32, i32* %num81, align 8, !dbg !4618
  %cmp82 = icmp slt i32 %53, %3, !dbg !4619
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !4620

if.then83:                                        ; preds = %while.cond79
  %54 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4621
  %tobool85 = icmp eq %struct.VEC_int_heap* %54, null, !dbg !4621
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !4621

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %54, i64 0, i32 0, !dbg !4621
  br label %cond.end90, !dbg !4621

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !4621
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !4520, metadata !DIExpression()), !dbg !4523
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 0, !dbg !4621
  %55 = load i32, i32* %num92, align 8, !dbg !4621
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %55) #8, !dbg !4621
  br label %if.end94, !dbg !4621

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %50, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %50, i64 0, i32 8, !dbg !4622
  %56 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !4622
  %cmp96 = icmp eq %struct.loop* %56, null, !dbg !4624
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !4625

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !4626

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %49, metadata !4520, metadata !DIExpression()), !dbg !4523
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %49, i64 0, i32 8, !dbg !4628
  %57 = bitcast %struct.loop** %inner98 to i64*, !dbg !4628
  %58 = load i64, i64* %57, align 8, !dbg !4628
  store i64 %58, i64* %15, align 8, !dbg !4629
  %59 = inttoptr i64 %58 to %struct.loop*, !dbg !4630
  br label %if.end111, !dbg !4630

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %60 = phi %struct.loop* [ %45, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %61 = phi %struct.loop* [ %46, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %62 = phi %struct.loop* [ %47, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %63 = phi %struct.loop* [ %48, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !4631
  call void @llvm.dbg.value(metadata %struct.loop* %63, metadata !4520, metadata !DIExpression()), !dbg !4523
  %cmp101 = icmp eq %struct.loop* %63, null, !dbg !4632
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !4633

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %62, metadata !4520, metadata !DIExpression()), !dbg !4523
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %62, i64 0, i32 9, !dbg !4634
  %64 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !4634
  %cmp103 = icmp eq %struct.loop* %64, null, !dbg !4635
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %65 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !4636
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !4520, metadata !DIExpression()), !dbg !4523
  br i1 %65, label %while.body104, label %while.end106, !dbg !4626

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %61) #8, !dbg !4637
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !4520, metadata !DIExpression()), !dbg !4523
  store %struct.loop* %call105, %struct.loop** %aloop, align 8, !dbg !4638
  br label %while.cond100, !dbg !4626, !llvm.loop !4639

while.end106:                                     ; preds = %land.end
  %.lcssa10 = phi %struct.loop* [ %60, %land.end ]
  %.lcssa = phi %struct.loop* [ %61, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !4641
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !4643

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa10, metadata !4520, metadata !DIExpression()), !dbg !4523
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa10, i64 0, i32 9, !dbg !4644
  %66 = bitcast %struct.loop** %next110 to i64*, !dbg !4644
  %67 = load i64, i64* %66, align 8, !dbg !4644
  store i64 %67, i64* %15, align 8, !dbg !4645
  %68 = inttoptr i64 %67 to %struct.loop*
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.then97
  %69 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %70 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %71 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %72 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %73 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %74 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %75 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %76 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  br label %while.cond79, !dbg !4571, !llvm.loop !4646

if.end114.loopexit:                               ; preds = %while.end106
  br label %if.end114, !dbg !4648

if.end114.loopexit1:                              ; preds = %if.else67
  br label %if.end114, !dbg !4648

if.end114.loopexit2:                              ; preds = %cond.end
  br label %if.end114, !dbg !4648

if.end114:                                        ; preds = %if.end114.loopexit2, %if.end114.loopexit1, %if.end114.loopexit
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !4648
  br label %cleanup, !dbg !4649

cleanup:                                          ; preds = %if.end114, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4649
  ret void, !dbg !4649
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !4650 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4654, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4655, metadata !DIExpression()), !dbg !4657
  %0 = bitcast i32* %anum to i8*, !dbg !4658
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4658
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4657
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4657
  br label %while.cond, !dbg !4659

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4660
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !4660
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4660

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !4660
  br label %cond.end, !dbg !4660

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !4660
  %2 = load i32, i32* %idx, align 8, !dbg !4660
  call void @llvm.dbg.value(metadata i32* %anum, metadata !4656, metadata !DIExpression(DW_OP_deref)), !dbg !4657
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !4660
  %tobool2 = icmp eq i32 %call, 0, !dbg !4659
  br i1 %tobool2, label %while.end, label %while.body, !dbg !4659

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !4661
  %inc = add i32 %3, 1, !dbg !4661
  store i32 %inc, i32* %idx, align 8, !dbg !4661
  %4 = load i32, i32* %anum, align 4, !dbg !4663
  call void @llvm.dbg.value(metadata i32 %4, metadata !4656, metadata !DIExpression()), !dbg !4657
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !4664
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !4665
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !4666
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !4668, !llvm.loop !4669

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !4671
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4672
  br label %cleanup, !dbg !4673

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !4673

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4673
  ret void, !dbg !4673
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !4674 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4678, metadata !DIExpression()), !dbg !4679
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4680
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4680
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4680
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !4681
  %2 = load i32, i32* %state, align 8, !dbg !4682
  %or = or i32 %2, %flags, !dbg !4682
  store i32 %or, i32* %state, align 8, !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: nounwind uwtable
define dso_local void @force_single_succ_latches() local_unnamed_addr #5 !dbg !4684 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !4691
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4691
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !4692
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4692
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4688, metadata !DIExpression(DW_OP_deref)), !dbg !4693
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4689, metadata !DIExpression(DW_OP_deref)), !dbg !4693
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !4694
  br label %for.cond, !dbg !4694

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4696
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !4689, metadata !DIExpression()), !dbg !4693
  %tobool = icmp eq %struct.loop* %2, null, !dbg !4694
  br i1 %tobool, label %for.end, label %for.body, !dbg !4694

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !4689, metadata !DIExpression()), !dbg !4693
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 3, !dbg !4698
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4698
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !4689, metadata !DIExpression()), !dbg !4693
  %header = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 2, !dbg !4701
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4701
  %cmp = icmp eq %struct.basic_block_def* %3, %4, !dbg !4702
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !4703

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !4689, metadata !DIExpression()), !dbg !4693
  %call = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %3) #8, !dbg !4704
  %tobool2 = icmp eq i8 %call, 0, !dbg !4704
  br i1 %tobool2, label %land.lhs.true.if.end_crit_edge, label %for.inc, !dbg !4705

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4706
  %latch3.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre, i64 0, i32 3, !dbg !4707
  %.pre1 = load %struct.basic_block_def*, %struct.basic_block_def** %latch3.phi.trans.insert, align 8, !dbg !4708
  %header4.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre, i64 0, i32 2, !dbg !4707
  %.pre2 = load %struct.basic_block_def*, %struct.basic_block_def** %header4.phi.trans.insert, align 8, !dbg !4709
  br label %if.end, !dbg !4705

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body
  %5 = phi %struct.basic_block_def* [ %.pre2, %land.lhs.true.if.end_crit_edge ], [ %3, %for.body ], !dbg !4709
  %6 = phi %struct.basic_block_def* [ %.pre1, %land.lhs.true.if.end_crit_edge ], [ %3, %for.body ], !dbg !4708
  %call5 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %6, %struct.basic_block_def* %5) #6, !dbg !4710
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !4690, metadata !DIExpression()), !dbg !4693
  %call6 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call5) #6, !dbg !4711
  br label %for.inc, !dbg !4712

for.inc:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4688, metadata !DIExpression(DW_OP_deref)), !dbg !4693
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4689, metadata !DIExpression(DW_OP_deref)), !dbg !4693
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !4696
  br label %for.cond, !dbg !4696, !llvm.loop !4713

for.end:                                          ; preds = %for.cond
  call fastcc void @loops_state_set(i32 2) #8, !dbg !4715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4716
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4716
  ret void, !dbg !4716
}

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @loop_version(%struct.loop* %loop, i8* %cond_expr, %struct.basic_block_def** %condition_bb, i32 %then_prob, i32 %then_scale, i32 %else_scale, i8 zeroext %place_after) local_unnamed_addr #5 !dbg !4717 {
entry:
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4721, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i8* %cond_expr, metadata !4722, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %condition_bb, metadata !4723, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %then_prob, metadata !4724, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %then_scale, metadata !4725, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %else_scale, metadata !4726, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i8 %place_after, metadata !4727, metadata !DIExpression()), !dbg !4742
  %0 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !4743
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4743
  %1 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !4743
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4743
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !4744
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !4730, metadata !DIExpression()), !dbg !4742
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !4745
  %2 = load i32, i32* %flags, align 8, !dbg !4745
  %and = and i32 %2, 128, !dbg !4746
  call void @llvm.dbg.value(metadata i32 %and, metadata !4734, metadata !DIExpression()), !dbg !4742
  %and3 = and i32 %2, -129, !dbg !4747
  store i32 %and3, i32* %flags, align 8, !dbg !4747
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !4748
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4748
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !4728, metadata !DIExpression()), !dbg !4742
  %call4 = tail call zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call, i32 1, %struct.simple_bitmap_def* null, %struct.edge_def* null, %struct.VEC_edge_heap** null, i32 0) #6, !dbg !4749
  %tobool = icmp eq i8 %call4, 0, !dbg !4749
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4751

if.end:                                           ; preds = %entry
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4752
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !4729, metadata !DIExpression()), !dbg !4742
  %call6 = tail call fastcc %struct.basic_block_def* @lv_adjust_loop_entry_edge(%struct.basic_block_def* %3, %struct.basic_block_def* %4, %struct.edge_def* %call, i8* %cond_expr, i32 %then_prob) #8, !dbg !4753
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !4736, metadata !DIExpression()), !dbg !4742
  %tobool7 = icmp eq %struct.basic_block_def** %condition_bb, null, !dbg !4754
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4756

if.then8:                                         ; preds = %if.end
  store %struct.basic_block_def* %call6, %struct.basic_block_def** %condition_bb, align 8, !dbg !4757
  br label %if.end9, !dbg !4758

if.end9:                                          ; preds = %if.end, %if.then8
  %tobool10 = icmp eq %struct.basic_block_def* %call6, null, !dbg !4759
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4761

if.then11:                                        ; preds = %if.end9
  %5 = load i32, i32* %flags, align 8, !dbg !4762
  %or = or i32 %5, %and, !dbg !4762
  store i32 %or, i32* %flags, align 8, !dbg !4762
  br label %cleanup, !dbg !4764

if.end13:                                         ; preds = %if.end9
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4765
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4765
  %call14 = tail call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %6) #6, !dbg !4766
  %call15 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call14) #8, !dbg !4767
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !4731, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !4732, metadata !DIExpression(DW_OP_deref)), !dbg !4742
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !4733, metadata !DIExpression(DW_OP_deref)), !dbg !4742
  call void @extract_cond_bb_edges(%struct.basic_block_def* nonnull %call6, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !4768
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4769
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4769
  %call16 = call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %7) #6, !dbg !4770
  %call17 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call16) #8, !dbg !4771
  %8 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !4772
  call void @llvm.dbg.value(metadata %struct.edge_def* %8, metadata !4732, metadata !DIExpression()), !dbg !4742
  %9 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !4773
  call void @llvm.dbg.value(metadata %struct.edge_def* %9, metadata !4733, metadata !DIExpression()), !dbg !4742
  %call18 = call %struct.loop* @loopify(%struct.edge_def* %call15, %struct.edge_def* %call17, %struct.basic_block_def* nonnull %call6, %struct.edge_def* %8, %struct.edge_def* %9, i8 zeroext 0, i32 %then_scale, i32 %else_scale) #8, !dbg !4774
  call void @llvm.dbg.value(metadata %struct.loop* %call18, metadata !4735, metadata !DIExpression()), !dbg !4742
  call void @lv_flush_pending_stmts(%struct.edge_def* %call15) #6, !dbg !4775
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !4732, metadata !DIExpression(DW_OP_deref)), !dbg !4742
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !4733, metadata !DIExpression(DW_OP_deref)), !dbg !4742
  call void @extract_cond_bb_edges(%struct.basic_block_def* nonnull %call6, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !4776
  %10 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !4777
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !4733, metadata !DIExpression()), !dbg !4742
  call void @lv_flush_pending_stmts(%struct.edge_def* %10) #6, !dbg !4778
  %tobool19 = icmp eq i32 %and, 0, !dbg !4779
  br i1 %tobool19, label %if.end32, label %if.then20, !dbg !4781

if.then20:                                        ; preds = %if.end13
  %flags21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call6, i64 0, i32 13, !dbg !4782
  %11 = load i32, i32* %flags21, align 8, !dbg !4784
  %or22 = or i32 %11, 4, !dbg !4784
  store i32 %or22, i32* %flags21, align 8, !dbg !4784
  %call23 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !4785
  %flags24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 7, !dbg !4786
  %12 = load i32, i32* %flags24, align 8, !dbg !4787
  %or25 = or i32 %12, 128, !dbg !4787
  store i32 %or25, i32* %flags24, align 8, !dbg !4787
  %call26 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call18) #6, !dbg !4788
  %flags27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 7, !dbg !4789
  %13 = load i32, i32* %flags27, align 8, !dbg !4790
  %or28 = or i32 %13, 128, !dbg !4790
  store i32 %or28, i32* %flags27, align 8, !dbg !4790
  %call29 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* nonnull %call6) #8, !dbg !4791
  %flags30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call29, i64 0, i32 7, !dbg !4792
  %14 = load i32, i32* %flags30, align 8, !dbg !4793
  %or31 = or i32 %14, 128, !dbg !4793
  store i32 %or31, i32* %flags30, align 8, !dbg !4793
  br label %if.end32, !dbg !4794

if.end32:                                         ; preds = %if.end13, %if.then20
  %tobool33 = icmp eq i8 %place_after, 0, !dbg !4795
  br i1 %tobool33, label %if.end40, label %if.then34, !dbg !4796

if.then34:                                        ; preds = %if.end32
  %call35 = call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %call18) #6, !dbg !4797
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call35, metadata !4737, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata i32 0, metadata !4741, metadata !DIExpression()), !dbg !4798
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %call18, i64 0, i32 6, !dbg !4799
  br label %for.cond, !dbg !4802

for.cond:                                         ; preds = %for.body, %if.then34
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then34 ]
  %after.0.in = phi %struct.basic_block_def** [ %arrayidx, %for.body ], [ %latch, %if.then34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4741, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.basic_block_def* undef, metadata !4740, metadata !DIExpression()), !dbg !4798
  %15 = load i32, i32* %num_nodes, align 4, !dbg !4803
  %16 = zext i32 %15 to i64, !dbg !4804
  %cmp = icmp ult i64 %indvars.iv, %16, !dbg !4804
  br i1 %cmp, label %for.body, label %for.end, !dbg !4805

for.body:                                         ; preds = %for.cond
  %after.0 = load %struct.basic_block_def*, %struct.basic_block_def** %after.0.in, align 8, !dbg !4798
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after.0, metadata !4740, metadata !DIExpression()), !dbg !4798
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call35, i64 %indvars.iv, !dbg !4806
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4806
  %call37 = call zeroext i8 @move_block_after(%struct.basic_block_def* %17, %struct.basic_block_def* %after.0) #6, !dbg !4808
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4809
  br label %for.cond, !dbg !4810, !llvm.loop !4811

for.end:                                          ; preds = %for.cond
  %18 = bitcast %struct.basic_block_def** %call35 to i8*, !dbg !4813
  call void @free(i8* %18) #6, !dbg !4814
  br label %if.end40, !dbg !4815

if.end40:                                         ; preds = %if.end32, %for.end
  %call41 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !4816
  %call42 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call41) #6, !dbg !4817
  %call43 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call18) #6, !dbg !4818
  %call44 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call43) #6, !dbg !4819
  br label %cleanup, !dbg !4820

cleanup:                                          ; preds = %entry, %if.end40, %if.then11
  %retval.0 = phi %struct.loop* [ %call18, %if.end40 ], [ null, %if.then11 ], [ null, %entry ], !dbg !4742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4821
  ret %struct.loop* %retval.0, !dbg !4821
}

declare dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @lv_adjust_loop_entry_edge(%struct.basic_block_def* %first_head, %struct.basic_block_def* %second_head, %struct.edge_def* %e, i8* %cond_expr, i32 %then_prob) unnamed_addr #5 !dbg !4822 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first_head, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %second_head, metadata !4827, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4828, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i8* %cond_expr, metadata !4829, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %then_prob, metadata !4830, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !4831, metadata !DIExpression()), !dbg !4833
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !4834
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4834
  %cmp = icmp eq %struct.basic_block_def* %0, %second_head, !dbg !4834
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4834

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4834
  br label %cond.end, !dbg !4834

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %e) #6, !dbg !4835
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4831, metadata !DIExpression()), !dbg !4833
  tail call void @lv_add_condition_to_bb(%struct.basic_block_def* %first_head, %struct.basic_block_def* %second_head, %struct.basic_block_def* %call, i8* %cond_expr) #6, !dbg !4836
  %call1 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !4837
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !4828, metadata !DIExpression()), !dbg !4833
  %call2 = tail call i32 @current_ir_type() #6, !dbg !4838
  %cmp3 = icmp eq i32 %call2, 0, !dbg !4839
  %cond4 = select i1 %cmp3, i32 1024, i32 0, !dbg !4838
  %call5 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call, %struct.basic_block_def* %first_head, i32 %cond4) #6, !dbg !4840
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !4832, metadata !DIExpression()), !dbg !4833
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call5, i64 0, i32 8, !dbg !4841
  store i32 %then_prob, i32* %probability, align 4, !dbg !4842
  %sub = sub i32 10000, %then_prob, !dbg !4843
  %probability6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 8, !dbg !4844
  store i32 %sub, i32* %probability6, align 4, !dbg !4845
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 9, !dbg !4846
  %1 = load i64, i64* %count, align 8, !dbg !4846
  %2 = load i32, i32* %probability, align 4, !dbg !4846
  %conv = sext i32 %2 to i64, !dbg !4846
  %mul = mul nsw i64 %1, %conv, !dbg !4846
  %add = add nsw i64 %mul, 5000, !dbg !4846
  %div = sdiv i64 %add, 10000, !dbg !4846
  %count8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call5, i64 0, i32 9, !dbg !4847
  store i64 %div, i64* %count8, align 8, !dbg !4848
  %3 = load i64, i64* %count, align 8, !dbg !4849
  %4 = load i32, i32* %probability6, align 4, !dbg !4849
  %conv11 = sext i32 %4 to i64, !dbg !4849
  %mul12 = mul nsw i64 %3, %conv11, !dbg !4849
  %add13 = add nsw i64 %mul12, 5000, !dbg !4849
  %div14 = sdiv i64 %add13, 10000, !dbg !4849
  store i64 %div14, i64* %count, align 8, !dbg !4850
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %first_head, %struct.basic_block_def* %call) #6, !dbg !4851
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %second_head, %struct.basic_block_def* %call) #6, !dbg !4852
  tail call void @lv_adjust_loop_header_phi(%struct.basic_block_def* %first_head, %struct.basic_block_def* %second_head, %struct.basic_block_def* %call, %struct.edge_def* %call5) #6, !dbg !4853
  ret %struct.basic_block_def* %call, !dbg !4854
}

declare dso_local %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @extract_cond_bb_edges(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #2

declare dso_local void @lv_flush_pending_stmts(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fix_loop_structure(%struct.bitmap_head_def* %changed_bbs) local_unnamed_addr #5 !dbg !4855 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %changed_bbs, metadata !4859, metadata !DIExpression()), !dbg !4866
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !4867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4867
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !4868
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4868
  call void @llvm.dbg.value(metadata i8 0, metadata !4864, metadata !DIExpression()), !dbg !4866
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !4869
  %conv = zext i32 %call to i64, !dbg !4869
  %mul = shl nuw nsw i64 %conv, 3, !dbg !4869
  %call1 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !4869
  %2 = bitcast i8* %call1 to %struct.loop**, !dbg !4869
  call void @llvm.dbg.value(metadata %struct.loop** %2, metadata !4865, metadata !DIExpression()), !dbg !4866
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4870
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !4870
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4870
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !4870
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4870
  %tobool = icmp eq %struct.bitmap_head_def* %changed_bbs, null, !dbg !4872
  br i1 %tobool, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !4870

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !4870

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !4870

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %6 = phi %struct.control_flow_graph* [ %4, %entry.split.us ], [ %.pre2, %for.body.us ], !dbg !4876
  %.pn.us = phi %struct.basic_block_def* [ %5, %entry.split.us ], [ %bb.0.us, %for.body.us ]
  %bb.0.in.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn.us, i64 0, i32 6, !dbg !4877
  %bb.0.us = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in.us, align 8, !dbg !4877
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0.us, metadata !4860, metadata !DIExpression()), !dbg !4866
  %x_exit_block_ptr.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !4876
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr.us, align 8, !dbg !4876
  %cmp.us = icmp eq %struct.basic_block_def* %bb.0.us, %7, !dbg !4876
  br i1 %cmp.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !4870

for.body.us:                                      ; preds = %for.cond.us
  %x_current_loops.us = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 4, !dbg !4878
  %8 = load %struct.loops*, %struct.loops** %x_current_loops.us, align 8, !dbg !4878
  %tree_root.us = getelementptr inbounds %struct.loops, %struct.loops* %8, i64 0, i32 3, !dbg !4879
  %9 = bitcast %struct.loop** %tree_root.us to i64*, !dbg !4879
  %10 = load i64, i64* %9, align 8, !dbg !4879
  %loop_father8.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0.us, i64 0, i32 3, !dbg !4880
  %11 = bitcast %struct.loop** %loop_father8.us to i64*, !dbg !4881
  store i64 %10, i64* %11, align 8, !dbg !4881
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4876
  br label %for.cond.us, !dbg !4876, !llvm.loop !4882

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !4884

for.cond:                                         ; preds = %for.body, %entry.entry.split_crit_edge
  %12 = phi %struct.control_flow_graph* [ %4, %entry.entry.split_crit_edge ], [ %.pre, %for.body ], !dbg !4876
  %.pn = phi %struct.basic_block_def* [ %5, %entry.entry.split_crit_edge ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4877
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4877
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4860, metadata !DIExpression()), !dbg !4866
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !4876
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4876
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !4876
  br i1 %cmp, label %for.end.us-lcssa, label %for.body, !dbg !4870

for.body:                                         ; preds = %for.cond
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !4886
  %14 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4886
  %call5 = tail call fastcc i32 @loop_depth(%struct.loop* %14) #8, !dbg !4887
  %conv6 = zext i32 %call5 to i64, !dbg !4888
  %15 = inttoptr i64 %conv6 to i8*, !dbg !4889
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !4890
  store i8* %15, i8** %aux, align 8, !dbg !4891
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4878
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 4, !dbg !4878
  %17 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4878
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %17, i64 0, i32 3, !dbg !4879
  %18 = bitcast %struct.loop** %tree_root to i64*, !dbg !4879
  %19 = load i64, i64* %18, align 8, !dbg !4879
  %20 = bitcast %struct.loop** %loop_father to i64*, !dbg !4881
  store i64 %19, i64* %20, align 8, !dbg !4881
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !4892
  %.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !4876
  br label %for.cond, !dbg !4876, !llvm.loop !4882

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !4884

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %call10 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 8) #8, !dbg !4884
  %tobool11 = icmp eq i8 %call10, 0, !dbg !4884
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4893

if.then12:                                        ; preds = %for.end
  tail call void @release_recorded_exits() #6, !dbg !4894
  call void @llvm.dbg.value(metadata i8 1, metadata !4864, metadata !DIExpression()), !dbg !4866
  br label %if.end13, !dbg !4896

if.end13:                                         ; preds = %for.end, %if.then12
  %record_exits.0 = phi i8 [ 1, %if.then12 ], [ 0, %for.end ], !dbg !4866
  call void @llvm.dbg.value(metadata i8 %record_exits.0, metadata !4864, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !4897
  br label %for.cond14, !dbg !4897

for.cond14:                                       ; preds = %for.inc23, %if.end13
  %21 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4899
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !4861, metadata !DIExpression()), !dbg !4866
  %tobool15 = icmp eq %struct.loop* %21, null, !dbg !4897
  br i1 %tobool15, label %for.end24, label %for.body16, !dbg !4897

for.body16:                                       ; preds = %for.cond14
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !4861, metadata !DIExpression()), !dbg !4866
  %header = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 2, !dbg !4901
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4901
  %tobool17 = icmp eq %struct.basic_block_def* %22, null, !dbg !4904
  br i1 %tobool17, label %while.cond.preheader, label %for.inc23, !dbg !4905

while.cond.preheader:                             ; preds = %for.body16
  br label %while.cond, !dbg !4906

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %23 = phi %struct.loop* [ %21, %while.cond.preheader ], [ %.pre3, %while.body ], !dbg !4907
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !4861, metadata !DIExpression()), !dbg !4866
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 8, !dbg !4908
  %24 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !4908
  %tobool20 = icmp eq %struct.loop* %24, null, !dbg !4906
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !4861, metadata !DIExpression()), !dbg !4866
  br i1 %tobool20, label %while.end, label %while.body, !dbg !4906

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.loop* %24, metadata !4862, metadata !DIExpression()), !dbg !4866
  call void @flow_loop_tree_node_remove(%struct.loop* nonnull %24) #6, !dbg !4909
  %25 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4911
  call void @llvm.dbg.value(metadata %struct.loop* %25, metadata !4861, metadata !DIExpression()), !dbg !4866
  %call22 = call fastcc %struct.loop* @loop_outer(%struct.loop* %25) #8, !dbg !4912
  call void @flow_loop_tree_node_add(%struct.loop* %call22, %struct.loop* nonnull %24) #6, !dbg !4913
  %.pre3 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4907
  br label %while.cond, !dbg !4906, !llvm.loop !4914

while.end:                                        ; preds = %while.cond
  %.lcssa = phi %struct.loop* [ %23, %while.cond ], !dbg !4907
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !4861, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !4861, metadata !DIExpression()), !dbg !4866
  call void @delete_loop(%struct.loop* %.lcssa) #6, !dbg !4916
  br label %for.inc23, !dbg !4917

for.inc23:                                        ; preds = %for.body16, %while.end
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !4899
  br label %for.cond14, !dbg !4899, !llvm.loop !4918

for.end24:                                        ; preds = %for.cond14
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4920
  %cfg26 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !4920
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg26, align 8, !dbg !4920
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 3, !dbg !4920
  %28 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !4920
  %x_current_loops28 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 4, !dbg !4921
  %29 = load %struct.loops*, %struct.loops** %x_current_loops28, align 8, !dbg !4921
  %tree_root29 = getelementptr inbounds %struct.loops, %struct.loops* %29, i64 0, i32 3, !dbg !4922
  %30 = load %struct.loop*, %struct.loop** %tree_root29, align 8, !dbg !4922
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 6, !dbg !4923
  store i32 %28, i32* %num_nodes, align 4, !dbg !4924
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !4925
  br label %for.cond30, !dbg !4925

for.cond30:                                       ; preds = %for.body32, %for.end24
  %31 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4927
  call void @llvm.dbg.value(metadata %struct.loop* %31, metadata !4861, metadata !DIExpression()), !dbg !4866
  %tobool31 = icmp eq %struct.loop* %31, null, !dbg !4925
  br i1 %tobool31, label %for.end39, label %for.body32, !dbg !4925

for.body32:                                       ; preds = %for.cond30
  call void @llvm.dbg.value(metadata %struct.loop* %31, metadata !4861, metadata !DIExpression()), !dbg !4866
  %header33 = getelementptr inbounds %struct.loop, %struct.loop* %31, i64 0, i32 2, !dbg !4929
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %header33, align 8, !dbg !4929
  %loop_father34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 3, !dbg !4931
  %33 = bitcast %struct.loop** %loop_father34 to i64*, !dbg !4931
  %34 = load i64, i64* %33, align 8, !dbg !4931
  call void @llvm.dbg.value(metadata %struct.loop* %31, metadata !4861, metadata !DIExpression()), !dbg !4866
  %num = getelementptr inbounds %struct.loop, %struct.loop* %31, i64 0, i32 0, !dbg !4932
  %35 = load i32, i32* %num, align 8, !dbg !4932
  %idxprom = sext i32 %35 to i64, !dbg !4933
  %arrayidx = getelementptr inbounds %struct.loop*, %struct.loop** %2, i64 %idxprom, !dbg !4933
  %36 = bitcast %struct.loop** %arrayidx to i64*, !dbg !4934
  store i64 %34, i64* %36, align 8, !dbg !4934
  %37 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4935
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !4861, metadata !DIExpression()), !dbg !4866
  %header35 = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 2, !dbg !4936
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %header35, align 8, !dbg !4936
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !4861, metadata !DIExpression()), !dbg !4866
  %call36 = call i32 @flow_loop_nodes_find(%struct.basic_block_def* %38, %struct.loop* %37) #6, !dbg !4937
  %39 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4938
  call void @llvm.dbg.value(metadata %struct.loop* %39, metadata !4861, metadata !DIExpression()), !dbg !4866
  %num_nodes37 = getelementptr inbounds %struct.loop, %struct.loop* %39, i64 0, i32 6, !dbg !4939
  store i32 %call36, i32* %num_nodes37, align 4, !dbg !4940
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !4927
  br label %for.cond30, !dbg !4927, !llvm.loop !4941

for.end39:                                        ; preds = %for.cond30
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !4943
  br label %for.cond40, !dbg !4943

for.cond40:                                       ; preds = %for.inc51, %for.end39
  %40 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4945
  call void @llvm.dbg.value(metadata %struct.loop* %40, metadata !4861, metadata !DIExpression()), !dbg !4866
  %tobool41 = icmp eq %struct.loop* %40, null, !dbg !4943
  br i1 %tobool41, label %for.end52, label %for.body42, !dbg !4943

for.body42:                                       ; preds = %for.cond40
  call void @llvm.dbg.value(metadata %struct.loop* %40, metadata !4861, metadata !DIExpression()), !dbg !4866
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %40, i64 0, i32 0, !dbg !4947
  %41 = load i32, i32* %num43, align 8, !dbg !4947
  %idxprom44 = sext i32 %41 to i64, !dbg !4949
  %arrayidx45 = getelementptr inbounds %struct.loop*, %struct.loop** %2, i64 %idxprom44, !dbg !4949
  %42 = load %struct.loop*, %struct.loop** %arrayidx45, align 8, !dbg !4949
  call void @llvm.dbg.value(metadata %struct.loop* %42, metadata !4862, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop* %40, metadata !4861, metadata !DIExpression()), !dbg !4866
  %call46 = call fastcc %struct.loop* @loop_outer(%struct.loop* nonnull %40) #8, !dbg !4950
  %cmp47 = icmp eq %struct.loop* %42, %call46, !dbg !4952
  br i1 %cmp47, label %for.inc51, label %if.then49, !dbg !4953

if.then49:                                        ; preds = %for.body42
  %43 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4954
  call void @llvm.dbg.value(metadata %struct.loop* %43, metadata !4861, metadata !DIExpression()), !dbg !4866
  call void @flow_loop_tree_node_remove(%struct.loop* %43) #6, !dbg !4956
  %44 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !4957
  call void @llvm.dbg.value(metadata %struct.loop* %44, metadata !4861, metadata !DIExpression()), !dbg !4866
  call void @flow_loop_tree_node_add(%struct.loop* %42, %struct.loop* %44) #6, !dbg !4958
  br label %for.inc51, !dbg !4959

for.inc51:                                        ; preds = %for.body42, %if.then49
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4861, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4863, metadata !DIExpression(DW_OP_deref)), !dbg !4866
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !4945
  br label %for.cond40, !dbg !4945, !llvm.loop !4960

for.end52:                                        ; preds = %for.cond40
  call void @free(i8* %call1) #6, !dbg !4962
  br i1 %tobool, label %if.end79, label %if.then54, !dbg !4963

if.then54:                                        ; preds = %for.end52
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4964
  %cfg56 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !4964
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg56, align 8, !dbg !4964
  %x_entry_block_ptr57 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 0, !dbg !4964
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr57, align 8, !dbg !4964
  br label %for.cond59, !dbg !4964

for.cond59:                                       ; preds = %if.end74, %if.then54
  %48 = phi %struct.control_flow_graph* [ %46, %if.then54 ], [ %.pre5, %if.end74 ], !dbg !4968
  %.pn1 = phi %struct.basic_block_def* [ %47, %if.then54 ], [ %bb.1, %if.end74 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !4970
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !4970
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !4860, metadata !DIExpression()), !dbg !4866
  %x_exit_block_ptr62 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %48, i64 0, i32 1, !dbg !4968
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr62, align 8, !dbg !4968
  %cmp63 = icmp eq %struct.basic_block_def* %bb.1, %49, !dbg !4968
  br i1 %cmp63, label %if.end79.loopexit, label %for.body65, !dbg !4964

for.body65:                                       ; preds = %for.cond59
  %loop_father66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 3, !dbg !4971
  %50 = load %struct.loop*, %struct.loop** %loop_father66, align 8, !dbg !4971
  %call67 = call fastcc i32 @loop_depth(%struct.loop* %50) #8, !dbg !4974
  %conv68 = zext i32 %call67 to i64, !dbg !4975
  %51 = inttoptr i64 %conv68 to i8*, !dbg !4976
  %aux69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !4977
  %52 = load i8*, i8** %aux69, align 8, !dbg !4977
  %cmp70 = icmp eq i8* %52, %51, !dbg !4978
  br i1 %cmp70, label %if.end74, label %if.then72, !dbg !4979

if.then72:                                        ; preds = %for.body65
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !4980
  %53 = load i32, i32* %index, align 8, !dbg !4980
  %call73 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %changed_bbs, i32 %53) #6, !dbg !4981
  br label %if.end74, !dbg !4981

if.end74:                                         ; preds = %for.body65, %if.then72
  store i8* null, i8** %aux69, align 8, !dbg !4982
  %.pre4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4968
  %cfg61.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre4, i64 0, i32 1, !dbg !4983
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg61.phi.trans.insert, align 8, !dbg !4968
  br label %for.cond59, !dbg !4968, !llvm.loop !4984

if.end79.loopexit:                                ; preds = %for.cond59
  br label %if.end79, !dbg !4986

if.end79:                                         ; preds = %if.end79.loopexit, %for.end52
  %call80 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 1) #8, !dbg !4986
  %tobool81 = icmp eq i8 %call80, 0, !dbg !4986
  br i1 %tobool81, label %if.end83, label %if.then82, !dbg !4988

if.then82:                                        ; preds = %if.end79
  call void @create_preheaders(i32 1) #8, !dbg !4989
  br label %if.end83, !dbg !4989

if.end83:                                         ; preds = %if.end79, %if.then82
  %call84 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 2) #8, !dbg !4990
  %tobool85 = icmp eq i8 %call84, 0, !dbg !4990
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !4992

if.then86:                                        ; preds = %if.end83
  call void @force_single_succ_latches() #8, !dbg !4993
  br label %if.end87, !dbg !4993

if.end87:                                         ; preds = %if.end83, %if.then86
  %call88 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 4) #8, !dbg !4994
  %tobool89 = icmp eq i8 %call88, 0, !dbg !4994
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !4996

if.then90:                                        ; preds = %if.end87
  %call91 = call zeroext i8 @mark_irreducible_loops() #6, !dbg !4997
  br label %if.end92, !dbg !4997

if.end92:                                         ; preds = %if.end87, %if.then90
  %tobool93 = icmp eq i8 %record_exits.0, 0, !dbg !4998
  br i1 %tobool93, label %if.end95, label %if.then94, !dbg !5000

if.then94:                                        ; preds = %if.end92
  call void @record_loop_exits() #6, !dbg !5001
  br label %if.end95, !dbg !5001

if.end95:                                         ; preds = %if.end92, %if.then94
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !5002
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5002
  ret void, !dbg !5002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !5003 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5006
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !5006
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5006
  %tobool = icmp eq %struct.loops* %1, null, !dbg !5006
  br i1 %tobool, label %return, label %if.end, !dbg !5008

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !5009
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !5009
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !5009
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !5009

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !5009
  br label %cond.end, !dbg !5009

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !5009
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !5009
  br label %return, !dbg !5010

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !5011
  ret i32 %retval.0, !dbg !5012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @loop_depth(%struct.loop* %loop) unnamed_addr #0 !dbg !5013 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5017, metadata !DIExpression()), !dbg !5018
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !5019
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !5019
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !5019
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5019

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !5019
  br label %cond.end, !dbg !5019

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5019
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !5019
  ret i32 %call, !dbg !5020
}

declare dso_local void @release_recorded_exits() local_unnamed_addr #2

declare dso_local void @delete_loop(%struct.loop*) local_unnamed_addr #2

declare dso_local i32 @flow_loop_nodes_find(%struct.basic_block_def*, %struct.loop*) local_unnamed_addr #2

declare dso_local void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !5021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5025, metadata !DIExpression()), !dbg !5026
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !5027
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5027

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5027
  %0 = load i32, i32* %num, align 8, !dbg !5027
  br label %cond.end, !dbg !5027

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5027
  ret i32 %cond, !dbg !5027
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !5028 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !5034, metadata !DIExpression()), !dbg !5035
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !5036
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5036

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !5036
  %0 = load i32, i32* %num, align 8, !dbg !5036
  br label %cond.end, !dbg !5036

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5036
  ret i32 %cond, !dbg !5036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !5037 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !5041, metadata !DIExpression()), !dbg !5043
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5042, metadata !DIExpression()), !dbg !5043
  br label %land.end, !dbg !5044

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !5044
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5044
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !5044
  ret %struct.loop* %0, !dbg !5044
}

declare dso_local i32 @dfs_enumerate_from(%struct.basic_block_def*, i32, i8 (%struct.basic_block_def*, i8*)*, %struct.basic_block_def**, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @rpe_enum_p(%struct.basic_block_def* %bb, i8* %data) #5 !dbg !5045 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5049, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.value(metadata i8* %data, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = bitcast i8* %data to %struct.basic_block_def*, !dbg !5052
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* %0) #6, !dbg !5053
  ret i8 %call, !dbg !5054
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5055 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5060
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !5060
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5060

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5060
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !5060
  br label %cond.end, !dbg !5060

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5060
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !5060
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !5061
  %conv3 = zext i1 %cmp to i8, !dbg !5062
  ret i8 %conv3, !dbg !5063
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5064 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5069
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !5069
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5069

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5069
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !5069
  br label %cond.end, !dbg !5069

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5069
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !5069
  ret %struct.edge_def* %call2, !dbg !5070
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5071 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !5076
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5076

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5076
  br label %cond.end, !dbg !5076

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !5077
  ret %struct.VEC_edge_gc* %0, !dbg !5078
}

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5079 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !5083, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i32 1, metadata !5084, metadata !DIExpression()), !dbg !5086
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5087
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !5087
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5087

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !5087
  br label %cond.end, !dbg !5087

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5087
  %call = tail call fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %cond, i32 1) #8, !dbg !5087
  %tobool1 = icmp eq i32 %call, 0, !dbg !5087
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5087
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5085, metadata !DIExpression()), !dbg !5086
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5087

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_basic_block_heap** %vec_ to i8**, !dbg !5088
  %2 = load i8*, i8** %1, align 8, !dbg !5088
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !5088
  store i8* %call3, i8** %1, align 8, !dbg !5088
  br label %if.end, !dbg !5088

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !5090 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5095, metadata !DIExpression()), !dbg !5098
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !5096, metadata !DIExpression()), !dbg !5098
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5099
  %0 = load i32, i32* %num1, align 8, !dbg !5099
  %inc = add i32 %0, 1, !dbg !5099
  store i32 %inc, i32* %num1, align 8, !dbg !5099
  %idxprom = zext i32 %0 to i64, !dbg !5099
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5099
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !5097, metadata !DIExpression()), !dbg !5098
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !5099
  ret %struct.basic_block_def** %arrayidx, !dbg !5099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5100 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5104, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata i32 1, metadata !5105, metadata !DIExpression()), !dbg !5106
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !5107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5107

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 1, !dbg !5107
  %0 = load i32, i32* %alloc, align 4, !dbg !5107
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5107
  %1 = load i32, i32* %num, align 8, !dbg !5107
  %cmp1 = icmp ne i32 %0, %1, !dbg !5107
  %phitmp = zext i1 %cmp1 to i32, !dbg !5107
  br label %cond.end, !dbg !5107

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5107
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !5108 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !5110, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !5111, metadata !DIExpression()), !dbg !5115
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !5116
  %0 = load i8*, i8** %popcount, align 8, !dbg !5116
  %tobool = icmp eq i8* %0, null, !dbg !5117
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !5118

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !5119
  %.pre2 = zext i32 %.pre to i64, !dbg !5120
  %.pre3 = shl i64 1, %.pre2, !dbg !5120
  %.pre4 = lshr i32 %bitno, 6, !dbg !5121
  %.pre5 = zext i32 %.pre4 to i64, !dbg !5122
  br label %if.end7, !dbg !5118

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !5123
  %idxprom = zext i32 %div to i64, !dbg !5123
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !5123
  %1 = load i64, i64* %arrayidx, align 8, !dbg !5123
  %rem = and i32 %bitno, 63, !dbg !5123
  %sh_prom = zext i32 %rem to i64, !dbg !5123
  %2 = shl i64 1, %sh_prom, !dbg !5124
  %3 = and i64 %1, %2, !dbg !5124
  %tobool1 = icmp eq i64 %3, 0, !dbg !5124
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !5126

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !5127
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !5128
  %dec = add i8 %4, -1, !dbg !5128
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !5128
  br label %if.end7, !dbg !5127

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !5122
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !5120
  %neg = xor i64 %shl.pre-phi, -1, !dbg !5129
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !5122
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !5130
  %and14 = and i64 %5, %neg, !dbg !5130
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !5130
  ret void, !dbg !5131
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fix_loop_placement(%struct.loop* %loop) unnamed_addr #5 !dbg !5132 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %exits = alloca %struct.VEC_edge_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5136, metadata !DIExpression()), !dbg !5143
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !5144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5144
  %1 = bitcast %struct.VEC_edge_heap** %exits to i8*, !dbg !5145
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !5145
  %call = tail call %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop* %loop) #6, !dbg !5146
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !5139, metadata !DIExpression()), !dbg !5143
  store %struct.VEC_edge_heap* %call, %struct.VEC_edge_heap** %exits, align 8, !dbg !5147
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5148
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !5148
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5148
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !5149
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !5149
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata i8 0, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata i32 0, metadata !5137, metadata !DIExpression()), !dbg !5143
  br label %for.cond, !dbg !5150

for.cond:                                         ; preds = %for.body, %entry
  %5 = phi %struct.VEC_edge_heap* [ %call, %entry ], [ %.pre, %for.body ], !dbg !5152
  %father.0 = phi %struct.loop* [ %4, %entry ], [ %spec.select, %for.body ], !dbg !5143
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5154
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5137, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.loop* %father.0, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %5, metadata !5139, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %5, metadata !5139, metadata !DIExpression()), !dbg !5143
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %5, i64 0, i32 0, !dbg !5152
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5138, metadata !DIExpression(DW_OP_deref)), !dbg !5143
  %call1 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #8, !dbg !5152
  %tobool2 = icmp eq i32 %call1, 0, !dbg !5155
  br i1 %tobool2, label %for.end, label %for.body, !dbg !5155

for.body:                                         ; preds = %for.cond
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5156
  call void @llvm.dbg.value(metadata %struct.edge_def* %6, metadata !5138, metadata !DIExpression()), !dbg !5143
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i64 0, i32 1, !dbg !5158
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5158
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 3, !dbg !5159
  %8 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !5159
  %call3 = call %struct.loop* @find_common_loop(%struct.loop* %loop, %struct.loop* %8) #6, !dbg !5160
  call void @llvm.dbg.value(metadata %struct.loop* %call3, metadata !5141, metadata !DIExpression()), !dbg !5143
  %call4 = call zeroext i8 @flow_loop_nested_p(%struct.loop* %father.0, %struct.loop* %call3) #6, !dbg !5161
  %tobool5 = icmp eq i8 %call4, 0, !dbg !5161
  %spec.select = select i1 %tobool5, %struct.loop* %father.0, %struct.loop* %call3, !dbg !5163
  call void @llvm.dbg.value(metadata %struct.loop* %spec.select, metadata !5140, metadata !DIExpression()), !dbg !5143
  %inc = add i32 %i.0, 1, !dbg !5164
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5137, metadata !DIExpression()), !dbg !5143
  %.pre = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %exits, align 8, !dbg !5152
  br label %for.cond, !dbg !5165, !llvm.loop !5166

for.end:                                          ; preds = %for.cond
  %father.0.lcssa = phi %struct.loop* [ %father.0, %for.cond ], !dbg !5143
  call void @llvm.dbg.value(metadata %struct.loop* %father.0.lcssa, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.loop* %father.0.lcssa, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.loop* %father.0.lcssa, metadata !5140, metadata !DIExpression()), !dbg !5143
  %call6 = call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #8, !dbg !5168
  %cmp = icmp eq %struct.loop* %father.0.lcssa, %call6, !dbg !5170
  br i1 %cmp, label %if.end29, label %if.then7, !dbg !5171

if.then7:                                         ; preds = %for.end
  %call8 = call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #8, !dbg !5172
  call void @llvm.dbg.value(metadata %struct.loop* %call8, metadata !5141, metadata !DIExpression()), !dbg !5143
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !5175
  br label %for.cond9, !dbg !5177

for.cond9:                                        ; preds = %for.body11, %if.then7
  %act.0 = phi %struct.loop* [ %call8, %if.then7 ], [ %call14, %for.body11 ], !dbg !5178
  call void @llvm.dbg.value(metadata %struct.loop* %act.0, metadata !5141, metadata !DIExpression()), !dbg !5143
  %cmp10 = icmp eq %struct.loop* %act.0, %father.0.lcssa, !dbg !5179
  br i1 %cmp10, label %for.end15, label %for.body11, !dbg !5180

for.body11:                                       ; preds = %for.cond9
  %9 = load i32, i32* %num_nodes, align 4, !dbg !5181
  %num_nodes12 = getelementptr inbounds %struct.loop, %struct.loop* %act.0, i64 0, i32 6, !dbg !5182
  %10 = load i32, i32* %num_nodes12, align 4, !dbg !5183
  %sub = sub i32 %10, %9, !dbg !5183
  store i32 %sub, i32* %num_nodes12, align 4, !dbg !5183
  %call14 = call fastcc %struct.loop* @loop_outer(%struct.loop* %act.0) #8, !dbg !5184
  call void @llvm.dbg.value(metadata %struct.loop* %call14, metadata !5141, metadata !DIExpression()), !dbg !5143
  br label %for.cond9, !dbg !5185, !llvm.loop !5186

for.end15:                                        ; preds = %for.cond9
  call void @flow_loop_tree_node_remove(%struct.loop* %loop) #6, !dbg !5188
  call void @flow_loop_tree_node_add(%struct.loop* %father.0.lcssa, %struct.loop* %loop) #6, !dbg !5189
  call void @llvm.dbg.value(metadata i32 0, metadata !5137, metadata !DIExpression()), !dbg !5143
  br label %for.cond16, !dbg !5190

for.cond16:                                       ; preds = %for.body25, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.body25 ], !dbg !5192
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !5137, metadata !DIExpression()), !dbg !5143
  %11 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %exits, align 8, !dbg !5193
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %11, metadata !5139, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %11, metadata !5139, metadata !DIExpression()), !dbg !5143
  %base19 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %11, i64 0, i32 0, !dbg !5193
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5138, metadata !DIExpression(DW_OP_deref)), !dbg !5143
  %call23 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base19, i32 %i.1, %struct.edge_def** nonnull %e) #8, !dbg !5193
  %tobool24 = icmp eq i32 %call23, 0, !dbg !5195
  br i1 %tobool24, label %if.end29.loopexit, label %for.body25, !dbg !5195

for.body25:                                       ; preds = %for.cond16
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5196
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !5138, metadata !DIExpression()), !dbg !5143
  call void @rescan_loop_exit(%struct.edge_def* %12, i8 zeroext 0, i8 zeroext 0) #6, !dbg !5197
  %inc27 = add i32 %i.1, 1, !dbg !5198
  call void @llvm.dbg.value(metadata i32 %inc27, metadata !5137, metadata !DIExpression()), !dbg !5143
  br label %for.cond16, !dbg !5199, !llvm.loop !5200

if.end29.loopexit:                                ; preds = %for.cond16
  br label %if.end29, !dbg !5202

if.end29:                                         ; preds = %if.end29.loopexit, %for.end
  %ret.0 = phi i8 [ 0, %for.end ], [ 1, %if.end29.loopexit ], !dbg !5143
  call void @llvm.dbg.value(metadata i8 %ret.0, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %exits, metadata !5139, metadata !DIExpression(DW_OP_deref)), !dbg !5143
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %exits) #8, !dbg !5202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !5203
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5203
  ret i8 %ret.0, !dbg !5204
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fix_bb_placement(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !5205 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5209, metadata !DIExpression()), !dbg !5214
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !5215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5215
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !5216
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !5216
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5217
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !5217
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5217
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !5218
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !5218
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !5212, metadata !DIExpression()), !dbg !5214
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !5219
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !5219
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5219
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !5219
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !5219
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !5219
  store i32 %7, i32* %6, align 8, !dbg !5219
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !5219
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !5219
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %8, align 8, !dbg !5219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !5219
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !5219
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !5221
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !5221
  br label %for.cond, !dbg !5219

for.cond:                                         ; preds = %for.inc, %entry
  %loop.0 = phi %struct.loop* [ %4, %entry ], [ %loop.2, %for.inc ], !dbg !5223
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0, metadata !5212, metadata !DIExpression()), !dbg !5214
  %12 = load i32, i32* %10, align 8, !dbg !5224
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !5224
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !5210, metadata !DIExpression(DW_OP_deref)), !dbg !5214
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #8, !dbg !5224
  %tobool = icmp eq i8 %call1, 0, !dbg !5219
  br i1 %tobool, label %for.end, label %for.body, !dbg !5219

for.body:                                         ; preds = %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !5225
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !5210, metadata !DIExpression()), !dbg !5214
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 1, !dbg !5228
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5228
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5229
  %cfg = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !5229
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !5229
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !5229
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !5229
  %cmp = icmp eq %struct.basic_block_def* %15, %18, !dbg !5230
  br i1 %cmp, label %for.inc, label %if.end, !dbg !5231

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !5210, metadata !DIExpression()), !dbg !5214
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 3, !dbg !5232
  %19 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !5232
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !5213, metadata !DIExpression()), !dbg !5214
  %header = getelementptr inbounds %struct.loop, %struct.loop* %19, i64 0, i32 2, !dbg !5233
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5233
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !5210, metadata !DIExpression()), !dbg !5214
  %cmp5 = icmp eq %struct.basic_block_def* %20, %15, !dbg !5235
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !5236

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #8, !dbg !5237
  call void @llvm.dbg.value(metadata %struct.loop* %call7, metadata !5213, metadata !DIExpression()), !dbg !5214
  br label %if.end8, !dbg !5238

if.end8:                                          ; preds = %if.then6, %if.end
  %act.0 = phi %struct.loop* [ %call7, %if.then6 ], [ %19, %if.end ], !dbg !5239
  call void @llvm.dbg.value(metadata %struct.loop* %act.0, metadata !5213, metadata !DIExpression()), !dbg !5214
  %call9 = call zeroext i8 @flow_loop_nested_p(%struct.loop* %loop.0, %struct.loop* %act.0) #6, !dbg !5240
  %tobool10 = icmp eq i8 %call9, 0, !dbg !5240
  %spec.select = select i1 %tobool10, %struct.loop* %loop.0, %struct.loop* %act.0, !dbg !5242
  call void @llvm.dbg.value(metadata %struct.loop* %spec.select, metadata !5212, metadata !DIExpression()), !dbg !5214
  br label %for.inc, !dbg !5243

for.inc:                                          ; preds = %for.body, %if.end8
  %loop.2 = phi %struct.loop* [ %spec.select, %if.end8 ], [ %loop.0, %for.body ], !dbg !5214
  call void @llvm.dbg.value(metadata %struct.loop* %loop.2, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !5211, metadata !DIExpression(DW_OP_deref)), !dbg !5214
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !5224
  br label %for.cond, !dbg !5224, !llvm.loop !5244

for.end:                                          ; preds = %for.cond
  %loop.0.lcssa = phi %struct.loop* [ %loop.0, %for.cond ], !dbg !5223
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0.lcssa, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0.lcssa, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0.lcssa, metadata !5212, metadata !DIExpression()), !dbg !5214
  %loop_father13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !5246
  %21 = load %struct.loop*, %struct.loop** %loop_father13, align 8, !dbg !5246
  %cmp14 = icmp eq %struct.loop* %loop.0.lcssa, %21, !dbg !5248
  br i1 %cmp14, label %cleanup, label %if.end16, !dbg !5249

if.end16:                                         ; preds = %for.end
  call void @remove_bb_from_loops(%struct.basic_block_def* %bb) #6, !dbg !5250
  call void @add_bb_to_loop(%struct.basic_block_def* %bb, %struct.loop* %loop.0.lcssa) #6, !dbg !5251
  br label %cleanup, !dbg !5252

cleanup:                                          ; preds = %for.end, %if.end16
  %retval.0 = phi i8 [ 1, %if.end16 ], [ 0, %for.end ], !dbg !5214
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !5253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !5253
  ret i8 %retval.0, !dbg !5253
}

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @flow_loop_nested_p(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !5254 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5258, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5259, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !5262
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5262

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5262
  %0 = load i32, i32* %num, align 8, !dbg !5262
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5262
  br i1 %cmp, label %if.then, label %if.else, !dbg !5264

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5265
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5265
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !5265
  br label %return, !dbg !5265

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5267

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !5269
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5269
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !5269
  ret i32 %retval.0, !dbg !5264
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !5270 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !5276
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !5276
  br i1 %tobool, label %if.end, label %if.then, !dbg !5278

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !5278
  tail call void @free(i8* nonnull %1) #6, !dbg !5276
  br label %if.end, !dbg !5276

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !5278
  ret void, !dbg !5278
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop** @VEC_loop_p_gc_safe_push(%struct.VEC_loop_p_gc** %vec_, %struct.loop* %obj_) unnamed_addr #0 !dbg !5279 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_gc** %vec_, metadata !5284, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.value(metadata %struct.loop* %obj_, metadata !5285, metadata !DIExpression()), !dbg !5286
  %call = tail call fastcc i32 @VEC_loop_p_gc_reserve(%struct.VEC_loop_p_gc** %vec_, i32 1) #8, !dbg !5287
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %vec_, align 8, !dbg !5287
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !5287
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5287

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !5287
  br label %cond.end, !dbg !5287

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5287
  %call1 = tail call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond, %struct.loop* %obj_) #8, !dbg !5287
  ret %struct.loop** %call1, !dbg !5287
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_gc_reserve(%struct.VEC_loop_p_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5288 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_gc** %vec_, metadata !5292, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata i32 1, metadata !5293, metadata !DIExpression()), !dbg !5295
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %vec_, align 8, !dbg !5296
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !5296
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5296

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !5296
  br label %cond.end, !dbg !5296

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5296
  %call = tail call fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %cond, i32 1) #8, !dbg !5296
  %tobool1 = icmp eq i32 %call, 0, !dbg !5296
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5296
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5294, metadata !DIExpression()), !dbg !5295
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5296

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_loop_p_gc** %vec_ to i8**, !dbg !5297
  %2 = load i8*, i8** %1, align 8, !dbg !5297
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !5297
  store i8* %call3, i8** %1, align 8, !dbg !5297
  br label %if.end, !dbg !5297

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5296
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %vec_, %struct.loop* %obj_) unnamed_addr #0 !dbg !5299 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !5304, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.value(metadata %struct.loop* %obj_, metadata !5305, metadata !DIExpression()), !dbg !5307
  %num1 = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !5308
  %0 = load i32, i32* %num1, align 8, !dbg !5308
  %inc = add i32 %0, 1, !dbg !5308
  store i32 %inc, i32* %num1, align 8, !dbg !5308
  %idxprom = zext i32 %0 to i64, !dbg !5308
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5308
  call void @llvm.dbg.value(metadata %struct.loop** %arrayidx, metadata !5306, metadata !DIExpression()), !dbg !5307
  store %struct.loop* %obj_, %struct.loop** %arrayidx, align 8, !dbg !5308
  ret %struct.loop** %arrayidx, !dbg !5308
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5309 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !5313, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.value(metadata i32 1, metadata !5314, metadata !DIExpression()), !dbg !5315
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !5316
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5316

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 1, !dbg !5316
  %0 = load i32, i32* %alloc, align 4, !dbg !5316
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !5316
  %1 = load i32, i32* %num, align 8, !dbg !5316
  %cmp1 = icmp ne i32 %0, %1, !dbg !5316
  %phitmp = zext i1 %cmp1 to i32, !dbg !5316
  br label %cond.end, !dbg !5316

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5316
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5317 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5321, metadata !DIExpression()), !dbg !5322
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !5323
  %0 = load i32, i32* %flags, align 8, !dbg !5323
  %and = and i32 %0, 512, !dbg !5324
  %tobool = icmp eq i32 %and, 0, !dbg !5324
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !5325

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !5326
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !5326
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !5327
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !5328

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !5329
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !5329
  br label %cond.end, !dbg !5328

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !5328
  ret %struct.gimple_seq_d* %cond, !dbg !5330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5331 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5338, metadata !DIExpression()), !dbg !5339
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5340
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5340

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !5341
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !5341
  br label %cond.end, !dbg !5340

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5340
  ret %struct.gimple_seq_node_d* %cond, !dbg !5342
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !5343 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5347, metadata !DIExpression()), !dbg !5349
  call void @llvm.dbg.value(metadata i32 0, metadata !5348, metadata !DIExpression()), !dbg !5349
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !5350
  %tobool = icmp eq i8 %call, 0, !dbg !5350
  br i1 %tobool, label %return, label %if.then, !dbg !5352

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !5353
  %0 = load %union.tree_node*, %union.tree_node** %call1, align 8, !dbg !5353
  br label %return, !dbg !5355

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !5356
  ret %union.tree_node* %retval.0, !dbg !5357
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5358 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5362, metadata !DIExpression()), !dbg !5363
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !5364
  %cmp = icmp eq i32 %call, 0, !dbg !5365
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !5366

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !5367
  %cmp2 = icmp ult i32 %call1, 10, !dbg !5368
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !5369
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5370 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5374, metadata !DIExpression()), !dbg !5376
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !5377
  %idxprom = zext i32 %call to i64, !dbg !5378
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !5378
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5378
  call void @llvm.dbg.value(metadata i64 %0, metadata !5375, metadata !DIExpression()), !dbg !5376
  %cmp = icmp eq i64 %0, 0, !dbg !5379
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5379

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5379
  br label %cond.end, !dbg !5379

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !5380
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !5381
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !5382
  ret %union.tree_node** %2, !dbg !5383
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5384 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !5390
  %bf.load = load i32, i32* %0, align 8, !dbg !5390
  %bf.clear = and i32 %bf.load, 255, !dbg !5390
  ret i32 %bf.clear, !dbg !5391
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5392 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5396, metadata !DIExpression()), !dbg !5397
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !5398
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !5399
  ret i32 %call1, !dbg !5400
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !5401 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !5405, metadata !DIExpression()), !dbg !5406
  %idxprom = zext i32 %code to i64, !dbg !5407
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !5407
  %0 = load i32, i32* %arrayidx, align 4, !dbg !5407
  ret i32 %0, !dbg !5408
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !5409 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5413, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.value(metadata i32 0, metadata !5414, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5415, metadata !DIExpression()), !dbg !5416
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !5417
  %tobool = icmp eq i8 %call, 0, !dbg !5417
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5417

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !5417
  %cmp = icmp eq i32 %call1, 0, !dbg !5417
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5417

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5417
  br label %cond.end, !dbg !5417

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !5418
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !5419
  ret void, !dbg !5420
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5421 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5425, metadata !DIExpression()), !dbg !5426
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !5427
  %0 = load i32, i32* %num_ops, align 4, !dbg !5427
  ret i32 %0, !dbg !5428
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5429 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !5433, metadata !DIExpression()), !dbg !5436
  call void @llvm.dbg.value(metadata i32 1, metadata !5434, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !5437
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !5437
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5437

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !5437
  br label %cond.end, !dbg !5437

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5437
  %call = tail call fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %cond, i32 1) #8, !dbg !5437
  %tobool1 = icmp eq i32 %call, 0, !dbg !5437
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5437
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5435, metadata !DIExpression()), !dbg !5436
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5437

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_edge_heap** %vec_ to i8**, !dbg !5438
  %2 = load i8*, i8** %1, align 8, !dbg !5438
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !5438
  store i8* %call3, i8** %1, align 8, !dbg !5438
  br label %if.end, !dbg !5438

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5437
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !5440 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5445, metadata !DIExpression()), !dbg !5448
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !5446, metadata !DIExpression()), !dbg !5448
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5449
  %0 = load i32, i32* %num1, align 8, !dbg !5449
  %inc = add i32 %0, 1, !dbg !5449
  store i32 %inc, i32* %num1, align 8, !dbg !5449
  %idxprom = zext i32 %0 to i64, !dbg !5449
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5449
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !5447, metadata !DIExpression()), !dbg !5448
  store %struct.edge_def* %obj_, %struct.edge_def** %arrayidx, align 8, !dbg !5449
  ret %struct.edge_def** %arrayidx, !dbg !5449
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5450 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5454, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.value(metadata i32 1, metadata !5455, metadata !DIExpression()), !dbg !5456
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !5457
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5457

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 1, !dbg !5457
  %0 = load i32, i32* %alloc, align 4, !dbg !5457
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5457
  %1 = load i32, i32* %num, align 8, !dbg !5457
  %cmp1 = icmp ne i32 %0, %1, !dbg !5457
  %phitmp = zext i1 %cmp1 to i32, !dbg !5457
  br label %cond.end, !dbg !5457

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5457

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5457
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !5458 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !5462, metadata !DIExpression()), !dbg !5463
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !5464
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !5464
  ret %struct.VEC_int_heap* %0, !dbg !5464
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !5465 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !5469, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5470, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !5471, metadata !DIExpression()), !dbg !5472
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !5473
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5473

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !5473
  %0 = load i32, i32* %num, align 8, !dbg !5473
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5473
  br i1 %cmp, label %if.then, label %if.else, !dbg !5475

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5476
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5476
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !5476
  br label %return, !dbg !5476

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5478

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !5480
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5480
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !5480
  ret i32 %retval.0, !dbg !5475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !5481 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !5486, metadata !DIExpression()), !dbg !5489
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !5487, metadata !DIExpression()), !dbg !5489
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !5490
  %0 = load i32, i32* %num1, align 4, !dbg !5490
  %inc = add i32 %0, 1, !dbg !5490
  store i32 %inc, i32* %num1, align 4, !dbg !5490
  %idxprom = zext i32 %0 to i64, !dbg !5490
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5490
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !5488, metadata !DIExpression()), !dbg !5489
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !5490
  ret i32* %arrayidx, !dbg !5490
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !5491 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !5497, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5498, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !5501
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5501

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !5501
  %0 = load i32, i32* %num, align 4, !dbg !5501
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5501
  br i1 %cmp, label %if.then, label %if.else, !dbg !5503

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5504
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5504
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5504
  br label %return, !dbg !5504

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5506

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !5508
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5508
  store i32 %storemerge, i32* %ptr, align 4, !dbg !5508
  ret i32 %retval.0, !dbg !5503
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !5509 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !5513, metadata !DIExpression()), !dbg !5514
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5515
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !5515
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5515
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !5515
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !5515
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !5515
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5515

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !5515
  br label %cond.end, !dbg !5515

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5515
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !5515
  ret %struct.loop* %call, !dbg !5516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !5517 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !5522, metadata !DIExpression()), !dbg !5523
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !5524
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !5524
  br i1 %tobool, label %if.end, label %if.then, !dbg !5526

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !5526
  tail call void @free(i8* nonnull %1) #6, !dbg !5524
  br label %if.end, !dbg !5524

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !5526
  ret void, !dbg !5526
}

declare dso_local void @lv_add_condition_to_bb(%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local i32 @current_ir_type() local_unnamed_addr #2

declare dso_local void @lv_adjust_loop_header_phi(%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2024, !2025, !2026}
!llvm.ident = !{!2027}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mfb_kj_edge", scope: !2, file: !3, line: 1296, type: !627, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !598, globals: !2023, nameTableKind: None)
!3 = !DIFile(filename: "cfgloopmanip.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !15, !143, !149, !154, !349, !354, !372, !379, !386, !390, !533, !572}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !6, line: 31, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !16, line: 7, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!18 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!22 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!24 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!25 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!26 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!28 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!29 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!30 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!31 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!32 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!33 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!34 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!35 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!36 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!37 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!38 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!39 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!40 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!41 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!42 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!43 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!44 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!45 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!46 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!47 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!48 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!49 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!50 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!51 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!52 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!53 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!54 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!55 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!56 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!57 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!58 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!59 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!60 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!61 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!62 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!63 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!64 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!65 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!66 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!67 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!68 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!69 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!70 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!71 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!72 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!73 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!74 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!75 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!76 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!77 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!78 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!79 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!80 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!81 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!82 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!83 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!84 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!85 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!86 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!87 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!88 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!89 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!90 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!91 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!92 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!93 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!94 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!95 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!96 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!97 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!98 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!99 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!100 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!101 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!102 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!103 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!104 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!105 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!106 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!110 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!111 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!112 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!115 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!116 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!117 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!118 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!119 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!120 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!121 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!122 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!123 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!124 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!125 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!126 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!141 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!142 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !144, line: 363, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !144, line: 355, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !155, line: 39, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!157 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!159 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!160 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!161 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!162 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!163 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!164 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!165 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!166 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!167 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!168 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!169 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!170 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!171 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!172 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!173 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!174 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!175 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!176 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!177 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!178 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!179 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!180 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!181 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!182 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!183 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!184 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!185 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!186 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!187 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!188 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!189 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!190 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!191 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!192 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!193 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!194 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!195 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!196 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!197 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!198 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!199 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!200 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!201 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!202 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!203 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!204 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!205 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!206 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!207 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!208 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!210 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!211 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!212 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!213 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!215 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!216 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!217 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!218 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!219 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!220 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!221 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!222 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!223 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!224 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!225 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!226 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!227 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!229 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!230 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!231 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!232 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!233 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!234 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!235 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!236 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!237 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!238 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!239 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!240 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!241 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!242 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!243 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!244 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!245 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!246 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!247 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!248 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!249 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!250 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!251 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!252 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!253 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!254 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!255 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!256 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!257 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!258 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!259 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!260 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!261 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!262 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!263 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!264 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!265 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!266 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!267 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!268 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!269 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!270 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!271 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!272 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!273 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!274 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!275 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!276 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!277 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!278 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!279 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!280 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!281 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!282 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!283 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!284 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!285 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!286 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!287 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!288 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!289 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!290 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!291 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!292 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!293 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!294 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!295 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!296 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!297 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!298 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!299 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!300 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!301 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!302 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!303 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!304 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!305 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!306 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!307 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!308 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!309 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!310 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!311 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!312 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!313 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!314 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!315 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!316 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!317 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!318 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!319 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!320 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!321 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!322 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!323 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!324 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!325 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!326 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!327 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!328 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!329 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!330 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!331 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!332 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!333 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!334 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!335 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!336 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!337 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!338 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!342 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!343 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!345 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!346 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!347 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!348 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!349 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !350, line: 474, baseType: !7, size: 32, elements: !351)
!350 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!351 = !{!352, !353}
!352 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!353 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !155, line: 280, baseType: !7, size: 32, elements: !355)
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
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !155, line: 1817, baseType: !7, size: 32, elements: !373)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !155, line: 1805, baseType: !7, size: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !6, line: 91, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !391, line: 45, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!393 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!409 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!410 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!411 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!412 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!413 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!414 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!415 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!416 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!417 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!418 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!419 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!420 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!421 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!422 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!423 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!424 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!425 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!426 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!427 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!428 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!429 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!430 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!431 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!432 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!433 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!434 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!435 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!436 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!437 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!438 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!439 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!440 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!441 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!442 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!443 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!444 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!445 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!446 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!447 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!448 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!449 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!450 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!451 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!452 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!453 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!454 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!455 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!456 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!457 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!458 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!459 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!460 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!461 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!462 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!463 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!464 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!465 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!466 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!467 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!468 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!469 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!470 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!471 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!472 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!473 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!474 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!475 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!476 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!477 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!478 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!479 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!480 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!481 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!482 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!483 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!484 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!485 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!486 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!487 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!488 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!489 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!490 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!491 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!492 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!493 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!494 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!495 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!496 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!497 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!498 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!499 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!500 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!501 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!502 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!503 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!504 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!505 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!506 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!507 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!508 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!509 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!510 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!511 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!512 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!513 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!514 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!515 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!516 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!517 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!518 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!519 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!521 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!522 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!524 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!525 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!526 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!527 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!528 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!529 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!530 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!531 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!532 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !534, line: 51, baseType: !7, size: 32, elements: !535)
!534 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!536 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!537 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!538 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!539 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!540 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!541 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!542 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!543 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!544 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!545 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!546 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!547 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!548 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!549 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!550 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!551 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!552 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!553 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!554 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!555 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!556 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!557 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!558 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!559 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!560 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!561 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!562 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!563 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!564 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!565 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!566 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!567 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!568 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!569 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!570 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!571 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !534, line: 727, baseType: !7, size: 32, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!574 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!575 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!576 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!577 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!578 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!579 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!580 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!581 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!582 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!583 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!584 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!585 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!586 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!587 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!588 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!589 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!590 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!591 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!592 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!593 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!594 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!595 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!596 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!597 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!598 = !{!599, !600, !601, !602, !605, !606, !608, !7, !672, !1993, !1994, !1195, !1258, !390, !1995, !725, !1998, !627, !1311, !648, !2003, !1287, !603, !2005, !609, !2010, !1323}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !610, line: 111, baseType: !611)
!610 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !144, line: 217, size: 832, elements: !613)
!613 = !{!614, !1960, !1961, !1962, !1963, !1967, !1968, !1969, !1987, !1988, !1989, !1990, !1991, !1992}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !612, file: !144, line: 219, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !144, line: 151, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !144, line: 151, size: 128, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !617, file: !144, line: 151, baseType: !620, size: 128)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !144, line: 150, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !144, line: 150, size: 128, elements: !622)
!622 = !{!623, !624, !625}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !621, file: !144, line: 150, baseType: !7, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !621, file: !144, line: 150, baseType: !7, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !621, file: !144, line: 150, baseType: !626, size: 64, offset: 64)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 64, elements: !770)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !610, line: 108, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !144, line: 122, size: 512, elements: !630)
!630 = !{!631, !632, !633, !1952, !1953, !1954, !1955, !1956, !1957, !1958}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !629, file: !144, line: 124, baseType: !611, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !629, file: !144, line: 125, baseType: !611, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !629, file: !144, line: 131, baseType: !634, size: 64, offset: 128)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !144, line: 128, size: 64, elements: !635)
!635 = !{!636, !1951}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !634, file: !144, line: 129, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !610, line: 66, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !534, line: 143, size: 192, elements: !640)
!640 = !{!641, !1949, !1950}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !639, file: !534, line: 145, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !610, line: 69, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !534, line: 136, size: 192, elements: !645)
!645 = !{!646, !1947, !1948}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !644, file: !534, line: 137, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !610, line: 58, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !534, line: 737, size: 768, elements: !650)
!650 = !{!651, !1794, !1804, !1810, !1815, !1820, !1827, !1833, !1839, !1844, !1858, !1863, !1869, !1874, !1884, !1889, !1905, !1912, !1919, !1925, !1930, !1936, !1942}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !649, file: !534, line: 738, baseType: !652, size: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !534, line: 271, size: 256, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !669, !670, !671}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !652, file: !534, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !652, file: !534, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !652, file: !534, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !652, file: !534, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !652, file: !534, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !652, file: !534, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !652, file: !534, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !652, file: !534, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !652, file: !534, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !652, file: !534, line: 312, baseType: !7, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !652, file: !534, line: 316, baseType: !665, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !666, line: 58, baseType: !667)
!666 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !668, line: 44, baseType: !7)
!668 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !652, file: !534, line: 319, baseType: !7, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !652, file: !534, line: 323, baseType: !611, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !652, file: !534, line: 327, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !610, line: 56, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !155, line: 3371, size: 1792, elements: !675)
!675 = !{!676, !709, !715, !728, !747, !758, !763, !772, !778, !791, !799, !837, !1044, !1072, !1089, !1090, !1095, !1104, !1110, !1115, !1119, !1123, !1445, !1492, !1498, !1504, !1511, !1524, !1538, !1555, !1567, !1589, !1604, !1776}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !674, file: !155, line: 3372, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !155, line: 360, size: 64, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !677, file: !155, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !677, file: !155, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !677, file: !155, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !677, file: !155, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !677, file: !155, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !677, file: !155, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !677, file: !155, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !677, file: !155, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !677, file: !155, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !677, file: !155, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !677, file: !155, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !677, file: !155, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !677, file: !155, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !677, file: !155, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !677, file: !155, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !677, file: !155, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !677, file: !155, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !677, file: !155, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !677, file: !155, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !677, file: !155, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !677, file: !155, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !677, file: !155, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !677, file: !155, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !677, file: !155, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !677, file: !155, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !677, file: !155, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !677, file: !155, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !677, file: !155, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !677, file: !155, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !677, file: !155, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !674, file: !155, line: 3373, baseType: !710, size: 192)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !155, line: 402, size: 192, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !710, file: !155, line: 403, baseType: !677, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !710, file: !155, line: 404, baseType: !672, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !155, line: 405, baseType: !672, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !674, file: !155, line: 3374, baseType: !716, size: 320)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !155, line: 1384, size: 320, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !716, file: !155, line: 1385, baseType: !710, size: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !716, file: !155, line: 1386, baseType: !720, size: 128, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !721, line: 58, baseType: !722)
!721 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 54, size: 128, elements: !723)
!723 = !{!724, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !722, file: !721, line: 56, baseType: !725, size: 64)
!725 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !722, file: !721, line: 57, baseType: !727, size: 64, offset: 64)
!727 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !674, file: !155, line: 3375, baseType: !729, size: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !155, line: 1397, size: 256, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !729, file: !155, line: 1398, baseType: !710, size: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !729, file: !155, line: 1399, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !735, line: 52, size: 256, elements: !736)
!735 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!736 = !{!737, !738, !739, !740, !741, !742, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !734, file: !735, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !734, file: !735, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !734, file: !735, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !734, file: !735, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !734, file: !735, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !734, file: !735, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !734, file: !735, line: 62, baseType: !744, size: 192, offset: 64)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 192, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 3)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !674, file: !155, line: 3376, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !155, line: 1408, size: 256, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !155, line: 1409, baseType: !710, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !748, file: !155, line: 1410, baseType: !752, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !754, line: 27, size: 192, elements: !755)
!754 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !753, file: !754, line: 29, baseType: !720, size: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !753, file: !754, line: 30, baseType: !15, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !674, file: !155, line: 3377, baseType: !759, size: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !155, line: 1437, size: 256, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !759, file: !155, line: 1438, baseType: !710, size: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !759, file: !155, line: 1439, baseType: !672, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !674, file: !155, line: 3378, baseType: !764, size: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !155, line: 1418, size: 256, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !764, file: !155, line: 1419, baseType: !710, size: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !764, file: !155, line: 1420, baseType: !601, size: 32, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !764, file: !155, line: 1421, baseType: !769, size: 8, offset: 224)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 8, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 1)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !674, file: !155, line: 3379, baseType: !773, size: 320)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !155, line: 1428, size: 320, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !155, line: 1429, baseType: !710, size: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !773, file: !155, line: 1430, baseType: !672, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !773, file: !155, line: 1431, baseType: !672, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !674, file: !155, line: 3380, baseType: !779, size: 320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !155, line: 1460, size: 320, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !155, line: 1461, baseType: !710, size: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !779, file: !155, line: 1462, baseType: !783, size: 128, offset: 192)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !784, line: 31, size: 128, elements: !785)
!784 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!785 = !{!786, !789, !790}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !783, file: !784, line: 32, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !783, file: !784, line: 33, baseType: !7, size: 32, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !783, file: !784, line: 34, baseType: !7, size: 32, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !674, file: !155, line: 3381, baseType: !792, size: 384)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !155, line: 2507, size: 384, elements: !793)
!793 = !{!794, !795, !796, !797, !798}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !155, line: 2508, baseType: !710, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !792, file: !155, line: 2509, baseType: !665, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !792, file: !155, line: 2510, baseType: !7, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !792, file: !155, line: 2511, baseType: !672, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !792, file: !155, line: 2512, baseType: !672, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !674, file: !155, line: 3382, baseType: !800, size: 896)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !155, line: 2652, size: 896, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !800, file: !155, line: 2653, baseType: !792, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !800, file: !155, line: 2654, baseType: !672, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !800, file: !155, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !800, file: !155, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !800, file: !155, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !800, file: !155, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !800, file: !155, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !800, file: !155, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !800, file: !155, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !800, file: !155, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !800, file: !155, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !800, file: !155, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !800, file: !155, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !800, file: !155, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !800, file: !155, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !800, file: !155, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !800, file: !155, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !800, file: !155, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !800, file: !155, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !800, file: !155, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !800, file: !155, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !800, file: !155, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !800, file: !155, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !800, file: !155, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !800, file: !155, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !800, file: !155, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !800, file: !155, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !800, file: !155, line: 2703, baseType: !7, size: 32, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !800, file: !155, line: 2705, baseType: !672, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !800, file: !155, line: 2706, baseType: !672, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !800, file: !155, line: 2707, baseType: !672, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !800, file: !155, line: 2708, baseType: !672, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !800, file: !155, line: 2711, baseType: !835, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !155, line: 2711, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !674, file: !155, line: 3383, baseType: !838, size: 960)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !155, line: 2756, size: 960, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !155, line: 2757, baseType: !800, size: 896)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !838, file: !155, line: 2758, baseType: !842, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !610, line: 50, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !391, line: 240, size: 384, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !844, file: !391, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !844, file: !391, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !844, file: !391, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !844, file: !391, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !844, file: !391, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !844, file: !391, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !844, file: !391, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !844, file: !391, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !844, file: !391, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !844, file: !391, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !844, file: !391, line: 321, baseType: !857, size: 320, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !391, line: 315, size: 320, elements: !858)
!858 = !{!859, !977, !979, !1042, !1043}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !857, file: !391, line: 316, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 64, elements: !770)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !391, line: 183, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !391, line: 166, size: 64, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !876, !877, !889, !892, !952, !953, !954, !967, !974}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !862, file: !391, line: 168, baseType: !601, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !862, file: !391, line: 169, baseType: !7, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !862, file: !391, line: 170, baseType: !606, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !862, file: !391, line: 171, baseType: !842, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !862, file: !391, line: 172, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !610, line: 53, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !391, line: 359, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !871, file: !391, line: 360, baseType: !601, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !871, file: !391, line: 361, baseType: !875, size: 64, offset: 64)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 64, elements: !770)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !862, file: !391, line: 173, baseType: !15, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !862, file: !391, line: 174, baseType: !878, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !391, line: 133, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 115, size: 32, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !879, file: !391, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !879, file: !391, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !879, file: !391, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !879, file: !391, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !879, file: !391, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !879, file: !391, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !879, file: !391, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !879, file: !391, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !862, file: !391, line: 175, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !391, line: 175, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !862, file: !391, line: 176, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !895, line: 75, size: 256, elements: !896)
!895 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!896 = !{!897, !911, !912, !913}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !894, file: !895, line: 76, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !895, line: 68, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !895, line: 63, size: 320, elements: !901)
!901 = !{!902, !904, !905, !906}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !895, line: 64, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !900, file: !895, line: 65, baseType: !903, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !900, file: !895, line: 66, baseType: !7, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !900, file: !895, line: 67, baseType: !907, size: 128, offset: 192)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 128, elements: !909)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !895, line: 29, baseType: !725)
!909 = !{!910}
!910 = !DISubrange(count: 2)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !894, file: !895, line: 77, baseType: !898, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !894, file: !895, line: 78, baseType: !7, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !894, file: !895, line: 79, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !895, line: 49, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !895, line: 45, size: 832, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !916, file: !895, line: 46, baseType: !903, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !916, file: !895, line: 47, baseType: !893, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !916, file: !895, line: 48, baseType: !921, size: 704, offset: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !922, line: 164, size: 704, elements: !923)
!922 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!923 = !{!924, !925, !935, !936, !937, !938, !939, !940, !944, !948, !949, !950, !951}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !921, file: !922, line: 166, baseType: !727, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !921, file: !922, line: 167, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !922, line: 157, size: 192, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !927, file: !922, line: 159, baseType: !603, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !927, file: !922, line: 160, baseType: !926, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !927, file: !922, line: 161, baseType: !932, size: 32, offset: 128)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 32, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 4)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !921, file: !922, line: 168, baseType: !603, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !921, file: !922, line: 169, baseType: !603, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !921, file: !922, line: 170, baseType: !603, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !921, file: !922, line: 171, baseType: !727, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !921, file: !922, line: 172, baseType: !601, size: 32, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !921, file: !922, line: 176, baseType: !941, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!926, !605, !727}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !921, file: !922, line: 177, baseType: !945, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !605, !926}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !921, file: !922, line: 178, baseType: !605, size: 64, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !921, file: !922, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !921, file: !922, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !921, file: !922, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !862, file: !391, line: 177, baseType: !672, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !862, file: !391, line: 178, baseType: !611, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !862, file: !391, line: 179, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !391, line: 150, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !391, line: 142, size: 320, elements: !958)
!958 = !{!959, !960, !961, !962, !965, !966}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !957, file: !391, line: 144, baseType: !672, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !957, file: !391, line: 145, baseType: !842, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !957, file: !391, line: 146, baseType: !842, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !957, file: !391, line: 147, baseType: !963, size: 32, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !964, line: 31, baseType: !601)
!964 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !957, file: !391, line: 148, baseType: !7, size: 32, offset: 224)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !957, file: !391, line: 149, baseType: !600, size: 8, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !862, file: !391, line: 180, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !391, line: 162, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !391, line: 159, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !970, file: !391, line: 160, baseType: !672, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !970, file: !391, line: 161, baseType: !727, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !862, file: !391, line: 181, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !391, line: 181, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !857, file: !391, line: 317, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 64, elements: !770)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !857, file: !391, line: 318, baseType: !980, size: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !391, line: 188, size: 320, elements: !981)
!981 = !{!982, !984, !1041}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !980, file: !391, line: 190, baseType: !983, size: 192)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 192, elements: !745)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !980, file: !391, line: 193, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !391, line: 206, size: 320, elements: !987)
!987 = !{!988, !1026, !1027, !1028, !1040}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !986, file: !391, line: 208, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !610, line: 62, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !992, line: 538, size: 256, elements: !993)
!992 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = !{!994, !998, !1004, !1017}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !991, file: !992, line: 539, baseType: !995, size: 32)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !992, line: 482, size: 32, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !992, line: 484, baseType: !7, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !991, file: !992, line: 540, baseType: !999, size: 192)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !992, line: 488, size: 192, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !999, file: !992, line: 489, baseType: !995, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !999, file: !992, line: 492, baseType: !606, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !999, file: !992, line: 496, baseType: !672, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !991, file: !992, line: 541, baseType: !1005, size: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !992, line: 504, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1015, !1016}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !992, line: 505, baseType: !995, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1005, file: !992, line: 509, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !992, line: 501, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1005, file: !992, line: 510, baseType: !1013, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !992, line: 513, baseType: !989, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !991, file: !992, line: 542, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !992, line: 530, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1018, file: !992, line: 531, baseType: !995, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1018, file: !992, line: 534, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !992, line: 525, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!600, !672, !606, !725, !725}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !986, file: !391, line: 211, baseType: !7, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !986, file: !391, line: 214, baseType: !727, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !986, file: !391, line: 224, baseType: !1029, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !391, line: 202, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !391, line: 202, size: 128, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1031, file: !391, line: 202, baseType: !1034, size: 128)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !391, line: 200, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !391, line: 200, size: 128, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1035, file: !391, line: 200, baseType: !7, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1035, file: !391, line: 200, baseType: !7, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1035, file: !391, line: 200, baseType: !875, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !986, file: !391, line: 234, baseType: !1029, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !980, file: !391, line: 197, baseType: !727, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !857, file: !391, line: 319, baseType: !734, size: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !857, file: !391, line: 320, baseType: !753, size: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !674, file: !155, line: 3384, baseType: !1045, size: 1472)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !155, line: 3114, size: 1472, elements: !1046)
!1046 = !{!1047, !1068, !1069, !1070, !1071}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1045, file: !155, line: 3115, baseType: !1048, size: 1216)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !155, line: 2984, size: 1216, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1048, file: !155, line: 2985, baseType: !838, size: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1048, file: !155, line: 2986, baseType: !672, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1048, file: !155, line: 2987, baseType: !672, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1048, file: !155, line: 2988, baseType: !672, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1048, file: !155, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1048, file: !155, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1048, file: !155, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1048, file: !155, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1048, file: !155, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1048, file: !155, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1048, file: !155, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1048, file: !155, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1048, file: !155, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1048, file: !155, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1048, file: !155, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1048, file: !155, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1048, file: !155, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1048, file: !155, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1045, file: !155, line: 3117, baseType: !672, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1045, file: !155, line: 3119, baseType: !672, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1045, file: !155, line: 3121, baseType: !672, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1045, file: !155, line: 3123, baseType: !672, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !674, file: !155, line: 3385, baseType: !1073, size: 1088)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !155, line: 2874, size: 1088, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !155, line: 2875, baseType: !838, size: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1073, file: !155, line: 2876, baseType: !842, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1073, file: !155, line: 2877, baseType: !1078, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1080, line: 172, size: 128, elements: !1081)
!1080 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1079, file: !1080, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1079, file: !1080, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1079, file: !1080, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1079, file: !1080, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1079, file: !1080, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1079, file: !1080, line: 195, baseType: !7, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1079, file: !1080, line: 199, baseType: !672, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !674, file: !155, line: 3386, baseType: !1048, size: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !674, file: !155, line: 3387, baseType: !1091, size: 1280)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !155, line: 3093, size: 1280, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1091, file: !155, line: 3094, baseType: !1048, size: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1091, file: !155, line: 3095, baseType: !1078, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !674, file: !155, line: 3388, baseType: !1096, size: 1216)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !155, line: 2824, size: 1216, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !155, line: 2825, baseType: !800, size: 896)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1096, file: !155, line: 2827, baseType: !672, size: 64, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1096, file: !155, line: 2828, baseType: !672, size: 64, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1096, file: !155, line: 2829, baseType: !672, size: 64, offset: 1024)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1096, file: !155, line: 2830, baseType: !672, size: 64, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1096, file: !155, line: 2831, baseType: !672, size: 64, offset: 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !674, file: !155, line: 3389, baseType: !1105, size: 1024)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !155, line: 2850, size: 1024, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1105, file: !155, line: 2851, baseType: !838, size: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1105, file: !155, line: 2852, baseType: !601, size: 32, offset: 960)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1105, file: !155, line: 2853, baseType: !601, size: 32, offset: 992)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !674, file: !155, line: 3390, baseType: !1111, size: 1024)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !155, line: 2857, size: 1024, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1111, file: !155, line: 2858, baseType: !838, size: 960)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1111, file: !155, line: 2859, baseType: !1078, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !674, file: !155, line: 3391, baseType: !1116, size: 960)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !155, line: 2862, size: 960, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1116, file: !155, line: 2863, baseType: !838, size: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !674, file: !155, line: 3392, baseType: !1120, size: 1472)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !155, line: 3304, size: 1472, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1120, file: !155, line: 3305, baseType: !1045, size: 1472)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !674, file: !155, line: 3393, baseType: !1124, size: 1792)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !155, line: 3248, size: 1792, elements: !1125)
!1125 = !{!1126, !1127, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1124, file: !155, line: 3249, baseType: !1045, size: 1472)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1124, file: !155, line: 3251, baseType: !1128, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1130, line: 463, size: 1152, elements: !1131)
!1130 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1131 = !{!1132, !1135, !1165, !1166, !1305, !1368, !1369, !1370, !1371, !1372, !1373, !1397, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1129, file: !1130, line: 464, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1130, line: 464, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1129, file: !1130, line: 467, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !144, line: 374, size: 640, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1154, !1155, !1156, !1157, !1158, !1159, !1161, !1163, !1164}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1137, file: !144, line: 377, baseType: !609, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1137, file: !144, line: 378, baseType: !609, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1137, file: !144, line: 381, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !144, line: 282, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !144, line: 282, size: 128, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1144, file: !144, line: 282, baseType: !1147, size: 128)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !144, line: 281, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !144, line: 281, size: 128, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1148, file: !144, line: 281, baseType: !7, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1148, file: !144, line: 281, baseType: !7, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1148, file: !144, line: 281, baseType: !1153, size: 64, offset: 64)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 64, elements: !770)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1137, file: !144, line: 384, baseType: !601, size: 32, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1137, file: !144, line: 387, baseType: !601, size: 32, offset: 224)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1137, file: !144, line: 390, baseType: !601, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1137, file: !144, line: 394, baseType: !1142, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1137, file: !144, line: 396, baseType: !143, size: 32, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1137, file: !144, line: 399, baseType: !1160, size: 64, offset: 416)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !909)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1137, file: !144, line: 402, baseType: !1162, size: 64, offset: 480)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !909)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1137, file: !144, line: 406, baseType: !601, size: 32, offset: 544)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1137, file: !144, line: 409, baseType: !601, size: 32, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1129, file: !1130, line: 470, baseType: !638, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1129, file: !1130, line: 473, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1080, line: 39, size: 1152, elements: !1169)
!1169 = !{!1170, !1220, !1233, !1246, !1247, !1259, !1260, !1264, !1265, !1266, !1267, !1268}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1168, file: !1080, line: 41, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1172, line: 144, baseType: !1173)
!1172 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1172, line: 100, size: 896, elements: !1175)
!1175 = !{!1176, !1182, !1187, !1192, !1194, !1197, !1198, !1199, !1200, !1201, !1206, !1208, !1209, !1214, !1219}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1174, file: !1172, line: 102, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1172, line: 52, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !1013}
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1172, line: 47, baseType: !7)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1174, file: !1172, line: 105, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1172, line: 59, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!601, !1013, !1013}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1174, file: !1172, line: 108, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1172, line: 63, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !605}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1174, file: !1172, line: 111, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1174, file: !1172, line: 114, baseType: !1195, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1196, line: 46, baseType: !725)
!1196 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1174, file: !1172, line: 117, baseType: !1195, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1174, file: !1172, line: 120, baseType: !1195, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1174, file: !1172, line: 124, baseType: !7, size: 32, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1174, file: !1172, line: 128, baseType: !7, size: 32, offset: 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1174, file: !1172, line: 131, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1172, line: 75, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!605, !1195, !1195}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1174, file: !1172, line: 132, baseType: !1207, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1172, line: 78, baseType: !1189)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1174, file: !1172, line: 135, baseType: !605, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1174, file: !1172, line: 136, baseType: !1210, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1172, line: 82, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!605, !605, !1195, !1195}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1174, file: !1172, line: 137, baseType: !1215, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1172, line: 83, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !605, !605}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1174, file: !1172, line: 141, baseType: !7, size: 32, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1168, file: !1080, line: 48, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !534, line: 35, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !534, line: 35, size: 128, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1223, file: !534, line: 35, baseType: !1226, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !534, line: 33, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !534, line: 33, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1227, file: !534, line: 33, baseType: !7, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1227, file: !534, line: 33, baseType: !7, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1227, file: !534, line: 33, baseType: !1232, size: 64, offset: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 64, elements: !770)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1168, file: !1080, line: 51, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !155, line: 183, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !155, line: 183, size: 128, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1236, file: !155, line: 183, baseType: !1239, size: 128)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !155, line: 182, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !155, line: 182, size: 128, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1240, file: !155, line: 182, baseType: !7, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1240, file: !155, line: 182, baseType: !7, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1240, file: !155, line: 182, baseType: !1245, size: 64, offset: 64)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 64, elements: !770)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1168, file: !1080, line: 54, baseType: !672, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1168, file: !1080, line: 57, baseType: !1248, size: 128, offset: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1249, line: 31, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1248, file: !1249, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1248, file: !1249, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1248, file: !1249, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1248, file: !1249, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1248, file: !1249, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1248, file: !1249, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1248, file: !1249, line: 56, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !610, line: 47, baseType: !893)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1168, file: !1080, line: 60, baseType: !1248, size: 128, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1168, file: !1080, line: 64, baseType: !1261, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1263, line: 33, flags: DIFlagFwdDecl)
!1263 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1168, file: !1080, line: 67, baseType: !672, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1168, file: !1080, line: 73, baseType: !1171, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1168, file: !1080, line: 77, baseType: !1258, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1168, file: !1080, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1168, file: !1080, line: 82, baseType: !1269, size: 320, offset: 832)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1270, line: 62, size: 320, elements: !1271)
!1270 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1271 = !{!1272, !1278, !1279, !1280, !1281, !1288}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1269, file: !1270, line: 63, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1270, line: 56, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1274, file: !1270, line: 57, baseType: !1273, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1274, file: !1270, line: 58, baseType: !769, size: 8, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1269, file: !1270, line: 64, baseType: !7, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1269, file: !1270, line: 66, baseType: !7, size: 32, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1269, file: !1270, line: 68, baseType: !600, size: 8, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1269, file: !1270, line: 70, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1270, line: 37, size: 128, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1283, file: !1270, line: 39, baseType: !1282, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1283, file: !1270, line: 40, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1269, file: !1270, line: 71, baseType: !1289, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1270, line: 45, size: 320, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1290, file: !1270, line: 47, baseType: !1289, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1290, file: !1270, line: 48, baseType: !1294, size: 256, offset: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !155, line: 1883, size: 256, elements: !1295)
!1295 = !{!1296, !1298, !1299, !1304}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1294, file: !155, line: 1884, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1294, file: !155, line: 1885, baseType: !1297, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1294, file: !155, line: 1891, baseType: !1300, size: 64, offset: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !155, line: 1891, size: 64, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1300, file: !155, line: 1891, baseType: !647, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1300, file: !155, line: 1891, baseType: !672, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1294, file: !155, line: 1892, baseType: !1287, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1129, file: !1130, line: 476, baseType: !1306, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !6, line: 187, size: 256, elements: !1308)
!1308 = !{!1309, !1310, !1366, !1367}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1307, file: !6, line: 189, baseType: !601, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1307, file: !6, line: 192, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !6, line: 87, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !6, line: 87, size: 128, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1313, file: !6, line: 87, baseType: !1316, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !6, line: 85, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !6, line: 85, size: 128, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1317, file: !6, line: 85, baseType: !7, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1317, file: !6, line: 85, baseType: !7, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1317, file: !6, line: 85, baseType: !1322, size: 64, offset: 64)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 64, elements: !770)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !6, line: 84, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !6, line: 100, size: 1216, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1356, !1364, !1365}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1325, file: !6, line: 102, baseType: !601, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1325, file: !6, line: 105, baseType: !7, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1325, file: !6, line: 108, baseType: !611, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1325, file: !6, line: 111, baseType: !611, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1325, file: !6, line: 114, baseType: !1332, size: 64, offset: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !6, line: 41, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1332, file: !6, line: 42, baseType: !5, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1332, file: !6, line: 43, baseType: !7, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1325, file: !6, line: 117, baseType: !7, size: 32, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1325, file: !6, line: 120, baseType: !7, size: 32, offset: 288)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1325, file: !6, line: 123, baseType: !1311, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1325, file: !6, line: 126, baseType: !1324, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1325, file: !6, line: 129, baseType: !1324, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1325, file: !6, line: 132, baseType: !605, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1325, file: !6, line: 139, baseType: !672, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1325, file: !6, line: 143, baseType: !720, size: 128, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1325, file: !6, line: 146, baseType: !720, size: 128, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1325, file: !6, line: 148, baseType: !600, size: 8, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1325, file: !6, line: 149, baseType: !600, size: 8, offset: 904)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1325, file: !6, line: 153, baseType: !386, size: 32, offset: 928)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1325, file: !6, line: 156, baseType: !1349, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !6, line: 48, size: 320, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1350, file: !6, line: 50, baseType: !647, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1350, file: !6, line: 59, baseType: !720, size: 128, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1350, file: !6, line: 64, baseType: !600, size: 8, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1350, file: !6, line: 67, baseType: !1349, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1325, file: !6, line: 159, baseType: !1357, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !6, line: 72, size: 256, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1358, file: !6, line: 74, baseType: !628, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1358, file: !6, line: 77, baseType: !1357, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1358, file: !6, line: 78, baseType: !1357, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1358, file: !6, line: 81, baseType: !1357, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1325, file: !6, line: 162, baseType: !600, size: 8, offset: 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1325, file: !6, line: 166, baseType: !672, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1307, file: !6, line: 197, baseType: !1171, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1307, file: !6, line: 200, baseType: !1324, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1129, file: !1130, line: 479, baseType: !1171, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1129, file: !1130, line: 484, baseType: !672, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1129, file: !1130, line: 488, baseType: !672, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1129, file: !1130, line: 493, baseType: !672, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1129, file: !1130, line: 496, baseType: !672, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1129, file: !1130, line: 501, baseType: !1374, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !350, line: 2355, size: 576, elements: !1376)
!1376 = !{!1377, !1380, !1381, !1382, !1383, !1385, !1386, !1391, !1392, !1393, !1394, !1395, !1396}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1375, file: !350, line: 2356, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !350, line: 2356, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1375, file: !350, line: 2357, baseType: !606, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1375, file: !350, line: 2358, baseType: !601, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1375, file: !350, line: 2359, baseType: !601, size: 32, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1375, file: !350, line: 2360, baseType: !1384, size: 128, offset: 192)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !933)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1375, file: !350, line: 2364, baseType: !601, size: 32, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1375, file: !350, line: 2367, baseType: !1387, size: 128, offset: 384)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !350, line: 2349, size: 128, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1387, file: !350, line: 2351, baseType: !842, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1387, file: !350, line: 2352, baseType: !727, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1375, file: !350, line: 2371, baseType: !349, size: 32, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1375, file: !350, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1375, file: !350, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1375, file: !350, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1375, file: !350, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1375, file: !350, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1129, file: !1130, line: 504, baseType: !1398, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1130, line: 504, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1129, file: !1130, line: 507, baseType: !1171, size: 64, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1129, file: !1130, line: 510, baseType: !601, size: 32, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1129, file: !1130, line: 513, baseType: !601, size: 32, offset: 864)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1129, file: !1130, line: 516, baseType: !665, size: 32, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1129, file: !1130, line: 519, baseType: !665, size: 32, offset: 928)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1129, file: !1130, line: 522, baseType: !7, size: 32, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1129, file: !1130, line: 523, baseType: !7, size: 32, offset: 992)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1129, file: !1130, line: 528, baseType: !606, size: 64, offset: 1024)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1129, file: !1130, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1129, file: !1130, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1129, file: !1130, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1129, file: !1130, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1129, file: !1130, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1129, file: !1130, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1129, file: !1130, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1129, file: !1130, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1129, file: !1130, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1129, file: !1130, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1129, file: !1130, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1129, file: !1130, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1129, file: !1130, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1129, file: !1130, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1129, file: !1130, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1129, file: !1130, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1124, file: !155, line: 3254, baseType: !672, size: 64, offset: 1536)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1124, file: !155, line: 3257, baseType: !672, size: 64, offset: 1600)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1124, file: !155, line: 3258, baseType: !672, size: 64, offset: 1664)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1124, file: !155, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1124, file: !155, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1124, file: !155, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1124, file: !155, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1124, file: !155, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1124, file: !155, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1124, file: !155, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1124, file: !155, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1124, file: !155, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1124, file: !155, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1124, file: !155, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1124, file: !155, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1124, file: !155, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1124, file: !155, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1124, file: !155, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1124, file: !155, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1124, file: !155, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1124, file: !155, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !155, line: 3394, baseType: !1446, size: 1344)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !155, line: 2279, size: 1344, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !155, line: 2280, baseType: !710, size: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1446, file: !155, line: 2281, baseType: !672, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1446, file: !155, line: 2282, baseType: !672, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1446, file: !155, line: 2283, baseType: !672, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1446, file: !155, line: 2284, baseType: !672, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1446, file: !155, line: 2285, baseType: !7, size: 32, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1446, file: !155, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1446, file: !155, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1446, file: !155, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1446, file: !155, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1446, file: !155, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1446, file: !155, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1446, file: !155, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1446, file: !155, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1446, file: !155, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1446, file: !155, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1446, file: !155, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1446, file: !155, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1446, file: !155, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1446, file: !155, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1446, file: !155, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1446, file: !155, line: 2305, baseType: !7, size: 32, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1446, file: !155, line: 2306, baseType: !963, size: 32, offset: 544)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1446, file: !155, line: 2307, baseType: !672, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1446, file: !155, line: 2308, baseType: !672, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1446, file: !155, line: 2314, baseType: !1474, size: 64, offset: 704)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !155, line: 2309, size: 64, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1474, file: !155, line: 2310, baseType: !601, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1474, file: !155, line: 2311, baseType: !606, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1474, file: !155, line: 2312, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !155, line: 2277, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1446, file: !155, line: 2315, baseType: !672, size: 64, offset: 768)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1446, file: !155, line: 2316, baseType: !672, size: 64, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1446, file: !155, line: 2317, baseType: !672, size: 64, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1446, file: !155, line: 2318, baseType: !672, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1446, file: !155, line: 2319, baseType: !672, size: 64, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1446, file: !155, line: 2320, baseType: !672, size: 64, offset: 1088)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1446, file: !155, line: 2321, baseType: !672, size: 64, offset: 1152)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1446, file: !155, line: 2322, baseType: !672, size: 64, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1446, file: !155, line: 2324, baseType: !1490, size: 64, offset: 1280)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !155, line: 2324, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !674, file: !155, line: 3395, baseType: !1493, size: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !155, line: 1469, size: 320, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1493, file: !155, line: 1470, baseType: !710, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1493, file: !155, line: 1471, baseType: !672, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1493, file: !155, line: 1472, baseType: !672, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !674, file: !155, line: 3396, baseType: !1499, size: 320)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !155, line: 1482, size: 320, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1499, file: !155, line: 1483, baseType: !710, size: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1499, file: !155, line: 1484, baseType: !601, size: 32, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1499, file: !155, line: 1485, baseType: !1245, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !674, file: !155, line: 3397, baseType: !1505, size: 384)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !155, line: 1829, size: 384, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1505, file: !155, line: 1830, baseType: !710, size: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1505, file: !155, line: 1831, baseType: !665, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1505, file: !155, line: 1832, baseType: !672, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1505, file: !155, line: 1835, baseType: !1245, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !674, file: !155, line: 3398, baseType: !1512, size: 704)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !155, line: 1898, size: 704, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1523}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1512, file: !155, line: 1899, baseType: !710, size: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1512, file: !155, line: 1902, baseType: !672, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1512, file: !155, line: 1905, baseType: !647, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1512, file: !155, line: 1908, baseType: !7, size: 32, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1512, file: !155, line: 1911, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1080, line: 117, size: 128, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1520, file: !1080, line: 120, baseType: !1248, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1512, file: !155, line: 1914, baseType: !1294, size: 256, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !674, file: !155, line: 3399, baseType: !1525, size: 704)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !155, line: 2008, size: 704, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1525, file: !155, line: 2009, baseType: !710, size: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1525, file: !155, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1525, file: !155, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1525, file: !155, line: 2014, baseType: !665, size: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1525, file: !155, line: 2016, baseType: !672, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1525, file: !155, line: 2017, baseType: !1234, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1525, file: !155, line: 2019, baseType: !672, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1525, file: !155, line: 2020, baseType: !672, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1525, file: !155, line: 2021, baseType: !672, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1525, file: !155, line: 2022, baseType: !672, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1525, file: !155, line: 2023, baseType: !672, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !674, file: !155, line: 3400, baseType: !1539, size: 832)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !155, line: 2430, size: 832, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1539, file: !155, line: 2431, baseType: !710, size: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1539, file: !155, line: 2433, baseType: !672, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1539, file: !155, line: 2434, baseType: !672, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1539, file: !155, line: 2435, baseType: !672, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1539, file: !155, line: 2436, baseType: !672, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1539, file: !155, line: 2437, baseType: !1234, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1539, file: !155, line: 2438, baseType: !672, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1539, file: !155, line: 2440, baseType: !672, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1539, file: !155, line: 2441, baseType: !672, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1539, file: !155, line: 2443, baseType: !1551, size: 128, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !155, line: 182, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !155, line: 182, size: 128, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1552, file: !155, line: 182, baseType: !1239, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !674, file: !155, line: 3401, baseType: !1556, size: 320)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !155, line: 3327, size: 320, elements: !1557)
!1557 = !{!1558, !1559, !1566}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1556, file: !155, line: 3329, baseType: !710, size: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1556, file: !155, line: 3330, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !155, line: 3320, size: 192, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1561, file: !155, line: 3322, baseType: !1560, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1561, file: !155, line: 3323, baseType: !1560, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1561, file: !155, line: 3324, baseType: !672, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1556, file: !155, line: 3331, baseType: !1560, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !674, file: !155, line: 3402, baseType: !1568, size: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !155, line: 1540, size: 256, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1568, file: !155, line: 1541, baseType: !710, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1568, file: !155, line: 1542, baseType: !1572, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !155, line: 1538, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !155, line: 1538, size: 192, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1574, file: !155, line: 1538, baseType: !1577, size: 192)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !155, line: 1537, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !155, line: 1537, size: 192, elements: !1579)
!1579 = !{!1580, !1581, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1578, file: !155, line: 1537, baseType: !7, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1578, file: !155, line: 1537, baseType: !7, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1578, file: !155, line: 1537, baseType: !1583, size: 128, offset: 64)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 128, elements: !770)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !155, line: 1535, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !155, line: 1532, size: 128, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1585, file: !155, line: 1533, baseType: !672, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1585, file: !155, line: 1534, baseType: !672, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !674, file: !155, line: 3403, baseType: !1590, size: 512)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !155, line: 1938, size: 512, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1601, !1602, !1603}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1590, file: !155, line: 1939, baseType: !710, size: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1590, file: !155, line: 1940, baseType: !665, size: 32, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1590, file: !155, line: 1941, baseType: !354, size: 32, offset: 224)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1590, file: !155, line: 1946, baseType: !1596, size: 32, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !155, line: 1942, size: 32, elements: !1597)
!1597 = !{!1598, !1599, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1596, file: !155, line: 1943, baseType: !372, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1596, file: !155, line: 1944, baseType: !379, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1596, file: !155, line: 1945, baseType: !154, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1590, file: !155, line: 1950, baseType: !637, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1590, file: !155, line: 1951, baseType: !637, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1590, file: !155, line: 1953, baseType: !1245, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !674, file: !155, line: 3404, baseType: !1605, size: 1664)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !155, line: 3337, size: 1664, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1605, file: !155, line: 3338, baseType: !710, size: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1605, file: !155, line: 3341, baseType: !1609, size: 1472, offset: 192)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1610, line: 410, size: 1472, elements: !1611)
!1610 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1609, file: !1610, line: 412, baseType: !601, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1609, file: !1610, line: 413, baseType: !601, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1609, file: !1610, line: 414, baseType: !601, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1609, file: !1610, line: 415, baseType: !601, size: 32, offset: 96)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1609, file: !1610, line: 416, baseType: !601, size: 32, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1609, file: !1610, line: 417, baseType: !601, size: 32, offset: 160)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1609, file: !1610, line: 418, baseType: !600, size: 8, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1609, file: !1610, line: 419, baseType: !600, size: 8, offset: 200)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1609, file: !1610, line: 420, baseType: !1621, size: 8, offset: 208)
!1621 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1609, file: !1610, line: 421, baseType: !1621, size: 8, offset: 216)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1609, file: !1610, line: 422, baseType: !1621, size: 8, offset: 224)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1609, file: !1610, line: 423, baseType: !1621, size: 8, offset: 232)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1609, file: !1610, line: 424, baseType: !1621, size: 8, offset: 240)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1609, file: !1610, line: 425, baseType: !1621, size: 8, offset: 248)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1609, file: !1610, line: 426, baseType: !1621, size: 8, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1609, file: !1610, line: 427, baseType: !1621, size: 8, offset: 264)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1609, file: !1610, line: 428, baseType: !1621, size: 8, offset: 272)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1609, file: !1610, line: 429, baseType: !1621, size: 8, offset: 280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1609, file: !1610, line: 430, baseType: !1621, size: 8, offset: 288)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1609, file: !1610, line: 431, baseType: !1621, size: 8, offset: 296)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1609, file: !1610, line: 432, baseType: !1621, size: 8, offset: 304)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1609, file: !1610, line: 433, baseType: !1621, size: 8, offset: 312)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1609, file: !1610, line: 434, baseType: !1621, size: 8, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1609, file: !1610, line: 435, baseType: !1621, size: 8, offset: 328)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1609, file: !1610, line: 436, baseType: !1621, size: 8, offset: 336)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1609, file: !1610, line: 437, baseType: !1621, size: 8, offset: 344)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1609, file: !1610, line: 438, baseType: !1621, size: 8, offset: 352)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1609, file: !1610, line: 439, baseType: !1621, size: 8, offset: 360)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1609, file: !1610, line: 440, baseType: !1621, size: 8, offset: 368)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1609, file: !1610, line: 441, baseType: !1621, size: 8, offset: 376)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1609, file: !1610, line: 442, baseType: !1621, size: 8, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1609, file: !1610, line: 443, baseType: !1621, size: 8, offset: 392)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1609, file: !1610, line: 444, baseType: !1621, size: 8, offset: 400)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1609, file: !1610, line: 445, baseType: !1621, size: 8, offset: 408)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1609, file: !1610, line: 446, baseType: !1621, size: 8, offset: 416)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1609, file: !1610, line: 447, baseType: !1621, size: 8, offset: 424)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1609, file: !1610, line: 448, baseType: !1621, size: 8, offset: 432)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1609, file: !1610, line: 449, baseType: !1621, size: 8, offset: 440)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1609, file: !1610, line: 450, baseType: !1621, size: 8, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1609, file: !1610, line: 451, baseType: !1621, size: 8, offset: 456)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1609, file: !1610, line: 452, baseType: !1621, size: 8, offset: 464)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1609, file: !1610, line: 453, baseType: !1621, size: 8, offset: 472)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1609, file: !1610, line: 454, baseType: !1621, size: 8, offset: 480)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1609, file: !1610, line: 455, baseType: !1621, size: 8, offset: 488)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1609, file: !1610, line: 456, baseType: !1621, size: 8, offset: 496)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1609, file: !1610, line: 457, baseType: !1621, size: 8, offset: 504)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1609, file: !1610, line: 458, baseType: !1621, size: 8, offset: 512)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1609, file: !1610, line: 459, baseType: !1621, size: 8, offset: 520)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1609, file: !1610, line: 460, baseType: !1621, size: 8, offset: 528)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1609, file: !1610, line: 461, baseType: !1621, size: 8, offset: 536)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1609, file: !1610, line: 462, baseType: !1621, size: 8, offset: 544)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1609, file: !1610, line: 463, baseType: !1621, size: 8, offset: 552)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1609, file: !1610, line: 464, baseType: !1621, size: 8, offset: 560)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1609, file: !1610, line: 465, baseType: !1621, size: 8, offset: 568)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1609, file: !1610, line: 466, baseType: !1621, size: 8, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1609, file: !1610, line: 467, baseType: !1621, size: 8, offset: 584)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1609, file: !1610, line: 468, baseType: !1621, size: 8, offset: 592)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1609, file: !1610, line: 469, baseType: !1621, size: 8, offset: 600)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1609, file: !1610, line: 470, baseType: !1621, size: 8, offset: 608)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1609, file: !1610, line: 471, baseType: !1621, size: 8, offset: 616)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1609, file: !1610, line: 472, baseType: !1621, size: 8, offset: 624)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1609, file: !1610, line: 473, baseType: !1621, size: 8, offset: 632)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1609, file: !1610, line: 474, baseType: !1621, size: 8, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1609, file: !1610, line: 475, baseType: !1621, size: 8, offset: 648)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1609, file: !1610, line: 476, baseType: !1621, size: 8, offset: 656)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1609, file: !1610, line: 477, baseType: !1621, size: 8, offset: 664)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1609, file: !1610, line: 478, baseType: !1621, size: 8, offset: 672)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1609, file: !1610, line: 479, baseType: !1621, size: 8, offset: 680)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1609, file: !1610, line: 480, baseType: !1621, size: 8, offset: 688)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1609, file: !1610, line: 481, baseType: !1621, size: 8, offset: 696)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1609, file: !1610, line: 482, baseType: !1621, size: 8, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1609, file: !1610, line: 483, baseType: !1621, size: 8, offset: 712)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1609, file: !1610, line: 484, baseType: !1621, size: 8, offset: 720)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1609, file: !1610, line: 485, baseType: !1621, size: 8, offset: 728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1609, file: !1610, line: 486, baseType: !1621, size: 8, offset: 736)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1609, file: !1610, line: 487, baseType: !1621, size: 8, offset: 744)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1609, file: !1610, line: 488, baseType: !1621, size: 8, offset: 752)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1609, file: !1610, line: 489, baseType: !1621, size: 8, offset: 760)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1609, file: !1610, line: 490, baseType: !1621, size: 8, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1609, file: !1610, line: 491, baseType: !1621, size: 8, offset: 776)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1609, file: !1610, line: 492, baseType: !1621, size: 8, offset: 784)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1609, file: !1610, line: 493, baseType: !1621, size: 8, offset: 792)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1609, file: !1610, line: 494, baseType: !1621, size: 8, offset: 800)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1609, file: !1610, line: 495, baseType: !1621, size: 8, offset: 808)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1609, file: !1610, line: 496, baseType: !1621, size: 8, offset: 816)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1609, file: !1610, line: 497, baseType: !1621, size: 8, offset: 824)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1609, file: !1610, line: 498, baseType: !1621, size: 8, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1609, file: !1610, line: 499, baseType: !1621, size: 8, offset: 840)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1609, file: !1610, line: 500, baseType: !1621, size: 8, offset: 848)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1609, file: !1610, line: 501, baseType: !1621, size: 8, offset: 856)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1609, file: !1610, line: 502, baseType: !1621, size: 8, offset: 864)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1609, file: !1610, line: 503, baseType: !1621, size: 8, offset: 872)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1609, file: !1610, line: 504, baseType: !1621, size: 8, offset: 880)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1609, file: !1610, line: 505, baseType: !1621, size: 8, offset: 888)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1609, file: !1610, line: 506, baseType: !1621, size: 8, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1609, file: !1610, line: 507, baseType: !1621, size: 8, offset: 904)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1609, file: !1610, line: 508, baseType: !1621, size: 8, offset: 912)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1609, file: !1610, line: 509, baseType: !1621, size: 8, offset: 920)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1609, file: !1610, line: 510, baseType: !1621, size: 8, offset: 928)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1609, file: !1610, line: 511, baseType: !1621, size: 8, offset: 936)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1609, file: !1610, line: 512, baseType: !1621, size: 8, offset: 944)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1609, file: !1610, line: 513, baseType: !1621, size: 8, offset: 952)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1609, file: !1610, line: 514, baseType: !1621, size: 8, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1609, file: !1610, line: 515, baseType: !1621, size: 8, offset: 968)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1609, file: !1610, line: 516, baseType: !1621, size: 8, offset: 976)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1609, file: !1610, line: 517, baseType: !1621, size: 8, offset: 984)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1609, file: !1610, line: 518, baseType: !1621, size: 8, offset: 992)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1609, file: !1610, line: 519, baseType: !1621, size: 8, offset: 1000)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1609, file: !1610, line: 520, baseType: !1621, size: 8, offset: 1008)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1609, file: !1610, line: 521, baseType: !1621, size: 8, offset: 1016)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1609, file: !1610, line: 522, baseType: !1621, size: 8, offset: 1024)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1609, file: !1610, line: 523, baseType: !1621, size: 8, offset: 1032)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1609, file: !1610, line: 524, baseType: !1621, size: 8, offset: 1040)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1609, file: !1610, line: 525, baseType: !1621, size: 8, offset: 1048)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1609, file: !1610, line: 526, baseType: !1621, size: 8, offset: 1056)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1609, file: !1610, line: 527, baseType: !1621, size: 8, offset: 1064)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1609, file: !1610, line: 528, baseType: !1621, size: 8, offset: 1072)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1609, file: !1610, line: 529, baseType: !1621, size: 8, offset: 1080)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1609, file: !1610, line: 530, baseType: !1621, size: 8, offset: 1088)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1609, file: !1610, line: 531, baseType: !1621, size: 8, offset: 1096)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1609, file: !1610, line: 532, baseType: !1621, size: 8, offset: 1104)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1609, file: !1610, line: 533, baseType: !1621, size: 8, offset: 1112)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1609, file: !1610, line: 534, baseType: !1621, size: 8, offset: 1120)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1609, file: !1610, line: 535, baseType: !1621, size: 8, offset: 1128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1609, file: !1610, line: 536, baseType: !1621, size: 8, offset: 1136)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1609, file: !1610, line: 537, baseType: !1621, size: 8, offset: 1144)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1609, file: !1610, line: 538, baseType: !1621, size: 8, offset: 1152)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1609, file: !1610, line: 539, baseType: !1621, size: 8, offset: 1160)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1609, file: !1610, line: 540, baseType: !1621, size: 8, offset: 1168)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1609, file: !1610, line: 541, baseType: !1621, size: 8, offset: 1176)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1609, file: !1610, line: 542, baseType: !1621, size: 8, offset: 1184)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1609, file: !1610, line: 543, baseType: !1621, size: 8, offset: 1192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1609, file: !1610, line: 544, baseType: !1621, size: 8, offset: 1200)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1609, file: !1610, line: 545, baseType: !1621, size: 8, offset: 1208)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1609, file: !1610, line: 546, baseType: !1621, size: 8, offset: 1216)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1609, file: !1610, line: 547, baseType: !1621, size: 8, offset: 1224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1609, file: !1610, line: 548, baseType: !1621, size: 8, offset: 1232)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1609, file: !1610, line: 549, baseType: !1621, size: 8, offset: 1240)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1609, file: !1610, line: 550, baseType: !1621, size: 8, offset: 1248)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1609, file: !1610, line: 551, baseType: !1621, size: 8, offset: 1256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1609, file: !1610, line: 552, baseType: !1621, size: 8, offset: 1264)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1609, file: !1610, line: 553, baseType: !1621, size: 8, offset: 1272)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1609, file: !1610, line: 554, baseType: !1621, size: 8, offset: 1280)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1609, file: !1610, line: 555, baseType: !1621, size: 8, offset: 1288)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1609, file: !1610, line: 556, baseType: !1621, size: 8, offset: 1296)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1609, file: !1610, line: 557, baseType: !1621, size: 8, offset: 1304)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1609, file: !1610, line: 558, baseType: !1621, size: 8, offset: 1312)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1609, file: !1610, line: 559, baseType: !1621, size: 8, offset: 1320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1609, file: !1610, line: 560, baseType: !1621, size: 8, offset: 1328)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1609, file: !1610, line: 561, baseType: !1621, size: 8, offset: 1336)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1609, file: !1610, line: 562, baseType: !1621, size: 8, offset: 1344)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1609, file: !1610, line: 563, baseType: !1621, size: 8, offset: 1352)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1609, file: !1610, line: 564, baseType: !1621, size: 8, offset: 1360)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1609, file: !1610, line: 565, baseType: !1621, size: 8, offset: 1368)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1609, file: !1610, line: 566, baseType: !1621, size: 8, offset: 1376)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1609, file: !1610, line: 567, baseType: !1621, size: 8, offset: 1384)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1609, file: !1610, line: 568, baseType: !1621, size: 8, offset: 1392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1609, file: !1610, line: 569, baseType: !1621, size: 8, offset: 1400)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1609, file: !1610, line: 570, baseType: !1621, size: 8, offset: 1408)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1609, file: !1610, line: 571, baseType: !1621, size: 8, offset: 1416)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1609, file: !1610, line: 572, baseType: !1621, size: 8, offset: 1424)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1609, file: !1610, line: 573, baseType: !1621, size: 8, offset: 1432)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1609, file: !1610, line: 574, baseType: !1621, size: 8, offset: 1440)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !674, file: !155, line: 3405, baseType: !1777, size: 384)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !155, line: 3352, size: 384, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1777, file: !155, line: 3353, baseType: !710, size: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1777, file: !155, line: 3356, baseType: !1781, size: 192, offset: 192)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1610, line: 578, size: 192, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1781, file: !1610, line: 580, baseType: !601, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1781, file: !1610, line: 581, baseType: !601, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1781, file: !1610, line: 582, baseType: !601, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1781, file: !1610, line: 583, baseType: !601, size: 32, offset: 96)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1781, file: !1610, line: 584, baseType: !600, size: 8, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1781, file: !1610, line: 585, baseType: !600, size: 8, offset: 136)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1781, file: !1610, line: 586, baseType: !600, size: 8, offset: 144)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1781, file: !1610, line: 587, baseType: !600, size: 8, offset: 152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1781, file: !1610, line: 588, baseType: !600, size: 8, offset: 160)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1781, file: !1610, line: 589, baseType: !600, size: 8, offset: 168)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1781, file: !1610, line: 590, baseType: !600, size: 8, offset: 176)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !649, file: !534, line: 739, baseType: !1795, size: 448)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !534, line: 350, size: 448, elements: !1796)
!1796 = !{!1797, !1803}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1795, file: !534, line: 353, baseType: !1798, size: 384)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !534, line: 333, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1798, file: !534, line: 336, baseType: !652, size: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1798, file: !534, line: 343, baseType: !1282, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1798, file: !534, line: 344, baseType: !1289, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1795, file: !534, line: 359, baseType: !1245, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !649, file: !534, line: 740, baseType: !1805, size: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !534, line: 365, size: 512, elements: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1805, file: !534, line: 368, baseType: !1798, size: 384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1805, file: !534, line: 373, baseType: !672, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1805, file: !534, line: 374, baseType: !672, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !649, file: !534, line: 741, baseType: !1811, size: 576)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !534, line: 380, size: 576, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1811, file: !534, line: 383, baseType: !1805, size: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1811, file: !534, line: 389, baseType: !1245, size: 64, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !649, file: !534, line: 742, baseType: !1816, size: 320)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !534, line: 395, size: 320, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1816, file: !534, line: 397, baseType: !652, size: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1816, file: !534, line: 400, baseType: !637, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !649, file: !534, line: 743, baseType: !1821, size: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !534, line: 406, size: 448, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1821, file: !534, line: 408, baseType: !652, size: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1821, file: !534, line: 412, baseType: !672, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1821, file: !534, line: 420, baseType: !672, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1821, file: !534, line: 423, baseType: !637, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !649, file: !534, line: 744, baseType: !1828, size: 384)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !534, line: 429, size: 384, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1828, file: !534, line: 431, baseType: !652, size: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1828, file: !534, line: 434, baseType: !672, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1828, file: !534, line: 437, baseType: !637, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !649, file: !534, line: 745, baseType: !1834, size: 384)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !534, line: 443, size: 384, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1834, file: !534, line: 445, baseType: !652, size: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1834, file: !534, line: 449, baseType: !672, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1834, file: !534, line: 453, baseType: !637, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !649, file: !534, line: 746, baseType: !1840, size: 320)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !534, line: 459, size: 320, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1840, file: !534, line: 461, baseType: !652, size: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1840, file: !534, line: 464, baseType: !672, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !649, file: !534, line: 747, baseType: !1845, size: 768)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !534, line: 469, size: 768, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1845, file: !534, line: 471, baseType: !652, size: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1845, file: !534, line: 474, baseType: !7, size: 32, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1845, file: !534, line: 475, baseType: !7, size: 32, offset: 288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1845, file: !534, line: 478, baseType: !672, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1845, file: !534, line: 481, baseType: !1852, size: 384, offset: 384)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 384, elements: !770)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !155, line: 1917, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1853, file: !155, line: 1920, baseType: !1294, size: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1853, file: !155, line: 1921, baseType: !672, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1853, file: !155, line: 1922, baseType: !665, size: 32, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !649, file: !534, line: 748, baseType: !1859, size: 320)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !534, line: 487, size: 320, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1859, file: !534, line: 490, baseType: !652, size: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1859, file: !534, line: 494, baseType: !601, size: 32, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !649, file: !534, line: 749, baseType: !1864, size: 384)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !534, line: 500, size: 384, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1864, file: !534, line: 502, baseType: !652, size: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1864, file: !534, line: 506, baseType: !637, size: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1864, file: !534, line: 510, baseType: !637, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !649, file: !534, line: 750, baseType: !1870, size: 320)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !534, line: 529, size: 320, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1870, file: !534, line: 531, baseType: !652, size: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1870, file: !534, line: 540, baseType: !637, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !649, file: !534, line: 751, baseType: !1875, size: 704)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !534, line: 546, size: 704, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1875, file: !534, line: 549, baseType: !1805, size: 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1875, file: !534, line: 553, baseType: !606, size: 64, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1875, file: !534, line: 557, baseType: !600, size: 8, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1875, file: !534, line: 558, baseType: !600, size: 8, offset: 584)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1875, file: !534, line: 559, baseType: !600, size: 8, offset: 592)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1875, file: !534, line: 560, baseType: !600, size: 8, offset: 600)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1875, file: !534, line: 566, baseType: !1245, size: 64, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !649, file: !534, line: 752, baseType: !1885, size: 384)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !534, line: 571, size: 384, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1885, file: !534, line: 573, baseType: !1816, size: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !534, line: 577, baseType: !672, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !649, file: !534, line: 753, baseType: !1890, size: 576)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !534, line: 600, size: 576, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895, !1904}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1890, file: !534, line: 602, baseType: !1816, size: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1890, file: !534, line: 605, baseType: !672, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1890, file: !534, line: 609, baseType: !1195, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1890, file: !534, line: 612, baseType: !1896, size: 64, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !534, line: 581, size: 320, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1897, file: !534, line: 583, baseType: !154, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1897, file: !534, line: 586, baseType: !672, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1897, file: !534, line: 589, baseType: !672, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1897, file: !534, line: 592, baseType: !672, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1897, file: !534, line: 595, baseType: !672, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1890, file: !534, line: 616, baseType: !637, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !649, file: !534, line: 754, baseType: !1906, size: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !534, line: 622, size: 512, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1906, file: !534, line: 624, baseType: !1816, size: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1906, file: !534, line: 628, baseType: !672, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1906, file: !534, line: 632, baseType: !672, size: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1906, file: !534, line: 636, baseType: !672, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !649, file: !534, line: 755, baseType: !1913, size: 704)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !534, line: 642, size: 704, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1913, file: !534, line: 644, baseType: !1906, size: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1913, file: !534, line: 648, baseType: !672, size: 64, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1913, file: !534, line: 652, baseType: !672, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1913, file: !534, line: 653, baseType: !672, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !649, file: !534, line: 756, baseType: !1920, size: 448)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !534, line: 663, size: 448, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1920, file: !534, line: 665, baseType: !1816, size: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1920, file: !534, line: 668, baseType: !672, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1920, file: !534, line: 673, baseType: !672, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !649, file: !534, line: 757, baseType: !1926, size: 384)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !534, line: 694, size: 384, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1926, file: !534, line: 696, baseType: !1816, size: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1926, file: !534, line: 699, baseType: !672, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !649, file: !534, line: 758, baseType: !1931, size: 384)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !534, line: 681, size: 384, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1931, file: !534, line: 683, baseType: !652, size: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1931, file: !534, line: 686, baseType: !672, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1931, file: !534, line: 689, baseType: !672, size: 64, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !649, file: !534, line: 759, baseType: !1937, size: 384)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !534, line: 707, size: 384, elements: !1938)
!1938 = !{!1939, !1940, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1937, file: !534, line: 709, baseType: !652, size: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1937, file: !534, line: 712, baseType: !672, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1937, file: !534, line: 712, baseType: !672, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !649, file: !534, line: 760, baseType: !1943, size: 320)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !534, line: 718, size: 320, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1943, file: !534, line: 720, baseType: !652, size: 256)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1943, file: !534, line: 723, baseType: !672, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !644, file: !534, line: 138, baseType: !643, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !534, line: 139, baseType: !643, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !639, file: !534, line: 146, baseType: !642, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !639, file: !534, line: 152, baseType: !637, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !634, file: !144, line: 130, baseType: !842, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !629, file: !144, line: 134, baseType: !605, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !629, file: !144, line: 137, baseType: !672, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !629, file: !144, line: 138, baseType: !665, size: 32, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !629, file: !144, line: 142, baseType: !7, size: 32, offset: 352)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !144, line: 144, baseType: !601, size: 32, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !629, file: !144, line: 145, baseType: !601, size: 32, offset: 416)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !629, file: !144, line: 146, baseType: !1959, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !144, line: 119, baseType: !727)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !612, file: !144, line: 220, baseType: !615, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !612, file: !144, line: 223, baseType: !605, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !612, file: !144, line: 226, baseType: !1324, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !612, file: !144, line: 229, baseType: !1964, size: 128, offset: 256)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 128, elements: !909)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !144, line: 229, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !612, file: !144, line: 232, baseType: !611, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !612, file: !144, line: 233, baseType: !611, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !612, file: !144, line: 238, baseType: !1970, size: 64, offset: 512)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !144, line: 235, size: 64, elements: !1971)
!1971 = !{!1972, !1978}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1970, file: !144, line: 236, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !144, line: 273, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1974, file: !144, line: 275, baseType: !637, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1974, file: !144, line: 278, baseType: !637, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1970, file: !144, line: 237, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !144, line: 259, size: 320, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1980, file: !144, line: 261, baseType: !842, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1980, file: !144, line: 262, baseType: !842, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1980, file: !144, line: 266, baseType: !842, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1980, file: !144, line: 267, baseType: !842, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1980, file: !144, line: 270, baseType: !601, size: 32, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !144, line: 241, baseType: !1959, size: 64, offset: 576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !612, file: !144, line: 244, baseType: !601, size: 32, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !612, file: !144, line: 247, baseType: !601, size: 32, offset: 672)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !612, file: !144, line: 250, baseType: !601, size: 32, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !612, file: !144, line: 253, baseType: !601, size: 32, offset: 736)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !144, line: 256, baseType: !601, size: 32, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !610, line: 112, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !144, line: 283, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !144, line: 283, size: 128, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2000, file: !144, line: 283, baseType: !1147, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !144, line: 152, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !144, line: 152, size: 128, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2007, file: !144, line: 152, baseType: !620, size: 128)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !2012, line: 32, baseType: !2013)
!2012 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !2012, line: 32, size: 96, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2013, file: !2012, line: 32, baseType: !2016, size: 96)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !2012, line: 31, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !2012, line: 31, size: 96, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2017, file: !2012, line: 31, baseType: !7, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2017, file: !2012, line: 31, baseType: !7, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2017, file: !2012, line: 31, baseType: !2022, size: 32, offset: 64)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 32, elements: !770)
!2023 = !{!0}
!2024 = !{i32 2, !"Dwarf Version", i32 4}
!2025 = !{i32 2, !"Debug Info Version", i32 3}
!2026 = !{i32 1, !"wchar_size", i32 4}
!2027 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2028 = distinct !DISubprogram(name: "vprintf", scope: !2029, file: !2029, line: 39, type: !2030, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2029 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!601, !2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !606)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2034, file: !3, baseType: !7, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2034, file: !3, baseType: !7, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2034, file: !3, baseType: !605, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2034, file: !3, baseType: !605, size: 64, offset: 128)
!2040 = !{!2041, !2042}
!2041 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2028, file: !2029, line: 39, type: !2032)
!2042 = !DILocalVariable(name: "__arg", arg: 2, scope: !2028, file: !2029, line: 39, type: !2033)
!2043 = !DILocation(line: 0, scope: !2028)
!2044 = !DILocation(line: 41, column: 20, scope: !2028)
!2045 = !DILocation(line: 41, column: 10, scope: !2028)
!2046 = !DILocation(line: 41, column: 3, scope: !2028)
!2047 = distinct !DISubprogram(name: "getchar", scope: !2029, file: !2029, line: 47, type: !2048, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!601}
!2050 = !{}
!2051 = !DILocation(line: 49, column: 16, scope: !2047)
!2052 = !DILocation(line: 49, column: 10, scope: !2047)
!2053 = !DILocation(line: 49, column: 3, scope: !2047)
!2054 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2029, file: !2029, line: 56, type: !2055, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!601, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2059, line: 7, baseType: !2060)
!2059 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2061, line: 49, size: 1728, elements: !2062)
!2061 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2078, !2080, !2081, !2082, !2085, !2087, !2088, !2089, !2092, !2094, !2097, !2100, !2101, !2102, !2103, !2104}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2060, file: !2061, line: 51, baseType: !601, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2060, file: !2061, line: 54, baseType: !603, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2060, file: !2061, line: 55, baseType: !603, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2060, file: !2061, line: 56, baseType: !603, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2060, file: !2061, line: 57, baseType: !603, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2060, file: !2061, line: 58, baseType: !603, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2060, file: !2061, line: 59, baseType: !603, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2060, file: !2061, line: 60, baseType: !603, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2060, file: !2061, line: 61, baseType: !603, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2060, file: !2061, line: 64, baseType: !603, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2060, file: !2061, line: 65, baseType: !603, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2060, file: !2061, line: 66, baseType: !603, size: 64, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2060, file: !2061, line: 68, baseType: !2076, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2061, line: 36, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2060, file: !2061, line: 70, baseType: !2079, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2060, file: !2061, line: 72, baseType: !601, size: 32, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2060, file: !2061, line: 73, baseType: !601, size: 32, offset: 928)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2060, file: !2061, line: 74, baseType: !2083, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2084, line: 152, baseType: !727)
!2084 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2060, file: !2061, line: 77, baseType: !2086, size: 16, offset: 1024)
!2086 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2060, file: !2061, line: 78, baseType: !1621, size: 8, offset: 1040)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2060, file: !2061, line: 79, baseType: !769, size: 8, offset: 1048)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2060, file: !2061, line: 81, baseType: !2090, size: 64, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2061, line: 43, baseType: null)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2060, file: !2061, line: 89, baseType: !2093, size: 64, offset: 1152)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2084, line: 153, baseType: !727)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2060, file: !2061, line: 91, baseType: !2095, size: 64, offset: 1216)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2061, line: 37, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2060, file: !2061, line: 92, baseType: !2098, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2061, line: 38, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2060, file: !2061, line: 93, baseType: !2079, size: 64, offset: 1344)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2060, file: !2061, line: 94, baseType: !605, size: 64, offset: 1408)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2060, file: !2061, line: 95, baseType: !1195, size: 64, offset: 1472)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2060, file: !2061, line: 96, baseType: !601, size: 32, offset: 1536)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2060, file: !2061, line: 98, baseType: !2105, size: 160, offset: 1568)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 160, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 20)
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "__fp", arg: 1, scope: !2054, file: !2029, line: 56, type: !2057)
!2110 = !DILocation(line: 0, scope: !2054)
!2111 = !DILocation(line: 58, column: 10, scope: !2054)
!2112 = !DILocation(line: 58, column: 3, scope: !2054)
!2113 = distinct !DISubprogram(name: "getc_unlocked", scope: !2029, file: !2029, line: 66, type: !2055, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "__fp", arg: 1, scope: !2113, file: !2029, line: 66, type: !2057)
!2116 = !DILocation(line: 0, scope: !2113)
!2117 = !DILocation(line: 68, column: 10, scope: !2113)
!2118 = !DILocation(line: 68, column: 3, scope: !2113)
!2119 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2029, file: !2029, line: 73, type: !2048, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2120 = !DILocation(line: 75, column: 10, scope: !2119)
!2121 = !DILocation(line: 75, column: 3, scope: !2119)
!2122 = distinct !DISubprogram(name: "putchar", scope: !2029, file: !2029, line: 82, type: !2123, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!601, !601}
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !2029, line: 82, type: !601)
!2127 = !DILocation(line: 0, scope: !2122)
!2128 = !DILocation(line: 84, column: 21, scope: !2122)
!2129 = !DILocation(line: 84, column: 10, scope: !2122)
!2130 = !DILocation(line: 84, column: 3, scope: !2122)
!2131 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2029, file: !2029, line: 91, type: !2132, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!601, !601, !2057}
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "__c", arg: 1, scope: !2131, file: !2029, line: 91, type: !601)
!2136 = !DILocalVariable(name: "__stream", arg: 2, scope: !2131, file: !2029, line: 91, type: !2057)
!2137 = !DILocation(line: 0, scope: !2131)
!2138 = !DILocation(line: 93, column: 10, scope: !2131)
!2139 = !DILocation(line: 93, column: 3, scope: !2131)
!2140 = distinct !DISubprogram(name: "putc_unlocked", scope: !2029, file: !2029, line: 101, type: !2132, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2141 = !{!2142, !2143}
!2142 = !DILocalVariable(name: "__c", arg: 1, scope: !2140, file: !2029, line: 101, type: !601)
!2143 = !DILocalVariable(name: "__stream", arg: 2, scope: !2140, file: !2029, line: 101, type: !2057)
!2144 = !DILocation(line: 0, scope: !2140)
!2145 = !DILocation(line: 103, column: 10, scope: !2140)
!2146 = !DILocation(line: 103, column: 3, scope: !2140)
!2147 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2029, file: !2029, line: 108, type: !2123, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "__c", arg: 1, scope: !2147, file: !2029, line: 108, type: !601)
!2150 = !DILocation(line: 0, scope: !2147)
!2151 = !DILocation(line: 110, column: 10, scope: !2147)
!2152 = !DILocation(line: 110, column: 3, scope: !2147)
!2153 = distinct !DISubprogram(name: "getline", scope: !2029, file: !2029, line: 118, type: !2154, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2156, !602, !2157, !2057}
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2084, line: 193, baseType: !727)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2153, file: !2029, line: 118, type: !602)
!2160 = !DILocalVariable(name: "__n", arg: 2, scope: !2153, file: !2029, line: 118, type: !2157)
!2161 = !DILocalVariable(name: "__stream", arg: 3, scope: !2153, file: !2029, line: 118, type: !2057)
!2162 = !DILocation(line: 0, scope: !2153)
!2163 = !DILocation(line: 120, column: 10, scope: !2153)
!2164 = !DILocation(line: 120, column: 3, scope: !2153)
!2165 = distinct !DISubprogram(name: "feof_unlocked", scope: !2029, file: !2029, line: 128, type: !2055, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__stream", arg: 1, scope: !2165, file: !2029, line: 128, type: !2057)
!2168 = !DILocation(line: 0, scope: !2165)
!2169 = !DILocation(line: 130, column: 10, scope: !2165)
!2170 = !DILocation(line: 130, column: 3, scope: !2165)
!2171 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2029, file: !2029, line: 135, type: !2055, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "__stream", arg: 1, scope: !2171, file: !2029, line: 135, type: !2057)
!2174 = !DILocation(line: 0, scope: !2171)
!2175 = !DILocation(line: 137, column: 10, scope: !2171)
!2176 = !DILocation(line: 137, column: 3, scope: !2171)
!2177 = distinct !DISubprogram(name: "tolower", scope: !2178, file: !2178, line: 207, type: !2123, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2178 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "__c", arg: 1, scope: !2177, file: !2178, line: 207, type: !601)
!2181 = !DILocation(line: 0, scope: !2177)
!2182 = !DILocation(line: 209, column: 22, scope: !2177)
!2183 = !DILocation(line: 209, column: 39, scope: !2177)
!2184 = !DILocation(line: 209, column: 38, scope: !2177)
!2185 = !DILocation(line: 209, column: 37, scope: !2177)
!2186 = !DILocation(line: 209, column: 10, scope: !2177)
!2187 = !DILocation(line: 209, column: 3, scope: !2177)
!2188 = distinct !DISubprogram(name: "toupper", scope: !2178, file: !2178, line: 213, type: !2123, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2189 = !{!2190}
!2190 = !DILocalVariable(name: "__c", arg: 1, scope: !2188, file: !2178, line: 213, type: !601)
!2191 = !DILocation(line: 0, scope: !2188)
!2192 = !DILocation(line: 215, column: 22, scope: !2188)
!2193 = !DILocation(line: 215, column: 39, scope: !2188)
!2194 = !DILocation(line: 215, column: 38, scope: !2188)
!2195 = !DILocation(line: 215, column: 37, scope: !2188)
!2196 = !DILocation(line: 215, column: 10, scope: !2188)
!2197 = !DILocation(line: 215, column: 3, scope: !2188)
!2198 = distinct !DISubprogram(name: "atoi", scope: !2199, file: !2199, line: 361, type: !2200, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2199 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!601, !606}
!2202 = !{!2203}
!2203 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2198, file: !2199, line: 361, type: !606)
!2204 = !DILocation(line: 0, scope: !2198)
!2205 = !DILocation(line: 363, column: 16, scope: !2198)
!2206 = !DILocation(line: 363, column: 10, scope: !2198)
!2207 = !DILocation(line: 363, column: 3, scope: !2198)
!2208 = distinct !DISubprogram(name: "atol", scope: !2199, file: !2199, line: 366, type: !2209, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!727, !606}
!2211 = !{!2212}
!2212 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2208, file: !2199, line: 366, type: !606)
!2213 = !DILocation(line: 0, scope: !2208)
!2214 = !DILocation(line: 368, column: 10, scope: !2208)
!2215 = !DILocation(line: 368, column: 3, scope: !2208)
!2216 = distinct !DISubprogram(name: "atoll", scope: !2199, file: !2199, line: 373, type: !2217, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2220)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2219, !606}
!2219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2216, file: !2199, line: 373, type: !606)
!2222 = !DILocation(line: 0, scope: !2216)
!2223 = !DILocation(line: 375, column: 10, scope: !2216)
!2224 = !DILocation(line: 375, column: 3, scope: !2216)
!2225 = distinct !DISubprogram(name: "bsearch", scope: !2226, file: !2226, line: 20, type: !2227, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!605, !1013, !1013, !1195, !1195, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2199, line: 808, baseType: !1184)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2231 = !DILocalVariable(name: "__key", arg: 1, scope: !2225, file: !2226, line: 20, type: !1013)
!2232 = !DILocalVariable(name: "__base", arg: 2, scope: !2225, file: !2226, line: 20, type: !1013)
!2233 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2225, file: !2226, line: 20, type: !1195)
!2234 = !DILocalVariable(name: "__size", arg: 4, scope: !2225, file: !2226, line: 20, type: !1195)
!2235 = !DILocalVariable(name: "__compar", arg: 5, scope: !2225, file: !2226, line: 21, type: !2229)
!2236 = !DILocalVariable(name: "__l", scope: !2225, file: !2226, line: 23, type: !1195)
!2237 = !DILocalVariable(name: "__u", scope: !2225, file: !2226, line: 23, type: !1195)
!2238 = !DILocalVariable(name: "__idx", scope: !2225, file: !2226, line: 23, type: !1195)
!2239 = !DILocalVariable(name: "__p", scope: !2225, file: !2226, line: 24, type: !1013)
!2240 = !DILocalVariable(name: "__comparison", scope: !2225, file: !2226, line: 25, type: !601)
!2241 = !DILocation(line: 0, scope: !2225)
!2242 = !DILocation(line: 29, column: 3, scope: !2225)
!2243 = !DILocation(line: 27, column: 7, scope: !2225)
!2244 = !DILocation(line: 29, column: 14, scope: !2225)
!2245 = !DILocation(line: 31, column: 20, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2225, file: !2226, line: 30, column: 5)
!2247 = !DILocation(line: 31, column: 27, scope: !2246)
!2248 = !DILocation(line: 32, column: 56, scope: !2246)
!2249 = !DILocation(line: 32, column: 47, scope: !2246)
!2250 = !DILocation(line: 33, column: 22, scope: !2246)
!2251 = !DILocation(line: 34, column: 24, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2246, file: !2226, line: 34, column: 11)
!2253 = !DILocation(line: 34, column: 11, scope: !2246)
!2254 = !DILocation(line: 36, column: 29, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !2226, line: 36, column: 16)
!2256 = !DILocation(line: 36, column: 16, scope: !2252)
!2257 = !DILocation(line: 37, column: 14, scope: !2255)
!2258 = distinct !{!2258, !2242, !2259}
!2259 = !DILocation(line: 40, column: 5, scope: !2225)
!2260 = !DILocation(line: 43, column: 1, scope: !2225)
!2261 = distinct !DISubprogram(name: "atof", scope: !2262, file: !2262, line: 25, type: !2263, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2265, !606}
!2265 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2266 = !{!2267}
!2267 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2261, file: !2262, line: 25, type: !606)
!2268 = !DILocation(line: 0, scope: !2261)
!2269 = !DILocation(line: 27, column: 10, scope: !2261)
!2270 = !DILocation(line: 27, column: 3, scope: !2261)
!2271 = distinct !DISubprogram(name: "strtoimax", scope: !2272, file: !2272, line: 324, type: !2273, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2279)
!2272 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2275, !2032, !2278, !601}
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2276, line: 101, baseType: !2277)
!2276 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2084, line: 72, baseType: !727)
!2278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !602)
!2279 = !{!2280, !2281, !2282}
!2280 = !DILocalVariable(name: "nptr", arg: 1, scope: !2271, file: !2272, line: 324, type: !2032)
!2281 = !DILocalVariable(name: "endptr", arg: 2, scope: !2271, file: !2272, line: 324, type: !2278)
!2282 = !DILocalVariable(name: "base", arg: 3, scope: !2271, file: !2272, line: 324, type: !601)
!2283 = !DILocation(line: 0, scope: !2271)
!2284 = !DILocation(line: 327, column: 10, scope: !2271)
!2285 = !DILocation(line: 327, column: 3, scope: !2271)
!2286 = distinct !DISubprogram(name: "strtoumax", scope: !2272, file: !2272, line: 336, type: !2287, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!2289, !2032, !2278, !601}
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2276, line: 102, baseType: !2290)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2084, line: 73, baseType: !725)
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "nptr", arg: 1, scope: !2286, file: !2272, line: 336, type: !2032)
!2293 = !DILocalVariable(name: "endptr", arg: 2, scope: !2286, file: !2272, line: 336, type: !2278)
!2294 = !DILocalVariable(name: "base", arg: 3, scope: !2286, file: !2272, line: 336, type: !601)
!2295 = !DILocation(line: 0, scope: !2286)
!2296 = !DILocation(line: 339, column: 10, scope: !2286)
!2297 = !DILocation(line: 339, column: 3, scope: !2286)
!2298 = distinct !DISubprogram(name: "wcstoimax", scope: !2272, file: !2272, line: 348, type: !2299, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2308)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!2275, !2301, !2305, !601}
!2301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2302)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2272, line: 34, baseType: !601)
!2305 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "nptr", arg: 1, scope: !2298, file: !2272, line: 348, type: !2301)
!2310 = !DILocalVariable(name: "endptr", arg: 2, scope: !2298, file: !2272, line: 348, type: !2305)
!2311 = !DILocalVariable(name: "base", arg: 3, scope: !2298, file: !2272, line: 348, type: !601)
!2312 = !DILocation(line: 0, scope: !2298)
!2313 = !DILocation(line: 351, column: 10, scope: !2298)
!2314 = !DILocation(line: 351, column: 3, scope: !2298)
!2315 = distinct !DISubprogram(name: "wcstoumax", scope: !2272, file: !2272, line: 362, type: !2316, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2289, !2301, !2305, !601}
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "nptr", arg: 1, scope: !2315, file: !2272, line: 362, type: !2301)
!2320 = !DILocalVariable(name: "endptr", arg: 2, scope: !2315, file: !2272, line: 362, type: !2305)
!2321 = !DILocalVariable(name: "base", arg: 3, scope: !2315, file: !2272, line: 362, type: !601)
!2322 = !DILocation(line: 0, scope: !2315)
!2323 = !DILocation(line: 365, column: 10, scope: !2315)
!2324 = !DILocation(line: 365, column: 3, scope: !2315)
!2325 = distinct !DISubprogram(name: "stat", scope: !2326, file: !2326, line: 453, type: !2327, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!601, !606, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2331, line: 46, size: 1152, elements: !2332)
!2331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2332 = !{!2333, !2335, !2337, !2339, !2341, !2343, !2345, !2346, !2347, !2348, !2350, !2352, !2360, !2361, !2362}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2330, file: !2331, line: 48, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2084, line: 145, baseType: !725)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2330, file: !2331, line: 53, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2084, line: 148, baseType: !725)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2330, file: !2331, line: 61, baseType: !2338, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2084, line: 151, baseType: !725)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2330, file: !2331, line: 62, baseType: !2340, size: 32, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2084, line: 150, baseType: !7)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2330, file: !2331, line: 64, baseType: !2342, size: 32, offset: 224)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2084, line: 146, baseType: !7)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2330, file: !2331, line: 65, baseType: !2344, size: 32, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2084, line: 147, baseType: !7)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2330, file: !2331, line: 67, baseType: !601, size: 32, offset: 288)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2330, file: !2331, line: 69, baseType: !2334, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2330, file: !2331, line: 74, baseType: !2083, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2330, file: !2331, line: 78, baseType: !2349, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2084, line: 174, baseType: !727)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2330, file: !2331, line: 80, baseType: !2351, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2084, line: 179, baseType: !727)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2330, file: !2331, line: 91, baseType: !2353, size: 128, offset: 576)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2354, line: 10, size: 128, elements: !2355)
!2354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2355 = !{!2356, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2353, file: !2354, line: 12, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2084, line: 160, baseType: !727)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2353, file: !2354, line: 16, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2084, line: 196, baseType: !727)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2330, file: !2331, line: 92, baseType: !2353, size: 128, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2330, file: !2331, line: 93, baseType: !2353, size: 128, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2330, file: !2331, line: 106, baseType: !2363, size: 192, offset: 960)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2359, size: 192, elements: !745)
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "__path", arg: 1, scope: !2325, file: !2326, line: 453, type: !606)
!2366 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2325, file: !2326, line: 453, type: !2329)
!2367 = !DILocation(line: 0, scope: !2325)
!2368 = !DILocation(line: 455, column: 10, scope: !2325)
!2369 = !DILocation(line: 455, column: 3, scope: !2325)
!2370 = distinct !DISubprogram(name: "lstat", scope: !2326, file: !2326, line: 460, type: !2327, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "__path", arg: 1, scope: !2370, file: !2326, line: 460, type: !606)
!2373 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2370, file: !2326, line: 460, type: !2329)
!2374 = !DILocation(line: 0, scope: !2370)
!2375 = !DILocation(line: 462, column: 10, scope: !2370)
!2376 = !DILocation(line: 462, column: 3, scope: !2370)
!2377 = distinct !DISubprogram(name: "fstat", scope: !2326, file: !2326, line: 467, type: !2378, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!601, !601, !2329}
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "__fd", arg: 1, scope: !2377, file: !2326, line: 467, type: !601)
!2382 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2377, file: !2326, line: 467, type: !2329)
!2383 = !DILocation(line: 0, scope: !2377)
!2384 = !DILocation(line: 469, column: 10, scope: !2377)
!2385 = !DILocation(line: 469, column: 3, scope: !2377)
!2386 = distinct !DISubprogram(name: "fstatat", scope: !2326, file: !2326, line: 474, type: !2387, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!601, !601, !606, !2329, !601}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "__fd", arg: 1, scope: !2386, file: !2326, line: 474, type: !601)
!2391 = !DILocalVariable(name: "__filename", arg: 2, scope: !2386, file: !2326, line: 474, type: !606)
!2392 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2386, file: !2326, line: 474, type: !2329)
!2393 = !DILocalVariable(name: "__flag", arg: 4, scope: !2386, file: !2326, line: 474, type: !601)
!2394 = !DILocation(line: 0, scope: !2386)
!2395 = !DILocation(line: 477, column: 10, scope: !2386)
!2396 = !DILocation(line: 477, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "mknod", scope: !2326, file: !2326, line: 483, type: !2398, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!601, !606, !2340, !2334}
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "__path", arg: 1, scope: !2397, file: !2326, line: 483, type: !606)
!2402 = !DILocalVariable(name: "__mode", arg: 2, scope: !2397, file: !2326, line: 483, type: !2340)
!2403 = !DILocalVariable(name: "__dev", arg: 3, scope: !2397, file: !2326, line: 483, type: !2334)
!2404 = !DILocation(line: 0, scope: !2397)
!2405 = !DILocation(line: 485, column: 10, scope: !2397)
!2406 = !DILocation(line: 485, column: 3, scope: !2397)
!2407 = distinct !DISubprogram(name: "mknodat", scope: !2326, file: !2326, line: 491, type: !2408, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!601, !601, !606, !2340, !2334}
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DILocalVariable(name: "__fd", arg: 1, scope: !2407, file: !2326, line: 491, type: !601)
!2412 = !DILocalVariable(name: "__path", arg: 2, scope: !2407, file: !2326, line: 491, type: !606)
!2413 = !DILocalVariable(name: "__mode", arg: 3, scope: !2407, file: !2326, line: 491, type: !2340)
!2414 = !DILocalVariable(name: "__dev", arg: 4, scope: !2407, file: !2326, line: 491, type: !2334)
!2415 = !DILocation(line: 0, scope: !2407)
!2416 = !DILocation(line: 494, column: 10, scope: !2407)
!2417 = !DILocation(line: 494, column: 3, scope: !2407)
!2418 = distinct !DISubprogram(name: "stat64", scope: !2326, file: !2326, line: 502, type: !2419, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2441)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!601, !606, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2331, line: 119, size: 1152, elements: !2423)
!2423 = !{!2424, !2425, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2437, !2438, !2439, !2440}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2422, file: !2331, line: 121, baseType: !2334, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2422, file: !2331, line: 123, baseType: !2426, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2084, line: 149, baseType: !725)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2422, file: !2331, line: 124, baseType: !2338, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2422, file: !2331, line: 125, baseType: !2340, size: 32, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2422, file: !2331, line: 132, baseType: !2342, size: 32, offset: 224)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2422, file: !2331, line: 133, baseType: !2344, size: 32, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2422, file: !2331, line: 135, baseType: !601, size: 32, offset: 288)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2422, file: !2331, line: 136, baseType: !2334, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2422, file: !2331, line: 137, baseType: !2083, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2422, file: !2331, line: 143, baseType: !2349, size: 64, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2422, file: !2331, line: 144, baseType: !2436, size: 64, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2084, line: 180, baseType: !727)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2422, file: !2331, line: 152, baseType: !2353, size: 128, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2422, file: !2331, line: 153, baseType: !2353, size: 128, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2422, file: !2331, line: 154, baseType: !2353, size: 128, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2422, file: !2331, line: 164, baseType: !2363, size: 192, offset: 960)
!2441 = !{!2442, !2443}
!2442 = !DILocalVariable(name: "__path", arg: 1, scope: !2418, file: !2326, line: 502, type: !606)
!2443 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2418, file: !2326, line: 502, type: !2421)
!2444 = !DILocation(line: 0, scope: !2418)
!2445 = !DILocation(line: 504, column: 10, scope: !2418)
!2446 = !DILocation(line: 504, column: 3, scope: !2418)
!2447 = distinct !DISubprogram(name: "lstat64", scope: !2326, file: !2326, line: 509, type: !2419, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2448 = !{!2449, !2450}
!2449 = !DILocalVariable(name: "__path", arg: 1, scope: !2447, file: !2326, line: 509, type: !606)
!2450 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2447, file: !2326, line: 509, type: !2421)
!2451 = !DILocation(line: 0, scope: !2447)
!2452 = !DILocation(line: 511, column: 10, scope: !2447)
!2453 = !DILocation(line: 511, column: 3, scope: !2447)
!2454 = distinct !DISubprogram(name: "fstat64", scope: !2326, file: !2326, line: 516, type: !2455, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!601, !601, !2421}
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "__fd", arg: 1, scope: !2454, file: !2326, line: 516, type: !601)
!2459 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2454, file: !2326, line: 516, type: !2421)
!2460 = !DILocation(line: 0, scope: !2454)
!2461 = !DILocation(line: 518, column: 10, scope: !2454)
!2462 = !DILocation(line: 518, column: 3, scope: !2454)
!2463 = distinct !DISubprogram(name: "fstatat64", scope: !2326, file: !2326, line: 523, type: !2464, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!601, !601, !606, !2421, !601}
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DILocalVariable(name: "__fd", arg: 1, scope: !2463, file: !2326, line: 523, type: !601)
!2468 = !DILocalVariable(name: "__filename", arg: 2, scope: !2463, file: !2326, line: 523, type: !606)
!2469 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2463, file: !2326, line: 523, type: !2421)
!2470 = !DILocalVariable(name: "__flag", arg: 4, scope: !2463, file: !2326, line: 523, type: !601)
!2471 = !DILocation(line: 0, scope: !2463)
!2472 = !DILocation(line: 526, column: 10, scope: !2463)
!2473 = !DILocation(line: 526, column: 3, scope: !2463)
!2474 = distinct !DISubprogram(name: "remove_path", scope: !3, file: !3, line: 276, type: !2475, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!600, !627}
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2499, !2500, !2510}
!2478 = !DILocalVariable(name: "e", arg: 1, scope: !2474, file: !3, line: 276, type: !627)
!2479 = !DILocalVariable(name: "ae", scope: !2474, file: !3, line: 278, type: !627)
!2480 = !DILocalVariable(name: "rem_bbs", scope: !2474, file: !3, line: 279, type: !608)
!2481 = !DILocalVariable(name: "bord_bbs", scope: !2474, file: !3, line: 279, type: !608)
!2482 = !DILocalVariable(name: "from", scope: !2474, file: !3, line: 279, type: !609)
!2483 = !DILocalVariable(name: "bb", scope: !2474, file: !3, line: 279, type: !609)
!2484 = !DILocalVariable(name: "dom_bbs", scope: !2474, file: !3, line: 280, type: !1998)
!2485 = !DILocalVariable(name: "i", scope: !2474, file: !3, line: 281, type: !601)
!2486 = !DILocalVariable(name: "nrem", scope: !2474, file: !3, line: 281, type: !601)
!2487 = !DILocalVariable(name: "n_bord_bbs", scope: !2474, file: !3, line: 281, type: !601)
!2488 = !DILocalVariable(name: "seen", scope: !2474, file: !3, line: 282, type: !2489)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2490, line: 45, baseType: !2491)
!2490 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2490, line: 39, size: 192, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2492, file: !2490, line: 41, baseType: !599, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2492, file: !2490, line: 42, baseType: !7, size: 32, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2492, file: !2490, line: 43, baseType: !7, size: 32, offset: 96)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2492, file: !2490, line: 44, baseType: !2498, size: 64, offset: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 64, elements: !770)
!2499 = !DILocalVariable(name: "irred_invalidated", scope: !2474, file: !3, line: 283, type: !600)
!2500 = !DILocalVariable(name: "ei", scope: !2501, file: !3, line: 325, type: !2504)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 324, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 323, column: 3)
!2503 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 323, column: 3)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !144, line: 682, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 679, size: 128, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2505, file: !144, line: 680, baseType: !7, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2505, file: !144, line: 681, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!2510 = !DILocalVariable(name: "ldom", scope: !2511, file: !3, line: 355, type: !609)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 354, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 353, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 353, column: 3)
!2514 = !DILocation(line: 0, scope: !2474)
!2515 = !DILocation(line: 278, column: 3, scope: !2474)
!2516 = !DILocation(line: 279, column: 3, scope: !2474)
!2517 = !DILocation(line: 280, column: 3, scope: !2474)
!2518 = !DILocation(line: 283, column: 3, scope: !2474)
!2519 = !DILocation(line: 283, column: 8, scope: !2474)
!2520 = !DILocation(line: 285, column: 8, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 285, column: 7)
!2522 = !DILocation(line: 285, column: 7, scope: !2474)
!2523 = !DILocation(line: 293, column: 10, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 293, column: 7)
!2525 = !DILocation(line: 293, column: 16, scope: !2524)
!2526 = !DILocation(line: 293, column: 7, scope: !2474)
!2527 = !DILocation(line: 294, column: 23, scope: !2524)
!2528 = !DILocation(line: 294, column: 5, scope: !2524)
!2529 = !DILocation(line: 300, column: 26, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 300, column: 7)
!2531 = !DILocation(line: 300, column: 8, scope: !2530)
!2532 = !DILocation(line: 300, column: 7, scope: !2474)
!2533 = !DILocation(line: 301, column: 27, scope: !2530)
!2534 = !DILocation(line: 301, column: 9, scope: !2530)
!2535 = !DILocation(line: 301, column: 5, scope: !2530)
!2536 = !DILocation(line: 309, column: 11, scope: !2474)
!2537 = !DILocation(line: 307, column: 3, scope: !2474)
!2538 = !DILocation(line: 307, column: 25, scope: !2474)
!2539 = !DILocation(line: 307, column: 30, scope: !2474)
!2540 = !DILocation(line: 307, column: 10, scope: !2474)
!2541 = !DILocation(line: 308, column: 3, scope: !2474)
!2542 = !DILocation(line: 309, column: 16, scope: !2474)
!2543 = !DILocation(line: 309, column: 29, scope: !2474)
!2544 = !DILocation(line: 309, column: 39, scope: !2474)
!2545 = !DILocation(line: 308, column: 6, scope: !2474)
!2546 = !DILocation(line: 310, column: 16, scope: !2474)
!2547 = !DILocation(line: 310, column: 21, scope: !2474)
!2548 = !DILocation(line: 310, column: 5, scope: !2474)
!2549 = distinct !{!2549, !2537, !2550}
!2550 = !DILocation(line: 310, column: 52, scope: !2474)
!2551 = !DILocation(line: 313, column: 10, scope: !2474)
!2552 = !DILocation(line: 316, column: 14, scope: !2474)
!2553 = !DILocation(line: 317, column: 25, scope: !2474)
!2554 = !DILocation(line: 317, column: 10, scope: !2474)
!2555 = !DILocation(line: 318, column: 3, scope: !2474)
!2556 = !DILocation(line: 321, column: 8, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 321, column: 3)
!2558 = !DILocation(line: 0, scope: !2557)
!2559 = !DILocation(line: 321, column: 17, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 321, column: 3)
!2561 = !DILocation(line: 321, column: 3, scope: !2557)
!2562 = !DILocation(line: 0, scope: !2501)
!2563 = !DILocation(line: 0, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 327, column: 7)
!2565 = !DILocation(line: 0, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 327, column: 7)
!2567 = !DILocation(line: 323, column: 3, scope: !2503)
!2568 = !DILocation(line: 322, column: 20, scope: !2560)
!2569 = !DILocation(line: 322, column: 32, scope: !2560)
!2570 = !DILocation(line: 322, column: 5, scope: !2560)
!2571 = !DILocation(line: 321, column: 26, scope: !2560)
!2572 = !DILocation(line: 321, column: 3, scope: !2560)
!2573 = distinct !{!2573, !2561, !2574}
!2574 = !DILocation(line: 322, column: 37, scope: !2557)
!2575 = !DILocation(line: 315, column: 14, scope: !2474)
!2576 = !DILocation(line: 323, column: 17, scope: !2502)
!2577 = !DILocation(line: 325, column: 7, scope: !2501)
!2578 = !DILocation(line: 327, column: 7, scope: !2564)
!2579 = !DILocation(line: 327, column: 7, scope: !2566)
!2580 = !DILocation(line: 328, column: 6, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 328, column: 6)
!2582 = !DILocation(line: 328, column: 10, scope: !2581)
!2583 = !DILocation(line: 328, column: 18, scope: !2581)
!2584 = !DILocation(line: 328, column: 15, scope: !2581)
!2585 = !DILocation(line: 328, column: 33, scope: !2581)
!2586 = !DILocation(line: 328, column: 37, scope: !2581)
!2587 = !DILocation(line: 328, column: 6, scope: !2566)
!2588 = !DILocation(line: 330, column: 6, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 329, column: 4)
!2590 = !DILocation(line: 331, column: 31, scope: !2589)
!2591 = !DILocation(line: 331, column: 35, scope: !2589)
!2592 = !DILocation(line: 331, column: 25, scope: !2589)
!2593 = !DILocation(line: 331, column: 6, scope: !2589)
!2594 = !DILocation(line: 331, column: 29, scope: !2589)
!2595 = !DILocation(line: 333, column: 10, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 333, column: 10)
!2597 = !DILocation(line: 333, column: 14, scope: !2596)
!2598 = !DILocation(line: 333, column: 20, scope: !2596)
!2599 = !DILocation(line: 333, column: 10, scope: !2589)
!2600 = !DILocation(line: 334, column: 26, scope: !2596)
!2601 = !DILocation(line: 334, column: 8, scope: !2596)
!2602 = distinct !{!2602, !2578, !2603}
!2603 = !DILocation(line: 335, column: 4, scope: !2564)
!2604 = !DILocation(line: 336, column: 5, scope: !2502)
!2605 = !DILocation(line: 323, column: 26, scope: !2502)
!2606 = !DILocation(line: 323, column: 3, scope: !2502)
!2607 = distinct !{!2607, !2567, !2608}
!2608 = !DILocation(line: 336, column: 5, scope: !2503)
!2609 = !DILocation(line: 339, column: 13, scope: !2474)
!2610 = !DILocation(line: 340, column: 3, scope: !2474)
!2611 = !DILocation(line: 341, column: 11, scope: !2474)
!2612 = !DILocation(line: 344, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 344, column: 3)
!2614 = !DILocation(line: 0, scope: !2613)
!2615 = !DILocation(line: 344, column: 17, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 344, column: 3)
!2617 = !DILocation(line: 344, column: 3, scope: !2613)
!2618 = !DILocation(line: 345, column: 9, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 345, column: 9)
!2620 = !DILocation(line: 345, column: 21, scope: !2619)
!2621 = !DILocation(line: 345, column: 34, scope: !2619)
!2622 = !DILocation(line: 345, column: 41, scope: !2619)
!2623 = !DILocation(line: 345, column: 9, scope: !2616)
!2624 = !DILocation(line: 346, column: 7, scope: !2619)
!2625 = !DILocation(line: 344, column: 26, scope: !2616)
!2626 = !DILocation(line: 344, column: 3, scope: !2616)
!2627 = distinct !{!2627, !2617, !2628}
!2628 = !DILocation(line: 346, column: 48, scope: !2613)
!2629 = !DILocation(line: 348, column: 3, scope: !2474)
!2630 = !DILocation(line: 349, column: 9, scope: !2474)
!2631 = !DILocation(line: 349, column: 3, scope: !2474)
!2632 = !DILocation(line: 352, column: 3, scope: !2474)
!2633 = !DILocation(line: 353, column: 8, scope: !2513)
!2634 = !DILocation(line: 0, scope: !2513)
!2635 = !DILocation(line: 353, column: 17, scope: !2512)
!2636 = !DILocation(line: 353, column: 3, scope: !2513)
!2637 = !DILocation(line: 357, column: 53, scope: !2511)
!2638 = !DILocation(line: 357, column: 12, scope: !2511)
!2639 = !DILocation(line: 358, column: 11, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 358, column: 11)
!2641 = !DILocation(line: 358, column: 11, scope: !2511)
!2642 = !DILocation(line: 360, column: 7, scope: !2511)
!2643 = !DILocation(line: 362, column: 19, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 362, column: 7)
!2645 = !DILocation(line: 0, scope: !2511)
!2646 = !DILocation(line: 362, column: 12, scope: !2644)
!2647 = !DILocation(line: 0, scope: !2644)
!2648 = !DILocation(line: 362, column: 7, scope: !2644)
!2649 = !DILocation(line: 365, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 365, column: 6)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 362, column: 7)
!2652 = !DILocation(line: 365, column: 6, scope: !2651)
!2653 = !DILocation(line: 366, column: 4, scope: !2650)
!2654 = !DILocation(line: 364, column: 12, scope: !2651)
!2655 = !DILocation(line: 362, column: 7, scope: !2651)
!2656 = distinct !{!2656, !2648, !2657}
!2657 = !DILocation(line: 366, column: 4, scope: !2644)
!2658 = !DILocation(line: 353, column: 32, scope: !2512)
!2659 = !DILocation(line: 353, column: 3, scope: !2512)
!2660 = distinct !{!2660, !2636, !2661}
!2661 = !DILocation(line: 367, column: 5, scope: !2513)
!2662 = !DILocation(line: 369, column: 9, scope: !2474)
!2663 = !DILocation(line: 369, column: 3, scope: !2474)
!2664 = !DILocation(line: 372, column: 43, scope: !2474)
!2665 = !DILocation(line: 372, column: 3, scope: !2474)
!2666 = !DILocation(line: 373, column: 3, scope: !2474)
!2667 = !DILocation(line: 374, column: 3, scope: !2474)
!2668 = !DILocation(line: 378, column: 3, scope: !2474)
!2669 = !DILocation(line: 379, column: 30, scope: !2474)
!2670 = !DILocation(line: 379, column: 3, scope: !2474)
!2671 = !DILocation(line: 381, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 381, column: 7)
!2673 = !DILocation(line: 382, column: 7, scope: !2672)
!2674 = !DILocation(line: 382, column: 10, scope: !2672)
!2675 = !DILocation(line: 381, column: 7, scope: !2474)
!2676 = !DILocation(line: 383, column: 5, scope: !2672)
!2677 = !DILocation(line: 386, column: 1, scope: !2474)
!2678 = distinct !DISubprogram(name: "single_pred_p", scope: !144, file: !144, line: 634, type: !2679, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!600, !1995}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "bb", arg: 1, scope: !2678, file: !144, line: 634, type: !1995)
!2683 = !DILocation(line: 0, scope: !2678)
!2684 = !DILocation(line: 636, column: 10, scope: !2678)
!2685 = !DILocation(line: 636, column: 33, scope: !2678)
!2686 = !DILocation(line: 636, column: 3, scope: !2678)
!2687 = distinct !DISubprogram(name: "single_pred_edge", scope: !144, file: !144, line: 653, type: !2688, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!627, !1995}
!2690 = !{!2691}
!2691 = !DILocalVariable(name: "bb", arg: 1, scope: !2687, file: !144, line: 653, type: !1995)
!2692 = !DILocation(line: 0, scope: !2687)
!2693 = !DILocation(line: 655, column: 3, scope: !2687)
!2694 = !DILocation(line: 656, column: 10, scope: !2687)
!2695 = !DILocation(line: 656, column: 3, scope: !2687)
!2696 = distinct !DISubprogram(name: "loop_outer", scope: !6, file: !6, line: 434, type: !2697, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2701)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!1324, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!2701 = !{!2702, !2703}
!2702 = !DILocalVariable(name: "loop", arg: 1, scope: !2696, file: !6, line: 434, type: !2699)
!2703 = !DILocalVariable(name: "n", scope: !2696, file: !6, line: 436, type: !7)
!2704 = !DILocation(line: 0, scope: !2696)
!2705 = !DILocation(line: 436, column: 16, scope: !2696)
!2706 = !DILocation(line: 438, column: 9, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2696, file: !6, line: 438, column: 7)
!2708 = !DILocation(line: 438, column: 7, scope: !2696)
!2709 = !DILocation(line: 441, column: 10, scope: !2696)
!2710 = !DILocation(line: 441, column: 3, scope: !2696)
!2711 = !DILocation(line: 442, column: 1, scope: !2696)
!2712 = distinct !DISubprogram(name: "unloop", scope: !3, file: !3, line: 780, type: !2713, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !1324, !599}
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2716 = !DILocalVariable(name: "loop", arg: 1, scope: !2712, file: !3, line: 780, type: !1324)
!2717 = !DILocalVariable(name: "irred_invalidated", arg: 2, scope: !2712, file: !3, line: 780, type: !599)
!2718 = !DILocalVariable(name: "body", scope: !2712, file: !3, line: 782, type: !608)
!2719 = !DILocalVariable(name: "ploop", scope: !2712, file: !3, line: 783, type: !1324)
!2720 = !DILocalVariable(name: "i", scope: !2712, file: !3, line: 784, type: !7)
!2721 = !DILocalVariable(name: "n", scope: !2712, file: !3, line: 784, type: !7)
!2722 = !DILocalVariable(name: "latch", scope: !2712, file: !3, line: 785, type: !609)
!2723 = !DILocalVariable(name: "dummy", scope: !2712, file: !3, line: 786, type: !600)
!2724 = !DILocation(line: 0, scope: !2712)
!2725 = !DILocation(line: 785, column: 29, scope: !2712)
!2726 = !DILocation(line: 786, column: 3, scope: !2712)
!2727 = !DILocation(line: 786, column: 8, scope: !2712)
!2728 = !DILocation(line: 788, column: 7, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 788, column: 7)
!2730 = !DILocation(line: 788, column: 35, scope: !2729)
!2731 = !DILocation(line: 788, column: 41, scope: !2729)
!2732 = !DILocation(line: 788, column: 7, scope: !2712)
!2733 = !DILocation(line: 789, column: 24, scope: !2729)
!2734 = !DILocation(line: 789, column: 5, scope: !2729)
!2735 = !DILocation(line: 797, column: 10, scope: !2712)
!2736 = !DILocation(line: 798, column: 13, scope: !2712)
!2737 = !DILocation(line: 799, column: 17, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 799, column: 3)
!2739 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 799, column: 3)
!2740 = !DILocation(line: 799, column: 8, scope: !2739)
!2741 = !DILocation(line: 0, scope: !2739)
!2742 = !DILocation(line: 799, column: 3, scope: !2739)
!2743 = !DILocation(line: 800, column: 9, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 800, column: 9)
!2745 = !DILocation(line: 800, column: 18, scope: !2744)
!2746 = !DILocation(line: 800, column: 30, scope: !2744)
!2747 = !DILocation(line: 800, column: 9, scope: !2738)
!2748 = !DILocation(line: 802, column: 2, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 801, column: 7)
!2750 = !DILocation(line: 803, column: 18, scope: !2749)
!2751 = !DILocation(line: 803, column: 27, scope: !2749)
!2752 = !DILocation(line: 803, column: 2, scope: !2749)
!2753 = !DILocation(line: 804, column: 7, scope: !2749)
!2754 = !DILocation(line: 799, column: 23, scope: !2738)
!2755 = !DILocation(line: 799, column: 3, scope: !2738)
!2756 = distinct !{!2756, !2742, !2757}
!2757 = !DILocation(line: 804, column: 7, scope: !2739)
!2758 = !DILocation(line: 805, column: 8, scope: !2712)
!2759 = !DILocation(line: 805, column: 3, scope: !2712)
!2760 = !DILocation(line: 807, column: 3, scope: !2712)
!2761 = !DILocation(line: 807, column: 16, scope: !2712)
!2762 = !DILocation(line: 810, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 808, column: 5)
!2764 = !DILocation(line: 811, column: 32, scope: !2763)
!2765 = !DILocation(line: 811, column: 7, scope: !2763)
!2766 = distinct !{!2766, !2760, !2767}
!2767 = !DILocation(line: 812, column: 5, scope: !2712)
!2768 = !DILocation(line: 815, column: 3, scope: !2712)
!2769 = !DILocation(line: 817, column: 16, scope: !2712)
!2770 = !DILocation(line: 817, column: 3, scope: !2712)
!2771 = !DILocation(line: 822, column: 3, scope: !2712)
!2772 = !DILocation(line: 823, column: 1, scope: !2712)
!2773 = distinct !DISubprogram(name: "find_path", scope: !3, file: !3, line: 73, type: !2774, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!601, !627, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2777 = !{!2778, !2779}
!2778 = !DILocalVariable(name: "e", arg: 1, scope: !2773, file: !3, line: 73, type: !627)
!2779 = !DILocalVariable(name: "bbs", arg: 2, scope: !2773, file: !3, line: 73, type: !2776)
!2780 = !DILocation(line: 0, scope: !2773)
!2781 = !DILocation(line: 75, column: 3, scope: !2773)
!2782 = !DILocation(line: 78, column: 10, scope: !2773)
!2783 = !DILocation(line: 78, column: 8, scope: !2773)
!2784 = !DILocation(line: 79, column: 33, scope: !2773)
!2785 = !DILocation(line: 79, column: 54, scope: !2773)
!2786 = !DILocation(line: 80, column: 9, scope: !2773)
!2787 = !DILocation(line: 80, column: 28, scope: !2773)
!2788 = !DILocation(line: 79, column: 10, scope: !2773)
!2789 = !DILocation(line: 79, column: 3, scope: !2773)
!2790 = distinct !DISubprogram(name: "SET_BIT", scope: !2490, file: !2490, line: 63, type: !2791, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2489, !7}
!2793 = !{!2794, !2795, !2796}
!2794 = !DILocalVariable(name: "map", arg: 1, scope: !2790, file: !2490, line: 63, type: !2489)
!2795 = !DILocalVariable(name: "bitno", arg: 2, scope: !2790, file: !2490, line: 63, type: !7)
!2796 = !DILocalVariable(name: "oldbit", scope: !2797, file: !2490, line: 67, type: !600)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !2490, line: 66, column: 5)
!2798 = distinct !DILexicalBlock(scope: !2790, file: !2490, line: 65, column: 7)
!2799 = !DILocation(line: 0, scope: !2790)
!2800 = !DILocation(line: 65, column: 12, scope: !2798)
!2801 = !DILocation(line: 65, column: 7, scope: !2798)
!2802 = !DILocation(line: 65, column: 7, scope: !2790)
!2803 = !DILocation(line: 73, column: 40, scope: !2790)
!2804 = !DILocation(line: 73, column: 29, scope: !2790)
!2805 = !DILocation(line: 72, column: 19, scope: !2790)
!2806 = !DILocation(line: 72, column: 3, scope: !2790)
!2807 = !DILocation(line: 68, column: 16, scope: !2797)
!2808 = !DILocation(line: 69, column: 12, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2797, file: !2490, line: 69, column: 11)
!2810 = !DILocation(line: 69, column: 11, scope: !2797)
!2811 = !DILocation(line: 70, column: 2, scope: !2809)
!2812 = !DILocation(line: 70, column: 41, scope: !2809)
!2813 = !DILocation(line: 73, column: 5, scope: !2790)
!2814 = !DILocation(line: 74, column: 1, scope: !2790)
!2815 = distinct !DISubprogram(name: "ei_start_1", scope: !144, file: !144, line: 696, type: !2816, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!2504, !2509}
!2818 = !{!2819, !2820}
!2819 = !DILocalVariable(name: "ev", arg: 1, scope: !2815, file: !144, line: 696, type: !2509)
!2820 = !DILocalVariable(name: "i", scope: !2815, file: !144, line: 698, type: !2504)
!2821 = !DILocation(line: 0, scope: !2815)
!2822 = !DILocation(line: 700, column: 5, scope: !2815)
!2823 = !DILocation(line: 700, column: 11, scope: !2815)
!2824 = !DILocation(line: 701, column: 5, scope: !2815)
!2825 = !DILocation(line: 701, column: 15, scope: !2815)
!2826 = !DILocation(line: 703, column: 3, scope: !2815)
!2827 = distinct !DISubprogram(name: "ei_cond", scope: !144, file: !144, line: 771, type: !2828, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!600, !2504, !2830}
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "ei", arg: 1, scope: !2827, file: !144, line: 771, type: !2504)
!2833 = !DILocalVariable(name: "p", arg: 2, scope: !2827, file: !144, line: 771, type: !2830)
!2834 = !DILocation(line: 0, scope: !2827)
!2835 = !DILocation(line: 773, column: 8, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !144, line: 773, column: 7)
!2837 = !DILocation(line: 773, column: 7, scope: !2827)
!2838 = !DILocation(line: 775, column: 12, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !144, line: 774, column: 5)
!2840 = !DILocation(line: 776, column: 7, scope: !2839)
!2841 = !DILocation(line: 781, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2836, file: !144, line: 779, column: 5)
!2843 = !DILocation(line: 0, scope: !2836)
!2844 = !DILocation(line: 783, column: 1, scope: !2827)
!2845 = distinct !DISubprogram(name: "ei_next", scope: !144, file: !144, line: 736, type: !2846, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2849)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "i", arg: 1, scope: !2845, file: !144, line: 736, type: !2848)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 738, column: 3, scope: !2845)
!2853 = !DILocation(line: 739, column: 11, scope: !2845)
!2854 = !DILocation(line: 740, column: 1, scope: !2845)
!2855 = distinct !DISubprogram(name: "remove_bbs", scope: !3, file: !3, line: 58, type: !2856, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !608, !601}
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "bbs", arg: 1, scope: !2855, file: !3, line: 58, type: !608)
!2860 = !DILocalVariable(name: "nbbs", arg: 2, scope: !2855, file: !3, line: 58, type: !601)
!2861 = !DILocalVariable(name: "i", scope: !2855, file: !3, line: 60, type: !601)
!2862 = !DILocation(line: 0, scope: !2855)
!2863 = !DILocation(line: 62, column: 8, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 62, column: 3)
!2865 = !DILocation(line: 0, scope: !2864)
!2866 = !DILocation(line: 62, column: 17, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 62, column: 3)
!2868 = !DILocation(line: 62, column: 3, scope: !2864)
!2869 = !DILocation(line: 63, column: 25, scope: !2867)
!2870 = !DILocation(line: 63, column: 5, scope: !2867)
!2871 = !DILocation(line: 62, column: 26, scope: !2867)
!2872 = !DILocation(line: 62, column: 3, scope: !2867)
!2873 = distinct !{!2873, !2868, !2874}
!2874 = !DILocation(line: 63, column: 31, scope: !2864)
!2875 = !DILocation(line: 64, column: 1, scope: !2855)
!2876 = distinct !DISubprogram(name: "VEC_basic_block_heap_safe_push", scope: !144, file: !144, line: 283, type: !2877, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!608, !2879, !609}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "vec_", arg: 1, scope: !2876, file: !144, line: 283, type: !2879)
!2882 = !DILocalVariable(name: "obj_", arg: 2, scope: !2876, file: !144, line: 283, type: !609)
!2883 = !DILocation(line: 0, scope: !2876)
!2884 = !DILocation(line: 283, column: 1, scope: !2876)
!2885 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !144, file: !144, line: 283, type: !2886, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !2879}
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "vec_", arg: 1, scope: !2885, file: !144, line: 283, type: !2879)
!2890 = !DILocation(line: 0, scope: !2885)
!2891 = !DILocation(line: 283, column: 1, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2885, file: !144, line: 283, column: 1)
!2893 = !DILocation(line: 283, column: 1, scope: !2885)
!2894 = distinct !DISubprogram(name: "fix_bb_placements", scope: !3, file: !3, line: 172, type: !2895, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !609, !599}
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2909, !2913}
!2898 = !DILocalVariable(name: "from", arg: 1, scope: !2894, file: !3, line: 172, type: !609)
!2899 = !DILocalVariable(name: "irred_invalidated", arg: 2, scope: !2894, file: !3, line: 173, type: !599)
!2900 = !DILocalVariable(name: "in_queue", scope: !2894, file: !3, line: 175, type: !2489)
!2901 = !DILocalVariable(name: "queue", scope: !2894, file: !3, line: 176, type: !608)
!2902 = !DILocalVariable(name: "qtop", scope: !2894, file: !3, line: 176, type: !608)
!2903 = !DILocalVariable(name: "qbeg", scope: !2894, file: !3, line: 176, type: !608)
!2904 = !DILocalVariable(name: "qend", scope: !2894, file: !3, line: 176, type: !608)
!2905 = !DILocalVariable(name: "base_loop", scope: !2894, file: !3, line: 177, type: !1324)
!2906 = !DILocalVariable(name: "e", scope: !2894, file: !3, line: 178, type: !627)
!2907 = !DILocalVariable(name: "ei", scope: !2908, file: !3, line: 205, type: !2504)
!2908 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 204, column: 5)
!2909 = !DILocalVariable(name: "pred", scope: !2910, file: !3, line: 234, type: !609)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 233, column: 2)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 232, column: 7)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 232, column: 7)
!2913 = !DILocalVariable(name: "nca", scope: !2910, file: !3, line: 235, type: !1324)
!2914 = !DILocation(line: 0, scope: !2894)
!2915 = !DILocation(line: 178, column: 3, scope: !2894)
!2916 = !DILocation(line: 187, column: 21, scope: !2894)
!2917 = !DILocation(line: 188, column: 20, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 188, column: 7)
!2919 = !DILocation(line: 188, column: 35, scope: !2918)
!2920 = !DILocation(line: 188, column: 17, scope: !2918)
!2921 = !DILocation(line: 188, column: 7, scope: !2894)
!2922 = !DILocation(line: 191, column: 29, scope: !2894)
!2923 = !DILocation(line: 191, column: 14, scope: !2894)
!2924 = !DILocation(line: 192, column: 3, scope: !2894)
!2925 = !DILocation(line: 193, column: 28, scope: !2894)
!2926 = !DILocation(line: 193, column: 3, scope: !2894)
!2927 = !DILocation(line: 195, column: 33, scope: !2894)
!2928 = !DILocation(line: 195, column: 41, scope: !2894)
!2929 = !DILocation(line: 195, column: 3, scope: !2894)
!2930 = !DILocation(line: 197, column: 11, scope: !2894)
!2931 = !DILocation(line: 198, column: 29, scope: !2894)
!2932 = !DILocation(line: 198, column: 16, scope: !2894)
!2933 = !DILocation(line: 200, column: 16, scope: !2894)
!2934 = !DILocation(line: 201, column: 9, scope: !2894)
!2935 = !DILocation(line: 0, scope: !2908)
!2936 = !DILocation(line: 0, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 225, column: 7)
!2938 = !DILocation(line: 0, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 225, column: 7)
!2940 = !DILocation(line: 0, scope: !2912)
!2941 = !DILocation(line: 203, column: 3, scope: !2894)
!2942 = !DILocation(line: 200, column: 8, scope: !2894)
!2943 = !DILocation(line: 203, column: 15, scope: !2894)
!2944 = !DILocation(line: 205, column: 7, scope: !2908)
!2945 = !DILocation(line: 206, column: 14, scope: !2908)
!2946 = !DILocation(line: 207, column: 11, scope: !2908)
!2947 = !DILocation(line: 208, column: 16, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 208, column: 11)
!2949 = !DILocation(line: 208, column: 11, scope: !2908)
!2950 = !DILocation(line: 210, column: 34, scope: !2908)
!2951 = !DILocation(line: 210, column: 7, scope: !2908)
!2952 = !DILocation(line: 212, column: 17, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 212, column: 11)
!2954 = !DILocation(line: 212, column: 30, scope: !2953)
!2955 = !DILocation(line: 212, column: 37, scope: !2953)
!2956 = !DILocation(line: 212, column: 11, scope: !2908)
!2957 = !DILocation(line: 215, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 215, column: 8)
!2959 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 213, column: 2)
!2960 = !DILocation(line: 215, column: 8, scope: !2959)
!2961 = distinct !{!2961, !2941, !2962}
!2962 = !DILocation(line: 267, column: 5, scope: !2894)
!2963 = !DILocation(line: 221, column: 9, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 221, column: 8)
!2965 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 219, column: 2)
!2966 = !DILocation(line: 221, column: 8, scope: !2965)
!2967 = !DILocation(line: 225, column: 7, scope: !2937)
!2968 = !DILocation(line: 225, column: 7, scope: !2939)
!2969 = !DILocation(line: 227, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 227, column: 8)
!2971 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 226, column: 2)
!2972 = !DILocation(line: 227, column: 11, scope: !2970)
!2973 = !DILocation(line: 227, column: 17, scope: !2970)
!2974 = !DILocation(line: 227, column: 8, scope: !2971)
!2975 = !DILocation(line: 228, column: 25, scope: !2970)
!2976 = !DILocation(line: 228, column: 6, scope: !2970)
!2977 = distinct !{!2977, !2967, !2978}
!2978 = !DILocation(line: 229, column: 2, scope: !2937)
!2979 = !DILocation(line: 232, column: 7, scope: !2912)
!2980 = !DILocation(line: 232, column: 7, scope: !2911)
!2981 = !DILocation(line: 234, column: 23, scope: !2910)
!2982 = !DILocation(line: 234, column: 26, scope: !2910)
!2983 = !DILocation(line: 0, scope: !2910)
!2984 = !DILocation(line: 237, column: 11, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 237, column: 8)
!2986 = !DILocation(line: 237, column: 17, scope: !2985)
!2987 = !DILocation(line: 237, column: 8, scope: !2910)
!2988 = !DILocation(line: 238, column: 25, scope: !2985)
!2989 = !DILocation(line: 238, column: 6, scope: !2985)
!2990 = !DILocation(line: 240, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 240, column: 8)
!2992 = !DILocation(line: 240, column: 8, scope: !2910)
!2993 = !DILocation(line: 246, column: 34, scope: !2910)
!2994 = !DILocation(line: 246, column: 10, scope: !2910)
!2995 = !DILocation(line: 247, column: 14, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 247, column: 8)
!2997 = !DILocation(line: 247, column: 26, scope: !2996)
!2998 = !DILocation(line: 248, column: 8, scope: !2996)
!2999 = !DILocation(line: 248, column: 16, scope: !2996)
!3000 = !DILocation(line: 249, column: 5, scope: !2996)
!3001 = !DILocation(line: 249, column: 12, scope: !2996)
!3002 = !DILocation(line: 247, column: 8, scope: !2910)
!3003 = !DILocation(line: 250, column: 32, scope: !2996)
!3004 = !DILocation(line: 250, column: 6, scope: !2996)
!3005 = !DILocation(line: 251, column: 40, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 251, column: 13)
!3007 = !DILocation(line: 251, column: 14, scope: !3006)
!3008 = !DILocation(line: 251, column: 13, scope: !2996)
!3009 = !DILocation(line: 257, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 257, column: 8)
!3011 = !DILocation(line: 257, column: 8, scope: !2910)
!3012 = !DILocation(line: 261, column: 10, scope: !2910)
!3013 = !DILocation(line: 262, column: 8, scope: !2910)
!3014 = !DILocation(line: 263, column: 13, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 263, column: 8)
!3016 = !DILocation(line: 263, column: 8, scope: !2910)
!3017 = !DILocation(line: 265, column: 29, scope: !2910)
!3018 = !DILocation(line: 265, column: 4, scope: !2910)
!3019 = !DILocation(line: 266, column: 2, scope: !2911)
!3020 = distinct !{!3020, !2979, !3021}
!3021 = !DILocation(line: 266, column: 2, scope: !2912)
!3022 = !DILocation(line: 268, column: 9, scope: !2894)
!3023 = !DILocation(line: 268, column: 3, scope: !2894)
!3024 = !DILocation(line: 269, column: 3, scope: !2894)
!3025 = !DILocation(line: 270, column: 1, scope: !2894)
!3026 = distinct !DISubprogram(name: "fix_loop_placements", scope: !3, file: !3, line: 834, type: !2713, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DILocalVariable(name: "loop", arg: 1, scope: !3026, file: !3, line: 834, type: !1324)
!3029 = !DILocalVariable(name: "irred_invalidated", arg: 2, scope: !3026, file: !3, line: 834, type: !599)
!3030 = !DILocalVariable(name: "outer", scope: !3026, file: !3, line: 836, type: !1324)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 838, column: 3, scope: !3026)
!3033 = !DILocation(line: 838, column: 10, scope: !3026)
!3034 = !DILocation(line: 840, column: 15, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 839, column: 5)
!3036 = !DILocation(line: 841, column: 12, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 841, column: 11)
!3038 = !DILocation(line: 841, column: 11, scope: !3035)
!3039 = !DILocation(line: 849, column: 26, scope: !3035)
!3040 = !DILocation(line: 849, column: 54, scope: !3035)
!3041 = !DILocation(line: 849, column: 7, scope: !3035)
!3042 = distinct !{!3042, !3032, !3043}
!3043 = !DILocation(line: 852, column: 5, scope: !3026)
!3044 = !DILocation(line: 853, column: 1, scope: !3026)
!3045 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !6, file: !6, line: 471, type: !3046, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!600, !7}
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "flags", arg: 1, scope: !3045, file: !6, line: 471, type: !7)
!3050 = !DILocation(line: 0, scope: !3045)
!3051 = !DILocation(line: 473, column: 11, scope: !3045)
!3052 = !DILocation(line: 473, column: 26, scope: !3045)
!3053 = !DILocation(line: 473, column: 32, scope: !3045)
!3054 = !DILocation(line: 473, column: 41, scope: !3045)
!3055 = !DILocation(line: 473, column: 10, scope: !3045)
!3056 = !DILocation(line: 473, column: 3, scope: !3045)
!3057 = distinct !DISubprogram(name: "add_loop", scope: !3, file: !3, line: 402, type: !3058, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !1324, !1324}
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3061 = !DILocalVariable(name: "loop", arg: 1, scope: !3057, file: !3, line: 402, type: !1324)
!3062 = !DILocalVariable(name: "outer", arg: 2, scope: !3057, file: !3, line: 402, type: !1324)
!3063 = !DILocalVariable(name: "bbs", scope: !3057, file: !3, line: 404, type: !608)
!3064 = !DILocalVariable(name: "i", scope: !3057, file: !3, line: 405, type: !601)
!3065 = !DILocalVariable(name: "n", scope: !3057, file: !3, line: 405, type: !601)
!3066 = !DILocalVariable(name: "subloop", scope: !3057, file: !3, line: 406, type: !1324)
!3067 = !DILocalVariable(name: "e", scope: !3057, file: !3, line: 407, type: !627)
!3068 = !DILocalVariable(name: "ei", scope: !3057, file: !3, line: 408, type: !2504)
!3069 = !DILocation(line: 0, scope: !3057)
!3070 = !DILocation(line: 407, column: 3, scope: !3057)
!3071 = !DILocation(line: 408, column: 3, scope: !3057)
!3072 = !DILocation(line: 411, column: 3, scope: !3057)
!3073 = !DILocation(line: 412, column: 3, scope: !3057)
!3074 = !DILocation(line: 415, column: 9, scope: !3057)
!3075 = !DILocation(line: 416, column: 43, scope: !3057)
!3076 = !DILocation(line: 416, column: 7, scope: !3057)
!3077 = !DILocation(line: 0, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 419, column: 5)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 418, column: 3)
!3080 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 418, column: 3)
!3081 = !DILocation(line: 418, column: 8, scope: !3080)
!3082 = !DILocation(line: 0, scope: !3080)
!3083 = !DILocation(line: 418, column: 17, scope: !3079)
!3084 = !DILocation(line: 418, column: 3, scope: !3080)
!3085 = !DILocation(line: 0, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 442, column: 7)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 441, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 440, column: 3)
!3089 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 440, column: 3)
!3090 = !DILocation(line: 0, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 442, column: 7)
!3092 = !DILocation(line: 440, column: 3, scope: !3089)
!3093 = !DILocation(line: 420, column: 11, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 420, column: 11)
!3095 = !DILocation(line: 420, column: 19, scope: !3094)
!3096 = !DILocation(line: 420, column: 31, scope: !3094)
!3097 = !DILocation(line: 420, column: 11, scope: !3078)
!3098 = !DILocation(line: 422, column: 4, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 421, column: 2)
!3100 = !DILocation(line: 423, column: 20, scope: !3099)
!3101 = !DILocation(line: 423, column: 4, scope: !3099)
!3102 = !DILocation(line: 424, column: 4, scope: !3099)
!3103 = !DILocation(line: 427, column: 22, scope: !3078)
!3104 = !DILocation(line: 430, column: 17, scope: !3078)
!3105 = !DILocation(line: 430, column: 25, scope: !3078)
!3106 = !DILocation(line: 431, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 431, column: 11)
!3108 = !DILocation(line: 431, column: 32, scope: !3107)
!3109 = !DILocation(line: 432, column: 4, scope: !3107)
!3110 = !DILocation(line: 432, column: 16, scope: !3107)
!3111 = !DILocation(line: 432, column: 26, scope: !3107)
!3112 = !DILocation(line: 432, column: 23, scope: !3107)
!3113 = !DILocation(line: 431, column: 11, scope: !3078)
!3114 = !DILocation(line: 434, column: 4, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 433, column: 2)
!3116 = !DILocation(line: 435, column: 4, scope: !3115)
!3117 = !DILocation(line: 436, column: 2, scope: !3115)
!3118 = !DILocation(line: 418, column: 23, scope: !3079)
!3119 = !DILocation(line: 418, column: 3, scope: !3079)
!3120 = distinct !{!3120, !3084, !3121}
!3121 = !DILocation(line: 437, column: 5, scope: !3080)
!3122 = !DILocation(line: 0, scope: !3089)
!3123 = !DILocation(line: 440, column: 17, scope: !3088)
!3124 = !DILocation(line: 442, column: 7, scope: !3086)
!3125 = !DILocation(line: 442, column: 7, scope: !3091)
!3126 = !DILocation(line: 444, column: 22, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 443, column: 2)
!3128 = !DILocation(line: 444, column: 4, scope: !3127)
!3129 = distinct !{!3129, !3124, !3130}
!3130 = !DILocation(line: 445, column: 2, scope: !3086)
!3131 = !DILocation(line: 440, column: 23, scope: !3088)
!3132 = !DILocation(line: 440, column: 3, scope: !3088)
!3133 = distinct !{!3133, !3092, !3134}
!3134 = !DILocation(line: 446, column: 5, scope: !3089)
!3135 = !DILocation(line: 448, column: 3, scope: !3057)
!3136 = !DILocation(line: 449, column: 1, scope: !3057)
!3137 = distinct !DISubprogram(name: "place_new_loop", scope: !3, file: !3, line: 391, type: !3138, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !1324}
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "loop", arg: 1, scope: !3137, file: !3, line: 391, type: !1324)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 393, column: 15, scope: !3137)
!3144 = !DILocation(line: 393, column: 9, scope: !3137)
!3145 = !DILocation(line: 393, column: 13, scope: !3137)
!3146 = !DILocation(line: 394, column: 3, scope: !3137)
!3147 = !DILocation(line: 395, column: 1, scope: !3137)
!3148 = distinct !DISubprogram(name: "scale_loop_frequencies", scope: !3, file: !3, line: 453, type: !3149, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !1324, !601, !601}
!3151 = !{!3152, !3153, !3154, !3155}
!3152 = !DILocalVariable(name: "loop", arg: 1, scope: !3148, file: !3, line: 453, type: !1324)
!3153 = !DILocalVariable(name: "num", arg: 2, scope: !3148, file: !3, line: 453, type: !601)
!3154 = !DILocalVariable(name: "den", arg: 3, scope: !3148, file: !3, line: 453, type: !601)
!3155 = !DILocalVariable(name: "bbs", scope: !3148, file: !3, line: 455, type: !608)
!3156 = !DILocation(line: 0, scope: !3148)
!3157 = !DILocation(line: 457, column: 9, scope: !3148)
!3158 = !DILocation(line: 458, column: 41, scope: !3148)
!3159 = !DILocation(line: 458, column: 3, scope: !3148)
!3160 = !DILocation(line: 459, column: 9, scope: !3148)
!3161 = !DILocation(line: 459, column: 3, scope: !3148)
!3162 = !DILocation(line: 460, column: 1, scope: !3148)
!3163 = distinct !DISubprogram(name: "create_empty_if_region_on_edge", scope: !3, file: !3, line: 534, type: !3164, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!627, !627, !672}
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!3167 = !DILocalVariable(name: "entry_edge", arg: 1, scope: !3163, file: !3, line: 534, type: !627)
!3168 = !DILocalVariable(name: "condition", arg: 2, scope: !3163, file: !3, line: 534, type: !672)
!3169 = !DILocalVariable(name: "cond_bb", scope: !3163, file: !3, line: 537, type: !609)
!3170 = !DILocalVariable(name: "true_bb", scope: !3163, file: !3, line: 537, type: !609)
!3171 = !DILocalVariable(name: "false_bb", scope: !3163, file: !3, line: 537, type: !609)
!3172 = !DILocalVariable(name: "join_bb", scope: !3163, file: !3, line: 537, type: !609)
!3173 = !DILocalVariable(name: "e_true", scope: !3163, file: !3, line: 538, type: !627)
!3174 = !DILocalVariable(name: "e_false", scope: !3163, file: !3, line: 538, type: !627)
!3175 = !DILocalVariable(name: "exit_edge", scope: !3163, file: !3, line: 538, type: !627)
!3176 = !DILocalVariable(name: "cond_stmt", scope: !3163, file: !3, line: 539, type: !647)
!3177 = !DILocalVariable(name: "simple_cond", scope: !3163, file: !3, line: 540, type: !672)
!3178 = !DILocalVariable(name: "gsi", scope: !3163, file: !3, line: 541, type: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !534, line: 265, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 254, size: 192, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3180, file: !534, line: 257, baseType: !642, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3180, file: !534, line: 263, baseType: !637, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3180, file: !534, line: 264, baseType: !609, size: 64, offset: 128)
!3185 = !DILocation(line: 0, scope: !3163)
!3186 = !DILocation(line: 541, column: 3, scope: !3163)
!3187 = !DILocation(line: 543, column: 13, scope: !3163)
!3188 = !DILocation(line: 546, column: 9, scope: !3163)
!3189 = !DILocation(line: 548, column: 5, scope: !3163)
!3190 = !DILocation(line: 550, column: 15, scope: !3163)
!3191 = !DILocation(line: 551, column: 9, scope: !3163)
!3192 = !DILocation(line: 552, column: 3, scope: !3163)
!3193 = !DILocation(line: 554, column: 25, scope: !3163)
!3194 = !DILocation(line: 554, column: 13, scope: !3163)
!3195 = !DILocation(line: 556, column: 12, scope: !3163)
!3196 = !DILocation(line: 557, column: 13, scope: !3163)
!3197 = !DILocation(line: 559, column: 13, scope: !3163)
!3198 = !DILocation(line: 560, column: 14, scope: !3163)
!3199 = !DILocation(line: 562, column: 11, scope: !3163)
!3200 = !DILocation(line: 562, column: 17, scope: !3163)
!3201 = !DILocation(line: 563, column: 17, scope: !3163)
!3202 = !DILocation(line: 564, column: 12, scope: !3163)
!3203 = !DILocation(line: 564, column: 18, scope: !3163)
!3204 = !DILocation(line: 565, column: 18, scope: !3163)
!3205 = !DILocation(line: 567, column: 65, scope: !3163)
!3206 = !DILocation(line: 567, column: 3, scope: !3163)
!3207 = !DILocation(line: 568, column: 3, scope: !3163)
!3208 = !DILocation(line: 569, column: 3, scope: !3163)
!3209 = !DILocation(line: 570, column: 3, scope: !3163)
!3210 = !DILocation(line: 572, column: 15, scope: !3163)
!3211 = !DILocation(line: 574, column: 33, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 574, column: 7)
!3213 = !DILocation(line: 574, column: 7, scope: !3212)
!3214 = !DILocation(line: 574, column: 7, scope: !3163)
!3215 = !DILocation(line: 575, column: 57, scope: !3212)
!3216 = !DILocation(line: 575, column: 5, scope: !3212)
!3217 = !DILocation(line: 578, column: 1, scope: !3163)
!3218 = !DILocation(line: 577, column: 3, scope: !3163)
!3219 = distinct !DISubprogram(name: "gsi_last_bb", scope: !534, file: !534, line: 4450, type: !3220, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!3179, !609}
!3222 = !{!3223, !3224, !3225}
!3223 = !DILocalVariable(name: "bb", arg: 1, scope: !3219, file: !534, line: 4450, type: !609)
!3224 = !DILocalVariable(name: "i", scope: !3219, file: !534, line: 4452, type: !3179)
!3225 = !DILocalVariable(name: "seq", scope: !3219, file: !534, line: 4453, type: !637)
!3226 = !DILocation(line: 0, scope: !3219)
!3227 = !DILocation(line: 4452, column: 24, scope: !3219)
!3228 = !DILocation(line: 4455, column: 9, scope: !3219)
!3229 = !DILocation(line: 4456, column: 11, scope: !3219)
!3230 = !DILocation(line: 4456, column: 5, scope: !3219)
!3231 = !DILocation(line: 4456, column: 9, scope: !3219)
!3232 = !DILocation(line: 4457, column: 5, scope: !3219)
!3233 = !DILocation(line: 4457, column: 9, scope: !3219)
!3234 = !DILocation(line: 4458, column: 5, scope: !3219)
!3235 = !DILocation(line: 4458, column: 8, scope: !3219)
!3236 = !DILocation(line: 4461, column: 1, scope: !3219)
!3237 = distinct !DISubprogram(name: "single_succ_edge", scope: !144, file: !144, line: 643, type: !2688, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3238 = !{!3239}
!3239 = !DILocalVariable(name: "bb", arg: 1, scope: !3237, file: !144, line: 643, type: !1995)
!3240 = !DILocation(line: 0, scope: !3237)
!3241 = !DILocation(line: 645, column: 3, scope: !3237)
!3242 = !DILocation(line: 646, column: 10, scope: !3237)
!3243 = !DILocation(line: 646, column: 3, scope: !3237)
!3244 = distinct !DISubprogram(name: "create_empty_loop_on_edge", scope: !3, file: !3, line: 613, type: !3245, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!1324, !627, !672, !672, !672, !672, !1287, !1287, !1324}
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3248 = !DILocalVariable(name: "entry_edge", arg: 1, scope: !3244, file: !3, line: 613, type: !627)
!3249 = !DILocalVariable(name: "initial_value", arg: 2, scope: !3244, file: !3, line: 614, type: !672)
!3250 = !DILocalVariable(name: "stride", arg: 3, scope: !3244, file: !3, line: 615, type: !672)
!3251 = !DILocalVariable(name: "upper_bound", arg: 4, scope: !3244, file: !3, line: 615, type: !672)
!3252 = !DILocalVariable(name: "iv", arg: 5, scope: !3244, file: !3, line: 616, type: !672)
!3253 = !DILocalVariable(name: "iv_before", arg: 6, scope: !3244, file: !3, line: 617, type: !1287)
!3254 = !DILocalVariable(name: "iv_after", arg: 7, scope: !3244, file: !3, line: 618, type: !1287)
!3255 = !DILocalVariable(name: "outer", arg: 8, scope: !3244, file: !3, line: 619, type: !1324)
!3256 = !DILocalVariable(name: "loop_header", scope: !3244, file: !3, line: 621, type: !609)
!3257 = !DILocalVariable(name: "loop_latch", scope: !3244, file: !3, line: 621, type: !609)
!3258 = !DILocalVariable(name: "succ_bb", scope: !3244, file: !3, line: 621, type: !609)
!3259 = !DILocalVariable(name: "pred_bb", scope: !3244, file: !3, line: 621, type: !609)
!3260 = !DILocalVariable(name: "loop", scope: !3244, file: !3, line: 622, type: !1324)
!3261 = !DILocalVariable(name: "gsi", scope: !3244, file: !3, line: 623, type: !3179)
!3262 = !DILocalVariable(name: "stmts", scope: !3244, file: !3, line: 624, type: !637)
!3263 = !DILocalVariable(name: "cond_expr", scope: !3244, file: !3, line: 625, type: !647)
!3264 = !DILocalVariable(name: "exit_test", scope: !3244, file: !3, line: 626, type: !672)
!3265 = !DILocalVariable(name: "exit_e", scope: !3244, file: !3, line: 627, type: !627)
!3266 = !DILocalVariable(name: "prob", scope: !3244, file: !3, line: 628, type: !601)
!3267 = !DILocation(line: 0, scope: !3244)
!3268 = !DILocation(line: 623, column: 3, scope: !3244)
!3269 = !DILocation(line: 624, column: 3, scope: !3244)
!3270 = !DILocation(line: 630, column: 3, scope: !3244)
!3271 = !DILocation(line: 633, column: 25, scope: !3244)
!3272 = !DILocation(line: 634, column: 17, scope: !3244)
!3273 = !DILocation(line: 635, column: 28, scope: !3244)
!3274 = !DILocation(line: 635, column: 16, scope: !3244)
!3275 = !DILocation(line: 636, column: 13, scope: !3244)
!3276 = !DILocation(line: 637, column: 3, scope: !3244)
!3277 = !DILocation(line: 638, column: 29, scope: !3244)
!3278 = !DILocation(line: 638, column: 3, scope: !3244)
!3279 = !DILocation(line: 641, column: 3, scope: !3244)
!3280 = !DILocation(line: 642, column: 3, scope: !3244)
!3281 = !DILocation(line: 643, column: 3, scope: !3244)
!3282 = !DILocation(line: 646, column: 10, scope: !3244)
!3283 = !DILocation(line: 647, column: 9, scope: !3244)
!3284 = !DILocation(line: 647, column: 16, scope: !3244)
!3285 = !DILocation(line: 648, column: 9, scope: !3244)
!3286 = !DILocation(line: 648, column: 15, scope: !3244)
!3287 = !DILocation(line: 649, column: 3, scope: !3244)
!3288 = !DILocation(line: 654, column: 3, scope: !3244)
!3289 = !DILocation(line: 657, column: 3, scope: !3244)
!3290 = !DILocation(line: 660, column: 12, scope: !3244)
!3291 = !DILocation(line: 661, column: 11, scope: !3244)
!3292 = !DILocation(line: 661, column: 17, scope: !3244)
!3293 = !DILocation(line: 662, column: 3, scope: !3244)
!3294 = !DILocation(line: 662, column: 34, scope: !3244)
!3295 = !DILocation(line: 662, column: 40, scope: !3244)
!3296 = !DILocation(line: 665, column: 19, scope: !3244)
!3297 = !DILocation(line: 666, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 666, column: 7)
!3299 = !DILocation(line: 666, column: 7, scope: !3244)
!3300 = !DILocation(line: 668, column: 31, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 667, column: 5)
!3302 = !DILocation(line: 668, column: 59, scope: !3301)
!3303 = !DILocation(line: 668, column: 7, scope: !3301)
!3304 = !DILocation(line: 669, column: 7, scope: !3301)
!3305 = !DILocation(line: 670, column: 5, scope: !3301)
!3306 = !DILocation(line: 672, column: 17, scope: !3244)
!3307 = !DILocation(line: 673, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 673, column: 7)
!3309 = !DILocation(line: 673, column: 7, scope: !3244)
!3310 = !DILocation(line: 675, column: 31, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 674, column: 5)
!3312 = !DILocation(line: 675, column: 59, scope: !3311)
!3313 = !DILocation(line: 675, column: 7, scope: !3311)
!3314 = !DILocation(line: 676, column: 7, scope: !3311)
!3315 = !DILocation(line: 677, column: 5, scope: !3311)
!3316 = !DILocation(line: 679, column: 9, scope: !3244)
!3317 = !DILocation(line: 680, column: 3, scope: !3244)
!3318 = !DILocation(line: 685, column: 15, scope: !3244)
!3319 = !DILocation(line: 684, column: 15, scope: !3244)
!3320 = !DILocation(line: 687, column: 15, scope: !3244)
!3321 = !DILocation(line: 688, column: 15, scope: !3244)
!3322 = !DILocation(line: 690, column: 3, scope: !3244)
!3323 = !DILocation(line: 691, column: 9, scope: !3244)
!3324 = !DILocation(line: 691, column: 30, scope: !3244)
!3325 = !DILocation(line: 692, column: 3, scope: !3244)
!3326 = !DILocation(line: 694, column: 3, scope: !3244)
!3327 = !DILocation(line: 697, column: 1, scope: !3244)
!3328 = !DILocation(line: 696, column: 3, scope: !3244)
!3329 = distinct !DISubprogram(name: "single_succ", scope: !144, file: !144, line: 663, type: !3330, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!609, !1995}
!3332 = !{!3333}
!3333 = !DILocalVariable(name: "bb", arg: 1, scope: !3329, file: !144, line: 663, type: !1995)
!3334 = !DILocation(line: 0, scope: !3329)
!3335 = !DILocation(line: 665, column: 10, scope: !3329)
!3336 = !DILocation(line: 665, column: 33, scope: !3329)
!3337 = !DILocation(line: 665, column: 3, scope: !3329)
!3338 = distinct !DISubprogram(name: "update_dominators_in_loop", scope: !3, file: !3, line: 465, type: !3138, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345}
!3340 = !DILocalVariable(name: "loop", arg: 1, scope: !3338, file: !3, line: 465, type: !1324)
!3341 = !DILocalVariable(name: "dom_bbs", scope: !3338, file: !3, line: 467, type: !1998)
!3342 = !DILocalVariable(name: "seen", scope: !3338, file: !3, line: 468, type: !2489)
!3343 = !DILocalVariable(name: "body", scope: !3338, file: !3, line: 469, type: !608)
!3344 = !DILocalVariable(name: "i", scope: !3338, file: !3, line: 470, type: !7)
!3345 = !DILocalVariable(name: "ldom", scope: !3346, file: !3, line: 481, type: !609)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 480, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 479, column: 3)
!3348 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 479, column: 3)
!3349 = !DILocation(line: 0, scope: !3338)
!3350 = !DILocation(line: 467, column: 3, scope: !3338)
!3351 = !DILocation(line: 467, column: 28, scope: !3338)
!3352 = !DILocation(line: 472, column: 25, scope: !3338)
!3353 = !DILocation(line: 472, column: 10, scope: !3338)
!3354 = !DILocation(line: 473, column: 3, scope: !3338)
!3355 = !DILocation(line: 474, column: 10, scope: !3338)
!3356 = !DILocation(line: 0, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 476, column: 3)
!3358 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 476, column: 3)
!3359 = !DILocation(line: 476, column: 8, scope: !3358)
!3360 = !DILocation(line: 0, scope: !3358)
!3361 = !DILocation(line: 476, column: 25, scope: !3357)
!3362 = !DILocation(line: 476, column: 17, scope: !3357)
!3363 = !DILocation(line: 476, column: 3, scope: !3358)
!3364 = !DILocation(line: 479, column: 3, scope: !3348)
!3365 = !DILocation(line: 477, column: 20, scope: !3357)
!3366 = !DILocation(line: 477, column: 29, scope: !3357)
!3367 = !DILocation(line: 477, column: 5, scope: !3357)
!3368 = !DILocation(line: 476, column: 37, scope: !3357)
!3369 = !DILocation(line: 476, column: 3, scope: !3357)
!3370 = distinct !{!3370, !3363, !3371}
!3371 = !DILocation(line: 477, column: 34, scope: !3358)
!3372 = !DILocation(line: 479, column: 25, scope: !3347)
!3373 = !DILocation(line: 479, column: 17, scope: !3347)
!3374 = !DILocation(line: 483, column: 50, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 483, column: 7)
!3376 = !DILocation(line: 483, column: 19, scope: !3375)
!3377 = !DILocation(line: 0, scope: !3346)
!3378 = !DILocation(line: 483, column: 12, scope: !3375)
!3379 = !DILocation(line: 0, scope: !3375)
!3380 = !DILocation(line: 483, column: 7, scope: !3375)
!3381 = !DILocation(line: 486, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 486, column: 6)
!3383 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 483, column: 7)
!3384 = !DILocation(line: 486, column: 6, scope: !3383)
!3385 = !DILocation(line: 488, column: 6, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 487, column: 4)
!3387 = !DILocation(line: 489, column: 6, scope: !3386)
!3388 = !DILocation(line: 490, column: 4, scope: !3386)
!3389 = !DILocation(line: 485, column: 12, scope: !3383)
!3390 = !DILocation(line: 483, column: 7, scope: !3383)
!3391 = distinct !{!3391, !3380, !3392}
!3392 = !DILocation(line: 490, column: 4, scope: !3375)
!3393 = !DILocation(line: 479, column: 37, scope: !3347)
!3394 = !DILocation(line: 479, column: 3, scope: !3347)
!3395 = distinct !{!3395, !3364, !3396}
!3396 = !DILocation(line: 491, column: 5, scope: !3348)
!3397 = !DILocation(line: 493, column: 43, scope: !3338)
!3398 = !DILocation(line: 493, column: 3, scope: !3338)
!3399 = !DILocation(line: 494, column: 9, scope: !3338)
!3400 = !DILocation(line: 494, column: 3, scope: !3338)
!3401 = !DILocation(line: 495, column: 9, scope: !3338)
!3402 = !DILocation(line: 495, column: 3, scope: !3338)
!3403 = !DILocation(line: 496, column: 3, scope: !3338)
!3404 = !DILocation(line: 497, column: 1, scope: !3338)
!3405 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !534, file: !534, line: 2241, type: !3406, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!672, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !610, line: 60, baseType: !2003)
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "gs", arg: 1, scope: !3405, file: !534, line: 2241, type: !3408)
!3411 = !DILocation(line: 0, scope: !3405)
!3412 = !DILocation(line: 2244, column: 10, scope: !3405)
!3413 = !DILocation(line: 2244, column: 3, scope: !3405)
!3414 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !534, file: !534, line: 2261, type: !3415, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !647, !672}
!3417 = !{!3418, !3419}
!3418 = !DILocalVariable(name: "gs", arg: 1, scope: !3414, file: !534, line: 2261, type: !647)
!3419 = !DILocalVariable(name: "lhs", arg: 2, scope: !3414, file: !534, line: 2261, type: !672)
!3420 = !DILocation(line: 0, scope: !3414)
!3421 = !DILocation(line: 2264, column: 3, scope: !3414)
!3422 = !DILocation(line: 2265, column: 1, scope: !3414)
!3423 = distinct !DISubprogram(name: "loopify", scope: !3, file: !3, line: 710, type: !3424, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!1324, !627, !627, !609, !627, !627, !600, !7, !7}
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3427 = !DILocalVariable(name: "latch_edge", arg: 1, scope: !3423, file: !3, line: 710, type: !627)
!3428 = !DILocalVariable(name: "header_edge", arg: 2, scope: !3423, file: !3, line: 710, type: !627)
!3429 = !DILocalVariable(name: "switch_bb", arg: 3, scope: !3423, file: !3, line: 711, type: !609)
!3430 = !DILocalVariable(name: "true_edge", arg: 4, scope: !3423, file: !3, line: 711, type: !627)
!3431 = !DILocalVariable(name: "false_edge", arg: 5, scope: !3423, file: !3, line: 711, type: !627)
!3432 = !DILocalVariable(name: "redirect_all_edges", arg: 6, scope: !3423, file: !3, line: 712, type: !600)
!3433 = !DILocalVariable(name: "true_scale", arg: 7, scope: !3423, file: !3, line: 712, type: !7)
!3434 = !DILocalVariable(name: "false_scale", arg: 8, scope: !3423, file: !3, line: 712, type: !7)
!3435 = !DILocalVariable(name: "succ_bb", scope: !3423, file: !3, line: 714, type: !609)
!3436 = !DILocalVariable(name: "pred_bb", scope: !3423, file: !3, line: 715, type: !609)
!3437 = !DILocalVariable(name: "loop", scope: !3423, file: !3, line: 716, type: !1324)
!3438 = !DILocalVariable(name: "outer", scope: !3423, file: !3, line: 717, type: !1324)
!3439 = !DILocalVariable(name: "freq", scope: !3423, file: !3, line: 718, type: !601)
!3440 = !DILocalVariable(name: "cnt", scope: !3423, file: !3, line: 719, type: !1959)
!3441 = !DILocalVariable(name: "e", scope: !3423, file: !3, line: 720, type: !627)
!3442 = !DILocalVariable(name: "ei", scope: !3423, file: !3, line: 721, type: !2504)
!3443 = !DILocation(line: 0, scope: !3423)
!3444 = !DILocation(line: 714, column: 37, scope: !3423)
!3445 = !DILocation(line: 715, column: 38, scope: !3423)
!3446 = !DILocation(line: 716, column: 23, scope: !3423)
!3447 = !DILocation(line: 717, column: 45, scope: !3423)
!3448 = !DILocation(line: 717, column: 24, scope: !3423)
!3449 = !DILocation(line: 720, column: 3, scope: !3423)
!3450 = !DILocation(line: 721, column: 3, scope: !3423)
!3451 = !DILocation(line: 723, column: 31, scope: !3423)
!3452 = !DILocation(line: 723, column: 9, scope: !3423)
!3453 = !DILocation(line: 723, column: 16, scope: !3423)
!3454 = !DILocation(line: 724, column: 29, scope: !3423)
!3455 = !DILocation(line: 724, column: 9, scope: !3423)
!3456 = !DILocation(line: 724, column: 15, scope: !3423)
!3457 = !DILocation(line: 726, column: 10, scope: !3423)
!3458 = !DILocation(line: 727, column: 22, scope: !3423)
!3459 = !DILocation(line: 730, column: 41, scope: !3423)
!3460 = !DILocation(line: 730, column: 3, scope: !3423)
!3461 = !DILocation(line: 731, column: 3, scope: !3423)
!3462 = !DILocation(line: 735, column: 7, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 735, column: 7)
!3464 = !DILocation(line: 735, column: 7, scope: !3423)
!3465 = !DILocation(line: 737, column: 7, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 736, column: 5)
!3467 = !DILocation(line: 738, column: 45, scope: !3466)
!3468 = !DILocation(line: 738, column: 7, scope: !3466)
!3469 = !DILocation(line: 741, column: 7, scope: !3466)
!3470 = !DILocation(line: 742, column: 54, scope: !3466)
!3471 = !DILocation(line: 742, column: 7, scope: !3466)
!3472 = !DILocation(line: 743, column: 5, scope: !3466)
!3473 = !DILocation(line: 745, column: 3, scope: !3423)
!3474 = !DILocation(line: 748, column: 3, scope: !3423)
!3475 = !DILocation(line: 751, column: 18, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 751, column: 7)
!3477 = !DILocation(line: 751, column: 7, scope: !3476)
!3478 = !DILocation(line: 751, column: 7, scope: !3423)
!3479 = !DILocation(line: 752, column: 5, scope: !3476)
!3480 = !DILocation(line: 753, column: 3, scope: !3423)
!3481 = !DILocation(line: 756, column: 7, scope: !3423)
!3482 = !DILocation(line: 758, column: 18, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 757, column: 5)
!3484 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 756, column: 7)
!3485 = !DILocation(line: 758, column: 28, scope: !3483)
!3486 = !DILocation(line: 759, column: 18, scope: !3483)
!3487 = !DILocation(line: 759, column: 24, scope: !3483)
!3488 = !DILocation(line: 760, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 760, column: 7)
!3490 = !DILocation(line: 0, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 760, column: 7)
!3492 = !DILocation(line: 760, column: 7, scope: !3491)
!3493 = !DILocation(line: 762, column: 27, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 761, column: 2)
!3495 = !DILocation(line: 762, column: 35, scope: !3494)
!3496 = !DILocation(line: 762, column: 38, scope: !3494)
!3497 = !DILocation(line: 762, column: 33, scope: !3494)
!3498 = !DILocation(line: 762, column: 51, scope: !3494)
!3499 = !DILocation(line: 762, column: 7, scope: !3494)
!3500 = !DILocation(line: 762, column: 13, scope: !3494)
!3501 = distinct !{!3501, !3488, !3502}
!3502 = !DILocation(line: 763, column: 2, scope: !3489)
!3503 = !DILocation(line: 765, column: 3, scope: !3423)
!3504 = !DILocation(line: 766, column: 36, scope: !3423)
!3505 = !DILocation(line: 766, column: 3, scope: !3423)
!3506 = !DILocation(line: 767, column: 3, scope: !3423)
!3507 = !DILocation(line: 770, column: 1, scope: !3423)
!3508 = !DILocation(line: 769, column: 3, scope: !3423)
!3509 = distinct !DISubprogram(name: "loop_redirect_edge", scope: !3, file: !3, line: 904, type: !3510, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !627, !609}
!3512 = !{!3513, !3514}
!3513 = !DILocalVariable(name: "e", arg: 1, scope: !3509, file: !3, line: 904, type: !627)
!3514 = !DILocalVariable(name: "dest", arg: 2, scope: !3509, file: !3, line: 904, type: !609)
!3515 = !DILocation(line: 0, scope: !3509)
!3516 = !DILocation(line: 906, column: 10, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 906, column: 7)
!3518 = !DILocation(line: 906, column: 15, scope: !3517)
!3519 = !DILocation(line: 906, column: 7, scope: !3509)
!3520 = !DILocation(line: 909, column: 3, scope: !3509)
!3521 = !DILocation(line: 910, column: 1, scope: !3509)
!3522 = distinct !DISubprogram(name: "duplicate_loop", scope: !3, file: !3, line: 858, type: !3523, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!1324, !1324, !1324}
!3525 = !{!3526, !3527, !3528}
!3526 = !DILocalVariable(name: "loop", arg: 1, scope: !3522, file: !3, line: 858, type: !1324)
!3527 = !DILocalVariable(name: "target", arg: 2, scope: !3522, file: !3, line: 858, type: !1324)
!3528 = !DILocalVariable(name: "cloop", scope: !3522, file: !3, line: 860, type: !1324)
!3529 = !DILocation(line: 0, scope: !3522)
!3530 = !DILocation(line: 861, column: 11, scope: !3522)
!3531 = !DILocation(line: 862, column: 3, scope: !3522)
!3532 = !DILocation(line: 865, column: 3, scope: !3522)
!3533 = !DILocation(line: 868, column: 3, scope: !3522)
!3534 = !DILocation(line: 870, column: 3, scope: !3522)
!3535 = distinct !DISubprogram(name: "duplicate_subloops", scope: !3, file: !3, line: 876, type: !3058, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "loop", arg: 1, scope: !3535, file: !3, line: 876, type: !1324)
!3538 = !DILocalVariable(name: "target", arg: 2, scope: !3535, file: !3, line: 876, type: !1324)
!3539 = !DILocalVariable(name: "aloop", scope: !3535, file: !3, line: 878, type: !1324)
!3540 = !DILocalVariable(name: "cloop", scope: !3535, file: !3, line: 878, type: !1324)
!3541 = !DILocation(line: 0, scope: !3535)
!3542 = !DILocation(line: 880, column: 22, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 880, column: 3)
!3544 = !DILocation(line: 880, column: 8, scope: !3543)
!3545 = !DILocation(line: 0, scope: !3543)
!3546 = !DILocation(line: 880, column: 3, scope: !3543)
!3547 = !DILocation(line: 882, column: 15, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 881, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 880, column: 3)
!3550 = !DILocation(line: 883, column: 7, scope: !3548)
!3551 = !DILocation(line: 880, column: 51, scope: !3549)
!3552 = !DILocation(line: 880, column: 3, scope: !3549)
!3553 = distinct !{!3553, !3546, !3554}
!3554 = !DILocation(line: 884, column: 5, scope: !3543)
!3555 = !DILocation(line: 885, column: 1, scope: !3535)
!3556 = distinct !DISubprogram(name: "can_duplicate_loop_p", scope: !3, file: !3, line: 914, type: !3557, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!600, !2699}
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "loop", arg: 1, scope: !3556, file: !3, line: 914, type: !2699)
!3561 = !DILocalVariable(name: "ret", scope: !3556, file: !3, line: 916, type: !601)
!3562 = !DILocalVariable(name: "bbs", scope: !3556, file: !3, line: 917, type: !608)
!3563 = !DILocation(line: 0, scope: !3556)
!3564 = !DILocation(line: 917, column: 22, scope: !3556)
!3565 = !DILocation(line: 919, column: 36, scope: !3556)
!3566 = !DILocation(line: 919, column: 9, scope: !3556)
!3567 = !DILocation(line: 920, column: 9, scope: !3556)
!3568 = !DILocation(line: 920, column: 3, scope: !3556)
!3569 = !DILocation(line: 922, column: 3, scope: !3556)
!3570 = distinct !DISubprogram(name: "duplicate_loop_to_header_edge", scope: !3, file: !3, line: 972, type: !3571, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3574)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!600, !1324, !627, !7, !2489, !627, !3573, !601}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3625, !3630, !3639, !3643, !3644, !3645}
!3575 = !DILocalVariable(name: "loop", arg: 1, scope: !3570, file: !3, line: 972, type: !1324)
!3576 = !DILocalVariable(name: "e", arg: 2, scope: !3570, file: !3, line: 972, type: !627)
!3577 = !DILocalVariable(name: "ndupl", arg: 3, scope: !3570, file: !3, line: 973, type: !7)
!3578 = !DILocalVariable(name: "wont_exit", arg: 4, scope: !3570, file: !3, line: 973, type: !2489)
!3579 = !DILocalVariable(name: "orig", arg: 5, scope: !3570, file: !3, line: 974, type: !627)
!3580 = !DILocalVariable(name: "to_remove", arg: 6, scope: !3570, file: !3, line: 974, type: !3573)
!3581 = !DILocalVariable(name: "flags", arg: 7, scope: !3570, file: !3, line: 975, type: !601)
!3582 = !DILocalVariable(name: "target", scope: !3570, file: !3, line: 977, type: !1324)
!3583 = !DILocalVariable(name: "aloop", scope: !3570, file: !3, line: 977, type: !1324)
!3584 = !DILocalVariable(name: "orig_loops", scope: !3570, file: !3, line: 978, type: !1994)
!3585 = !DILocalVariable(name: "n_orig_loops", scope: !3570, file: !3, line: 979, type: !7)
!3586 = !DILocalVariable(name: "header", scope: !3570, file: !3, line: 980, type: !609)
!3587 = !DILocalVariable(name: "latch", scope: !3570, file: !3, line: 980, type: !609)
!3588 = !DILocalVariable(name: "new_bbs", scope: !3570, file: !3, line: 981, type: !608)
!3589 = !DILocalVariable(name: "bbs", scope: !3570, file: !3, line: 981, type: !608)
!3590 = !DILocalVariable(name: "first_active", scope: !3570, file: !3, line: 981, type: !608)
!3591 = !DILocalVariable(name: "new_bb", scope: !3570, file: !3, line: 982, type: !609)
!3592 = !DILocalVariable(name: "bb", scope: !3570, file: !3, line: 982, type: !609)
!3593 = !DILocalVariable(name: "first_active_latch", scope: !3570, file: !3, line: 982, type: !609)
!3594 = !DILocalVariable(name: "ae", scope: !3570, file: !3, line: 983, type: !627)
!3595 = !DILocalVariable(name: "latch_edge", scope: !3570, file: !3, line: 983, type: !627)
!3596 = !DILocalVariable(name: "spec_edges", scope: !3570, file: !3, line: 984, type: !3597)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 128, elements: !909)
!3598 = !DILocalVariable(name: "new_spec_edges", scope: !3570, file: !3, line: 984, type: !3597)
!3599 = !DILocalVariable(name: "i", scope: !3570, file: !3, line: 987, type: !7)
!3600 = !DILocalVariable(name: "j", scope: !3570, file: !3, line: 987, type: !7)
!3601 = !DILocalVariable(name: "n", scope: !3570, file: !3, line: 987, type: !7)
!3602 = !DILocalVariable(name: "is_latch", scope: !3570, file: !3, line: 988, type: !601)
!3603 = !DILocalVariable(name: "scale_act", scope: !3570, file: !3, line: 989, type: !601)
!3604 = !DILocalVariable(name: "scale_step", scope: !3570, file: !3, line: 989, type: !1993)
!3605 = !DILocalVariable(name: "scale_main", scope: !3570, file: !3, line: 989, type: !601)
!3606 = !DILocalVariable(name: "scale_after_exit", scope: !3570, file: !3, line: 990, type: !601)
!3607 = !DILocalVariable(name: "p", scope: !3570, file: !3, line: 991, type: !601)
!3608 = !DILocalVariable(name: "freq_in", scope: !3570, file: !3, line: 991, type: !601)
!3609 = !DILocalVariable(name: "freq_le", scope: !3570, file: !3, line: 991, type: !601)
!3610 = !DILocalVariable(name: "freq_out_orig", scope: !3570, file: !3, line: 991, type: !601)
!3611 = !DILocalVariable(name: "prob_pass_thru", scope: !3570, file: !3, line: 992, type: !601)
!3612 = !DILocalVariable(name: "prob_pass_wont_exit", scope: !3570, file: !3, line: 992, type: !601)
!3613 = !DILocalVariable(name: "prob_pass_main", scope: !3570, file: !3, line: 992, type: !601)
!3614 = !DILocalVariable(name: "add_irreducible_flag", scope: !3570, file: !3, line: 993, type: !601)
!3615 = !DILocalVariable(name: "place_after", scope: !3570, file: !3, line: 994, type: !609)
!3616 = !DILocalVariable(name: "bbs_to_scale", scope: !3570, file: !3, line: 995, type: !1258)
!3617 = !DILocalVariable(name: "bi", scope: !3570, file: !3, line: 996, type: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !895, line: 218, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !895, line: 203, size: 256, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3619, file: !895, line: 206, baseType: !898, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3619, file: !895, line: 209, baseType: !898, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3619, file: !895, line: 212, baseType: !7, size: 32, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3619, file: !895, line: 217, baseType: !908, size: 64, offset: 192)
!3625 = !DILocalVariable(name: "wanted_freq", scope: !3626, file: !3, line: 1073, type: !601)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1072, column: 2)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1071, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1030, column: 5)
!3629 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1029, column: 7)
!3630 = !DILocalVariable(name: "ei", scope: !3631, file: !3, line: 1166, type: !2504)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1165, column: 6)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1164, column: 4)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1164, column: 4)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1161, column: 2)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1160, column: 11)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1143, column: 5)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1142, column: 3)
!3638 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1142, column: 3)
!3639 = !DILocalVariable(name: "dominated", scope: !3640, file: !3, line: 1266, type: !609)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 1265, column: 5)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 1264, column: 3)
!3642 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1264, column: 3)
!3643 = !DILocalVariable(name: "dom_bb", scope: !3640, file: !3, line: 1266, type: !609)
!3644 = !DILocalVariable(name: "dom_bbs", scope: !3640, file: !3, line: 1267, type: !1998)
!3645 = !DILocalVariable(name: "j", scope: !3640, file: !3, line: 1268, type: !7)
!3646 = !DILocation(line: 0, scope: !3570)
!3647 = !DILocation(line: 980, column: 30, scope: !3570)
!3648 = !DILocation(line: 980, column: 52, scope: !3570)
!3649 = !DILocation(line: 983, column: 3, scope: !3570)
!3650 = !DILocation(line: 984, column: 3, scope: !3570)
!3651 = !DILocation(line: 984, column: 8, scope: !3570)
!3652 = !DILocation(line: 984, column: 23, scope: !3570)
!3653 = !DILocation(line: 987, column: 3, scope: !3570)
!3654 = !DILocation(line: 988, column: 31, scope: !3570)
!3655 = !DILocation(line: 988, column: 25, scope: !3570)
!3656 = !DILocation(line: 996, column: 3, scope: !3570)
!3657 = !DILocation(line: 998, column: 3, scope: !3570)
!3658 = !DILocation(line: 999, column: 3, scope: !3570)
!3659 = !DILocation(line: 1001, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1001, column: 7)
!3661 = !DILocation(line: 1001, column: 7, scope: !3570)
!3662 = !DILocation(line: 1004, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 1002, column: 5)
!3664 = !DILocation(line: 1005, column: 7, scope: !3663)
!3665 = !DILocation(line: 1008, column: 13, scope: !3570)
!3666 = !DILocation(line: 1009, column: 9, scope: !3570)
!3667 = !DILocation(line: 1010, column: 3, scope: !3570)
!3668 = !DILocation(line: 1011, column: 3, scope: !3570)
!3669 = !DILocation(line: 1014, column: 35, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1014, column: 7)
!3671 = !DILocation(line: 1014, column: 8, scope: !3670)
!3672 = !DILocation(line: 1014, column: 7, scope: !3570)
!3673 = !DILocation(line: 1016, column: 13, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1015, column: 5)
!3675 = !DILocation(line: 1016, column: 7, scope: !3674)
!3676 = !DILocation(line: 1017, column: 7, scope: !3674)
!3677 = !DILocation(line: 1019, column: 13, scope: !3570)
!3678 = !DILocation(line: 1023, column: 29, scope: !3570)
!3679 = !DILocation(line: 1023, column: 35, scope: !3570)
!3680 = !DILocation(line: 1024, column: 3, scope: !3570)
!3681 = !DILocation(line: 1027, column: 16, scope: !3570)
!3682 = !DILocation(line: 1029, column: 13, scope: !3629)
!3683 = !DILocation(line: 1029, column: 7, scope: !3570)
!3684 = !DILocation(line: 1033, column: 25, scope: !3628)
!3685 = !DILocation(line: 1034, column: 17, scope: !3628)
!3686 = !DILocation(line: 1035, column: 19, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1035, column: 11)
!3688 = !DILocation(line: 1035, column: 11, scope: !3628)
!3689 = !DILocation(line: 1037, column: 19, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1037, column: 11)
!3691 = !DILocation(line: 1037, column: 11, scope: !3628)
!3692 = !DILocation(line: 1039, column: 23, scope: !3628)
!3693 = !DILocation(line: 1039, column: 30, scope: !3628)
!3694 = !DILocation(line: 1040, column: 35, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1040, column: 11)
!3696 = !DILocation(line: 1039, column: 62, scope: !3628)
!3697 = !DILocation(line: 1040, column: 25, scope: !3695)
!3698 = !DILocation(line: 1040, column: 11, scope: !3628)
!3699 = !DILocation(line: 1042, column: 24, scope: !3628)
!3700 = !DILocation(line: 1044, column: 8, scope: !3628)
!3701 = !DILocation(line: 1047, column: 4, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1046, column: 11)
!3703 = !DILocation(line: 1047, column: 32, scope: !3702)
!3704 = !DILocation(line: 1047, column: 44, scope: !3702)
!3705 = !DILocation(line: 1046, column: 11, scope: !3628)
!3706 = !DILocation(line: 1051, column: 23, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 1048, column: 2)
!3708 = !DILocation(line: 1053, column: 19, scope: !3707)
!3709 = !DILocation(line: 0, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 1056, column: 12)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1055, column: 6)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 1054, column: 4)
!3713 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 1054, column: 4)
!3714 = !DILocation(line: 1054, column: 18, scope: !3712)
!3715 = !DILocation(line: 1054, column: 9, scope: !3713)
!3716 = !DILocation(line: 0, scope: !3713)
!3717 = !DILocation(line: 1054, column: 4, scope: !3713)
!3718 = !DILocation(line: 1056, column: 12, scope: !3710)
!3719 = !DILocation(line: 1056, column: 28, scope: !3710)
!3720 = !DILocation(line: 1056, column: 19, scope: !3710)
!3721 = !DILocation(line: 1057, column: 5, scope: !3710)
!3722 = !DILocation(line: 1057, column: 8, scope: !3710)
!3723 = !DILocation(line: 1056, column: 12, scope: !3711)
!3724 = !DILocation(line: 1058, column: 3, scope: !3710)
!3725 = !DILocation(line: 1054, column: 24, scope: !3712)
!3726 = !DILocation(line: 1054, column: 4, scope: !3712)
!3727 = distinct !{!3727, !3717, !3728}
!3728 = !DILocation(line: 1059, column: 6, scope: !3713)
!3729 = !DILocation(line: 1062, column: 20, scope: !3628)
!3730 = !DILocation(line: 1064, column: 12, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1064, column: 7)
!3732 = !DILocation(line: 0, scope: !3731)
!3733 = !DILocation(line: 1064, column: 21, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 1064, column: 7)
!3735 = !DILocation(line: 1064, column: 7, scope: !3731)
!3736 = !DILocation(line: 1065, column: 22, scope: !3734)
!3737 = !DILocation(line: 1065, column: 15, scope: !3734)
!3738 = !DILocation(line: 1065, column: 2, scope: !3734)
!3739 = !DILocation(line: 1065, column: 20, scope: !3734)
!3740 = !DILocation(line: 1064, column: 32, scope: !3734)
!3741 = !DILocation(line: 1064, column: 7, scope: !3734)
!3742 = distinct !{!3742, !3735, !3743}
!3743 = !DILocation(line: 1067, column: 7, scope: !3731)
!3744 = !DILocation(line: 1071, column: 17, scope: !3627)
!3745 = !DILocation(line: 1071, column: 11, scope: !3628)
!3746 = !DILocation(line: 1073, column: 22, scope: !3626)
!3747 = !DILocation(line: 0, scope: !3626)
!3748 = !DILocation(line: 1075, column: 20, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 1075, column: 8)
!3750 = !DILocation(line: 1075, column: 8, scope: !3626)
!3751 = !DILocation(line: 1078, column: 4, scope: !3626)
!3752 = !DILocation(line: 1083, column: 16, scope: !3626)
!3753 = !DILocation(line: 1086, column: 18, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 1086, column: 4)
!3755 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 1086, column: 4)
!3756 = !DILocation(line: 1086, column: 9, scope: !3755)
!3757 = !DILocation(line: 0, scope: !3755)
!3758 = !DILocation(line: 1086, column: 4, scope: !3755)
!3759 = !DILocation(line: 1087, column: 20, scope: !3754)
!3760 = !DILocation(line: 1086, column: 28, scope: !3754)
!3761 = !DILocation(line: 1086, column: 4, scope: !3754)
!3762 = distinct !{!3762, !3758, !3763}
!3763 = !DILocation(line: 1087, column: 20, scope: !3755)
!3764 = !DILocation(line: 1088, column: 17, scope: !3626)
!3765 = !DILocation(line: 1089, column: 2, scope: !3626)
!3766 = !DILocation(line: 1090, column: 16, scope: !3627)
!3767 = !DILocation(line: 1092, column: 21, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1091, column: 2)
!3769 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1090, column: 16)
!3770 = !DILocation(line: 1097, column: 18, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 1097, column: 4)
!3772 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1097, column: 4)
!3773 = !DILocation(line: 1097, column: 9, scope: !3772)
!3774 = !DILocation(line: 0, scope: !3772)
!3775 = !DILocation(line: 0, scope: !3768)
!3776 = !DILocation(line: 1097, column: 4, scope: !3772)
!3777 = !DILocation(line: 1099, column: 19, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 1098, column: 6)
!3779 = !DILocation(line: 1100, column: 12, scope: !3778)
!3780 = !DILocation(line: 1097, column: 28, scope: !3771)
!3781 = !DILocation(line: 1097, column: 4, scope: !3771)
!3782 = distinct !{!3782, !3776, !3783}
!3783 = !DILocation(line: 1101, column: 6, scope: !3772)
!3784 = !DILocation(line: 1102, column: 17, scope: !3768)
!3785 = !DILocation(line: 1103, column: 16, scope: !3768)
!3786 = !DILocation(line: 1104, column: 2, scope: !3768)
!3787 = !DILocation(line: 1108, column: 18, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 1108, column: 4)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 1108, column: 4)
!3790 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1106, column: 2)
!3791 = !DILocation(line: 1108, column: 9, scope: !3789)
!3792 = !DILocation(line: 0, scope: !3789)
!3793 = !DILocation(line: 0, scope: !3790)
!3794 = !DILocation(line: 1108, column: 4, scope: !3789)
!3795 = !DILocation(line: 1109, column: 19, scope: !3788)
!3796 = !DILocation(line: 1108, column: 28, scope: !3788)
!3797 = !DILocation(line: 1108, column: 4, scope: !3788)
!3798 = distinct !{!3798, !3794, !3799}
!3799 = !DILocation(line: 1109, column: 19, scope: !3789)
!3800 = !DILocation(line: 1110, column: 33, scope: !3790)
!3801 = !DILocation(line: 0, scope: !3627)
!3802 = !DILocation(line: 1112, column: 21, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 1112, column: 7)
!3804 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1112, column: 7)
!3805 = !DILocation(line: 1112, column: 12, scope: !3804)
!3806 = !DILocation(line: 0, scope: !3804)
!3807 = !DILocation(line: 1112, column: 7, scope: !3804)
!3808 = !DILocation(line: 1113, column: 2, scope: !3803)
!3809 = !DILocation(line: 1112, column: 31, scope: !3803)
!3810 = !DILocation(line: 1112, column: 7, scope: !3803)
!3811 = distinct !{!3811, !3807, !3812}
!3812 = !DILocation(line: 1113, column: 2, scope: !3804)
!3813 = !DILocation(line: 1114, column: 7, scope: !3628)
!3814 = !DILocation(line: 1119, column: 15, scope: !3570)
!3815 = !DILocation(line: 1119, column: 20, scope: !3570)
!3816 = !DILocation(line: 1123, column: 22, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1123, column: 3)
!3818 = !DILocation(line: 1123, column: 8, scope: !3817)
!3819 = !DILocation(line: 0, scope: !3817)
!3820 = !DILocation(line: 1123, column: 3, scope: !3817)
!3821 = !DILocation(line: 1124, column: 17, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1123, column: 3)
!3823 = !DILocation(line: 1123, column: 51, scope: !3822)
!3824 = !DILocation(line: 1123, column: 3, scope: !3822)
!3825 = distinct !{!3825, !3820, !3826}
!3826 = !DILocation(line: 1124, column: 17, scope: !3817)
!3827 = !DILocation(line: 1125, column: 16, scope: !3570)
!3828 = !DILocation(line: 1126, column: 8, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1126, column: 3)
!3830 = !DILocation(line: 0, scope: !3829)
!3831 = !DILocation(line: 1126, column: 3, scope: !3829)
!3832 = !DILocation(line: 1127, column: 5, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1126, column: 3)
!3834 = !DILocation(line: 1127, column: 19, scope: !3833)
!3835 = !DILocation(line: 1126, column: 58, scope: !3833)
!3836 = !DILocation(line: 1126, column: 65, scope: !3833)
!3837 = !DILocation(line: 1126, column: 3, scope: !3833)
!3838 = distinct !{!3838, !3831, !3839}
!3839 = !DILocation(line: 1127, column: 21, scope: !3829)
!3840 = !DILocation(line: 1129, column: 3, scope: !3570)
!3841 = !DILocation(line: 1131, column: 18, scope: !3570)
!3842 = !DILocation(line: 1132, column: 7, scope: !3570)
!3843 = !DILocation(line: 1134, column: 29, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 1133, column: 5)
!3845 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1132, column: 7)
!3846 = !DILocation(line: 1134, column: 7, scope: !3844)
!3847 = !DILocation(line: 1136, column: 5, scope: !3844)
!3848 = !DILocation(line: 1138, column: 3, scope: !3570)
!3849 = !DILocation(line: 1138, column: 23, scope: !3570)
!3850 = !DILocation(line: 1139, column: 3, scope: !3570)
!3851 = !DILocation(line: 1139, column: 24, scope: !3570)
!3852 = !DILocation(line: 1141, column: 20, scope: !3570)
!3853 = !DILocation(line: 0, scope: !3636)
!3854 = !DILocation(line: 0, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1152, column: 11)
!3856 = !DILocation(line: 0, scope: !3635)
!3857 = !DILocation(line: 0, scope: !3631)
!3858 = !DILocation(line: 0, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1171, column: 8)
!3860 = !DILocation(line: 0, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 1171, column: 8)
!3862 = !DILocation(line: 0, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1183, column: 2)
!3864 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1182, column: 11)
!3865 = !DILocation(line: 0, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1203, column: 8)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 1202, column: 2)
!3868 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1201, column: 11)
!3869 = !DILocation(line: 0, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1208, column: 8)
!3871 = !DILocation(line: 1142, column: 17, scope: !3637)
!3872 = !DILocation(line: 1142, column: 8, scope: !3638)
!3873 = !DILocation(line: 1135, column: 26, scope: !3844)
!3874 = !DILocation(line: 1142, column: 3, scope: !3638)
!3875 = !DILocation(line: 1145, column: 7, scope: !3636)
!3876 = !DILocation(line: 1148, column: 7, scope: !3636)
!3877 = !DILocation(line: 1150, column: 21, scope: !3636)
!3878 = !DILocation(line: 1150, column: 47, scope: !3636)
!3879 = !DILocation(line: 1152, column: 11, scope: !3636)
!3880 = !DILocation(line: 0, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 1154, column: 4)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1153, column: 2)
!3883 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 1153, column: 2)
!3884 = !DILocation(line: 1153, column: 7, scope: !3883)
!3885 = !DILocation(line: 0, scope: !3883)
!3886 = !DILocation(line: 1153, column: 16, scope: !3882)
!3887 = !DILocation(line: 1153, column: 2, scope: !3883)
!3888 = !DILocation(line: 1155, column: 6, scope: !3881)
!3889 = !DILocation(line: 1156, column: 14, scope: !3881)
!3890 = !DILocation(line: 1156, column: 6, scope: !3881)
!3891 = !DILocation(line: 1156, column: 18, scope: !3881)
!3892 = !DILocation(line: 1156, column: 22, scope: !3881)
!3893 = !DILocation(line: 1153, column: 22, scope: !3882)
!3894 = !DILocation(line: 1153, column: 2, scope: !3882)
!3895 = distinct !{!3895, !3887, !3896}
!3896 = !DILocation(line: 1157, column: 4, scope: !3883)
!3897 = !DILocation(line: 1160, column: 11, scope: !3635)
!3898 = !DILocation(line: 1160, column: 11, scope: !3636)
!3899 = !DILocation(line: 1162, column: 18, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1162, column: 4)
!3901 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1162, column: 4)
!3902 = !DILocation(line: 1162, column: 9, scope: !3901)
!3903 = !DILocation(line: 0, scope: !3901)
!3904 = !DILocation(line: 1162, column: 4, scope: !3901)
!3905 = !DILocation(line: 1163, column: 6, scope: !3900)
!3906 = !DILocation(line: 1163, column: 18, scope: !3900)
!3907 = !DILocation(line: 1163, column: 24, scope: !3900)
!3908 = !DILocation(line: 1162, column: 24, scope: !3900)
!3909 = !DILocation(line: 1162, column: 4, scope: !3900)
!3910 = distinct !{!3910, !3904, !3911}
!3911 = !DILocation(line: 1163, column: 27, scope: !3901)
!3912 = !DILocation(line: 1164, column: 9, scope: !3633)
!3913 = !DILocation(line: 0, scope: !3633)
!3914 = !DILocation(line: 1164, column: 18, scope: !3632)
!3915 = !DILocation(line: 1164, column: 4, scope: !3633)
!3916 = !DILocation(line: 1166, column: 8, scope: !3631)
!3917 = !DILocation(line: 1167, column: 17, scope: !3631)
!3918 = !DILocation(line: 1168, column: 20, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1168, column: 12)
!3920 = !DILocation(line: 1168, column: 32, scope: !3919)
!3921 = !DILocation(line: 1168, column: 12, scope: !3631)
!3922 = !DILocation(line: 1169, column: 11, scope: !3919)
!3923 = !DILocation(line: 1169, column: 17, scope: !3919)
!3924 = !DILocation(line: 1169, column: 3, scope: !3919)
!3925 = !DILocation(line: 1171, column: 8, scope: !3859)
!3926 = !DILocation(line: 1171, column: 8, scope: !3861)
!3927 = !DILocation(line: 1172, column: 8, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1172, column: 7)
!3929 = !DILocation(line: 1172, column: 12, scope: !3928)
!3930 = !DILocation(line: 1172, column: 18, scope: !3928)
!3931 = !DILocation(line: 1172, column: 24, scope: !3928)
!3932 = !DILocation(line: 1173, column: 7, scope: !3928)
!3933 = !DILocation(line: 1173, column: 15, scope: !3928)
!3934 = !DILocation(line: 1173, column: 20, scope: !3928)
!3935 = !DILocation(line: 1173, column: 32, scope: !3928)
!3936 = !DILocation(line: 1174, column: 4, scope: !3928)
!3937 = !DILocation(line: 1174, column: 17, scope: !3928)
!3938 = !DILocation(line: 1174, column: 29, scope: !3928)
!3939 = !DILocation(line: 1172, column: 7, scope: !3861)
!3940 = !DILocation(line: 1175, column: 9, scope: !3928)
!3941 = !DILocation(line: 1175, column: 15, scope: !3928)
!3942 = !DILocation(line: 1175, column: 5, scope: !3928)
!3943 = distinct !{!3943, !3925, !3944}
!3944 = !DILocation(line: 1175, column: 18, scope: !3859)
!3945 = !DILocation(line: 1176, column: 6, scope: !3632)
!3946 = !DILocation(line: 1164, column: 24, scope: !3632)
!3947 = !DILocation(line: 1164, column: 4, scope: !3632)
!3948 = distinct !{!3948, !3915, !3949}
!3949 = !DILocation(line: 1176, column: 6, scope: !3633)
!3950 = !DILocation(line: 1177, column: 18, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 1177, column: 4)
!3952 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1177, column: 4)
!3953 = !DILocation(line: 1177, column: 9, scope: !3952)
!3954 = !DILocation(line: 0, scope: !3952)
!3955 = !DILocation(line: 1177, column: 4, scope: !3952)
!3956 = !DILocation(line: 1178, column: 6, scope: !3951)
!3957 = !DILocation(line: 1178, column: 18, scope: !3951)
!3958 = !DILocation(line: 1178, column: 24, scope: !3951)
!3959 = !DILocation(line: 1177, column: 24, scope: !3951)
!3960 = !DILocation(line: 1177, column: 4, scope: !3951)
!3961 = distinct !{!3961, !3955, !3962}
!3962 = !DILocation(line: 1178, column: 28, scope: !3952)
!3963 = !DILocation(line: 1182, column: 11, scope: !3636)
!3964 = !DILocation(line: 1184, column: 48, scope: !3863)
!3965 = !DILocation(line: 1184, column: 4, scope: !3863)
!3966 = !DILocation(line: 1185, column: 36, scope: !3863)
!3967 = !DILocation(line: 1186, column: 14, scope: !3863)
!3968 = !DILocation(line: 1185, column: 4, scope: !3863)
!3969 = !DILocation(line: 1187, column: 45, scope: !3863)
!3970 = !DILocation(line: 1187, column: 4, scope: !3863)
!3971 = !DILocation(line: 1188, column: 26, scope: !3863)
!3972 = !DILocation(line: 1188, column: 24, scope: !3863)
!3973 = !DILocation(line: 1189, column: 21, scope: !3863)
!3974 = !DILocation(line: 1190, column: 2, scope: !3863)
!3975 = !DILocation(line: 1193, column: 36, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1192, column: 2)
!3977 = !DILocation(line: 1194, column: 14, scope: !3976)
!3978 = !DILocation(line: 1193, column: 4, scope: !3976)
!3979 = !DILocation(line: 1195, column: 39, scope: !3976)
!3980 = !DILocation(line: 1195, column: 4, scope: !3976)
!3981 = !DILocation(line: 1196, column: 45, scope: !3976)
!3982 = !DILocation(line: 1196, column: 60, scope: !3976)
!3983 = !DILocation(line: 1196, column: 4, scope: !3976)
!3984 = !DILocation(line: 1197, column: 8, scope: !3976)
!3985 = !DILocation(line: 0, scope: !3864)
!3986 = !DILocation(line: 1201, column: 16, scope: !3868)
!3987 = !DILocation(line: 1201, column: 19, scope: !3868)
!3988 = !DILocation(line: 1201, column: 11, scope: !3636)
!3989 = !DILocation(line: 1203, column: 8, scope: !3867)
!3990 = !DILocation(line: 1204, column: 6, scope: !3866)
!3991 = !DILocation(line: 1205, column: 26, scope: !3867)
!3992 = !DILocation(line: 1205, column: 4, scope: !3867)
!3993 = !DILocation(line: 1208, column: 8, scope: !3867)
!3994 = !DILocation(line: 1210, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1210, column: 8)
!3996 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 1209, column: 6)
!3997 = !DILocation(line: 1210, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1210, column: 8)
!3999 = !DILocation(line: 1212, column: 42, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 1211, column: 3)
!4001 = !DILocation(line: 1212, column: 40, scope: !4000)
!4002 = !DILocation(line: 1212, column: 5, scope: !4000)
!4003 = distinct !{!4003, !3994, !4004}
!4004 = !DILocation(line: 1214, column: 3, scope: !3995)
!4005 = !DILocation(line: 1220, column: 12, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1220, column: 11)
!4007 = !DILocation(line: 1220, column: 11, scope: !3636)
!4008 = !DILocation(line: 1222, column: 4, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1221, column: 2)
!4010 = !DILocation(line: 1223, column: 25, scope: !4009)
!4011 = !DILocation(line: 1224, column: 2, scope: !4009)
!4012 = !DILocation(line: 1227, column: 11, scope: !3636)
!4013 = !DILocation(line: 1229, column: 4, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1228, column: 2)
!4015 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1227, column: 11)
!4016 = !DILocation(line: 1230, column: 16, scope: !4014)
!4017 = !DILocation(line: 1231, column: 2, scope: !4014)
!4018 = !DILocation(line: 1142, column: 27, scope: !3637)
!4019 = !DILocation(line: 1142, column: 3, scope: !3637)
!4020 = distinct !{!4020, !3874, !4021}
!4021 = !DILocation(line: 1232, column: 5, scope: !3638)
!4022 = !DILocation(line: 1233, column: 3, scope: !3570)
!4023 = !DILocation(line: 1234, column: 3, scope: !3570)
!4024 = !DILocation(line: 1237, column: 12, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1237, column: 7)
!4026 = !DILocation(line: 1237, column: 15, scope: !4025)
!4027 = !DILocation(line: 1237, column: 7, scope: !3570)
!4028 = !DILocation(line: 1239, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1238, column: 5)
!4030 = !DILocation(line: 1240, column: 2, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 1239, column: 11)
!4032 = !DILocation(line: 1241, column: 7, scope: !4029)
!4033 = !DILocation(line: 1244, column: 11, scope: !4029)
!4034 = !DILocation(line: 1246, column: 4, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 1246, column: 4)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 1245, column: 2)
!4037 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 1244, column: 11)
!4038 = !DILocation(line: 1246, column: 4, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1246, column: 4)
!4040 = !DILocation(line: 1248, column: 41, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1247, column: 6)
!4042 = !DILocation(line: 1248, column: 39, scope: !4041)
!4043 = !DILocation(line: 1248, column: 8, scope: !4041)
!4044 = distinct !{!4044, !4034, !4045}
!4045 = !DILocation(line: 1250, column: 6, scope: !4035)
!4046 = !DILocation(line: 1255, column: 7, scope: !3570)
!4047 = !DILocation(line: 1256, column: 49, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1255, column: 7)
!4049 = !DILocation(line: 1256, column: 58, scope: !4048)
!4050 = !DILocation(line: 1256, column: 5, scope: !4048)
!4051 = !DILocation(line: 1257, column: 7, scope: !3570)
!4052 = !DILocation(line: 1259, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 1258, column: 5)
!4054 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1257, column: 7)
!4055 = !DILocation(line: 1260, column: 7, scope: !4053)
!4056 = !DILocation(line: 1261, column: 5, scope: !4053)
!4057 = !DILocation(line: 0, scope: !3640)
!4058 = !DILocation(line: 1264, column: 8, scope: !3642)
!4059 = !DILocation(line: 0, scope: !3642)
!4060 = !DILocation(line: 1264, column: 17, scope: !3641)
!4061 = !DILocation(line: 1264, column: 3, scope: !3642)
!4062 = !DILocation(line: 1266, column: 7, scope: !3640)
!4063 = !DILocation(line: 1267, column: 7, scope: !3640)
!4064 = !DILocation(line: 1270, column: 12, scope: !3640)
!4065 = !DILocation(line: 1271, column: 11, scope: !3640)
!4066 = !DILocation(line: 1271, column: 15, scope: !3640)
!4067 = !DILocation(line: 1273, column: 17, scope: !3640)
!4068 = !DILocation(line: 1273, column: 15, scope: !3640)
!4069 = !DILocation(line: 1274, column: 12, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1274, column: 7)
!4071 = !DILocation(line: 1274, column: 19, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1274, column: 7)
!4073 = !DILocation(line: 0, scope: !4070)
!4074 = !DILocation(line: 1274, column: 7, scope: !4070)
!4075 = !DILocation(line: 1276, column: 37, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 1276, column: 8)
!4077 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1275, column: 2)
!4078 = !DILocation(line: 1276, column: 8, scope: !4076)
!4079 = !DILocation(line: 1276, column: 8, scope: !4077)
!4080 = !DILocation(line: 1279, column: 33, scope: !4077)
!4081 = !DILocation(line: 1279, column: 20, scope: !4077)
!4082 = !DILocation(line: 1278, column: 13, scope: !4077)
!4083 = !DILocation(line: 1280, column: 45, scope: !4077)
!4084 = !DILocation(line: 1280, column: 4, scope: !4077)
!4085 = !DILocation(line: 1281, column: 2, scope: !4077)
!4086 = !DILocation(line: 1274, column: 70, scope: !4072)
!4087 = !DILocation(line: 1274, column: 7, scope: !4072)
!4088 = distinct !{!4088, !4074, !4089}
!4089 = !DILocation(line: 1281, column: 2, scope: !4070)
!4090 = !DILocation(line: 1282, column: 7, scope: !3640)
!4091 = !DILocation(line: 1283, column: 5, scope: !3641)
!4092 = !DILocation(line: 1264, column: 23, scope: !3641)
!4093 = !DILocation(line: 1264, column: 3, scope: !3641)
!4094 = distinct !{!4094, !4061, !4095}
!4095 = !DILocation(line: 1283, column: 5, scope: !3642)
!4096 = !DILocation(line: 1284, column: 3, scope: !3570)
!4097 = !DILocation(line: 1286, column: 9, scope: !3570)
!4098 = !DILocation(line: 1286, column: 3, scope: !3570)
!4099 = !DILocation(line: 1287, column: 3, scope: !3570)
!4100 = !DILocation(line: 1289, column: 3, scope: !3570)
!4101 = !DILocation(line: 1290, column: 1, scope: !3570)
!4102 = distinct !DISubprogram(name: "copy_loops_to", scope: !3, file: !3, line: 890, type: !4103, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !1994, !601, !1324}
!4105 = !{!4106, !4107, !4108, !4109, !4110}
!4106 = !DILocalVariable(name: "copied_loops", arg: 1, scope: !4102, file: !3, line: 890, type: !1994)
!4107 = !DILocalVariable(name: "n", arg: 2, scope: !4102, file: !3, line: 890, type: !601)
!4108 = !DILocalVariable(name: "target", arg: 3, scope: !4102, file: !3, line: 890, type: !1324)
!4109 = !DILocalVariable(name: "aloop", scope: !4102, file: !3, line: 892, type: !1324)
!4110 = !DILocalVariable(name: "i", scope: !4102, file: !3, line: 893, type: !601)
!4111 = !DILocation(line: 0, scope: !4102)
!4112 = !DILocation(line: 895, column: 8, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 895, column: 3)
!4114 = !DILocation(line: 0, scope: !4113)
!4115 = !DILocation(line: 895, column: 17, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 895, column: 3)
!4117 = !DILocation(line: 895, column: 3, scope: !4113)
!4118 = !DILocation(line: 897, column: 31, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 896, column: 5)
!4120 = !DILocation(line: 897, column: 15, scope: !4119)
!4121 = !DILocation(line: 898, column: 27, scope: !4119)
!4122 = !DILocation(line: 898, column: 7, scope: !4119)
!4123 = !DILocation(line: 895, column: 23, scope: !4116)
!4124 = !DILocation(line: 895, column: 3, scope: !4116)
!4125 = distinct !{!4125, !4117, !4126}
!4126 = !DILocation(line: 899, column: 5, scope: !4113)
!4127 = !DILocation(line: 900, column: 1, scope: !4102)
!4128 = distinct !DISubprogram(name: "VEC_edge_heap_safe_push", scope: !144, file: !144, line: 152, type: !4129, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!2830, !3573, !627}
!4131 = !{!4132, !4133}
!4132 = !DILocalVariable(name: "vec_", arg: 1, scope: !4128, file: !144, line: 152, type: !3573)
!4133 = !DILocalVariable(name: "obj_", arg: 2, scope: !4128, file: !144, line: 152, type: !627)
!4134 = !DILocation(line: 0, scope: !4128)
!4135 = !DILocation(line: 152, column: 1, scope: !4128)
!4136 = distinct !DISubprogram(name: "set_zero_probability", scope: !3, file: !3, line: 929, type: !4137, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !627}
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149}
!4140 = !DILocalVariable(name: "e", arg: 1, scope: !4136, file: !3, line: 929, type: !627)
!4141 = !DILocalVariable(name: "bb", scope: !4136, file: !3, line: 931, type: !609)
!4142 = !DILocalVariable(name: "ei", scope: !4136, file: !3, line: 932, type: !2504)
!4143 = !DILocalVariable(name: "ae", scope: !4136, file: !3, line: 933, type: !627)
!4144 = !DILocalVariable(name: "last", scope: !4136, file: !3, line: 933, type: !627)
!4145 = !DILocalVariable(name: "n", scope: !4136, file: !3, line: 934, type: !7)
!4146 = !DILocalVariable(name: "cnt", scope: !4136, file: !3, line: 935, type: !1959)
!4147 = !DILocalVariable(name: "cnt1", scope: !4136, file: !3, line: 935, type: !1959)
!4148 = !DILocalVariable(name: "prob", scope: !4136, file: !3, line: 936, type: !7)
!4149 = !DILocalVariable(name: "prob1", scope: !4136, file: !3, line: 936, type: !7)
!4150 = !DILocation(line: 0, scope: !4136)
!4151 = !DILocation(line: 931, column: 23, scope: !4136)
!4152 = !DILocation(line: 932, column: 3, scope: !4136)
!4153 = !DILocation(line: 933, column: 3, scope: !4136)
!4154 = !DILocation(line: 934, column: 16, scope: !4136)
!4155 = !DILocation(line: 935, column: 22, scope: !4136)
!4156 = !DILocation(line: 936, column: 22, scope: !4136)
!4157 = !DILocation(line: 938, column: 3, scope: !4136)
!4158 = !DILocation(line: 939, column: 19, scope: !4136)
!4159 = !DILocation(line: 939, column: 16, scope: !4136)
!4160 = !DILocation(line: 939, column: 14, scope: !4136)
!4161 = !DILocation(line: 940, column: 16, scope: !4136)
!4162 = !DILocation(line: 942, column: 3, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 942, column: 3)
!4164 = !DILocation(line: 0, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 942, column: 3)
!4166 = !DILocation(line: 933, column: 12, scope: !4136)
!4167 = !DILocation(line: 942, column: 3, scope: !4165)
!4168 = !DILocation(line: 944, column: 11, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 944, column: 11)
!4170 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 943, column: 5)
!4171 = !DILocation(line: 944, column: 14, scope: !4169)
!4172 = !DILocation(line: 944, column: 11, scope: !4170)
!4173 = !DILocation(line: 947, column: 11, scope: !4170)
!4174 = !DILocation(line: 947, column: 23, scope: !4170)
!4175 = !DILocation(line: 948, column: 11, scope: !4170)
!4176 = !DILocation(line: 948, column: 17, scope: !4170)
!4177 = !DILocation(line: 950, column: 5, scope: !4170)
!4178 = distinct !{!4178, !4162, !4179}
!4179 = !DILocation(line: 950, column: 5, scope: !4163)
!4180 = !DILocation(line: 953, column: 29, scope: !4136)
!4181 = !DILocation(line: 953, column: 9, scope: !4136)
!4182 = !DILocation(line: 953, column: 21, scope: !4136)
!4183 = !DILocation(line: 954, column: 22, scope: !4136)
!4184 = !DILocation(line: 954, column: 9, scope: !4136)
!4185 = !DILocation(line: 954, column: 15, scope: !4136)
!4186 = !DILocation(line: 956, column: 18, scope: !4136)
!4187 = !DILocation(line: 957, column: 12, scope: !4136)
!4188 = !DILocation(line: 958, column: 1, scope: !4136)
!4189 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !895, file: !895, line: 224, type: !4190, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4197)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !4192, !4193, !7, !4196}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !610, line: 48, baseType: !4194)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DILocalVariable(name: "bi", arg: 1, scope: !4189, file: !895, line: 224, type: !4192)
!4199 = !DILocalVariable(name: "map", arg: 2, scope: !4189, file: !895, line: 224, type: !4193)
!4200 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4189, file: !895, line: 225, type: !7)
!4201 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4189, file: !895, line: 225, type: !4196)
!4202 = !DILocation(line: 0, scope: !4189)
!4203 = !DILocation(line: 227, column: 19, scope: !4189)
!4204 = !DILocation(line: 227, column: 12, scope: !4189)
!4205 = !DILocation(line: 228, column: 7, scope: !4189)
!4206 = !DILocation(line: 228, column: 12, scope: !4189)
!4207 = !DILocation(line: 0, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !895, line: 233, column: 11)
!4209 = distinct !DILexicalBlock(scope: !4189, file: !895, line: 232, column: 5)
!4210 = !DILocation(line: 231, column: 3, scope: !4189)
!4211 = !DILocation(line: 233, column: 12, scope: !4208)
!4212 = !DILocation(line: 233, column: 11, scope: !4209)
!4213 = !DILocation(line: 235, column: 13, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4208, file: !895, line: 234, column: 2)
!4215 = !DILocation(line: 236, column: 4, scope: !4214)
!4216 = !DILocation(line: 239, column: 11, scope: !4209)
!4217 = distinct !{!4217, !4210, !4218}
!4218 = !DILocation(line: 242, column: 5, scope: !4189)
!4219 = !DILocation(line: 245, column: 11, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4189, file: !895, line: 245, column: 7)
!4221 = !DILocation(line: 245, column: 17, scope: !4220)
!4222 = !DILocation(line: 245, column: 22, scope: !4220)
!4223 = !DILocation(line: 245, column: 7, scope: !4189)
!4224 = !DILocation(line: 246, column: 27, scope: !4220)
!4225 = !DILocation(line: 246, column: 32, scope: !4220)
!4226 = !DILocation(line: 246, column: 5, scope: !4220)
!4227 = !DILocation(line: 249, column: 7, scope: !4189)
!4228 = !DILocation(line: 249, column: 15, scope: !4189)
!4229 = !DILocation(line: 250, column: 14, scope: !4189)
!4230 = !DILocation(line: 251, column: 7, scope: !4189)
!4231 = !DILocation(line: 251, column: 12, scope: !4189)
!4232 = !DILocation(line: 257, column: 16, scope: !4189)
!4233 = !DILocation(line: 257, column: 13, scope: !4189)
!4234 = !DILocation(line: 259, column: 11, scope: !4189)
!4235 = !DILocation(line: 260, column: 1, scope: !4189)
!4236 = distinct !DISubprogram(name: "bmp_iter_set", scope: !895, file: !895, line: 393, type: !4237, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!600, !4192, !4196}
!4239 = !{!4240, !4241, !4242}
!4240 = !DILocalVariable(name: "bi", arg: 1, scope: !4236, file: !895, line: 393, type: !4192)
!4241 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4236, file: !895, line: 393, type: !4196)
!4242 = !DILabel(scope: !4243, name: "next_bit", file: !895, line: 398)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !895, line: 397, column: 5)
!4244 = distinct !DILexicalBlock(scope: !4236, file: !895, line: 396, column: 7)
!4245 = !DILocation(line: 0, scope: !4236)
!4246 = !DILocation(line: 396, column: 11, scope: !4244)
!4247 = !DILocation(line: 396, column: 7, scope: !4244)
!4248 = !DILocation(line: 396, column: 7, scope: !4236)
!4249 = !DILocation(line: 419, column: 15, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !895, line: 418, column: 2)
!4251 = distinct !DILexicalBlock(scope: !4236, file: !895, line: 415, column: 5)
!4252 = !DILocation(line: 399, column: 7, scope: !4243)
!4253 = !DILocation(line: 398, column: 5, scope: !4243)
!4254 = !DILocation(line: 399, column: 20, scope: !4243)
!4255 = !DILocation(line: 399, column: 25, scope: !4243)
!4256 = !DILocation(line: 399, column: 14, scope: !4243)
!4257 = !DILocation(line: 401, column: 13, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4243, file: !895, line: 400, column: 2)
!4259 = !DILocation(line: 402, column: 12, scope: !4258)
!4260 = distinct !{!4260, !4252, !4261}
!4261 = !DILocation(line: 403, column: 2, scope: !4243)
!4262 = !DILocation(line: 410, column: 15, scope: !4236)
!4263 = !DILocation(line: 410, column: 42, scope: !4236)
!4264 = !DILocation(line: 411, column: 26, scope: !4236)
!4265 = !DILocation(line: 410, column: 11, scope: !4236)
!4266 = !DILocation(line: 412, column: 7, scope: !4236)
!4267 = !DILocation(line: 412, column: 14, scope: !4236)
!4268 = !DILocation(line: 0, scope: !4251)
!4269 = !DILocation(line: 414, column: 3, scope: !4236)
!4270 = !DILocation(line: 417, column: 7, scope: !4251)
!4271 = !DILocation(line: 417, column: 18, scope: !4251)
!4272 = !DILocation(line: 417, column: 26, scope: !4251)
!4273 = !DILocation(line: 419, column: 13, scope: !4250)
!4274 = !DILocation(line: 420, column: 8, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4250, file: !895, line: 420, column: 8)
!4276 = !DILocation(line: 420, column: 8, scope: !4250)
!4277 = !DILocation(line: 422, column: 12, scope: !4250)
!4278 = !DILocation(line: 423, column: 15, scope: !4250)
!4279 = distinct !{!4279, !4270, !4280}
!4280 = !DILocation(line: 424, column: 2, scope: !4251)
!4281 = !DILocation(line: 427, column: 28, scope: !4251)
!4282 = !DILocation(line: 427, column: 16, scope: !4251)
!4283 = !DILocation(line: 428, column: 12, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4251, file: !895, line: 428, column: 11)
!4285 = !DILocation(line: 428, column: 11, scope: !4251)
!4286 = !DILocation(line: 430, column: 27, scope: !4251)
!4287 = !DILocation(line: 430, column: 32, scope: !4251)
!4288 = !DILocation(line: 430, column: 15, scope: !4251)
!4289 = !DILocation(line: 431, column: 19, scope: !4251)
!4290 = distinct !{!4290, !4269, !4291}
!4291 = !DILocation(line: 432, column: 5, scope: !4236)
!4292 = !DILocation(line: 433, column: 1, scope: !4236)
!4293 = distinct !DISubprogram(name: "bmp_iter_next", scope: !895, file: !895, line: 382, type: !4294, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !4192, !4196}
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "bi", arg: 1, scope: !4293, file: !895, line: 382, type: !4192)
!4298 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4293, file: !895, line: 382, type: !4196)
!4299 = !DILocation(line: 0, scope: !4293)
!4300 = !DILocation(line: 384, column: 7, scope: !4293)
!4301 = !DILocation(line: 384, column: 12, scope: !4293)
!4302 = !DILocation(line: 385, column: 11, scope: !4293)
!4303 = !DILocation(line: 386, column: 1, scope: !4293)
!4304 = distinct !DISubprogram(name: "VEC_basic_block_base_iterate", scope: !144, file: !144, line: 281, type: !4305, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4309)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!601, !4307, !7, !608}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!4309 = !{!4310, !4311, !4312}
!4310 = !DILocalVariable(name: "vec_", arg: 1, scope: !4304, file: !144, line: 281, type: !4307)
!4311 = !DILocalVariable(name: "ix_", arg: 2, scope: !4304, file: !144, line: 281, type: !7)
!4312 = !DILocalVariable(name: "ptr", arg: 3, scope: !4304, file: !144, line: 281, type: !608)
!4313 = !DILocation(line: 0, scope: !4304)
!4314 = !DILocation(line: 281, column: 1, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4304, file: !144, line: 281, column: 1)
!4316 = !DILocation(line: 281, column: 1, scope: !4304)
!4317 = !DILocation(line: 281, column: 1, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4315, file: !144, line: 281, column: 1)
!4319 = !DILocation(line: 281, column: 1, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4315, file: !144, line: 281, column: 1)
!4321 = !DILocation(line: 0, scope: !4315)
!4322 = distinct !DISubprogram(name: "mfb_keep_just", scope: !3, file: !3, line: 1298, type: !2475, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4323)
!4323 = !{!4324}
!4324 = !DILocalVariable(name: "e", arg: 1, scope: !4322, file: !3, line: 1298, type: !627)
!4325 = !DILocation(line: 0, scope: !4322)
!4326 = !DILocation(line: 1300, column: 15, scope: !4322)
!4327 = !DILocation(line: 1300, column: 12, scope: !4322)
!4328 = !DILocation(line: 1300, column: 10, scope: !4322)
!4329 = !DILocation(line: 1300, column: 3, scope: !4322)
!4330 = distinct !DISubprogram(name: "create_preheader", scope: !3, file: !3, line: 1326, type: !4331, scopeLine: 1327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!609, !1324, !601}
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345}
!4334 = !DILocalVariable(name: "loop", arg: 1, scope: !4330, file: !3, line: 1326, type: !1324)
!4335 = !DILocalVariable(name: "flags", arg: 2, scope: !4330, file: !3, line: 1326, type: !601)
!4336 = !DILocalVariable(name: "e", scope: !4330, file: !3, line: 1328, type: !627)
!4337 = !DILocalVariable(name: "fallthru", scope: !4330, file: !3, line: 1328, type: !627)
!4338 = !DILocalVariable(name: "dummy", scope: !4330, file: !3, line: 1329, type: !609)
!4339 = !DILocalVariable(name: "nentry", scope: !4330, file: !3, line: 1330, type: !601)
!4340 = !DILocalVariable(name: "irred", scope: !4330, file: !3, line: 1331, type: !600)
!4341 = !DILocalVariable(name: "latch_edge_was_fallthru", scope: !4330, file: !3, line: 1332, type: !600)
!4342 = !DILocalVariable(name: "one_succ_pred", scope: !4330, file: !3, line: 1333, type: !627)
!4343 = !DILocalVariable(name: "single_entry", scope: !4330, file: !3, line: 1333, type: !627)
!4344 = !DILocalVariable(name: "ei", scope: !4330, file: !3, line: 1334, type: !2504)
!4345 = !DILocalVariable(name: "need_forwarder_block", scope: !4346, file: !3, line: 1349, type: !600)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1348, column: 5)
!4347 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1347, column: 7)
!4348 = !DILocation(line: 0, scope: !4330)
!4349 = !DILocation(line: 1328, column: 3, scope: !4330)
!4350 = !DILocation(line: 1334, column: 3, scope: !4330)
!4351 = !DILocation(line: 1336, column: 3, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1336, column: 3)
!4353 = !DILocation(line: 0, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 1336, column: 3)
!4355 = !DILocation(line: 0, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1338, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 1337, column: 5)
!4358 = !DILocation(line: 1331, column: 8, scope: !4330)
!4359 = !DILocation(line: 1330, column: 7, scope: !4330)
!4360 = !DILocation(line: 1333, column: 8, scope: !4330)
!4361 = !DILocation(line: 1333, column: 30, scope: !4330)
!4362 = !DILocation(line: 1336, column: 3, scope: !4354)
!4363 = !DILocation(line: 1338, column: 11, scope: !4356)
!4364 = !DILocation(line: 1338, column: 14, scope: !4356)
!4365 = !DILocation(line: 1338, column: 27, scope: !4356)
!4366 = !DILocation(line: 1338, column: 18, scope: !4356)
!4367 = !DILocation(line: 1338, column: 11, scope: !4357)
!4368 = !DILocation(line: 1340, column: 20, scope: !4357)
!4369 = !DILocation(line: 1340, column: 51, scope: !4357)
!4370 = !DILocation(line: 1340, column: 13, scope: !4357)
!4371 = !DILocation(line: 1341, column: 13, scope: !4357)
!4372 = !DILocation(line: 1343, column: 11, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1343, column: 11)
!4374 = !DILocation(line: 1344, column: 18, scope: !4373)
!4375 = !DILocation(line: 1343, column: 11, scope: !4357)
!4376 = !DILocation(line: 1345, column: 5, scope: !4357)
!4377 = distinct !{!4377, !4351, !4378}
!4378 = !DILocation(line: 1345, column: 5, scope: !4352)
!4379 = !DILocation(line: 1346, column: 3, scope: !4330)
!4380 = !DILocation(line: 1347, column: 7, scope: !4330)
!4381 = !DILocation(line: 0, scope: !4346)
!4382 = !DILocation(line: 1353, column: 25, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 1353, column: 11)
!4384 = !DILocation(line: 1353, column: 32, scope: !4383)
!4385 = !DILocation(line: 1353, column: 29, scope: !4383)
!4386 = !DILocation(line: 1353, column: 11, scope: !4346)
!4387 = !DILocation(line: 1359, column: 22, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 1359, column: 15)
!4389 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 1356, column: 9)
!4390 = !DILocation(line: 1360, column: 15, scope: !4388)
!4391 = !DILocation(line: 1360, column: 19, scope: !4388)
!4392 = !DILocation(line: 1359, column: 15, scope: !4389)
!4393 = !DILocation(line: 1364, column: 27, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1364, column: 20)
!4395 = !DILocation(line: 1365, column: 20, scope: !4394)
!4396 = !DILocation(line: 1365, column: 24, scope: !4394)
!4397 = !DILocation(line: 1366, column: 24, scope: !4394)
!4398 = !DILocation(line: 1366, column: 27, scope: !4394)
!4399 = !DILocation(line: 1364, column: 20, scope: !4388)
!4400 = !DILocation(line: 1367, column: 13, scope: !4394)
!4401 = !DILocation(line: 1373, column: 17, scope: !4330)
!4402 = !DILocation(line: 1373, column: 15, scope: !4330)
!4403 = !DILocation(line: 1374, column: 43, scope: !4330)
!4404 = !DILocation(line: 1375, column: 42, scope: !4330)
!4405 = !DILocation(line: 1375, column: 14, scope: !4330)
!4406 = !DILocation(line: 1376, column: 21, scope: !4330)
!4407 = !DILocation(line: 1377, column: 28, scope: !4330)
!4408 = !DILocation(line: 1377, column: 16, scope: !4330)
!4409 = !DILocation(line: 1387, column: 7, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1387, column: 7)
!4411 = !DILocation(line: 1387, column: 7, scope: !4330)
!4412 = !DILocation(line: 1389, column: 11, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 1389, column: 11)
!4414 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 1388, column: 5)
!4415 = !DILocation(line: 1389, column: 11, scope: !4414)
!4416 = !DILocation(line: 1390, column: 2, scope: !4413)
!4417 = !DILocation(line: 1392, column: 6, scope: !4413)
!4418 = !DILocation(line: 0, scope: !4413)
!4419 = !DILocation(line: 1394, column: 35, scope: !4414)
!4420 = !DILocation(line: 1394, column: 7, scope: !4414)
!4421 = !DILocation(line: 1395, column: 5, scope: !4414)
!4422 = !DILocation(line: 1397, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1397, column: 7)
!4424 = !DILocation(line: 1397, column: 7, scope: !4330)
!4425 = !DILocation(line: 1399, column: 14, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 1398, column: 5)
!4427 = !DILocation(line: 1399, column: 20, scope: !4426)
!4428 = !DILocation(line: 1400, column: 7, scope: !4426)
!4429 = !DILocation(line: 1400, column: 33, scope: !4426)
!4430 = !DILocation(line: 1400, column: 39, scope: !4426)
!4431 = !DILocation(line: 1401, column: 5, scope: !4426)
!4432 = !DILocation(line: 1403, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1403, column: 7)
!4434 = !DILocation(line: 1403, column: 7, scope: !4330)
!4435 = !DILocation(line: 1405, column: 13, scope: !4433)
!4436 = !DILocation(line: 1404, column: 5, scope: !4433)
!4437 = !DILocation(line: 1407, column: 13, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1407, column: 7)
!4439 = !DILocation(line: 1407, column: 7, scope: !4330)
!4440 = !DILocation(line: 1408, column: 5, scope: !4438)
!4441 = !DILocation(line: 1412, column: 1, scope: !4330)
!4442 = distinct !DISubprogram(name: "single_succ_p", scope: !144, file: !144, line: 626, type: !2679, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4443)
!4443 = !{!4444}
!4444 = !DILocalVariable(name: "bb", arg: 1, scope: !4442, file: !144, line: 626, type: !1995)
!4445 = !DILocation(line: 0, scope: !4442)
!4446 = !DILocation(line: 628, column: 10, scope: !4442)
!4447 = !DILocation(line: 628, column: 33, scope: !4442)
!4448 = !DILocation(line: 628, column: 3, scope: !4442)
!4449 = distinct !DISubprogram(name: "has_preds_from_loop", scope: !3, file: !3, line: 1306, type: !4450, scopeLine: 1307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!600, !609, !1324}
!4452 = !{!4453, !4454, !4455, !4456}
!4453 = !DILocalVariable(name: "block", arg: 1, scope: !4449, file: !3, line: 1306, type: !609)
!4454 = !DILocalVariable(name: "loop", arg: 2, scope: !4449, file: !3, line: 1306, type: !1324)
!4455 = !DILocalVariable(name: "e", scope: !4449, file: !3, line: 1308, type: !627)
!4456 = !DILocalVariable(name: "ei", scope: !4449, file: !3, line: 1309, type: !2504)
!4457 = !DILocation(line: 0, scope: !4449)
!4458 = !DILocation(line: 1308, column: 3, scope: !4449)
!4459 = !DILocation(line: 1309, column: 3, scope: !4449)
!4460 = !DILocation(line: 1311, column: 3, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 1311, column: 3)
!4462 = !DILocation(line: 0, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 1311, column: 3)
!4464 = !DILocation(line: 1311, column: 3, scope: !4463)
!4465 = !DILocation(line: 1312, column: 9, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 1312, column: 9)
!4467 = !DILocation(line: 1312, column: 12, scope: !4466)
!4468 = !DILocation(line: 1312, column: 17, scope: !4466)
!4469 = !DILocation(line: 1312, column: 29, scope: !4466)
!4470 = !DILocation(line: 1312, column: 9, scope: !4463)
!4471 = distinct !{!4471, !4460, !4472}
!4472 = !DILocation(line: 1313, column: 14, scope: !4461)
!4473 = !DILocation(line: 1315, column: 1, scope: !4449)
!4474 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !144, file: !144, line: 150, type: !4475, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!627, !4477, !7}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "vec_", arg: 1, scope: !4474, file: !144, line: 150, type: !4477)
!4481 = !DILocalVariable(name: "ix_", arg: 2, scope: !4474, file: !144, line: 150, type: !7)
!4482 = !DILocation(line: 0, scope: !4474)
!4483 = !DILocation(line: 150, column: 1, scope: !4474)
!4484 = distinct !DISubprogram(name: "create_preheaders", scope: !3, file: !3, line: 1417, type: !4485, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !601}
!4487 = !{!4488, !4489, !4495}
!4488 = !DILocalVariable(name: "flags", arg: 1, scope: !4484, file: !3, line: 1417, type: !601)
!4489 = !DILocalVariable(name: "li", scope: !4484, file: !3, line: 1419, type: !4490)
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !6, line: 515, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 508, size: 128, elements: !4492)
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !4491, file: !6, line: 511, baseType: !2010, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4491, file: !6, line: 514, baseType: !7, size: 32, offset: 64)
!4495 = !DILocalVariable(name: "loop", scope: !4484, file: !3, line: 1420, type: !1324)
!4496 = !DILocation(line: 0, scope: !4484)
!4497 = !DILocation(line: 1419, column: 3, scope: !4484)
!4498 = !DILocation(line: 1420, column: 3, scope: !4484)
!4499 = !DILocation(line: 1422, column: 8, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1422, column: 7)
!4501 = !DILocation(line: 1422, column: 7, scope: !4484)
!4502 = !DILocation(line: 1425, column: 3, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1425, column: 3)
!4504 = !DILocation(line: 1425, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 1425, column: 3)
!4506 = !DILocation(line: 1426, column: 5, scope: !4505)
!4507 = distinct !{!4507, !4502, !4508}
!4508 = !DILocation(line: 1426, column: 34, scope: !4503)
!4509 = !DILocation(line: 1427, column: 3, scope: !4484)
!4510 = !DILocation(line: 1428, column: 1, scope: !4484)
!4511 = distinct !DISubprogram(name: "fel_init", scope: !6, file: !6, line: 535, type: !4512, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4516)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4514, !4515, !7}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522}
!4517 = !DILocalVariable(name: "li", arg: 1, scope: !4511, file: !6, line: 535, type: !4514)
!4518 = !DILocalVariable(name: "loop", arg: 2, scope: !4511, file: !6, line: 535, type: !4515)
!4519 = !DILocalVariable(name: "flags", arg: 3, scope: !4511, file: !6, line: 535, type: !7)
!4520 = !DILocalVariable(name: "aloop", scope: !4511, file: !6, line: 537, type: !1324)
!4521 = !DILocalVariable(name: "i", scope: !4511, file: !6, line: 538, type: !7)
!4522 = !DILocalVariable(name: "mn", scope: !4511, file: !6, line: 539, type: !601)
!4523 = !DILocation(line: 0, scope: !4511)
!4524 = !DILocation(line: 537, column: 3, scope: !4511)
!4525 = !DILocation(line: 541, column: 7, scope: !4511)
!4526 = !DILocation(line: 541, column: 11, scope: !4511)
!4527 = !DILocation(line: 542, column: 8, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4511, file: !6, line: 542, column: 7)
!4529 = !DILocation(line: 542, column: 7, scope: !4511)
!4530 = !DILocation(line: 544, column: 11, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4528, file: !6, line: 543, column: 5)
!4532 = !DILocation(line: 544, column: 20, scope: !4531)
!4533 = !DILocation(line: 545, column: 13, scope: !4531)
!4534 = !DILocation(line: 546, column: 7, scope: !4531)
!4535 = !DILocation(line: 549, column: 18, scope: !4511)
!4536 = !DILocation(line: 549, column: 7, scope: !4511)
!4537 = !DILocation(line: 549, column: 16, scope: !4511)
!4538 = !DILocation(line: 550, column: 15, scope: !4511)
!4539 = !DILocation(line: 550, column: 8, scope: !4511)
!4540 = !DILocation(line: 552, column: 13, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4511, file: !6, line: 552, column: 7)
!4542 = !DILocation(line: 552, column: 7, scope: !4511)
!4543 = !DILocation(line: 554, column: 7, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !6, line: 554, column: 7)
!4545 = distinct !DILexicalBlock(scope: !4541, file: !6, line: 553, column: 5)
!4546 = !DILocation(line: 0, scope: !4544)
!4547 = !DILocation(line: 554, column: 19, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4544, file: !6, line: 554, column: 7)
!4549 = !DILocation(line: 555, column: 6, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4548, file: !6, line: 555, column: 6)
!4551 = !DILocation(line: 555, column: 12, scope: !4550)
!4552 = !DILocation(line: 556, column: 6, scope: !4550)
!4553 = !DILocation(line: 556, column: 16, scope: !4550)
!4554 = !DILocation(line: 556, column: 22, scope: !4550)
!4555 = !DILocation(line: 557, column: 6, scope: !4550)
!4556 = !DILocation(line: 557, column: 16, scope: !4550)
!4557 = !DILocation(line: 557, column: 20, scope: !4550)
!4558 = !DILocation(line: 555, column: 6, scope: !4548)
!4559 = !DILocation(line: 558, column: 4, scope: !4550)
!4560 = !DILocation(line: 554, column: 75, scope: !4548)
!4561 = !DILocation(line: 554, column: 7, scope: !4548)
!4562 = distinct !{!4562, !4543, !4563}
!4563 = !DILocation(line: 558, column: 4, scope: !4544)
!4564 = !DILocation(line: 560, column: 18, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4541, file: !6, line: 560, column: 12)
!4566 = !DILocation(line: 0, scope: !4565)
!4567 = !DILocation(line: 560, column: 12, scope: !4541)
!4568 = !DILocation(line: 563, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !6, line: 563, column: 7)
!4570 = distinct !DILexicalBlock(scope: !4565, file: !6, line: 561, column: 5)
!4571 = !DILocation(line: 590, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4565, file: !6, line: 587, column: 5)
!4573 = !DILocation(line: 564, column: 5, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4569, file: !6, line: 563, column: 7)
!4575 = !DILocation(line: 564, column: 12, scope: !4574)
!4576 = !DILocation(line: 564, column: 18, scope: !4574)
!4577 = !DILocation(line: 568, column: 7, scope: !4570)
!4578 = !DILocation(line: 565, column: 20, scope: !4574)
!4579 = !DILocation(line: 565, column: 11, scope: !4574)
!4580 = !DILocation(line: 563, column: 7, scope: !4574)
!4581 = distinct !{!4581, !4568, !4582}
!4582 = !DILocation(line: 566, column: 2, scope: !4569)
!4583 = !DILocation(line: 570, column: 8, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !6, line: 570, column: 8)
!4585 = distinct !DILexicalBlock(scope: !4570, file: !6, line: 569, column: 2)
!4586 = !DILocation(line: 570, column: 15, scope: !4584)
!4587 = !DILocation(line: 570, column: 19, scope: !4584)
!4588 = !DILocation(line: 570, column: 8, scope: !4585)
!4589 = !DILocation(line: 571, column: 6, scope: !4584)
!4590 = !DILocation(line: 573, column: 15, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4585, file: !6, line: 573, column: 8)
!4592 = !DILocation(line: 573, column: 8, scope: !4591)
!4593 = !DILocation(line: 573, column: 8, scope: !4585)
!4594 = !DILocation(line: 575, column: 19, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !6, line: 575, column: 8)
!4596 = distinct !DILexicalBlock(scope: !4591, file: !6, line: 574, column: 6)
!4597 = !DILocation(line: 575, column: 13, scope: !4595)
!4598 = !DILocation(line: 576, column: 6, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4595, file: !6, line: 575, column: 8)
!4600 = !DILocation(line: 576, column: 13, scope: !4599)
!4601 = !DILocation(line: 576, column: 19, scope: !4599)
!4602 = !DILocation(line: 575, column: 8, scope: !4595)
!4603 = !DILocation(line: 577, column: 21, scope: !4599)
!4604 = !DILocation(line: 577, column: 12, scope: !4599)
!4605 = !DILocation(line: 575, column: 8, scope: !4599)
!4606 = distinct !{!4606, !4602, !4607}
!4607 = !DILocation(line: 578, column: 3, scope: !4595)
!4608 = !DILocation(line: 580, column: 14, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4591, file: !6, line: 580, column: 13)
!4610 = !DILocation(line: 580, column: 13, scope: !4591)
!4611 = !DILocation(line: 583, column: 14, scope: !4609)
!4612 = !DILocation(line: 583, column: 12, scope: !4609)
!4613 = distinct !{!4613, !4577, !4614}
!4614 = !DILocation(line: 584, column: 2, scope: !4570)
!4615 = !DILocation(line: 592, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !6, line: 592, column: 8)
!4617 = distinct !DILexicalBlock(scope: !4572, file: !6, line: 591, column: 2)
!4618 = !DILocation(line: 592, column: 15, scope: !4616)
!4619 = !DILocation(line: 592, column: 19, scope: !4616)
!4620 = !DILocation(line: 592, column: 8, scope: !4617)
!4621 = !DILocation(line: 593, column: 6, scope: !4616)
!4622 = !DILocation(line: 595, column: 15, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4617, file: !6, line: 595, column: 8)
!4624 = !DILocation(line: 595, column: 21, scope: !4623)
!4625 = !DILocation(line: 595, column: 8, scope: !4617)
!4626 = !DILocation(line: 599, column: 8, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4623, file: !6, line: 598, column: 6)
!4628 = !DILocation(line: 596, column: 21, scope: !4623)
!4629 = !DILocation(line: 596, column: 12, scope: !4623)
!4630 = !DILocation(line: 596, column: 6, scope: !4623)
!4631 = !DILocation(line: 599, column: 15, scope: !4627)
!4632 = !DILocation(line: 599, column: 21, scope: !4627)
!4633 = !DILocation(line: 599, column: 29, scope: !4627)
!4634 = !DILocation(line: 599, column: 39, scope: !4627)
!4635 = !DILocation(line: 599, column: 44, scope: !4627)
!4636 = !DILocation(line: 0, scope: !4627)
!4637 = !DILocation(line: 600, column: 11, scope: !4627)
!4638 = !DILocation(line: 600, column: 9, scope: !4627)
!4639 = distinct !{!4639, !4626, !4640}
!4640 = !DILocation(line: 600, column: 28, scope: !4627)
!4641 = !DILocation(line: 601, column: 18, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4627, file: !6, line: 601, column: 12)
!4643 = !DILocation(line: 601, column: 12, scope: !4627)
!4644 = !DILocation(line: 603, column: 23, scope: !4627)
!4645 = !DILocation(line: 603, column: 14, scope: !4627)
!4646 = distinct !{!4646, !4571, !4647}
!4647 = !DILocation(line: 605, column: 2, scope: !4572)
!4648 = !DILocation(line: 608, column: 3, scope: !4511)
!4649 = !DILocation(line: 609, column: 1, scope: !4511)
!4650 = distinct !DISubprogram(name: "fel_next", scope: !6, file: !6, line: 518, type: !4651, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{null, !4514, !4515}
!4653 = !{!4654, !4655, !4656}
!4654 = !DILocalVariable(name: "li", arg: 1, scope: !4650, file: !6, line: 518, type: !4514)
!4655 = !DILocalVariable(name: "loop", arg: 2, scope: !4650, file: !6, line: 518, type: !4515)
!4656 = !DILocalVariable(name: "anum", scope: !4650, file: !6, line: 520, type: !601)
!4657 = !DILocation(line: 0, scope: !4650)
!4658 = !DILocation(line: 520, column: 3, scope: !4650)
!4659 = !DILocation(line: 522, column: 3, scope: !4650)
!4660 = !DILocation(line: 522, column: 10, scope: !4650)
!4661 = !DILocation(line: 524, column: 14, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4650, file: !6, line: 523, column: 5)
!4663 = !DILocation(line: 525, column: 25, scope: !4662)
!4664 = !DILocation(line: 525, column: 15, scope: !4662)
!4665 = !DILocation(line: 525, column: 13, scope: !4662)
!4666 = !DILocation(line: 526, column: 11, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4662, file: !6, line: 526, column: 11)
!4668 = !DILocation(line: 526, column: 11, scope: !4662)
!4669 = distinct !{!4669, !4659, !4670}
!4670 = !DILocation(line: 528, column: 5, scope: !4650)
!4671 = !DILocation(line: 530, column: 3, scope: !4650)
!4672 = !DILocation(line: 531, column: 9, scope: !4650)
!4673 = !DILocation(line: 532, column: 1, scope: !4650)
!4674 = distinct !DISubprogram(name: "loops_state_set", scope: !6, file: !6, line: 479, type: !4675, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4677)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !7}
!4677 = !{!4678}
!4678 = !DILocalVariable(name: "flags", arg: 1, scope: !4674, file: !6, line: 479, type: !7)
!4679 = !DILocation(line: 0, scope: !4674)
!4680 = !DILocation(line: 481, column: 3, scope: !4674)
!4681 = !DILocation(line: 481, column: 18, scope: !4674)
!4682 = !DILocation(line: 481, column: 24, scope: !4674)
!4683 = !DILocation(line: 482, column: 1, scope: !4674)
!4684 = distinct !DISubprogram(name: "force_single_succ_latches", scope: !3, file: !3, line: 1433, type: !4685, scopeLine: 1434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4687)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null}
!4687 = !{!4688, !4689, !4690}
!4688 = !DILocalVariable(name: "li", scope: !4684, file: !3, line: 1435, type: !4490)
!4689 = !DILocalVariable(name: "loop", scope: !4684, file: !3, line: 1436, type: !1324)
!4690 = !DILocalVariable(name: "e", scope: !4684, file: !3, line: 1437, type: !627)
!4691 = !DILocation(line: 1435, column: 3, scope: !4684)
!4692 = !DILocation(line: 1436, column: 3, scope: !4684)
!4693 = !DILocation(line: 0, scope: !4684)
!4694 = !DILocation(line: 1439, column: 3, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1439, column: 3)
!4696 = !DILocation(line: 1439, column: 3, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 1439, column: 3)
!4698 = !DILocation(line: 1441, column: 17, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 1441, column: 11)
!4700 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 1440, column: 5)
!4701 = !DILocation(line: 1441, column: 32, scope: !4699)
!4702 = !DILocation(line: 1441, column: 23, scope: !4699)
!4703 = !DILocation(line: 1441, column: 39, scope: !4699)
!4704 = !DILocation(line: 1441, column: 42, scope: !4699)
!4705 = !DILocation(line: 1441, column: 11, scope: !4700)
!4706 = !DILocation(line: 1444, column: 22, scope: !4700)
!4707 = !DILocation(line: 0, scope: !4700)
!4708 = !DILocation(line: 1444, column: 28, scope: !4700)
!4709 = !DILocation(line: 1444, column: 41, scope: !4700)
!4710 = !DILocation(line: 1444, column: 11, scope: !4700)
!4711 = !DILocation(line: 1446, column: 7, scope: !4700)
!4712 = !DILocation(line: 1447, column: 5, scope: !4700)
!4713 = distinct !{!4713, !4694, !4714}
!4714 = !DILocation(line: 1447, column: 5, scope: !4695)
!4715 = !DILocation(line: 1448, column: 3, scope: !4684)
!4716 = !DILocation(line: 1449, column: 1, scope: !4684)
!4717 = distinct !DISubprogram(name: "loop_version", scope: !3, file: !3, line: 1519, type: !4718, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!1324, !1324, !605, !608, !7, !7, !7, !600}
!4720 = !{!4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4740, !4741}
!4721 = !DILocalVariable(name: "loop", arg: 1, scope: !4717, file: !3, line: 1519, type: !1324)
!4722 = !DILocalVariable(name: "cond_expr", arg: 2, scope: !4717, file: !3, line: 1520, type: !605)
!4723 = !DILocalVariable(name: "condition_bb", arg: 3, scope: !4717, file: !3, line: 1520, type: !608)
!4724 = !DILocalVariable(name: "then_prob", arg: 4, scope: !4717, file: !3, line: 1521, type: !7)
!4725 = !DILocalVariable(name: "then_scale", arg: 5, scope: !4717, file: !3, line: 1521, type: !7)
!4726 = !DILocalVariable(name: "else_scale", arg: 6, scope: !4717, file: !3, line: 1521, type: !7)
!4727 = !DILocalVariable(name: "place_after", arg: 7, scope: !4717, file: !3, line: 1522, type: !600)
!4728 = !DILocalVariable(name: "first_head", scope: !4717, file: !3, line: 1524, type: !609)
!4729 = !DILocalVariable(name: "second_head", scope: !4717, file: !3, line: 1524, type: !609)
!4730 = !DILocalVariable(name: "entry", scope: !4717, file: !3, line: 1525, type: !627)
!4731 = !DILocalVariable(name: "latch_edge", scope: !4717, file: !3, line: 1525, type: !627)
!4732 = !DILocalVariable(name: "true_edge", scope: !4717, file: !3, line: 1525, type: !627)
!4733 = !DILocalVariable(name: "false_edge", scope: !4717, file: !3, line: 1525, type: !627)
!4734 = !DILocalVariable(name: "irred_flag", scope: !4717, file: !3, line: 1526, type: !601)
!4735 = !DILocalVariable(name: "nloop", scope: !4717, file: !3, line: 1527, type: !1324)
!4736 = !DILocalVariable(name: "cond_bb", scope: !4717, file: !3, line: 1528, type: !609)
!4737 = !DILocalVariable(name: "bbs", scope: !4738, file: !3, line: 1585, type: !608)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 1584, column: 5)
!4739 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1583, column: 7)
!4740 = !DILocalVariable(name: "after", scope: !4738, file: !3, line: 1585, type: !609)
!4741 = !DILocalVariable(name: "i", scope: !4738, file: !3, line: 1586, type: !7)
!4742 = !DILocation(line: 0, scope: !4717)
!4743 = !DILocation(line: 1525, column: 3, scope: !4717)
!4744 = !DILocation(line: 1531, column: 11, scope: !4717)
!4745 = !DILocation(line: 1532, column: 23, scope: !4717)
!4746 = !DILocation(line: 1532, column: 29, scope: !4717)
!4747 = !DILocation(line: 1533, column: 16, scope: !4717)
!4748 = !DILocation(line: 1536, column: 23, scope: !4717)
!4749 = !DILocation(line: 1539, column: 8, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1539, column: 7)
!4751 = !DILocation(line: 1539, column: 7, scope: !4717)
!4752 = !DILocation(line: 1545, column: 24, scope: !4717)
!4753 = !DILocation(line: 1548, column: 14, scope: !4717)
!4754 = !DILocation(line: 1550, column: 7, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1550, column: 7)
!4756 = !DILocation(line: 1550, column: 7, scope: !4717)
!4757 = !DILocation(line: 1551, column: 19, scope: !4755)
!4758 = !DILocation(line: 1551, column: 5, scope: !4755)
!4759 = !DILocation(line: 1553, column: 8, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1553, column: 7)
!4761 = !DILocation(line: 1553, column: 7, scope: !4717)
!4762 = !DILocation(line: 1555, column: 20, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 1554, column: 5)
!4764 = !DILocation(line: 1556, column: 7, scope: !4763)
!4765 = !DILocation(line: 1559, column: 53, scope: !4717)
!4766 = !DILocation(line: 1559, column: 34, scope: !4717)
!4767 = !DILocation(line: 1559, column: 16, scope: !4717)
!4768 = !DILocation(line: 1561, column: 3, scope: !4717)
!4769 = !DILocation(line: 1563, column: 43, scope: !4717)
!4770 = !DILocation(line: 1563, column: 24, scope: !4717)
!4771 = !DILocation(line: 1563, column: 6, scope: !4717)
!4772 = !DILocation(line: 1564, column: 15, scope: !4717)
!4773 = !DILocation(line: 1564, column: 26, scope: !4717)
!4774 = !DILocation(line: 1562, column: 11, scope: !4717)
!4775 = !DILocation(line: 1569, column: 3, scope: !4717)
!4776 = !DILocation(line: 1572, column: 3, scope: !4717)
!4777 = !DILocation(line: 1573, column: 27, scope: !4717)
!4778 = !DILocation(line: 1573, column: 3, scope: !4717)
!4779 = !DILocation(line: 1575, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1575, column: 7)
!4781 = !DILocation(line: 1575, column: 7, scope: !4717)
!4782 = !DILocation(line: 1577, column: 16, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1576, column: 5)
!4784 = !DILocation(line: 1577, column: 22, scope: !4783)
!4785 = !DILocation(line: 1578, column: 7, scope: !4783)
!4786 = !DILocation(line: 1578, column: 35, scope: !4783)
!4787 = !DILocation(line: 1578, column: 41, scope: !4783)
!4788 = !DILocation(line: 1579, column: 7, scope: !4783)
!4789 = !DILocation(line: 1579, column: 36, scope: !4783)
!4790 = !DILocation(line: 1579, column: 42, scope: !4783)
!4791 = !DILocation(line: 1580, column: 7, scope: !4783)
!4792 = !DILocation(line: 1580, column: 35, scope: !4783)
!4793 = !DILocation(line: 1580, column: 41, scope: !4783)
!4794 = !DILocation(line: 1581, column: 5, scope: !4783)
!4795 = !DILocation(line: 1583, column: 7, scope: !4739)
!4796 = !DILocation(line: 1583, column: 7, scope: !4717)
!4797 = !DILocation(line: 1585, column: 26, scope: !4738)
!4798 = !DILocation(line: 0, scope: !4738)
!4799 = !DILocation(line: 0, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 1590, column: 7)
!4801 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 1590, column: 7)
!4802 = !DILocation(line: 1590, column: 12, scope: !4801)
!4803 = !DILocation(line: 1590, column: 30, scope: !4800)
!4804 = !DILocation(line: 1590, column: 21, scope: !4800)
!4805 = !DILocation(line: 1590, column: 7, scope: !4801)
!4806 = !DILocation(line: 1592, column: 22, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 1591, column: 2)
!4808 = !DILocation(line: 1592, column: 4, scope: !4807)
!4809 = !DILocation(line: 1590, column: 42, scope: !4800)
!4810 = !DILocation(line: 1590, column: 7, scope: !4800)
!4811 = distinct !{!4811, !4805, !4812}
!4812 = !DILocation(line: 1594, column: 2, scope: !4801)
!4813 = !DILocation(line: 1595, column: 13, scope: !4738)
!4814 = !DILocation(line: 1595, column: 7, scope: !4738)
!4815 = !DILocation(line: 1596, column: 5, scope: !4738)
!4816 = !DILocation(line: 1601, column: 15, scope: !4717)
!4817 = !DILocation(line: 1601, column: 3, scope: !4717)
!4818 = !DILocation(line: 1602, column: 15, scope: !4717)
!4819 = !DILocation(line: 1602, column: 3, scope: !4717)
!4820 = !DILocation(line: 1604, column: 3, scope: !4717)
!4821 = !DILocation(line: 1605, column: 1, scope: !4717)
!4822 = distinct !DISubprogram(name: "lv_adjust_loop_entry_edge", scope: !3, file: !3, line: 1468, type: !4823, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!609, !609, !609, !627, !605, !7}
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832}
!4826 = !DILocalVariable(name: "first_head", arg: 1, scope: !4822, file: !3, line: 1468, type: !609)
!4827 = !DILocalVariable(name: "second_head", arg: 2, scope: !4822, file: !3, line: 1468, type: !609)
!4828 = !DILocalVariable(name: "e", arg: 3, scope: !4822, file: !3, line: 1469, type: !627)
!4829 = !DILocalVariable(name: "cond_expr", arg: 4, scope: !4822, file: !3, line: 1469, type: !605)
!4830 = !DILocalVariable(name: "then_prob", arg: 5, scope: !4822, file: !3, line: 1469, type: !7)
!4831 = !DILocalVariable(name: "new_head", scope: !4822, file: !3, line: 1471, type: !609)
!4832 = !DILocalVariable(name: "e1", scope: !4822, file: !3, line: 1472, type: !627)
!4833 = !DILocation(line: 0, scope: !4822)
!4834 = !DILocation(line: 1474, column: 3, scope: !4822)
!4835 = !DILocation(line: 1478, column: 14, scope: !4822)
!4836 = !DILocation(line: 1480, column: 3, scope: !4822)
!4837 = !DILocation(line: 1484, column: 7, scope: !4822)
!4838 = !DILocation(line: 1486, column: 5, scope: !4822)
!4839 = !DILocation(line: 1486, column: 24, scope: !4822)
!4840 = !DILocation(line: 1485, column: 8, scope: !4822)
!4841 = !DILocation(line: 1487, column: 7, scope: !4822)
!4842 = !DILocation(line: 1487, column: 19, scope: !4822)
!4843 = !DILocation(line: 1488, column: 37, scope: !4822)
!4844 = !DILocation(line: 1488, column: 6, scope: !4822)
!4845 = !DILocation(line: 1488, column: 18, scope: !4822)
!4846 = !DILocation(line: 1489, column: 15, scope: !4822)
!4847 = !DILocation(line: 1489, column: 7, scope: !4822)
!4848 = !DILocation(line: 1489, column: 13, scope: !4822)
!4849 = !DILocation(line: 1490, column: 14, scope: !4822)
!4850 = !DILocation(line: 1490, column: 12, scope: !4822)
!4851 = !DILocation(line: 1492, column: 3, scope: !4822)
!4852 = !DILocation(line: 1493, column: 3, scope: !4822)
!4853 = !DILocation(line: 1496, column: 3, scope: !4822)
!4854 = !DILocation(line: 1498, column: 3, scope: !4822)
!4855 = distinct !DISubprogram(name: "fix_loop_structure", scope: !3, file: !3, line: 1619, type: !4856, scopeLine: 1620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !1258}
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4864, !4865}
!4859 = !DILocalVariable(name: "changed_bbs", arg: 1, scope: !4855, file: !3, line: 1619, type: !1258)
!4860 = !DILocalVariable(name: "bb", scope: !4855, file: !3, line: 1621, type: !609)
!4861 = !DILocalVariable(name: "loop", scope: !4855, file: !3, line: 1622, type: !1324)
!4862 = !DILocalVariable(name: "ploop", scope: !4855, file: !3, line: 1622, type: !1324)
!4863 = !DILocalVariable(name: "li", scope: !4855, file: !3, line: 1623, type: !4490)
!4864 = !DILocalVariable(name: "record_exits", scope: !4855, file: !3, line: 1624, type: !600)
!4865 = !DILocalVariable(name: "superloop", scope: !4855, file: !3, line: 1625, type: !1994)
!4866 = !DILocation(line: 0, scope: !4855)
!4867 = !DILocation(line: 1622, column: 3, scope: !4855)
!4868 = !DILocation(line: 1623, column: 3, scope: !4855)
!4869 = !DILocation(line: 1625, column: 29, scope: !4855)
!4870 = !DILocation(line: 1630, column: 3, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1630, column: 3)
!4872 = !DILocation(line: 0, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 1632, column: 11)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 1631, column: 5)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 1630, column: 3)
!4876 = !DILocation(line: 1630, column: 3, scope: !4875)
!4877 = !DILocation(line: 0, scope: !4871)
!4878 = !DILocation(line: 1634, column: 25, scope: !4874)
!4879 = !DILocation(line: 1634, column: 40, scope: !4874)
!4880 = !DILocation(line: 1634, column: 11, scope: !4874)
!4881 = !DILocation(line: 1634, column: 23, scope: !4874)
!4882 = distinct !{!4882, !4870, !4883}
!4883 = !DILocation(line: 1635, column: 5, scope: !4871)
!4884 = !DILocation(line: 1637, column: 7, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1637, column: 7)
!4886 = !DILocation(line: 1633, column: 46, scope: !4873)
!4887 = !DILocation(line: 1633, column: 30, scope: !4873)
!4888 = !DILocation(line: 1633, column: 21, scope: !4873)
!4889 = !DILocation(line: 1633, column: 12, scope: !4873)
!4890 = !DILocation(line: 1633, column: 6, scope: !4873)
!4891 = !DILocation(line: 1633, column: 10, scope: !4873)
!4892 = !DILocation(line: 0, scope: !4875)
!4893 = !DILocation(line: 1637, column: 7, scope: !4855)
!4894 = !DILocation(line: 1639, column: 7, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 1638, column: 5)
!4896 = !DILocation(line: 1641, column: 5, scope: !4895)
!4897 = !DILocation(line: 1647, column: 3, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1647, column: 3)
!4899 = !DILocation(line: 1647, column: 3, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 1647, column: 3)
!4901 = !DILocation(line: 1649, column: 17, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 1649, column: 11)
!4903 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 1648, column: 5)
!4904 = !DILocation(line: 1649, column: 11, scope: !4902)
!4905 = !DILocation(line: 1649, column: 11, scope: !4903)
!4906 = !DILocation(line: 1652, column: 7, scope: !4903)
!4907 = !DILocation(line: 1652, column: 14, scope: !4903)
!4908 = !DILocation(line: 1652, column: 20, scope: !4903)
!4909 = !DILocation(line: 1655, column: 4, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 1653, column: 2)
!4911 = !DILocation(line: 1656, column: 41, scope: !4910)
!4912 = !DILocation(line: 1656, column: 29, scope: !4910)
!4913 = !DILocation(line: 1656, column: 4, scope: !4910)
!4914 = distinct !{!4914, !4906, !4915}
!4915 = !DILocation(line: 1657, column: 2, scope: !4903)
!4916 = !DILocation(line: 1660, column: 7, scope: !4903)
!4917 = !DILocation(line: 1661, column: 5, scope: !4903)
!4918 = distinct !{!4918, !4897, !4919}
!4919 = !DILocation(line: 1661, column: 5, scope: !4898)
!4920 = !DILocation(line: 1668, column: 41, scope: !4855)
!4921 = !DILocation(line: 1668, column: 3, scope: !4855)
!4922 = !DILocation(line: 1668, column: 18, scope: !4855)
!4923 = !DILocation(line: 1668, column: 29, scope: !4855)
!4924 = !DILocation(line: 1668, column: 39, scope: !4855)
!4925 = !DILocation(line: 1669, column: 3, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1669, column: 3)
!4927 = !DILocation(line: 1669, column: 3, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 1669, column: 3)
!4929 = !DILocation(line: 1671, column: 36, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 1670, column: 5)
!4931 = !DILocation(line: 1671, column: 44, scope: !4930)
!4932 = !DILocation(line: 1671, column: 23, scope: !4930)
!4933 = !DILocation(line: 1671, column: 7, scope: !4930)
!4934 = !DILocation(line: 1671, column: 28, scope: !4930)
!4935 = !DILocation(line: 1672, column: 47, scope: !4930)
!4936 = !DILocation(line: 1672, column: 53, scope: !4930)
!4937 = !DILocation(line: 1672, column: 25, scope: !4930)
!4938 = !DILocation(line: 1672, column: 7, scope: !4930)
!4939 = !DILocation(line: 1672, column: 13, scope: !4930)
!4940 = !DILocation(line: 1672, column: 23, scope: !4930)
!4941 = distinct !{!4941, !4925, !4942}
!4942 = !DILocation(line: 1673, column: 5, scope: !4926)
!4943 = !DILocation(line: 1676, column: 3, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1676, column: 3)
!4945 = !DILocation(line: 1676, column: 3, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 1676, column: 3)
!4947 = !DILocation(line: 1678, column: 31, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 1677, column: 5)
!4949 = !DILocation(line: 1678, column: 15, scope: !4948)
!4950 = !DILocation(line: 1679, column: 20, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 1679, column: 11)
!4952 = !DILocation(line: 1679, column: 17, scope: !4951)
!4953 = !DILocation(line: 1679, column: 11, scope: !4948)
!4954 = !DILocation(line: 1681, column: 32, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 1680, column: 2)
!4956 = !DILocation(line: 1681, column: 4, scope: !4955)
!4957 = !DILocation(line: 1682, column: 36, scope: !4955)
!4958 = !DILocation(line: 1682, column: 4, scope: !4955)
!4959 = !DILocation(line: 1683, column: 2, scope: !4955)
!4960 = distinct !{!4960, !4943, !4961}
!4961 = !DILocation(line: 1684, column: 5, scope: !4944)
!4962 = !DILocation(line: 1685, column: 3, scope: !4855)
!4963 = !DILocation(line: 1688, column: 7, scope: !4855)
!4964 = !DILocation(line: 1690, column: 7, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 1690, column: 7)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 1689, column: 5)
!4967 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1688, column: 7)
!4968 = !DILocation(line: 1690, column: 7, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 1690, column: 7)
!4970 = !DILocation(line: 0, scope: !4965)
!4971 = !DILocation(line: 1692, column: 42, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 1692, column: 8)
!4973 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 1691, column: 2)
!4974 = !DILocation(line: 1692, column: 26, scope: !4972)
!4975 = !DILocation(line: 1692, column: 17, scope: !4972)
!4976 = !DILocation(line: 1692, column: 8, scope: !4972)
!4977 = !DILocation(line: 1692, column: 62, scope: !4972)
!4978 = !DILocation(line: 1692, column: 55, scope: !4972)
!4979 = !DILocation(line: 1692, column: 8, scope: !4973)
!4980 = !DILocation(line: 1693, column: 39, scope: !4972)
!4981 = !DILocation(line: 1693, column: 6, scope: !4972)
!4982 = !DILocation(line: 1695, column: 16, scope: !4973)
!4983 = !DILocation(line: 0, scope: !4969)
!4984 = distinct !{!4984, !4964, !4985}
!4985 = !DILocation(line: 1696, column: 2, scope: !4965)
!4986 = !DILocation(line: 1699, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1699, column: 7)
!4988 = !DILocation(line: 1699, column: 7, scope: !4855)
!4989 = !DILocation(line: 1700, column: 5, scope: !4987)
!4990 = !DILocation(line: 1702, column: 7, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1702, column: 7)
!4992 = !DILocation(line: 1702, column: 7, scope: !4855)
!4993 = !DILocation(line: 1703, column: 5, scope: !4991)
!4994 = !DILocation(line: 1705, column: 7, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1705, column: 7)
!4996 = !DILocation(line: 1705, column: 7, scope: !4855)
!4997 = !DILocation(line: 1706, column: 5, scope: !4995)
!4998 = !DILocation(line: 1708, column: 7, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1708, column: 7)
!5000 = !DILocation(line: 1708, column: 7, scope: !4855)
!5001 = !DILocation(line: 1709, column: 5, scope: !4999)
!5002 = !DILocation(line: 1714, column: 1, scope: !4855)
!5003 = distinct !DISubprogram(name: "number_of_loops", scope: !6, file: !6, line: 459, type: !5004, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!7}
!5006 = !DILocation(line: 461, column: 8, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5003, file: !6, line: 461, column: 7)
!5008 = !DILocation(line: 461, column: 7, scope: !5003)
!5009 = !DILocation(line: 464, column: 10, scope: !5003)
!5010 = !DILocation(line: 464, column: 3, scope: !5003)
!5011 = !DILocation(line: 0, scope: !5003)
!5012 = !DILocation(line: 465, column: 1, scope: !5003)
!5013 = distinct !DISubprogram(name: "loop_depth", scope: !6, file: !6, line: 425, type: !5014, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!7, !2699}
!5016 = !{!5017}
!5017 = !DILocalVariable(name: "loop", arg: 1, scope: !5013, file: !6, line: 425, type: !2699)
!5018 = !DILocation(line: 0, scope: !5013)
!5019 = !DILocation(line: 427, column: 10, scope: !5013)
!5020 = !DILocation(line: 427, column: 3, scope: !5013)
!5021 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !144, file: !144, line: 150, type: !5022, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!7, !4477}
!5024 = !{!5025}
!5025 = !DILocalVariable(name: "vec_", arg: 1, scope: !5021, file: !144, line: 150, type: !4477)
!5026 = !DILocation(line: 0, scope: !5021)
!5027 = !DILocation(line: 150, column: 1, scope: !5021)
!5028 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !6, file: !6, line: 85, type: !5029, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!7, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!5033 = !{!5034}
!5034 = !DILocalVariable(name: "vec_", arg: 1, scope: !5028, file: !6, line: 85, type: !5031)
!5035 = !DILocation(line: 0, scope: !5028)
!5036 = !DILocation(line: 85, column: 1, scope: !5028)
!5037 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !6, file: !6, line: 85, type: !5038, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!1323, !5031, !7}
!5040 = !{!5041, !5042}
!5041 = !DILocalVariable(name: "vec_", arg: 1, scope: !5037, file: !6, line: 85, type: !5031)
!5042 = !DILocalVariable(name: "ix_", arg: 2, scope: !5037, file: !6, line: 85, type: !7)
!5043 = !DILocation(line: 0, scope: !5037)
!5044 = !DILocation(line: 85, column: 1, scope: !5037)
!5045 = distinct !DISubprogram(name: "rpe_enum_p", scope: !3, file: !3, line: 50, type: !5046, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!600, !1995, !1013}
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "bb", arg: 1, scope: !5045, file: !3, line: 50, type: !1995)
!5050 = !DILocalVariable(name: "data", arg: 2, scope: !5045, file: !3, line: 50, type: !1013)
!5051 = !DILocation(line: 0, scope: !5045)
!5052 = !DILocation(line: 52, column: 46, scope: !5045)
!5053 = !DILocation(line: 52, column: 10, scope: !5045)
!5054 = !DILocation(line: 52, column: 3, scope: !5045)
!5055 = distinct !DISubprogram(name: "ei_end_p", scope: !144, file: !144, line: 721, type: !5056, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!600, !2504}
!5058 = !{!5059}
!5059 = !DILocalVariable(name: "i", arg: 1, scope: !5055, file: !144, line: 721, type: !2504)
!5060 = !DILocation(line: 723, column: 22, scope: !5055)
!5061 = !DILocation(line: 723, column: 19, scope: !5055)
!5062 = !DILocation(line: 723, column: 10, scope: !5055)
!5063 = !DILocation(line: 723, column: 3, scope: !5055)
!5064 = distinct !DISubprogram(name: "ei_edge", scope: !144, file: !144, line: 752, type: !5065, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5067)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!627, !2504}
!5067 = !{!5068}
!5068 = !DILocalVariable(name: "i", arg: 1, scope: !5064, file: !144, line: 752, type: !2504)
!5069 = !DILocation(line: 754, column: 10, scope: !5064)
!5070 = !DILocation(line: 754, column: 3, scope: !5064)
!5071 = distinct !DISubprogram(name: "ei_container", scope: !144, file: !144, line: 685, type: !5072, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5074)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!615, !2504}
!5074 = !{!5075}
!5075 = !DILocalVariable(name: "i", arg: 1, scope: !5071, file: !144, line: 685, type: !2504)
!5076 = !DILocation(line: 687, column: 3, scope: !5071)
!5077 = !DILocation(line: 688, column: 10, scope: !5071)
!5078 = !DILocation(line: 688, column: 3, scope: !5071)
!5079 = distinct !DISubprogram(name: "VEC_basic_block_heap_reserve", scope: !144, file: !144, line: 283, type: !5080, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!601, !2879, !601}
!5082 = !{!5083, !5084, !5085}
!5083 = !DILocalVariable(name: "vec_", arg: 1, scope: !5079, file: !144, line: 283, type: !2879)
!5084 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5079, file: !144, line: 283, type: !601)
!5085 = !DILocalVariable(name: "extend", scope: !5079, file: !144, line: 283, type: !601)
!5086 = !DILocation(line: 0, scope: !5079)
!5087 = !DILocation(line: 283, column: 1, scope: !5079)
!5088 = !DILocation(line: 283, column: 1, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5079, file: !144, line: 283, column: 1)
!5090 = distinct !DISubprogram(name: "VEC_basic_block_base_quick_push", scope: !144, file: !144, line: 281, type: !5091, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!608, !5093, !609}
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!5094 = !{!5095, !5096, !5097}
!5095 = !DILocalVariable(name: "vec_", arg: 1, scope: !5090, file: !144, line: 281, type: !5093)
!5096 = !DILocalVariable(name: "obj_", arg: 2, scope: !5090, file: !144, line: 281, type: !609)
!5097 = !DILocalVariable(name: "slot_", scope: !5090, file: !144, line: 281, type: !608)
!5098 = !DILocation(line: 0, scope: !5090)
!5099 = !DILocation(line: 281, column: 1, scope: !5090)
!5100 = distinct !DISubprogram(name: "VEC_basic_block_base_space", scope: !144, file: !144, line: 281, type: !5101, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!601, !5093, !601}
!5103 = !{!5104, !5105}
!5104 = !DILocalVariable(name: "vec_", arg: 1, scope: !5100, file: !144, line: 281, type: !5093)
!5105 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5100, file: !144, line: 281, type: !601)
!5106 = !DILocation(line: 0, scope: !5100)
!5107 = !DILocation(line: 281, column: 1, scope: !5100)
!5108 = distinct !DISubprogram(name: "RESET_BIT", scope: !2490, file: !2490, line: 82, type: !2791, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5109)
!5109 = !{!5110, !5111, !5112}
!5110 = !DILocalVariable(name: "map", arg: 1, scope: !5108, file: !2490, line: 82, type: !2489)
!5111 = !DILocalVariable(name: "bitno", arg: 2, scope: !5108, file: !2490, line: 82, type: !7)
!5112 = !DILocalVariable(name: "oldbit", scope: !5113, file: !2490, line: 86, type: !600)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !2490, line: 85, column: 5)
!5114 = distinct !DILexicalBlock(scope: !5108, file: !2490, line: 84, column: 7)
!5115 = !DILocation(line: 0, scope: !5108)
!5116 = !DILocation(line: 84, column: 12, scope: !5114)
!5117 = !DILocation(line: 84, column: 7, scope: !5114)
!5118 = !DILocation(line: 84, column: 7, scope: !5108)
!5119 = !DILocation(line: 92, column: 42, scope: !5108)
!5120 = !DILocation(line: 92, column: 31, scope: !5108)
!5121 = !DILocation(line: 91, column: 19, scope: !5108)
!5122 = !DILocation(line: 91, column: 3, scope: !5108)
!5123 = !DILocation(line: 87, column: 16, scope: !5113)
!5124 = !DILocation(line: 88, column: 11, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5113, file: !2490, line: 88, column: 11)
!5126 = !DILocation(line: 88, column: 11, scope: !5113)
!5127 = !DILocation(line: 89, column: 2, scope: !5125)
!5128 = !DILocation(line: 89, column: 41, scope: !5125)
!5129 = !DILocation(line: 92, column: 8, scope: !5108)
!5130 = !DILocation(line: 92, column: 5, scope: !5108)
!5131 = !DILocation(line: 93, column: 1, scope: !5108)
!5132 = distinct !DISubprogram(name: "fix_loop_placement", scope: !3, file: !3, line: 125, type: !5133, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!600, !1324}
!5135 = !{!5136, !5137, !5138, !5139, !5140, !5141, !5142}
!5136 = !DILocalVariable(name: "loop", arg: 1, scope: !5132, file: !3, line: 125, type: !1324)
!5137 = !DILocalVariable(name: "i", scope: !5132, file: !3, line: 127, type: !7)
!5138 = !DILocalVariable(name: "e", scope: !5132, file: !3, line: 128, type: !627)
!5139 = !DILocalVariable(name: "exits", scope: !5132, file: !3, line: 129, type: !2005)
!5140 = !DILocalVariable(name: "father", scope: !5132, file: !3, line: 130, type: !1324)
!5141 = !DILocalVariable(name: "act", scope: !5132, file: !3, line: 130, type: !1324)
!5142 = !DILocalVariable(name: "ret", scope: !5132, file: !3, line: 131, type: !600)
!5143 = !DILocation(line: 0, scope: !5132)
!5144 = !DILocation(line: 128, column: 3, scope: !5132)
!5145 = !DILocation(line: 129, column: 3, scope: !5132)
!5146 = !DILocation(line: 129, column: 29, scope: !5132)
!5147 = !DILocation(line: 129, column: 21, scope: !5132)
!5148 = !DILocation(line: 130, column: 25, scope: !5132)
!5149 = !DILocation(line: 130, column: 40, scope: !5132)
!5150 = !DILocation(line: 133, column: 8, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 133, column: 3)
!5152 = !DILocation(line: 133, column: 15, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 133, column: 3)
!5154 = !DILocation(line: 0, scope: !5151)
!5155 = !DILocation(line: 133, column: 3, scope: !5151)
!5156 = !DILocation(line: 135, column: 37, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 134, column: 5)
!5158 = !DILocation(line: 135, column: 40, scope: !5157)
!5159 = !DILocation(line: 135, column: 46, scope: !5157)
!5160 = !DILocation(line: 135, column: 13, scope: !5157)
!5161 = !DILocation(line: 136, column: 11, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 136, column: 11)
!5163 = !DILocation(line: 136, column: 11, scope: !5157)
!5164 = !DILocation(line: 133, column: 49, scope: !5153)
!5165 = !DILocation(line: 133, column: 3, scope: !5153)
!5166 = distinct !{!5166, !5155, !5167}
!5167 = !DILocation(line: 138, column: 5, scope: !5151)
!5168 = !DILocation(line: 140, column: 17, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 140, column: 7)
!5170 = !DILocation(line: 140, column: 14, scope: !5169)
!5171 = !DILocation(line: 140, column: 7, scope: !5132)
!5172 = !DILocation(line: 142, column: 18, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 142, column: 7)
!5174 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 141, column: 5)
!5175 = !DILocation(line: 0, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 142, column: 7)
!5177 = !DILocation(line: 142, column: 12, scope: !5173)
!5178 = !DILocation(line: 0, scope: !5173)
!5179 = !DILocation(line: 142, column: 41, scope: !5176)
!5180 = !DILocation(line: 142, column: 7, scope: !5173)
!5181 = !DILocation(line: 143, column: 26, scope: !5176)
!5182 = !DILocation(line: 143, column: 7, scope: !5176)
!5183 = !DILocation(line: 143, column: 17, scope: !5176)
!5184 = !DILocation(line: 142, column: 58, scope: !5176)
!5185 = !DILocation(line: 142, column: 7, scope: !5176)
!5186 = distinct !{!5186, !5180, !5187}
!5187 = !DILocation(line: 143, column: 26, scope: !5173)
!5188 = !DILocation(line: 144, column: 7, scope: !5174)
!5189 = !DILocation(line: 145, column: 7, scope: !5174)
!5190 = !DILocation(line: 149, column: 12, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 149, column: 7)
!5192 = !DILocation(line: 0, scope: !5191)
!5193 = !DILocation(line: 149, column: 19, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 149, column: 7)
!5195 = !DILocation(line: 149, column: 7, scope: !5191)
!5196 = !DILocation(line: 150, column: 20, scope: !5194)
!5197 = !DILocation(line: 150, column: 2, scope: !5194)
!5198 = !DILocation(line: 149, column: 53, scope: !5194)
!5199 = !DILocation(line: 149, column: 7, scope: !5194)
!5200 = distinct !{!5200, !5195, !5201}
!5201 = !DILocation(line: 150, column: 35, scope: !5191)
!5202 = !DILocation(line: 155, column: 3, scope: !5132)
!5203 = !DILocation(line: 157, column: 1, scope: !5132)
!5204 = !DILocation(line: 156, column: 3, scope: !5132)
!5205 = distinct !DISubprogram(name: "fix_bb_placement", scope: !3, file: !3, line: 91, type: !5206, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!600, !609}
!5208 = !{!5209, !5210, !5211, !5212, !5213}
!5209 = !DILocalVariable(name: "bb", arg: 1, scope: !5205, file: !3, line: 91, type: !609)
!5210 = !DILocalVariable(name: "e", scope: !5205, file: !3, line: 93, type: !627)
!5211 = !DILocalVariable(name: "ei", scope: !5205, file: !3, line: 94, type: !2504)
!5212 = !DILocalVariable(name: "loop", scope: !5205, file: !3, line: 95, type: !1324)
!5213 = !DILocalVariable(name: "act", scope: !5205, file: !3, line: 95, type: !1324)
!5214 = !DILocation(line: 0, scope: !5205)
!5215 = !DILocation(line: 93, column: 3, scope: !5205)
!5216 = !DILocation(line: 94, column: 3, scope: !5205)
!5217 = !DILocation(line: 95, column: 23, scope: !5205)
!5218 = !DILocation(line: 95, column: 38, scope: !5205)
!5219 = !DILocation(line: 97, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 97, column: 3)
!5221 = !DILocation(line: 0, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 97, column: 3)
!5223 = !DILocation(line: 95, column: 16, scope: !5205)
!5224 = !DILocation(line: 97, column: 3, scope: !5222)
!5225 = !DILocation(line: 99, column: 11, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 99, column: 11)
!5227 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 98, column: 5)
!5228 = !DILocation(line: 99, column: 14, scope: !5226)
!5229 = !DILocation(line: 99, column: 22, scope: !5226)
!5230 = !DILocation(line: 99, column: 19, scope: !5226)
!5231 = !DILocation(line: 99, column: 11, scope: !5227)
!5232 = !DILocation(line: 102, column: 22, scope: !5227)
!5233 = !DILocation(line: 103, column: 16, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 103, column: 11)
!5235 = !DILocation(line: 103, column: 23, scope: !5234)
!5236 = !DILocation(line: 103, column: 11, scope: !5227)
!5237 = !DILocation(line: 104, column: 8, scope: !5234)
!5238 = !DILocation(line: 104, column: 2, scope: !5234)
!5239 = !DILocation(line: 0, scope: !5227)
!5240 = !DILocation(line: 106, column: 11, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 106, column: 11)
!5242 = !DILocation(line: 106, column: 11, scope: !5227)
!5243 = !DILocation(line: 108, column: 5, scope: !5227)
!5244 = distinct !{!5244, !5219, !5245}
!5245 = !DILocation(line: 108, column: 5, scope: !5220)
!5246 = !DILocation(line: 110, column: 19, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 110, column: 7)
!5248 = !DILocation(line: 110, column: 12, scope: !5247)
!5249 = !DILocation(line: 110, column: 7, scope: !5205)
!5250 = !DILocation(line: 113, column: 3, scope: !5205)
!5251 = !DILocation(line: 114, column: 3, scope: !5205)
!5252 = !DILocation(line: 116, column: 3, scope: !5205)
!5253 = !DILocation(line: 117, column: 1, scope: !5205)
!5254 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !144, file: !144, line: 150, type: !5255, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!601, !4477, !7, !2830}
!5257 = !{!5258, !5259, !5260}
!5258 = !DILocalVariable(name: "vec_", arg: 1, scope: !5254, file: !144, line: 150, type: !4477)
!5259 = !DILocalVariable(name: "ix_", arg: 2, scope: !5254, file: !144, line: 150, type: !7)
!5260 = !DILocalVariable(name: "ptr", arg: 3, scope: !5254, file: !144, line: 150, type: !2830)
!5261 = !DILocation(line: 0, scope: !5254)
!5262 = !DILocation(line: 150, column: 1, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5254, file: !144, line: 150, column: 1)
!5264 = !DILocation(line: 150, column: 1, scope: !5254)
!5265 = !DILocation(line: 150, column: 1, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5263, file: !144, line: 150, column: 1)
!5267 = !DILocation(line: 150, column: 1, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5263, file: !144, line: 150, column: 1)
!5269 = !DILocation(line: 0, scope: !5263)
!5270 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !144, file: !144, line: 152, type: !5271, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !3573}
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "vec_", arg: 1, scope: !5270, file: !144, line: 152, type: !3573)
!5275 = !DILocation(line: 0, scope: !5270)
!5276 = !DILocation(line: 152, column: 1, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5270, file: !144, line: 152, column: 1)
!5278 = !DILocation(line: 152, column: 1, scope: !5270)
!5279 = distinct !DISubprogram(name: "VEC_loop_p_gc_safe_push", scope: !6, file: !6, line: 87, type: !5280, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!4515, !5282, !1323}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!5283 = !{!5284, !5285}
!5284 = !DILocalVariable(name: "vec_", arg: 1, scope: !5279, file: !6, line: 87, type: !5282)
!5285 = !DILocalVariable(name: "obj_", arg: 2, scope: !5279, file: !6, line: 87, type: !1323)
!5286 = !DILocation(line: 0, scope: !5279)
!5287 = !DILocation(line: 87, column: 1, scope: !5279)
!5288 = distinct !DISubprogram(name: "VEC_loop_p_gc_reserve", scope: !6, file: !6, line: 87, type: !5289, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!601, !5282, !601}
!5291 = !{!5292, !5293, !5294}
!5292 = !DILocalVariable(name: "vec_", arg: 1, scope: !5288, file: !6, line: 87, type: !5282)
!5293 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5288, file: !6, line: 87, type: !601)
!5294 = !DILocalVariable(name: "extend", scope: !5288, file: !6, line: 87, type: !601)
!5295 = !DILocation(line: 0, scope: !5288)
!5296 = !DILocation(line: 87, column: 1, scope: !5288)
!5297 = !DILocation(line: 87, column: 1, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5288, file: !6, line: 87, column: 1)
!5299 = distinct !DISubprogram(name: "VEC_loop_p_base_quick_push", scope: !6, file: !6, line: 85, type: !5300, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5303)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!4515, !5302, !1323}
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!5303 = !{!5304, !5305, !5306}
!5304 = !DILocalVariable(name: "vec_", arg: 1, scope: !5299, file: !6, line: 85, type: !5302)
!5305 = !DILocalVariable(name: "obj_", arg: 2, scope: !5299, file: !6, line: 85, type: !1323)
!5306 = !DILocalVariable(name: "slot_", scope: !5299, file: !6, line: 85, type: !4515)
!5307 = !DILocation(line: 0, scope: !5299)
!5308 = !DILocation(line: 85, column: 1, scope: !5299)
!5309 = distinct !DISubprogram(name: "VEC_loop_p_base_space", scope: !6, file: !6, line: 85, type: !5310, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5312)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!601, !5302, !601}
!5312 = !{!5313, !5314}
!5313 = !DILocalVariable(name: "vec_", arg: 1, scope: !5309, file: !6, line: 85, type: !5302)
!5314 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5309, file: !6, line: 85, type: !601)
!5315 = !DILocation(line: 0, scope: !5309)
!5316 = !DILocation(line: 85, column: 1, scope: !5309)
!5317 = distinct !DISubprogram(name: "bb_seq", scope: !534, file: !534, line: 237, type: !5318, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!637, !1995}
!5320 = !{!5321}
!5321 = !DILocalVariable(name: "bb", arg: 1, scope: !5317, file: !534, line: 237, type: !1995)
!5322 = !DILocation(line: 0, scope: !5317)
!5323 = !DILocation(line: 239, column: 17, scope: !5317)
!5324 = !DILocation(line: 239, column: 23, scope: !5317)
!5325 = !DILocation(line: 239, column: 33, scope: !5317)
!5326 = !DILocation(line: 239, column: 43, scope: !5317)
!5327 = !DILocation(line: 239, column: 36, scope: !5317)
!5328 = !DILocation(line: 239, column: 10, scope: !5317)
!5329 = !DILocation(line: 239, column: 68, scope: !5317)
!5330 = !DILocation(line: 239, column: 3, scope: !5317)
!5331 = distinct !DISubprogram(name: "gimple_seq_last", scope: !534, file: !534, line: 178, type: !5332, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!642, !5334}
!5334 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !610, line: 67, baseType: !5335)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!5337 = !{!5338}
!5338 = !DILocalVariable(name: "s", arg: 1, scope: !5331, file: !534, line: 178, type: !5334)
!5339 = !DILocation(line: 0, scope: !5331)
!5340 = !DILocation(line: 180, column: 10, scope: !5331)
!5341 = !DILocation(line: 180, column: 17, scope: !5331)
!5342 = !DILocation(line: 180, column: 3, scope: !5331)
!5343 = distinct !DISubprogram(name: "gimple_op", scope: !534, file: !534, line: 1631, type: !5344, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!672, !3408, !7}
!5346 = !{!5347, !5348}
!5347 = !DILocalVariable(name: "gs", arg: 1, scope: !5343, file: !534, line: 1631, type: !3408)
!5348 = !DILocalVariable(name: "i", arg: 2, scope: !5343, file: !534, line: 1631, type: !7)
!5349 = !DILocation(line: 0, scope: !5343)
!5350 = !DILocation(line: 1633, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5343, file: !534, line: 1633, column: 7)
!5352 = !DILocation(line: 1633, column: 7, scope: !5343)
!5353 = !DILocation(line: 1638, column: 14, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5351, file: !534, line: 1634, column: 5)
!5355 = !DILocation(line: 1638, column: 7, scope: !5354)
!5356 = !DILocation(line: 0, scope: !5351)
!5357 = !DILocation(line: 1642, column: 1, scope: !5343)
!5358 = distinct !DISubprogram(name: "gimple_has_ops", scope: !534, file: !534, line: 1274, type: !5359, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!600, !3408}
!5361 = !{!5362}
!5362 = !DILocalVariable(name: "g", arg: 1, scope: !5358, file: !534, line: 1274, type: !3408)
!5363 = !DILocation(line: 0, scope: !5358)
!5364 = !DILocation(line: 1276, column: 10, scope: !5358)
!5365 = !DILocation(line: 1276, column: 26, scope: !5358)
!5366 = !DILocation(line: 1276, column: 41, scope: !5358)
!5367 = !DILocation(line: 1276, column: 44, scope: !5358)
!5368 = !DILocation(line: 1276, column: 60, scope: !5358)
!5369 = !DILocation(line: 1276, column: 3, scope: !5358)
!5370 = distinct !DISubprogram(name: "gimple_ops", scope: !534, file: !534, line: 1614, type: !5371, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5373)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!1287, !647}
!5373 = !{!5374, !5375}
!5374 = !DILocalVariable(name: "gs", arg: 1, scope: !5370, file: !534, line: 1614, type: !647)
!5375 = !DILocalVariable(name: "off", scope: !5370, file: !534, line: 1616, type: !1195)
!5376 = !DILocation(line: 0, scope: !5370)
!5377 = !DILocation(line: 1621, column: 28, scope: !5370)
!5378 = !DILocation(line: 1621, column: 9, scope: !5370)
!5379 = !DILocation(line: 1622, column: 3, scope: !5370)
!5380 = !DILocation(line: 1624, column: 20, scope: !5370)
!5381 = !DILocation(line: 1624, column: 32, scope: !5370)
!5382 = !DILocation(line: 1624, column: 10, scope: !5370)
!5383 = !DILocation(line: 1624, column: 3, scope: !5370)
!5384 = distinct !DISubprogram(name: "gimple_code", scope: !534, file: !534, line: 1052, type: !5385, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5387)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!533, !3408}
!5387 = !{!5388}
!5388 = !DILocalVariable(name: "g", arg: 1, scope: !5384, file: !534, line: 1052, type: !3408)
!5389 = !DILocation(line: 0, scope: !5384)
!5390 = !DILocation(line: 1054, column: 20, scope: !5384)
!5391 = !DILocation(line: 1054, column: 3, scope: !5384)
!5392 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !534, file: !534, line: 1073, type: !5393, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!572, !647}
!5395 = !{!5396}
!5396 = !DILocalVariable(name: "gs", arg: 1, scope: !5392, file: !534, line: 1073, type: !647)
!5397 = !DILocation(line: 0, scope: !5392)
!5398 = !DILocation(line: 1075, column: 24, scope: !5392)
!5399 = !DILocation(line: 1075, column: 10, scope: !5392)
!5400 = !DILocation(line: 1075, column: 3, scope: !5392)
!5401 = distinct !DISubprogram(name: "gss_for_code", scope: !534, file: !534, line: 1061, type: !5402, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!572, !533}
!5404 = !{!5405}
!5405 = !DILocalVariable(name: "code", arg: 1, scope: !5401, file: !534, line: 1061, type: !533)
!5406 = !DILocation(line: 0, scope: !5401)
!5407 = !DILocation(line: 1066, column: 10, scope: !5401)
!5408 = !DILocation(line: 1066, column: 3, scope: !5401)
!5409 = distinct !DISubprogram(name: "gimple_set_op", scope: !534, file: !534, line: 1663, type: !5410, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5412)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{null, !647, !7, !672}
!5412 = !{!5413, !5414, !5415}
!5413 = !DILocalVariable(name: "gs", arg: 1, scope: !5409, file: !534, line: 1663, type: !647)
!5414 = !DILocalVariable(name: "i", arg: 2, scope: !5409, file: !534, line: 1663, type: !7)
!5415 = !DILocalVariable(name: "op", arg: 3, scope: !5409, file: !534, line: 1663, type: !672)
!5416 = !DILocation(line: 0, scope: !5409)
!5417 = !DILocation(line: 1665, column: 3, scope: !5409)
!5418 = !DILocation(line: 1671, column: 3, scope: !5409)
!5419 = !DILocation(line: 1671, column: 22, scope: !5409)
!5420 = !DILocation(line: 1672, column: 1, scope: !5409)
!5421 = distinct !DISubprogram(name: "gimple_num_ops", scope: !534, file: !534, line: 1596, type: !5422, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!7, !3408}
!5424 = !{!5425}
!5425 = !DILocalVariable(name: "gs", arg: 1, scope: !5421, file: !534, line: 1596, type: !3408)
!5426 = !DILocation(line: 0, scope: !5421)
!5427 = !DILocation(line: 1598, column: 21, scope: !5421)
!5428 = !DILocation(line: 1598, column: 3, scope: !5421)
!5429 = distinct !DISubprogram(name: "VEC_edge_heap_reserve", scope: !144, file: !144, line: 152, type: !5430, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!601, !3573, !601}
!5432 = !{!5433, !5434, !5435}
!5433 = !DILocalVariable(name: "vec_", arg: 1, scope: !5429, file: !144, line: 152, type: !3573)
!5434 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5429, file: !144, line: 152, type: !601)
!5435 = !DILocalVariable(name: "extend", scope: !5429, file: !144, line: 152, type: !601)
!5436 = !DILocation(line: 0, scope: !5429)
!5437 = !DILocation(line: 152, column: 1, scope: !5429)
!5438 = !DILocation(line: 152, column: 1, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5429, file: !144, line: 152, column: 1)
!5440 = distinct !DISubprogram(name: "VEC_edge_base_quick_push", scope: !144, file: !144, line: 150, type: !5441, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!2830, !5443, !627}
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!5444 = !{!5445, !5446, !5447}
!5445 = !DILocalVariable(name: "vec_", arg: 1, scope: !5440, file: !144, line: 150, type: !5443)
!5446 = !DILocalVariable(name: "obj_", arg: 2, scope: !5440, file: !144, line: 150, type: !627)
!5447 = !DILocalVariable(name: "slot_", scope: !5440, file: !144, line: 150, type: !2830)
!5448 = !DILocation(line: 0, scope: !5440)
!5449 = !DILocation(line: 150, column: 1, scope: !5440)
!5450 = distinct !DISubprogram(name: "VEC_edge_base_space", scope: !144, file: !144, line: 150, type: !5451, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!601, !5443, !601}
!5453 = !{!5454, !5455}
!5454 = !DILocalVariable(name: "vec_", arg: 1, scope: !5450, file: !144, line: 150, type: !5443)
!5455 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5450, file: !144, line: 150, type: !601)
!5456 = !DILocation(line: 0, scope: !5450)
!5457 = !DILocation(line: 150, column: 1, scope: !5450)
!5458 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !2012, file: !2012, line: 32, type: !5459, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!2010, !601}
!5461 = !{!5462}
!5462 = !DILocalVariable(name: "alloc_", arg: 1, scope: !5458, file: !2012, line: 32, type: !601)
!5463 = !DILocation(line: 0, scope: !5458)
!5464 = !DILocation(line: 32, column: 1, scope: !5458)
!5465 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !6, file: !6, line: 85, type: !5466, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!601, !5031, !7, !4515}
!5468 = !{!5469, !5470, !5471}
!5469 = !DILocalVariable(name: "vec_", arg: 1, scope: !5465, file: !6, line: 85, type: !5031)
!5470 = !DILocalVariable(name: "ix_", arg: 2, scope: !5465, file: !6, line: 85, type: !7)
!5471 = !DILocalVariable(name: "ptr", arg: 3, scope: !5465, file: !6, line: 85, type: !4515)
!5472 = !DILocation(line: 0, scope: !5465)
!5473 = !DILocation(line: 85, column: 1, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5465, file: !6, line: 85, column: 1)
!5475 = !DILocation(line: 85, column: 1, scope: !5465)
!5476 = !DILocation(line: 85, column: 1, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5474, file: !6, line: 85, column: 1)
!5478 = !DILocation(line: 85, column: 1, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5474, file: !6, line: 85, column: 1)
!5480 = !DILocation(line: 0, scope: !5474)
!5481 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !2012, file: !2012, line: 31, type: !5482, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5485)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!1993, !5484, !601}
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!5485 = !{!5486, !5487, !5488}
!5486 = !DILocalVariable(name: "vec_", arg: 1, scope: !5481, file: !2012, line: 31, type: !5484)
!5487 = !DILocalVariable(name: "obj_", arg: 2, scope: !5481, file: !2012, line: 31, type: !601)
!5488 = !DILocalVariable(name: "slot_", scope: !5481, file: !2012, line: 31, type: !1993)
!5489 = !DILocation(line: 0, scope: !5481)
!5490 = !DILocation(line: 31, column: 1, scope: !5481)
!5491 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !2012, file: !2012, line: 31, type: !5492, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!601, !5494, !7, !1993}
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!5496 = !{!5497, !5498, !5499}
!5497 = !DILocalVariable(name: "vec_", arg: 1, scope: !5491, file: !2012, line: 31, type: !5494)
!5498 = !DILocalVariable(name: "ix_", arg: 2, scope: !5491, file: !2012, line: 31, type: !7)
!5499 = !DILocalVariable(name: "ptr", arg: 3, scope: !5491, file: !2012, line: 31, type: !1993)
!5500 = !DILocation(line: 0, scope: !5491)
!5501 = !DILocation(line: 31, column: 1, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5491, file: !2012, line: 31, column: 1)
!5503 = !DILocation(line: 31, column: 1, scope: !5491)
!5504 = !DILocation(line: 31, column: 1, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5502, file: !2012, line: 31, column: 1)
!5506 = !DILocation(line: 31, column: 1, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5502, file: !2012, line: 31, column: 1)
!5508 = !DILocation(line: 0, scope: !5502)
!5509 = distinct !DISubprogram(name: "get_loop", scope: !6, file: !6, line: 417, type: !5510, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!1324, !7}
!5512 = !{!5513}
!5513 = !DILocalVariable(name: "num", arg: 1, scope: !5509, file: !6, line: 417, type: !7)
!5514 = !DILocation(line: 0, scope: !5509)
!5515 = !DILocation(line: 419, column: 10, scope: !5509)
!5516 = !DILocation(line: 419, column: 3, scope: !5509)
!5517 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !2012, file: !2012, line: 32, type: !5518, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5521)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{null, !5520}
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!5521 = !{!5522}
!5522 = !DILocalVariable(name: "vec_", arg: 1, scope: !5517, file: !2012, line: 32, type: !5520)
!5523 = !DILocation(line: 0, scope: !5517)
!5524 = !DILocation(line: 32, column: 1, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5517, file: !2012, line: 32, column: 1)
!5526 = !DILocation(line: 32, column: 1, scope: !5517)
