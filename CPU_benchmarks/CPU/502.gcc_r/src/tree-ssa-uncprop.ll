; ModuleID = 'tree-ssa-uncprop.bc'
source_filename = "tree-ssa-uncprop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
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
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dom_walk_data = type { i8, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, i8*, %struct.VEC_void_p_heap*, i64, %struct.VEC_void_p_heap* }
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.equiv_hash_elt = type { %union.tree_node*, %struct.VEC_tree_heap* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"uncprop\00", align 1
@pass_uncprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_uncprop, i32 ()* @tree_ssa_uncprop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 103, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !0
@flag_tree_dom = external dso_local local_unnamed_addr global i32, align 4
@equiv = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2004
@equiv_stack = internal global %struct.VEC_tree_heap* null, align 8, !dbg !2006
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external dso_local local_unnamed_addr global i32, align 4
@dconst0 = external dso_local global %struct.real_value, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2052, metadata !DIExpression()), !dbg !2053
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2054
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2055
  ret i32 %call, !dbg !2056
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2057 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2061
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2062
  ret i32 %call, !dbg !2063
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2119, metadata !DIExpression()), !dbg !2120
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2121
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2121
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2121
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2121
  %cmp = icmp uge i8* %0, %1, !dbg !2121
  %conv1 = zext i1 %cmp to i64, !dbg !2121
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2121
  %tobool = icmp eq i64 %expval, 0, !dbg !2121
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2121

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2121
  br label %cond.end, !dbg !2121

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2121
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2121
  %2 = load i8, i8* %0, align 1, !dbg !2121
  %conv3 = zext i8 %2 to i32, !dbg !2121
  br label %cond.end, !dbg !2121

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2121
  ret i32 %cond, !dbg !2122
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2125, metadata !DIExpression()), !dbg !2126
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2127
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2127
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2127
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2127
  %cmp = icmp uge i8* %0, %1, !dbg !2127
  %conv1 = zext i1 %cmp to i64, !dbg !2127
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2127
  %tobool = icmp eq i64 %expval, 0, !dbg !2127
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2127

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2127
  br label %cond.end, !dbg !2127

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2127
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2127
  %2 = load i8, i8* %0, align 1, !dbg !2127
  %conv3 = zext i8 %2 to i32, !dbg !2127
  br label %cond.end, !dbg !2127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2127
  ret i32 %cond, !dbg !2128
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2129 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2130
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2130
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2130
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2130
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2130
  %cmp = icmp uge i8* %1, %2, !dbg !2130
  %conv1 = zext i1 %cmp to i64, !dbg !2130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2130
  %tobool = icmp eq i64 %expval, 0, !dbg !2130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2130

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2130
  br label %cond.end, !dbg !2130

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2130
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2130
  %3 = load i8, i8* %1, align 1, !dbg !2130
  %conv3 = zext i8 %3 to i32, !dbg !2130
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2136, metadata !DIExpression()), !dbg !2137
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2138
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2139
  ret i32 %call, !dbg !2140
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2146, metadata !DIExpression()), !dbg !2147
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2148
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2148
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2148
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2148
  %cmp = icmp uge i8* %0, %1, !dbg !2148
  %conv1 = zext i1 %cmp to i64, !dbg !2148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2148
  %tobool = icmp eq i64 %expval, 0, !dbg !2148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2148

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2148
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2148
  br label %cond.end, !dbg !2148

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2148
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2148
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2148
  store i8 %conv2, i8* %0, align 1, !dbg !2148
  %conv6 = and i32 %__c, 255, !dbg !2148
  br label %cond.end, !dbg !2148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2148
  ret i32 %cond, !dbg !2149
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2153, metadata !DIExpression()), !dbg !2154
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2155
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2155
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2155
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2155
  %cmp = icmp uge i8* %0, %1, !dbg !2155
  %conv1 = zext i1 %cmp to i64, !dbg !2155
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2155
  %tobool = icmp eq i64 %expval, 0, !dbg !2155
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2155

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2155
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2155
  br label %cond.end, !dbg !2155

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2155
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2155
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2155
  store i8 %conv2, i8* %0, align 1, !dbg !2155
  %conv6 = and i32 %__c, 255, !dbg !2155
  br label %cond.end, !dbg !2155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2155
  ret i32 %cond, !dbg !2156
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2159, metadata !DIExpression()), !dbg !2160
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2161
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2161
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2161
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2161
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2161
  %cmp = icmp uge i8* %1, %2, !dbg !2161
  %conv1 = zext i1 %cmp to i64, !dbg !2161
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2161
  %tobool = icmp eq i64 %expval, 0, !dbg !2161
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2161

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2161
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2161
  br label %cond.end, !dbg !2161

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2161
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2161
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2161
  store i8 %conv4, i8* %1, align 1, !dbg !2161
  %conv6 = and i32 %__c, 255, !dbg !2161
  br label %cond.end, !dbg !2161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2161
  ret i32 %cond, !dbg !2162
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2173
  ret i64 %call, !dbg !2174
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2177, metadata !DIExpression()), !dbg !2178
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2179
  %0 = load i32, i32* %_flags, align 8, !dbg !2179
  %and = lshr i32 %0, 4, !dbg !2179
  %and.lobit = and i32 %and, 1, !dbg !2179
  ret i32 %and.lobit, !dbg !2180
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2181 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2183, metadata !DIExpression()), !dbg !2184
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2185
  %0 = load i32, i32* %_flags, align 8, !dbg !2185
  %and = lshr i32 %0, 5, !dbg !2185
  %and.lobit = and i32 %and, 1, !dbg !2185
  ret i32 %and.lobit, !dbg !2186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2190, metadata !DIExpression()), !dbg !2191
  %__c.off = add i32 %__c, 128, !dbg !2192
  %0 = icmp ult i32 %__c.off, 384, !dbg !2192
  br i1 %0, label %cond.true, label %cond.end, !dbg !2192

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2193
  %1 = load i32*, i32** %call, align 8, !dbg !2194
  %idxprom = sext i32 %__c to i64, !dbg !2195
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2195
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2195
  br label %cond.end, !dbg !2196

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2196
  ret i32 %cond, !dbg !2197
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2200, metadata !DIExpression()), !dbg !2201
  %__c.off = add i32 %__c, 128, !dbg !2202
  %0 = icmp ult i32 %__c.off, 384, !dbg !2202
  br i1 %0, label %cond.true, label %cond.end, !dbg !2202

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2203
  %1 = load i32*, i32** %call, align 8, !dbg !2204
  %idxprom = sext i32 %__c to i64, !dbg !2205
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2205
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2205
  br label %cond.end, !dbg !2206

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2206
  ret i32 %cond, !dbg !2207
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2213, metadata !DIExpression()), !dbg !2214
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2215
  %conv = trunc i64 %call to i32, !dbg !2216
  ret i32 %conv, !dbg !2217
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2222, metadata !DIExpression()), !dbg !2223
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2224
  ret i64 %call, !dbg !2225
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2226 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2231, metadata !DIExpression()), !dbg !2232
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2233
  ret i64 %call, !dbg !2234
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2241, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2242, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2243, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2244, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2245, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 0, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2247, metadata !DIExpression()), !dbg !2251
  br label %while.cond, !dbg !2252

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2253
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2246, metadata !DIExpression()), !dbg !2251
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2254
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2252

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2255
  %div = lshr i64 %add, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %div, metadata !2248, metadata !DIExpression()), !dbg !2251
  %mul = mul i64 %div, %__size, !dbg !2258
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2259
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2249, metadata !DIExpression()), !dbg !2251
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %call, metadata !2250, metadata !DIExpression()), !dbg !2251
  %cmp1 = icmp slt i32 %call, 0, !dbg !2261
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2263

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2264
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2266

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2246, metadata !DIExpression()), !dbg !2251
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2251
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2246, metadata !DIExpression()), !dbg !2251
  br label %while.cond, !dbg !2252, !llvm.loop !2268

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2251
  ret i8* %retval.0, !dbg !2270
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2277, metadata !DIExpression()), !dbg !2278
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2279
  ret double %call, !dbg !2280
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %base, metadata !2292, metadata !DIExpression()), !dbg !2293
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2294
  ret i64 %call, !dbg !2295
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %base, metadata !2304, metadata !DIExpression()), !dbg !2305
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2306
  ret i64 %call, !dbg !2307
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %base, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2323
  ret i64 %call, !dbg !2324
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %base, metadata !2331, metadata !DIExpression()), !dbg !2332
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2333
  ret i64 %call, !dbg !2334
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2376, metadata !DIExpression()), !dbg !2377
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2378
  ret i32 %call, !dbg !2379
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2383, metadata !DIExpression()), !dbg !2384
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2385
  ret i32 %call, !dbg !2386
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2392, metadata !DIExpression()), !dbg !2393
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2394
  ret i32 %call, !dbg !2395
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2403, metadata !DIExpression()), !dbg !2404
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2405
  ret i32 %call, !dbg !2406
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2407 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2413, metadata !DIExpression(DW_OP_deref)), !dbg !2414
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2415
  ret i32 %call, !dbg !2416
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2417 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2424, metadata !DIExpression()), !dbg !2425
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2424, metadata !DIExpression(DW_OP_deref)), !dbg !2425
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2426
  ret i32 %call, !dbg !2427
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2428 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2453, metadata !DIExpression()), !dbg !2454
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2455
  ret i32 %call, !dbg !2456
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2457 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2460, metadata !DIExpression()), !dbg !2461
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2462
  ret i32 %call, !dbg !2463
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2464 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2469, metadata !DIExpression()), !dbg !2470
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2471
  ret i32 %call, !dbg !2472
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2473 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2480, metadata !DIExpression()), !dbg !2481
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2482
  ret i32 %call, !dbg !2483
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_uncprop() #5 !dbg !2484 {
entry:
  %0 = load i32, i32* @flag_tree_dom, align 4, !dbg !2485
  %cmp = icmp ne i32 %0, 0, !dbg !2486
  %conv1 = zext i1 %cmp to i8, !dbg !2485
  ret i8 %conv1, !dbg !2487
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_uncprop() #5 !dbg !2488 {
entry:
  %walk_data = alloca %struct.dom_walk_data, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 0, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2534
  tail call fastcc void @associate_equivalences_with_edges() #8, !dbg !2535
  %call = tail call %struct.htab* @htab_create(i64 1024, i32 (i8*)* nonnull @equiv_hash, i32 (i8*, i8*)* nonnull @equiv_eq, void (i8*)* nonnull @equiv_free) #6, !dbg !2536
  store %struct.htab* %call, %struct.htab** @equiv, align 8, !dbg !2537
  %call1 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 2) #8, !dbg !2538
  store %struct.VEC_tree_heap* %call1, %struct.VEC_tree_heap** @equiv_stack, align 8, !dbg !2539
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2540
  store i8 1, i8* %0, align 8, !dbg !2541
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !2542
  store void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* null, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !2543
  %before_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 2, !dbg !2544
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @uncprop_enter_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %before_dom_children, align 8, !dbg !2545
  %after_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 3, !dbg !2546
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @uncprop_leave_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %after_dom_children, align 8, !dbg !2547
  %global_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 4, !dbg !2548
  store i8* null, i8** %global_data, align 8, !dbg !2549
  %block_local_data_size = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 6, !dbg !2550
  store i64 0, i64* %block_local_data_size, align 8, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2552
  call void @init_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2553
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2554
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2554
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2554
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2554
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2552
  call void @walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data, %struct.basic_block_def* %3) #6, !dbg !2555
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2552
  call void @fini_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2556
  %4 = load %struct.htab*, %struct.htab** @equiv, align 8, !dbg !2557
  call void @htab_delete(%struct.htab* %4) #6, !dbg !2558
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull @equiv_stack) #8, !dbg !2559
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2560
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2560
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !2560
  %x_entry_block_ptr4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2560
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr4, align 8, !dbg !2560
  %8 = bitcast %struct.edge_def** %e to i8*, !dbg !2561
  %9 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2561
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2562
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2562
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2562
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2564
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2564
  br label %for.cond, !dbg !2560

for.cond:                                         ; preds = %for.end, %entry
  %15 = phi %struct.control_flow_graph* [ %6, %entry ], [ %.pre1, %for.end ], !dbg !2566
  %.pn = phi %struct.basic_block_def* [ %7, %entry ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2567
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2522, metadata !DIExpression()), !dbg !2552
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !2566
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2566
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %16, !dbg !2566
  br i1 %cmp, label %for.end16, label %for.body, !dbg !2560

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2568
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !2570
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2570
  %call7 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2570
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !2570
  store i32 %17, i32* %11, align 8, !dbg !2570
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !2570
  store %struct.VEC_edge_gc** %18, %struct.VEC_edge_gc*** %12, align 8, !dbg !2570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !2570
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !2570
  br label %for.cond8, !dbg !2570

for.cond8:                                        ; preds = %for.inc, %for.body
  %19 = load i32, i32* %13, align 8, !dbg !2571
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2571
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2561
  %call9 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #8, !dbg !2571
  %tobool = icmp eq i8 %call9, 0, !dbg !2570
  br i1 %tobool, label %for.end, label %for.body10, !dbg !2570

for.body10:                                       ; preds = %for.cond8
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2523, metadata !DIExpression()), !dbg !2561
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 3, !dbg !2575
  %22 = load i8*, i8** %aux, align 8, !dbg !2575
  %tobool11 = icmp eq i8* %22, null, !dbg !2572
  br i1 %tobool11, label %for.inc, label %if.then, !dbg !2576

if.then:                                          ; preds = %for.body10
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2523, metadata !DIExpression()), !dbg !2561
  call void @free(i8* nonnull %22) #6, !dbg !2577
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !2523, metadata !DIExpression()), !dbg !2561
  %aux13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 3, !dbg !2580
  store i8* null, i8** %aux13, align 8, !dbg !2581
  br label %for.inc, !dbg !2582

for.inc:                                          ; preds = %for.body10, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2527, metadata !DIExpression(DW_OP_deref)), !dbg !2561
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2571
  br label %for.cond8, !dbg !2571, !llvm.loop !2583

for.end:                                          ; preds = %for.cond8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2585
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2566
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2586
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2566
  br label %for.cond, !dbg !2566, !llvm.loop !2587

for.end16:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2589
  ret i32 0, !dbg !2590
}

; Function Attrs: nounwind uwtable
define internal fastcc void @associate_equivalences_with_edges() unnamed_addr #5 !dbg !2591 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2638
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2638
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2638
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2638
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2638
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2639
  %4 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !2640
  %5 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !2640
  br label %for.cond, !dbg !2638

for.cond:                                         ; preds = %cleanup680, %entry
  %6 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre44, %cleanup680 ], !dbg !2641
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %cleanup680 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2642
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2595, metadata !DIExpression()), !dbg !2643
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !2641
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2641
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !2641
  br i1 %cmp, label %for.end686, label %for.body, !dbg !2638

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2596, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %gsi, %struct.basic_block_def* %bb.0) #8, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2596, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2646
  %tobool = icmp eq i8 %call, 0, !dbg !2646
  br i1 %tobool, label %if.end, label %cleanup680, !dbg !2648

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2596, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2649
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2606, metadata !DIExpression()), !dbg !2639
  %tobool4 = icmp eq %union.gimple_statement_d* %call3, null, !dbg !2650
  br i1 %tobool4, label %cleanup680, label %if.end6, !dbg !2652

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2653
  %cmp8 = icmp eq i32 %call7, 1, !dbg !2654
  br i1 %cmp8, label %if.then9, label %if.else578, !dbg !2655

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !2656
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2657
  %call10 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2612, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !2607, metadata !DIExpression(DW_OP_deref)), !dbg !2640
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !2610, metadata !DIExpression(DW_OP_deref)), !dbg !2640
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %bb.0, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !2659
  %call10.off = add i32 %call10, -101, !dbg !2660
  %switch4 = icmp ult i32 %call10.off, 2, !dbg !2660
  br i1 %switch4, label %if.then13, label %if.end571, !dbg !2660

if.then13:                                        ; preds = %if.then9
  %call14 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2661
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2613, metadata !DIExpression()), !dbg !2662
  %call15 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2663
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2616, metadata !DIExpression()), !dbg !2662
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2664
  %bf.load = load i64, i64* %8, align 8, !dbg !2664
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !2666
  %cmp16 = icmp eq i64 %bf.cast7, 141, !dbg !2666
  br i1 %cmp16, label %land.lhs.true, label %if.else69, !dbg !2667

land.lhs.true:                                    ; preds = %if.then13
  %bf.cast2042 = and i64 %bf.load, 4194304, !dbg !2668
  %tobool21 = icmp eq i64 %bf.cast2042, 0, !dbg !2668
  br i1 %tobool21, label %land.lhs.true22, label %if.else69, !dbg !2669

land.lhs.true22:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2670
  %9 = bitcast %union.tree_node** %type to i64**, !dbg !2670
  %10 = load i64*, i64** %9, align 8, !dbg !2670
  %bf.load24 = load i64, i64* %10, align 8, !dbg !2670
  %bf.cast2643 = and i64 %bf.load24, 65535, !dbg !2671
  %cmp27 = icmp eq i64 %bf.cast2643, 7, !dbg !2671
  br i1 %cmp27, label %land.lhs.true28, label %if.else69, !dbg !2672

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %call29 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call15) #6, !dbg !2673
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2673
  br i1 %tobool30, label %land.lhs.true28.if.else69_crit_edge, label %if.then31, !dbg !2674

land.lhs.true28.if.else69_crit_edge:              ; preds = %land.lhs.true28
  %bf.load71.pre = load i64, i64* %8, align 8, !dbg !2675
  br label %if.else69, !dbg !2674

if.then31:                                        ; preds = %land.lhs.true28
  %cmp32 = icmp eq i32 %call10, 101, !dbg !2677
  %call35 = call i8* @xmalloc(i64 16) #6, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %call35, metadata !2611, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %call35, metadata !2611, metadata !DIExpression()), !dbg !2640
  %lhs = getelementptr inbounds i8, i8* %call35, i64 8, !dbg !2680
  %11 = bitcast i8* %lhs to %union.tree_node**, !dbg !2680
  store %union.tree_node* %call14, %union.tree_node** %11, align 8, !dbg !2680
  %call36 = call i32 @integer_zerop(%union.tree_node* %call15) #6, !dbg !2680
  %tobool37 = icmp ne i32 %call36, 0, !dbg !2680
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !2681

if.then34:                                        ; preds = %if.then31
  call void @llvm.dbg.value(metadata i8* %call35, metadata !2611, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %call35, metadata !2611, metadata !DIExpression()), !dbg !2640
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2682
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2682
  %cond = select i1 %tobool37, %union.tree_node* %12, %union.tree_node* %13, !dbg !2682
  %rhs = bitcast i8* %call35 to %union.tree_node**, !dbg !2684
  store %union.tree_node* %cond, %union.tree_node** %rhs, align 8, !dbg !2685
  %14 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !2607, metadata !DIExpression()), !dbg !2640
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 3, !dbg !2687
  store i8* %call35, i8** %aux, align 8, !dbg !2688
  %call38 = call i8* @xmalloc(i64 16) #6, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %call38, metadata !2611, metadata !DIExpression()), !dbg !2640
  %lhs39 = getelementptr inbounds i8, i8* %call38, i64 8, !dbg !2690
  %15 = bitcast i8* %lhs39 to %union.tree_node**, !dbg !2690
  store %union.tree_node* %call14, %union.tree_node** %15, align 8, !dbg !2691
  %call40 = call i32 @integer_zerop(%union.tree_node* %call15) #6, !dbg !2692
  %tobool41 = icmp eq i32 %call40, 0, !dbg !2692
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2692
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2692
  %cond45 = select i1 %tobool41, %union.tree_node* %17, %union.tree_node* %16, !dbg !2692
  %rhs46 = bitcast i8* %call38 to %union.tree_node**, !dbg !2693
  store %union.tree_node* %cond45, %union.tree_node** %rhs46, align 8, !dbg !2694
  %18 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2610, metadata !DIExpression()), !dbg !2640
  %aux47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i64 0, i32 3, !dbg !2696
  store i8* %call38, i8** %aux47, align 8, !dbg !2697
  br label %cleanup, !dbg !2698

if.else:                                          ; preds = %if.then31
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2699
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2699
  %cond55 = select i1 %tobool37, %union.tree_node* %19, %union.tree_node* %20, !dbg !2699
  %rhs56 = bitcast i8* %call35 to %union.tree_node**, !dbg !2701
  store %union.tree_node* %cond55, %union.tree_node** %rhs56, align 8, !dbg !2702
  %21 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2607, metadata !DIExpression()), !dbg !2640
  %aux57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 3, !dbg !2704
  store i8* %call35, i8** %aux57, align 8, !dbg !2705
  %call58 = call i8* @xmalloc(i64 16) #6, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %call58, metadata !2611, metadata !DIExpression()), !dbg !2640
  %lhs59 = getelementptr inbounds i8, i8* %call58, i64 8, !dbg !2707
  %22 = bitcast i8* %lhs59 to %union.tree_node**, !dbg !2707
  store %union.tree_node* %call14, %union.tree_node** %22, align 8, !dbg !2708
  %call60 = call i32 @integer_zerop(%union.tree_node* %call15) #6, !dbg !2709
  %tobool61 = icmp eq i32 %call60, 0, !dbg !2709
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2709
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2709
  %cond65 = select i1 %tobool61, %union.tree_node* %24, %union.tree_node* %23, !dbg !2709
  %rhs66 = bitcast i8* %call58 to %union.tree_node**, !dbg !2710
  store %union.tree_node* %cond65, %union.tree_node** %rhs66, align 8, !dbg !2711
  %25 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2610, metadata !DIExpression()), !dbg !2640
  %aux67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 3, !dbg !2713
  store i8* %call58, i8** %aux67, align 8, !dbg !2714
  br label %cleanup

if.else69:                                        ; preds = %land.lhs.true28.if.else69_crit_edge, %land.lhs.true, %land.lhs.true22, %if.then13
  %bf.load78 = phi i64 [ %bf.load71.pre, %land.lhs.true28.if.else69_crit_edge ], [ %bf.load, %land.lhs.true ], [ %bf.load, %land.lhs.true22 ], [ %bf.load, %if.then13 ], !dbg !2675
  %bf.cast738 = and i64 %bf.load78, 65535, !dbg !2715
  %cmp74 = icmp eq i64 %bf.cast738, 141, !dbg !2715
  br i1 %cmp74, label %land.lhs.true76, label %cleanup, !dbg !2716

land.lhs.true76:                                  ; preds = %if.else69
  %bf.cast819 = and i64 %bf.load78, 4194304, !dbg !2717
  %tobool82 = icmp eq i64 %bf.cast819, 0, !dbg !2717
  br i1 %tobool82, label %land.lhs.true83, label %cleanup, !dbg !2718

land.lhs.true83:                                  ; preds = %land.lhs.true76
  %call84 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call15) #6, !dbg !2719
  %tobool86 = icmp eq i8 %call84, 0, !dbg !2719
  br i1 %tobool86, label %lor.lhs.false87, label %if.then101, !dbg !2720

lor.lhs.false87:                                  ; preds = %land.lhs.true83
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2721
  %bf.load89 = load i64, i64* %26, align 8, !dbg !2721
  %bf.cast9110 = and i64 %bf.load89, 65535, !dbg !2722
  %cmp92 = icmp eq i64 %bf.cast9110, 141, !dbg !2722
  br i1 %cmp92, label %land.lhs.true94, label %cleanup, !dbg !2723

land.lhs.true94:                                  ; preds = %lor.lhs.false87
  %bf.cast9911 = and i64 %bf.load89, 4194304, !dbg !2724
  %tobool100 = icmp eq i64 %bf.cast9911, 0, !dbg !2724
  br i1 %tobool100, label %if.then101, label %cleanup, !dbg !2725

if.then101:                                       ; preds = %land.lhs.true94, %land.lhs.true83
  %type103 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2726
  %27 = bitcast %union.tree_node** %type103 to i64**, !dbg !2726
  %28 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load105 = load i64, i64* %28, align 8, !dbg !2726
  %bf.cast10712 = and i64 %bf.load105, 65535, !dbg !2726
  %cmp108 = icmp eq i64 %bf.cast10712, 14, !dbg !2726
  br i1 %cmp108, label %cond.true110, label %cond.false114, !dbg !2726

cond.true110:                                     ; preds = %if.then101
  %.cast = bitcast i64* %28 to %union.tree_node*, !dbg !2726
  %call113 = call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2726
  br label %cond.end121, !dbg !2726

cond.false114:                                    ; preds = %if.then101
  %type117 = bitcast i64* %28 to %struct.tree_type*, !dbg !2726
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type117, i64 0, i32 6, !dbg !2726
  %bf.load118 = load i32, i32* %mode, align 4, !dbg !2726
  %bf.lshr119 = lshr i32 %bf.load118, 16, !dbg !2726
  %bf.clear120 = and i32 %bf.lshr119, 255, !dbg !2726
  br label %cond.end121, !dbg !2726

cond.end121:                                      ; preds = %cond.false114, %cond.true110
  %cond122 = phi i32 [ %call113, %cond.true110 ], [ %bf.clear120, %cond.false114 ], !dbg !2726
  %idxprom = zext i32 %cond122 to i64, !dbg !2726
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2726
  %29 = load i8, i8* %arrayidx, align 1, !dbg !2726
  %cmp124 = icmp eq i8 %29, 8, !dbg !2726
  br i1 %cmp124, label %land.lhs.true210, label %lor.lhs.false126, !dbg !2726

lor.lhs.false126:                                 ; preds = %cond.end121
  %30 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load130 = load i64, i64* %30, align 8, !dbg !2726
  %bf.cast13213 = and i64 %bf.load130, 65535, !dbg !2726
  %cmp133 = icmp eq i64 %bf.cast13213, 14, !dbg !2726
  br i1 %cmp133, label %cond.true135, label %cond.false139, !dbg !2726

cond.true135:                                     ; preds = %lor.lhs.false126
  %.cast14 = bitcast i64* %30 to %union.tree_node*, !dbg !2726
  %call138 = call i32 @vector_type_mode(%union.tree_node* %.cast14) #6, !dbg !2726
  br label %cond.end147, !dbg !2726

cond.false139:                                    ; preds = %lor.lhs.false126
  %type142 = bitcast i64* %30 to %struct.tree_type*, !dbg !2726
  %mode143 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type142, i64 0, i32 6, !dbg !2726
  %bf.load144 = load i32, i32* %mode143, align 4, !dbg !2726
  %bf.lshr145 = lshr i32 %bf.load144, 16, !dbg !2726
  %bf.clear146 = and i32 %bf.lshr145, 255, !dbg !2726
  br label %cond.end147, !dbg !2726

cond.end147:                                      ; preds = %cond.false139, %cond.true135
  %cond148 = phi i32 [ %call138, %cond.true135 ], [ %bf.clear146, %cond.false139 ], !dbg !2726
  %idxprom149 = zext i32 %cond148 to i64, !dbg !2726
  %arrayidx150 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom149, !dbg !2726
  %31 = load i8, i8* %arrayidx150, align 1, !dbg !2726
  %cmp152 = icmp eq i8 %31, 9, !dbg !2726
  br i1 %cmp152, label %land.lhs.true210, label %lor.lhs.false154, !dbg !2726

lor.lhs.false154:                                 ; preds = %cond.end147
  %32 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load158 = load i64, i64* %32, align 8, !dbg !2726
  %bf.cast16015 = and i64 %bf.load158, 65535, !dbg !2726
  %cmp161 = icmp eq i64 %bf.cast16015, 14, !dbg !2726
  br i1 %cmp161, label %cond.true163, label %cond.false167, !dbg !2726

cond.true163:                                     ; preds = %lor.lhs.false154
  %.cast16 = bitcast i64* %32 to %union.tree_node*, !dbg !2726
  %call166 = call i32 @vector_type_mode(%union.tree_node* %.cast16) #6, !dbg !2726
  br label %cond.end175, !dbg !2726

cond.false167:                                    ; preds = %lor.lhs.false154
  %type170 = bitcast i64* %32 to %struct.tree_type*, !dbg !2726
  %mode171 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type170, i64 0, i32 6, !dbg !2726
  %bf.load172 = load i32, i32* %mode171, align 4, !dbg !2726
  %bf.lshr173 = lshr i32 %bf.load172, 16, !dbg !2726
  %bf.clear174 = and i32 %bf.lshr173, 255, !dbg !2726
  br label %cond.end175, !dbg !2726

cond.end175:                                      ; preds = %cond.false167, %cond.true163
  %cond176 = phi i32 [ %call166, %cond.true163 ], [ %bf.clear174, %cond.false167 ], !dbg !2726
  %idxprom177 = zext i32 %cond176 to i64, !dbg !2726
  %arrayidx178 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom177, !dbg !2726
  %33 = load i8, i8* %arrayidx178, align 1, !dbg !2726
  %cmp180 = icmp eq i8 %33, 11, !dbg !2726
  br i1 %cmp180, label %land.lhs.true210, label %lor.lhs.false182, !dbg !2726

lor.lhs.false182:                                 ; preds = %cond.end175
  %34 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load186 = load i64, i64* %34, align 8, !dbg !2726
  %bf.cast18817 = and i64 %bf.load186, 65535, !dbg !2726
  %cmp189 = icmp eq i64 %bf.cast18817, 14, !dbg !2726
  br i1 %cmp189, label %cond.true191, label %cond.false195, !dbg !2726

cond.true191:                                     ; preds = %lor.lhs.false182
  %.cast18 = bitcast i64* %34 to %union.tree_node*, !dbg !2726
  %call194 = call i32 @vector_type_mode(%union.tree_node* %.cast18) #6, !dbg !2726
  br label %cond.end203, !dbg !2726

cond.false195:                                    ; preds = %lor.lhs.false182
  %type198 = bitcast i64* %34 to %struct.tree_type*, !dbg !2726
  %mode199 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type198, i64 0, i32 6, !dbg !2726
  %bf.load200 = load i32, i32* %mode199, align 4, !dbg !2726
  %bf.lshr201 = lshr i32 %bf.load200, 16, !dbg !2726
  %bf.clear202 = and i32 %bf.lshr201, 255, !dbg !2726
  br label %cond.end203, !dbg !2726

cond.end203:                                      ; preds = %cond.false195, %cond.true191
  %cond204 = phi i32 [ %call194, %cond.true191 ], [ %bf.clear202, %cond.false195 ], !dbg !2726
  %idxprom205 = zext i32 %cond204 to i64, !dbg !2726
  %arrayidx206 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom205, !dbg !2726
  %35 = load i8, i8* %arrayidx206, align 1, !dbg !2726
  %cmp208 = icmp eq i8 %35, 17, !dbg !2726
  br i1 %cmp208, label %land.lhs.true210, label %if.end557, !dbg !2726

land.lhs.true210:                                 ; preds = %cond.end203, %cond.end175, %cond.end147, %cond.end121
  %36 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load214 = load i64, i64* %36, align 8, !dbg !2726
  %bf.cast21619 = and i64 %bf.load214, 65535, !dbg !2726
  %cmp217 = icmp eq i64 %bf.cast21619, 14, !dbg !2726
  br i1 %cmp217, label %cond.true219, label %cond.false223, !dbg !2726

cond.true219:                                     ; preds = %land.lhs.true210
  %.cast20 = bitcast i64* %36 to %union.tree_node*, !dbg !2726
  %call222 = call i32 @vector_type_mode(%union.tree_node* %.cast20) #6, !dbg !2726
  br label %cond.end231, !dbg !2726

cond.false223:                                    ; preds = %land.lhs.true210
  %type226 = bitcast i64* %36 to %struct.tree_type*, !dbg !2726
  %mode227 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type226, i64 0, i32 6, !dbg !2726
  %bf.load228 = load i32, i32* %mode227, align 4, !dbg !2726
  %bf.lshr229 = lshr i32 %bf.load228, 16, !dbg !2726
  %bf.clear230 = and i32 %bf.lshr229, 255, !dbg !2726
  br label %cond.end231, !dbg !2726

cond.end231:                                      ; preds = %cond.false223, %cond.true219
  %cond232 = phi i32 [ %call222, %cond.true219 ], [ %bf.clear230, %cond.false223 ], !dbg !2726
  %idxprom233 = zext i32 %cond232 to i64, !dbg !2726
  %arrayidx234 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom233, !dbg !2726
  %37 = load i8, i8* %arrayidx234, align 1, !dbg !2726
  %cmp236 = icmp eq i8 %37, 8, !dbg !2726
  br i1 %cmp236, label %cond.true266, label %lor.lhs.false238, !dbg !2726

lor.lhs.false238:                                 ; preds = %cond.end231
  %38 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load242 = load i64, i64* %38, align 8, !dbg !2726
  %bf.cast24421 = and i64 %bf.load242, 65535, !dbg !2726
  %cmp245 = icmp eq i64 %bf.cast24421, 14, !dbg !2726
  br i1 %cmp245, label %cond.true247, label %cond.false251, !dbg !2726

cond.true247:                                     ; preds = %lor.lhs.false238
  %.cast22 = bitcast i64* %38 to %union.tree_node*, !dbg !2726
  %call250 = call i32 @vector_type_mode(%union.tree_node* %.cast22) #6, !dbg !2726
  br label %cond.end259, !dbg !2726

cond.false251:                                    ; preds = %lor.lhs.false238
  %type254 = bitcast i64* %38 to %struct.tree_type*, !dbg !2726
  %mode255 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type254, i64 0, i32 6, !dbg !2726
  %bf.load256 = load i32, i32* %mode255, align 4, !dbg !2726
  %bf.lshr257 = lshr i32 %bf.load256, 16, !dbg !2726
  %bf.clear258 = and i32 %bf.lshr257, 255, !dbg !2726
  br label %cond.end259, !dbg !2726

cond.end259:                                      ; preds = %cond.false251, %cond.true247
  %cond260 = phi i32 [ %call250, %cond.true247 ], [ %bf.clear258, %cond.false251 ], !dbg !2726
  %idxprom261 = zext i32 %cond260 to i64, !dbg !2726
  %arrayidx262 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom261, !dbg !2726
  %39 = load i8, i8* %arrayidx262, align 1, !dbg !2726
  %cmp264 = icmp eq i8 %39, 9, !dbg !2726
  br i1 %cmp264, label %cond.true266, label %cond.false289, !dbg !2726

cond.true266:                                     ; preds = %cond.end259, %cond.end231
  %40 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load270 = load i64, i64* %40, align 8, !dbg !2726
  %bf.cast27240 = and i64 %bf.load270, 65535, !dbg !2726
  %cmp273 = icmp eq i64 %bf.cast27240, 14, !dbg !2726
  br i1 %cmp273, label %cond.true275, label %cond.false279, !dbg !2726

cond.true275:                                     ; preds = %cond.true266
  %.cast41 = bitcast i64* %40 to %union.tree_node*, !dbg !2726
  %call278 = call i32 @vector_type_mode(%union.tree_node* %.cast41) #6, !dbg !2726
  br label %cond.end315, !dbg !2726

cond.false279:                                    ; preds = %cond.true266
  %type282 = bitcast i64* %40 to %struct.tree_type*, !dbg !2726
  %mode283 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type282, i64 0, i32 6, !dbg !2726
  %bf.load284 = load i32, i32* %mode283, align 4, !dbg !2726
  %bf.lshr285 = lshr i32 %bf.load284, 16, !dbg !2726
  %bf.clear286 = and i32 %bf.lshr285, 255, !dbg !2726
  br label %cond.end315, !dbg !2726

cond.false289:                                    ; preds = %cond.end259
  %41 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load293 = load i64, i64* %41, align 8, !dbg !2726
  %bf.cast29523 = and i64 %bf.load293, 65535, !dbg !2726
  %cmp296 = icmp eq i64 %bf.cast29523, 14, !dbg !2726
  br i1 %cmp296, label %cond.true298, label %cond.false302, !dbg !2726

cond.true298:                                     ; preds = %cond.false289
  %.cast24 = bitcast i64* %41 to %union.tree_node*, !dbg !2726
  %call301 = call i32 @vector_type_mode(%union.tree_node* %.cast24) #6, !dbg !2726
  br label %cond.end310, !dbg !2726

cond.false302:                                    ; preds = %cond.false289
  %type305 = bitcast i64* %41 to %struct.tree_type*, !dbg !2726
  %mode306 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type305, i64 0, i32 6, !dbg !2726
  %bf.load307 = load i32, i32* %mode306, align 4, !dbg !2726
  %bf.lshr308 = lshr i32 %bf.load307, 16, !dbg !2726
  %bf.clear309 = and i32 %bf.lshr308, 255, !dbg !2726
  br label %cond.end310, !dbg !2726

cond.end310:                                      ; preds = %cond.false302, %cond.true298
  %cond311 = phi i32 [ %call301, %cond.true298 ], [ %bf.clear309, %cond.false302 ], !dbg !2726
  %idxprom312 = zext i32 %cond311 to i64, !dbg !2726
  %arrayidx313 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom312, !dbg !2726
  %42 = load i8, i8* %arrayidx313, align 1, !dbg !2726
  %conv314 = zext i8 %42 to i32, !dbg !2726
  br label %cond.end315, !dbg !2726

cond.end315:                                      ; preds = %cond.true275, %cond.false279, %cond.end310
  %cond316 = phi i32 [ %conv314, %cond.end310 ], [ %call278, %cond.true275 ], [ %bf.clear286, %cond.false279 ], !dbg !2726
  %idxprom317 = zext i32 %cond316 to i64, !dbg !2726
  %arrayidx318 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom317, !dbg !2726
  %43 = load i8, i8* %arrayidx318, align 1, !dbg !2726
  %cmp320 = icmp eq i8 %43, 9, !dbg !2726
  %44 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load326 = load i64, i64* %44, align 8, !dbg !2726
  %bf.cast32825 = and i64 %bf.load326, 65535, !dbg !2726
  %cmp329 = icmp eq i64 %bf.cast32825, 14, !dbg !2726
  %.cast26 = bitcast i64* %44 to %union.tree_node*, !dbg !2726
  br i1 %cmp320, label %cond.true322, label %cond.false429, !dbg !2726

cond.true322:                                     ; preds = %cond.end315
  br i1 %cmp329, label %cond.true331, label %cond.false335, !dbg !2726

cond.true331:                                     ; preds = %cond.true322
  %call334 = call i32 @vector_type_mode(%union.tree_node* %.cast26) #6, !dbg !2726
  br label %cond.end343, !dbg !2726

cond.false335:                                    ; preds = %cond.true322
  %type338 = bitcast i64* %44 to %struct.tree_type*, !dbg !2726
  %mode339 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type338, i64 0, i32 6, !dbg !2726
  %bf.load340 = load i32, i32* %mode339, align 4, !dbg !2726
  %bf.lshr341 = lshr i32 %bf.load340, 16, !dbg !2726
  %bf.clear342 = and i32 %bf.lshr341, 255, !dbg !2726
  br label %cond.end343, !dbg !2726

cond.end343:                                      ; preds = %cond.false335, %cond.true331
  %cond344 = phi i32 [ %call334, %cond.true331 ], [ %bf.clear342, %cond.false335 ], !dbg !2726
  %idxprom345 = zext i32 %cond344 to i64, !dbg !2726
  %arrayidx346 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom345, !dbg !2726
  %45 = load i8, i8* %arrayidx346, align 1, !dbg !2726
  %cmp348 = icmp eq i8 %45, 8, !dbg !2726
  br i1 %cmp348, label %cond.true378, label %lor.lhs.false350, !dbg !2726

lor.lhs.false350:                                 ; preds = %cond.end343
  %46 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load354 = load i64, i64* %46, align 8, !dbg !2726
  %bf.cast35634 = and i64 %bf.load354, 65535, !dbg !2726
  %cmp357 = icmp eq i64 %bf.cast35634, 14, !dbg !2726
  br i1 %cmp357, label %cond.true359, label %cond.false363, !dbg !2726

cond.true359:                                     ; preds = %lor.lhs.false350
  %.cast35 = bitcast i64* %46 to %union.tree_node*, !dbg !2726
  %call362 = call i32 @vector_type_mode(%union.tree_node* %.cast35) #6, !dbg !2726
  br label %cond.end371, !dbg !2726

cond.false363:                                    ; preds = %lor.lhs.false350
  %type366 = bitcast i64* %46 to %struct.tree_type*, !dbg !2726
  %mode367 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type366, i64 0, i32 6, !dbg !2726
  %bf.load368 = load i32, i32* %mode367, align 4, !dbg !2726
  %bf.lshr369 = lshr i32 %bf.load368, 16, !dbg !2726
  %bf.clear370 = and i32 %bf.lshr369, 255, !dbg !2726
  br label %cond.end371, !dbg !2726

cond.end371:                                      ; preds = %cond.false363, %cond.true359
  %cond372 = phi i32 [ %call362, %cond.true359 ], [ %bf.clear370, %cond.false363 ], !dbg !2726
  %idxprom373 = zext i32 %cond372 to i64, !dbg !2726
  %arrayidx374 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom373, !dbg !2726
  %47 = load i8, i8* %arrayidx374, align 1, !dbg !2726
  %cmp376 = icmp eq i8 %47, 9, !dbg !2726
  br i1 %cmp376, label %cond.true378, label %cond.false401, !dbg !2726

cond.true378:                                     ; preds = %cond.end371, %cond.end343
  %48 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load382 = load i64, i64* %48, align 8, !dbg !2726
  %bf.cast38438 = and i64 %bf.load382, 65535, !dbg !2726
  %cmp385 = icmp eq i64 %bf.cast38438, 14, !dbg !2726
  br i1 %cmp385, label %cond.true387, label %cond.false391, !dbg !2726

cond.true387:                                     ; preds = %cond.true378
  %.cast39 = bitcast i64* %48 to %union.tree_node*, !dbg !2726
  %call390 = call i32 @vector_type_mode(%union.tree_node* %.cast39) #6, !dbg !2726
  br label %cond.end427, !dbg !2726

cond.false391:                                    ; preds = %cond.true378
  %type394 = bitcast i64* %48 to %struct.tree_type*, !dbg !2726
  %mode395 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type394, i64 0, i32 6, !dbg !2726
  %bf.load396 = load i32, i32* %mode395, align 4, !dbg !2726
  %bf.lshr397 = lshr i32 %bf.load396, 16, !dbg !2726
  %bf.clear398 = and i32 %bf.lshr397, 255, !dbg !2726
  br label %cond.end427, !dbg !2726

cond.false401:                                    ; preds = %cond.end371
  %49 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load405 = load i64, i64* %49, align 8, !dbg !2726
  %bf.cast40736 = and i64 %bf.load405, 65535, !dbg !2726
  %cmp408 = icmp eq i64 %bf.cast40736, 14, !dbg !2726
  br i1 %cmp408, label %cond.true410, label %cond.false414, !dbg !2726

cond.true410:                                     ; preds = %cond.false401
  %.cast37 = bitcast i64* %49 to %union.tree_node*, !dbg !2726
  %call413 = call i32 @vector_type_mode(%union.tree_node* %.cast37) #6, !dbg !2726
  br label %cond.end422, !dbg !2726

cond.false414:                                    ; preds = %cond.false401
  %type417 = bitcast i64* %49 to %struct.tree_type*, !dbg !2726
  %mode418 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type417, i64 0, i32 6, !dbg !2726
  %bf.load419 = load i32, i32* %mode418, align 4, !dbg !2726
  %bf.lshr420 = lshr i32 %bf.load419, 16, !dbg !2726
  %bf.clear421 = and i32 %bf.lshr420, 255, !dbg !2726
  br label %cond.end422, !dbg !2726

cond.end422:                                      ; preds = %cond.false414, %cond.true410
  %cond423 = phi i32 [ %call413, %cond.true410 ], [ %bf.clear421, %cond.false414 ], !dbg !2726
  %idxprom424 = zext i32 %cond423 to i64, !dbg !2726
  %arrayidx425 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom424, !dbg !2726
  %50 = load i8, i8* %arrayidx425, align 1, !dbg !2726
  %conv426 = zext i8 %50 to i32, !dbg !2726
  br label %cond.end427, !dbg !2726

cond.end427:                                      ; preds = %cond.true387, %cond.false391, %cond.end422
  %cond428 = phi i32 [ %conv426, %cond.end422 ], [ %call390, %cond.true387 ], [ %bf.clear398, %cond.false391 ], !dbg !2726
  br label %cond.end537, !dbg !2726

cond.false429:                                    ; preds = %cond.end315
  br i1 %cmp329, label %cond.true438, label %cond.false442, !dbg !2726

cond.true438:                                     ; preds = %cond.false429
  %call441 = call i32 @vector_type_mode(%union.tree_node* %.cast26) #6, !dbg !2726
  br label %cond.end450, !dbg !2726

cond.false442:                                    ; preds = %cond.false429
  %type445 = bitcast i64* %44 to %struct.tree_type*, !dbg !2726
  %mode446 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type445, i64 0, i32 6, !dbg !2726
  %bf.load447 = load i32, i32* %mode446, align 4, !dbg !2726
  %bf.lshr448 = lshr i32 %bf.load447, 16, !dbg !2726
  %bf.clear449 = and i32 %bf.lshr448, 255, !dbg !2726
  br label %cond.end450, !dbg !2726

cond.end450:                                      ; preds = %cond.false442, %cond.true438
  %cond451 = phi i32 [ %call441, %cond.true438 ], [ %bf.clear449, %cond.false442 ], !dbg !2726
  %idxprom452 = zext i32 %cond451 to i64, !dbg !2726
  %arrayidx453 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom452, !dbg !2726
  %51 = load i8, i8* %arrayidx453, align 1, !dbg !2726
  %cmp455 = icmp eq i8 %51, 8, !dbg !2726
  br i1 %cmp455, label %cond.true485, label %lor.lhs.false457, !dbg !2726

lor.lhs.false457:                                 ; preds = %cond.end450
  %52 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load461 = load i64, i64* %52, align 8, !dbg !2726
  %bf.cast46327 = and i64 %bf.load461, 65535, !dbg !2726
  %cmp464 = icmp eq i64 %bf.cast46327, 14, !dbg !2726
  br i1 %cmp464, label %cond.true466, label %cond.false470, !dbg !2726

cond.true466:                                     ; preds = %lor.lhs.false457
  %.cast28 = bitcast i64* %52 to %union.tree_node*, !dbg !2726
  %call469 = call i32 @vector_type_mode(%union.tree_node* %.cast28) #6, !dbg !2726
  br label %cond.end478, !dbg !2726

cond.false470:                                    ; preds = %lor.lhs.false457
  %type473 = bitcast i64* %52 to %struct.tree_type*, !dbg !2726
  %mode474 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type473, i64 0, i32 6, !dbg !2726
  %bf.load475 = load i32, i32* %mode474, align 4, !dbg !2726
  %bf.lshr476 = lshr i32 %bf.load475, 16, !dbg !2726
  %bf.clear477 = and i32 %bf.lshr476, 255, !dbg !2726
  br label %cond.end478, !dbg !2726

cond.end478:                                      ; preds = %cond.false470, %cond.true466
  %cond479 = phi i32 [ %call469, %cond.true466 ], [ %bf.clear477, %cond.false470 ], !dbg !2726
  %idxprom480 = zext i32 %cond479 to i64, !dbg !2726
  %arrayidx481 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom480, !dbg !2726
  %53 = load i8, i8* %arrayidx481, align 1, !dbg !2726
  %cmp483 = icmp eq i8 %53, 9, !dbg !2726
  br i1 %cmp483, label %cond.true485, label %cond.false508, !dbg !2726

cond.true485:                                     ; preds = %cond.end478, %cond.end450
  %54 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load489 = load i64, i64* %54, align 8, !dbg !2726
  %bf.cast49132 = and i64 %bf.load489, 65535, !dbg !2726
  %cmp492 = icmp eq i64 %bf.cast49132, 14, !dbg !2726
  br i1 %cmp492, label %cond.true494, label %cond.false498, !dbg !2726

cond.true494:                                     ; preds = %cond.true485
  %.cast33 = bitcast i64* %54 to %union.tree_node*, !dbg !2726
  %call497 = call i32 @vector_type_mode(%union.tree_node* %.cast33) #6, !dbg !2726
  br label %cond.end534, !dbg !2726

cond.false498:                                    ; preds = %cond.true485
  %type501 = bitcast i64* %54 to %struct.tree_type*, !dbg !2726
  %mode502 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type501, i64 0, i32 6, !dbg !2726
  %bf.load503 = load i32, i32* %mode502, align 4, !dbg !2726
  %bf.lshr504 = lshr i32 %bf.load503, 16, !dbg !2726
  %bf.clear505 = and i32 %bf.lshr504, 255, !dbg !2726
  br label %cond.end534, !dbg !2726

cond.false508:                                    ; preds = %cond.end478
  %55 = load i64*, i64** %27, align 8, !dbg !2726
  %bf.load512 = load i64, i64* %55, align 8, !dbg !2726
  %bf.cast51429 = and i64 %bf.load512, 65535, !dbg !2726
  %cmp515 = icmp eq i64 %bf.cast51429, 14, !dbg !2726
  br i1 %cmp515, label %cond.true517, label %cond.false521, !dbg !2726

cond.true517:                                     ; preds = %cond.false508
  %.cast30 = bitcast i64* %55 to %union.tree_node*, !dbg !2726
  %call520 = call i32 @vector_type_mode(%union.tree_node* %.cast30) #6, !dbg !2726
  br label %cond.end529, !dbg !2726

cond.false521:                                    ; preds = %cond.false508
  %type524 = bitcast i64* %55 to %struct.tree_type*, !dbg !2726
  %mode525 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type524, i64 0, i32 6, !dbg !2726
  %bf.load526 = load i32, i32* %mode525, align 4, !dbg !2726
  %bf.lshr527 = lshr i32 %bf.load526, 16, !dbg !2726
  %bf.clear528 = and i32 %bf.lshr527, 255, !dbg !2726
  br label %cond.end529, !dbg !2726

cond.end529:                                      ; preds = %cond.false521, %cond.true517
  %cond530 = phi i32 [ %call520, %cond.true517 ], [ %bf.clear528, %cond.false521 ], !dbg !2726
  %idxprom531 = zext i32 %cond530 to i64, !dbg !2726
  %arrayidx532 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom531, !dbg !2726
  %56 = load i8, i8* %arrayidx532, align 1, !dbg !2726
  %conv533 = zext i8 %56 to i32, !dbg !2726
  br label %cond.end534, !dbg !2726

cond.end534:                                      ; preds = %cond.true494, %cond.false498, %cond.end529
  %cond535 = phi i32 [ %conv533, %cond.end529 ], [ %call497, %cond.true494 ], [ %bf.clear505, %cond.false498 ], !dbg !2726
  br label %cond.end537, !dbg !2726

cond.end537:                                      ; preds = %cond.end534, %cond.end427
  %cond538.in = phi i32 [ %cond428, %cond.end427 ], [ %cond535, %cond.end534 ]
  %cond538 = add i32 %cond538.in, -38, !dbg !2726
  %idxprom539 = zext i32 %cond538 to i64, !dbg !2726
  %arrayidx540 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom539, !dbg !2726
  %57 = load %struct.real_format*, %struct.real_format** %arrayidx540, align 8, !dbg !2726
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %57, i64 0, i32 14, !dbg !2726
  %58 = load i8, i8* %has_signed_zero, align 1, !dbg !2726
  %tobool542 = icmp ne i8 %58, 0, !dbg !2726
  %59 = load i32, i32* @flag_signed_zeros, align 4, !dbg !2726
  %tobool544 = icmp ne i32 %59, 0, !dbg !2726
  %or.cond = and i1 %tobool542, %tobool544, !dbg !2726
  br i1 %or.cond, label %land.lhs.true545, label %if.end557, !dbg !2726

land.lhs.true545:                                 ; preds = %cond.end537
  %60 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2729
  %bf.load547 = load i64, i64* %60, align 8, !dbg !2729
  %bf.cast54931 = and i64 %bf.load547, 65535, !dbg !2730
  %cmp550 = icmp eq i64 %bf.cast54931, 24, !dbg !2730
  br i1 %cmp550, label %lor.lhs.false552, label %cleanup, !dbg !2731

lor.lhs.false552:                                 ; preds = %land.lhs.true545
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2732
  %61 = bitcast i32* %real_cst_ptr to %struct.real_value**, !dbg !2732
  %62 = load %struct.real_value*, %struct.real_value** %61, align 8, !dbg !2732
  %call553 = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull @dconst0, %struct.real_value* %62) #6, !dbg !2732
  %tobool555 = icmp eq i8 %call553, 0, !dbg !2732
  br i1 %tobool555, label %if.end557, label %cleanup, !dbg !2733

if.end557:                                        ; preds = %lor.lhs.false552, %cond.end537, %cond.end203
  %call558 = call i8* @xmalloc(i64 16) #6, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %call558, metadata !2611, metadata !DIExpression()), !dbg !2640
  %lhs559 = getelementptr inbounds i8, i8* %call558, i64 8, !dbg !2735
  %63 = bitcast i8* %lhs559 to %union.tree_node**, !dbg !2735
  store %union.tree_node* %call14, %union.tree_node** %63, align 8, !dbg !2736
  %rhs560 = bitcast i8* %call558 to %union.tree_node**, !dbg !2737
  store %union.tree_node* %call15, %union.tree_node** %rhs560, align 8, !dbg !2738
  %cmp561 = icmp eq i32 %call10, 101, !dbg !2739
  br i1 %cmp561, label %if.then563, label %if.else565, !dbg !2741

if.then563:                                       ; preds = %if.end557
  %64 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !2742
  call void @llvm.dbg.value(metadata %struct.edge_def* %64, metadata !2607, metadata !DIExpression()), !dbg !2640
  %aux564 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i64 0, i32 3, !dbg !2743
  store i8* %call558, i8** %aux564, align 8, !dbg !2744
  br label %cleanup, !dbg !2742

if.else565:                                       ; preds = %if.end557
  %65 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.edge_def* %65, metadata !2610, metadata !DIExpression()), !dbg !2640
  %aux566 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i64 0, i32 3, !dbg !2746
  store i8* %call558, i8** %aux566, align 8, !dbg !2747
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false552, %land.lhs.true545, %land.lhs.true94, %land.lhs.true76, %if.else, %if.then34, %if.then563, %if.else565, %lor.lhs.false87, %if.else69
  %cleanup.dest.slot.0 = phi i32 [ 4, %lor.lhs.false552 ], [ 4, %land.lhs.true545 ], [ 0, %if.else69 ], [ 0, %land.lhs.true76 ], [ 0, %lor.lhs.false87 ], [ 0, %land.lhs.true94 ], [ 0, %if.else565 ], [ 0, %if.then563 ], [ 0, %if.then34 ], [ 0, %if.else ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond2, label %if.end571, label %cleanup572

if.end571:                                        ; preds = %if.then9, %cleanup
  br label %cleanup572, !dbg !2748

cleanup572:                                       ; preds = %cleanup, %if.end571
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end571 ], !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !2748
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end679, label %cleanup680

if.else578:                                       ; preds = %if.end6
  %call579 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2750
  %cmp580 = icmp eq i32 %call579, 5, !dbg !2751
  br i1 %cmp580, label %if.then582, label %if.end679, !dbg !2752

if.then582:                                       ; preds = %if.else578
  %call584 = call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2753
  call void @llvm.dbg.value(metadata %union.tree_node* %call584, metadata !2617, metadata !DIExpression()), !dbg !2754
  %66 = getelementptr inbounds %union.tree_node, %union.tree_node* %call584, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2755
  %bf.load586 = load i64, i64* %66, align 8, !dbg !2755
  %bf.cast5885 = and i64 %bf.load586, 65535, !dbg !2756
  %cmp589 = icmp eq i64 %bf.cast5885, 141, !dbg !2756
  br i1 %cmp589, label %land.lhs.true591, label %if.end679, !dbg !2757

land.lhs.true591:                                 ; preds = %if.then582
  %bf.cast5966 = and i64 %bf.load586, 4194304, !dbg !2758
  %tobool597 = icmp eq i64 %bf.cast5966, 0, !dbg !2758
  br i1 %tobool597, label %if.then598, label %if.end679, !dbg !2759

if.then598:                                       ; preds = %land.lhs.true591
  %call599 = call fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %call599, metadata !2623, metadata !DIExpression()), !dbg !2761
  %67 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2762
  %cfg601 = getelementptr inbounds %struct.function, %struct.function* %67, i64 0, i32 1, !dbg !2762
  %68 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg601, align 8, !dbg !2762
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %68, i64 0, i32 5, !dbg !2762
  %69 = load i32, i32* %x_last_basic_block, align 8, !dbg !2762
  %conv602 = sext i32 %69 to i64, !dbg !2762
  %call603 = call i8* @xcalloc(i64 %conv602, i64 8) #6, !dbg !2762
  %70 = bitcast i8* %call603 to %union.tree_node**, !dbg !2762
  call void @llvm.dbg.value(metadata %union.tree_node** %70, metadata !2624, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2761
  br label %for.cond604, !dbg !2763

for.cond604:                                      ; preds = %for.inc, %if.then598
  %i.0 = phi i32 [ 0, %if.then598 ], [ %inc, %for.inc ], !dbg !2764
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2620, metadata !DIExpression()), !dbg !2761
  %cmp605 = icmp slt i32 %i.0, %call599, !dbg !2765
  br i1 %cmp605, label %for.body607, label %for.cond635.preheader, !dbg !2766

for.cond635.preheader:                            ; preds = %for.cond604
  %type650 = getelementptr inbounds %union.tree_node, %union.tree_node* %call584, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2767
  br label %for.cond635, !dbg !2768

for.body607:                                      ; preds = %for.cond604
  %call608 = call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* nonnull %call3, i32 %i.0) #8, !dbg !2769
  call void @llvm.dbg.value(metadata %union.tree_node* %call608, metadata !2625, metadata !DIExpression()), !dbg !2770
  %71 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2771
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call608, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2771
  %arrayidx611 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2771
  %72 = load %union.tree_node*, %union.tree_node** %arrayidx611, align 8, !dbg !2771
  %call612 = call %struct.basic_block_def* @label_to_block_fn(%struct.function* %71, %union.tree_node* %72) #6, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call612, metadata !2629, metadata !DIExpression()), !dbg !2770
  %arrayidx615 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2772
  %73 = load %union.tree_node*, %union.tree_node** %arrayidx615, align 8, !dbg !2772
  %tobool616 = icmp eq %union.tree_node* %73, null, !dbg !2772
  br i1 %tobool616, label %lor.lhs.false617, label %if.then626, !dbg !2774

lor.lhs.false617:                                 ; preds = %for.body607
  %74 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2775
  %tobool621 = icmp eq %union.tree_node* %74, null, !dbg !2775
  br i1 %tobool621, label %if.then626, label %lor.lhs.false622, !dbg !2776

lor.lhs.false622:                                 ; preds = %lor.lhs.false617
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call612, i64 0, i32 9, !dbg !2777
  %75 = load i32, i32* %index, align 8, !dbg !2777
  %idxprom623 = sext i32 %75 to i64, !dbg !2778
  %arrayidx624 = getelementptr inbounds %union.tree_node*, %union.tree_node** %70, i64 %idxprom623, !dbg !2778
  %76 = load %union.tree_node*, %union.tree_node** %arrayidx624, align 8, !dbg !2778
  %tobool625 = icmp eq %union.tree_node* %76, null, !dbg !2778
  br i1 %tobool625, label %if.else630, label %if.then626, !dbg !2779

if.then626:                                       ; preds = %lor.lhs.false622, %lor.lhs.false617, %for.body607
  %77 = load i64, i64* bitcast ([131 x %union.tree_node*]* @global_trees to i64*), align 16, !dbg !2780
  %index627 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call612, i64 0, i32 9, !dbg !2781
  %78 = load i32, i32* %index627, align 8, !dbg !2781
  %idxprom628 = sext i32 %78 to i64, !dbg !2782
  %arrayidx629 = getelementptr inbounds %union.tree_node*, %union.tree_node** %70, i64 %idxprom628, !dbg !2782
  %79 = bitcast %union.tree_node** %arrayidx629 to i64*, !dbg !2783
  store i64 %77, i64* %79, align 8, !dbg !2783
  br label %for.inc, !dbg !2782

if.else630:                                       ; preds = %lor.lhs.false622
  store %union.tree_node* %call608, %union.tree_node** %arrayidx624, align 8, !dbg !2784
  br label %for.inc

for.inc:                                          ; preds = %if.then626, %if.else630
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2620, metadata !DIExpression()), !dbg !2761
  br label %for.cond604, !dbg !2786, !llvm.loop !2787

for.cond635:                                      ; preds = %for.cond635.preheader, %for.inc674
  %indvars.iv = phi i64 [ 0, %for.cond635.preheader ], [ %indvars.iv.next, %for.inc674 ], !dbg !2789
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2620, metadata !DIExpression()), !dbg !2761
  %80 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2790
  %cfg637 = getelementptr inbounds %struct.function, %struct.function* %80, i64 0, i32 1, !dbg !2790
  %81 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg637, align 8, !dbg !2790
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %81, i64 0, i32 3, !dbg !2790
  %82 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2790
  %83 = sext i32 %82 to i64, !dbg !2791
  %cmp638 = icmp slt i64 %indvars.iv, %83, !dbg !2791
  br i1 %cmp638, label %for.body640, label %for.end676, !dbg !2768

for.body640:                                      ; preds = %for.cond635
  %arrayidx642 = getelementptr inbounds %union.tree_node*, %union.tree_node** %70, i64 %indvars.iv, !dbg !2792
  %84 = load %union.tree_node*, %union.tree_node** %arrayidx642, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata %union.tree_node* %84, metadata !2630, metadata !DIExpression()), !dbg !2793
  %cmp643 = icmp ne %union.tree_node* %84, null, !dbg !2794
  %85 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2795
  %cmp646 = icmp ne %union.tree_node* %84, %85, !dbg !2796
  %or.cond3 = and i1 %cmp643, %cmp646, !dbg !2797
  br i1 %or.cond3, label %if.then648, label %for.inc674, !dbg !2797

if.then648:                                       ; preds = %for.body640
  %86 = load %union.tree_node*, %union.tree_node** %type650, align 8, !dbg !2798
  %operands652 = getelementptr inbounds %union.tree_node, %union.tree_node* %84, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2798
  %87 = load %union.tree_node*, %union.tree_node** %operands652, align 8, !dbg !2798
  %call654 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %86, %union.tree_node* %87) #6, !dbg !2798
  call void @llvm.dbg.value(metadata %union.tree_node* %call654, metadata !2634, metadata !DIExpression()), !dbg !2767
  %call656 = call i8* @xmalloc(i64 16) #6, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %call656, metadata !2637, metadata !DIExpression()), !dbg !2767
  %rhs657 = bitcast i8* %call656 to %union.tree_node**, !dbg !2800
  store %union.tree_node* %call654, %union.tree_node** %rhs657, align 8, !dbg !2801
  %lhs658 = getelementptr inbounds i8, i8* %call656, i64 8, !dbg !2802
  %88 = bitcast i8* %lhs658 to %union.tree_node**, !dbg !2802
  store %union.tree_node* %call584, %union.tree_node** %88, align 8, !dbg !2803
  %89 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2804
  %cfg660 = getelementptr inbounds %struct.function, %struct.function* %89, i64 0, i32 1, !dbg !2804
  %90 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg660, align 8, !dbg !2804
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %90, i64 0, i32 2, !dbg !2804
  %91 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2804
  %tobool661 = icmp eq %struct.VEC_basic_block_gc* %91, null, !dbg !2804
  br i1 %tobool661, label %cond.end668, label %cond.true662, !dbg !2804

cond.true662:                                     ; preds = %if.then648
  %base666 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %91, i64 0, i32 0, !dbg !2804
  br label %cond.end668, !dbg !2804

cond.end668:                                      ; preds = %if.then648, %cond.true662
  %cond669 = phi %struct.VEC_basic_block_base* [ %base666, %cond.true662 ], [ null, %if.then648 ], !dbg !2804
  %92 = trunc i64 %indvars.iv to i32, !dbg !2804
  %call670 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond669, i32 %92) #8, !dbg !2804
  %call671 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %call670) #6, !dbg !2805
  %aux672 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call671, i64 0, i32 3, !dbg !2806
  store i8* %call656, i8** %aux672, align 8, !dbg !2807
  br label %for.inc674, !dbg !2808

for.inc674:                                       ; preds = %for.body640, %cond.end668
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2809
  call void @llvm.dbg.value(metadata i32 undef, metadata !2620, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2761
  br label %for.cond635, !dbg !2810, !llvm.loop !2811

for.end676:                                       ; preds = %for.cond635
  call void @free(i8* %call603) #6, !dbg !2813
  br label %if.end679, !dbg !2814

if.end679:                                        ; preds = %land.lhs.true591, %if.else578, %for.end676, %if.then582, %cleanup572
  br label %cleanup680, !dbg !2815

cleanup680:                                       ; preds = %if.end, %for.body, %cleanup572, %if.end679
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2815
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2641
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2816
  %.pre44 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2641
  br label %for.cond, !dbg !2641, !llvm.loop !2817

for.end686:                                       ; preds = %for.cond
  ret void, !dbg !2819
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @equiv_hash(i8* %p) #5 !dbg !2820 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2822, metadata !DIExpression()), !dbg !2825
  %value1 = bitcast i8* %p to %union.tree_node**, !dbg !2826
  %0 = load %union.tree_node*, %union.tree_node** %value1, align 8, !dbg !2826
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2823, metadata !DIExpression()), !dbg !2825
  %call = tail call i32 @iterative_hash_expr(%union.tree_node* %0, i32 0) #6, !dbg !2827
  ret i32 %call, !dbg !2828
}

; Function Attrs: nounwind uwtable
define internal i32 @equiv_eq(i8* %p1, i8* %p2) #5 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2831, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2832, metadata !DIExpression()), !dbg !2835
  %value = bitcast i8* %p1 to %union.tree_node**, !dbg !2836
  %0 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2833, metadata !DIExpression()), !dbg !2835
  %value3 = bitcast i8* %p2 to %union.tree_node**, !dbg !2837
  %1 = load %union.tree_node*, %union.tree_node** %value3, align 8, !dbg !2837
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2834, metadata !DIExpression()), !dbg !2835
  %call = tail call i32 @operand_equal_p(%union.tree_node* %0, %union.tree_node* %1, i32 0) #6, !dbg !2838
  ret i32 %call, !dbg !2839
}

; Function Attrs: nounwind uwtable
define internal void @equiv_free(i8* %p) #5 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %p, metadata !2843, metadata !DIExpression()), !dbg !2844
  %equivalences = getelementptr inbounds i8, i8* %p, i64 8, !dbg !2845
  %0 = bitcast i8* %equivalences to %struct.VEC_tree_heap**, !dbg !2845
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %0) #8, !dbg !2845
  tail call void @free(i8* %p) #6, !dbg !2846
  ret void, !dbg !2847
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2848 {
entry:
  call void @llvm.dbg.value(metadata i32 2, metadata !2852, metadata !DIExpression()), !dbg !2853
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 2) #6, !dbg !2854
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !2854
  ret %struct.VEC_tree_heap* %0, !dbg !2854
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @uncprop_enter_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #5 !dbg !2855 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2857, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2858, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2867
  %call = tail call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %bb) #6, !dbg !2868
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2859, metadata !DIExpression()), !dbg !2867
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !2869
  br i1 %tobool, label %if.end9, label %if.then, !dbg !2870

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @single_incoming_edge_ignoring_loop_edges(%struct.basic_block_def* %bb) #8, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2860, metadata !DIExpression()), !dbg !2867
  %tobool2 = icmp eq %struct.edge_def* %call1, null, !dbg !2872
  br i1 %tobool2, label %if.end9, label %land.lhs.true, !dbg !2873

land.lhs.true:                                    ; preds = %if.then
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 0, !dbg !2874
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2874
  %cmp = icmp eq %struct.basic_block_def* %0, %call, !dbg !2875
  br i1 %cmp, label %land.lhs.true3, label %if.end9, !dbg !2876

land.lhs.true3:                                   ; preds = %land.lhs.true
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 3, !dbg !2877
  %1 = load i8*, i8** %aux, align 8, !dbg !2877
  %tobool4 = icmp eq i8* %1, null, !dbg !2878
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !2879

if.then5:                                         ; preds = %land.lhs.true3
  call void @llvm.dbg.value(metadata i8* %1, metadata !2862, metadata !DIExpression()), !dbg !2880
  %rhs = bitcast i8* %1 to %union.tree_node**, !dbg !2881
  %2 = load %union.tree_node*, %union.tree_node** %rhs, align 8, !dbg !2881
  %lhs = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2882
  %3 = bitcast i8* %lhs to %union.tree_node**, !dbg !2882
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2882
  tail call fastcc void @record_equiv(%union.tree_node* %2, %union.tree_node* %4) #8, !dbg !2883
  %5 = load %union.tree_node*, %union.tree_node** %rhs, align 8, !dbg !2884
  %call8 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull @equiv_stack, %union.tree_node* %5) #8, !dbg !2884
  call void @llvm.dbg.value(metadata i8 1, metadata !2861, metadata !DIExpression()), !dbg !2867
  br label %if.end9, !dbg !2885

if.end9:                                          ; preds = %land.lhs.true3, %if.then, %entry, %land.lhs.true, %if.then5
  %recorded.1 = phi i1 [ false, %entry ], [ true, %if.then5 ], [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %if.then ]
  br i1 %recorded.1, label %if.end13, label %if.then11, !dbg !2886

if.then11:                                        ; preds = %if.end9
  %call12 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull @equiv_stack, %union.tree_node* null) #8, !dbg !2887
  br label %if.end13, !dbg !2887

if.end13:                                         ; preds = %if.then11, %if.end9
  tail call fastcc void @uncprop_into_successor_phis(%struct.basic_block_def* %bb) #8, !dbg !2889
  ret void, !dbg !2890
}

; Function Attrs: nounwind uwtable
define internal void @uncprop_leave_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #5 !dbg !2891 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2893, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2894, metadata !DIExpression()), !dbg !2896
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @equiv_stack, align 8, !dbg !2897
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2897
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %base) #8, !dbg !2897
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2895, metadata !DIExpression()), !dbg !2896
  %cmp = icmp eq %union.tree_node* %call, null, !dbg !2898
  br i1 %cmp, label %if.end, label %if.then, !dbg !2900

if.then:                                          ; preds = %entry
  tail call fastcc void @remove_equivalence(%union.tree_node* nonnull %call) #8, !dbg !2901
  br label %if.end, !dbg !2901

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2902
}

declare dso_local void @init_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @walk_dominator_tree(%struct.dom_walk_data*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2903 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2908, metadata !DIExpression()), !dbg !2909
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2910
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2910
  br i1 %tobool, label %if.end, label %if.then, !dbg !2912

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2912
  tail call void @free(i8* nonnull %1) #6, !dbg !2910
  br label %if.end, !dbg !2910

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2912
  ret void, !dbg !2912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2913 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2917, metadata !DIExpression()), !dbg !2919
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2920
  store i32 0, i32* %index, align 8, !dbg !2921
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2922
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2923
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2924
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2924
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2924
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2925 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2931, metadata !DIExpression()), !dbg !2932
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2933
  %tobool = icmp eq i8 %call, 0, !dbg !2933
  br i1 %tobool, label %if.then, label %if.else, !dbg !2935

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2936
  br label %return, !dbg !2938

if.else:                                          ; preds = %entry
  br label %return, !dbg !2939

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2941
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2941
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2941
  ret i8 %retval.0, !dbg !2942
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2943 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2948, metadata !DIExpression()), !dbg !2949
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2950
  %0 = load i32, i32* %index, align 8, !dbg !2950
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2950
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2950
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2950
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2950
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2950

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2950
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2950
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2950
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2950
  br label %cond.end, !dbg !2950

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2950
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2950
  %cmp = icmp ult i32 %0, %call2, !dbg !2950
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2950

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2950
  br label %cond.end5, !dbg !2950

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2951
  %inc = add i32 %5, 1, !dbg !2951
  store i32 %inc, i32* %index, align 8, !dbg !2951
  ret void, !dbg !2952
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2953 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2958, metadata !DIExpression()), !dbg !2961
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2959, metadata !DIExpression()), !dbg !2960
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !2963
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2964
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2965
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2966
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2967
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2968
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2969
  ret void, !dbg !2970
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2971 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2975, metadata !DIExpression()), !dbg !2976
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2977
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2977
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2978
  %conv1 = zext i1 %cmp to i8, !dbg !2979
  ret i8 %conv1, !dbg !2980
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2981 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2985, metadata !DIExpression()), !dbg !2986
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2987
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2987
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2988
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2988
  ret %union.gimple_statement_d* %1, !dbg !2989
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2990 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2995, metadata !DIExpression()), !dbg !2996
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2997
  %bf.load = load i32, i32* %0, align 8, !dbg !2997
  %bf.clear = and i32 %bf.load, 255, !dbg !2997
  ret i32 %bf.clear, !dbg !2998
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3003, metadata !DIExpression()), !dbg !3004
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3005
  %bf.load = load i32, i32* %0, align 8, !dbg !3005
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3005
  ret i32 %bf.lshr, !dbg !3006
}

declare dso_local void @extract_true_false_edges_from_block(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3007 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3011, metadata !DIExpression()), !dbg !3012
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3013
  ret %union.tree_node* %call, !dbg !3014
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3015 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3017, metadata !DIExpression()), !dbg !3018
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3019
  ret %union.tree_node* %call, !dbg !3020
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @real_compare(i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3023, metadata !DIExpression()), !dbg !3024
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3025
  ret %union.tree_node* %call, !dbg !3026
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3027 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3031, metadata !DIExpression()), !dbg !3033
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %call, metadata !3032, metadata !DIExpression()), !dbg !3033
  %cmp = icmp ugt i32 %call, 1, !dbg !3035
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3035

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 3162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3035
  br label %cond.end, !dbg !3035

cond.end:                                         ; preds = %entry, %cond.true
  %sub = add i32 %call, -1, !dbg !3036
  ret i32 %sub, !dbg !3037
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3038 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %index, metadata !3043, metadata !DIExpression()), !dbg !3044
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3045
  %add = add i32 %index, 1, !dbg !3045
  %cmp = icmp ugt i32 %call, %add, !dbg !3045
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3045

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 3215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3045
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !3046
  ret %union.tree_node* %call2, !dbg !3047
}

declare dso_local %struct.basic_block_def* @label_to_block_fn(%struct.function*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3055, metadata !DIExpression()), !dbg !3056
  br label %land.end, !dbg !3057

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3057
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3057
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3057
  ret %struct.basic_block_def* %0, !dbg !3057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3058 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3065, metadata !DIExpression()), !dbg !3066
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3067
  %0 = load i32, i32* %flags, align 8, !dbg !3067
  %and = and i32 %0, 512, !dbg !3068
  %tobool = icmp eq i32 %and, 0, !dbg !3068
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3069

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3070
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3070
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3071
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3072

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3073
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3073
  br label %cond.end, !dbg !3072

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3072
  ret %struct.gimple_seq_d* %cond, !dbg !3074
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3075 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3082, metadata !DIExpression()), !dbg !3083
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3084
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3084

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3085
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3085
  br label %cond.end, !dbg !3084

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3084
  ret %struct.gimple_seq_node_d* %cond, !dbg !3086
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3087 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i32 %i, metadata !3090, metadata !DIExpression()), !dbg !3091
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3092
  %tobool = icmp eq i8 %call, 0, !dbg !3092
  br i1 %tobool, label %return, label %if.then, !dbg !3094

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3095
  %idxprom = zext i32 %i to i64, !dbg !3095
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3095
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3095
  br label %return, !dbg !3097

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3098
  ret %union.tree_node* %retval.0, !dbg !3099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3104, metadata !DIExpression()), !dbg !3105
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3106
  %cmp = icmp eq i32 %call, 0, !dbg !3107
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3108

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3109
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3110
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3111
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3112 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3116, metadata !DIExpression()), !dbg !3118
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3119
  %idxprom = zext i32 %call to i64, !dbg !3120
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3120
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3118
  %cmp = icmp eq i64 %0, 0, !dbg !3121
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3121

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3121
  br label %cond.end, !dbg !3121

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3122
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3123
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3124
  ret %union.tree_node** %2, !dbg !3125
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3126 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3130, metadata !DIExpression()), !dbg !3131
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3132
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3133
  ret i32 %call1, !dbg !3134
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3139, metadata !DIExpression()), !dbg !3140
  %idxprom = zext i32 %code to i64, !dbg !3141
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3141
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3141
  ret i32 %0, !dbg !3142
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3145, metadata !DIExpression()), !dbg !3146
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3147
  %0 = load i32, i32* %num_ops, align 4, !dbg !3147
  ret i32 %0, !dbg !3148
}

declare dso_local i32 @iterative_hash_expr(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @single_incoming_edge_ignoring_loop_edges(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3149 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3154, metadata !DIExpression()), !dbg !3157
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3158
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3159
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3160
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3160
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3160
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3160
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3160
  store i32 %4, i32* %3, align 8, !dbg !3160
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3160
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3160
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3160
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3162
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3162
  br label %for.cond, !dbg !3160

for.cond:                                         ; preds = %for.inc, %entry
  %retval1.0 = phi %struct.edge_def* [ null, %entry ], [ %retval1.1, %for.inc ], !dbg !3164
  call void @llvm.dbg.value(metadata %struct.edge_def* %retval1.0, metadata !3154, metadata !DIExpression()), !dbg !3157
  %9 = load i32, i32* %7, align 8, !dbg !3165
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3155, metadata !DIExpression(DW_OP_deref)), !dbg !3157
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !3165
  %tobool = icmp eq i8 %call2, 0, !dbg !3160
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3160

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3155, metadata !DIExpression()), !dbg !3157
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 0, !dbg !3169
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3155, metadata !DIExpression()), !dbg !3157
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 1, !dbg !3170
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3170
  %call3 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %12, %struct.basic_block_def* %13) #6, !dbg !3171
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3171
  br i1 %tobool4, label %if.end, label %for.inc, !dbg !3172

if.end:                                           ; preds = %for.body
  %tobool5 = icmp eq %struct.edge_def* %retval1.0, null, !dbg !3173
  br i1 %tobool5, label %if.end7, label %cleanup, !dbg !3175

if.end7:                                          ; preds = %if.end
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3176
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3154, metadata !DIExpression()), !dbg !3157
  br label %for.inc, !dbg !3177

for.inc:                                          ; preds = %for.body, %if.end7
  %retval1.1 = phi %struct.edge_def* [ %14, %if.end7 ], [ %retval1.0, %for.body ], !dbg !3157
  call void @llvm.dbg.value(metadata %struct.edge_def* %retval1.1, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3156, metadata !DIExpression(DW_OP_deref)), !dbg !3157
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3165
  br label %for.cond, !dbg !3165, !llvm.loop !3178

cleanup:                                          ; preds = %if.end, %for.cond
  %retval.0 = phi %struct.edge_def* [ null, %if.end ], [ %retval1.0, %for.cond ], !dbg !3157
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3180
  ret %struct.edge_def* %retval.0, !dbg !3180
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_equiv(%union.tree_node* %value, %union.tree_node* %equivalence) unnamed_addr #5 !dbg !3181 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata %union.tree_node* %equivalence, metadata !3186, metadata !DIExpression()), !dbg !3189
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %call, metadata !3187, metadata !DIExpression()), !dbg !3189
  %value1 = bitcast i8* %call to %union.tree_node**, !dbg !3191
  store %union.tree_node* %value, %union.tree_node** %value1, align 8, !dbg !3192
  %equivalences = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3193
  %0 = bitcast i8* %equivalences to %struct.VEC_tree_heap**, !dbg !3193
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %0, align 8, !dbg !3194
  %1 = load %struct.htab*, %struct.htab** @equiv, align 8, !dbg !3195
  %call2 = tail call i8** @htab_find_slot(%struct.htab* %1, i8* %call, i32 1) #6, !dbg !3196
  call void @llvm.dbg.value(metadata i8** %call2, metadata !3188, metadata !DIExpression()), !dbg !3189
  %2 = load i8*, i8** %call2, align 8, !dbg !3197
  %cmp = icmp eq i8* %2, null, !dbg !3199
  br i1 %cmp, label %if.then, label %if.else, !dbg !3200

if.then:                                          ; preds = %entry
  store i8* %call, i8** %call2, align 8, !dbg !3201
  %3 = bitcast i8* %call to %struct.equiv_hash_elt*, !dbg !3202
  br label %if.end, !dbg !3202

if.else:                                          ; preds = %entry
  tail call void @free(i8* %call) #6, !dbg !3203
  %.phi.trans.insert = bitcast i8** %call2 to %struct.equiv_hash_elt**, !dbg !3189
  %.pre = load %struct.equiv_hash_elt*, %struct.equiv_hash_elt** %.phi.trans.insert, align 8, !dbg !3204
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = phi %struct.equiv_hash_elt* [ %.pre, %if.else ], [ %3, %if.then ], !dbg !3204
  call void @llvm.dbg.value(metadata %struct.equiv_hash_elt* %4, metadata !3187, metadata !DIExpression()), !dbg !3189
  %equivalences3 = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %4, i64 0, i32 1, !dbg !3205
  %call4 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %equivalences3, %union.tree_node* %equivalence) #8, !dbg !3205
  ret void, !dbg !3206
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3207 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3212, metadata !DIExpression()), !dbg !3213
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #8, !dbg !3214
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3214
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3214
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3214

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3214
  br label %cond.end, !dbg !3214

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3214
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #8, !dbg !3214
  ret %union.tree_node** %call1, !dbg !3214
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uncprop_into_successor_phis(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3215 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp9 = alloca %struct.gimple_stmt_iterator, align 8
  %equiv_hash_elt = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3219, metadata !DIExpression()), !dbg !3248
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3249
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3250
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3251
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3251
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3251
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3251
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3251
  store i32 %4, i32* %3, align 8, !dbg !3251
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3251
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3251
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3251
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3252
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3252
  %9 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3253
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp9 to i8*, !dbg !3254
  %11 = bitcast %struct.equiv_hash_elt* %equiv_hash_elt to i8*, !dbg !3255
  %value = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %equiv_hash_elt, i64 0, i32 0, !dbg !3255
  %equivalences = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %equiv_hash_elt, i64 0, i32 1, !dbg !3255
  br label %for.cond, !dbg !3251

for.cond:                                         ; preds = %cleanup72, %entry
  %12 = load i32, i32* %7, align 8, !dbg !3256
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3220, metadata !DIExpression(DW_OP_deref)), !dbg !3248
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #8, !dbg !3256
  %tobool = icmp eq i8 %call1, 0, !dbg !3251
  br i1 %tobool, label %for.end77, label %for.body, !dbg !3251

for.body:                                         ; preds = %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3220, metadata !DIExpression()), !dbg !3248
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 1, !dbg !3258
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3258
  %call2 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %15) #8, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call2, metadata !3222, metadata !DIExpression()), !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !3260
  %call3 = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call2) #8, !dbg !3261
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3261
  br i1 %tobool4, label %if.end, label %cleanup72, !dbg !3263

if.end:                                           ; preds = %for.body
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3220, metadata !DIExpression()), !dbg !3248
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 3, !dbg !3265
  %17 = load i8*, i8** %aux, align 8, !dbg !3265
  %tobool5 = icmp eq i8* %17, null, !dbg !3264
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !3266

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3220, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %17, metadata !3227, metadata !DIExpression()), !dbg !3267
  %rhs = bitcast i8* %17 to %union.tree_node**, !dbg !3268
  %18 = load %union.tree_node*, %union.tree_node** %rhs, align 8, !dbg !3268
  %lhs = getelementptr inbounds i8, i8* %17, i64 8, !dbg !3269
  %19 = bitcast i8* %lhs to %union.tree_node**, !dbg !3269
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8, !dbg !3269
  call fastcc void @record_equiv(%union.tree_node* %18, %union.tree_node* %20) #8, !dbg !3270
  br label %if.end8, !dbg !3271

if.end8:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3272
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp9, %struct.gimple_seq_d* %call2) #8, !dbg !3272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !3272
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3272
  br label %for.cond10, !dbg !3273

for.cond10:                                       ; preds = %cleanup57, %if.end8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3253
  %call11 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3274
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3275
  br i1 %tobool12, label %for.body13, label %for.end64, !dbg !3276

for.body13:                                       ; preds = %for.cond10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3253
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3277
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !3230, metadata !DIExpression()), !dbg !3255
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !3220, metadata !DIExpression()), !dbg !3248
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 6, !dbg !3278
  %22 = load i32, i32* %dest_idx, align 4, !dbg !3278
  %call15 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call14, i32 %22) #8, !dbg !3278
  %call16 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call15) #8, !dbg !3278
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3234, metadata !DIExpression()), !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3279
  %call17 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call16) #6, !dbg !3280
  %tobool18 = icmp eq i8 %call17, 0, !dbg !3280
  br i1 %tobool18, label %land.lhs.true, label %if.end24, !dbg !3282

land.lhs.true:                                    ; preds = %for.body13
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3283
  %23 = bitcast i32* %var to %union.tree_node**, !dbg !3283
  %24 = load %union.tree_node*, %union.tree_node** %23, align 8, !dbg !3283
  %call19 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call14) #8, !dbg !3284
  %call20 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call19) #8, !dbg !3284
  %var22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call20, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3284
  %25 = bitcast i32* %var22 to %union.tree_node**, !dbg !3284
  %26 = load %union.tree_node*, %union.tree_node** %25, align 8, !dbg !3284
  %cmp = icmp eq %union.tree_node* %24, %26, !dbg !3285
  br i1 %cmp, label %if.end24, label %cleanup57, !dbg !3286

if.end24:                                         ; preds = %land.lhs.true, %for.body13
  store %union.tree_node* %call16, %union.tree_node** %value, align 8, !dbg !3287
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %equivalences, align 8, !dbg !3288
  %27 = load %struct.htab*, %struct.htab** @equiv, align 8, !dbg !3289
  %call25 = call i8** @htab_find_slot(%struct.htab* %27, i8* nonnull %11, i32 0) #6, !dbg !3290
  call void @llvm.dbg.value(metadata i8** %call25, metadata !3236, metadata !DIExpression()), !dbg !3255
  %tobool26 = icmp eq i8** %call25, null, !dbg !3291
  br i1 %tobool26, label %cleanup57, label %if.then27, !dbg !3292

if.then27:                                        ; preds = %if.end24
  %28 = bitcast i8** %call25 to %struct.equiv_hash_elt**, !dbg !3293
  %29 = load %struct.equiv_hash_elt*, %struct.equiv_hash_elt** %28, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.equiv_hash_elt* %29, metadata !3237, metadata !DIExpression()), !dbg !3294
  %equivalences28 = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %29, i64 0, i32 1, !dbg !3295
  %30 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %equivalences28, align 8, !dbg !3295
  %tobool29 = icmp eq %struct.VEC_tree_heap* %30, null, !dbg !3295
  br i1 %tobool29, label %cond.end, label %cond.true, !dbg !3295

cond.true:                                        ; preds = %if.then27
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %30, i64 0, i32 0, !dbg !3295
  br label %cond.end, !dbg !3295

cond.end:                                         ; preds = %if.then27, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.then27 ], !dbg !3295
  %call31 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %call31, metadata !3240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3294
  br label %for.cond32, !dbg !3296

for.cond32:                                       ; preds = %for.inc, %cond.end
  %j.0.in = phi i32 [ %call31, %cond.end ], [ %j.0, %for.inc ]
  %j.0 = add i32 %j.0.in, -1, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3240, metadata !DIExpression()), !dbg !3294
  %cmp33 = icmp sgt i32 %j.0, -1, !dbg !3298
  br i1 %cmp33, label %for.body34, label %cleanup57.loopexit, !dbg !3299

for.body34:                                       ; preds = %for.cond32
  %31 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %equivalences28, align 8, !dbg !3300
  %tobool37 = icmp eq %struct.VEC_tree_heap* %31, null, !dbg !3300
  br i1 %tobool37, label %cond.end42, label %cond.true38, !dbg !3300

cond.true38:                                      ; preds = %for.body34
  %base40 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %31, i64 0, i32 0, !dbg !3300
  br label %cond.end42, !dbg !3300

cond.end42:                                       ; preds = %for.body34, %cond.true38
  %cond43 = phi %struct.VEC_tree_base* [ %base40, %cond.true38 ], [ null, %for.body34 ], !dbg !3300
  %call44 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond43, i32 %j.0) #8, !dbg !3300
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !3241, metadata !DIExpression()), !dbg !3301
  %var46 = getelementptr inbounds %union.tree_node, %union.tree_node* %call44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3302
  %32 = bitcast i32* %var46 to %union.tree_node**, !dbg !3302
  %33 = load %union.tree_node*, %union.tree_node** %32, align 8, !dbg !3302
  %call47 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call14) #8, !dbg !3304
  %call48 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call47) #8, !dbg !3304
  %var50 = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3304
  %34 = bitcast i32* %var50 to %union.tree_node**, !dbg !3304
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8, !dbg !3304
  %cmp51 = icmp eq %union.tree_node* %33, %35, !dbg !3305
  br i1 %cmp51, label %if.then52, label %cleanup, !dbg !3306

if.then52:                                        ; preds = %cond.end42
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !3220, metadata !DIExpression()), !dbg !3248
  %dest_idx53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 6, !dbg !3307
  %37 = load i32, i32* %dest_idx53, align 4, !dbg !3307
  %call54 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call14, i32 %37) #8, !dbg !3307
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call54, %union.tree_node* %call44) #8, !dbg !3307
  br label %cleanup, !dbg !3309

cleanup:                                          ; preds = %cond.end42, %if.then52
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then52 ], [ true, %cond.end42 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup57.loopexit

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3294
  br label %for.cond32, !dbg !3310, !llvm.loop !3311

cleanup57.loopexit:                               ; preds = %for.cond32, %cleanup
  br label %cleanup57, !dbg !3313

cleanup57:                                        ; preds = %cleanup57.loopexit, %if.end24, %land.lhs.true
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3313
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3253
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3314
  br label %for.cond10, !dbg !3315, !llvm.loop !3316

for.end64:                                        ; preds = %for.cond10
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3318
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !3220, metadata !DIExpression()), !dbg !3248
  %aux65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 3, !dbg !3319
  %39 = load i8*, i8** %aux65, align 8, !dbg !3319
  %tobool66 = icmp eq i8* %39, null, !dbg !3318
  br i1 %tobool66, label %cleanup72, label %if.then67, !dbg !3320

if.then67:                                        ; preds = %for.end64
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !3220, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %39, metadata !3245, metadata !DIExpression()), !dbg !3321
  %rhs70 = bitcast i8* %39 to %union.tree_node**, !dbg !3322
  %40 = load %union.tree_node*, %union.tree_node** %rhs70, align 8, !dbg !3322
  call fastcc void @remove_equivalence(%union.tree_node* %40) #8, !dbg !3323
  br label %cleanup72, !dbg !3324

cleanup72:                                        ; preds = %for.end64, %for.body, %if.then67
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !3325
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3221, metadata !DIExpression(DW_OP_deref)), !dbg !3248
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3256
  br label %for.cond, !dbg !3256, !llvm.loop !3326

for.end77:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3328
  ret void, !dbg !3328
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3329 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 1, metadata !3334, metadata !DIExpression()), !dbg !3336
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3337
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3337
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3337

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3337
  br label %cond.end, !dbg !3337

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3337
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #8, !dbg !3337
  %tobool1 = icmp eq i32 %call, 0, !dbg !3337
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3335, metadata !DIExpression()), !dbg !3336
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3337

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3338
  %2 = load i8*, i8** %1, align 8, !dbg !3338
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3338
  store i8* %call3, i8** %1, align 8, !dbg !3338
  br label %if.end, !dbg !3338

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3337
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3340 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3346, metadata !DIExpression()), !dbg !3348
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3349
  %0 = load i32, i32* %num1, align 8, !dbg !3349
  %inc = add i32 %0, 1, !dbg !3349
  store i32 %inc, i32* %num1, align 8, !dbg !3349
  %idxprom = zext i32 %0 to i64, !dbg !3349
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3349
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3347, metadata !DIExpression()), !dbg !3348
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3349
  ret %union.tree_node** %arrayidx, !dbg !3349
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3350 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 1, metadata !3355, metadata !DIExpression()), !dbg !3356
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3357
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3357

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3357
  %0 = load i32, i32* %alloc, align 4, !dbg !3357
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3357
  %1 = load i32, i32* %num, align 8, !dbg !3357
  %cmp1 = icmp ne i32 %0, %1, !dbg !3357
  %phitmp = zext i1 %cmp1 to i32, !dbg !3357
  br label %cond.end, !dbg !3357

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3357

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3357
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3358 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3361, metadata !DIExpression()), !dbg !3362
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3363
  %0 = load i32, i32* %flags, align 8, !dbg !3363
  %and = and i32 %0, 512, !dbg !3363
  %tobool = icmp eq i32 %and, 0, !dbg !3363
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3363

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3363
  br label %cond.end, !dbg !3363

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3364
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3364
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3366
  br i1 %tobool1, label %return, label %if.end, !dbg !3367

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !3368
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !3368
  br label %return, !dbg !3369

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !3362
  ret %struct.gimple_seq_d* %retval.0, !dbg !3370
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3371 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3375, metadata !DIExpression()), !dbg !3376
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3377
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3378

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3379
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3379
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3380
  %phitmp = zext i1 %cmp1 to i8, !dbg !3378
  br label %lor.end, !dbg !3378

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !3381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3382 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3387, metadata !DIExpression()), !dbg !3389
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #8, !dbg !3390
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3391
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3392
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3393
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3394
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3395
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3396

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3397
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3397
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3398
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3399

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #8, !dbg !3400
  br label %cond.end, !dbg !3399

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3399
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3401
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3402
  ret void, !dbg !3403
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3404 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3411, metadata !DIExpression()), !dbg !3412
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3413
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3413
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3414
  ret %union.tree_node* %1, !dbg !3415
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3416 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %i, metadata !3421, metadata !DIExpression()), !dbg !3422
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3423
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3424
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3425
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3426 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3431, metadata !DIExpression()), !dbg !3432
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3433
  ret %union.tree_node* %0, !dbg !3434
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3435 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3437, metadata !DIExpression()), !dbg !3438
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3439
  ret %union.tree_node** %result, !dbg !3440
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3441 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3447, metadata !DIExpression()), !dbg !3448
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3449
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3449

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3449
  %0 = load i32, i32* %num, align 8, !dbg !3449
  br label %cond.end, !dbg !3449

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3449
  ret i32 %cond, !dbg !3449
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3450 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3455, metadata !DIExpression()), !dbg !3456
  br label %land.end, !dbg !3457

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3457
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3457
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3457
  ret %union.tree_node* %0, !dbg !3457
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !3458 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3462, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !3463, metadata !DIExpression()), !dbg !3464
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #8, !dbg !3465
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3466
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3466
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !3467
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #8, !dbg !3468
  ret void, !dbg !3469
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3470 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3475, metadata !DIExpression()), !dbg !3476
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3477
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3477
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3478
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3478
  %2 = load i64, i64* %1, align 8, !dbg !3478
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3479
  store i64 %2, i64* %3, align 8, !dbg !3479
  ret void, !dbg !3480
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_equivalence(%union.tree_node* %value) unnamed_addr #5 !dbg !3481 {
entry:
  %equiv_hash_elt = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3485, metadata !DIExpression()), !dbg !3489
  %0 = bitcast %struct.equiv_hash_elt* %equiv_hash_elt to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3490
  %value1 = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %equiv_hash_elt, i64 0, i32 0, !dbg !3491
  store %union.tree_node* %value, %union.tree_node** %value1, align 8, !dbg !3492
  %equivalences = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %equiv_hash_elt, i64 0, i32 1, !dbg !3493
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %equivalences, align 8, !dbg !3494
  %1 = load %struct.htab*, %struct.htab** @equiv, align 8, !dbg !3495
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !3496
  call void @llvm.dbg.value(metadata i8** %call, metadata !3488, metadata !DIExpression()), !dbg !3489
  %2 = bitcast i8** %call to %struct.equiv_hash_elt**, !dbg !3497
  %3 = load %struct.equiv_hash_elt*, %struct.equiv_hash_elt** %2, align 8, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.equiv_hash_elt* %3, metadata !3487, metadata !DIExpression()), !dbg !3489
  %equivalences2 = getelementptr inbounds %struct.equiv_hash_elt, %struct.equiv_hash_elt* %3, i64 0, i32 1, !dbg !3498
  %4 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %equivalences2, align 8, !dbg !3498
  %tobool = icmp eq %struct.VEC_tree_heap* %4, null, !dbg !3498
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3498

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %4, i64 0, i32 0, !dbg !3498
  br label %cond.end, !dbg !3498

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3498
  %call4 = call fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %cond) #8, !dbg !3498
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3499
  ret void, !dbg !3499
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3500 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3502, metadata !DIExpression()), !dbg !3503
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3504
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3504

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3505
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3505
  br label %cond.end, !dbg !3504

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3504
  ret %struct.gimple_seq_node_d* %cond, !dbg !3506
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3507 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3511, metadata !DIExpression()), !dbg !3512
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3513
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3513
  ret %struct.basic_block_def* %0, !dbg !3514
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %index, metadata !3521, metadata !DIExpression()), !dbg !3522
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3523
  %0 = load i32, i32* %capacity, align 8, !dbg !3523
  %cmp = icmp ult i32 %0, %index, !dbg !3523
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3523

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3523
  br label %cond.end, !dbg !3523

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3524
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3524
  ret %struct.phi_arg_d* %arrayidx, !dbg !3525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3526 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3530, metadata !DIExpression()), !dbg !3531
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3532
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3532
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3534
  br i1 %cmp, label %return, label %if.end, !dbg !3535

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3536
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3536
  %2 = load i64, i64* %1, align 8, !dbg !3536
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3537
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3538
  store i64 %2, i64* %3, align 8, !dbg !3538
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3539
  %5 = load i64, i64* %4, align 8, !dbg !3539
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3540
  %7 = load i64*, i64** %6, align 8, !dbg !3540
  store i64 %5, i64* %7, align 8, !dbg !3541
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3542
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3543
  br label %return, !dbg !3544

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !3545 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3550, metadata !DIExpression()), !dbg !3552
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !3553
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3555

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3556
  %bf.load = load i64, i64* %0, align 8, !dbg !3556
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3557
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3557
  br i1 %cmp, label %if.else, label %if.then, !dbg !3558

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3559
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3560
  br label %if.end, !dbg !3561

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3562
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3562
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !3551, metadata !DIExpression()), !dbg !3552
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #8, !dbg !3564
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3565
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3566 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3570, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3571, metadata !DIExpression()), !dbg !3572
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3573
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3574
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3575
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3575
  %1 = load i64, i64* %0, align 8, !dbg !3575
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3576
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3577
  store i64 %1, i64* %2, align 8, !dbg !3577
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3578
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3579
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3580
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3581
  ret void, !dbg !3582
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_pop(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3583 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3587, metadata !DIExpression()), !dbg !3589
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3590
  %0 = load i32, i32* %num1, align 8, !dbg !3590
  %dec = add i32 %0, -1, !dbg !3590
  store i32 %dec, i32* %num1, align 8, !dbg !3590
  %idxprom = zext i32 %dec to i64, !dbg !3590
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3590
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3590
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3588, metadata !DIExpression()), !dbg !3589
  ret %union.tree_node* %1, !dbg !3590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3591 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3596
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3596
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3596

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3596
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3596
  br label %cond.end, !dbg !3596

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3596
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3596
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3597
  %conv3 = zext i1 %cmp to i8, !dbg !3598
  ret i8 %conv3, !dbg !3599
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3600 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3605
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3605
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3605

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3605
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3605
  br label %cond.end, !dbg !3605

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3605
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3605
  ret %struct.edge_def* %call2, !dbg !3606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3607 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3613, metadata !DIExpression()), !dbg !3614
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3615
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3615

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3615
  %0 = load i32, i32* %num, align 8, !dbg !3615
  br label %cond.end, !dbg !3615

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3615
  ret i32 %cond, !dbg !3615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3616 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3621
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3621

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3621
  br label %cond.end, !dbg !3621

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3622
  ret %struct.VEC_edge_gc* %0, !dbg !3623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3624 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3629, metadata !DIExpression()), !dbg !3630
  br label %land.end, !dbg !3631

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3631
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3631
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3631
  ret %struct.edge_def* %0, !dbg !3631
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2034, !2035, !2036}
!llvm.ident = !{!2037}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_uncprop", scope: !2, file: !3, line: 589, type: !2008, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !647, globals: !2003, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-uncprop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !582, !621}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !318, line: 363, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !318, line: 355, baseType: !7, size: 32, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !329, line: 474, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !334, line: 280, baseType: !7, size: 32, elements: !335)
!334 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!336 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !334, line: 1817, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !334, line: 1805, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !334, line: 39, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!368 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!456 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!457 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!458 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!460 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!461 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!462 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!463 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!464 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!465 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!466 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!467 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!468 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!469 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!470 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!471 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!472 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!475 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!476 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!478 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!479 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!480 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!481 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!482 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!483 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!484 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!485 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!486 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!487 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!488 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!490 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!491 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!492 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!493 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!494 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!495 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!496 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!497 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!498 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!499 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!500 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!501 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!502 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!503 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!504 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!505 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!506 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!507 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!508 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!509 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!510 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!511 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!512 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!513 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!514 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!515 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!516 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!517 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!518 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!519 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!520 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!521 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!522 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!523 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!524 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!525 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!526 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!527 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!532 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!533 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!534 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!535 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!536 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!537 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!539 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!540 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!541 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!542 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!543 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!544 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!553 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!554 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!555 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!556 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!557 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!558 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!559 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !561, line: 36, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!563 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!582 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !583, line: 51, baseType: !7, size: 32, elements: !584)
!583 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!585 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!620 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!621 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !583, line: 727, baseType: !7, size: 32, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!623 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!644 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!645 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!646 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!647 = !{!648, !649, !650, !651, !654, !655, !366, !657, !560, !189, !1020, !788, !986, !1989, !661, !652, !1991, !2002, !1997, !7}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!650 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_equivalency", file: !3, line: 47, size: 128, elements: !659)
!659 = !{!660, !1988}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !658, file: !3, line: 49, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !662, line: 56, baseType: !663)
!662 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !665)
!665 = !{!666, !699, !705, !718, !737, !748, !753, !762, !768, !781, !793, !831, !1323, !1351, !1368, !1369, !1374, !1383, !1389, !1394, !1398, !1402, !1639, !1686, !1692, !1698, !1705, !1718, !1732, !1749, !1761, !1783, !1798, !1970}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !664, file: !334, line: 3372, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !667, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !667, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !667, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !667, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !667, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !667, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !667, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !667, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !667, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !667, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !667, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !667, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !667, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !667, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !667, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !667, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !667, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !667, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !667, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !667, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !667, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !667, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !667, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !667, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !667, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !667, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !667, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !667, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !667, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !667, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !664, file: !334, line: 3373, baseType: !700, size: 192)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !700, file: !334, line: 403, baseType: !667, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !700, file: !334, line: 404, baseType: !661, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !334, line: 405, baseType: !661, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !664, file: !334, line: 3374, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !706, file: !334, line: 1385, baseType: !700, size: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !706, file: !334, line: 1386, baseType: !710, size: 128, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !711, line: 58, baseType: !712)
!711 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 54, size: 128, elements: !713)
!713 = !{!714, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !712, file: !711, line: 56, baseType: !715, size: 64)
!715 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !712, file: !711, line: 57, baseType: !717, size: 64, offset: 64)
!717 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !664, file: !334, line: 3375, baseType: !719, size: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !719, file: !334, line: 1398, baseType: !700, size: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !719, file: !334, line: 1399, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !725, line: 52, size: 256, elements: !726)
!725 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!726 = !{!727, !728, !729, !730, !731, !732, !733}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !724, file: !725, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !724, file: !725, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !724, file: !725, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !724, file: !725, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !724, file: !725, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !724, file: !725, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !724, file: !725, line: 62, baseType: !734, size: 192, offset: 64)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 192, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 3)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !664, file: !334, line: 3376, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !334, line: 1409, baseType: !700, size: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !738, file: !334, line: 1410, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !744, line: 27, size: 192, elements: !745)
!744 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !743, file: !744, line: 29, baseType: !710, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !743, file: !744, line: 30, baseType: !189, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !664, file: !334, line: 3377, baseType: !749, size: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !749, file: !334, line: 1438, baseType: !700, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !749, file: !334, line: 1439, baseType: !661, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !664, file: !334, line: 3378, baseType: !754, size: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !334, line: 1419, baseType: !700, size: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !754, file: !334, line: 1420, baseType: !650, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !754, file: !334, line: 1421, baseType: !759, size: 8, offset: 224)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 1)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !664, file: !334, line: 3379, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !334, line: 1429, baseType: !700, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !763, file: !334, line: 1430, baseType: !661, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !763, file: !334, line: 1431, baseType: !661, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !664, file: !334, line: 3380, baseType: !769, size: 320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !769, file: !334, line: 1461, baseType: !700, size: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !769, file: !334, line: 1462, baseType: !773, size: 128, offset: 192)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !774, line: 31, size: 128, elements: !775)
!774 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!775 = !{!776, !779, !780}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !773, file: !774, line: 32, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !773, file: !774, line: 33, baseType: !7, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !773, file: !774, line: 34, baseType: !7, size: 32, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !664, file: !334, line: 3381, baseType: !782, size: 384)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !783)
!783 = !{!784, !785, !790, !791, !792}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !782, file: !334, line: 2508, baseType: !700, size: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !782, file: !334, line: 2509, baseType: !786, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !787, line: 58, baseType: !788)
!787 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !789, line: 44, baseType: !7)
!789 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !782, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !782, file: !334, line: 2511, baseType: !661, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !782, file: !334, line: 2512, baseType: !661, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !664, file: !334, line: 3382, baseType: !794, size: 896)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !334, line: 2653, baseType: !782, size: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !334, line: 2654, baseType: !661, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !794, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !794, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !794, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !794, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !794, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !794, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !794, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !794, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !794, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !794, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !794, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !794, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !794, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !794, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !794, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !794, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !794, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !794, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !794, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !794, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !794, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !794, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !794, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !794, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !794, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !794, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !794, file: !334, line: 2705, baseType: !661, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !794, file: !334, line: 2706, baseType: !661, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !794, file: !334, line: 2707, baseType: !661, size: 64, offset: 704)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !794, file: !334, line: 2708, baseType: !661, size: 64, offset: 768)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !794, file: !334, line: 2711, baseType: !829, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !664, file: !334, line: 3383, baseType: !832, size: 960)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !832, file: !334, line: 2757, baseType: !794, size: 896)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !832, file: !334, line: 2758, baseType: !836, size: 64, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !662, line: 50, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !839, line: 240, size: 384, elements: !840)
!839 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !838, file: !839, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !838, file: !839, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !838, file: !839, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !838, file: !839, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !838, file: !839, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !838, file: !839, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !838, file: !839, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !838, file: !839, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !838, file: !839, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !838, file: !839, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !838, file: !839, line: 321, baseType: !852, size: 320, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !839, line: 315, size: 320, elements: !853)
!853 = !{!854, !1256, !1258, !1321, !1322}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !852, file: !839, line: 316, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 64, elements: !760)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !839, line: 183, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !839, line: 166, size: 64, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !871, !872, !884, !887, !947, !948, !1233, !1246, !1253}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !857, file: !839, line: 168, baseType: !650, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !857, file: !839, line: 169, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !857, file: !839, line: 170, baseType: !655, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !857, file: !839, line: 171, baseType: !836, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !857, file: !839, line: 172, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !662, line: 53, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !839, line: 359, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !866, file: !839, line: 360, baseType: !650, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !866, file: !839, line: 361, baseType: !870, size: 64, offset: 64)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 64, elements: !760)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !857, file: !839, line: 173, baseType: !189, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !857, file: !839, line: 174, baseType: !873, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !839, line: 133, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 115, size: 32, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !874, file: !839, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !874, file: !839, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !874, file: !839, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !874, file: !839, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !874, file: !839, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !874, file: !839, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !874, file: !839, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !874, file: !839, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !857, file: !839, line: 175, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !839, line: 175, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !857, file: !839, line: 176, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !890, line: 75, size: 256, elements: !891)
!890 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!891 = !{!892, !906, !907, !908}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !889, file: !890, line: 76, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !890, line: 68, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !890, line: 63, size: 320, elements: !896)
!896 = !{!897, !899, !900, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !890, line: 64, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !895, file: !890, line: 65, baseType: !898, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !895, file: !890, line: 66, baseType: !7, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !895, file: !890, line: 67, baseType: !902, size: 128, offset: 192)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 128, elements: !904)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !890, line: 29, baseType: !715)
!904 = !{!905}
!905 = !DISubrange(count: 2)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !889, file: !890, line: 77, baseType: !893, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !889, file: !890, line: 78, baseType: !7, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !889, file: !890, line: 79, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !890, line: 49, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !890, line: 45, size: 832, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !911, file: !890, line: 46, baseType: !898, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !911, file: !890, line: 47, baseType: !888, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !911, file: !890, line: 48, baseType: !916, size: 704, offset: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !917, line: 164, size: 704, elements: !918)
!917 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!918 = !{!919, !920, !930, !931, !932, !933, !934, !935, !939, !943, !944, !945, !946}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !916, file: !917, line: 166, baseType: !717, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !916, file: !917, line: 167, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !917, line: 157, size: 192, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !922, file: !917, line: 159, baseType: !652, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !922, file: !917, line: 160, baseType: !921, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !922, file: !917, line: 161, baseType: !927, size: 32, offset: 128)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 32, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 4)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !916, file: !917, line: 168, baseType: !652, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !916, file: !917, line: 169, baseType: !652, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !916, file: !917, line: 170, baseType: !652, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !916, file: !917, line: 171, baseType: !717, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !916, file: !917, line: 172, baseType: !650, size: 32, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !916, file: !917, line: 176, baseType: !936, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!921, !654, !717}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !916, file: !917, line: 177, baseType: !940, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !654, !921}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !916, file: !917, line: 178, baseType: !654, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !916, file: !917, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !916, file: !917, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !916, file: !917, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !857, file: !839, line: 177, baseType: !661, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !857, file: !839, line: 178, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !951)
!951 = !{!952, !1198, !1199, !1200, !1203, !1207, !1208, !1209, !1227, !1228, !1229, !1230, !1231, !1232}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !950, file: !318, line: 219, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !955, file: !318, line: 151, baseType: !958, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !959, file: !318, line: 150, baseType: !7, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !959, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !959, file: !318, line: 150, baseType: !964, size: 64, offset: 64)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 64, elements: !760)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !662, line: 108, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !968)
!968 = !{!969, !970, !971, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !967, file: !318, line: 124, baseType: !949, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !967, file: !318, line: 125, baseType: !949, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !967, file: !318, line: 131, baseType: !972, size: 64, offset: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !973)
!973 = !{!974, !1189}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !972, file: !318, line: 129, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !662, line: 66, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !583, line: 143, size: 192, elements: !978)
!978 = !{!979, !1187, !1188}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !977, file: !583, line: 145, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !662, line: 69, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !583, line: 136, size: 192, elements: !983)
!983 = !{!984, !1185, !1186}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !982, file: !583, line: 137, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !662, line: 58, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !583, line: 737, size: 768, elements: !988)
!988 = !{!989, !1006, !1040, !1046, !1051, !1056, !1063, !1069, !1075, !1080, !1094, !1099, !1105, !1110, !1120, !1125, !1143, !1150, !1157, !1163, !1168, !1174, !1180}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !987, file: !583, line: 738, baseType: !990, size: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !583, line: 271, size: 256, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !990, file: !583, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !990, file: !583, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !990, file: !583, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !990, file: !583, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !990, file: !583, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !990, file: !583, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !990, file: !583, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !990, file: !583, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !990, file: !583, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !990, file: !583, line: 312, baseType: !7, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !990, file: !583, line: 316, baseType: !786, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !990, file: !583, line: 319, baseType: !7, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !990, file: !583, line: 323, baseType: !949, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !990, file: !583, line: 327, baseType: !661, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !987, file: !583, line: 739, baseType: !1007, size: 448)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !583, line: 350, size: 448, elements: !1008)
!1008 = !{!1009, !1038}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1007, file: !583, line: 353, baseType: !1010, size: 384)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !583, line: 333, size: 384, elements: !1011)
!1011 = !{!1012, !1013, !1021}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1010, file: !583, line: 336, baseType: !990, size: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1010, file: !583, line: 343, baseType: !1014, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1016, line: 37, size: 128, elements: !1017)
!1016 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1015, file: !1016, line: 39, baseType: !1014, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1015, file: !1016, line: 40, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1010, file: !583, line: 344, baseType: !1022, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1016, line: 45, size: 320, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1023, file: !1016, line: 47, baseType: !1022, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1023, file: !1016, line: 48, baseType: !1027, size: 256, offset: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1028)
!1028 = !{!1029, !1031, !1032, !1037}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1027, file: !334, line: 1884, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !334, line: 1885, baseType: !1030, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1027, file: !334, line: 1891, baseType: !1033, size: 64, offset: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !334, line: 1891, size: 64, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1033, file: !334, line: 1891, baseType: !985, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1033, file: !334, line: 1891, baseType: !661, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1027, file: !334, line: 1892, baseType: !1020, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1007, file: !583, line: 359, baseType: !1039, size: 64, offset: 384)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 64, elements: !760)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !987, file: !583, line: 740, baseType: !1041, size: 512)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !583, line: 365, size: 512, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1041, file: !583, line: 368, baseType: !1010, size: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1041, file: !583, line: 373, baseType: !661, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1041, file: !583, line: 374, baseType: !661, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !987, file: !583, line: 741, baseType: !1047, size: 576)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !583, line: 380, size: 576, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1047, file: !583, line: 383, baseType: !1041, size: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1047, file: !583, line: 389, baseType: !1039, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !987, file: !583, line: 742, baseType: !1052, size: 320)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !583, line: 395, size: 320, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1052, file: !583, line: 397, baseType: !990, size: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1052, file: !583, line: 400, baseType: !975, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !987, file: !583, line: 743, baseType: !1057, size: 448)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !583, line: 406, size: 448, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1057, file: !583, line: 408, baseType: !990, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1057, file: !583, line: 412, baseType: !661, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1057, file: !583, line: 420, baseType: !661, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1057, file: !583, line: 423, baseType: !975, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !987, file: !583, line: 744, baseType: !1064, size: 384)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !583, line: 429, size: 384, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1064, file: !583, line: 431, baseType: !990, size: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1064, file: !583, line: 434, baseType: !661, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1064, file: !583, line: 437, baseType: !975, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !987, file: !583, line: 745, baseType: !1070, size: 384)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !583, line: 443, size: 384, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1070, file: !583, line: 445, baseType: !990, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1070, file: !583, line: 449, baseType: !661, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1070, file: !583, line: 453, baseType: !975, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !987, file: !583, line: 746, baseType: !1076, size: 320)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !583, line: 459, size: 320, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1076, file: !583, line: 461, baseType: !990, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1076, file: !583, line: 464, baseType: !661, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !987, file: !583, line: 747, baseType: !1081, size: 768)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !583, line: 469, size: 768, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1081, file: !583, line: 471, baseType: !990, size: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1081, file: !583, line: 474, baseType: !7, size: 32, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1081, file: !583, line: 475, baseType: !7, size: 32, offset: 288)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1081, file: !583, line: 478, baseType: !661, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1081, file: !583, line: 481, baseType: !1088, size: 384, offset: 384)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 384, elements: !760)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1089, file: !334, line: 1920, baseType: !1027, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1089, file: !334, line: 1921, baseType: !661, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1089, file: !334, line: 1922, baseType: !786, size: 32, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !987, file: !583, line: 748, baseType: !1095, size: 320)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !583, line: 487, size: 320, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1095, file: !583, line: 490, baseType: !990, size: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1095, file: !583, line: 494, baseType: !650, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !987, file: !583, line: 749, baseType: !1100, size: 384)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !583, line: 500, size: 384, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1100, file: !583, line: 502, baseType: !990, size: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1100, file: !583, line: 506, baseType: !975, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1100, file: !583, line: 510, baseType: !975, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !987, file: !583, line: 750, baseType: !1106, size: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !583, line: 529, size: 320, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1106, file: !583, line: 531, baseType: !990, size: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1106, file: !583, line: 540, baseType: !975, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !987, file: !583, line: 751, baseType: !1111, size: 704)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !583, line: 546, size: 704, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1111, file: !583, line: 549, baseType: !1041, size: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1111, file: !583, line: 553, baseType: !655, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1111, file: !583, line: 557, baseType: !649, size: 8, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1111, file: !583, line: 558, baseType: !649, size: 8, offset: 584)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1111, file: !583, line: 559, baseType: !649, size: 8, offset: 592)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1111, file: !583, line: 560, baseType: !649, size: 8, offset: 600)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1111, file: !583, line: 566, baseType: !1039, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !987, file: !583, line: 752, baseType: !1121, size: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !583, line: 571, size: 384, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1121, file: !583, line: 573, baseType: !1052, size: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1121, file: !583, line: 577, baseType: !661, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !987, file: !583, line: 753, baseType: !1126, size: 576)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !583, line: 600, size: 576, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1133, !1142}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1126, file: !583, line: 602, baseType: !1052, size: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1126, file: !583, line: 605, baseType: !661, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1126, file: !583, line: 609, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1132, line: 46, baseType: !715)
!1132 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1126, file: !583, line: 612, baseType: !1134, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !583, line: 581, size: 320, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1135, file: !583, line: 583, baseType: !366, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1135, file: !583, line: 586, baseType: !661, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1135, file: !583, line: 589, baseType: !661, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1135, file: !583, line: 592, baseType: !661, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1135, file: !583, line: 595, baseType: !661, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1126, file: !583, line: 616, baseType: !975, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !987, file: !583, line: 754, baseType: !1144, size: 512)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !583, line: 622, size: 512, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1144, file: !583, line: 624, baseType: !1052, size: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1144, file: !583, line: 628, baseType: !661, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1144, file: !583, line: 632, baseType: !661, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1144, file: !583, line: 636, baseType: !661, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !987, file: !583, line: 755, baseType: !1151, size: 704)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !583, line: 642, size: 704, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1151, file: !583, line: 644, baseType: !1144, size: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1151, file: !583, line: 648, baseType: !661, size: 64, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1151, file: !583, line: 652, baseType: !661, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1151, file: !583, line: 653, baseType: !661, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !987, file: !583, line: 756, baseType: !1158, size: 448)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !583, line: 663, size: 448, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1158, file: !583, line: 665, baseType: !1052, size: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1158, file: !583, line: 668, baseType: !661, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1158, file: !583, line: 673, baseType: !661, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !987, file: !583, line: 757, baseType: !1164, size: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !583, line: 694, size: 384, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1164, file: !583, line: 696, baseType: !1052, size: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1164, file: !583, line: 699, baseType: !661, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !987, file: !583, line: 758, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !583, line: 681, size: 384, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1169, file: !583, line: 683, baseType: !990, size: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1169, file: !583, line: 686, baseType: !661, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1169, file: !583, line: 689, baseType: !661, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !987, file: !583, line: 759, baseType: !1175, size: 384)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !583, line: 707, size: 384, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1175, file: !583, line: 709, baseType: !990, size: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1175, file: !583, line: 712, baseType: !661, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1175, file: !583, line: 712, baseType: !661, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !987, file: !583, line: 760, baseType: !1181, size: 320)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !583, line: 718, size: 320, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1181, file: !583, line: 720, baseType: !990, size: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1181, file: !583, line: 723, baseType: !661, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !982, file: !583, line: 138, baseType: !981, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !583, line: 139, baseType: !981, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !977, file: !583, line: 146, baseType: !980, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !977, file: !583, line: 152, baseType: !975, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !972, file: !318, line: 130, baseType: !836, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !967, file: !318, line: 134, baseType: !654, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !967, file: !318, line: 137, baseType: !661, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !967, file: !318, line: 138, baseType: !786, size: 32, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !967, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !318, line: 144, baseType: !650, size: 32, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !967, file: !318, line: 145, baseType: !650, size: 32, offset: 416)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !967, file: !318, line: 146, baseType: !1197, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !717)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !950, file: !318, line: 220, baseType: !953, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !950, file: !318, line: 223, baseType: !654, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !950, file: !318, line: 226, baseType: !1201, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !950, file: !318, line: 229, baseType: !1204, size: 128, offset: 256)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1205, size: 128, elements: !904)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !950, file: !318, line: 232, baseType: !949, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !950, file: !318, line: 233, baseType: !949, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !950, file: !318, line: 238, baseType: !1210, size: 64, offset: 512)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1211)
!1211 = !{!1212, !1218}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1210, file: !318, line: 236, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1214, file: !318, line: 275, baseType: !975, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1214, file: !318, line: 278, baseType: !975, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1210, file: !318, line: 237, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1220, file: !318, line: 261, baseType: !836, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1220, file: !318, line: 262, baseType: !836, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1220, file: !318, line: 266, baseType: !836, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1220, file: !318, line: 267, baseType: !836, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1220, file: !318, line: 270, baseType: !650, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !950, file: !318, line: 241, baseType: !1197, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !950, file: !318, line: 244, baseType: !650, size: 32, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !950, file: !318, line: 247, baseType: !650, size: 32, offset: 672)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !950, file: !318, line: 250, baseType: !650, size: 32, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !950, file: !318, line: 253, baseType: !650, size: 32, offset: 736)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !318, line: 256, baseType: !650, size: 32, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !857, file: !839, line: 179, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !839, line: 150, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !839, line: 142, size: 320, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1244, !1245}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1236, file: !839, line: 144, baseType: !661, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1236, file: !839, line: 145, baseType: !836, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1236, file: !839, line: 146, baseType: !836, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1236, file: !839, line: 147, baseType: !1242, size: 32, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1243, line: 31, baseType: !650)
!1243 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1236, file: !839, line: 148, baseType: !7, size: 32, offset: 224)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1236, file: !839, line: 149, baseType: !649, size: 8, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !857, file: !839, line: 180, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !839, line: 162, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !839, line: 159, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1249, file: !839, line: 160, baseType: !661, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1249, file: !839, line: 161, baseType: !717, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !857, file: !839, line: 181, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !839, line: 181, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !852, file: !839, line: 317, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 64, elements: !760)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !852, file: !839, line: 318, baseType: !1259, size: 320)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !839, line: 188, size: 320, elements: !1260)
!1260 = !{!1261, !1263, !1320}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1259, file: !839, line: 190, baseType: !1262, size: 192)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 192, elements: !735)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1259, file: !839, line: 193, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !839, line: 206, size: 320, elements: !1266)
!1266 = !{!1267, !1305, !1306, !1307, !1319}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1265, file: !839, line: 208, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !662, line: 62, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1271, line: 538, size: 256, elements: !1272)
!1271 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1272 = !{!1273, !1277, !1283, !1296}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1270, file: !1271, line: 539, baseType: !1274, size: 32)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1271, line: 482, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !1271, line: 484, baseType: !7, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1270, file: !1271, line: 540, baseType: !1278, size: 192)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1271, line: 488, size: 192, elements: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1278, file: !1271, line: 489, baseType: !1274, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1271, line: 492, baseType: !655, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1278, file: !1271, line: 496, baseType: !661, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1270, file: !1271, line: 541, baseType: !1284, size: 256)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1271, line: 504, size: 256, elements: !1285)
!1285 = !{!1286, !1287, !1294, !1295}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1284, file: !1271, line: 505, baseType: !1274, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1284, file: !1271, line: 509, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1271, line: 501, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1284, file: !1271, line: 510, baseType: !1292, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1284, file: !1271, line: 513, baseType: !1268, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1270, file: !1271, line: 542, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1271, line: 530, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1297, file: !1271, line: 531, baseType: !1274, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1297, file: !1271, line: 534, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1271, line: 525, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!649, !661, !655, !715, !715}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1265, file: !839, line: 211, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1265, file: !839, line: 214, baseType: !717, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1265, file: !839, line: 224, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !839, line: 202, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !839, line: 202, size: 128, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1310, file: !839, line: 202, baseType: !1313, size: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !839, line: 200, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !839, line: 200, size: 128, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1314, file: !839, line: 200, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1314, file: !839, line: 200, baseType: !7, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1314, file: !839, line: 200, baseType: !870, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1265, file: !839, line: 234, baseType: !1308, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1259, file: !839, line: 197, baseType: !717, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !852, file: !839, line: 319, baseType: !724, size: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !852, file: !839, line: 320, baseType: !743, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !664, file: !334, line: 3384, baseType: !1324, size: 1472)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1325)
!1325 = !{!1326, !1347, !1348, !1349, !1350}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1324, file: !334, line: 3115, baseType: !1327, size: 1216)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !334, line: 2985, baseType: !832, size: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1327, file: !334, line: 2986, baseType: !661, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1327, file: !334, line: 2987, baseType: !661, size: 64, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1327, file: !334, line: 2988, baseType: !661, size: 64, offset: 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1327, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1327, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1327, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1327, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1327, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1327, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1327, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1327, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1327, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1327, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1327, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1327, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1327, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1327, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1324, file: !334, line: 3117, baseType: !661, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1324, file: !334, line: 3119, baseType: !661, size: 64, offset: 1280)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1324, file: !334, line: 3121, baseType: !661, size: 64, offset: 1344)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1324, file: !334, line: 3123, baseType: !661, size: 64, offset: 1408)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !664, file: !334, line: 3385, baseType: !1352, size: 1088)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1353)
!1353 = !{!1354, !1355, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1352, file: !334, line: 2875, baseType: !832, size: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1352, file: !334, line: 2876, baseType: !836, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1352, file: !334, line: 2877, baseType: !1357, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1359, line: 172, size: 128, elements: !1360)
!1359 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1358, file: !1359, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1358, file: !1359, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1358, file: !1359, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1358, file: !1359, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1358, file: !1359, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1358, file: !1359, line: 195, baseType: !7, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1358, file: !1359, line: 199, baseType: !661, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !664, file: !334, line: 3386, baseType: !1327, size: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !664, file: !334, line: 3387, baseType: !1370, size: 1280)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !334, line: 3094, baseType: !1327, size: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1370, file: !334, line: 3095, baseType: !1357, size: 64, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !664, file: !334, line: 3388, baseType: !1375, size: 1216)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1375, file: !334, line: 2825, baseType: !794, size: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1375, file: !334, line: 2827, baseType: !661, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1375, file: !334, line: 2828, baseType: !661, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1375, file: !334, line: 2829, baseType: !661, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1375, file: !334, line: 2830, baseType: !661, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1375, file: !334, line: 2831, baseType: !661, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !664, file: !334, line: 3389, baseType: !1384, size: 1024)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1384, file: !334, line: 2851, baseType: !832, size: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1384, file: !334, line: 2852, baseType: !650, size: 32, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1384, file: !334, line: 2853, baseType: !650, size: 32, offset: 992)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !664, file: !334, line: 3390, baseType: !1390, size: 1024)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1390, file: !334, line: 2858, baseType: !832, size: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1390, file: !334, line: 2859, baseType: !1357, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !664, file: !334, line: 3391, baseType: !1395, size: 960)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1395, file: !334, line: 2863, baseType: !832, size: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !664, file: !334, line: 3392, baseType: !1399, size: 1472)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !334, line: 3305, baseType: !1324, size: 1472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !664, file: !334, line: 3393, baseType: !1403, size: 1792)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1404)
!1404 = !{!1405, !1406, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1403, file: !334, line: 3249, baseType: !1324, size: 1472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1403, file: !334, line: 3251, baseType: !1407, size: 64, offset: 1472)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1409, line: 463, size: 1152, elements: !1410)
!1409 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1410 = !{!1411, !1414, !1445, !1446, !1559, !1562, !1563, !1564, !1565, !1566, !1567, !1591, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1408, file: !1409, line: 464, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1409, line: 464, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1408, file: !1409, line: 467, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1417)
!1417 = !{!1418, !1420, !1421, !1434, !1435, !1436, !1437, !1438, !1439, !1441, !1443, !1444}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1416, file: !318, line: 377, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !662, line: 111, baseType: !949)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1416, file: !318, line: 378, baseType: !1419, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1416, file: !318, line: 381, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1424, file: !318, line: 282, baseType: !1427, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1428, file: !318, line: 281, baseType: !7, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1428, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1428, file: !318, line: 281, baseType: !1433, size: 64, offset: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 64, elements: !760)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1416, file: !318, line: 384, baseType: !650, size: 32, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1416, file: !318, line: 387, baseType: !650, size: 32, offset: 224)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1416, file: !318, line: 390, baseType: !650, size: 32, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1416, file: !318, line: 394, baseType: !1422, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1416, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1416, file: !318, line: 399, baseType: !1440, size: 64, offset: 416)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !904)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1416, file: !318, line: 402, baseType: !1442, size: 64, offset: 480)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !904)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1416, file: !318, line: 406, baseType: !650, size: 32, offset: 544)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1416, file: !318, line: 409, baseType: !650, size: 32, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1408, file: !1409, line: 470, baseType: !976, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1408, file: !1409, line: 473, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1359, line: 39, size: 1152, elements: !1449)
!1449 = !{!1450, !1498, !1511, !1523, !1524, !1536, !1537, !1541, !1542, !1543, !1544, !1545}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1448, file: !1359, line: 41, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1452, line: 144, baseType: !1453)
!1452 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1452, line: 100, size: 896, elements: !1455)
!1455 = !{!1456, !1462, !1467, !1472, !1474, !1475, !1476, !1477, !1478, !1479, !1484, !1486, !1487, !1492, !1497}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1454, file: !1452, line: 102, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1452, line: 52, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1461, !1292}
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1452, line: 47, baseType: !7)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1454, file: !1452, line: 105, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1452, line: 59, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!650, !1292, !1292}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1454, file: !1452, line: 108, baseType: !1468, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1452, line: 63, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !654}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1454, file: !1452, line: 111, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1454, file: !1452, line: 114, baseType: !1131, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1454, file: !1452, line: 117, baseType: !1131, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1454, file: !1452, line: 120, baseType: !1131, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1454, file: !1452, line: 124, baseType: !7, size: 32, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1454, file: !1452, line: 128, baseType: !7, size: 32, offset: 480)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1454, file: !1452, line: 131, baseType: !1480, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1452, line: 75, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!654, !1131, !1131}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1454, file: !1452, line: 132, baseType: !1485, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1452, line: 78, baseType: !1469)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1454, file: !1452, line: 135, baseType: !654, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1454, file: !1452, line: 136, baseType: !1488, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1452, line: 82, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!654, !654, !1131, !1131}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1454, file: !1452, line: 137, baseType: !1493, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1452, line: 83, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !654, !654}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1454, file: !1452, line: 141, baseType: !7, size: 32, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1448, file: !1359, line: 48, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !583, line: 35, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !583, line: 35, size: 128, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1501, file: !583, line: 35, baseType: !1504, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !583, line: 33, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !583, line: 33, size: 128, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1505, file: !583, line: 33, baseType: !7, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1505, file: !583, line: 33, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1505, file: !583, line: 33, baseType: !1510, size: 64, offset: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 64, elements: !760)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1448, file: !1359, line: 51, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1514, file: !334, line: 183, baseType: !1517, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1518, file: !334, line: 182, baseType: !7, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1518, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1518, file: !334, line: 182, baseType: !1039, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1448, file: !1359, line: 54, baseType: !661, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1448, file: !1359, line: 57, baseType: !1525, size: 128, offset: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1526, line: 31, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1525, file: !1526, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1525, file: !1526, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1525, file: !1526, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1525, file: !1526, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1525, file: !1526, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1525, file: !1526, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1525, file: !1526, line: 56, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !662, line: 47, baseType: !888)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1448, file: !1359, line: 60, baseType: !1525, size: 128, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1448, file: !1359, line: 64, baseType: !1538, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1540, line: 33, flags: DIFlagFwdDecl)
!1540 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1448, file: !1359, line: 67, baseType: !661, size: 64, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1448, file: !1359, line: 73, baseType: !1451, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1448, file: !1359, line: 77, baseType: !1535, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1448, file: !1359, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1448, file: !1359, line: 82, baseType: !1546, size: 320, offset: 832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1016, line: 62, size: 320, elements: !1547)
!1547 = !{!1548, !1554, !1555, !1556, !1557, !1558}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1546, file: !1016, line: 63, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1016, line: 56, size: 128, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1550, file: !1016, line: 57, baseType: !1549, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1550, file: !1016, line: 58, baseType: !759, size: 8, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1546, file: !1016, line: 64, baseType: !7, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1546, file: !1016, line: 66, baseType: !7, size: 32, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1546, file: !1016, line: 68, baseType: !649, size: 8, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1546, file: !1016, line: 70, baseType: !1014, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1546, file: !1016, line: 71, baseType: !1022, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1408, file: !1409, line: 476, baseType: !1560, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1409, line: 476, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1408, file: !1409, line: 479, baseType: !1451, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1408, file: !1409, line: 484, baseType: !661, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1408, file: !1409, line: 488, baseType: !661, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1408, file: !1409, line: 493, baseType: !661, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1408, file: !1409, line: 496, baseType: !661, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1408, file: !1409, line: 501, baseType: !1568, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1570)
!1570 = !{!1571, !1574, !1575, !1576, !1577, !1579, !1580, !1585, !1586, !1587, !1588, !1589, !1590}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1569, file: !329, line: 2356, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1569, file: !329, line: 2357, baseType: !655, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1569, file: !329, line: 2358, baseType: !650, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1569, file: !329, line: 2359, baseType: !650, size: 32, offset: 160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1569, file: !329, line: 2360, baseType: !1578, size: 128, offset: 192)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 128, elements: !928)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1569, file: !329, line: 2364, baseType: !650, size: 32, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1569, file: !329, line: 2367, baseType: !1581, size: 128, offset: 384)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1581, file: !329, line: 2351, baseType: !836, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1581, file: !329, line: 2352, baseType: !717, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1569, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1569, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1569, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1569, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1569, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1569, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1408, file: !1409, line: 504, baseType: !1592, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1409, line: 504, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1408, file: !1409, line: 507, baseType: !1451, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1408, file: !1409, line: 510, baseType: !650, size: 32, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1408, file: !1409, line: 513, baseType: !650, size: 32, offset: 864)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1408, file: !1409, line: 516, baseType: !786, size: 32, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1408, file: !1409, line: 519, baseType: !786, size: 32, offset: 928)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1408, file: !1409, line: 522, baseType: !7, size: 32, offset: 960)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1408, file: !1409, line: 523, baseType: !7, size: 32, offset: 992)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1408, file: !1409, line: 528, baseType: !655, size: 64, offset: 1024)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1408, file: !1409, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1408, file: !1409, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1408, file: !1409, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1408, file: !1409, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1408, file: !1409, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1408, file: !1409, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1408, file: !1409, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1408, file: !1409, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1408, file: !1409, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1408, file: !1409, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1408, file: !1409, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1408, file: !1409, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1408, file: !1409, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1408, file: !1409, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1408, file: !1409, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1408, file: !1409, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1403, file: !334, line: 3254, baseType: !661, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1403, file: !334, line: 3257, baseType: !661, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1403, file: !334, line: 3258, baseType: !661, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1403, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1403, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1403, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1403, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1403, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1403, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1403, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1403, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1403, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1403, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1403, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1403, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1403, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1403, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1403, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1403, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1403, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1403, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !334, line: 3394, baseType: !1640, size: 1344)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1640, file: !334, line: 2280, baseType: !700, size: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1640, file: !334, line: 2281, baseType: !661, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1640, file: !334, line: 2282, baseType: !661, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1640, file: !334, line: 2283, baseType: !661, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1640, file: !334, line: 2284, baseType: !661, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1640, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1640, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1640, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1640, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1640, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1640, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1640, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1640, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1640, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1640, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1640, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1640, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1640, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1640, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1640, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1640, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1640, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1640, file: !334, line: 2306, baseType: !1242, size: 32, offset: 544)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1640, file: !334, line: 2307, baseType: !661, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1640, file: !334, line: 2308, baseType: !661, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1640, file: !334, line: 2314, baseType: !1668, size: 64, offset: 704)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1669)
!1669 = !{!1670, !1671, !1672}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1668, file: !334, line: 2310, baseType: !650, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1668, file: !334, line: 2311, baseType: !655, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1668, file: !334, line: 2312, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !334, line: 2315, baseType: !661, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1640, file: !334, line: 2316, baseType: !661, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1640, file: !334, line: 2317, baseType: !661, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1640, file: !334, line: 2318, baseType: !661, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1640, file: !334, line: 2319, baseType: !661, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1640, file: !334, line: 2320, baseType: !661, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1640, file: !334, line: 2321, baseType: !661, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1640, file: !334, line: 2322, baseType: !661, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1640, file: !334, line: 2324, baseType: !1684, size: 64, offset: 1280)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !664, file: !334, line: 3395, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1687, file: !334, line: 1470, baseType: !700, size: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1687, file: !334, line: 1471, baseType: !661, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1687, file: !334, line: 1472, baseType: !661, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !664, file: !334, line: 3396, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1693, file: !334, line: 1483, baseType: !700, size: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1693, file: !334, line: 1484, baseType: !650, size: 32, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1693, file: !334, line: 1485, baseType: !1039, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !664, file: !334, line: 3397, baseType: !1699, size: 384)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1699, file: !334, line: 1830, baseType: !700, size: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1699, file: !334, line: 1831, baseType: !786, size: 32, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1699, file: !334, line: 1832, baseType: !661, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1699, file: !334, line: 1835, baseType: !1039, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !664, file: !334, line: 3398, baseType: !1706, size: 704)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1717}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1706, file: !334, line: 1899, baseType: !700, size: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1706, file: !334, line: 1902, baseType: !661, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1706, file: !334, line: 1905, baseType: !985, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1706, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1706, file: !334, line: 1911, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1359, line: 117, size: 128, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1714, file: !1359, line: 120, baseType: !1525, size: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1706, file: !334, line: 1914, baseType: !1027, size: 256, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !664, file: !334, line: 3399, baseType: !1719, size: 704)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1719, file: !334, line: 2009, baseType: !700, size: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1719, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1719, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1719, file: !334, line: 2014, baseType: !786, size: 32, offset: 224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1719, file: !334, line: 2016, baseType: !661, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1719, file: !334, line: 2017, baseType: !1512, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1719, file: !334, line: 2019, baseType: !661, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1719, file: !334, line: 2020, baseType: !661, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1719, file: !334, line: 2021, baseType: !661, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1719, file: !334, line: 2022, baseType: !661, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1719, file: !334, line: 2023, baseType: !661, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !664, file: !334, line: 3400, baseType: !1733, size: 832)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1733, file: !334, line: 2431, baseType: !700, size: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1733, file: !334, line: 2433, baseType: !661, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1733, file: !334, line: 2434, baseType: !661, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1733, file: !334, line: 2435, baseType: !661, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1733, file: !334, line: 2436, baseType: !661, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1733, file: !334, line: 2437, baseType: !1512, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1733, file: !334, line: 2438, baseType: !661, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1733, file: !334, line: 2440, baseType: !661, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1733, file: !334, line: 2441, baseType: !661, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1733, file: !334, line: 2443, baseType: !1745, size: 128, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1746, file: !334, line: 182, baseType: !1517, size: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !664, file: !334, line: 3401, baseType: !1750, size: 320)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1751)
!1751 = !{!1752, !1753, !1760}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1750, file: !334, line: 3329, baseType: !700, size: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1750, file: !334, line: 3330, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1755, file: !334, line: 3322, baseType: !1754, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1755, file: !334, line: 3323, baseType: !1754, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1755, file: !334, line: 3324, baseType: !661, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1750, file: !334, line: 3331, baseType: !1754, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !664, file: !334, line: 3402, baseType: !1762, size: 256)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1762, file: !334, line: 1541, baseType: !700, size: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1762, file: !334, line: 1542, baseType: !1766, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1768, file: !334, line: 1538, baseType: !1771, size: 192)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1773)
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1772, file: !334, line: 1537, baseType: !7, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1772, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1772, file: !334, line: 1537, baseType: !1777, size: 128, offset: 64)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, size: 128, elements: !760)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1779, file: !334, line: 1533, baseType: !661, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1779, file: !334, line: 1534, baseType: !661, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !664, file: !334, line: 3403, baseType: !1784, size: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1795, !1796, !1797}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1784, file: !334, line: 1939, baseType: !700, size: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1784, file: !334, line: 1940, baseType: !786, size: 32, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1784, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1784, file: !334, line: 1946, baseType: !1790, size: 32, offset: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1790, file: !334, line: 1943, baseType: !352, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1790, file: !334, line: 1944, baseType: !359, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1790, file: !334, line: 1945, baseType: !366, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1784, file: !334, line: 1950, baseType: !975, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1784, file: !334, line: 1951, baseType: !975, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1784, file: !334, line: 1953, baseType: !1039, size: 64, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !664, file: !334, line: 3404, baseType: !1799, size: 1664)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1799, file: !334, line: 3338, baseType: !700, size: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1799, file: !334, line: 3341, baseType: !1803, size: 1472, offset: 192)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1804, line: 410, size: 1472, elements: !1805)
!1804 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1803, file: !1804, line: 412, baseType: !650, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1803, file: !1804, line: 413, baseType: !650, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1803, file: !1804, line: 414, baseType: !650, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1803, file: !1804, line: 415, baseType: !650, size: 32, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1803, file: !1804, line: 416, baseType: !650, size: 32, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1803, file: !1804, line: 417, baseType: !650, size: 32, offset: 160)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1803, file: !1804, line: 418, baseType: !649, size: 8, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1803, file: !1804, line: 419, baseType: !649, size: 8, offset: 200)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1803, file: !1804, line: 420, baseType: !1815, size: 8, offset: 208)
!1815 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1803, file: !1804, line: 421, baseType: !1815, size: 8, offset: 216)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1803, file: !1804, line: 422, baseType: !1815, size: 8, offset: 224)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1803, file: !1804, line: 423, baseType: !1815, size: 8, offset: 232)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1803, file: !1804, line: 424, baseType: !1815, size: 8, offset: 240)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1803, file: !1804, line: 425, baseType: !1815, size: 8, offset: 248)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1803, file: !1804, line: 426, baseType: !1815, size: 8, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1803, file: !1804, line: 427, baseType: !1815, size: 8, offset: 264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1803, file: !1804, line: 428, baseType: !1815, size: 8, offset: 272)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1803, file: !1804, line: 429, baseType: !1815, size: 8, offset: 280)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1803, file: !1804, line: 430, baseType: !1815, size: 8, offset: 288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1803, file: !1804, line: 431, baseType: !1815, size: 8, offset: 296)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1803, file: !1804, line: 432, baseType: !1815, size: 8, offset: 304)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1803, file: !1804, line: 433, baseType: !1815, size: 8, offset: 312)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1803, file: !1804, line: 434, baseType: !1815, size: 8, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1803, file: !1804, line: 435, baseType: !1815, size: 8, offset: 328)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1803, file: !1804, line: 436, baseType: !1815, size: 8, offset: 336)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1803, file: !1804, line: 437, baseType: !1815, size: 8, offset: 344)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1803, file: !1804, line: 438, baseType: !1815, size: 8, offset: 352)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1803, file: !1804, line: 439, baseType: !1815, size: 8, offset: 360)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1803, file: !1804, line: 440, baseType: !1815, size: 8, offset: 368)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1803, file: !1804, line: 441, baseType: !1815, size: 8, offset: 376)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1803, file: !1804, line: 442, baseType: !1815, size: 8, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1803, file: !1804, line: 443, baseType: !1815, size: 8, offset: 392)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1803, file: !1804, line: 444, baseType: !1815, size: 8, offset: 400)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1803, file: !1804, line: 445, baseType: !1815, size: 8, offset: 408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1803, file: !1804, line: 446, baseType: !1815, size: 8, offset: 416)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1803, file: !1804, line: 447, baseType: !1815, size: 8, offset: 424)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1803, file: !1804, line: 448, baseType: !1815, size: 8, offset: 432)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1803, file: !1804, line: 449, baseType: !1815, size: 8, offset: 440)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1803, file: !1804, line: 450, baseType: !1815, size: 8, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1803, file: !1804, line: 451, baseType: !1815, size: 8, offset: 456)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1803, file: !1804, line: 452, baseType: !1815, size: 8, offset: 464)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1803, file: !1804, line: 453, baseType: !1815, size: 8, offset: 472)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1803, file: !1804, line: 454, baseType: !1815, size: 8, offset: 480)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1803, file: !1804, line: 455, baseType: !1815, size: 8, offset: 488)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1803, file: !1804, line: 456, baseType: !1815, size: 8, offset: 496)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1803, file: !1804, line: 457, baseType: !1815, size: 8, offset: 504)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1803, file: !1804, line: 458, baseType: !1815, size: 8, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1803, file: !1804, line: 459, baseType: !1815, size: 8, offset: 520)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1803, file: !1804, line: 460, baseType: !1815, size: 8, offset: 528)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1803, file: !1804, line: 461, baseType: !1815, size: 8, offset: 536)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1803, file: !1804, line: 462, baseType: !1815, size: 8, offset: 544)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1803, file: !1804, line: 463, baseType: !1815, size: 8, offset: 552)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1803, file: !1804, line: 464, baseType: !1815, size: 8, offset: 560)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1803, file: !1804, line: 465, baseType: !1815, size: 8, offset: 568)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1803, file: !1804, line: 466, baseType: !1815, size: 8, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1803, file: !1804, line: 467, baseType: !1815, size: 8, offset: 584)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1803, file: !1804, line: 468, baseType: !1815, size: 8, offset: 592)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1803, file: !1804, line: 469, baseType: !1815, size: 8, offset: 600)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1803, file: !1804, line: 470, baseType: !1815, size: 8, offset: 608)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1803, file: !1804, line: 471, baseType: !1815, size: 8, offset: 616)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1803, file: !1804, line: 472, baseType: !1815, size: 8, offset: 624)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1803, file: !1804, line: 473, baseType: !1815, size: 8, offset: 632)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1803, file: !1804, line: 474, baseType: !1815, size: 8, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1803, file: !1804, line: 475, baseType: !1815, size: 8, offset: 648)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1803, file: !1804, line: 476, baseType: !1815, size: 8, offset: 656)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1803, file: !1804, line: 477, baseType: !1815, size: 8, offset: 664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1803, file: !1804, line: 478, baseType: !1815, size: 8, offset: 672)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1803, file: !1804, line: 479, baseType: !1815, size: 8, offset: 680)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1803, file: !1804, line: 480, baseType: !1815, size: 8, offset: 688)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1803, file: !1804, line: 481, baseType: !1815, size: 8, offset: 696)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1803, file: !1804, line: 482, baseType: !1815, size: 8, offset: 704)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1803, file: !1804, line: 483, baseType: !1815, size: 8, offset: 712)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1803, file: !1804, line: 484, baseType: !1815, size: 8, offset: 720)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1803, file: !1804, line: 485, baseType: !1815, size: 8, offset: 728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1803, file: !1804, line: 486, baseType: !1815, size: 8, offset: 736)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1803, file: !1804, line: 487, baseType: !1815, size: 8, offset: 744)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1803, file: !1804, line: 488, baseType: !1815, size: 8, offset: 752)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1803, file: !1804, line: 489, baseType: !1815, size: 8, offset: 760)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1803, file: !1804, line: 490, baseType: !1815, size: 8, offset: 768)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1803, file: !1804, line: 491, baseType: !1815, size: 8, offset: 776)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1803, file: !1804, line: 492, baseType: !1815, size: 8, offset: 784)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1803, file: !1804, line: 493, baseType: !1815, size: 8, offset: 792)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1803, file: !1804, line: 494, baseType: !1815, size: 8, offset: 800)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1803, file: !1804, line: 495, baseType: !1815, size: 8, offset: 808)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1803, file: !1804, line: 496, baseType: !1815, size: 8, offset: 816)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1803, file: !1804, line: 497, baseType: !1815, size: 8, offset: 824)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1803, file: !1804, line: 498, baseType: !1815, size: 8, offset: 832)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1803, file: !1804, line: 499, baseType: !1815, size: 8, offset: 840)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1803, file: !1804, line: 500, baseType: !1815, size: 8, offset: 848)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1803, file: !1804, line: 501, baseType: !1815, size: 8, offset: 856)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1803, file: !1804, line: 502, baseType: !1815, size: 8, offset: 864)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1803, file: !1804, line: 503, baseType: !1815, size: 8, offset: 872)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1803, file: !1804, line: 504, baseType: !1815, size: 8, offset: 880)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1803, file: !1804, line: 505, baseType: !1815, size: 8, offset: 888)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1803, file: !1804, line: 506, baseType: !1815, size: 8, offset: 896)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1803, file: !1804, line: 507, baseType: !1815, size: 8, offset: 904)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1803, file: !1804, line: 508, baseType: !1815, size: 8, offset: 912)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1803, file: !1804, line: 509, baseType: !1815, size: 8, offset: 920)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1803, file: !1804, line: 510, baseType: !1815, size: 8, offset: 928)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1803, file: !1804, line: 511, baseType: !1815, size: 8, offset: 936)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1803, file: !1804, line: 512, baseType: !1815, size: 8, offset: 944)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1803, file: !1804, line: 513, baseType: !1815, size: 8, offset: 952)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1803, file: !1804, line: 514, baseType: !1815, size: 8, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1803, file: !1804, line: 515, baseType: !1815, size: 8, offset: 968)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1803, file: !1804, line: 516, baseType: !1815, size: 8, offset: 976)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1803, file: !1804, line: 517, baseType: !1815, size: 8, offset: 984)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1803, file: !1804, line: 518, baseType: !1815, size: 8, offset: 992)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1803, file: !1804, line: 519, baseType: !1815, size: 8, offset: 1000)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1803, file: !1804, line: 520, baseType: !1815, size: 8, offset: 1008)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1803, file: !1804, line: 521, baseType: !1815, size: 8, offset: 1016)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1803, file: !1804, line: 522, baseType: !1815, size: 8, offset: 1024)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1803, file: !1804, line: 523, baseType: !1815, size: 8, offset: 1032)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1803, file: !1804, line: 524, baseType: !1815, size: 8, offset: 1040)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1803, file: !1804, line: 525, baseType: !1815, size: 8, offset: 1048)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1803, file: !1804, line: 526, baseType: !1815, size: 8, offset: 1056)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1803, file: !1804, line: 527, baseType: !1815, size: 8, offset: 1064)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1803, file: !1804, line: 528, baseType: !1815, size: 8, offset: 1072)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1803, file: !1804, line: 529, baseType: !1815, size: 8, offset: 1080)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1803, file: !1804, line: 530, baseType: !1815, size: 8, offset: 1088)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1803, file: !1804, line: 531, baseType: !1815, size: 8, offset: 1096)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1803, file: !1804, line: 532, baseType: !1815, size: 8, offset: 1104)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1803, file: !1804, line: 533, baseType: !1815, size: 8, offset: 1112)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1803, file: !1804, line: 534, baseType: !1815, size: 8, offset: 1120)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1803, file: !1804, line: 535, baseType: !1815, size: 8, offset: 1128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1803, file: !1804, line: 536, baseType: !1815, size: 8, offset: 1136)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1803, file: !1804, line: 537, baseType: !1815, size: 8, offset: 1144)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1803, file: !1804, line: 538, baseType: !1815, size: 8, offset: 1152)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1803, file: !1804, line: 539, baseType: !1815, size: 8, offset: 1160)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1803, file: !1804, line: 540, baseType: !1815, size: 8, offset: 1168)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1803, file: !1804, line: 541, baseType: !1815, size: 8, offset: 1176)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1803, file: !1804, line: 542, baseType: !1815, size: 8, offset: 1184)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1803, file: !1804, line: 543, baseType: !1815, size: 8, offset: 1192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1803, file: !1804, line: 544, baseType: !1815, size: 8, offset: 1200)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1803, file: !1804, line: 545, baseType: !1815, size: 8, offset: 1208)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1803, file: !1804, line: 546, baseType: !1815, size: 8, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1803, file: !1804, line: 547, baseType: !1815, size: 8, offset: 1224)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1803, file: !1804, line: 548, baseType: !1815, size: 8, offset: 1232)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1803, file: !1804, line: 549, baseType: !1815, size: 8, offset: 1240)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1803, file: !1804, line: 550, baseType: !1815, size: 8, offset: 1248)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1803, file: !1804, line: 551, baseType: !1815, size: 8, offset: 1256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1803, file: !1804, line: 552, baseType: !1815, size: 8, offset: 1264)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1803, file: !1804, line: 553, baseType: !1815, size: 8, offset: 1272)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1803, file: !1804, line: 554, baseType: !1815, size: 8, offset: 1280)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1803, file: !1804, line: 555, baseType: !1815, size: 8, offset: 1288)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1803, file: !1804, line: 556, baseType: !1815, size: 8, offset: 1296)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1803, file: !1804, line: 557, baseType: !1815, size: 8, offset: 1304)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1803, file: !1804, line: 558, baseType: !1815, size: 8, offset: 1312)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1803, file: !1804, line: 559, baseType: !1815, size: 8, offset: 1320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1803, file: !1804, line: 560, baseType: !1815, size: 8, offset: 1328)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1803, file: !1804, line: 561, baseType: !1815, size: 8, offset: 1336)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1803, file: !1804, line: 562, baseType: !1815, size: 8, offset: 1344)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1803, file: !1804, line: 563, baseType: !1815, size: 8, offset: 1352)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1803, file: !1804, line: 564, baseType: !1815, size: 8, offset: 1360)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1803, file: !1804, line: 565, baseType: !1815, size: 8, offset: 1368)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1803, file: !1804, line: 566, baseType: !1815, size: 8, offset: 1376)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1803, file: !1804, line: 567, baseType: !1815, size: 8, offset: 1384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1803, file: !1804, line: 568, baseType: !1815, size: 8, offset: 1392)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1803, file: !1804, line: 569, baseType: !1815, size: 8, offset: 1400)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1803, file: !1804, line: 570, baseType: !1815, size: 8, offset: 1408)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1803, file: !1804, line: 571, baseType: !1815, size: 8, offset: 1416)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1803, file: !1804, line: 572, baseType: !1815, size: 8, offset: 1424)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1803, file: !1804, line: 573, baseType: !1815, size: 8, offset: 1432)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1803, file: !1804, line: 574, baseType: !1815, size: 8, offset: 1440)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !664, file: !334, line: 3405, baseType: !1971, size: 384)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1971, file: !334, line: 3353, baseType: !700, size: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1971, file: !334, line: 3356, baseType: !1975, size: 192, offset: 192)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1804, line: 578, size: 192, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1975, file: !1804, line: 580, baseType: !650, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1975, file: !1804, line: 581, baseType: !650, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1975, file: !1804, line: 582, baseType: !650, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1975, file: !1804, line: 583, baseType: !650, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1975, file: !1804, line: 584, baseType: !649, size: 8, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1975, file: !1804, line: 585, baseType: !649, size: 8, offset: 136)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1975, file: !1804, line: 586, baseType: !649, size: 8, offset: 144)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1975, file: !1804, line: 587, baseType: !649, size: 8, offset: 152)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1975, file: !1804, line: 588, baseType: !649, size: 8, offset: 160)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1975, file: !1804, line: 589, baseType: !649, size: 8, offset: 168)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1975, file: !1804, line: 590, baseType: !649, size: 8, offset: 176)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !658, file: !3, line: 50, baseType: !661, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "equiv_hash_elt", file: !3, line: 284, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1993, file: !3, line: 287, baseType: !661, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "equivalences", scope: !1993, file: !3, line: 290, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !334, line: 184, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !334, line: 184, size: 128, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1999, file: !334, line: 184, baseType: !1517, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2003 = !{!0, !2004, !2006}
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(name: "equiv", scope: !2, file: !3, line: 281, type: !1451, isLocal: true, isDefinition: true)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(name: "equiv_stack", scope: !2, file: !3, line: 276, type: !1997, isLocal: true, isDefinition: true)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2009)
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2008, file: !6, line: 158, baseType: !2011, size: 640)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2019, !2023, !2025, !2026, !2027, !2029, !2030, !2031, !2032, !2033}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !6, line: 117, baseType: !5, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2011, file: !6, line: 121, baseType: !655, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2011, file: !6, line: 125, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!649}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2011, file: !6, line: 130, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!7}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2011, file: !6, line: 133, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !6, line: 136, baseType: !2024, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2011, file: !6, line: 139, baseType: !650, size: 32, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2011, file: !6, line: 143, baseType: !2028, size: 32, offset: 416)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2011, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2011, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2011, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2011, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2011, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2034 = !{i32 2, !"Dwarf Version", i32 4}
!2035 = !{i32 2, !"Debug Info Version", i32 3}
!2036 = !{i32 1, !"wchar_size", i32 4}
!2037 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2038 = distinct !DISubprogram(name: "vprintf", scope: !2039, file: !2039, line: 39, type: !2040, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!650, !2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !655)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2044, file: !3, baseType: !7, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2044, file: !3, baseType: !7, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2044, file: !3, baseType: !654, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2044, file: !3, baseType: !654, size: 64, offset: 128)
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2038, file: !2039, line: 39, type: !2042)
!2052 = !DILocalVariable(name: "__arg", arg: 2, scope: !2038, file: !2039, line: 39, type: !2043)
!2053 = !DILocation(line: 0, scope: !2038)
!2054 = !DILocation(line: 41, column: 20, scope: !2038)
!2055 = !DILocation(line: 41, column: 10, scope: !2038)
!2056 = !DILocation(line: 41, column: 3, scope: !2038)
!2057 = distinct !DISubprogram(name: "getchar", scope: !2039, file: !2039, line: 47, type: !2058, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!650}
!2060 = !{}
!2061 = !DILocation(line: 49, column: 16, scope: !2057)
!2062 = !DILocation(line: 49, column: 10, scope: !2057)
!2063 = !DILocation(line: 49, column: 3, scope: !2057)
!2064 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2039, file: !2039, line: 56, type: !2065, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!650, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2069, line: 7, baseType: !2070)
!2069 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2071, line: 49, size: 1728, elements: !2072)
!2071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2090, !2091, !2092, !2095, !2097, !2098, !2099, !2102, !2104, !2107, !2110, !2111, !2112, !2113, !2114}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2070, file: !2071, line: 51, baseType: !650, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2070, file: !2071, line: 54, baseType: !652, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2070, file: !2071, line: 55, baseType: !652, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2070, file: !2071, line: 56, baseType: !652, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2070, file: !2071, line: 57, baseType: !652, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2070, file: !2071, line: 58, baseType: !652, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2070, file: !2071, line: 59, baseType: !652, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2070, file: !2071, line: 60, baseType: !652, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2070, file: !2071, line: 61, baseType: !652, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2070, file: !2071, line: 64, baseType: !652, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2070, file: !2071, line: 65, baseType: !652, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2070, file: !2071, line: 66, baseType: !652, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2070, file: !2071, line: 68, baseType: !2086, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2071, line: 36, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2070, file: !2071, line: 70, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2070, file: !2071, line: 72, baseType: !650, size: 32, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2070, file: !2071, line: 73, baseType: !650, size: 32, offset: 928)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2070, file: !2071, line: 74, baseType: !2093, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2094, line: 152, baseType: !717)
!2094 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2070, file: !2071, line: 77, baseType: !2096, size: 16, offset: 1024)
!2096 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2070, file: !2071, line: 78, baseType: !1815, size: 8, offset: 1040)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2070, file: !2071, line: 79, baseType: !759, size: 8, offset: 1048)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2070, file: !2071, line: 81, baseType: !2100, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2071, line: 43, baseType: null)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2070, file: !2071, line: 89, baseType: !2103, size: 64, offset: 1152)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2094, line: 153, baseType: !717)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2070, file: !2071, line: 91, baseType: !2105, size: 64, offset: 1216)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2071, line: 37, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2070, file: !2071, line: 92, baseType: !2108, size: 64, offset: 1280)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2071, line: 38, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2070, file: !2071, line: 93, baseType: !2089, size: 64, offset: 1344)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2070, file: !2071, line: 94, baseType: !654, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2070, file: !2071, line: 95, baseType: !1131, size: 64, offset: 1472)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2070, file: !2071, line: 96, baseType: !650, size: 32, offset: 1536)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2070, file: !2071, line: 98, baseType: !2115, size: 160, offset: 1568)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 160, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 20)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "__fp", arg: 1, scope: !2064, file: !2039, line: 56, type: !2067)
!2120 = !DILocation(line: 0, scope: !2064)
!2121 = !DILocation(line: 58, column: 10, scope: !2064)
!2122 = !DILocation(line: 58, column: 3, scope: !2064)
!2123 = distinct !DISubprogram(name: "getc_unlocked", scope: !2039, file: !2039, line: 66, type: !2065, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2124 = !{!2125}
!2125 = !DILocalVariable(name: "__fp", arg: 1, scope: !2123, file: !2039, line: 66, type: !2067)
!2126 = !DILocation(line: 0, scope: !2123)
!2127 = !DILocation(line: 68, column: 10, scope: !2123)
!2128 = !DILocation(line: 68, column: 3, scope: !2123)
!2129 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2039, file: !2039, line: 73, type: !2058, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2130 = !DILocation(line: 75, column: 10, scope: !2129)
!2131 = !DILocation(line: 75, column: 3, scope: !2129)
!2132 = distinct !DISubprogram(name: "putchar", scope: !2039, file: !2039, line: 82, type: !2133, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!650, !650}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "__c", arg: 1, scope: !2132, file: !2039, line: 82, type: !650)
!2137 = !DILocation(line: 0, scope: !2132)
!2138 = !DILocation(line: 84, column: 21, scope: !2132)
!2139 = !DILocation(line: 84, column: 10, scope: !2132)
!2140 = !DILocation(line: 84, column: 3, scope: !2132)
!2141 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2039, file: !2039, line: 91, type: !2142, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!650, !650, !2067}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "__c", arg: 1, scope: !2141, file: !2039, line: 91, type: !650)
!2146 = !DILocalVariable(name: "__stream", arg: 2, scope: !2141, file: !2039, line: 91, type: !2067)
!2147 = !DILocation(line: 0, scope: !2141)
!2148 = !DILocation(line: 93, column: 10, scope: !2141)
!2149 = !DILocation(line: 93, column: 3, scope: !2141)
!2150 = distinct !DISubprogram(name: "putc_unlocked", scope: !2039, file: !2039, line: 101, type: !2142, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "__c", arg: 1, scope: !2150, file: !2039, line: 101, type: !650)
!2153 = !DILocalVariable(name: "__stream", arg: 2, scope: !2150, file: !2039, line: 101, type: !2067)
!2154 = !DILocation(line: 0, scope: !2150)
!2155 = !DILocation(line: 103, column: 10, scope: !2150)
!2156 = !DILocation(line: 103, column: 3, scope: !2150)
!2157 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2039, file: !2039, line: 108, type: !2133, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "__c", arg: 1, scope: !2157, file: !2039, line: 108, type: !650)
!2160 = !DILocation(line: 0, scope: !2157)
!2161 = !DILocation(line: 110, column: 10, scope: !2157)
!2162 = !DILocation(line: 110, column: 3, scope: !2157)
!2163 = distinct !DISubprogram(name: "getline", scope: !2039, file: !2039, line: 118, type: !2164, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!2166, !651, !2167, !2067}
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2094, line: 193, baseType: !717)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2163, file: !2039, line: 118, type: !651)
!2170 = !DILocalVariable(name: "__n", arg: 2, scope: !2163, file: !2039, line: 118, type: !2167)
!2171 = !DILocalVariable(name: "__stream", arg: 3, scope: !2163, file: !2039, line: 118, type: !2067)
!2172 = !DILocation(line: 0, scope: !2163)
!2173 = !DILocation(line: 120, column: 10, scope: !2163)
!2174 = !DILocation(line: 120, column: 3, scope: !2163)
!2175 = distinct !DISubprogram(name: "feof_unlocked", scope: !2039, file: !2039, line: 128, type: !2065, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "__stream", arg: 1, scope: !2175, file: !2039, line: 128, type: !2067)
!2178 = !DILocation(line: 0, scope: !2175)
!2179 = !DILocation(line: 130, column: 10, scope: !2175)
!2180 = !DILocation(line: 130, column: 3, scope: !2175)
!2181 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2039, file: !2039, line: 135, type: !2065, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "__stream", arg: 1, scope: !2181, file: !2039, line: 135, type: !2067)
!2184 = !DILocation(line: 0, scope: !2181)
!2185 = !DILocation(line: 137, column: 10, scope: !2181)
!2186 = !DILocation(line: 137, column: 3, scope: !2181)
!2187 = distinct !DISubprogram(name: "tolower", scope: !2188, file: !2188, line: 207, type: !2133, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2188 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2189 = !{!2190}
!2190 = !DILocalVariable(name: "__c", arg: 1, scope: !2187, file: !2188, line: 207, type: !650)
!2191 = !DILocation(line: 0, scope: !2187)
!2192 = !DILocation(line: 209, column: 22, scope: !2187)
!2193 = !DILocation(line: 209, column: 39, scope: !2187)
!2194 = !DILocation(line: 209, column: 38, scope: !2187)
!2195 = !DILocation(line: 209, column: 37, scope: !2187)
!2196 = !DILocation(line: 209, column: 10, scope: !2187)
!2197 = !DILocation(line: 209, column: 3, scope: !2187)
!2198 = distinct !DISubprogram(name: "toupper", scope: !2188, file: !2188, line: 213, type: !2133, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "__c", arg: 1, scope: !2198, file: !2188, line: 213, type: !650)
!2201 = !DILocation(line: 0, scope: !2198)
!2202 = !DILocation(line: 215, column: 22, scope: !2198)
!2203 = !DILocation(line: 215, column: 39, scope: !2198)
!2204 = !DILocation(line: 215, column: 38, scope: !2198)
!2205 = !DILocation(line: 215, column: 37, scope: !2198)
!2206 = !DILocation(line: 215, column: 10, scope: !2198)
!2207 = !DILocation(line: 215, column: 3, scope: !2198)
!2208 = distinct !DISubprogram(name: "atoi", scope: !2209, file: !2209, line: 361, type: !2210, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2209 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!650, !655}
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2208, file: !2209, line: 361, type: !655)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 363, column: 16, scope: !2208)
!2216 = !DILocation(line: 363, column: 10, scope: !2208)
!2217 = !DILocation(line: 363, column: 3, scope: !2208)
!2218 = distinct !DISubprogram(name: "atol", scope: !2209, file: !2209, line: 366, type: !2219, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!717, !655}
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2218, file: !2209, line: 366, type: !655)
!2223 = !DILocation(line: 0, scope: !2218)
!2224 = !DILocation(line: 368, column: 10, scope: !2218)
!2225 = !DILocation(line: 368, column: 3, scope: !2218)
!2226 = distinct !DISubprogram(name: "atoll", scope: !2209, file: !2209, line: 373, type: !2227, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2229, !655}
!2229 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2226, file: !2209, line: 373, type: !655)
!2232 = !DILocation(line: 0, scope: !2226)
!2233 = !DILocation(line: 375, column: 10, scope: !2226)
!2234 = !DILocation(line: 375, column: 3, scope: !2226)
!2235 = distinct !DISubprogram(name: "bsearch", scope: !2236, file: !2236, line: 20, type: !2237, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2240)
!2236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!654, !1292, !1292, !1131, !1131, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2209, line: 808, baseType: !1464)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2241 = !DILocalVariable(name: "__key", arg: 1, scope: !2235, file: !2236, line: 20, type: !1292)
!2242 = !DILocalVariable(name: "__base", arg: 2, scope: !2235, file: !2236, line: 20, type: !1292)
!2243 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2235, file: !2236, line: 20, type: !1131)
!2244 = !DILocalVariable(name: "__size", arg: 4, scope: !2235, file: !2236, line: 20, type: !1131)
!2245 = !DILocalVariable(name: "__compar", arg: 5, scope: !2235, file: !2236, line: 21, type: !2239)
!2246 = !DILocalVariable(name: "__l", scope: !2235, file: !2236, line: 23, type: !1131)
!2247 = !DILocalVariable(name: "__u", scope: !2235, file: !2236, line: 23, type: !1131)
!2248 = !DILocalVariable(name: "__idx", scope: !2235, file: !2236, line: 23, type: !1131)
!2249 = !DILocalVariable(name: "__p", scope: !2235, file: !2236, line: 24, type: !1292)
!2250 = !DILocalVariable(name: "__comparison", scope: !2235, file: !2236, line: 25, type: !650)
!2251 = !DILocation(line: 0, scope: !2235)
!2252 = !DILocation(line: 29, column: 3, scope: !2235)
!2253 = !DILocation(line: 27, column: 7, scope: !2235)
!2254 = !DILocation(line: 29, column: 14, scope: !2235)
!2255 = !DILocation(line: 31, column: 20, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2235, file: !2236, line: 30, column: 5)
!2257 = !DILocation(line: 31, column: 27, scope: !2256)
!2258 = !DILocation(line: 32, column: 56, scope: !2256)
!2259 = !DILocation(line: 32, column: 47, scope: !2256)
!2260 = !DILocation(line: 33, column: 22, scope: !2256)
!2261 = !DILocation(line: 34, column: 24, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !2236, line: 34, column: 11)
!2263 = !DILocation(line: 34, column: 11, scope: !2256)
!2264 = !DILocation(line: 36, column: 29, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !2236, line: 36, column: 16)
!2266 = !DILocation(line: 36, column: 16, scope: !2262)
!2267 = !DILocation(line: 37, column: 14, scope: !2265)
!2268 = distinct !{!2268, !2252, !2269}
!2269 = !DILocation(line: 40, column: 5, scope: !2235)
!2270 = !DILocation(line: 43, column: 1, scope: !2235)
!2271 = distinct !DISubprogram(name: "atof", scope: !2272, file: !2272, line: 25, type: !2273, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2275, !655}
!2275 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2276 = !{!2277}
!2277 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2271, file: !2272, line: 25, type: !655)
!2278 = !DILocation(line: 0, scope: !2271)
!2279 = !DILocation(line: 27, column: 10, scope: !2271)
!2280 = !DILocation(line: 27, column: 3, scope: !2271)
!2281 = distinct !DISubprogram(name: "strtoimax", scope: !2282, file: !2282, line: 324, type: !2283, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2282 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2285, !2042, !2288, !650}
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2286, line: 101, baseType: !2287)
!2286 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2094, line: 72, baseType: !717)
!2288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !651)
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "nptr", arg: 1, scope: !2281, file: !2282, line: 324, type: !2042)
!2291 = !DILocalVariable(name: "endptr", arg: 2, scope: !2281, file: !2282, line: 324, type: !2288)
!2292 = !DILocalVariable(name: "base", arg: 3, scope: !2281, file: !2282, line: 324, type: !650)
!2293 = !DILocation(line: 0, scope: !2281)
!2294 = !DILocation(line: 327, column: 10, scope: !2281)
!2295 = !DILocation(line: 327, column: 3, scope: !2281)
!2296 = distinct !DISubprogram(name: "strtoumax", scope: !2282, file: !2282, line: 336, type: !2297, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2301)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!2299, !2042, !2288, !650}
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2286, line: 102, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2094, line: 73, baseType: !715)
!2301 = !{!2302, !2303, !2304}
!2302 = !DILocalVariable(name: "nptr", arg: 1, scope: !2296, file: !2282, line: 336, type: !2042)
!2303 = !DILocalVariable(name: "endptr", arg: 2, scope: !2296, file: !2282, line: 336, type: !2288)
!2304 = !DILocalVariable(name: "base", arg: 3, scope: !2296, file: !2282, line: 336, type: !650)
!2305 = !DILocation(line: 0, scope: !2296)
!2306 = !DILocation(line: 339, column: 10, scope: !2296)
!2307 = !DILocation(line: 339, column: 3, scope: !2296)
!2308 = distinct !DISubprogram(name: "wcstoimax", scope: !2282, file: !2282, line: 348, type: !2309, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2285, !2311, !2315, !650}
!2311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2282, line: 34, baseType: !650)
!2315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "nptr", arg: 1, scope: !2308, file: !2282, line: 348, type: !2311)
!2320 = !DILocalVariable(name: "endptr", arg: 2, scope: !2308, file: !2282, line: 348, type: !2315)
!2321 = !DILocalVariable(name: "base", arg: 3, scope: !2308, file: !2282, line: 348, type: !650)
!2322 = !DILocation(line: 0, scope: !2308)
!2323 = !DILocation(line: 351, column: 10, scope: !2308)
!2324 = !DILocation(line: 351, column: 3, scope: !2308)
!2325 = distinct !DISubprogram(name: "wcstoumax", scope: !2282, file: !2282, line: 362, type: !2326, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!2299, !2311, !2315, !650}
!2328 = !{!2329, !2330, !2331}
!2329 = !DILocalVariable(name: "nptr", arg: 1, scope: !2325, file: !2282, line: 362, type: !2311)
!2330 = !DILocalVariable(name: "endptr", arg: 2, scope: !2325, file: !2282, line: 362, type: !2315)
!2331 = !DILocalVariable(name: "base", arg: 3, scope: !2325, file: !2282, line: 362, type: !650)
!2332 = !DILocation(line: 0, scope: !2325)
!2333 = !DILocation(line: 365, column: 10, scope: !2325)
!2334 = !DILocation(line: 365, column: 3, scope: !2325)
!2335 = distinct !DISubprogram(name: "stat", scope: !2336, file: !2336, line: 453, type: !2337, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!650, !655, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2341, line: 46, size: 1152, elements: !2342)
!2341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2342 = !{!2343, !2345, !2347, !2349, !2351, !2353, !2355, !2356, !2357, !2358, !2360, !2362, !2370, !2371, !2372}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2340, file: !2341, line: 48, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2094, line: 145, baseType: !715)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2340, file: !2341, line: 53, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2094, line: 148, baseType: !715)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2340, file: !2341, line: 61, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2094, line: 151, baseType: !715)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2340, file: !2341, line: 62, baseType: !2350, size: 32, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2094, line: 150, baseType: !7)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2340, file: !2341, line: 64, baseType: !2352, size: 32, offset: 224)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2094, line: 146, baseType: !7)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2340, file: !2341, line: 65, baseType: !2354, size: 32, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2094, line: 147, baseType: !7)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2340, file: !2341, line: 67, baseType: !650, size: 32, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2340, file: !2341, line: 69, baseType: !2344, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2340, file: !2341, line: 74, baseType: !2093, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2340, file: !2341, line: 78, baseType: !2359, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2094, line: 174, baseType: !717)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2340, file: !2341, line: 80, baseType: !2361, size: 64, offset: 512)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2094, line: 179, baseType: !717)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2340, file: !2341, line: 91, baseType: !2363, size: 128, offset: 576)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2364, line: 10, size: 128, elements: !2365)
!2364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2365 = !{!2366, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2363, file: !2364, line: 12, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2094, line: 160, baseType: !717)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2363, file: !2364, line: 16, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2094, line: 196, baseType: !717)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2340, file: !2341, line: 92, baseType: !2363, size: 128, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2340, file: !2341, line: 93, baseType: !2363, size: 128, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2340, file: !2341, line: 106, baseType: !2373, size: 192, offset: 960)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 192, elements: !735)
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "__path", arg: 1, scope: !2335, file: !2336, line: 453, type: !655)
!2376 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2335, file: !2336, line: 453, type: !2339)
!2377 = !DILocation(line: 0, scope: !2335)
!2378 = !DILocation(line: 455, column: 10, scope: !2335)
!2379 = !DILocation(line: 455, column: 3, scope: !2335)
!2380 = distinct !DISubprogram(name: "lstat", scope: !2336, file: !2336, line: 460, type: !2337, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "__path", arg: 1, scope: !2380, file: !2336, line: 460, type: !655)
!2383 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2380, file: !2336, line: 460, type: !2339)
!2384 = !DILocation(line: 0, scope: !2380)
!2385 = !DILocation(line: 462, column: 10, scope: !2380)
!2386 = !DILocation(line: 462, column: 3, scope: !2380)
!2387 = distinct !DISubprogram(name: "fstat", scope: !2336, file: !2336, line: 467, type: !2388, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!650, !650, !2339}
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "__fd", arg: 1, scope: !2387, file: !2336, line: 467, type: !650)
!2392 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2387, file: !2336, line: 467, type: !2339)
!2393 = !DILocation(line: 0, scope: !2387)
!2394 = !DILocation(line: 469, column: 10, scope: !2387)
!2395 = !DILocation(line: 469, column: 3, scope: !2387)
!2396 = distinct !DISubprogram(name: "fstatat", scope: !2336, file: !2336, line: 474, type: !2397, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!650, !650, !655, !2339, !650}
!2399 = !{!2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "__fd", arg: 1, scope: !2396, file: !2336, line: 474, type: !650)
!2401 = !DILocalVariable(name: "__filename", arg: 2, scope: !2396, file: !2336, line: 474, type: !655)
!2402 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2396, file: !2336, line: 474, type: !2339)
!2403 = !DILocalVariable(name: "__flag", arg: 4, scope: !2396, file: !2336, line: 474, type: !650)
!2404 = !DILocation(line: 0, scope: !2396)
!2405 = !DILocation(line: 477, column: 10, scope: !2396)
!2406 = !DILocation(line: 477, column: 3, scope: !2396)
!2407 = distinct !DISubprogram(name: "mknod", scope: !2336, file: !2336, line: 483, type: !2408, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!650, !655, !2350, !2344}
!2410 = !{!2411, !2412, !2413}
!2411 = !DILocalVariable(name: "__path", arg: 1, scope: !2407, file: !2336, line: 483, type: !655)
!2412 = !DILocalVariable(name: "__mode", arg: 2, scope: !2407, file: !2336, line: 483, type: !2350)
!2413 = !DILocalVariable(name: "__dev", arg: 3, scope: !2407, file: !2336, line: 483, type: !2344)
!2414 = !DILocation(line: 0, scope: !2407)
!2415 = !DILocation(line: 485, column: 10, scope: !2407)
!2416 = !DILocation(line: 485, column: 3, scope: !2407)
!2417 = distinct !DISubprogram(name: "mknodat", scope: !2336, file: !2336, line: 491, type: !2418, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!650, !650, !655, !2350, !2344}
!2420 = !{!2421, !2422, !2423, !2424}
!2421 = !DILocalVariable(name: "__fd", arg: 1, scope: !2417, file: !2336, line: 491, type: !650)
!2422 = !DILocalVariable(name: "__path", arg: 2, scope: !2417, file: !2336, line: 491, type: !655)
!2423 = !DILocalVariable(name: "__mode", arg: 3, scope: !2417, file: !2336, line: 491, type: !2350)
!2424 = !DILocalVariable(name: "__dev", arg: 4, scope: !2417, file: !2336, line: 491, type: !2344)
!2425 = !DILocation(line: 0, scope: !2417)
!2426 = !DILocation(line: 494, column: 10, scope: !2417)
!2427 = !DILocation(line: 494, column: 3, scope: !2417)
!2428 = distinct !DISubprogram(name: "stat64", scope: !2336, file: !2336, line: 502, type: !2429, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2451)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!650, !655, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2341, line: 119, size: 1152, elements: !2433)
!2433 = !{!2434, !2435, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2447, !2448, !2449, !2450}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2432, file: !2341, line: 121, baseType: !2344, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2432, file: !2341, line: 123, baseType: !2436, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2094, line: 149, baseType: !715)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2432, file: !2341, line: 124, baseType: !2348, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2432, file: !2341, line: 125, baseType: !2350, size: 32, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2432, file: !2341, line: 132, baseType: !2352, size: 32, offset: 224)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2432, file: !2341, line: 133, baseType: !2354, size: 32, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2432, file: !2341, line: 135, baseType: !650, size: 32, offset: 288)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2432, file: !2341, line: 136, baseType: !2344, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2432, file: !2341, line: 137, baseType: !2093, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2432, file: !2341, line: 143, baseType: !2359, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2432, file: !2341, line: 144, baseType: !2446, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2094, line: 180, baseType: !717)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2432, file: !2341, line: 152, baseType: !2363, size: 128, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2432, file: !2341, line: 153, baseType: !2363, size: 128, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2432, file: !2341, line: 154, baseType: !2363, size: 128, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2432, file: !2341, line: 164, baseType: !2373, size: 192, offset: 960)
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "__path", arg: 1, scope: !2428, file: !2336, line: 502, type: !655)
!2453 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2428, file: !2336, line: 502, type: !2431)
!2454 = !DILocation(line: 0, scope: !2428)
!2455 = !DILocation(line: 504, column: 10, scope: !2428)
!2456 = !DILocation(line: 504, column: 3, scope: !2428)
!2457 = distinct !DISubprogram(name: "lstat64", scope: !2336, file: !2336, line: 509, type: !2429, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "__path", arg: 1, scope: !2457, file: !2336, line: 509, type: !655)
!2460 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2457, file: !2336, line: 509, type: !2431)
!2461 = !DILocation(line: 0, scope: !2457)
!2462 = !DILocation(line: 511, column: 10, scope: !2457)
!2463 = !DILocation(line: 511, column: 3, scope: !2457)
!2464 = distinct !DISubprogram(name: "fstat64", scope: !2336, file: !2336, line: 516, type: !2465, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!650, !650, !2431}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "__fd", arg: 1, scope: !2464, file: !2336, line: 516, type: !650)
!2469 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2464, file: !2336, line: 516, type: !2431)
!2470 = !DILocation(line: 0, scope: !2464)
!2471 = !DILocation(line: 518, column: 10, scope: !2464)
!2472 = !DILocation(line: 518, column: 3, scope: !2464)
!2473 = distinct !DISubprogram(name: "fstatat64", scope: !2336, file: !2336, line: 523, type: !2474, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!650, !650, !655, !2431, !650}
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DILocalVariable(name: "__fd", arg: 1, scope: !2473, file: !2336, line: 523, type: !650)
!2478 = !DILocalVariable(name: "__filename", arg: 2, scope: !2473, file: !2336, line: 523, type: !655)
!2479 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2473, file: !2336, line: 523, type: !2431)
!2480 = !DILocalVariable(name: "__flag", arg: 4, scope: !2473, file: !2336, line: 523, type: !650)
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 526, column: 10, scope: !2473)
!2483 = !DILocation(line: 526, column: 3, scope: !2473)
!2484 = distinct !DISubprogram(name: "gate_uncprop", scope: !3, file: !3, line: 584, type: !2017, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2485 = !DILocation(line: 586, column: 10, scope: !2484)
!2486 = !DILocation(line: 586, column: 24, scope: !2484)
!2487 = !DILocation(line: 586, column: 3, scope: !2484)
!2488 = distinct !DISubprogram(name: "tree_ssa_uncprop", scope: !3, file: !3, line: 369, type: !2021, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2489)
!2489 = !{!2490, !2522, !2523, !2527}
!2490 = !DILocalVariable(name: "walk_data", scope: !2488, file: !3, line: 371, type: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_walk_data", file: !2492, line: 29, size: 512, elements: !2493)
!2492 = !DIFile(filename: "./domwalk.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2493 = !{!2494, !2495, !2500, !2504, !2505, !2506, !2520, !2521}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dom_direction", scope: !2491, file: !2492, line: 35, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_block_local_data", scope: !2491, file: !2492, line: 46, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2499, !1419, !649}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "before_dom_children", scope: !2491, file: !2492, line: 50, baseType: !2501, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2499, !1419}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "after_dom_children", scope: !2491, file: !2492, line: 53, baseType: !2501, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "global_data", scope: !2491, file: !2492, line: 56, baseType: !654, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "block_data_stack", scope: !2491, file: !2492, line: 61, baseType: !2507, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !2492, line: 23, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !2492, line: 23, size: 128, elements: !2510)
!2510 = !{!2511}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2509, file: !2492, line: 23, baseType: !2512, size: 128)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !2492, line: 22, baseType: !2513)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !2492, line: 22, size: 128, elements: !2514)
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2513, file: !2492, line: 22, baseType: !7, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2513, file: !2492, line: 22, baseType: !7, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2513, file: !2492, line: 22, baseType: !2518, size: 64, offset: 64)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, size: 64, elements: !760)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !2492, line: 21, baseType: !654)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "block_local_data_size", scope: !2491, file: !2492, line: 65, baseType: !1131, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "free_block_data", scope: !2491, file: !2492, line: 71, baseType: !2507, size: 64, offset: 448)
!2522 = !DILocalVariable(name: "bb", scope: !2488, file: !3, line: 372, type: !1419)
!2523 = !DILocalVariable(name: "e", scope: !2524, file: !3, line: 409, type: !965)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 408, column: 5)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 407, column: 3)
!2526 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 407, column: 3)
!2527 = !DILocalVariable(name: "ei", scope: !2524, file: !3, line: 410, type: !2528)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2529, file: !318, line: 680, baseType: !7, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2529, file: !318, line: 681, baseType: !2533, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!2534 = !DILocation(line: 371, column: 3, scope: !2488)
!2535 = !DILocation(line: 374, column: 3, scope: !2488)
!2536 = !DILocation(line: 377, column: 11, scope: !2488)
!2537 = !DILocation(line: 377, column: 9, scope: !2488)
!2538 = !DILocation(line: 378, column: 17, scope: !2488)
!2539 = !DILocation(line: 378, column: 15, scope: !2488)
!2540 = !DILocation(line: 382, column: 3, scope: !2488)
!2541 = !DILocation(line: 385, column: 27, scope: !2488)
!2542 = !DILocation(line: 386, column: 13, scope: !2488)
!2543 = !DILocation(line: 386, column: 41, scope: !2488)
!2544 = !DILocation(line: 387, column: 13, scope: !2488)
!2545 = !DILocation(line: 387, column: 33, scope: !2488)
!2546 = !DILocation(line: 388, column: 13, scope: !2488)
!2547 = !DILocation(line: 388, column: 32, scope: !2488)
!2548 = !DILocation(line: 389, column: 13, scope: !2488)
!2549 = !DILocation(line: 389, column: 25, scope: !2488)
!2550 = !DILocation(line: 390, column: 13, scope: !2488)
!2551 = !DILocation(line: 390, column: 35, scope: !2488)
!2552 = !DILocation(line: 0, scope: !2488)
!2553 = !DILocation(line: 393, column: 3, scope: !2488)
!2554 = !DILocation(line: 397, column: 36, scope: !2488)
!2555 = !DILocation(line: 397, column: 3, scope: !2488)
!2556 = !DILocation(line: 400, column: 3, scope: !2488)
!2557 = !DILocation(line: 405, column: 16, scope: !2488)
!2558 = !DILocation(line: 405, column: 3, scope: !2488)
!2559 = !DILocation(line: 406, column: 3, scope: !2488)
!2560 = !DILocation(line: 407, column: 3, scope: !2526)
!2561 = !DILocation(line: 0, scope: !2524)
!2562 = !DILocation(line: 0, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 412, column: 7)
!2564 = !DILocation(line: 0, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 412, column: 7)
!2566 = !DILocation(line: 407, column: 3, scope: !2525)
!2567 = !DILocation(line: 0, scope: !2526)
!2568 = !DILocation(line: 409, column: 7, scope: !2524)
!2569 = !DILocation(line: 410, column: 7, scope: !2524)
!2570 = !DILocation(line: 412, column: 7, scope: !2563)
!2571 = !DILocation(line: 412, column: 7, scope: !2565)
!2572 = !DILocation(line: 414, column: 8, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 414, column: 8)
!2574 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 413, column: 2)
!2575 = !DILocation(line: 414, column: 11, scope: !2573)
!2576 = !DILocation(line: 414, column: 8, scope: !2574)
!2577 = !DILocation(line: 416, column: 8, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 415, column: 6)
!2579 = !DILocation(line: 417, column: 8, scope: !2578)
!2580 = !DILocation(line: 417, column: 11, scope: !2578)
!2581 = !DILocation(line: 417, column: 15, scope: !2578)
!2582 = !DILocation(line: 418, column: 6, scope: !2578)
!2583 = distinct !{!2583, !2570, !2584}
!2584 = !DILocation(line: 419, column: 2, scope: !2563)
!2585 = !DILocation(line: 420, column: 5, scope: !2525)
!2586 = !DILocation(line: 0, scope: !2525)
!2587 = distinct !{!2587, !2560, !2588}
!2588 = !DILocation(line: 420, column: 5, scope: !2526)
!2589 = !DILocation(line: 422, column: 1, scope: !2488)
!2590 = !DILocation(line: 421, column: 3, scope: !2488)
!2591 = distinct !DISubprogram(name: "associate_equivalences_with_edges", scope: !3, file: !3, line: 61, type: !2592, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null}
!2594 = !{!2595, !2596, !2606, !2607, !2610, !2611, !2612, !2613, !2616, !2617, !2620, !2623, !2624, !2625, !2629, !2630, !2634, !2637}
!2595 = !DILocalVariable(name: "bb", scope: !2591, file: !3, line: 63, type: !1419)
!2596 = !DILocalVariable(name: "gsi", scope: !2597, file: !3, line: 69, type: !2600)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 68, column: 5)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 67, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 67, column: 3)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !583, line: 265, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 254, size: 192, elements: !2602)
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2601, file: !583, line: 257, baseType: !980, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2601, file: !583, line: 263, baseType: !975, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2601, file: !583, line: 264, baseType: !1419, size: 64, offset: 128)
!2606 = !DILocalVariable(name: "stmt", scope: !2597, file: !3, line: 70, type: !985)
!2607 = !DILocalVariable(name: "true_edge", scope: !2608, file: !3, line: 86, type: !965)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 85, column: 2)
!2609 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 84, column: 11)
!2610 = !DILocalVariable(name: "false_edge", scope: !2608, file: !3, line: 87, type: !965)
!2611 = !DILocalVariable(name: "equivalency", scope: !2608, file: !3, line: 88, type: !657)
!2612 = !DILocalVariable(name: "code", scope: !2608, file: !3, line: 89, type: !366)
!2613 = !DILocalVariable(name: "op0", scope: !2614, file: !3, line: 96, type: !661)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 95, column: 6)
!2615 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 94, column: 8)
!2616 = !DILocalVariable(name: "op1", scope: !2614, file: !3, line: 97, type: !661)
!2617 = !DILocalVariable(name: "cond", scope: !2618, file: !3, line: 175, type: !661)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 174, column: 2)
!2619 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 173, column: 16)
!2620 = !DILocalVariable(name: "i", scope: !2621, file: !3, line: 180, type: !650)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 179, column: 6)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 177, column: 8)
!2623 = !DILocalVariable(name: "n_labels", scope: !2621, file: !3, line: 180, type: !650)
!2624 = !DILocalVariable(name: "info", scope: !2621, file: !3, line: 181, type: !1020)
!2625 = !DILocalVariable(name: "label", scope: !2626, file: !3, line: 188, type: !661)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 187, column: 3)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 186, column: 8)
!2628 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 186, column: 8)
!2629 = !DILocalVariable(name: "bb", scope: !2626, file: !3, line: 189, type: !1419)
!2630 = !DILocalVariable(name: "node", scope: !2631, file: !3, line: 203, type: !661)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 202, column: 3)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 201, column: 8)
!2633 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 201, column: 8)
!2634 = !DILocalVariable(name: "x", scope: !2635, file: !3, line: 208, type: !661)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 207, column: 7)
!2636 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 205, column: 9)
!2637 = !DILocalVariable(name: "equivalency", scope: !2635, file: !3, line: 209, type: !657)
!2638 = !DILocation(line: 67, column: 3, scope: !2599)
!2639 = !DILocation(line: 0, scope: !2597)
!2640 = !DILocation(line: 0, scope: !2608)
!2641 = !DILocation(line: 67, column: 3, scope: !2598)
!2642 = !DILocation(line: 0, scope: !2599)
!2643 = !DILocation(line: 0, scope: !2591)
!2644 = !DILocation(line: 69, column: 7, scope: !2597)
!2645 = !DILocation(line: 69, column: 34, scope: !2597)
!2646 = !DILocation(line: 74, column: 11, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 74, column: 11)
!2648 = !DILocation(line: 74, column: 11, scope: !2597)
!2649 = !DILocation(line: 77, column: 14, scope: !2597)
!2650 = !DILocation(line: 79, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 79, column: 11)
!2652 = !DILocation(line: 79, column: 11, scope: !2597)
!2653 = !DILocation(line: 84, column: 11, scope: !2609)
!2654 = !DILocation(line: 84, column: 30, scope: !2609)
!2655 = !DILocation(line: 84, column: 11, scope: !2597)
!2656 = !DILocation(line: 86, column: 4, scope: !2608)
!2657 = !DILocation(line: 87, column: 4, scope: !2608)
!2658 = !DILocation(line: 89, column: 26, scope: !2608)
!2659 = !DILocation(line: 91, column: 4, scope: !2608)
!2660 = !DILocation(line: 94, column: 24, scope: !2615)
!2661 = !DILocation(line: 96, column: 19, scope: !2614)
!2662 = !DILocation(line: 0, scope: !2614)
!2663 = !DILocation(line: 97, column: 19, scope: !2614)
!2664 = !DILocation(line: 102, column: 12, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 102, column: 12)
!2666 = !DILocation(line: 102, column: 28, scope: !2665)
!2667 = !DILocation(line: 103, column: 5, scope: !2665)
!2668 = !DILocation(line: 103, column: 9, scope: !2665)
!2669 = !DILocation(line: 104, column: 5, scope: !2665)
!2670 = !DILocation(line: 104, column: 8, scope: !2665)
!2671 = !DILocation(line: 104, column: 36, scope: !2665)
!2672 = !DILocation(line: 105, column: 5, scope: !2665)
!2673 = !DILocation(line: 105, column: 8, scope: !2665)
!2674 = !DILocation(line: 102, column: 12, scope: !2614)
!2675 = !DILocation(line: 141, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 141, column: 17)
!2677 = !DILocation(line: 107, column: 14, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 107, column: 9)
!2679 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 106, column: 3)
!2680 = !DILocation(line: 0, scope: !2678)
!2681 = !DILocation(line: 107, column: 9, scope: !2679)
!2682 = !DILocation(line: 111, column: 29, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 108, column: 7)
!2684 = !DILocation(line: 111, column: 22, scope: !2683)
!2685 = !DILocation(line: 111, column: 26, scope: !2683)
!2686 = !DILocation(line: 114, column: 9, scope: !2683)
!2687 = !DILocation(line: 114, column: 20, scope: !2683)
!2688 = !DILocation(line: 114, column: 24, scope: !2683)
!2689 = !DILocation(line: 116, column: 23, scope: !2683)
!2690 = !DILocation(line: 117, column: 22, scope: !2683)
!2691 = !DILocation(line: 117, column: 26, scope: !2683)
!2692 = !DILocation(line: 118, column: 29, scope: !2683)
!2693 = !DILocation(line: 118, column: 22, scope: !2683)
!2694 = !DILocation(line: 118, column: 26, scope: !2683)
!2695 = !DILocation(line: 121, column: 9, scope: !2683)
!2696 = !DILocation(line: 121, column: 21, scope: !2683)
!2697 = !DILocation(line: 121, column: 25, scope: !2683)
!2698 = !DILocation(line: 122, column: 7, scope: !2683)
!2699 = !DILocation(line: 127, column: 29, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 124, column: 7)
!2701 = !DILocation(line: 127, column: 22, scope: !2700)
!2702 = !DILocation(line: 127, column: 26, scope: !2700)
!2703 = !DILocation(line: 130, column: 9, scope: !2700)
!2704 = !DILocation(line: 130, column: 20, scope: !2700)
!2705 = !DILocation(line: 130, column: 24, scope: !2700)
!2706 = !DILocation(line: 132, column: 23, scope: !2700)
!2707 = !DILocation(line: 133, column: 22, scope: !2700)
!2708 = !DILocation(line: 133, column: 26, scope: !2700)
!2709 = !DILocation(line: 134, column: 29, scope: !2700)
!2710 = !DILocation(line: 134, column: 22, scope: !2700)
!2711 = !DILocation(line: 134, column: 26, scope: !2700)
!2712 = !DILocation(line: 137, column: 9, scope: !2700)
!2713 = !DILocation(line: 137, column: 21, scope: !2700)
!2714 = !DILocation(line: 137, column: 25, scope: !2700)
!2715 = !DILocation(line: 141, column: 33, scope: !2676)
!2716 = !DILocation(line: 142, column: 10, scope: !2676)
!2717 = !DILocation(line: 142, column: 14, scope: !2676)
!2718 = !DILocation(line: 143, column: 10, scope: !2676)
!2719 = !DILocation(line: 143, column: 14, scope: !2676)
!2720 = !DILocation(line: 144, column: 7, scope: !2676)
!2721 = !DILocation(line: 144, column: 11, scope: !2676)
!2722 = !DILocation(line: 144, column: 27, scope: !2676)
!2723 = !DILocation(line: 145, column: 11, scope: !2676)
!2724 = !DILocation(line: 145, column: 15, scope: !2676)
!2725 = !DILocation(line: 141, column: 17, scope: !2665)
!2726 = !DILocation(line: 151, column: 9, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 151, column: 9)
!2728 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 146, column: 3)
!2729 = !DILocation(line: 152, column: 13, scope: !2727)
!2730 = !DILocation(line: 152, column: 29, scope: !2727)
!2731 = !DILocation(line: 153, column: 6, scope: !2727)
!2732 = !DILocation(line: 153, column: 9, scope: !2727)
!2733 = !DILocation(line: 151, column: 9, scope: !2728)
!2734 = !DILocation(line: 156, column: 19, scope: !2728)
!2735 = !DILocation(line: 157, column: 18, scope: !2728)
!2736 = !DILocation(line: 157, column: 22, scope: !2728)
!2737 = !DILocation(line: 158, column: 18, scope: !2728)
!2738 = !DILocation(line: 158, column: 22, scope: !2728)
!2739 = !DILocation(line: 159, column: 14, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 159, column: 9)
!2741 = !DILocation(line: 159, column: 9, scope: !2728)
!2742 = !DILocation(line: 160, column: 7, scope: !2740)
!2743 = !DILocation(line: 160, column: 18, scope: !2740)
!2744 = !DILocation(line: 160, column: 22, scope: !2740)
!2745 = !DILocation(line: 162, column: 7, scope: !2740)
!2746 = !DILocation(line: 162, column: 19, scope: !2740)
!2747 = !DILocation(line: 162, column: 23, scope: !2740)
!2748 = !DILocation(line: 168, column: 2, scope: !2609)
!2749 = !DILocation(line: 0, scope: !2609)
!2750 = !DILocation(line: 173, column: 16, scope: !2619)
!2751 = !DILocation(line: 173, column: 35, scope: !2619)
!2752 = !DILocation(line: 173, column: 16, scope: !2609)
!2753 = !DILocation(line: 175, column: 16, scope: !2618)
!2754 = !DILocation(line: 0, scope: !2618)
!2755 = !DILocation(line: 177, column: 8, scope: !2622)
!2756 = !DILocation(line: 177, column: 25, scope: !2622)
!2757 = !DILocation(line: 178, column: 8, scope: !2622)
!2758 = !DILocation(line: 178, column: 12, scope: !2622)
!2759 = !DILocation(line: 177, column: 8, scope: !2618)
!2760 = !DILocation(line: 180, column: 26, scope: !2621)
!2761 = !DILocation(line: 0, scope: !2621)
!2762 = !DILocation(line: 181, column: 21, scope: !2621)
!2763 = !DILocation(line: 186, column: 13, scope: !2628)
!2764 = !DILocation(line: 0, scope: !2628)
!2765 = !DILocation(line: 186, column: 22, scope: !2627)
!2766 = !DILocation(line: 186, column: 8, scope: !2628)
!2767 = !DILocation(line: 0, scope: !2635)
!2768 = !DILocation(line: 201, column: 8, scope: !2633)
!2769 = !DILocation(line: 188, column: 18, scope: !2626)
!2770 = !DILocation(line: 0, scope: !2626)
!2771 = !DILocation(line: 189, column: 22, scope: !2626)
!2772 = !DILocation(line: 191, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 191, column: 9)
!2774 = !DILocation(line: 192, column: 9, scope: !2773)
!2775 = !DILocation(line: 192, column: 13, scope: !2773)
!2776 = !DILocation(line: 193, column: 9, scope: !2773)
!2777 = !DILocation(line: 193, column: 21, scope: !2773)
!2778 = !DILocation(line: 193, column: 12, scope: !2773)
!2779 = !DILocation(line: 191, column: 9, scope: !2626)
!2780 = !DILocation(line: 194, column: 25, scope: !2773)
!2781 = !DILocation(line: 194, column: 16, scope: !2773)
!2782 = !DILocation(line: 194, column: 7, scope: !2773)
!2783 = !DILocation(line: 194, column: 23, scope: !2773)
!2784 = !DILocation(line: 196, column: 23, scope: !2773)
!2785 = !DILocation(line: 186, column: 35, scope: !2627)
!2786 = !DILocation(line: 186, column: 8, scope: !2627)
!2787 = distinct !{!2787, !2766, !2788}
!2788 = !DILocation(line: 197, column: 3, scope: !2628)
!2789 = !DILocation(line: 0, scope: !2633)
!2790 = !DILocation(line: 201, column: 24, scope: !2632)
!2791 = !DILocation(line: 201, column: 22, scope: !2632)
!2792 = !DILocation(line: 203, column: 17, scope: !2631)
!2793 = !DILocation(line: 0, scope: !2631)
!2794 = !DILocation(line: 205, column: 14, scope: !2636)
!2795 = !DILocation(line: 206, column: 20, scope: !2636)
!2796 = !DILocation(line: 206, column: 17, scope: !2636)
!2797 = !DILocation(line: 206, column: 9, scope: !2636)
!2798 = !DILocation(line: 208, column: 18, scope: !2635)
!2799 = !DILocation(line: 213, column: 23, scope: !2635)
!2800 = !DILocation(line: 214, column: 22, scope: !2635)
!2801 = !DILocation(line: 214, column: 26, scope: !2635)
!2802 = !DILocation(line: 215, column: 22, scope: !2635)
!2803 = !DILocation(line: 215, column: 26, scope: !2635)
!2804 = !DILocation(line: 216, column: 24, scope: !2635)
!2805 = !DILocation(line: 216, column: 9, scope: !2635)
!2806 = !DILocation(line: 216, column: 42, scope: !2635)
!2807 = !DILocation(line: 216, column: 46, scope: !2635)
!2808 = !DILocation(line: 217, column: 7, scope: !2635)
!2809 = !DILocation(line: 201, column: 41, scope: !2632)
!2810 = !DILocation(line: 201, column: 8, scope: !2632)
!2811 = distinct !{!2811, !2768, !2812}
!2812 = !DILocation(line: 218, column: 3, scope: !2633)
!2813 = !DILocation(line: 219, column: 8, scope: !2621)
!2814 = !DILocation(line: 220, column: 6, scope: !2621)
!2815 = !DILocation(line: 223, column: 5, scope: !2598)
!2816 = !DILocation(line: 0, scope: !2598)
!2817 = distinct !{!2817, !2638, !2818}
!2818 = !DILocation(line: 223, column: 5, scope: !2599)
!2819 = !DILocation(line: 224, column: 1, scope: !2591)
!2820 = distinct !DISubprogram(name: "equiv_hash", scope: !3, file: !3, line: 300, type: !1459, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "p", arg: 1, scope: !2820, file: !3, line: 300, type: !1292)
!2823 = !DILocalVariable(name: "value", scope: !2820, file: !3, line: 302, type: !2824)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!2825 = !DILocation(line: 0, scope: !2820)
!2826 = !DILocation(line: 302, column: 58, scope: !2820)
!2827 = !DILocation(line: 303, column: 10, scope: !2820)
!2828 = !DILocation(line: 303, column: 3, scope: !2820)
!2829 = distinct !DISubprogram(name: "equiv_eq", scope: !3, file: !3, line: 307, type: !1465, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2830)
!2830 = !{!2831, !2832, !2833, !2834}
!2831 = !DILocalVariable(name: "p1", arg: 1, scope: !2829, file: !3, line: 307, type: !1292)
!2832 = !DILocalVariable(name: "p2", arg: 2, scope: !2829, file: !3, line: 307, type: !1292)
!2833 = !DILocalVariable(name: "value1", scope: !2829, file: !3, line: 309, type: !661)
!2834 = !DILocalVariable(name: "value2", scope: !2829, file: !3, line: 310, type: !661)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = !DILocation(line: 309, column: 54, scope: !2829)
!2837 = !DILocation(line: 310, column: 54, scope: !2829)
!2838 = !DILocation(line: 312, column: 10, scope: !2829)
!2839 = !DILocation(line: 312, column: 3, scope: !2829)
!2840 = distinct !DISubprogram(name: "equiv_free", scope: !3, file: !3, line: 318, type: !1470, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2841)
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "p", arg: 1, scope: !2840, file: !3, line: 318, type: !654)
!2843 = !DILocalVariable(name: "elt", scope: !2840, file: !3, line: 320, type: !2002)
!2844 = !DILocation(line: 0, scope: !2840)
!2845 = !DILocation(line: 321, column: 3, scope: !2840)
!2846 = !DILocation(line: 322, column: 3, scope: !2840)
!2847 = !DILocation(line: 323, column: 1, scope: !2840)
!2848 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !334, file: !334, line: 184, type: !2849, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!1997, !650}
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2848, file: !334, line: 184, type: !650)
!2853 = !DILocation(line: 0, scope: !2848)
!2854 = !DILocation(line: 184, column: 1, scope: !2848)
!2855 = distinct !DISubprogram(name: "uncprop_enter_block", scope: !3, file: !3, line: 552, type: !2502, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862}
!2857 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2855, file: !3, line: 552, type: !2499)
!2858 = !DILocalVariable(name: "bb", arg: 2, scope: !2855, file: !3, line: 553, type: !1419)
!2859 = !DILocalVariable(name: "parent", scope: !2855, file: !3, line: 555, type: !1419)
!2860 = !DILocalVariable(name: "e", scope: !2855, file: !3, line: 556, type: !965)
!2861 = !DILocalVariable(name: "recorded", scope: !2855, file: !3, line: 557, type: !649)
!2862 = !DILocalVariable(name: "equiv", scope: !2863, file: !3, line: 569, type: !657)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 568, column: 2)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 567, column: 11)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 564, column: 5)
!2866 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 563, column: 7)
!2867 = !DILocation(line: 0, scope: !2855)
!2868 = !DILocation(line: 562, column: 12, scope: !2855)
!2869 = !DILocation(line: 563, column: 7, scope: !2866)
!2870 = !DILocation(line: 563, column: 7, scope: !2855)
!2871 = !DILocation(line: 565, column: 11, scope: !2865)
!2872 = !DILocation(line: 567, column: 11, scope: !2864)
!2873 = !DILocation(line: 567, column: 13, scope: !2864)
!2874 = !DILocation(line: 567, column: 19, scope: !2864)
!2875 = !DILocation(line: 567, column: 23, scope: !2864)
!2876 = !DILocation(line: 567, column: 33, scope: !2864)
!2877 = !DILocation(line: 567, column: 39, scope: !2864)
!2878 = !DILocation(line: 567, column: 36, scope: !2864)
!2879 = !DILocation(line: 567, column: 11, scope: !2865)
!2880 = !DILocation(line: 0, scope: !2863)
!2881 = !DILocation(line: 571, column: 25, scope: !2863)
!2882 = !DILocation(line: 571, column: 37, scope: !2863)
!2883 = !DILocation(line: 571, column: 4, scope: !2863)
!2884 = !DILocation(line: 572, column: 4, scope: !2863)
!2885 = !DILocation(line: 574, column: 2, scope: !2863)
!2886 = !DILocation(line: 577, column: 7, scope: !2855)
!2887 = !DILocation(line: 578, column: 5, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 577, column: 7)
!2889 = !DILocation(line: 580, column: 3, scope: !2855)
!2890 = !DILocation(line: 581, column: 1, scope: !2855)
!2891 = distinct !DISubprogram(name: "uncprop_leave_block", scope: !3, file: !3, line: 430, type: !2502, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2892 = !{!2893, !2894, !2895}
!2893 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2891, file: !3, line: 430, type: !2499)
!2894 = !DILocalVariable(name: "bb", arg: 2, scope: !2891, file: !3, line: 431, type: !1419)
!2895 = !DILocalVariable(name: "value", scope: !2891, file: !3, line: 434, type: !661)
!2896 = !DILocation(line: 0, scope: !2891)
!2897 = !DILocation(line: 434, column: 16, scope: !2891)
!2898 = !DILocation(line: 438, column: 13, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 438, column: 7)
!2900 = !DILocation(line: 438, column: 7, scope: !2891)
!2901 = !DILocation(line: 439, column: 5, scope: !2899)
!2902 = !DILocation(line: 440, column: 1, scope: !2891)
!2903 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !334, file: !334, line: 184, type: !2904, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2907)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "vec_", arg: 1, scope: !2903, file: !334, line: 184, type: !2906)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 184, column: 1, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2903, file: !334, line: 184, column: 1)
!2912 = !DILocation(line: 184, column: 1, scope: !2903)
!2913 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !2914, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!2528, !2533}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "ev", arg: 1, scope: !2913, file: !318, line: 696, type: !2533)
!2918 = !DILocalVariable(name: "i", scope: !2913, file: !318, line: 698, type: !2528)
!2919 = !DILocation(line: 0, scope: !2913)
!2920 = !DILocation(line: 700, column: 5, scope: !2913)
!2921 = !DILocation(line: 700, column: 11, scope: !2913)
!2922 = !DILocation(line: 701, column: 5, scope: !2913)
!2923 = !DILocation(line: 701, column: 15, scope: !2913)
!2924 = !DILocation(line: 703, column: 3, scope: !2913)
!2925 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !2926, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2929)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!649, !2528, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "ei", arg: 1, scope: !2925, file: !318, line: 771, type: !2528)
!2931 = !DILocalVariable(name: "p", arg: 2, scope: !2925, file: !318, line: 771, type: !2928)
!2932 = !DILocation(line: 0, scope: !2925)
!2933 = !DILocation(line: 773, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2925, file: !318, line: 773, column: 7)
!2935 = !DILocation(line: 773, column: 7, scope: !2925)
!2936 = !DILocation(line: 775, column: 12, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !318, line: 774, column: 5)
!2938 = !DILocation(line: 776, column: 7, scope: !2937)
!2939 = !DILocation(line: 781, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2934, file: !318, line: 779, column: 5)
!2941 = !DILocation(line: 0, scope: !2934)
!2942 = !DILocation(line: 783, column: 1, scope: !2925)
!2943 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !2944, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2947)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "i", arg: 1, scope: !2943, file: !318, line: 736, type: !2946)
!2949 = !DILocation(line: 0, scope: !2943)
!2950 = !DILocation(line: 738, column: 3, scope: !2943)
!2951 = !DILocation(line: 739, column: 11, scope: !2943)
!2952 = !DILocation(line: 740, column: 1, scope: !2943)
!2953 = distinct !DISubprogram(name: "gsi_last_bb", scope: !583, file: !583, line: 4450, type: !2954, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!2600, !1419}
!2956 = !{!2957, !2958, !2959}
!2957 = !DILocalVariable(name: "bb", arg: 1, scope: !2953, file: !583, line: 4450, type: !1419)
!2958 = !DILocalVariable(name: "i", scope: !2953, file: !583, line: 4452, type: !2600)
!2959 = !DILocalVariable(name: "seq", scope: !2953, file: !583, line: 4453, type: !975)
!2960 = !DILocation(line: 0, scope: !2953)
!2961 = !DILocation(line: 4452, column: 24, scope: !2953)
!2962 = !DILocation(line: 4455, column: 9, scope: !2953)
!2963 = !DILocation(line: 4456, column: 11, scope: !2953)
!2964 = !DILocation(line: 4456, column: 5, scope: !2953)
!2965 = !DILocation(line: 4456, column: 9, scope: !2953)
!2966 = !DILocation(line: 4457, column: 5, scope: !2953)
!2967 = !DILocation(line: 4457, column: 9, scope: !2953)
!2968 = !DILocation(line: 4458, column: 5, scope: !2953)
!2969 = !DILocation(line: 4458, column: 8, scope: !2953)
!2970 = !DILocation(line: 4461, column: 1, scope: !2953)
!2971 = distinct !DISubprogram(name: "gsi_end_p", scope: !583, file: !583, line: 4467, type: !2972, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!649, !2600}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "i", arg: 1, scope: !2971, file: !583, line: 4467, type: !2600)
!2976 = !DILocation(line: 4467, column: 33, scope: !2971)
!2977 = !DILocation(line: 4469, column: 12, scope: !2971)
!2978 = !DILocation(line: 4469, column: 16, scope: !2971)
!2979 = !DILocation(line: 4469, column: 10, scope: !2971)
!2980 = !DILocation(line: 4469, column: 3, scope: !2971)
!2981 = distinct !DISubprogram(name: "gsi_stmt", scope: !583, file: !583, line: 4501, type: !2982, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!985, !2600}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "i", arg: 1, scope: !2981, file: !583, line: 4501, type: !2600)
!2986 = !DILocation(line: 4501, column: 32, scope: !2981)
!2987 = !DILocation(line: 4503, column: 12, scope: !2981)
!2988 = !DILocation(line: 4503, column: 17, scope: !2981)
!2989 = !DILocation(line: 4503, column: 3, scope: !2981)
!2990 = distinct !DISubprogram(name: "gimple_code", scope: !583, file: !583, line: 1052, type: !2991, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!582, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !662, line: 60, baseType: !1989)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "g", arg: 1, scope: !2990, file: !583, line: 1052, type: !2993)
!2996 = !DILocation(line: 0, scope: !2990)
!2997 = !DILocation(line: 1054, column: 20, scope: !2990)
!2998 = !DILocation(line: 1054, column: 3, scope: !2990)
!2999 = distinct !DISubprogram(name: "gimple_cond_code", scope: !583, file: !583, line: 2221, type: !3000, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!366, !2993}
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "gs", arg: 1, scope: !2999, file: !583, line: 2221, type: !2993)
!3004 = !DILocation(line: 0, scope: !2999)
!3005 = !DILocation(line: 2224, column: 38, scope: !2999)
!3006 = !DILocation(line: 2224, column: 3, scope: !2999)
!3007 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !583, file: !583, line: 2241, type: !3008, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!661, !2993}
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "gs", arg: 1, scope: !3007, file: !583, line: 2241, type: !2993)
!3012 = !DILocation(line: 0, scope: !3007)
!3013 = !DILocation(line: 2244, column: 10, scope: !3007)
!3014 = !DILocation(line: 2244, column: 3, scope: !3007)
!3015 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !583, file: !583, line: 2271, type: !3008, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "gs", arg: 1, scope: !3015, file: !583, line: 2271, type: !2993)
!3018 = !DILocation(line: 0, scope: !3015)
!3019 = !DILocation(line: 2274, column: 10, scope: !3015)
!3020 = !DILocation(line: 2274, column: 3, scope: !3015)
!3021 = distinct !DISubprogram(name: "gimple_switch_index", scope: !583, file: !583, line: 3180, type: !3008, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3022 = !{!3023}
!3023 = !DILocalVariable(name: "gs", arg: 1, scope: !3021, file: !583, line: 3180, type: !2993)
!3024 = !DILocation(line: 0, scope: !3021)
!3025 = !DILocation(line: 3183, column: 10, scope: !3021)
!3026 = !DILocation(line: 3183, column: 3, scope: !3021)
!3027 = distinct !DISubprogram(name: "gimple_switch_num_labels", scope: !583, file: !583, line: 3157, type: !3028, scopeLine: 3158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!7, !2993}
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "gs", arg: 1, scope: !3027, file: !583, line: 3157, type: !2993)
!3032 = !DILocalVariable(name: "num_ops", scope: !3027, file: !583, line: 3159, type: !7)
!3033 = !DILocation(line: 0, scope: !3027)
!3034 = !DILocation(line: 3161, column: 13, scope: !3027)
!3035 = !DILocation(line: 3162, column: 3, scope: !3027)
!3036 = !DILocation(line: 3163, column: 18, scope: !3027)
!3037 = !DILocation(line: 3163, column: 3, scope: !3027)
!3038 = distinct !DISubprogram(name: "gimple_switch_label", scope: !583, file: !583, line: 3212, type: !3039, scopeLine: 3213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!661, !2993, !7}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "gs", arg: 1, scope: !3038, file: !583, line: 3212, type: !2993)
!3043 = !DILocalVariable(name: "index", arg: 2, scope: !3038, file: !583, line: 3212, type: !7)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 3215, column: 3, scope: !3038)
!3046 = !DILocation(line: 3216, column: 10, scope: !3038)
!3047 = !DILocation(line: 3216, column: 3, scope: !3038)
!3048 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !318, file: !318, line: 281, type: !3049, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!1419, !3051, !7}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "vec_", arg: 1, scope: !3048, file: !318, line: 281, type: !3051)
!3055 = !DILocalVariable(name: "ix_", arg: 2, scope: !3048, file: !318, line: 281, type: !7)
!3056 = !DILocation(line: 0, scope: !3048)
!3057 = !DILocation(line: 281, column: 1, scope: !3048)
!3058 = distinct !DISubprogram(name: "bb_seq", scope: !583, file: !583, line: 237, type: !3059, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!975, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !662, line: 112, baseType: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "bb", arg: 1, scope: !3058, file: !583, line: 237, type: !3061)
!3066 = !DILocation(line: 0, scope: !3058)
!3067 = !DILocation(line: 239, column: 17, scope: !3058)
!3068 = !DILocation(line: 239, column: 23, scope: !3058)
!3069 = !DILocation(line: 239, column: 33, scope: !3058)
!3070 = !DILocation(line: 239, column: 43, scope: !3058)
!3071 = !DILocation(line: 239, column: 36, scope: !3058)
!3072 = !DILocation(line: 239, column: 10, scope: !3058)
!3073 = !DILocation(line: 239, column: 68, scope: !3058)
!3074 = !DILocation(line: 239, column: 3, scope: !3058)
!3075 = distinct !DISubprogram(name: "gimple_seq_last", scope: !583, file: !583, line: 178, type: !3076, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!980, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !662, line: 67, baseType: !3079)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !583, line: 178, type: !3078)
!3083 = !DILocation(line: 0, scope: !3075)
!3084 = !DILocation(line: 180, column: 10, scope: !3075)
!3085 = !DILocation(line: 180, column: 17, scope: !3075)
!3086 = !DILocation(line: 180, column: 3, scope: !3075)
!3087 = distinct !DISubprogram(name: "gimple_op", scope: !583, file: !583, line: 1631, type: !3039, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "gs", arg: 1, scope: !3087, file: !583, line: 1631, type: !2993)
!3090 = !DILocalVariable(name: "i", arg: 2, scope: !3087, file: !583, line: 1631, type: !7)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !DILocation(line: 1633, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !583, line: 1633, column: 7)
!3094 = !DILocation(line: 1633, column: 7, scope: !3087)
!3095 = !DILocation(line: 1638, column: 14, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !583, line: 1634, column: 5)
!3097 = !DILocation(line: 1638, column: 7, scope: !3096)
!3098 = !DILocation(line: 0, scope: !3093)
!3099 = !DILocation(line: 1642, column: 1, scope: !3087)
!3100 = distinct !DISubprogram(name: "gimple_has_ops", scope: !583, file: !583, line: 1274, type: !3101, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!649, !2993}
!3103 = !{!3104}
!3104 = !DILocalVariable(name: "g", arg: 1, scope: !3100, file: !583, line: 1274, type: !2993)
!3105 = !DILocation(line: 0, scope: !3100)
!3106 = !DILocation(line: 1276, column: 10, scope: !3100)
!3107 = !DILocation(line: 1276, column: 26, scope: !3100)
!3108 = !DILocation(line: 1276, column: 41, scope: !3100)
!3109 = !DILocation(line: 1276, column: 44, scope: !3100)
!3110 = !DILocation(line: 1276, column: 60, scope: !3100)
!3111 = !DILocation(line: 1276, column: 3, scope: !3100)
!3112 = distinct !DISubprogram(name: "gimple_ops", scope: !583, file: !583, line: 1614, type: !3113, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!1020, !985}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "gs", arg: 1, scope: !3112, file: !583, line: 1614, type: !985)
!3117 = !DILocalVariable(name: "off", scope: !3112, file: !583, line: 1616, type: !1131)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 1621, column: 28, scope: !3112)
!3120 = !DILocation(line: 1621, column: 9, scope: !3112)
!3121 = !DILocation(line: 1622, column: 3, scope: !3112)
!3122 = !DILocation(line: 1624, column: 20, scope: !3112)
!3123 = !DILocation(line: 1624, column: 32, scope: !3112)
!3124 = !DILocation(line: 1624, column: 10, scope: !3112)
!3125 = !DILocation(line: 1624, column: 3, scope: !3112)
!3126 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !583, file: !583, line: 1073, type: !3127, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!621, !985}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "gs", arg: 1, scope: !3126, file: !583, line: 1073, type: !985)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 1075, column: 24, scope: !3126)
!3133 = !DILocation(line: 1075, column: 10, scope: !3126)
!3134 = !DILocation(line: 1075, column: 3, scope: !3126)
!3135 = distinct !DISubprogram(name: "gss_for_code", scope: !583, file: !583, line: 1061, type: !3136, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!621, !582}
!3138 = !{!3139}
!3139 = !DILocalVariable(name: "code", arg: 1, scope: !3135, file: !583, line: 1061, type: !582)
!3140 = !DILocation(line: 0, scope: !3135)
!3141 = !DILocation(line: 1066, column: 10, scope: !3135)
!3142 = !DILocation(line: 1066, column: 3, scope: !3135)
!3143 = distinct !DISubprogram(name: "gimple_num_ops", scope: !583, file: !583, line: 1596, type: !3028, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "gs", arg: 1, scope: !3143, file: !583, line: 1596, type: !2993)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 1598, column: 21, scope: !3143)
!3148 = !DILocation(line: 1598, column: 3, scope: !3143)
!3149 = distinct !DISubprogram(name: "single_incoming_edge_ignoring_loop_edges", scope: !3, file: !3, line: 525, type: !3150, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!965, !1419}
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "bb", arg: 1, scope: !3149, file: !3, line: 525, type: !1419)
!3154 = !DILocalVariable(name: "retval", scope: !3149, file: !3, line: 527, type: !965)
!3155 = !DILocalVariable(name: "e", scope: !3149, file: !3, line: 528, type: !965)
!3156 = !DILocalVariable(name: "ei", scope: !3149, file: !3, line: 529, type: !2528)
!3157 = !DILocation(line: 0, scope: !3149)
!3158 = !DILocation(line: 528, column: 3, scope: !3149)
!3159 = !DILocation(line: 529, column: 3, scope: !3149)
!3160 = !DILocation(line: 531, column: 3, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 531, column: 3)
!3162 = !DILocation(line: 0, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 531, column: 3)
!3164 = !DILocation(line: 527, column: 8, scope: !3149)
!3165 = !DILocation(line: 531, column: 3, scope: !3163)
!3166 = !DILocation(line: 535, column: 43, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 535, column: 11)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 532, column: 5)
!3169 = !DILocation(line: 535, column: 46, scope: !3167)
!3170 = !DILocation(line: 535, column: 54, scope: !3167)
!3171 = !DILocation(line: 535, column: 11, scope: !3167)
!3172 = !DILocation(line: 535, column: 11, scope: !3168)
!3173 = !DILocation(line: 540, column: 11, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 540, column: 11)
!3175 = !DILocation(line: 540, column: 11, scope: !3168)
!3176 = !DILocation(line: 545, column: 16, scope: !3168)
!3177 = !DILocation(line: 546, column: 5, scope: !3168)
!3178 = distinct !{!3178, !3160, !3179}
!3179 = !DILocation(line: 546, column: 5, scope: !3161)
!3180 = !DILocation(line: 549, column: 1, scope: !3149)
!3181 = distinct !DISubprogram(name: "record_equiv", scope: !3, file: !3, line: 345, type: !3182, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !661, !661}
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "value", arg: 1, scope: !3181, file: !3, line: 345, type: !661)
!3186 = !DILocalVariable(name: "equivalence", arg: 2, scope: !3181, file: !3, line: 345, type: !661)
!3187 = !DILocalVariable(name: "equiv_hash_elt", scope: !3181, file: !3, line: 347, type: !2002)
!3188 = !DILocalVariable(name: "slot", scope: !3181, file: !3, line: 348, type: !1473)
!3189 = !DILocation(line: 0, scope: !3181)
!3190 = !DILocation(line: 350, column: 20, scope: !3181)
!3191 = !DILocation(line: 351, column: 19, scope: !3181)
!3192 = !DILocation(line: 351, column: 25, scope: !3181)
!3193 = !DILocation(line: 352, column: 19, scope: !3181)
!3194 = !DILocation(line: 352, column: 32, scope: !3181)
!3195 = !DILocation(line: 354, column: 26, scope: !3181)
!3196 = !DILocation(line: 354, column: 10, scope: !3181)
!3197 = !DILocation(line: 356, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 356, column: 7)
!3199 = !DILocation(line: 356, column: 13, scope: !3198)
!3200 = !DILocation(line: 356, column: 7, scope: !3181)
!3201 = !DILocation(line: 357, column: 11, scope: !3198)
!3202 = !DILocation(line: 357, column: 5, scope: !3198)
!3203 = !DILocation(line: 359, column: 6, scope: !3198)
!3204 = !DILocation(line: 361, column: 46, scope: !3181)
!3205 = !DILocation(line: 363, column: 3, scope: !3181)
!3206 = !DILocation(line: 364, column: 1, scope: !3181)
!3207 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !334, file: !334, line: 184, type: !3208, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!1020, !2906, !661}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "vec_", arg: 1, scope: !3207, file: !334, line: 184, type: !2906)
!3212 = !DILocalVariable(name: "obj_", arg: 2, scope: !3207, file: !334, line: 184, type: !661)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 184, column: 1, scope: !3207)
!3215 = distinct !DISubprogram(name: "uncprop_into_successor_phis", scope: !3, file: !3, line: 445, type: !3216, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !1419}
!3218 = !{!3219, !3220, !3221, !3222, !3226, !3227, !3230, !3234, !3235, !3236, !3237, !3240, !3241, !3245}
!3219 = !DILocalVariable(name: "bb", arg: 1, scope: !3215, file: !3, line: 445, type: !1419)
!3220 = !DILocalVariable(name: "e", scope: !3215, file: !3, line: 447, type: !965)
!3221 = !DILocalVariable(name: "ei", scope: !3215, file: !3, line: 448, type: !2528)
!3222 = !DILocalVariable(name: "phis", scope: !3223, file: !3, line: 455, type: !975)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 454, column: 5)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 453, column: 3)
!3225 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 453, column: 3)
!3226 = !DILocalVariable(name: "gsi", scope: !3223, file: !3, line: 456, type: !2600)
!3227 = !DILocalVariable(name: "equiv", scope: !3228, file: !3, line: 466, type: !657)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 465, column: 2)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 464, column: 11)
!3230 = !DILocalVariable(name: "phi", scope: !3231, file: !3, line: 473, type: !985)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 472, column: 2)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 471, column: 7)
!3233 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 471, column: 7)
!3234 = !DILocalVariable(name: "arg", scope: !3231, file: !3, line: 474, type: !661)
!3235 = !DILocalVariable(name: "equiv_hash_elt", scope: !3231, file: !3, line: 475, type: !1993)
!3236 = !DILocalVariable(name: "slot", scope: !3231, file: !3, line: 476, type: !1473)
!3237 = !DILocalVariable(name: "elt", scope: !3238, file: !3, line: 492, type: !2002)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 491, column: 6)
!3239 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 490, column: 8)
!3240 = !DILocalVariable(name: "j", scope: !3238, file: !3, line: 493, type: !650)
!3241 = !DILocalVariable(name: "equiv", scope: !3242, file: !3, line: 502, type: !661)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 501, column: 3)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 500, column: 8)
!3244 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 500, column: 8)
!3245 = !DILocalVariable(name: "equiv", scope: !3246, file: !3, line: 516, type: !657)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 515, column: 2)
!3247 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 514, column: 11)
!3248 = !DILocation(line: 0, scope: !3215)
!3249 = !DILocation(line: 447, column: 3, scope: !3215)
!3250 = !DILocation(line: 448, column: 3, scope: !3215)
!3251 = !DILocation(line: 453, column: 3, scope: !3225)
!3252 = !DILocation(line: 0, scope: !3224)
!3253 = !DILocation(line: 0, scope: !3223)
!3254 = !DILocation(line: 0, scope: !3233)
!3255 = !DILocation(line: 0, scope: !3231)
!3256 = !DILocation(line: 453, column: 3, scope: !3224)
!3257 = !DILocation(line: 455, column: 36, scope: !3223)
!3258 = !DILocation(line: 455, column: 39, scope: !3223)
!3259 = !DILocation(line: 455, column: 25, scope: !3223)
!3260 = !DILocation(line: 456, column: 7, scope: !3223)
!3261 = !DILocation(line: 460, column: 11, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 460, column: 11)
!3263 = !DILocation(line: 460, column: 11, scope: !3223)
!3264 = !DILocation(line: 464, column: 11, scope: !3229)
!3265 = !DILocation(line: 464, column: 14, scope: !3229)
!3266 = !DILocation(line: 464, column: 11, scope: !3223)
!3267 = !DILocation(line: 0, scope: !3228)
!3268 = !DILocation(line: 467, column: 25, scope: !3228)
!3269 = !DILocation(line: 467, column: 37, scope: !3228)
!3270 = !DILocation(line: 467, column: 4, scope: !3228)
!3271 = !DILocation(line: 468, column: 2, scope: !3228)
!3272 = !DILocation(line: 471, column: 18, scope: !3233)
!3273 = !DILocation(line: 471, column: 12, scope: !3233)
!3274 = !DILocation(line: 471, column: 38, scope: !3232)
!3275 = !DILocation(line: 471, column: 37, scope: !3232)
!3276 = !DILocation(line: 471, column: 7, scope: !3233)
!3277 = !DILocation(line: 473, column: 17, scope: !3231)
!3278 = !DILocation(line: 474, column: 15, scope: !3231)
!3279 = !DILocation(line: 475, column: 4, scope: !3231)
!3280 = !DILocation(line: 481, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 481, column: 8)
!3282 = !DILocation(line: 482, column: 8, scope: !3281)
!3283 = !DILocation(line: 482, column: 11, scope: !3281)
!3284 = !DILocation(line: 482, column: 33, scope: !3281)
!3285 = !DILocation(line: 482, column: 30, scope: !3281)
!3286 = !DILocation(line: 481, column: 8, scope: !3231)
!3287 = !DILocation(line: 486, column: 25, scope: !3231)
!3288 = !DILocation(line: 487, column: 32, scope: !3231)
!3289 = !DILocation(line: 488, column: 27, scope: !3231)
!3290 = !DILocation(line: 488, column: 11, scope: !3231)
!3291 = !DILocation(line: 490, column: 8, scope: !3239)
!3292 = !DILocation(line: 490, column: 8, scope: !3231)
!3293 = !DILocation(line: 492, column: 63, scope: !3238)
!3294 = !DILocation(line: 0, scope: !3238)
!3295 = !DILocation(line: 500, column: 17, scope: !3244)
!3296 = !DILocation(line: 500, column: 13, scope: !3244)
!3297 = !DILocation(line: 0, scope: !3244)
!3298 = !DILocation(line: 500, column: 61, scope: !3243)
!3299 = !DILocation(line: 500, column: 8, scope: !3244)
!3300 = !DILocation(line: 502, column: 18, scope: !3242)
!3301 = !DILocation(line: 0, scope: !3242)
!3302 = !DILocation(line: 504, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 504, column: 9)
!3304 = !DILocation(line: 504, column: 33, scope: !3303)
!3305 = !DILocation(line: 504, column: 30, scope: !3303)
!3306 = !DILocation(line: 504, column: 9, scope: !3242)
!3307 = !DILocation(line: 506, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 505, column: 7)
!3309 = !DILocation(line: 507, column: 9, scope: !3308)
!3310 = !DILocation(line: 500, column: 8, scope: !3243)
!3311 = distinct !{!3311, !3299, !3312}
!3312 = !DILocation(line: 509, column: 3, scope: !3244)
!3313 = !DILocation(line: 511, column: 2, scope: !3232)
!3314 = !DILocation(line: 471, column: 55, scope: !3232)
!3315 = !DILocation(line: 471, column: 7, scope: !3232)
!3316 = distinct !{!3316, !3276, !3317}
!3317 = !DILocation(line: 511, column: 2, scope: !3233)
!3318 = !DILocation(line: 514, column: 11, scope: !3247)
!3319 = !DILocation(line: 514, column: 14, scope: !3247)
!3320 = !DILocation(line: 514, column: 11, scope: !3223)
!3321 = !DILocation(line: 0, scope: !3246)
!3322 = !DILocation(line: 517, column: 31, scope: !3246)
!3323 = !DILocation(line: 517, column: 4, scope: !3246)
!3324 = !DILocation(line: 518, column: 2, scope: !3246)
!3325 = !DILocation(line: 519, column: 5, scope: !3224)
!3326 = distinct !{!3326, !3251, !3327}
!3327 = !DILocation(line: 519, column: 5, scope: !3225)
!3328 = !DILocation(line: 520, column: 1, scope: !3215)
!3329 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !334, file: !334, line: 184, type: !3330, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!650, !2906, !650}
!3332 = !{!3333, !3334, !3335}
!3333 = !DILocalVariable(name: "vec_", arg: 1, scope: !3329, file: !334, line: 184, type: !2906)
!3334 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3329, file: !334, line: 184, type: !650)
!3335 = !DILocalVariable(name: "extend", scope: !3329, file: !334, line: 184, type: !650)
!3336 = !DILocation(line: 0, scope: !3329)
!3337 = !DILocation(line: 184, column: 1, scope: !3329)
!3338 = !DILocation(line: 184, column: 1, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3329, file: !334, line: 184, column: 1)
!3340 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !334, file: !334, line: 182, type: !3341, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3344)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!1020, !3343, !661}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "vec_", arg: 1, scope: !3340, file: !334, line: 182, type: !3343)
!3346 = !DILocalVariable(name: "obj_", arg: 2, scope: !3340, file: !334, line: 182, type: !661)
!3347 = !DILocalVariable(name: "slot_", scope: !3340, file: !334, line: 182, type: !1020)
!3348 = !DILocation(line: 0, scope: !3340)
!3349 = !DILocation(line: 182, column: 1, scope: !3340)
!3350 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !334, file: !334, line: 182, type: !3351, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!650, !3343, !650}
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "vec_", arg: 1, scope: !3350, file: !334, line: 182, type: !3343)
!3355 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3350, file: !334, line: 182, type: !650)
!3356 = !DILocation(line: 0, scope: !3350)
!3357 = !DILocation(line: 182, column: 1, scope: !3350)
!3358 = distinct !DISubprogram(name: "phi_nodes", scope: !3359, file: !3359, line: 508, type: !3059, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3360)
!3359 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "bb", arg: 1, scope: !3358, file: !3359, line: 508, type: !3061)
!3362 = !DILocation(line: 0, scope: !3358)
!3363 = !DILocation(line: 510, column: 3, scope: !3358)
!3364 = !DILocation(line: 511, column: 15, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3358, file: !3359, line: 511, column: 7)
!3366 = !DILocation(line: 511, column: 8, scope: !3365)
!3367 = !DILocation(line: 511, column: 7, scope: !3358)
!3368 = !DILocation(line: 513, column: 25, scope: !3358)
!3369 = !DILocation(line: 513, column: 3, scope: !3358)
!3370 = !DILocation(line: 514, column: 1, scope: !3358)
!3371 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !583, file: !583, line: 215, type: !3372, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!649, !3078}
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "s", arg: 1, scope: !3371, file: !583, line: 215, type: !3078)
!3376 = !DILocation(line: 0, scope: !3371)
!3377 = !DILocation(line: 217, column: 12, scope: !3371)
!3378 = !DILocation(line: 217, column: 20, scope: !3371)
!3379 = !DILocation(line: 217, column: 26, scope: !3371)
!3380 = !DILocation(line: 217, column: 32, scope: !3371)
!3381 = !DILocation(line: 217, column: 3, scope: !3371)
!3382 = distinct !DISubprogram(name: "gsi_start", scope: !583, file: !583, line: 4403, type: !3383, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!2600, !975}
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "seq", arg: 1, scope: !3382, file: !583, line: 4403, type: !975)
!3387 = !DILocalVariable(name: "i", scope: !3382, file: !583, line: 4405, type: !2600)
!3388 = !DILocation(line: 0, scope: !3382)
!3389 = !DILocation(line: 4405, column: 24, scope: !3382)
!3390 = !DILocation(line: 4407, column: 11, scope: !3382)
!3391 = !DILocation(line: 4407, column: 5, scope: !3382)
!3392 = !DILocation(line: 4407, column: 9, scope: !3382)
!3393 = !DILocation(line: 4408, column: 5, scope: !3382)
!3394 = !DILocation(line: 4408, column: 9, scope: !3382)
!3395 = !DILocation(line: 4409, column: 11, scope: !3382)
!3396 = !DILocation(line: 4409, column: 17, scope: !3382)
!3397 = !DILocation(line: 4409, column: 27, scope: !3382)
!3398 = !DILocation(line: 4409, column: 20, scope: !3382)
!3399 = !DILocation(line: 4409, column: 10, scope: !3382)
!3400 = !DILocation(line: 4409, column: 35, scope: !3382)
!3401 = !DILocation(line: 4409, column: 5, scope: !3382)
!3402 = !DILocation(line: 4409, column: 8, scope: !3382)
!3403 = !DILocation(line: 4411, column: 3, scope: !3382)
!3404 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3359, file: !3359, line: 427, type: !3405, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!661, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1016, line: 30, baseType: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1027)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "use", arg: 1, scope: !3404, file: !3359, line: 427, type: !3407)
!3412 = !DILocation(line: 0, scope: !3404)
!3413 = !DILocation(line: 429, column: 17, scope: !3404)
!3414 = !DILocation(line: 429, column: 10, scope: !3404)
!3415 = !DILocation(line: 429, column: 3, scope: !3404)
!3416 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3359, file: !3359, line: 442, type: !3417, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!3407, !985, !650}
!3419 = !{!3420, !3421}
!3420 = !DILocalVariable(name: "gs", arg: 1, scope: !3416, file: !3359, line: 442, type: !985)
!3421 = !DILocalVariable(name: "i", arg: 2, scope: !3416, file: !3359, line: 442, type: !650)
!3422 = !DILocation(line: 0, scope: !3416)
!3423 = !DILocation(line: 444, column: 11, scope: !3416)
!3424 = !DILocation(line: 444, column: 35, scope: !3416)
!3425 = !DILocation(line: 444, column: 3, scope: !3416)
!3426 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3359, file: !3359, line: 434, type: !3427, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3430)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!661, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1016, line: 27, baseType: !1020)
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "def", arg: 1, scope: !3426, file: !3359, line: 434, type: !3429)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocation(line: 436, column: 10, scope: !3426)
!3434 = !DILocation(line: 436, column: 3, scope: !3426)
!3435 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !583, file: !583, line: 3080, type: !3113, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3436)
!3436 = !{!3437}
!3437 = !DILocalVariable(name: "gs", arg: 1, scope: !3435, file: !583, line: 3080, type: !985)
!3438 = !DILocation(line: 0, scope: !3435)
!3439 = !DILocation(line: 3083, column: 26, scope: !3435)
!3440 = !DILocation(line: 3083, column: 3, scope: !3435)
!3441 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !334, file: !334, line: 182, type: !3442, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3446)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!7, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!3446 = !{!3447}
!3447 = !DILocalVariable(name: "vec_", arg: 1, scope: !3441, file: !334, line: 182, type: !3444)
!3448 = !DILocation(line: 0, scope: !3441)
!3449 = !DILocation(line: 182, column: 1, scope: !3441)
!3450 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !334, file: !334, line: 182, type: !3451, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!661, !3444, !7}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "vec_", arg: 1, scope: !3450, file: !334, line: 182, type: !3444)
!3455 = !DILocalVariable(name: "ix_", arg: 2, scope: !3450, file: !334, line: 182, type: !7)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 182, column: 1, scope: !3450)
!3458 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !3359, file: !3359, line: 233, type: !3459, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !3407, !661}
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "use", arg: 1, scope: !3458, file: !3359, line: 233, type: !3407)
!3463 = !DILocalVariable(name: "val", arg: 2, scope: !3458, file: !3359, line: 233, type: !661)
!3464 = !DILocation(line: 0, scope: !3458)
!3465 = !DILocation(line: 235, column: 3, scope: !3458)
!3466 = !DILocation(line: 236, column: 10, scope: !3458)
!3467 = !DILocation(line: 236, column: 15, scope: !3458)
!3468 = !DILocation(line: 237, column: 3, scope: !3458)
!3469 = !DILocation(line: 238, column: 1, scope: !3458)
!3470 = distinct !DISubprogram(name: "gsi_next", scope: !583, file: !583, line: 4485, type: !3471, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!3474 = !{!3475}
!3475 = !DILocalVariable(name: "i", arg: 1, scope: !3470, file: !583, line: 4485, type: !3473)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 4487, column: 15, scope: !3470)
!3478 = !DILocation(line: 4487, column: 20, scope: !3470)
!3479 = !DILocation(line: 4487, column: 10, scope: !3470)
!3480 = !DILocation(line: 4488, column: 1, scope: !3470)
!3481 = distinct !DISubprogram(name: "remove_equivalence", scope: !3, file: !3, line: 328, type: !3482, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !661}
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DILocalVariable(name: "value", arg: 1, scope: !3481, file: !3, line: 328, type: !661)
!3486 = !DILocalVariable(name: "equiv_hash_elt", scope: !3481, file: !3, line: 330, type: !1993)
!3487 = !DILocalVariable(name: "equiv_hash_elt_p", scope: !3481, file: !3, line: 330, type: !2002)
!3488 = !DILocalVariable(name: "slot", scope: !3481, file: !3, line: 331, type: !1473)
!3489 = !DILocation(line: 0, scope: !3481)
!3490 = !DILocation(line: 330, column: 3, scope: !3481)
!3491 = !DILocation(line: 333, column: 18, scope: !3481)
!3492 = !DILocation(line: 333, column: 24, scope: !3481)
!3493 = !DILocation(line: 334, column: 18, scope: !3481)
!3494 = !DILocation(line: 334, column: 31, scope: !3481)
!3495 = !DILocation(line: 336, column: 26, scope: !3481)
!3496 = !DILocation(line: 336, column: 10, scope: !3481)
!3497 = !DILocation(line: 338, column: 48, scope: !3481)
!3498 = !DILocation(line: 339, column: 3, scope: !3481)
!3499 = !DILocation(line: 340, column: 1, scope: !3481)
!3500 = distinct !DISubprogram(name: "gimple_seq_first", scope: !583, file: !583, line: 159, type: !3076, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "s", arg: 1, scope: !3500, file: !583, line: 159, type: !3078)
!3503 = !DILocation(line: 0, scope: !3500)
!3504 = !DILocation(line: 161, column: 10, scope: !3500)
!3505 = !DILocation(line: 161, column: 17, scope: !3500)
!3506 = !DILocation(line: 161, column: 3, scope: !3500)
!3507 = distinct !DISubprogram(name: "gimple_bb", scope: !583, file: !583, line: 1112, type: !3508, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!949, !2993}
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "g", arg: 1, scope: !3507, file: !583, line: 1112, type: !2993)
!3512 = !DILocation(line: 0, scope: !3507)
!3513 = !DILocation(line: 1114, column: 20, scope: !3507)
!3514 = !DILocation(line: 1114, column: 3, scope: !3507)
!3515 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !583, file: !583, line: 3100, type: !3516, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!3518, !985, !7}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "gs", arg: 1, scope: !3515, file: !583, line: 3100, type: !985)
!3521 = !DILocalVariable(name: "index", arg: 2, scope: !3515, file: !583, line: 3100, type: !7)
!3522 = !DILocation(line: 0, scope: !3515)
!3523 = !DILocation(line: 3103, column: 3, scope: !3515)
!3524 = !DILocation(line: 3104, column: 12, scope: !3515)
!3525 = !DILocation(line: 3104, column: 3, scope: !3515)
!3526 = distinct !DISubprogram(name: "delink_imm_use", scope: !3359, file: !3359, line: 188, type: !3527, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3408}
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "linknode", arg: 1, scope: !3526, file: !3359, line: 188, type: !3408)
!3531 = !DILocation(line: 0, scope: !3526)
!3532 = !DILocation(line: 191, column: 17, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3526, file: !3359, line: 191, column: 7)
!3534 = !DILocation(line: 191, column: 22, scope: !3533)
!3535 = !DILocation(line: 191, column: 7, scope: !3526)
!3536 = !DILocation(line: 194, column: 36, scope: !3526)
!3537 = !DILocation(line: 194, column: 19, scope: !3526)
!3538 = !DILocation(line: 194, column: 24, scope: !3526)
!3539 = !DILocation(line: 195, column: 36, scope: !3526)
!3540 = !DILocation(line: 195, column: 13, scope: !3526)
!3541 = !DILocation(line: 195, column: 24, scope: !3526)
!3542 = !DILocation(line: 196, column: 18, scope: !3526)
!3543 = !DILocation(line: 197, column: 18, scope: !3526)
!3544 = !DILocation(line: 198, column: 1, scope: !3526)
!3545 = distinct !DISubprogram(name: "link_imm_use", scope: !3359, file: !3359, line: 214, type: !3546, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3408, !661}
!3548 = !{!3549, !3550, !3551}
!3549 = !DILocalVariable(name: "linknode", arg: 1, scope: !3545, file: !3359, line: 214, type: !3408)
!3550 = !DILocalVariable(name: "def", arg: 2, scope: !3545, file: !3359, line: 214, type: !661)
!3551 = !DILocalVariable(name: "root", scope: !3545, file: !3359, line: 216, type: !3408)
!3552 = !DILocation(line: 0, scope: !3545)
!3553 = !DILocation(line: 218, column: 8, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3545, file: !3359, line: 218, column: 7)
!3555 = !DILocation(line: 218, column: 12, scope: !3554)
!3556 = !DILocation(line: 218, column: 15, scope: !3554)
!3557 = !DILocation(line: 218, column: 31, scope: !3554)
!3558 = !DILocation(line: 218, column: 7, scope: !3545)
!3559 = !DILocation(line: 219, column: 15, scope: !3554)
!3560 = !DILocation(line: 219, column: 20, scope: !3554)
!3561 = !DILocation(line: 219, column: 5, scope: !3554)
!3562 = !DILocation(line: 222, column: 16, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3554, file: !3359, line: 221, column: 5)
!3564 = !DILocation(line: 227, column: 7, scope: !3563)
!3565 = !DILocation(line: 229, column: 1, scope: !3545)
!3566 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !3359, file: !3359, line: 202, type: !3567, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !3408, !3408}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "linknode", arg: 1, scope: !3566, file: !3359, line: 202, type: !3408)
!3571 = !DILocalVariable(name: "list", arg: 2, scope: !3566, file: !3359, line: 202, type: !3408)
!3572 = !DILocation(line: 0, scope: !3566)
!3573 = !DILocation(line: 206, column: 13, scope: !3566)
!3574 = !DILocation(line: 206, column: 18, scope: !3566)
!3575 = !DILocation(line: 207, column: 26, scope: !3566)
!3576 = !DILocation(line: 207, column: 13, scope: !3566)
!3577 = !DILocation(line: 207, column: 18, scope: !3566)
!3578 = !DILocation(line: 208, column: 9, scope: !3566)
!3579 = !DILocation(line: 208, column: 15, scope: !3566)
!3580 = !DILocation(line: 208, column: 20, scope: !3566)
!3581 = !DILocation(line: 209, column: 14, scope: !3566)
!3582 = !DILocation(line: 210, column: 1, scope: !3566)
!3583 = distinct !DISubprogram(name: "VEC_tree_base_pop", scope: !334, file: !334, line: 182, type: !3584, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!661, !3343}
!3586 = !{!3587, !3588}
!3587 = !DILocalVariable(name: "vec_", arg: 1, scope: !3583, file: !334, line: 182, type: !3343)
!3588 = !DILocalVariable(name: "obj_", scope: !3583, file: !334, line: 182, type: !661)
!3589 = !DILocation(line: 0, scope: !3583)
!3590 = !DILocation(line: 182, column: 1, scope: !3583)
!3591 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3592, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!649, !2528}
!3594 = !{!3595}
!3595 = !DILocalVariable(name: "i", arg: 1, scope: !3591, file: !318, line: 721, type: !2528)
!3596 = !DILocation(line: 723, column: 22, scope: !3591)
!3597 = !DILocation(line: 723, column: 19, scope: !3591)
!3598 = !DILocation(line: 723, column: 10, scope: !3591)
!3599 = !DILocation(line: 723, column: 3, scope: !3591)
!3600 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3601, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!965, !2528}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "i", arg: 1, scope: !3600, file: !318, line: 752, type: !2528)
!3605 = !DILocation(line: 754, column: 10, scope: !3600)
!3606 = !DILocation(line: 754, column: 3, scope: !3600)
!3607 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !3608, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!7, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "vec_", arg: 1, scope: !3607, file: !318, line: 150, type: !3610)
!3614 = !DILocation(line: 0, scope: !3607)
!3615 = !DILocation(line: 150, column: 1, scope: !3607)
!3616 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3617, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!953, !2528}
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "i", arg: 1, scope: !3616, file: !318, line: 685, type: !2528)
!3621 = !DILocation(line: 687, column: 3, scope: !3616)
!3622 = !DILocation(line: 688, column: 10, scope: !3616)
!3623 = !DILocation(line: 688, column: 3, scope: !3616)
!3624 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !3625, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!965, !3610, !7}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "vec_", arg: 1, scope: !3624, file: !318, line: 150, type: !3610)
!3629 = !DILocalVariable(name: "ix_", arg: 2, scope: !3624, file: !318, line: 150, type: !7)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 150, column: 1, scope: !3624)
