; ModuleID = 'tree-ssa-phiopt.bc'
source_filename = "tree-ssa-phiopt.c"
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pointer_set_t = type opaque
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.dom_walk_data = type { i8, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, i8*, %struct.VEC_void_p_heap*, i64, %struct.VEC_void_p_heap* }
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.name_to_bb = type { %union.tree_node*, %struct.basic_block_def*, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [18 x i8] c"tree-ssa-phiopt.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"phiopt\00", align 1
@pass_phiopt = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_phiopt, i32 ()* @tree_ssa_phiopt, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [7 x i8] c"cselim\00", align 1
@pass_cselim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8 ()* @gate_cselim, i32 ()* @tree_ssa_cs_elim, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8, !dbg !1970
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@condstoretemp = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !1998
@seen_ssa_names = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2000
@nontrap_set = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !2002
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cstore\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [75 x i8] c"COND_EXPR in block %d and PHI in block %d converted to straightline code.\0A\00", align 1
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external dso_local local_unnamed_addr global i32, align 4
@flag_finite_math_only = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_cselim = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2024, metadata !DIExpression()), !dbg !2025
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2026
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2027
  ret i32 %call, !dbg !2028
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2029 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2033
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2034
  ret i32 %call, !dbg !2035
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2091, metadata !DIExpression()), !dbg !2092
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2093
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2093
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2093
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2093
  %cmp = icmp uge i8* %0, %1, !dbg !2093
  %conv1 = zext i1 %cmp to i64, !dbg !2093
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2093
  %tobool = icmp eq i64 %expval, 0, !dbg !2093
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2093

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2093
  br label %cond.end, !dbg !2093

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2093
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2093
  %2 = load i8, i8* %0, align 1, !dbg !2093
  %conv3 = zext i8 %2 to i32, !dbg !2093
  br label %cond.end, !dbg !2093

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2093
  ret i32 %cond, !dbg !2094
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2097, metadata !DIExpression()), !dbg !2098
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2099
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2099
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2099
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2099
  %cmp = icmp uge i8* %0, %1, !dbg !2099
  %conv1 = zext i1 %cmp to i64, !dbg !2099
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2099
  %tobool = icmp eq i64 %expval, 0, !dbg !2099
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2099

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2099
  br label %cond.end, !dbg !2099

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2099
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2099
  %2 = load i8, i8* %0, align 1, !dbg !2099
  %conv3 = zext i8 %2 to i32, !dbg !2099
  br label %cond.end, !dbg !2099

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2099
  ret i32 %cond, !dbg !2100
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2101 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2102
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2102
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2102
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2102
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2102
  %cmp = icmp uge i8* %1, %2, !dbg !2102
  %conv1 = zext i1 %cmp to i64, !dbg !2102
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2102
  %tobool = icmp eq i64 %expval, 0, !dbg !2102
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2102

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2102
  br label %cond.end, !dbg !2102

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2102
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2102
  %3 = load i8, i8* %1, align 1, !dbg !2102
  %conv3 = zext i8 %3 to i32, !dbg !2102
  br label %cond.end, !dbg !2102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2102
  ret i32 %cond, !dbg !2103
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2110
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2111
  ret i32 %call, !dbg !2112
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2117, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2118, metadata !DIExpression()), !dbg !2119
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2120
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2120
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2120
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2120
  %cmp = icmp uge i8* %0, %1, !dbg !2120
  %conv1 = zext i1 %cmp to i64, !dbg !2120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2120
  %tobool = icmp eq i64 %expval, 0, !dbg !2120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2120

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2120
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2120
  br label %cond.end, !dbg !2120

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2120
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2120
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2120
  store i8 %conv2, i8* %0, align 1, !dbg !2120
  %conv6 = and i32 %__c, 255, !dbg !2120
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2125, metadata !DIExpression()), !dbg !2126
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2127
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2127
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2127
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2127
  %cmp = icmp uge i8* %0, %1, !dbg !2127
  %conv1 = zext i1 %cmp to i64, !dbg !2127
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2127
  %tobool = icmp eq i64 %expval, 0, !dbg !2127
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2127

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2127
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2127
  br label %cond.end, !dbg !2127

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2127
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2127
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2127
  store i8 %conv2, i8* %0, align 1, !dbg !2127
  %conv6 = and i32 %__c, 255, !dbg !2127
  br label %cond.end, !dbg !2127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2127
  ret i32 %cond, !dbg !2128
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2131, metadata !DIExpression()), !dbg !2132
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2133
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2133
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2133
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2133
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2133
  %cmp = icmp uge i8* %1, %2, !dbg !2133
  %conv1 = zext i1 %cmp to i64, !dbg !2133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2133
  %tobool = icmp eq i64 %expval, 0, !dbg !2133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2133

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2133
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2133
  br label %cond.end, !dbg !2133

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2133
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2133
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2133
  store i8 %conv4, i8* %1, align 1, !dbg !2133
  %conv6 = and i32 %__c, 255, !dbg !2133
  br label %cond.end, !dbg !2133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2133
  ret i32 %cond, !dbg !2134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2143, metadata !DIExpression()), !dbg !2144
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2145
  ret i64 %call, !dbg !2146
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2149, metadata !DIExpression()), !dbg !2150
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2151
  %0 = load i32, i32* %_flags, align 8, !dbg !2151
  %and = lshr i32 %0, 4, !dbg !2151
  %and.lobit = and i32 %and, 1, !dbg !2151
  ret i32 %and.lobit, !dbg !2152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2155, metadata !DIExpression()), !dbg !2156
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2157
  %0 = load i32, i32* %_flags, align 8, !dbg !2157
  %and = lshr i32 %0, 5, !dbg !2157
  %and.lobit = and i32 %and, 1, !dbg !2157
  ret i32 %and.lobit, !dbg !2158
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2162, metadata !DIExpression()), !dbg !2163
  %__c.off = add i32 %__c, 128, !dbg !2164
  %0 = icmp ult i32 %__c.off, 384, !dbg !2164
  br i1 %0, label %cond.true, label %cond.end, !dbg !2164

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2165
  %1 = load i32*, i32** %call, align 8, !dbg !2166
  %idxprom = sext i32 %__c to i64, !dbg !2167
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2167
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2167
  br label %cond.end, !dbg !2168

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2168
  ret i32 %cond, !dbg !2169
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2172, metadata !DIExpression()), !dbg !2173
  %__c.off = add i32 %__c, 128, !dbg !2174
  %0 = icmp ult i32 %__c.off, 384, !dbg !2174
  br i1 %0, label %cond.true, label %cond.end, !dbg !2174

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2175
  %1 = load i32*, i32** %call, align 8, !dbg !2176
  %idxprom = sext i32 %__c to i64, !dbg !2177
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2177
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2177
  br label %cond.end, !dbg !2178

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2178
  ret i32 %cond, !dbg !2179
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2187
  %conv = trunc i64 %call to i32, !dbg !2188
  ret i32 %conv, !dbg !2189
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2196
  ret i64 %call, !dbg !2197
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2203, metadata !DIExpression()), !dbg !2204
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2205
  ret i64 %call, !dbg !2206
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2213, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2214, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2215, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2216, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2217, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 0, metadata !2218, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2219, metadata !DIExpression()), !dbg !2223
  br label %while.cond, !dbg !2224

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2225
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2219, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2218, metadata !DIExpression()), !dbg !2223
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2226
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2224

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2227
  %div = lshr i64 %add, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %div, metadata !2220, metadata !DIExpression()), !dbg !2223
  %mul = mul i64 %div, %__size, !dbg !2230
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2221, metadata !DIExpression()), !dbg !2223
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %call, metadata !2222, metadata !DIExpression()), !dbg !2223
  %cmp1 = icmp slt i32 %call, 0, !dbg !2233
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2235

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2236
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2238

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2218, metadata !DIExpression()), !dbg !2223
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2223
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2219, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2218, metadata !DIExpression()), !dbg !2223
  br label %while.cond, !dbg !2224, !llvm.loop !2240

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2223
  ret i8* %retval.0, !dbg !2242
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2243 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2249, metadata !DIExpression()), !dbg !2250
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2251
  ret double %call, !dbg !2252
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %base, metadata !2264, metadata !DIExpression()), !dbg !2265
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2266
  ret i64 %call, !dbg !2267
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %base, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2278
  ret i64 %call, !dbg !2279
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %base, metadata !2293, metadata !DIExpression()), !dbg !2294
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2295
  ret i64 %call, !dbg !2296
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2297 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2302, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %base, metadata !2303, metadata !DIExpression()), !dbg !2304
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2305
  ret i64 %call, !dbg !2306
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2357
  ret i32 %call, !dbg !2358
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2364, metadata !DIExpression()), !dbg !2365
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2366
  ret i32 %call, !dbg !2367
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2375, metadata !DIExpression()), !dbg !2376
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2377
  ret i32 %call, !dbg !2378
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2379 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2385, metadata !DIExpression(DW_OP_deref)), !dbg !2386
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2387
  ret i32 %call, !dbg !2388
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2389 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2393, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2394, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2396, metadata !DIExpression()), !dbg !2397
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2396, metadata !DIExpression(DW_OP_deref)), !dbg !2397
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2398
  ret i32 %call, !dbg !2399
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2400 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2424, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2425, metadata !DIExpression()), !dbg !2426
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2427
  ret i32 %call, !dbg !2428
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2429 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2432, metadata !DIExpression()), !dbg !2433
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2436 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2441, metadata !DIExpression()), !dbg !2442
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2443
  ret i32 %call, !dbg !2444
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2452, metadata !DIExpression()), !dbg !2453
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2454
  ret i32 %call, !dbg !2455
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def** @blocks_in_phiopt_order() local_unnamed_addr #5 !dbg !2456 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2477
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2477
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2477
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2477
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2477
  %conv = sext i32 %2 to i64, !dbg !2477
  %mul = shl nsw i64 %conv, 3, !dbg !2477
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2477
  %3 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !2462, metadata !DIExpression()), !dbg !2478
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2479
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2479
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2479
  %x_n_basic_blocks3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 3, !dbg !2479
  %6 = load i32, i32* %x_n_basic_blocks3, align 8, !dbg !2479
  %sub = add nsw i32 %6, -2, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2463, metadata !DIExpression()), !dbg !2478
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2481
  %7 = load i32, i32* %x_last_basic_block, align 8, !dbg !2481
  %call6 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %7) #6, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call6, metadata !2466, metadata !DIExpression()), !dbg !2478
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call6) #6, !dbg !2483
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2484
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2484
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !2484
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2484
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2484
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !2484
  %11 = load i32, i32* %index, align 8, !dbg !2484
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call6, i32 %11) #7, !dbg !2484
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2485
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !2485
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2485
  %x_entry_block_ptr11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 0, !dbg !2485
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr11, align 8, !dbg !2485
  br label %for.cond, !dbg !2485

for.cond:                                         ; preds = %for.inc72, %entry
  %.pre5 = phi %struct.function* [ %12, %entry ], [ %.pre, %for.inc72 ]
  %15 = phi %struct.control_flow_graph* [ %13, %entry ], [ %.pre4, %for.inc72 ], !dbg !2487
  %n.0 = phi i32 [ %sub, %entry ], [ %n.1, %for.inc72 ], !dbg !2489
  %.pn = phi %struct.basic_block_def* [ %14, %entry ], [ %x.0, %for.inc72 ]
  %x.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2490
  %x.0 = load %struct.basic_block_def*, %struct.basic_block_def** %x.0.in, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %x.0, metadata !2460, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2463, metadata !DIExpression()), !dbg !2478
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !2487
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2487
  %cmp = icmp eq %struct.basic_block_def* %x.0, %16, !dbg !2487
  br i1 %cmp, label %for.end74, label %for.body, !dbg !2485

for.body:                                         ; preds = %for.cond
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %x.0, i64 0, i32 9, !dbg !2491
  %17 = load i32, i32* %index15, align 8, !dbg !2491
  %div = lshr i32 %17, 6, !dbg !2491
  %idxprom = zext i32 %div to i64, !dbg !2491
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call6, i64 0, i32 3, i64 %idxprom, !dbg !2491
  %18 = load i64, i64* %arrayidx, align 8, !dbg !2491
  %rem = and i32 %17, 63, !dbg !2491
  %sh_prom = zext i32 %rem to i64, !dbg !2491
  %19 = shl i64 1, %sh_prom, !dbg !2491
  %20 = and i64 %18, %19, !dbg !2491
  %tobool = icmp eq i64 %20, 0, !dbg !2491
  br i1 %tobool, label %for.cond17.preheader, label %for.inc72, !dbg !2494

for.cond17.preheader:                             ; preds = %for.body
  br label %for.cond17, !dbg !2495

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body34
  %np.0 = phi i32 [ %inc, %for.body34 ], [ 1, %for.cond17.preheader ], !dbg !2497
  %y.0 = phi %struct.basic_block_def* [ %call35, %for.body34 ], [ %x.0, %for.cond17.preheader ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %y.0, metadata !2461, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0, metadata !2464, metadata !DIExpression()), !dbg !2478
  %call18 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %y.0) #7, !dbg !2498
  %tobool20 = icmp eq i8 %call18, 0, !dbg !2498
  br i1 %tobool20, label %for.end, label %land.rhs, !dbg !2500

land.rhs:                                         ; preds = %for.cond17
  %call22 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.0) #7, !dbg !2501
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call22, i64 0, i32 9, !dbg !2501
  %21 = load i32, i32* %index23, align 8, !dbg !2501
  %div24 = lshr i32 %21, 6, !dbg !2501
  %idxprom25 = zext i32 %div24 to i64, !dbg !2501
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call6, i64 0, i32 3, i64 %idxprom25, !dbg !2501
  %22 = load i64, i64* %arrayidx26, align 8, !dbg !2501
  %call27 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.0) #7, !dbg !2501
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call27, i64 0, i32 9, !dbg !2501
  %23 = load i32, i32* %index28, align 8, !dbg !2501
  %rem29 = and i32 %23, 63, !dbg !2501
  %sh_prom30 = zext i32 %rem29 to i64, !dbg !2501
  %24 = shl i64 1, %sh_prom30, !dbg !2502
  %25 = and i64 %22, %24, !dbg !2502
  %tobool33 = icmp eq i64 %25, 0, !dbg !2502
  br i1 %tobool33, label %for.body34, label %for.end, !dbg !2495

for.body34:                                       ; preds = %land.rhs
  %inc = add i32 %np.0, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2464, metadata !DIExpression()), !dbg !2478
  %call35 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.0) #7, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call35, metadata !2461, metadata !DIExpression()), !dbg !2478
  br label %for.cond17, !dbg !2505, !llvm.loop !2506

for.end:                                          ; preds = %for.cond17, %land.rhs
  %np.0.lcssa = phi i32 [ %np.0, %for.cond17 ], [ %np.0, %land.rhs ], !dbg !2497
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %np.0.lcssa, metadata !2464, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %x.0, metadata !2461, metadata !DIExpression()), !dbg !2478
  %sub36 = sub i32 %n.0, %np.0.lcssa, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %sub36, metadata !2465, metadata !DIExpression()), !dbg !2478
  br label %for.cond37, !dbg !2510

for.cond37:                                       ; preds = %for.inc61, %for.end
  %i.0 = phi i32 [ %sub36, %for.end ], [ %inc63, %for.inc61 ], !dbg !2511
  %y.1 = phi %struct.basic_block_def* [ %x.0, %for.end ], [ %call62, %for.inc61 ], !dbg !2511
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %y.1, metadata !2461, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2465, metadata !DIExpression()), !dbg !2478
  %call38 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %y.1) #7, !dbg !2512
  %tobool40 = icmp eq i8 %call38, 0, !dbg !2512
  br i1 %tobool40, label %for.end64.critedge, label %land.rhs41, !dbg !2514

land.rhs41:                                       ; preds = %for.cond37
  %call43 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.1) #7, !dbg !2515
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call43, i64 0, i32 9, !dbg !2515
  %26 = load i32, i32* %index44, align 8, !dbg !2515
  %div45 = lshr i32 %26, 6, !dbg !2515
  %idxprom46 = zext i32 %div45 to i64, !dbg !2515
  %arrayidx47 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call6, i64 0, i32 3, i64 %idxprom46, !dbg !2515
  %27 = load i64, i64* %arrayidx47, align 8, !dbg !2515
  %call48 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.1) #7, !dbg !2515
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call48, i64 0, i32 9, !dbg !2515
  %28 = load i32, i32* %index49, align 8, !dbg !2515
  %rem50 = and i32 %28, 63, !dbg !2515
  %sh_prom51 = zext i32 %rem50 to i64, !dbg !2515
  %29 = shl i64 1, %sh_prom51, !dbg !2516
  %30 = and i64 %27, %29, !dbg !2516
  %tobool54 = icmp eq i64 %30, 0, !dbg !2516
  %idxprom58 = zext i32 %i.0 to i64, !dbg !2517
  %arrayidx59 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %idxprom58, !dbg !2517
  store %struct.basic_block_def* %y.1, %struct.basic_block_def** %arrayidx59, align 8, !dbg !2517
  %index60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %y.1, i64 0, i32 9, !dbg !2517
  %31 = load i32, i32* %index60, align 8, !dbg !2517
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call6, i32 %31) #7, !dbg !2517
  br i1 %tobool54, label %for.inc61, label %for.end64.loopexit, !dbg !2518

for.inc61:                                        ; preds = %land.rhs41
  %call62 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %y.1) #7, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call62, metadata !2461, metadata !DIExpression()), !dbg !2478
  %inc63 = add i32 %i.0, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !2465, metadata !DIExpression()), !dbg !2478
  br label %for.cond37, !dbg !2521, !llvm.loop !2522

for.end64.critedge:                               ; preds = %for.cond37
  %i.0.lcssa = phi i32 [ %i.0, %for.cond37 ], !dbg !2511
  %y.1.lcssa = phi %struct.basic_block_def* [ %y.1, %for.cond37 ], !dbg !2511
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %y.1.lcssa, metadata !2461, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %y.1.lcssa, metadata !2461, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %y.1.lcssa, metadata !2461, metadata !DIExpression()), !dbg !2478
  %idxprom58.c = zext i32 %i.0.lcssa to i64, !dbg !2517
  %arrayidx59.c = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %idxprom58.c, !dbg !2517
  store %struct.basic_block_def* %y.1.lcssa, %struct.basic_block_def** %arrayidx59.c, align 8, !dbg !2517
  %index60.c = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %y.1.lcssa, i64 0, i32 9, !dbg !2517
  %32 = load i32, i32* %index60.c, align 8, !dbg !2517
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call6, i32 %32) #7, !dbg !2517
  br label %for.end64, !dbg !2518

for.end64.loopexit:                               ; preds = %land.rhs41
  %i.0.lcssa11 = phi i32 [ %i.0, %land.rhs41 ], !dbg !2511
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa11, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa11, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa11, metadata !2465, metadata !DIExpression()), !dbg !2478
  br label %for.end64, !dbg !2524

for.end64:                                        ; preds = %for.end64.loopexit, %for.end64.critedge
  %i.012 = phi i32 [ %i.0.lcssa11, %for.end64.loopexit ], [ %i.0.lcssa, %for.end64.critedge ]
  %sub68 = add i32 %n.0, -1, !dbg !2524
  %cmp69 = icmp eq i32 %i.012, %sub68, !dbg !2524
  br i1 %cmp69, label %cond.end, label %cond.true, !dbg !2524

cond.true:                                        ; preds = %for.end64
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2524
  br label %cond.end, !dbg !2524

cond.end:                                         ; preds = %for.end64, %cond.true
  call void @llvm.dbg.value(metadata i32 %sub36, metadata !2463, metadata !DIExpression()), !dbg !2478
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2487
  br label %for.inc72, !dbg !2525

for.inc72:                                        ; preds = %for.body, %cond.end
  %.pre = phi %struct.function* [ %.pre.pre, %cond.end ], [ %.pre5, %for.body ], !dbg !2487
  %n.1 = phi i32 [ %sub36, %cond.end ], [ %n.0, %for.body ], !dbg !2478
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !2463, metadata !DIExpression()), !dbg !2478
  %cfg13.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2526
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13.phi.trans.insert, align 8, !dbg !2487
  br label %for.cond, !dbg !2487, !llvm.loop !2527

for.end74:                                        ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !2489
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2463, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2463, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2463, metadata !DIExpression()), !dbg !2478
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call6, i64 0, i32 0, !dbg !2529
  %33 = load i8*, i8** %popcount, align 8, !dbg !2529
  tail call void @free(i8* %33) #6, !dbg !2529
  %34 = bitcast %struct.simple_bitmap_def* %call6 to i8*, !dbg !2529
  tail call void @free(i8* %34) #6, !dbg !2529
  %cmp75 = icmp eq i32 %n.0.lcssa, 0, !dbg !2530
  br i1 %cmp75, label %cond.end79, label %cond.true77, !dbg !2530

cond.true77:                                      ; preds = %for.end74
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 372, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2530
  br label %cond.end79, !dbg !2530

cond.end79:                                       ; preds = %for.end74, %cond.true77
  ret %struct.basic_block_def** %3, !dbg !2531
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2532 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2536, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2537, metadata !DIExpression()), !dbg !2541
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2542
  %0 = load i8*, i8** %popcount, align 8, !dbg !2542
  %tobool = icmp eq i8* %0, null, !dbg !2543
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2544

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2545
  %.pre2 = zext i32 %.pre to i64, !dbg !2546
  %.pre3 = shl i64 1, %.pre2, !dbg !2546
  %.pre4 = lshr i32 %bitno, 6, !dbg !2547
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2548
  br label %if.end7, !dbg !2544

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2549
  %idxprom = zext i32 %div to i64, !dbg !2549
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2549
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2549
  %rem = and i32 %bitno, 63, !dbg !2549
  %sh_prom = zext i32 %rem to i64, !dbg !2549
  %2 = shl i64 1, %sh_prom, !dbg !2550
  %3 = and i64 %1, %2, !dbg !2550
  %tobool1 = icmp eq i64 %3, 0, !dbg !2550
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2552

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2553
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2554
  %inc = add i8 %4, 1, !dbg !2554
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2554
  br label %if.end7, !dbg !2553

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2548
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2546
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2548
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2555
  %or = or i64 %5, %shl.pre-phi, !dbg !2555
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2555
  ret void, !dbg !2556
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2557 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2564, metadata !DIExpression()), !dbg !2565
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2566
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2566
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2566
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2566

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2566
  br label %cond.end, !dbg !2566

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2566
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2566
  %cmp = icmp eq i32 %call, 1, !dbg !2567
  %conv2 = zext i1 %cmp to i8, !dbg !2566
  ret i8 %conv2, !dbg !2568
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2569 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2573, metadata !DIExpression()), !dbg !2574
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !2575
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2576
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2576
  ret %struct.basic_block_def* %0, !dbg !2577
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @free(i8*) #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @empty_block_p(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2578 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2582, metadata !DIExpression()), !dbg !2590
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %gsi, %struct.basic_block_def* %bb) #7, !dbg !2592
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2593
  %tobool = icmp eq i8 %call, 0, !dbg !2593
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2595

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2596
  %call2 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call1) #7, !dbg !2598
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2598
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2599

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  call fastcc void @gsi_next_nondebug(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2600
  br label %if.end5, !dbg !2600

if.end5:                                          ; preds = %if.end, %if.then4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2601
  br label %cleanup, !dbg !2602

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i8 [ %call6, %if.end5 ], [ 1, %entry ], !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2603
  ret i8 %retval.0, !dbg !2603
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2604 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2609, metadata !DIExpression()), !dbg !2611
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #7, !dbg !2612
  br label %while.cond, !dbg !2613

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !2614
  %tobool = icmp eq i8 %call, 0, !dbg !2614
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !2615

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !2616
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !2617
  %cmp = icmp eq i32 %call2, 4, !dbg !2618
  br i1 %cmp, label %while.body, label %while.end, !dbg !2613

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !2619
  br label %while.cond, !dbg !2613, !llvm.loop !2620

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !2622
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2623 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2627, metadata !DIExpression()), !dbg !2628
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2629
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2629
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2630
  %conv1 = zext i1 %cmp to i8, !dbg !2631
  ret i8 %conv1, !dbg !2632
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2633 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2638, metadata !DIExpression()), !dbg !2639
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2640
  %cmp = icmp eq i32 %call, 2, !dbg !2641
  %conv1 = zext i1 %cmp to i8, !dbg !2640
  ret i8 %conv1, !dbg !2642
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2643 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2647, metadata !DIExpression()), !dbg !2648
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2649
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2649
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2650
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2650
  ret %union.gimple_statement_d* %1, !dbg !2651
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next_nondebug(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2652 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2657, metadata !DIExpression()), !dbg !2658
  br label %do.body, !dbg !2659

do.body:                                          ; preds = %land.rhs, %entry
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) #7, !dbg !2660
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2662
  %tobool = icmp eq i8 %call, 0, !dbg !2662
  br i1 %tobool, label %land.rhs, label %do.end, !dbg !2663

land.rhs:                                         ; preds = %do.body
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2664
  %call2 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call1) #7, !dbg !2665
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2663
  br i1 %tobool3, label %do.end, label %do.body, !dbg !2666, !llvm.loop !2667

do.end:                                           ; preds = %land.rhs, %do.body
  ret void, !dbg !2669
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_phiopt() #5 !dbg !2670 {
entry:
  ret i8 1, !dbg !2671
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_phiopt() #5 !dbg !2672 {
entry:
  %call = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 zeroext 0) #7, !dbg !2673
  ret i32 %call, !dbg !2674
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_cselim() #5 !dbg !2675 {
entry:
  %0 = load i32, i32* @flag_tree_cselim, align 4, !dbg !2676
  %conv = trunc i32 %0 to i8, !dbg !2676
  ret i8 %conv, !dbg !2677
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_cs_elim() #5 !dbg !2678 {
entry:
  %call = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 zeroext 1) #7, !dbg !2679
  ret i32 %call, !dbg !2680
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2681 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2687, metadata !DIExpression()), !dbg !2688
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2689
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2689

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2689
  %0 = load i32, i32* %num, align 8, !dbg !2689
  br label %cond.end, !dbg !2689

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2689
  ret i32 %cond, !dbg !2689
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2690 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2694, metadata !DIExpression()), !dbg !2695
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !2696
  %tobool = icmp eq i8 %call, 0, !dbg !2696
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2696

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2696
  br label %cond.end, !dbg !2696

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2697
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2697
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2697
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2697

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2697
  br label %cond.end5, !dbg !2697

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2697
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !2697
  ret %struct.edge_def* %call7, !dbg !2698
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2704, metadata !DIExpression()), !dbg !2705
  br label %land.end, !dbg !2706

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2706
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2706
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2706
  ret %struct.edge_def* %0, !dbg !2706
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2707 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2710, metadata !DIExpression()), !dbg !2713
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2711, metadata !DIExpression()), !dbg !2712
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2715
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2716
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2717
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2718
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2719
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2720
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2721
  ret void, !dbg !2722
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2723 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2729
  %bf.load = load i32, i32* %0, align 8, !dbg !2729
  %bf.clear = and i32 %bf.load, 255, !dbg !2729
  ret i32 %bf.clear, !dbg !2730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2731 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2733, metadata !DIExpression()), !dbg !2734
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2735
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2735
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2736
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2736
  %2 = load i64, i64* %1, align 8, !dbg !2736
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2737
  store i64 %2, i64* %3, align 8, !dbg !2737
  ret void, !dbg !2738
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2739 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2743, metadata !DIExpression()), !dbg !2744
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2745
  %0 = load i32, i32* %flags, align 8, !dbg !2745
  %and = and i32 %0, 512, !dbg !2746
  %tobool = icmp eq i32 %and, 0, !dbg !2746
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2747

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2748
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2748
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2749
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2750

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2751
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2751
  br label %cond.end, !dbg !2750

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2750
  ret %struct.gimple_seq_d* %cond, !dbg !2752
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2753 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2760, metadata !DIExpression()), !dbg !2761
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2762
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2762

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2763
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2763
  br label %cond.end, !dbg !2762

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2762
  ret %struct.gimple_seq_node_d* %cond, !dbg !2764
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tree_ssa_phiopt_worker(i8 zeroext %do_store_elim) unnamed_addr #5 !dbg !2765 {
entry:
  %agg.tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata i8 %do_store_elim, metadata !2769, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 0, metadata !2774, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* null, metadata !2775, metadata !DIExpression()), !dbg !2795
  %tobool = icmp eq i8 %do_store_elim, 0, !dbg !2796
  br i1 %tobool, label %if.end, label %if.then, !dbg !2798

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** @condstoretemp, align 8, !dbg !2799
  %call = tail call fastcc %struct.pointer_set_t* @get_non_trapping() #7, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call, metadata !2775, metadata !DIExpression()), !dbg !2795
  br label %if.end, !dbg !2802

if.end:                                           ; preds = %entry, %if.then
  %nontrap.0 = phi %struct.pointer_set_t* [ %call, %if.then ], [ null, %entry ], !dbg !2795
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %nontrap.0, metadata !2775, metadata !DIExpression()), !dbg !2795
  %call1 = tail call %struct.basic_block_def** @blocks_in_phiopt_order() #7, !dbg !2803
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call1, metadata !2771, metadata !DIExpression()), !dbg !2795
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2804
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2804
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2804
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2804
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %2, metadata !2772, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2795
  call void @llvm.dbg.value(metadata i32 0, metadata !2773, metadata !DIExpression()), !dbg !2795
  %3 = add i32 %2, -2, !dbg !2805
  %wide.trip.count = zext i32 %3 to i64, !dbg !2806
  br label %for.cond, !dbg !2805

for.cond:                                         ; preds = %cleanup160, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup160 ], [ 0, %if.end ], !dbg !2807
  %cfgchanged.0 = phi i8 [ %cfgchanged.8, %cleanup160 ], [ 0, %if.end ], !dbg !2807
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2773, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %cfgchanged.0, metadata !2774, metadata !DIExpression()), !dbg !2795
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2806
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2808

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv, !dbg !2809
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !2770, metadata !DIExpression()), !dbg !2795
  %call2 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %4) #6, !dbg !2810
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2776, metadata !DIExpression()), !dbg !2811
  %tobool3 = icmp eq %union.gimple_statement_d* %call2, null, !dbg !2812
  br i1 %tobool3, label %cleanup160, label %lor.lhs.false, !dbg !2814

lor.lhs.false:                                    ; preds = %for.body
  %call4 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2815
  %cmp5 = icmp eq i32 %call4, 1, !dbg !2816
  br i1 %cmp5, label %if.end7, label %cleanup160, !dbg !2817

if.end7:                                          ; preds = %lor.lhs.false
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 1, !dbg !2818
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2818
  %tobool8 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !2818
  br i1 %tobool8, label %cond.end, label %cond.true, !dbg !2818

cond.true:                                        ; preds = %if.end7
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !2818
  br label %cond.end, !dbg !2818

cond.end:                                         ; preds = %if.end7, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end7 ], !dbg !2818
  %call10 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #7, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.edge_def* %call10, metadata !2783, metadata !DIExpression()), !dbg !2811
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call10, i64 0, i32 1, !dbg !2819
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !2781, metadata !DIExpression()), !dbg !2811
  %7 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2820
  %tobool12 = icmp eq %struct.VEC_edge_gc* %7, null, !dbg !2820
  br i1 %tobool12, label %cond.end17, label %cond.true13, !dbg !2820

cond.true13:                                      ; preds = %cond.end
  %base15 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %7, i64 0, i32 0, !dbg !2820
  br label %cond.end17, !dbg !2820

cond.end17:                                       ; preds = %cond.end, %cond.true13
  %cond18 = phi %struct.VEC_edge_base* [ %base15, %cond.true13 ], [ null, %cond.end ], !dbg !2820
  %call19 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond18, i32 1) #7, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.edge_def* %call19, metadata !2784, metadata !DIExpression()), !dbg !2811
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 1, !dbg !2821
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !2782, metadata !DIExpression()), !dbg !2811
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call10, i64 0, i32 7, !dbg !2822
  %9 = load i32, i32* %flags, align 8, !dbg !2822
  %and = and i32 %9, 2, !dbg !2824
  %cmp21 = icmp eq i32 %and, 0, !dbg !2825
  br i1 %cmp21, label %lor.lhs.false22, label %cleanup160, !dbg !2826

lor.lhs.false22:                                  ; preds = %cond.end17
  %flags23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 7, !dbg !2827
  %10 = load i32, i32* %flags23, align 8, !dbg !2827
  %and24 = and i32 %10, 2, !dbg !2828
  %cmp25 = icmp eq i32 %and24, 0, !dbg !2829
  br i1 %cmp25, label %if.end27, label %cleanup160, !dbg !2830

if.end27:                                         ; preds = %lor.lhs.false22
  %succs28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 1, !dbg !2831
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs28, align 8, !dbg !2831
  %tobool29 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !2831
  br i1 %tobool29, label %cond.end34, label %cond.true30, !dbg !2831

cond.true30:                                      ; preds = %if.end27
  %base32 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !2831
  br label %cond.end34, !dbg !2831

cond.end34:                                       ; preds = %if.end27, %cond.true30
  %cond35 = phi %struct.VEC_edge_base* [ %base32, %cond.true30 ], [ null, %if.end27 ], !dbg !2831
  %call36 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond35) #7, !dbg !2831
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2833
  %cmp39 = icmp eq %struct.basic_block_def* %8, null, !dbg !2834
  %or.cond = or i1 %cmp37, %cmp39, !dbg !2835
  br i1 %or.cond, label %cleanup160, label %lor.lhs.false40, !dbg !2835

lor.lhs.false40:                                  ; preds = %cond.end34
  %succs41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 1, !dbg !2836
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs41, align 8, !dbg !2836
  %tobool42 = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !2836
  br i1 %tobool42, label %cond.end47, label %cond.true43, !dbg !2836

cond.true43:                                      ; preds = %lor.lhs.false40
  %base45 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !2836
  br label %cond.end47, !dbg !2836

cond.end47:                                       ; preds = %lor.lhs.false40, %cond.true43
  %cond48 = phi %struct.VEC_edge_base* [ %base45, %cond.true43 ], [ null, %lor.lhs.false40 ], !dbg !2836
  %call49 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond48) #7, !dbg !2836
  %cmp50 = icmp eq i32 %call49, 0, !dbg !2837
  br i1 %cmp50, label %cleanup160, label %if.end52, !dbg !2838

if.end52:                                         ; preds = %cond.end47
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs28, align 8, !dbg !2839
  %tobool54 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !2839
  br i1 %tobool54, label %cond.end59, label %cond.true55, !dbg !2839

cond.true55:                                      ; preds = %if.end52
  %base57 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !2839
  br label %cond.end59, !dbg !2839

cond.end59:                                       ; preds = %if.end52, %cond.true55
  %cond60 = phi %struct.VEC_edge_base* [ %base57, %cond.true55 ], [ null, %if.end52 ], !dbg !2839
  %call61 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond60, i32 0) #7, !dbg !2839
  %dest62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call61, i64 0, i32 1, !dbg !2840
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest62, align 8, !dbg !2840
  %cmp63 = icmp eq %struct.basic_block_def* %14, %8, !dbg !2841
  br i1 %cmp63, label %if.end79, label %if.else, !dbg !2842

if.else:                                          ; preds = %cond.end59
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs41, align 8, !dbg !2843
  %tobool66 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !2843
  br i1 %tobool66, label %cond.end71, label %cond.true67, !dbg !2843

cond.true67:                                      ; preds = %if.else
  %base69 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !2843
  br label %cond.end71, !dbg !2843

cond.end71:                                       ; preds = %if.else, %cond.true67
  %cond72 = phi %struct.VEC_edge_base* [ %base69, %cond.true67 ], [ null, %if.else ], !dbg !2843
  %call73 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond72, i32 0) #7, !dbg !2843
  %dest74 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call73, i64 0, i32 1, !dbg !2844
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest74, align 8, !dbg !2844
  %cmp75 = icmp eq %struct.basic_block_def* %16, %6, !dbg !2845
  br i1 %cmp75, label %if.end79, label %cleanup160, !dbg !2846

if.end79:                                         ; preds = %cond.end71, %cond.end59
  %bb1.0 = phi %struct.basic_block_def* [ %6, %cond.end59 ], [ %8, %cond.end71 ], !dbg !2811
  %bb2.0 = phi %struct.basic_block_def* [ %8, %cond.end59 ], [ %6, %cond.end71 ], !dbg !2811
  %e2.0 = phi %struct.edge_def* [ %call19, %cond.end59 ], [ %call10, %cond.end71 ], !dbg !2811
  call void @llvm.dbg.value(metadata %struct.edge_def* %e2.0, metadata !2784, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2.0, metadata !2782, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1.0, metadata !2781, metadata !DIExpression()), !dbg !2811
  %succs80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb1.0, i64 0, i32 1, !dbg !2847
  %17 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs80, align 8, !dbg !2847
  %tobool81 = icmp eq %struct.VEC_edge_gc* %17, null, !dbg !2847
  br i1 %tobool81, label %cond.end86, label %cond.true82, !dbg !2847

cond.true82:                                      ; preds = %if.end79
  %base84 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %17, i64 0, i32 0, !dbg !2847
  br label %cond.end86, !dbg !2847

cond.end86:                                       ; preds = %if.end79, %cond.true82
  %cond87 = phi %struct.VEC_edge_base* [ %base84, %cond.true82 ], [ null, %if.end79 ], !dbg !2847
  %call88 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond87, i32 0) #7, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.edge_def* %call88, metadata !2783, metadata !DIExpression()), !dbg !2811
  %call89 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb1.0) #7, !dbg !2848
  %tobool90 = icmp eq i8 %call89, 0, !dbg !2848
  br i1 %tobool90, label %cleanup160, label %lor.lhs.false91, !dbg !2850

lor.lhs.false91:                                  ; preds = %cond.end86
  %flags92 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call88, i64 0, i32 7, !dbg !2851
  %18 = load i32, i32* %flags92, align 8, !dbg !2851
  %and93 = and i32 %18, 1, !dbg !2852
  %cmp94 = icmp eq i32 %and93, 0, !dbg !2853
  br i1 %cmp94, label %cleanup160, label %if.end96, !dbg !2854

if.end96:                                         ; preds = %lor.lhs.false91
  %call97 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb1.0) #7, !dbg !2855
  %tobool98 = icmp eq i8 %call97, 0, !dbg !2855
  br i1 %tobool98, label %cleanup160, label %lor.lhs.false99, !dbg !2857

lor.lhs.false99:                                  ; preds = %if.end96
  %call100 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb1.0) #7, !dbg !2858
  %cmp101 = icmp eq %struct.basic_block_def* %call100, %4, !dbg !2859
  br i1 %cmp101, label %if.end103, label %cleanup160, !dbg !2860

if.end103:                                        ; preds = %lor.lhs.false99
  br i1 %tobool, label %if.else121, label %if.then105, !dbg !2861

if.then105:                                       ; preds = %if.end103
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb2.0, i64 0, i32 0, !dbg !2862
  %19 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2862
  %tobool106 = icmp eq %struct.VEC_edge_gc* %19, null, !dbg !2862
  br i1 %tobool106, label %cond.end111, label %cond.true107, !dbg !2862

cond.true107:                                     ; preds = %if.then105
  %base109 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %19, i64 0, i32 0, !dbg !2862
  br label %cond.end111, !dbg !2862

cond.end111:                                      ; preds = %if.then105, %cond.true107
  %cond112 = phi %struct.VEC_edge_base* [ %base109, %cond.true107 ], [ null, %if.then105 ], !dbg !2862
  %call113 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond112) #7, !dbg !2862
  %cmp114 = icmp ugt i32 %call113, 2, !dbg !2865
  br i1 %cmp114, label %cleanup160, label %if.end116, !dbg !2866

if.end116:                                        ; preds = %cond.end111
  %call117 = call fastcc zeroext i8 @cond_store_replacement(%struct.basic_block_def* %bb1.0, %struct.basic_block_def* %bb2.0, %struct.edge_def* %call88, %struct.edge_def* %e2.0, %struct.pointer_set_t* %nontrap.0) #7, !dbg !2867
  %tobool118 = icmp eq i8 %call117, 0, !dbg !2867
  %spec.select = select i1 %tobool118, i8 %cfgchanged.0, i8 1, !dbg !2869
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2774, metadata !DIExpression()), !dbg !2795
  br label %if.end159, !dbg !2870

if.else121:                                       ; preds = %if.end103
  %call122 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb2.0) #7, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call122, metadata !2792, metadata !DIExpression()), !dbg !2872
  %call123 = call fastcc zeroext i8 @gimple_seq_singleton_p(%struct.gimple_seq_d* %call122) #7, !dbg !2873
  %tobool124 = icmp eq i8 %call123, 0, !dbg !2873
  br i1 %tobool124, label %cleanup, label %if.end126, !dbg !2875

if.end126:                                        ; preds = %if.else121
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %agg.tmp, %struct.gimple_seq_d* %call122) #7, !dbg !2876
  %call127 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %agg.tmp) #7, !dbg !2877
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call127, metadata !2780, metadata !DIExpression()), !dbg !2811
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call88, i64 0, i32 6, !dbg !2878
  %20 = load i32, i32* %dest_idx, align 4, !dbg !2878
  %conv = zext i32 %20 to i64, !dbg !2879
  %call128 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call127, i64 %conv) #7, !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %call128, metadata !2785, metadata !DIExpression()), !dbg !2811
  %dest_idx129 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2.0, i64 0, i32 6, !dbg !2881
  %21 = load i32, i32* %dest_idx129, align 4, !dbg !2881
  %conv130 = zext i32 %21 to i64, !dbg !2882
  %call131 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call127, i64 %conv130) #7, !dbg !2883
  call void @llvm.dbg.value(metadata %union.tree_node* %call131, metadata !2786, metadata !DIExpression()), !dbg !2811
  %cmp132 = icmp ne %union.tree_node* %call128, null, !dbg !2884
  %cmp134 = icmp ne %union.tree_node* %call131, null, !dbg !2884
  %or.cond2 = and i1 %cmp132, %cmp134, !dbg !2884
  br i1 %or.cond2, label %cond.end138, label %cond.true136, !dbg !2884

cond.true136:                                     ; preds = %if.end126
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2884
  br label %cond.end138, !dbg !2884

cond.end138:                                      ; preds = %if.end126, %cond.true136
  %call140 = call fastcc zeroext i8 @conditional_replacement(%struct.basic_block_def* %4, %struct.basic_block_def* %bb1.0, %struct.edge_def* %call88, %struct.edge_def* %e2.0, %union.gimple_statement_d* %call127, %union.tree_node* %call128, %union.tree_node* %call131) #7, !dbg !2885
  %tobool141 = icmp eq i8 %call140, 0, !dbg !2885
  br i1 %tobool141, label %if.else143, label %cleanup, !dbg !2887

if.else143:                                       ; preds = %cond.end138
  %call144 = call fastcc zeroext i8 @value_replacement(%struct.basic_block_def* %4, %struct.basic_block_def* %bb1.0, %struct.edge_def* %call88, %struct.edge_def* %e2.0, %union.gimple_statement_d* %call127, %union.tree_node* %call128, %union.tree_node* %call131) #7, !dbg !2888
  %tobool145 = icmp eq i8 %call144, 0, !dbg !2888
  br i1 %tobool145, label %if.else147, label %cleanup, !dbg !2890

if.else147:                                       ; preds = %if.else143
  %call148 = call fastcc zeroext i8 @abs_replacement(%struct.basic_block_def* %4, %struct.basic_block_def* %bb1.0, %struct.edge_def* %call88, %struct.edge_def* %e2.0, %union.gimple_statement_d* %call127, %union.tree_node* %call128, %union.tree_node* %call131) #7, !dbg !2891
  %tobool149 = icmp eq i8 %call148, 0, !dbg !2891
  br i1 %tobool149, label %if.else151, label %cleanup, !dbg !2893

if.else151:                                       ; preds = %if.else147
  %call152 = call fastcc zeroext i8 @minmax_replacement(%struct.basic_block_def* %4, %struct.basic_block_def* %bb1.0, %struct.edge_def* %call88, %struct.edge_def* %e2.0, %union.gimple_statement_d* %call127, %union.tree_node* %call128, %union.tree_node* %call131) #7, !dbg !2894
  %tobool153 = icmp eq i8 %call152, 0, !dbg !2894
  %spec.select3 = select i1 %tobool153, i8 %cfgchanged.0, i8 1, !dbg !2896
  call void @llvm.dbg.value(metadata i8 %spec.select3, metadata !2774, metadata !DIExpression()), !dbg !2795
  br label %cleanup

cleanup:                                          ; preds = %if.else147, %if.else143, %cond.end138, %if.else121, %if.else151
  %cfgchanged.6 = phi i8 [ %cfgchanged.0, %if.else121 ], [ 1, %cond.end138 ], [ 1, %if.else143 ], [ %spec.select3, %if.else151 ], [ 1, %if.else147 ], !dbg !2795
  %cleanup.dest.slot.0 = phi i1 [ false, %if.else121 ], [ true, %cond.end138 ], [ true, %if.else143 ], [ true, %if.else151 ], [ true, %if.else147 ]
  call void @llvm.dbg.value(metadata i8 %cfgchanged.6, metadata !2774, metadata !DIExpression()), !dbg !2795
  br i1 %cleanup.dest.slot.0, label %if.end159, label %cleanup160

if.end159:                                        ; preds = %cleanup, %if.end116
  %cfgchanged.7 = phi i8 [ %spec.select, %if.end116 ], [ %cfgchanged.6, %cleanup ], !dbg !2897
  call void @llvm.dbg.value(metadata i8 %cfgchanged.7, metadata !2774, metadata !DIExpression()), !dbg !2795
  br label %cleanup160, !dbg !2898

cleanup160:                                       ; preds = %lor.lhs.false99, %if.end96, %cond.end86, %lor.lhs.false22, %cond.end17, %lor.lhs.false, %for.body, %cond.end111, %lor.lhs.false91, %cond.end71, %cond.end34, %cond.end47, %cleanup, %if.end159
  %cfgchanged.8 = phi i8 [ %cfgchanged.7, %if.end159 ], [ %cfgchanged.6, %cleanup ], [ %cfgchanged.0, %lor.lhs.false ], [ %cfgchanged.0, %for.body ], [ %cfgchanged.0, %lor.lhs.false22 ], [ %cfgchanged.0, %cond.end17 ], [ %cfgchanged.0, %cond.end47 ], [ %cfgchanged.0, %cond.end34 ], [ %cfgchanged.0, %cond.end71 ], [ %cfgchanged.0, %lor.lhs.false91 ], [ %cfgchanged.0, %cond.end86 ], [ %cfgchanged.0, %lor.lhs.false99 ], [ %cfgchanged.0, %if.end96 ], [ %cfgchanged.0, %cond.end111 ], !dbg !2795
  call void @llvm.dbg.value(metadata i8 %cfgchanged.8, metadata !2774, metadata !DIExpression()), !dbg !2795
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2899
  br label %for.cond, !dbg !2900, !llvm.loop !2901

for.end:                                          ; preds = %for.cond
  %cfgchanged.0.lcssa = phi i8 [ %cfgchanged.0, %for.cond ], !dbg !2807
  call void @llvm.dbg.value(metadata i8 %cfgchanged.0.lcssa, metadata !2774, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %cfgchanged.0.lcssa, metadata !2774, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 %cfgchanged.0.lcssa, metadata !2774, metadata !DIExpression()), !dbg !2795
  %22 = bitcast %struct.basic_block_def** %call1 to i8*, !dbg !2903
  call void @free(i8* %22) #6, !dbg !2904
  br i1 %tobool, label %if.end172, label %if.then171, !dbg !2905

if.then171:                                       ; preds = %for.end
  call void @pointer_set_destroy(%struct.pointer_set_t* %nontrap.0) #6, !dbg !2906
  br label %if.end172, !dbg !2906

if.end172:                                        ; preds = %for.end, %if.then171
  %tobool174 = icmp ne i8 %cfgchanged.0.lcssa, 0, !dbg !2908
  %tobool177 = icmp ne i8 %do_store_elim, 0, !dbg !2910
  %or.cond4 = and i1 %tobool174, %tobool177, !dbg !2911
  br i1 %or.cond4, label %if.then178, label %if.else179, !dbg !2911

if.then178:                                       ; preds = %if.end172
  call void @gsi_commit_edge_inserts() #6, !dbg !2912
  ret i32 16416, !dbg !2914

if.else179:                                       ; preds = %if.end172
  %tobool180 = icmp eq i8 %cfgchanged.0.lcssa, 0, !dbg !2915
  %spec.select5 = select i1 %tobool180, i32 0, i32 32, !dbg !2917
  ret i32 %spec.select5, !dbg !2917
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.pointer_set_t* @get_non_trapping() unnamed_addr #5 !dbg !2918 {
entry:
  %walk_data = alloca %struct.dom_walk_data, align 8
  %0 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 0, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2955
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call, metadata !2922, metadata !DIExpression()), !dbg !2957
  %call1 = tail call %struct.htab* @htab_create(i64 128, i32 (i8*)* nonnull @name_to_bb_hash, i32 (i8*, i8*)* nonnull @name_to_bb_eq, void (i8*)* nonnull @free) #6, !dbg !2958
  store %struct.htab* %call1, %struct.htab** @seen_ssa_names, align 8, !dbg !2959
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2960
  store %struct.pointer_set_t* %call, %struct.pointer_set_t** @nontrap_set, align 8, !dbg !2961
  store i8 1, i8* %0, align 8, !dbg !2962
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !2963
  store void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* null, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !2964
  %before_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 2, !dbg !2965
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @nt_init_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %before_dom_children, align 8, !dbg !2966
  %after_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 3, !dbg !2967
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @nt_fini_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %after_dom_children, align 8, !dbg !2968
  %global_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 4, !dbg !2969
  store i8* null, i8** %global_data, align 8, !dbg !2970
  %block_local_data_size = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 6, !dbg !2971
  store i64 0, i64* %block_local_data_size, align 8, !dbg !2972
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2923, metadata !DIExpression(DW_OP_deref)), !dbg !2957
  call void @init_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2973
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2974
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2974
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2974
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2974
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2974
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2923, metadata !DIExpression(DW_OP_deref)), !dbg !2957
  call void @walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data, %struct.basic_block_def* %3) #6, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2923, metadata !DIExpression(DW_OP_deref)), !dbg !2957
  call void @fini_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2976
  %4 = load %struct.htab*, %struct.htab** @seen_ssa_names, align 8, !dbg !2977
  call void @htab_delete(%struct.htab* %4) #6, !dbg !2978
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2979
  ret %struct.pointer_set_t* %call, !dbg !2980
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2981 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2983, metadata !DIExpression()), !dbg !2984
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2985
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2985
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2985
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2985

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2985
  br label %cond.end, !dbg !2985

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2985
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2985
  %cmp = icmp eq i32 %call, 1, !dbg !2986
  %conv2 = zext i1 %cmp to i8, !dbg !2985
  ret i8 %conv2, !dbg !2987
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cond_store_replacement(%struct.basic_block_def* %middle_bb, %struct.basic_block_def* %join_bb, %struct.edge_def* %e0, %struct.edge_def* %e1, %struct.pointer_set_t* %nontrap) unnamed_addr #5 !dbg !2988 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp72 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp76 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %middle_bb, metadata !2992, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %join_bb, metadata !2993, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.edge_def* %e0, metadata !2994, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !2995, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %nontrap, metadata !2996, metadata !DIExpression()), !dbg !3006
  %call = tail call %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def* %middle_bb) #6, !dbg !3007
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2997, metadata !DIExpression()), !dbg !3006
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3008
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !3009
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !3011

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !3012
  %cmp = icmp eq i32 %call1, 6, !dbg !3013
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3014

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %call) #7, !dbg !3015
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3004, metadata !DIExpression()), !dbg !3006
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call) #7, !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2998, metadata !DIExpression()), !dbg !3006
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* nonnull %call) #7, !dbg !3017
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2999, metadata !DIExpression()), !dbg !3006
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3018
  %bf.load = load i64, i64* %1, align 8, !dbg !3018
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3018
  %cmp5 = icmp eq i64 %bf.cast1, 47, !dbg !3018
  br i1 %cmp5, label %if.end19, label %lor.lhs.false6, !dbg !3018

lor.lhs.false6:                                   ; preds = %if.end
  %cmp11 = icmp eq i64 %bf.cast1, 48, !dbg !3018
  br i1 %cmp11, label %if.end19, label %lor.lhs.false12, !dbg !3018

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 49, !dbg !3018
  br i1 %cmp17, label %if.end19, label %cleanup, !dbg !3020

if.end19:                                         ; preds = %lor.lhs.false12, %lor.lhs.false6, %if.end
  %call20 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3005, metadata !DIExpression()), !dbg !3006
  %call21 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call20) #7, !dbg !3022
  %cmp22 = icmp eq i32 %call21, 3, !dbg !3024
  br i1 %cmp22, label %lor.lhs.false23, label %cleanup, !dbg !3025

lor.lhs.false23:                                  ; preds = %if.end19
  %cmp24 = icmp eq i32 %call20, 141, !dbg !3026
  br i1 %cmp24, label %if.end28, label %land.lhs.true, !dbg !3027

land.lhs.true:                                    ; preds = %lor.lhs.false23
  %call25 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call4) #6, !dbg !3028
  %tobool26 = icmp eq i8 %call25, 0, !dbg !3028
  br i1 %tobool26, label %cleanup, label %if.end28, !dbg !3029

if.end28:                                         ; preds = %land.lhs.true, %lor.lhs.false23
  %2 = bitcast %union.tree_node* %call3 to i8*, !dbg !3030
  %call29 = tail call i32 @pointer_set_contains(%struct.pointer_set_t* %nontrap, i8* %2) #6, !dbg !3032
  %tobool30 = icmp eq i32 %call29, 0, !dbg !3032
  br i1 %tobool30, label %cleanup, label %if.end32, !dbg !3033

if.end32:                                         ; preds = %if.end28
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* nonnull %call) #6, !dbg !3034
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3035
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* nonnull %call) #6, !dbg !3035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3036
  %4 = load %union.tree_node*, %union.tree_node** @condstoretemp, align 8, !dbg !3037
  %tobool33 = icmp eq %union.tree_node* %4, null, !dbg !3037
  br i1 %tobool33, label %if.end32.if.then38_crit_edge, label %lor.lhs.false34, !dbg !3039

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  %type40.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3040
  %.pre = load %union.tree_node*, %union.tree_node** %type40.phi.trans.insert, align 8, !dbg !3042
  br label %if.then38, !dbg !3039

lor.lhs.false34:                                  ; preds = %if.end32
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3043
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3043
  %type36 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3044
  %6 = load %union.tree_node*, %union.tree_node** %type36, align 8, !dbg !3044
  %cmp37 = icmp eq %union.tree_node* %5, %6, !dbg !3045
  br i1 %cmp37, label %if.end62, label %if.then38, !dbg !3046

if.then38:                                        ; preds = %if.end32.if.then38_crit_edge, %lor.lhs.false34
  %7 = phi %union.tree_node* [ %.pre, %if.end32.if.then38_crit_edge ], [ %5, %lor.lhs.false34 ], !dbg !3042
  %type40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3042
  %call41 = call %union.tree_node* @create_tmp_var(%union.tree_node* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3047
  store %union.tree_node* %call41, %union.tree_node** @condstoretemp, align 8, !dbg !3048
  %call42 = call fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %call41) #7, !dbg !3049
  %8 = bitcast %union.tree_node** %type40 to i64**, !dbg !3050
  %9 = load i64*, i64** %8, align 8, !dbg !3050
  %bf.load46 = load i64, i64* %9, align 8, !dbg !3050
  %bf.cast484 = and i64 %bf.load46, 65535, !dbg !3052
  %cmp49 = icmp eq i64 %bf.cast484, 13, !dbg !3052
  br i1 %cmp49, label %if.then58, label %lor.lhs.false50, !dbg !3053

lor.lhs.false50:                                  ; preds = %if.then38
  %cmp57 = icmp eq i64 %bf.cast484, 14, !dbg !3054
  br i1 %cmp57, label %if.then58, label %lor.lhs.false50.if.end62_crit_edge, !dbg !3055

lor.lhs.false50.if.end62_crit_edge:               ; preds = %lor.lhs.false50
  %.pre6 = load %union.tree_node*, %union.tree_node** @condstoretemp, align 8, !dbg !3056
  br label %if.end62, !dbg !3055

if.then58:                                        ; preds = %lor.lhs.false50, %if.then38
  %10 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @condstoretemp to %struct.tree_decl_common**), align 8, !dbg !3057
  %gimple_reg_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %10, i64 0, i32 2, !dbg !3057
  %11 = bitcast i40* %gimple_reg_flag to i64*, !dbg !3057
  %bf.load59 = load i64, i64* %11, align 8, !dbg !3058
  %bf.set = or i64 %bf.load59, 134217728, !dbg !3058
  store i64 %bf.set, i64* %11, align 8, !dbg !3058
  %12 = bitcast %struct.tree_decl_common* %10 to %union.tree_node*, !dbg !3057
  br label %if.end62, !dbg !3057

if.end62:                                         ; preds = %lor.lhs.false50.if.end62_crit_edge, %lor.lhs.false34, %if.then58
  %13 = phi %union.tree_node* [ %.pre6, %lor.lhs.false50.if.end62_crit_edge ], [ %4, %lor.lhs.false34 ], [ %12, %if.then58 ], !dbg !3056
  %call63 = call zeroext i8 @add_referenced_var(%union.tree_node* %13) #6, !dbg !3059
  %call64 = call %union.tree_node* @unshare_expr(%union.tree_node* %call3) #6, !dbg !3060
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !2998, metadata !DIExpression()), !dbg !3006
  %14 = load %union.tree_node*, %union.tree_node** @condstoretemp, align 8, !dbg !3061
  %call65 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %14, %union.tree_node* %call64) #6, !dbg !3061
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call65, metadata !3002, metadata !DIExpression()), !dbg !3006
  %15 = load %union.tree_node*, %union.tree_node** @condstoretemp, align 8, !dbg !3062
  %call66 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %15, %union.gimple_statement_d* %call65) #7, !dbg !3063
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !3000, metadata !DIExpression()), !dbg !3006
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call65, %union.tree_node* %call66) #7, !dbg !3064
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call65, i32 %call2) #7, !dbg !3065
  call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call65) #6, !dbg !3066
  call void @gsi_insert_on_edge(%struct.edge_def* %e1, %union.gimple_statement_d* %call65) #6, !dbg !3067
  %16 = load %union.tree_node*, %union.tree_node** @condstoretemp, align 8, !dbg !3068
  %call67 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %16, %struct.basic_block_def* %join_bb) #6, !dbg !3069
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call67, metadata !3001, metadata !DIExpression()), !dbg !3006
  call void @add_phi_arg(%union.gimple_statement_d* %call67, %union.tree_node* %call4, %struct.edge_def* %e0, i32 %call2) #6, !dbg !3070
  call void @add_phi_arg(%union.gimple_statement_d* %call67, %union.tree_node* %call66, %struct.edge_def* %e1, i32 %call2) #6, !dbg !3071
  %call68 = call %union.tree_node* @unshare_expr(%union.tree_node* %call64) #6, !dbg !3072
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !2998, metadata !DIExpression()), !dbg !3006
  %call69 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call67) #7, !dbg !3073
  %call70 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call69) #7, !dbg !3073
  %call71 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call68, %union.tree_node* %call70) #6, !dbg !3073
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call71, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call71) #6, !dbg !3074
  %17 = bitcast %struct.gimple_stmt_iterator* %tmp72 to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8, !dbg !3075
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp72, %struct.basic_block_def* %join_bb) #7, !dbg !3075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  %call73 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3076
  %tobool74 = icmp eq i8 %call73, 0, !dbg !3076
  br i1 %tobool74, label %if.else, label %if.then75, !dbg !3078

if.then75:                                        ; preds = %if.end62
  %18 = bitcast %struct.gimple_stmt_iterator* %tmp76 to i8*, !dbg !3079
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #8, !dbg !3079
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp76, %struct.basic_block_def* %join_bb) #7, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %18, i64 24, i1 false), !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #8, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call71, i32 0) #6, !dbg !3081
  br label %cleanup, !dbg !3082

if.else:                                          ; preds = %if.end62
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call71, i32 0) #6, !dbg !3083
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end28, %if.end19, %lor.lhs.false, %entry, %if.then75, %if.else, %lor.lhs.false12
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %land.lhs.true ], [ 0, %if.end19 ], [ 0, %if.end28 ], [ 1, %if.else ], [ 1, %if.then75 ], !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3084
  ret i8 %retval.0, !dbg !3084
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3088, metadata !DIExpression()), !dbg !3089
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3090
  %0 = load i32, i32* %flags, align 8, !dbg !3090
  %and = and i32 %0, 512, !dbg !3090
  %tobool = icmp eq i32 %and, 0, !dbg !3090
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3090

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3090
  br label %cond.end, !dbg !3090

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3091
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3091
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3093
  br i1 %tobool1, label %return, label %if.end, !dbg !3094

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !3095
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !3095
  br label %return, !dbg !3096

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !3089
  ret %struct.gimple_seq_d* %retval.0, !dbg !3097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_singleton_p(%struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3102, metadata !DIExpression()), !dbg !3103
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !3104
  %cmp = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3105
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3106

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !3107
  %call2 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %seq) #7, !dbg !3108
  %cmp3 = icmp eq %struct.gimple_seq_node_d* %call1, %call2, !dbg !3109
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3110
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3111 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3116, metadata !DIExpression()), !dbg !3118
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !3119
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3120
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3121
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3122
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3123
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3124
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3125

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3126
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3126
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3127
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3128

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !3129
  br label %cond.end, !dbg !3128

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3128
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3130
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3131
  ret void, !dbg !3132
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !3133 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %index, metadata !3138, metadata !DIExpression()), !dbg !3141
  %conv = trunc i64 %index to i32, !dbg !3142
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !3139, metadata !DIExpression()), !dbg !3141
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3144
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !3145
  ret %union.tree_node* %call1, !dbg !3146
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @conditional_replacement(%struct.basic_block_def* %cond_bb, %struct.basic_block_def* %middle_bb, %struct.edge_def* %e0, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %arg0, %union.tree_node* %arg1) unnamed_addr #5 !dbg !3147 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_bb, metadata !3151, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %middle_bb, metadata !3152, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.edge_def* %e0, metadata !3153, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !3154, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3155, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0, metadata !3156, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %arg1, metadata !3157, metadata !DIExpression()), !dbg !3171
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3172
  %1 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3173
  %2 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3173
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %arg0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3174
  %3 = bitcast %union.tree_node** %type to i64**, !dbg !3174
  %4 = load i64*, i64** %3, align 8, !dbg !3174
  %bf.load = load i64, i64* %4, align 8, !dbg !3174
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3176
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !3176
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !3177

lor.lhs.false:                                    ; preds = %entry
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3178
  %5 = bitcast %union.tree_node** %type2 to i64**, !dbg !3178
  %6 = load i64*, i64** %5, align 8, !dbg !3178
  %bf.load4 = load i64, i64* %6, align 8, !dbg !3178
  %bf.cast62 = and i64 %bf.load4, 65535, !dbg !3179
  %cmp7 = icmp eq i64 %bf.cast62, 13, !dbg !3179
  br i1 %cmp7, label %cleanup, label %if.end, !dbg !3180

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @integer_zerop(%union.tree_node* %arg0) #6, !dbg !3181
  %tobool = icmp eq i32 %call, 0, !dbg !3181
  br i1 %tobool, label %lor.lhs.false10, label %land.lhs.true, !dbg !3183

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @integer_onep(%union.tree_node* %arg1) #6, !dbg !3184
  %tobool9 = icmp eq i32 %call8, 0, !dbg !3184
  br i1 %tobool9, label %lor.lhs.false10, label %if.end17, !dbg !3185

lor.lhs.false10:                                  ; preds = %land.lhs.true, %if.end
  %call11 = tail call i32 @integer_zerop(%union.tree_node* %arg1) #6, !dbg !3186
  %tobool12 = icmp eq i32 %call11, 0, !dbg !3186
  br i1 %tobool12, label %cleanup, label %land.lhs.true13, !dbg !3187

land.lhs.true13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @integer_onep(%union.tree_node* %arg0) #6, !dbg !3188
  %tobool15 = icmp eq i32 %call14, 0, !dbg !3188
  br i1 %tobool15, label %cleanup, label %if.end17, !dbg !3189

if.end17:                                         ; preds = %land.lhs.true, %land.lhs.true13
  %call18 = tail call zeroext i8 @empty_block_p(%struct.basic_block_def* %middle_bb) #7, !dbg !3190
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3190
  br i1 %tobool19, label %cleanup, label %if.end21, !dbg !3192

if.end21:                                         ; preds = %if.end17
  %call22 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %cond_bb) #6, !dbg !3193
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call22, metadata !3159, metadata !DIExpression()), !dbg !3171
  %call23 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3194
  %call24 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call23) #7, !dbg !3194
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3158, metadata !DIExpression()), !dbg !3171
  %call25 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %call22) #7, !dbg !3195
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3195
  %call26 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call22) #7, !dbg !3195
  %call27 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call22) #7, !dbg !3195
  %call28 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %call25, %union.tree_node* %7, %union.tree_node* %call26, %union.tree_node* %call27) #6, !dbg !3195
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3161, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !3163, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !3164, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %cond_bb, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !3196
  %8 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.edge_def* %8, metadata !3163, metadata !DIExpression()), !dbg !3171
  %cmp29 = icmp eq %struct.edge_def* %8, %e0, !dbg !3199
  br i1 %cmp29, label %land.lhs.true30, label %lor.lhs.false33, !dbg !3200

land.lhs.true30:                                  ; preds = %if.end21
  %call31 = call i32 @integer_zerop(%union.tree_node* %arg0) #6, !dbg !3201
  %tobool32 = icmp eq i32 %call31, 0, !dbg !3201
  br i1 %tobool32, label %lor.lhs.false33, label %if.then48, !dbg !3202

lor.lhs.false33:                                  ; preds = %land.lhs.true30, %if.end21
  %9 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.edge_def* %9, metadata !3164, metadata !DIExpression()), !dbg !3171
  %cmp34 = icmp eq %struct.edge_def* %9, %e0, !dbg !3204
  br i1 %cmp34, label %land.lhs.true35, label %lor.lhs.false38, !dbg !3205

land.lhs.true35:                                  ; preds = %lor.lhs.false33
  %call36 = call i32 @integer_onep(%union.tree_node* %arg0) #6, !dbg !3206
  %tobool37 = icmp eq i32 %call36, 0, !dbg !3206
  br i1 %tobool37, label %lor.lhs.false38, label %if.then48, !dbg !3207

lor.lhs.false38:                                  ; preds = %land.lhs.true35, %lor.lhs.false33
  %10 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3208
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !3163, metadata !DIExpression()), !dbg !3171
  %cmp39 = icmp eq %struct.edge_def* %10, %e1, !dbg !3209
  br i1 %cmp39, label %land.lhs.true40, label %lor.lhs.false43, !dbg !3210

land.lhs.true40:                                  ; preds = %lor.lhs.false38
  %call41 = call i32 @integer_zerop(%union.tree_node* %arg1) #6, !dbg !3211
  %tobool42 = icmp eq i32 %call41, 0, !dbg !3211
  br i1 %tobool42, label %lor.lhs.false43, label %if.then48, !dbg !3212

lor.lhs.false43:                                  ; preds = %land.lhs.true40, %lor.lhs.false38
  %11 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3164, metadata !DIExpression()), !dbg !3171
  %cmp44 = icmp eq %struct.edge_def* %11, %e1, !dbg !3214
  br i1 %cmp44, label %land.lhs.true45, label %if.end52, !dbg !3215

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  %call46 = call i32 @integer_onep(%union.tree_node* %arg1) #6, !dbg !3216
  %tobool47 = icmp eq i32 %call46, 0, !dbg !3216
  br i1 %tobool47, label %if.end52, label %if.then48, !dbg !3217

if.then48:                                        ; preds = %land.lhs.true30, %land.lhs.true35, %land.lhs.true40, %land.lhs.true45
  %type50 = getelementptr inbounds %union.tree_node, %union.tree_node* %call28, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3218
  %12 = load %union.tree_node*, %union.tree_node** %type50, align 8, !dbg !3218
  %call51 = call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 96, %union.tree_node* %12, %union.tree_node* %call28) #6, !dbg !3218
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !3161, metadata !DIExpression()), !dbg !3171
  br label %if.end52, !dbg !3219

if.end52:                                         ; preds = %land.lhs.true45, %if.then48, %lor.lhs.false43
  %cond.0 = phi %union.tree_node* [ %call51, %if.then48 ], [ %call28, %land.lhs.true45 ], [ %call28, %lor.lhs.false43 ], !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0, metadata !3161, metadata !DIExpression()), !dbg !3171
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8, !dbg !3220
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %call22) #6, !dbg !3220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  %call53 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %cond.0, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !3221
  call void @llvm.dbg.value(metadata %union.tree_node* %call53, metadata !3165, metadata !DIExpression()), !dbg !3171
  %type55 = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3222
  %14 = load %union.tree_node*, %union.tree_node** %type55, align 8, !dbg !3222
  %type57 = getelementptr inbounds %union.tree_node, %union.tree_node* %call53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3223
  %15 = load %union.tree_node*, %union.tree_node** %type57, align 8, !dbg !3223
  %call58 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %14, %union.tree_node* %15) #6, !dbg !3224
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3224
  br i1 %tobool59, label %if.then60, label %if.end72, !dbg !3225

if.then60:                                        ; preds = %if.end52
  %16 = load %union.tree_node*, %union.tree_node** %type55, align 8, !dbg !3226
  %call63 = call %union.tree_node* @create_tmp_var(%union.tree_node* %16, i8* null) #6, !dbg !3227
  call void @llvm.dbg.value(metadata %union.tree_node* %call63, metadata !3166, metadata !DIExpression()), !dbg !3171
  %call64 = call zeroext i8 @add_referenced_var(%union.tree_node* %call63) #6, !dbg !3228
  %call65 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 113, %union.tree_node* %call63, %union.tree_node* %call53, %union.tree_node* null) #6, !dbg !3229
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call65, metadata !3160, metadata !DIExpression()), !dbg !3171
  %call66 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call63, %union.gimple_statement_d* %call65) #7, !dbg !3230
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !3166, metadata !DIExpression()), !dbg !3171
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call65, %union.tree_node* %call66) #7, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call65, i32 1) #6, !dbg !3232
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !3165, metadata !DIExpression()), !dbg !3171
  %call67 = call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %phi, i64 0) #7, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %call67, metadata !3167, metadata !DIExpression()), !dbg !3234
  %call68 = call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %phi, i64 1) #7, !dbg !3235
  call void @llvm.dbg.value(metadata i32 %call68, metadata !3170, metadata !DIExpression()), !dbg !3234
  %cmp69 = icmp eq i32 %call67, 0, !dbg !3236
  %spec.select = select i1 %cmp69, i32 %call68, i32 %call67, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3167, metadata !DIExpression()), !dbg !3234
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call65, i32 %spec.select) #7, !dbg !3239
  br label %if.end72, !dbg !3240

if.end72:                                         ; preds = %if.end52, %if.then60
  %new_var.0 = phi %union.tree_node* [ %call53, %if.end52 ], [ %call66, %if.then60 ], !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %new_var.0, metadata !3165, metadata !DIExpression()), !dbg !3171
  call fastcc void @replace_phi_edge_with_variable(%struct.basic_block_def* %cond_bb, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %new_var.0) #7, !dbg !3241
  br label %cleanup, !dbg !3242

cleanup:                                          ; preds = %if.end17, %land.lhs.true13, %lor.lhs.false10, %entry, %lor.lhs.false, %if.end72
  %retval.0 = phi i8 [ 1, %if.end72 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true13 ], [ 0, %lor.lhs.false10 ], [ 0, %if.end17 ], !dbg !3171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3243
  ret i8 %retval.0, !dbg !3243
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @value_replacement(%struct.basic_block_def* %cond_bb, %struct.basic_block_def* %middle_bb, %struct.edge_def* %e0, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %arg0, %union.tree_node* %arg1) unnamed_addr #5 !dbg !3244 {
entry:
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_bb, metadata !3246, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %middle_bb, metadata !3247, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.edge_def* %e0, metadata !3248, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !3249, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3250, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0, metadata !3251, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %union.tree_node* %arg1, metadata !3252, metadata !DIExpression()), !dbg !3261
  %0 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !3262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3262
  %1 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !3262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3262
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %arg1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3263
  %2 = bitcast %union.tree_node** %type to i64**, !dbg !3263
  %3 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load = load i64, i64* %3, align 8, !dbg !3263
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3263
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !3263
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3263

cond.true:                                        ; preds = %entry
  %.cast = bitcast i64* %3 to %union.tree_node*, !dbg !3263
  %call = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3263
  br label %cond.end, !dbg !3263

cond.false:                                       ; preds = %entry
  %type5 = bitcast i64* %3 to %struct.tree_type*, !dbg !3263
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i64 0, i32 6, !dbg !3263
  %bf.load6 = load i32, i32* %mode, align 4, !dbg !3263
  %bf.lshr = lshr i32 %bf.load6, 16, !dbg !3263
  %bf.clear7 = and i32 %bf.lshr, 255, !dbg !3263
  br label %cond.end, !dbg !3263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %call, %cond.true ], [ %bf.clear7, %cond.false ], !dbg !3263
  %idxprom = zext i32 %cond8 to i64, !dbg !3263
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3263
  %4 = load i8, i8* %arrayidx, align 1, !dbg !3263
  %cmp9 = icmp eq i8 %4, 8, !dbg !3263
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false, !dbg !3263

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load14 = load i64, i64* %5, align 8, !dbg !3263
  %bf.cast162 = and i64 %bf.load14, 65535, !dbg !3263
  %cmp17 = icmp eq i64 %bf.cast162, 14, !dbg !3263
  br i1 %cmp17, label %cond.true19, label %cond.false23, !dbg !3263

cond.true19:                                      ; preds = %lor.lhs.false
  %.cast3 = bitcast i64* %5 to %union.tree_node*, !dbg !3263
  %call22 = tail call i32 @vector_type_mode(%union.tree_node* %.cast3) #6, !dbg !3263
  br label %cond.end31, !dbg !3263

cond.false23:                                     ; preds = %lor.lhs.false
  %type26 = bitcast i64* %5 to %struct.tree_type*, !dbg !3263
  %mode27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i64 0, i32 6, !dbg !3263
  %bf.load28 = load i32, i32* %mode27, align 4, !dbg !3263
  %bf.lshr29 = lshr i32 %bf.load28, 16, !dbg !3263
  %bf.clear30 = and i32 %bf.lshr29, 255, !dbg !3263
  br label %cond.end31, !dbg !3263

cond.end31:                                       ; preds = %cond.false23, %cond.true19
  %cond32 = phi i32 [ %call22, %cond.true19 ], [ %bf.clear30, %cond.false23 ], !dbg !3263
  %idxprom33 = zext i32 %cond32 to i64, !dbg !3263
  %arrayidx34 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom33, !dbg !3263
  %6 = load i8, i8* %arrayidx34, align 1, !dbg !3263
  %cmp36 = icmp eq i8 %6, 9, !dbg !3263
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false38, !dbg !3263

lor.lhs.false38:                                  ; preds = %cond.end31
  %7 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load42 = load i64, i64* %7, align 8, !dbg !3263
  %bf.cast444 = and i64 %bf.load42, 65535, !dbg !3263
  %cmp45 = icmp eq i64 %bf.cast444, 14, !dbg !3263
  br i1 %cmp45, label %cond.true47, label %cond.false51, !dbg !3263

cond.true47:                                      ; preds = %lor.lhs.false38
  %.cast5 = bitcast i64* %7 to %union.tree_node*, !dbg !3263
  %call50 = tail call i32 @vector_type_mode(%union.tree_node* %.cast5) #6, !dbg !3263
  br label %cond.end59, !dbg !3263

cond.false51:                                     ; preds = %lor.lhs.false38
  %type54 = bitcast i64* %7 to %struct.tree_type*, !dbg !3263
  %mode55 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type54, i64 0, i32 6, !dbg !3263
  %bf.load56 = load i32, i32* %mode55, align 4, !dbg !3263
  %bf.lshr57 = lshr i32 %bf.load56, 16, !dbg !3263
  %bf.clear58 = and i32 %bf.lshr57, 255, !dbg !3263
  br label %cond.end59, !dbg !3263

cond.end59:                                       ; preds = %cond.false51, %cond.true47
  %cond60 = phi i32 [ %call50, %cond.true47 ], [ %bf.clear58, %cond.false51 ], !dbg !3263
  %idxprom61 = zext i32 %cond60 to i64, !dbg !3263
  %arrayidx62 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom61, !dbg !3263
  %8 = load i8, i8* %arrayidx62, align 1, !dbg !3263
  %cmp64 = icmp eq i8 %8, 11, !dbg !3263
  br i1 %cmp64, label %land.lhs.true, label %lor.lhs.false66, !dbg !3263

lor.lhs.false66:                                  ; preds = %cond.end59
  %9 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load70 = load i64, i64* %9, align 8, !dbg !3263
  %bf.cast726 = and i64 %bf.load70, 65535, !dbg !3263
  %cmp73 = icmp eq i64 %bf.cast726, 14, !dbg !3263
  br i1 %cmp73, label %cond.true75, label %cond.false79, !dbg !3263

cond.true75:                                      ; preds = %lor.lhs.false66
  %.cast7 = bitcast i64* %9 to %union.tree_node*, !dbg !3263
  %call78 = tail call i32 @vector_type_mode(%union.tree_node* %.cast7) #6, !dbg !3263
  br label %cond.end87, !dbg !3263

cond.false79:                                     ; preds = %lor.lhs.false66
  %type82 = bitcast i64* %9 to %struct.tree_type*, !dbg !3263
  %mode83 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type82, i64 0, i32 6, !dbg !3263
  %bf.load84 = load i32, i32* %mode83, align 4, !dbg !3263
  %bf.lshr85 = lshr i32 %bf.load84, 16, !dbg !3263
  %bf.clear86 = and i32 %bf.lshr85, 255, !dbg !3263
  br label %cond.end87, !dbg !3263

cond.end87:                                       ; preds = %cond.false79, %cond.true75
  %cond88 = phi i32 [ %call78, %cond.true75 ], [ %bf.clear86, %cond.false79 ], !dbg !3263
  %idxprom89 = zext i32 %cond88 to i64, !dbg !3263
  %arrayidx90 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom89, !dbg !3263
  %10 = load i8, i8* %arrayidx90, align 1, !dbg !3263
  %cmp92 = icmp eq i8 %10, 17, !dbg !3263
  br i1 %cmp92, label %land.lhs.true, label %if.end, !dbg !3263

land.lhs.true:                                    ; preds = %cond.end87, %cond.end59, %cond.end31, %cond.end
  %11 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load97 = load i64, i64* %11, align 8, !dbg !3263
  %bf.cast998 = and i64 %bf.load97, 65535, !dbg !3263
  %cmp100 = icmp eq i64 %bf.cast998, 14, !dbg !3263
  br i1 %cmp100, label %cond.true102, label %cond.false106, !dbg !3263

cond.true102:                                     ; preds = %land.lhs.true
  %.cast9 = bitcast i64* %11 to %union.tree_node*, !dbg !3263
  %call105 = tail call i32 @vector_type_mode(%union.tree_node* %.cast9) #6, !dbg !3263
  br label %cond.end114, !dbg !3263

cond.false106:                                    ; preds = %land.lhs.true
  %type109 = bitcast i64* %11 to %struct.tree_type*, !dbg !3263
  %mode110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type109, i64 0, i32 6, !dbg !3263
  %bf.load111 = load i32, i32* %mode110, align 4, !dbg !3263
  %bf.lshr112 = lshr i32 %bf.load111, 16, !dbg !3263
  %bf.clear113 = and i32 %bf.lshr112, 255, !dbg !3263
  br label %cond.end114, !dbg !3263

cond.end114:                                      ; preds = %cond.false106, %cond.true102
  %cond115 = phi i32 [ %call105, %cond.true102 ], [ %bf.clear113, %cond.false106 ], !dbg !3263
  %idxprom116 = zext i32 %cond115 to i64, !dbg !3263
  %arrayidx117 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom116, !dbg !3263
  %12 = load i8, i8* %arrayidx117, align 1, !dbg !3263
  %cmp119 = icmp eq i8 %12, 8, !dbg !3263
  br i1 %cmp119, label %cond.true149, label %lor.lhs.false121, !dbg !3263

lor.lhs.false121:                                 ; preds = %cond.end114
  %13 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load125 = load i64, i64* %13, align 8, !dbg !3263
  %bf.cast12710 = and i64 %bf.load125, 65535, !dbg !3263
  %cmp128 = icmp eq i64 %bf.cast12710, 14, !dbg !3263
  br i1 %cmp128, label %cond.true130, label %cond.false134, !dbg !3263

cond.true130:                                     ; preds = %lor.lhs.false121
  %.cast11 = bitcast i64* %13 to %union.tree_node*, !dbg !3263
  %call133 = tail call i32 @vector_type_mode(%union.tree_node* %.cast11) #6, !dbg !3263
  br label %cond.end142, !dbg !3263

cond.false134:                                    ; preds = %lor.lhs.false121
  %type137 = bitcast i64* %13 to %struct.tree_type*, !dbg !3263
  %mode138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type137, i64 0, i32 6, !dbg !3263
  %bf.load139 = load i32, i32* %mode138, align 4, !dbg !3263
  %bf.lshr140 = lshr i32 %bf.load139, 16, !dbg !3263
  %bf.clear141 = and i32 %bf.lshr140, 255, !dbg !3263
  br label %cond.end142, !dbg !3263

cond.end142:                                      ; preds = %cond.false134, %cond.true130
  %cond143 = phi i32 [ %call133, %cond.true130 ], [ %bf.clear141, %cond.false134 ], !dbg !3263
  %idxprom144 = zext i32 %cond143 to i64, !dbg !3263
  %arrayidx145 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom144, !dbg !3263
  %14 = load i8, i8* %arrayidx145, align 1, !dbg !3263
  %cmp147 = icmp eq i8 %14, 9, !dbg !3263
  br i1 %cmp147, label %cond.true149, label %cond.false172, !dbg !3263

cond.true149:                                     ; preds = %cond.end142, %cond.end114
  %15 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load153 = load i64, i64* %15, align 8, !dbg !3263
  %bf.cast15528 = and i64 %bf.load153, 65535, !dbg !3263
  %cmp156 = icmp eq i64 %bf.cast15528, 14, !dbg !3263
  br i1 %cmp156, label %cond.true158, label %cond.false162, !dbg !3263

cond.true158:                                     ; preds = %cond.true149
  %.cast29 = bitcast i64* %15 to %union.tree_node*, !dbg !3263
  %call161 = tail call i32 @vector_type_mode(%union.tree_node* %.cast29) #6, !dbg !3263
  br label %cond.end198, !dbg !3263

cond.false162:                                    ; preds = %cond.true149
  %type165 = bitcast i64* %15 to %struct.tree_type*, !dbg !3263
  %mode166 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type165, i64 0, i32 6, !dbg !3263
  %bf.load167 = load i32, i32* %mode166, align 4, !dbg !3263
  %bf.lshr168 = lshr i32 %bf.load167, 16, !dbg !3263
  %bf.clear169 = and i32 %bf.lshr168, 255, !dbg !3263
  br label %cond.end198, !dbg !3263

cond.false172:                                    ; preds = %cond.end142
  %16 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load176 = load i64, i64* %16, align 8, !dbg !3263
  %bf.cast17812 = and i64 %bf.load176, 65535, !dbg !3263
  %cmp179 = icmp eq i64 %bf.cast17812, 14, !dbg !3263
  br i1 %cmp179, label %cond.true181, label %cond.false185, !dbg !3263

cond.true181:                                     ; preds = %cond.false172
  %.cast13 = bitcast i64* %16 to %union.tree_node*, !dbg !3263
  %call184 = tail call i32 @vector_type_mode(%union.tree_node* %.cast13) #6, !dbg !3263
  br label %cond.end193, !dbg !3263

cond.false185:                                    ; preds = %cond.false172
  %type188 = bitcast i64* %16 to %struct.tree_type*, !dbg !3263
  %mode189 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type188, i64 0, i32 6, !dbg !3263
  %bf.load190 = load i32, i32* %mode189, align 4, !dbg !3263
  %bf.lshr191 = lshr i32 %bf.load190, 16, !dbg !3263
  %bf.clear192 = and i32 %bf.lshr191, 255, !dbg !3263
  br label %cond.end193, !dbg !3263

cond.end193:                                      ; preds = %cond.false185, %cond.true181
  %cond194 = phi i32 [ %call184, %cond.true181 ], [ %bf.clear192, %cond.false185 ], !dbg !3263
  %idxprom195 = zext i32 %cond194 to i64, !dbg !3263
  %arrayidx196 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom195, !dbg !3263
  %17 = load i8, i8* %arrayidx196, align 1, !dbg !3263
  %conv197 = zext i8 %17 to i32, !dbg !3263
  br label %cond.end198, !dbg !3263

cond.end198:                                      ; preds = %cond.true158, %cond.false162, %cond.end193
  %cond199 = phi i32 [ %conv197, %cond.end193 ], [ %call161, %cond.true158 ], [ %bf.clear169, %cond.false162 ], !dbg !3263
  %idxprom200 = zext i32 %cond199 to i64, !dbg !3263
  %arrayidx201 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom200, !dbg !3263
  %18 = load i8, i8* %arrayidx201, align 1, !dbg !3263
  %cmp203 = icmp eq i8 %18, 9, !dbg !3263
  %19 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load209 = load i64, i64* %19, align 8, !dbg !3263
  %bf.cast21114 = and i64 %bf.load209, 65535, !dbg !3263
  %cmp212 = icmp eq i64 %bf.cast21114, 14, !dbg !3263
  %.cast15 = bitcast i64* %19 to %union.tree_node*, !dbg !3263
  br i1 %cmp203, label %cond.true205, label %cond.false312, !dbg !3263

cond.true205:                                     ; preds = %cond.end198
  br i1 %cmp212, label %cond.true214, label %cond.false218, !dbg !3263

cond.true214:                                     ; preds = %cond.true205
  %call217 = tail call i32 @vector_type_mode(%union.tree_node* %.cast15) #6, !dbg !3263
  br label %cond.end226, !dbg !3263

cond.false218:                                    ; preds = %cond.true205
  %type221 = bitcast i64* %19 to %struct.tree_type*, !dbg !3263
  %mode222 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type221, i64 0, i32 6, !dbg !3263
  %bf.load223 = load i32, i32* %mode222, align 4, !dbg !3263
  %bf.lshr224 = lshr i32 %bf.load223, 16, !dbg !3263
  %bf.clear225 = and i32 %bf.lshr224, 255, !dbg !3263
  br label %cond.end226, !dbg !3263

cond.end226:                                      ; preds = %cond.false218, %cond.true214
  %cond227 = phi i32 [ %call217, %cond.true214 ], [ %bf.clear225, %cond.false218 ], !dbg !3263
  %idxprom228 = zext i32 %cond227 to i64, !dbg !3263
  %arrayidx229 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom228, !dbg !3263
  %20 = load i8, i8* %arrayidx229, align 1, !dbg !3263
  %cmp231 = icmp eq i8 %20, 8, !dbg !3263
  br i1 %cmp231, label %cond.true261, label %lor.lhs.false233, !dbg !3263

lor.lhs.false233:                                 ; preds = %cond.end226
  %21 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load237 = load i64, i64* %21, align 8, !dbg !3263
  %bf.cast23922 = and i64 %bf.load237, 65535, !dbg !3263
  %cmp240 = icmp eq i64 %bf.cast23922, 14, !dbg !3263
  br i1 %cmp240, label %cond.true242, label %cond.false246, !dbg !3263

cond.true242:                                     ; preds = %lor.lhs.false233
  %.cast23 = bitcast i64* %21 to %union.tree_node*, !dbg !3263
  %call245 = tail call i32 @vector_type_mode(%union.tree_node* %.cast23) #6, !dbg !3263
  br label %cond.end254, !dbg !3263

cond.false246:                                    ; preds = %lor.lhs.false233
  %type249 = bitcast i64* %21 to %struct.tree_type*, !dbg !3263
  %mode250 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type249, i64 0, i32 6, !dbg !3263
  %bf.load251 = load i32, i32* %mode250, align 4, !dbg !3263
  %bf.lshr252 = lshr i32 %bf.load251, 16, !dbg !3263
  %bf.clear253 = and i32 %bf.lshr252, 255, !dbg !3263
  br label %cond.end254, !dbg !3263

cond.end254:                                      ; preds = %cond.false246, %cond.true242
  %cond255 = phi i32 [ %call245, %cond.true242 ], [ %bf.clear253, %cond.false246 ], !dbg !3263
  %idxprom256 = zext i32 %cond255 to i64, !dbg !3263
  %arrayidx257 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom256, !dbg !3263
  %22 = load i8, i8* %arrayidx257, align 1, !dbg !3263
  %cmp259 = icmp eq i8 %22, 9, !dbg !3263
  br i1 %cmp259, label %cond.true261, label %cond.false284, !dbg !3263

cond.true261:                                     ; preds = %cond.end254, %cond.end226
  %23 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load265 = load i64, i64* %23, align 8, !dbg !3263
  %bf.cast26726 = and i64 %bf.load265, 65535, !dbg !3263
  %cmp268 = icmp eq i64 %bf.cast26726, 14, !dbg !3263
  br i1 %cmp268, label %cond.true270, label %cond.false274, !dbg !3263

cond.true270:                                     ; preds = %cond.true261
  %.cast27 = bitcast i64* %23 to %union.tree_node*, !dbg !3263
  %call273 = tail call i32 @vector_type_mode(%union.tree_node* %.cast27) #6, !dbg !3263
  br label %cond.end310, !dbg !3263

cond.false274:                                    ; preds = %cond.true261
  %type277 = bitcast i64* %23 to %struct.tree_type*, !dbg !3263
  %mode278 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type277, i64 0, i32 6, !dbg !3263
  %bf.load279 = load i32, i32* %mode278, align 4, !dbg !3263
  %bf.lshr280 = lshr i32 %bf.load279, 16, !dbg !3263
  %bf.clear281 = and i32 %bf.lshr280, 255, !dbg !3263
  br label %cond.end310, !dbg !3263

cond.false284:                                    ; preds = %cond.end254
  %24 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load288 = load i64, i64* %24, align 8, !dbg !3263
  %bf.cast29024 = and i64 %bf.load288, 65535, !dbg !3263
  %cmp291 = icmp eq i64 %bf.cast29024, 14, !dbg !3263
  br i1 %cmp291, label %cond.true293, label %cond.false297, !dbg !3263

cond.true293:                                     ; preds = %cond.false284
  %.cast25 = bitcast i64* %24 to %union.tree_node*, !dbg !3263
  %call296 = tail call i32 @vector_type_mode(%union.tree_node* %.cast25) #6, !dbg !3263
  br label %cond.end305, !dbg !3263

cond.false297:                                    ; preds = %cond.false284
  %type300 = bitcast i64* %24 to %struct.tree_type*, !dbg !3263
  %mode301 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type300, i64 0, i32 6, !dbg !3263
  %bf.load302 = load i32, i32* %mode301, align 4, !dbg !3263
  %bf.lshr303 = lshr i32 %bf.load302, 16, !dbg !3263
  %bf.clear304 = and i32 %bf.lshr303, 255, !dbg !3263
  br label %cond.end305, !dbg !3263

cond.end305:                                      ; preds = %cond.false297, %cond.true293
  %cond306 = phi i32 [ %call296, %cond.true293 ], [ %bf.clear304, %cond.false297 ], !dbg !3263
  %idxprom307 = zext i32 %cond306 to i64, !dbg !3263
  %arrayidx308 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom307, !dbg !3263
  %25 = load i8, i8* %arrayidx308, align 1, !dbg !3263
  %conv309 = zext i8 %25 to i32, !dbg !3263
  br label %cond.end310, !dbg !3263

cond.end310:                                      ; preds = %cond.true270, %cond.false274, %cond.end305
  %cond311 = phi i32 [ %conv309, %cond.end305 ], [ %call273, %cond.true270 ], [ %bf.clear281, %cond.false274 ], !dbg !3263
  br label %cond.end420, !dbg !3263

cond.false312:                                    ; preds = %cond.end198
  br i1 %cmp212, label %cond.true321, label %cond.false325, !dbg !3263

cond.true321:                                     ; preds = %cond.false312
  %call324 = tail call i32 @vector_type_mode(%union.tree_node* %.cast15) #6, !dbg !3263
  br label %cond.end333, !dbg !3263

cond.false325:                                    ; preds = %cond.false312
  %type328 = bitcast i64* %19 to %struct.tree_type*, !dbg !3263
  %mode329 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type328, i64 0, i32 6, !dbg !3263
  %bf.load330 = load i32, i32* %mode329, align 4, !dbg !3263
  %bf.lshr331 = lshr i32 %bf.load330, 16, !dbg !3263
  %bf.clear332 = and i32 %bf.lshr331, 255, !dbg !3263
  br label %cond.end333, !dbg !3263

cond.end333:                                      ; preds = %cond.false325, %cond.true321
  %cond334 = phi i32 [ %call324, %cond.true321 ], [ %bf.clear332, %cond.false325 ], !dbg !3263
  %idxprom335 = zext i32 %cond334 to i64, !dbg !3263
  %arrayidx336 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom335, !dbg !3263
  %26 = load i8, i8* %arrayidx336, align 1, !dbg !3263
  %cmp338 = icmp eq i8 %26, 8, !dbg !3263
  br i1 %cmp338, label %cond.true368, label %lor.lhs.false340, !dbg !3263

lor.lhs.false340:                                 ; preds = %cond.end333
  %27 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load344 = load i64, i64* %27, align 8, !dbg !3263
  %bf.cast34616 = and i64 %bf.load344, 65535, !dbg !3263
  %cmp347 = icmp eq i64 %bf.cast34616, 14, !dbg !3263
  br i1 %cmp347, label %cond.true349, label %cond.false353, !dbg !3263

cond.true349:                                     ; preds = %lor.lhs.false340
  %.cast17 = bitcast i64* %27 to %union.tree_node*, !dbg !3263
  %call352 = tail call i32 @vector_type_mode(%union.tree_node* %.cast17) #6, !dbg !3263
  br label %cond.end361, !dbg !3263

cond.false353:                                    ; preds = %lor.lhs.false340
  %type356 = bitcast i64* %27 to %struct.tree_type*, !dbg !3263
  %mode357 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type356, i64 0, i32 6, !dbg !3263
  %bf.load358 = load i32, i32* %mode357, align 4, !dbg !3263
  %bf.lshr359 = lshr i32 %bf.load358, 16, !dbg !3263
  %bf.clear360 = and i32 %bf.lshr359, 255, !dbg !3263
  br label %cond.end361, !dbg !3263

cond.end361:                                      ; preds = %cond.false353, %cond.true349
  %cond362 = phi i32 [ %call352, %cond.true349 ], [ %bf.clear360, %cond.false353 ], !dbg !3263
  %idxprom363 = zext i32 %cond362 to i64, !dbg !3263
  %arrayidx364 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom363, !dbg !3263
  %28 = load i8, i8* %arrayidx364, align 1, !dbg !3263
  %cmp366 = icmp eq i8 %28, 9, !dbg !3263
  br i1 %cmp366, label %cond.true368, label %cond.false391, !dbg !3263

cond.true368:                                     ; preds = %cond.end361, %cond.end333
  %29 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load372 = load i64, i64* %29, align 8, !dbg !3263
  %bf.cast37420 = and i64 %bf.load372, 65535, !dbg !3263
  %cmp375 = icmp eq i64 %bf.cast37420, 14, !dbg !3263
  br i1 %cmp375, label %cond.true377, label %cond.false381, !dbg !3263

cond.true377:                                     ; preds = %cond.true368
  %.cast21 = bitcast i64* %29 to %union.tree_node*, !dbg !3263
  %call380 = tail call i32 @vector_type_mode(%union.tree_node* %.cast21) #6, !dbg !3263
  br label %cond.end417, !dbg !3263

cond.false381:                                    ; preds = %cond.true368
  %type384 = bitcast i64* %29 to %struct.tree_type*, !dbg !3263
  %mode385 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type384, i64 0, i32 6, !dbg !3263
  %bf.load386 = load i32, i32* %mode385, align 4, !dbg !3263
  %bf.lshr387 = lshr i32 %bf.load386, 16, !dbg !3263
  %bf.clear388 = and i32 %bf.lshr387, 255, !dbg !3263
  br label %cond.end417, !dbg !3263

cond.false391:                                    ; preds = %cond.end361
  %30 = load i64*, i64** %2, align 8, !dbg !3263
  %bf.load395 = load i64, i64* %30, align 8, !dbg !3263
  %bf.cast39718 = and i64 %bf.load395, 65535, !dbg !3263
  %cmp398 = icmp eq i64 %bf.cast39718, 14, !dbg !3263
  br i1 %cmp398, label %cond.true400, label %cond.false404, !dbg !3263

cond.true400:                                     ; preds = %cond.false391
  %.cast19 = bitcast i64* %30 to %union.tree_node*, !dbg !3263
  %call403 = tail call i32 @vector_type_mode(%union.tree_node* %.cast19) #6, !dbg !3263
  br label %cond.end412, !dbg !3263

cond.false404:                                    ; preds = %cond.false391
  %type407 = bitcast i64* %30 to %struct.tree_type*, !dbg !3263
  %mode408 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type407, i64 0, i32 6, !dbg !3263
  %bf.load409 = load i32, i32* %mode408, align 4, !dbg !3263
  %bf.lshr410 = lshr i32 %bf.load409, 16, !dbg !3263
  %bf.clear411 = and i32 %bf.lshr410, 255, !dbg !3263
  br label %cond.end412, !dbg !3263

cond.end412:                                      ; preds = %cond.false404, %cond.true400
  %cond413 = phi i32 [ %call403, %cond.true400 ], [ %bf.clear411, %cond.false404 ], !dbg !3263
  %idxprom414 = zext i32 %cond413 to i64, !dbg !3263
  %arrayidx415 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom414, !dbg !3263
  %31 = load i8, i8* %arrayidx415, align 1, !dbg !3263
  %conv416 = zext i8 %31 to i32, !dbg !3263
  br label %cond.end417, !dbg !3263

cond.end417:                                      ; preds = %cond.true377, %cond.false381, %cond.end412
  %cond418 = phi i32 [ %conv416, %cond.end412 ], [ %call380, %cond.true377 ], [ %bf.clear388, %cond.false381 ], !dbg !3263
  br label %cond.end420, !dbg !3263

cond.end420:                                      ; preds = %cond.end417, %cond.end310
  %cond421.in = phi i32 [ %cond311, %cond.end310 ], [ %cond418, %cond.end417 ]
  %cond421 = add i32 %cond421.in, -38, !dbg !3263
  %idxprom422 = zext i32 %cond421 to i64, !dbg !3263
  %arrayidx423 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom422, !dbg !3263
  %32 = load %struct.real_format*, %struct.real_format** %arrayidx423, align 8, !dbg !3263
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %32, i64 0, i32 14, !dbg !3263
  %33 = load i8, i8* %has_signed_zero, align 1, !dbg !3263
  %tobool = icmp ne i8 %33, 0, !dbg !3263
  %34 = load i32, i32* @flag_signed_zeros, align 4, !dbg !3263
  %tobool426 = icmp ne i32 %34, 0, !dbg !3263
  %or.cond = and i1 %tobool, %tobool426, !dbg !3263
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3263

if.end:                                           ; preds = %cond.end420, %cond.end87
  %call427 = tail call zeroext i8 @empty_block_p(%struct.basic_block_def* %middle_bb) #7, !dbg !3265
  %tobool428 = icmp eq i8 %call427, 0, !dbg !3265
  br i1 %tobool428, label %cleanup, label %if.end430, !dbg !3267

if.end430:                                        ; preds = %if.end
  %call431 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %cond_bb) #6, !dbg !3268
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call431, metadata !3253, metadata !DIExpression()), !dbg !3261
  %call432 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %call431) #7, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %call432, metadata !3256, metadata !DIExpression()), !dbg !3261
  %call432.off = add i32 %call432, -101, !dbg !3270
  %switch = icmp ult i32 %call432.off, 2, !dbg !3270
  br i1 %switch, label %if.end439, label %cleanup, !dbg !3270

if.end439:                                        ; preds = %if.end430
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !3254, metadata !DIExpression(DW_OP_deref)), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !3255, metadata !DIExpression(DW_OP_deref)), !dbg !3261
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %cond_bb, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !3272
  %call440 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call431) #7, !dbg !3273
  %call441 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg0, %union.tree_node* %call440) #6, !dbg !3274
  %tobool442 = icmp eq i32 %call441, 0, !dbg !3274
  br i1 %tobool442, label %lor.lhs.false447, label %land.lhs.true443, !dbg !3275

land.lhs.true443:                                 ; preds = %if.end439
  %call444 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call431) #7, !dbg !3276
  %call445 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg1, %union.tree_node* %call444) #6, !dbg !3277
  %tobool446 = icmp eq i32 %call445, 0, !dbg !3277
  br i1 %tobool446, label %lor.lhs.false447, label %if.then455, !dbg !3278

lor.lhs.false447:                                 ; preds = %land.lhs.true443, %if.end439
  %call448 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call431) #7, !dbg !3279
  %call449 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg1, %union.tree_node* %call448) #6, !dbg !3280
  %tobool450 = icmp eq i32 %call449, 0, !dbg !3280
  br i1 %tobool450, label %cleanup, label %land.lhs.true451, !dbg !3281

land.lhs.true451:                                 ; preds = %lor.lhs.false447
  %call452 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call431) #7, !dbg !3282
  %call453 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg0, %union.tree_node* %call452) #6, !dbg !3283
  %tobool454 = icmp eq i32 %call453, 0, !dbg !3283
  br i1 %tobool454, label %cleanup, label %if.then455, !dbg !3284

if.then455:                                       ; preds = %land.lhs.true443, %land.lhs.true451
  %cmp456 = icmp eq i32 %call432, 102, !dbg !3285
  %35 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.edge_def* %35, metadata !3254, metadata !DIExpression()), !dbg !3261
  %36 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !3255, metadata !DIExpression()), !dbg !3261
  %cond461 = select i1 %cmp456, %struct.edge_def* %35, %struct.edge_def* %36, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond461, metadata !3257, metadata !DIExpression()), !dbg !3287
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond461, i64 0, i32 1, !dbg !3288
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3288
  %cmp462 = icmp eq %struct.basic_block_def* %37, %middle_bb, !dbg !3290
  br i1 %cmp462, label %if.then464, label %if.end467, !dbg !3291

if.then464:                                       ; preds = %if.then455
  %call466 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %middle_bb) #7, !dbg !3292
  call void @llvm.dbg.value(metadata %struct.edge_def* %call466, metadata !3257, metadata !DIExpression()), !dbg !3287
  br label %if.end467, !dbg !3293

if.end467:                                        ; preds = %if.then464, %if.then455
  %e.0 = phi %struct.edge_def* [ %call466, %if.then464 ], [ %cond461, %if.then455 ], !dbg !3287
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !3257, metadata !DIExpression()), !dbg !3287
  %cmp468 = icmp eq %struct.edge_def* %e.0, %e0, !dbg !3294
  %arg0.arg1 = select i1 %cmp468, %union.tree_node* %arg0, %union.tree_node* %arg1
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0.arg1, metadata !3260, metadata !DIExpression()), !dbg !3287
  call fastcc void @replace_phi_edge_with_variable(%struct.basic_block_def* %cond_bb, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %arg0.arg1) #7, !dbg !3296
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true451, %lor.lhs.false447, %if.end, %if.end430, %cond.end420, %if.end467
  %retval.0 = phi i8 [ 1, %if.end467 ], [ 0, %cond.end420 ], [ 0, %if.end ], [ 0, %if.end430 ], [ 0, %land.lhs.true451 ], [ 0, %lor.lhs.false447 ], !dbg !3261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3297
  ret i8 %retval.0, !dbg !3297
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @abs_replacement(%struct.basic_block_def* %cond_bb, %struct.basic_block_def* %middle_bb, %struct.edge_def* %e0, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %arg0, %union.tree_node* %arg1) unnamed_addr #5 !dbg !3298 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  %tmp554 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_bb, metadata !3300, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %middle_bb, metadata !3301, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.edge_def* %e0, metadata !3302, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !3303, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3304, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0, metadata !3305, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %union.tree_node* %arg1, metadata !3306, metadata !DIExpression()), !dbg !3322
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3323
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3323
  %1 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3324
  %2 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3324
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %arg1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3325
  %3 = bitcast %union.tree_node** %type to i64**, !dbg !3325
  %4 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load = load i64, i64* %4, align 8, !dbg !3325
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3325
  %cmp = icmp eq i64 %bf.cast5, 14, !dbg !3325
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3325

cond.true:                                        ; preds = %entry
  %.cast = bitcast i64* %4 to %union.tree_node*, !dbg !3325
  %call = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3325
  br label %cond.end, !dbg !3325

cond.false:                                       ; preds = %entry
  %type5 = bitcast i64* %4 to %struct.tree_type*, !dbg !3325
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i64 0, i32 6, !dbg !3325
  %bf.load6 = load i32, i32* %mode, align 4, !dbg !3325
  %bf.lshr = lshr i32 %bf.load6, 16, !dbg !3325
  %bf.clear7 = and i32 %bf.lshr, 255, !dbg !3325
  br label %cond.end, !dbg !3325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %call, %cond.true ], [ %bf.clear7, %cond.false ], !dbg !3325
  %idxprom = zext i32 %cond8 to i64, !dbg !3325
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3325
  %5 = load i8, i8* %arrayidx, align 1, !dbg !3325
  %cmp9 = icmp eq i8 %5, 8, !dbg !3325
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false, !dbg !3325

lor.lhs.false:                                    ; preds = %cond.end
  %6 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load14 = load i64, i64* %6, align 8, !dbg !3325
  %bf.cast166 = and i64 %bf.load14, 65535, !dbg !3325
  %cmp17 = icmp eq i64 %bf.cast166, 14, !dbg !3325
  br i1 %cmp17, label %cond.true19, label %cond.false23, !dbg !3325

cond.true19:                                      ; preds = %lor.lhs.false
  %.cast7 = bitcast i64* %6 to %union.tree_node*, !dbg !3325
  %call22 = tail call i32 @vector_type_mode(%union.tree_node* %.cast7) #6, !dbg !3325
  br label %cond.end31, !dbg !3325

cond.false23:                                     ; preds = %lor.lhs.false
  %type26 = bitcast i64* %6 to %struct.tree_type*, !dbg !3325
  %mode27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i64 0, i32 6, !dbg !3325
  %bf.load28 = load i32, i32* %mode27, align 4, !dbg !3325
  %bf.lshr29 = lshr i32 %bf.load28, 16, !dbg !3325
  %bf.clear30 = and i32 %bf.lshr29, 255, !dbg !3325
  br label %cond.end31, !dbg !3325

cond.end31:                                       ; preds = %cond.false23, %cond.true19
  %cond32 = phi i32 [ %call22, %cond.true19 ], [ %bf.clear30, %cond.false23 ], !dbg !3325
  %idxprom33 = zext i32 %cond32 to i64, !dbg !3325
  %arrayidx34 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom33, !dbg !3325
  %7 = load i8, i8* %arrayidx34, align 1, !dbg !3325
  %cmp36 = icmp eq i8 %7, 9, !dbg !3325
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false38, !dbg !3325

lor.lhs.false38:                                  ; preds = %cond.end31
  %8 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load42 = load i64, i64* %8, align 8, !dbg !3325
  %bf.cast448 = and i64 %bf.load42, 65535, !dbg !3325
  %cmp45 = icmp eq i64 %bf.cast448, 14, !dbg !3325
  br i1 %cmp45, label %cond.true47, label %cond.false51, !dbg !3325

cond.true47:                                      ; preds = %lor.lhs.false38
  %.cast9 = bitcast i64* %8 to %union.tree_node*, !dbg !3325
  %call50 = tail call i32 @vector_type_mode(%union.tree_node* %.cast9) #6, !dbg !3325
  br label %cond.end59, !dbg !3325

cond.false51:                                     ; preds = %lor.lhs.false38
  %type54 = bitcast i64* %8 to %struct.tree_type*, !dbg !3325
  %mode55 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type54, i64 0, i32 6, !dbg !3325
  %bf.load56 = load i32, i32* %mode55, align 4, !dbg !3325
  %bf.lshr57 = lshr i32 %bf.load56, 16, !dbg !3325
  %bf.clear58 = and i32 %bf.lshr57, 255, !dbg !3325
  br label %cond.end59, !dbg !3325

cond.end59:                                       ; preds = %cond.false51, %cond.true47
  %cond60 = phi i32 [ %call50, %cond.true47 ], [ %bf.clear58, %cond.false51 ], !dbg !3325
  %idxprom61 = zext i32 %cond60 to i64, !dbg !3325
  %arrayidx62 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom61, !dbg !3325
  %9 = load i8, i8* %arrayidx62, align 1, !dbg !3325
  %cmp64 = icmp eq i8 %9, 11, !dbg !3325
  br i1 %cmp64, label %land.lhs.true, label %lor.lhs.false66, !dbg !3325

lor.lhs.false66:                                  ; preds = %cond.end59
  %10 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load70 = load i64, i64* %10, align 8, !dbg !3325
  %bf.cast7210 = and i64 %bf.load70, 65535, !dbg !3325
  %cmp73 = icmp eq i64 %bf.cast7210, 14, !dbg !3325
  br i1 %cmp73, label %cond.true75, label %cond.false79, !dbg !3325

cond.true75:                                      ; preds = %lor.lhs.false66
  %.cast11 = bitcast i64* %10 to %union.tree_node*, !dbg !3325
  %call78 = tail call i32 @vector_type_mode(%union.tree_node* %.cast11) #6, !dbg !3325
  br label %cond.end87, !dbg !3325

cond.false79:                                     ; preds = %lor.lhs.false66
  %type82 = bitcast i64* %10 to %struct.tree_type*, !dbg !3325
  %mode83 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type82, i64 0, i32 6, !dbg !3325
  %bf.load84 = load i32, i32* %mode83, align 4, !dbg !3325
  %bf.lshr85 = lshr i32 %bf.load84, 16, !dbg !3325
  %bf.clear86 = and i32 %bf.lshr85, 255, !dbg !3325
  br label %cond.end87, !dbg !3325

cond.end87:                                       ; preds = %cond.false79, %cond.true75
  %cond88 = phi i32 [ %call78, %cond.true75 ], [ %bf.clear86, %cond.false79 ], !dbg !3325
  %idxprom89 = zext i32 %cond88 to i64, !dbg !3325
  %arrayidx90 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom89, !dbg !3325
  %11 = load i8, i8* %arrayidx90, align 1, !dbg !3325
  %cmp92 = icmp eq i8 %11, 17, !dbg !3325
  br i1 %cmp92, label %land.lhs.true, label %if.end, !dbg !3325

land.lhs.true:                                    ; preds = %cond.end87, %cond.end59, %cond.end31, %cond.end
  %12 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load97 = load i64, i64* %12, align 8, !dbg !3325
  %bf.cast9916 = and i64 %bf.load97, 65535, !dbg !3325
  %cmp100 = icmp eq i64 %bf.cast9916, 14, !dbg !3325
  br i1 %cmp100, label %cond.true102, label %cond.false106, !dbg !3325

cond.true102:                                     ; preds = %land.lhs.true
  %.cast17 = bitcast i64* %12 to %union.tree_node*, !dbg !3325
  %call105 = tail call i32 @vector_type_mode(%union.tree_node* %.cast17) #6, !dbg !3325
  br label %cond.end114, !dbg !3325

cond.false106:                                    ; preds = %land.lhs.true
  %type109 = bitcast i64* %12 to %struct.tree_type*, !dbg !3325
  %mode110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type109, i64 0, i32 6, !dbg !3325
  %bf.load111 = load i32, i32* %mode110, align 4, !dbg !3325
  %bf.lshr112 = lshr i32 %bf.load111, 16, !dbg !3325
  %bf.clear113 = and i32 %bf.lshr112, 255, !dbg !3325
  br label %cond.end114, !dbg !3325

cond.end114:                                      ; preds = %cond.false106, %cond.true102
  %cond115 = phi i32 [ %call105, %cond.true102 ], [ %bf.clear113, %cond.false106 ], !dbg !3325
  %idxprom116 = zext i32 %cond115 to i64, !dbg !3325
  %arrayidx117 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom116, !dbg !3325
  %13 = load i8, i8* %arrayidx117, align 1, !dbg !3325
  %cmp119 = icmp eq i8 %13, 8, !dbg !3325
  br i1 %cmp119, label %cond.true149, label %lor.lhs.false121, !dbg !3325

lor.lhs.false121:                                 ; preds = %cond.end114
  %14 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load125 = load i64, i64* %14, align 8, !dbg !3325
  %bf.cast12718 = and i64 %bf.load125, 65535, !dbg !3325
  %cmp128 = icmp eq i64 %bf.cast12718, 14, !dbg !3325
  br i1 %cmp128, label %cond.true130, label %cond.false134, !dbg !3325

cond.true130:                                     ; preds = %lor.lhs.false121
  %.cast19 = bitcast i64* %14 to %union.tree_node*, !dbg !3325
  %call133 = tail call i32 @vector_type_mode(%union.tree_node* %.cast19) #6, !dbg !3325
  br label %cond.end142, !dbg !3325

cond.false134:                                    ; preds = %lor.lhs.false121
  %type137 = bitcast i64* %14 to %struct.tree_type*, !dbg !3325
  %mode138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type137, i64 0, i32 6, !dbg !3325
  %bf.load139 = load i32, i32* %mode138, align 4, !dbg !3325
  %bf.lshr140 = lshr i32 %bf.load139, 16, !dbg !3325
  %bf.clear141 = and i32 %bf.lshr140, 255, !dbg !3325
  br label %cond.end142, !dbg !3325

cond.end142:                                      ; preds = %cond.false134, %cond.true130
  %cond143 = phi i32 [ %call133, %cond.true130 ], [ %bf.clear141, %cond.false134 ], !dbg !3325
  %idxprom144 = zext i32 %cond143 to i64, !dbg !3325
  %arrayidx145 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom144, !dbg !3325
  %15 = load i8, i8* %arrayidx145, align 1, !dbg !3325
  %cmp147 = icmp eq i8 %15, 9, !dbg !3325
  br i1 %cmp147, label %cond.true149, label %cond.false172, !dbg !3325

cond.true149:                                     ; preds = %cond.end142, %cond.end114
  %16 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load153 = load i64, i64* %16, align 8, !dbg !3325
  %bf.cast15536 = and i64 %bf.load153, 65535, !dbg !3325
  %cmp156 = icmp eq i64 %bf.cast15536, 14, !dbg !3325
  br i1 %cmp156, label %cond.true158, label %cond.false162, !dbg !3325

cond.true158:                                     ; preds = %cond.true149
  %.cast37 = bitcast i64* %16 to %union.tree_node*, !dbg !3325
  %call161 = tail call i32 @vector_type_mode(%union.tree_node* %.cast37) #6, !dbg !3325
  br label %cond.end198, !dbg !3325

cond.false162:                                    ; preds = %cond.true149
  %type165 = bitcast i64* %16 to %struct.tree_type*, !dbg !3325
  %mode166 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type165, i64 0, i32 6, !dbg !3325
  %bf.load167 = load i32, i32* %mode166, align 4, !dbg !3325
  %bf.lshr168 = lshr i32 %bf.load167, 16, !dbg !3325
  %bf.clear169 = and i32 %bf.lshr168, 255, !dbg !3325
  br label %cond.end198, !dbg !3325

cond.false172:                                    ; preds = %cond.end142
  %17 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load176 = load i64, i64* %17, align 8, !dbg !3325
  %bf.cast17820 = and i64 %bf.load176, 65535, !dbg !3325
  %cmp179 = icmp eq i64 %bf.cast17820, 14, !dbg !3325
  br i1 %cmp179, label %cond.true181, label %cond.false185, !dbg !3325

cond.true181:                                     ; preds = %cond.false172
  %.cast21 = bitcast i64* %17 to %union.tree_node*, !dbg !3325
  %call184 = tail call i32 @vector_type_mode(%union.tree_node* %.cast21) #6, !dbg !3325
  br label %cond.end193, !dbg !3325

cond.false185:                                    ; preds = %cond.false172
  %type188 = bitcast i64* %17 to %struct.tree_type*, !dbg !3325
  %mode189 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type188, i64 0, i32 6, !dbg !3325
  %bf.load190 = load i32, i32* %mode189, align 4, !dbg !3325
  %bf.lshr191 = lshr i32 %bf.load190, 16, !dbg !3325
  %bf.clear192 = and i32 %bf.lshr191, 255, !dbg !3325
  br label %cond.end193, !dbg !3325

cond.end193:                                      ; preds = %cond.false185, %cond.true181
  %cond194 = phi i32 [ %call184, %cond.true181 ], [ %bf.clear192, %cond.false185 ], !dbg !3325
  %idxprom195 = zext i32 %cond194 to i64, !dbg !3325
  %arrayidx196 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom195, !dbg !3325
  %18 = load i8, i8* %arrayidx196, align 1, !dbg !3325
  %conv197 = zext i8 %18 to i32, !dbg !3325
  br label %cond.end198, !dbg !3325

cond.end198:                                      ; preds = %cond.true158, %cond.false162, %cond.end193
  %cond199 = phi i32 [ %conv197, %cond.end193 ], [ %call161, %cond.true158 ], [ %bf.clear169, %cond.false162 ], !dbg !3325
  %idxprom200 = zext i32 %cond199 to i64, !dbg !3325
  %arrayidx201 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom200, !dbg !3325
  %19 = load i8, i8* %arrayidx201, align 1, !dbg !3325
  %cmp203 = icmp eq i8 %19, 9, !dbg !3325
  %20 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load209 = load i64, i64* %20, align 8, !dbg !3325
  %bf.cast21122 = and i64 %bf.load209, 65535, !dbg !3325
  %cmp212 = icmp eq i64 %bf.cast21122, 14, !dbg !3325
  %.cast23 = bitcast i64* %20 to %union.tree_node*, !dbg !3325
  br i1 %cmp203, label %cond.true205, label %cond.false312, !dbg !3325

cond.true205:                                     ; preds = %cond.end198
  br i1 %cmp212, label %cond.true214, label %cond.false218, !dbg !3325

cond.true214:                                     ; preds = %cond.true205
  %call217 = tail call i32 @vector_type_mode(%union.tree_node* %.cast23) #6, !dbg !3325
  br label %cond.end226, !dbg !3325

cond.false218:                                    ; preds = %cond.true205
  %type221 = bitcast i64* %20 to %struct.tree_type*, !dbg !3325
  %mode222 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type221, i64 0, i32 6, !dbg !3325
  %bf.load223 = load i32, i32* %mode222, align 4, !dbg !3325
  %bf.lshr224 = lshr i32 %bf.load223, 16, !dbg !3325
  %bf.clear225 = and i32 %bf.lshr224, 255, !dbg !3325
  br label %cond.end226, !dbg !3325

cond.end226:                                      ; preds = %cond.false218, %cond.true214
  %cond227 = phi i32 [ %call217, %cond.true214 ], [ %bf.clear225, %cond.false218 ], !dbg !3325
  %idxprom228 = zext i32 %cond227 to i64, !dbg !3325
  %arrayidx229 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom228, !dbg !3325
  %21 = load i8, i8* %arrayidx229, align 1, !dbg !3325
  %cmp231 = icmp eq i8 %21, 8, !dbg !3325
  br i1 %cmp231, label %cond.true261, label %lor.lhs.false233, !dbg !3325

lor.lhs.false233:                                 ; preds = %cond.end226
  %22 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load237 = load i64, i64* %22, align 8, !dbg !3325
  %bf.cast23930 = and i64 %bf.load237, 65535, !dbg !3325
  %cmp240 = icmp eq i64 %bf.cast23930, 14, !dbg !3325
  br i1 %cmp240, label %cond.true242, label %cond.false246, !dbg !3325

cond.true242:                                     ; preds = %lor.lhs.false233
  %.cast31 = bitcast i64* %22 to %union.tree_node*, !dbg !3325
  %call245 = tail call i32 @vector_type_mode(%union.tree_node* %.cast31) #6, !dbg !3325
  br label %cond.end254, !dbg !3325

cond.false246:                                    ; preds = %lor.lhs.false233
  %type249 = bitcast i64* %22 to %struct.tree_type*, !dbg !3325
  %mode250 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type249, i64 0, i32 6, !dbg !3325
  %bf.load251 = load i32, i32* %mode250, align 4, !dbg !3325
  %bf.lshr252 = lshr i32 %bf.load251, 16, !dbg !3325
  %bf.clear253 = and i32 %bf.lshr252, 255, !dbg !3325
  br label %cond.end254, !dbg !3325

cond.end254:                                      ; preds = %cond.false246, %cond.true242
  %cond255 = phi i32 [ %call245, %cond.true242 ], [ %bf.clear253, %cond.false246 ], !dbg !3325
  %idxprom256 = zext i32 %cond255 to i64, !dbg !3325
  %arrayidx257 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom256, !dbg !3325
  %23 = load i8, i8* %arrayidx257, align 1, !dbg !3325
  %cmp259 = icmp eq i8 %23, 9, !dbg !3325
  br i1 %cmp259, label %cond.true261, label %cond.false284, !dbg !3325

cond.true261:                                     ; preds = %cond.end254, %cond.end226
  %24 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load265 = load i64, i64* %24, align 8, !dbg !3325
  %bf.cast26734 = and i64 %bf.load265, 65535, !dbg !3325
  %cmp268 = icmp eq i64 %bf.cast26734, 14, !dbg !3325
  br i1 %cmp268, label %cond.true270, label %cond.false274, !dbg !3325

cond.true270:                                     ; preds = %cond.true261
  %.cast35 = bitcast i64* %24 to %union.tree_node*, !dbg !3325
  %call273 = tail call i32 @vector_type_mode(%union.tree_node* %.cast35) #6, !dbg !3325
  br label %cond.end310, !dbg !3325

cond.false274:                                    ; preds = %cond.true261
  %type277 = bitcast i64* %24 to %struct.tree_type*, !dbg !3325
  %mode278 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type277, i64 0, i32 6, !dbg !3325
  %bf.load279 = load i32, i32* %mode278, align 4, !dbg !3325
  %bf.lshr280 = lshr i32 %bf.load279, 16, !dbg !3325
  %bf.clear281 = and i32 %bf.lshr280, 255, !dbg !3325
  br label %cond.end310, !dbg !3325

cond.false284:                                    ; preds = %cond.end254
  %25 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load288 = load i64, i64* %25, align 8, !dbg !3325
  %bf.cast29032 = and i64 %bf.load288, 65535, !dbg !3325
  %cmp291 = icmp eq i64 %bf.cast29032, 14, !dbg !3325
  br i1 %cmp291, label %cond.true293, label %cond.false297, !dbg !3325

cond.true293:                                     ; preds = %cond.false284
  %.cast33 = bitcast i64* %25 to %union.tree_node*, !dbg !3325
  %call296 = tail call i32 @vector_type_mode(%union.tree_node* %.cast33) #6, !dbg !3325
  br label %cond.end305, !dbg !3325

cond.false297:                                    ; preds = %cond.false284
  %type300 = bitcast i64* %25 to %struct.tree_type*, !dbg !3325
  %mode301 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type300, i64 0, i32 6, !dbg !3325
  %bf.load302 = load i32, i32* %mode301, align 4, !dbg !3325
  %bf.lshr303 = lshr i32 %bf.load302, 16, !dbg !3325
  %bf.clear304 = and i32 %bf.lshr303, 255, !dbg !3325
  br label %cond.end305, !dbg !3325

cond.end305:                                      ; preds = %cond.false297, %cond.true293
  %cond306 = phi i32 [ %call296, %cond.true293 ], [ %bf.clear304, %cond.false297 ], !dbg !3325
  %idxprom307 = zext i32 %cond306 to i64, !dbg !3325
  %arrayidx308 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom307, !dbg !3325
  %26 = load i8, i8* %arrayidx308, align 1, !dbg !3325
  %conv309 = zext i8 %26 to i32, !dbg !3325
  br label %cond.end310, !dbg !3325

cond.end310:                                      ; preds = %cond.true270, %cond.false274, %cond.end305
  %cond311 = phi i32 [ %conv309, %cond.end305 ], [ %call273, %cond.true270 ], [ %bf.clear281, %cond.false274 ], !dbg !3325
  br label %cond.end420, !dbg !3325

cond.false312:                                    ; preds = %cond.end198
  br i1 %cmp212, label %cond.true321, label %cond.false325, !dbg !3325

cond.true321:                                     ; preds = %cond.false312
  %call324 = tail call i32 @vector_type_mode(%union.tree_node* %.cast23) #6, !dbg !3325
  br label %cond.end333, !dbg !3325

cond.false325:                                    ; preds = %cond.false312
  %type328 = bitcast i64* %20 to %struct.tree_type*, !dbg !3325
  %mode329 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type328, i64 0, i32 6, !dbg !3325
  %bf.load330 = load i32, i32* %mode329, align 4, !dbg !3325
  %bf.lshr331 = lshr i32 %bf.load330, 16, !dbg !3325
  %bf.clear332 = and i32 %bf.lshr331, 255, !dbg !3325
  br label %cond.end333, !dbg !3325

cond.end333:                                      ; preds = %cond.false325, %cond.true321
  %cond334 = phi i32 [ %call324, %cond.true321 ], [ %bf.clear332, %cond.false325 ], !dbg !3325
  %idxprom335 = zext i32 %cond334 to i64, !dbg !3325
  %arrayidx336 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom335, !dbg !3325
  %27 = load i8, i8* %arrayidx336, align 1, !dbg !3325
  %cmp338 = icmp eq i8 %27, 8, !dbg !3325
  br i1 %cmp338, label %cond.true368, label %lor.lhs.false340, !dbg !3325

lor.lhs.false340:                                 ; preds = %cond.end333
  %28 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load344 = load i64, i64* %28, align 8, !dbg !3325
  %bf.cast34624 = and i64 %bf.load344, 65535, !dbg !3325
  %cmp347 = icmp eq i64 %bf.cast34624, 14, !dbg !3325
  br i1 %cmp347, label %cond.true349, label %cond.false353, !dbg !3325

cond.true349:                                     ; preds = %lor.lhs.false340
  %.cast25 = bitcast i64* %28 to %union.tree_node*, !dbg !3325
  %call352 = tail call i32 @vector_type_mode(%union.tree_node* %.cast25) #6, !dbg !3325
  br label %cond.end361, !dbg !3325

cond.false353:                                    ; preds = %lor.lhs.false340
  %type356 = bitcast i64* %28 to %struct.tree_type*, !dbg !3325
  %mode357 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type356, i64 0, i32 6, !dbg !3325
  %bf.load358 = load i32, i32* %mode357, align 4, !dbg !3325
  %bf.lshr359 = lshr i32 %bf.load358, 16, !dbg !3325
  %bf.clear360 = and i32 %bf.lshr359, 255, !dbg !3325
  br label %cond.end361, !dbg !3325

cond.end361:                                      ; preds = %cond.false353, %cond.true349
  %cond362 = phi i32 [ %call352, %cond.true349 ], [ %bf.clear360, %cond.false353 ], !dbg !3325
  %idxprom363 = zext i32 %cond362 to i64, !dbg !3325
  %arrayidx364 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom363, !dbg !3325
  %29 = load i8, i8* %arrayidx364, align 1, !dbg !3325
  %cmp366 = icmp eq i8 %29, 9, !dbg !3325
  br i1 %cmp366, label %cond.true368, label %cond.false391, !dbg !3325

cond.true368:                                     ; preds = %cond.end361, %cond.end333
  %30 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load372 = load i64, i64* %30, align 8, !dbg !3325
  %bf.cast37428 = and i64 %bf.load372, 65535, !dbg !3325
  %cmp375 = icmp eq i64 %bf.cast37428, 14, !dbg !3325
  br i1 %cmp375, label %cond.true377, label %cond.false381, !dbg !3325

cond.true377:                                     ; preds = %cond.true368
  %.cast29 = bitcast i64* %30 to %union.tree_node*, !dbg !3325
  %call380 = tail call i32 @vector_type_mode(%union.tree_node* %.cast29) #6, !dbg !3325
  br label %cond.end417, !dbg !3325

cond.false381:                                    ; preds = %cond.true368
  %type384 = bitcast i64* %30 to %struct.tree_type*, !dbg !3325
  %mode385 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type384, i64 0, i32 6, !dbg !3325
  %bf.load386 = load i32, i32* %mode385, align 4, !dbg !3325
  %bf.lshr387 = lshr i32 %bf.load386, 16, !dbg !3325
  %bf.clear388 = and i32 %bf.lshr387, 255, !dbg !3325
  br label %cond.end417, !dbg !3325

cond.false391:                                    ; preds = %cond.end361
  %31 = load i64*, i64** %3, align 8, !dbg !3325
  %bf.load395 = load i64, i64* %31, align 8, !dbg !3325
  %bf.cast39726 = and i64 %bf.load395, 65535, !dbg !3325
  %cmp398 = icmp eq i64 %bf.cast39726, 14, !dbg !3325
  br i1 %cmp398, label %cond.true400, label %cond.false404, !dbg !3325

cond.true400:                                     ; preds = %cond.false391
  %.cast27 = bitcast i64* %31 to %union.tree_node*, !dbg !3325
  %call403 = tail call i32 @vector_type_mode(%union.tree_node* %.cast27) #6, !dbg !3325
  br label %cond.end412, !dbg !3325

cond.false404:                                    ; preds = %cond.false391
  %type407 = bitcast i64* %31 to %struct.tree_type*, !dbg !3325
  %mode408 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type407, i64 0, i32 6, !dbg !3325
  %bf.load409 = load i32, i32* %mode408, align 4, !dbg !3325
  %bf.lshr410 = lshr i32 %bf.load409, 16, !dbg !3325
  %bf.clear411 = and i32 %bf.lshr410, 255, !dbg !3325
  br label %cond.end412, !dbg !3325

cond.end412:                                      ; preds = %cond.false404, %cond.true400
  %cond413 = phi i32 [ %call403, %cond.true400 ], [ %bf.clear411, %cond.false404 ], !dbg !3325
  %idxprom414 = zext i32 %cond413 to i64, !dbg !3325
  %arrayidx415 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom414, !dbg !3325
  %32 = load i8, i8* %arrayidx415, align 1, !dbg !3325
  %conv416 = zext i8 %32 to i32, !dbg !3325
  br label %cond.end417, !dbg !3325

cond.end417:                                      ; preds = %cond.true377, %cond.false381, %cond.end412
  %cond418 = phi i32 [ %conv416, %cond.end412 ], [ %call380, %cond.true377 ], [ %bf.clear388, %cond.false381 ], !dbg !3325
  br label %cond.end420, !dbg !3325

cond.end420:                                      ; preds = %cond.end417, %cond.end310
  %cond421.in = phi i32 [ %cond311, %cond.end310 ], [ %cond418, %cond.end417 ]
  %cond421 = add i32 %cond421.in, -38, !dbg !3325
  %idxprom422 = zext i32 %cond421 to i64, !dbg !3325
  %arrayidx423 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom422, !dbg !3325
  %33 = load %struct.real_format*, %struct.real_format** %arrayidx423, align 8, !dbg !3325
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %33, i64 0, i32 14, !dbg !3325
  %34 = load i8, i8* %has_signed_zero, align 1, !dbg !3325
  %tobool = icmp ne i8 %34, 0, !dbg !3325
  %35 = load i32, i32* @flag_signed_zeros, align 4, !dbg !3325
  %tobool426 = icmp ne i32 %35, 0, !dbg !3325
  %or.cond = and i1 %tobool, %tobool426, !dbg !3325
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3325

if.end:                                           ; preds = %cond.end420, %cond.end87
  %call427 = tail call %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def* %middle_bb) #6, !dbg !3327
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call427, metadata !3313, metadata !DIExpression()), !dbg !3322
  %cmp428 = icmp eq %union.gimple_statement_d* %call427, null, !dbg !3328
  br i1 %cmp428, label %cleanup, label %if.end431, !dbg !3330

if.end431:                                        ; preds = %if.end
  %call432 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call427) #7, !dbg !3331
  %cmp433 = icmp eq i32 %call432, 6, !dbg !3333
  br i1 %cmp433, label %if.end436, label %cleanup, !dbg !3334

if.end436:                                        ; preds = %if.end431
  %call437 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call427) #7, !dbg !3335
  call void @llvm.dbg.value(metadata %union.tree_node* %call437, metadata !3316, metadata !DIExpression()), !dbg !3322
  %call438 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call427) #7, !dbg !3336
  %cmp439 = icmp eq i32 %call438, 79, !dbg !3338
  br i1 %cmp439, label %if.end442, label %cleanup, !dbg !3339

if.end442:                                        ; preds = %if.end436
  %call443 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* nonnull %call427) #7, !dbg !3340
  call void @llvm.dbg.value(metadata %union.tree_node* %call443, metadata !3315, metadata !DIExpression()), !dbg !3322
  %cmp444 = icmp eq %union.tree_node* %call437, %arg0, !dbg !3341
  %cmp447 = icmp eq %union.tree_node* %call443, %arg1, !dbg !3343
  %or.cond1 = and i1 %cmp444, %cmp447, !dbg !3344
  br i1 %or.cond1, label %if.end456, label %land.lhs.true449, !dbg !3344

land.lhs.true449:                                 ; preds = %if.end442
  %cmp450 = icmp eq %union.tree_node* %call437, %arg1, !dbg !3345
  %cmp453 = icmp eq %union.tree_node* %call443, %arg0, !dbg !3346
  %or.cond2 = and i1 %cmp450, %cmp453, !dbg !3347
  br i1 %or.cond2, label %if.end456, label %cleanup, !dbg !3347

if.end456:                                        ; preds = %land.lhs.true449, %if.end442
  %call457 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %cond_bb) #6, !dbg !3348
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call457, metadata !3309, metadata !DIExpression()), !dbg !3322
  %call458 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3349
  %call459 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call458) #7, !dbg !3349
  call void @llvm.dbg.value(metadata %union.tree_node* %call459, metadata !3307, metadata !DIExpression()), !dbg !3322
  %call460 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %call457) #7, !dbg !3350
  call void @llvm.dbg.value(metadata i32 %call460, metadata !3318, metadata !DIExpression()), !dbg !3322
  %call460.off = add i32 %call460, -97, !dbg !3351
  %switch = icmp ult i32 %call460.off, 4, !dbg !3351
  br i1 %switch, label %if.end473, label %cleanup, !dbg !3351

if.end473:                                        ; preds = %if.end456
  %call474 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call457) #7, !dbg !3353
  %cmp475 = icmp eq %union.tree_node* %call474, %call443, !dbg !3355
  br i1 %cmp475, label %if.end478, label %cleanup, !dbg !3356

if.end478:                                        ; preds = %if.end473
  %call479 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3357
  %type481 = getelementptr inbounds %union.tree_node, %union.tree_node* %call479, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3357
  %36 = bitcast %union.tree_node** %type481 to i64**, !dbg !3357
  %37 = load i64*, i64** %36, align 8, !dbg !3357
  %bf.load483 = load i64, i64* %37, align 8, !dbg !3357
  %bf.cast48512 = and i64 %bf.load483, 65535, !dbg !3357
  %cmp486 = icmp eq i64 %bf.cast48512, 9, !dbg !3357
  br i1 %cmp486, label %cond.true520, label %lor.lhs.false488, !dbg !3357

lor.lhs.false488:                                 ; preds = %if.end478
  %call489 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3357
  %type491 = getelementptr inbounds %union.tree_node, %union.tree_node* %call489, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3357
  %38 = bitcast %union.tree_node** %type491 to i64**, !dbg !3357
  %39 = load i64*, i64** %38, align 8, !dbg !3357
  %bf.load493 = load i64, i64* %39, align 8, !dbg !3357
  %bf.cast49513 = and i64 %bf.load493, 65535, !dbg !3357
  %cmp496 = icmp eq i64 %bf.cast49513, 13, !dbg !3357
  br i1 %cmp496, label %land.lhs.true508, label %lor.lhs.false498, !dbg !3357

lor.lhs.false498:                                 ; preds = %lor.lhs.false488
  %call499 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3357
  %type501 = getelementptr inbounds %union.tree_node, %union.tree_node* %call499, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3357
  %40 = bitcast %union.tree_node** %type501 to i64**, !dbg !3357
  %41 = load i64*, i64** %40, align 8, !dbg !3357
  %bf.load503 = load i64, i64* %41, align 8, !dbg !3357
  %bf.cast50514 = and i64 %bf.load503, 65535, !dbg !3357
  %cmp506 = icmp eq i64 %bf.cast50514, 14, !dbg !3357
  br i1 %cmp506, label %land.lhs.true508, label %cond.false524, !dbg !3357

land.lhs.true508:                                 ; preds = %lor.lhs.false498, %lor.lhs.false488
  %call509 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3357
  %type511 = getelementptr inbounds %union.tree_node, %union.tree_node* %call509, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3357
  %42 = bitcast %union.tree_node** %type511 to %struct.tree_common**, !dbg !3357
  %43 = load %struct.tree_common*, %struct.tree_common** %42, align 8, !dbg !3357
  %type513 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %43, i64 0, i32 2, !dbg !3357
  %44 = bitcast %union.tree_node** %type513 to i64**, !dbg !3357
  %45 = load i64*, i64** %44, align 8, !dbg !3357
  %bf.load515 = load i64, i64* %45, align 8, !dbg !3357
  %bf.cast51715 = and i64 %bf.load515, 65535, !dbg !3357
  %cmp518 = icmp eq i64 %bf.cast51715, 9, !dbg !3357
  br i1 %cmp518, label %cond.true520, label %cond.false524, !dbg !3359

cond.true520:                                     ; preds = %land.lhs.true508, %if.end478
  %call521 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3360
  %call522 = tail call i32 @real_zerop(%union.tree_node* %call521) #6, !dbg !3361
  %tobool523 = icmp eq i32 %call522, 0, !dbg !3361
  br i1 %tobool523, label %cleanup, label %if.end529, !dbg !3357

cond.false524:                                    ; preds = %land.lhs.true508, %lor.lhs.false498
  %call525 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call457) #7, !dbg !3362
  %call526 = tail call i32 @integer_zerop(%union.tree_node* %call525) #6, !dbg !3363
  %tobool527 = icmp eq i32 %call526, 0, !dbg !3363
  br i1 %tobool527, label %cleanup, label %if.end529, !dbg !3359

if.end529:                                        ; preds = %cond.true520, %cond.false524
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !3311, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !3312, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %cond_bb, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !3364
  %call460.off3 = add i32 %call460, -99, !dbg !3365
  %switch4 = icmp ult i32 %call460.off3, 2, !dbg !3365
  %46 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !3311, metadata !DIExpression()), !dbg !3322
  %47 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.edge_def* %47, metadata !3312, metadata !DIExpression()), !dbg !3322
  %e.0 = select i1 %switch4, %struct.edge_def* %46, %struct.edge_def* %47, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !3314, metadata !DIExpression()), !dbg !3322
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 1, !dbg !3367
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3367
  %cmp538 = icmp eq %struct.basic_block_def* %48, %middle_bb, !dbg !3369
  call void @llvm.dbg.value(metadata i1 %cmp538, metadata !3317, metadata !DIExpression()), !dbg !3322
  %call543 = call %union.tree_node* @duplicate_ssa_name(%union.tree_node* %call459, %union.gimple_statement_d* null) #6, !dbg !3370
  call void @llvm.dbg.value(metadata %union.tree_node* %call543, metadata !3307, metadata !DIExpression()), !dbg !3322
  br i1 %cmp538, label %if.then545, label %if.end552, !dbg !3371

if.then545:                                       ; preds = %if.end529
  %type547 = getelementptr inbounds %union.tree_node, %union.tree_node* %call543, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3372
  %49 = load %union.tree_node*, %union.tree_node** %type547, align 8, !dbg !3372
  %call548 = call %union.tree_node* @create_tmp_var(%union.tree_node* %49, i8* null) #6, !dbg !3373
  call void @llvm.dbg.value(metadata %union.tree_node* %call548, metadata !3319, metadata !DIExpression()), !dbg !3374
  %call549 = call zeroext i8 @add_referenced_var(%union.tree_node* %call548) #6, !dbg !3375
  %call550 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call548, %union.gimple_statement_d* null) #7, !dbg !3376
  call void @llvm.dbg.value(metadata %union.tree_node* %call550, metadata !3316, metadata !DIExpression()), !dbg !3322
  br label %if.end552, !dbg !3377

if.end552:                                        ; preds = %if.end529, %if.then545
  %lhs.0 = phi %union.tree_node* [ %call550, %if.then545 ], [ %call543, %if.end529 ], !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.0, metadata !3316, metadata !DIExpression()), !dbg !3322
  %call553 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 82, %union.tree_node* %lhs.0, %union.tree_node* %call443, %union.tree_node* null) #6, !dbg !3379
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call553, metadata !3308, metadata !DIExpression()), !dbg !3322
  %50 = bitcast %struct.gimple_stmt_iterator* %tmp554 to i8*, !dbg !3380
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #8, !dbg !3380
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp554, %struct.basic_block_def* %cond_bb) #7, !dbg !3380
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %50, i64 24, i1 false), !dbg !3380
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #8, !dbg !3380
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3310, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call553, i32 0) #6, !dbg !3381
  br i1 %cmp538, label %if.then556, label %if.end558, !dbg !3382

if.then556:                                       ; preds = %if.end552
  %call557 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 79, %union.tree_node* %call543, %union.tree_node* %lhs.0, %union.tree_node* null) #6, !dbg !3383
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call557, metadata !3308, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3310, metadata !DIExpression(DW_OP_deref)), !dbg !3322
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call557, i32 0) #6, !dbg !3386
  br label %if.end558, !dbg !3387

if.end558:                                        ; preds = %if.then556, %if.end552
  call fastcc void @replace_phi_edge_with_variable(%struct.basic_block_def* %cond_bb, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %call543) #7, !dbg !3388
  br label %cleanup, !dbg !3389

cleanup:                                          ; preds = %cond.true520, %cond.false524, %if.end473, %if.end436, %if.end431, %if.end456, %land.lhs.true449, %if.end, %cond.end420, %if.end558
  %retval.0 = phi i8 [ 1, %if.end558 ], [ 0, %cond.end420 ], [ 0, %if.end ], [ 0, %if.end431 ], [ 0, %if.end436 ], [ 0, %land.lhs.true449 ], [ 0, %if.end456 ], [ 0, %if.end473 ], [ 0, %cond.false524 ], [ 0, %cond.true520 ], !dbg !3322
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3390
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3390
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3390
  ret i8 %retval.0, !dbg !3390
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @minmax_replacement(%struct.basic_block_def* %cond_bb, %struct.basic_block_def* %middle_bb, %struct.edge_def* %e0, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %arg0, %union.tree_node* %arg1) unnamed_addr #5 !dbg !3391 {
entry:
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %gsi_from = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp561 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp571 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_bb, metadata !3393, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %middle_bb, metadata !3394, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.edge_def* %e0, metadata !3395, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !3396, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3397, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %union.tree_node* %arg0, metadata !3398, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %union.tree_node* %arg1, metadata !3399, metadata !DIExpression()), !dbg !3422
  %0 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !3423
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3423
  %1 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !3423
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3423
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3424
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !3424
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi_from to i8*, !dbg !3424
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3424
  %call = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3425
  %call1 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call) #7, !dbg !3425
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3425
  %4 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3401, metadata !DIExpression()), !dbg !3422
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3426
  %bf.load = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !3426
  %cmp3 = icmp eq i64 %bf.cast3, 14, !dbg !3426
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3426

cond.true:                                        ; preds = %entry
  %call4 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end, !dbg !3426

cond.false:                                       ; preds = %entry
  %type5 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i64 0, i32 6, !dbg !3426
  %bf.load6 = load i32, i32* %mode, align 4, !dbg !3426
  %bf.lshr = lshr i32 %bf.load6, 16, !dbg !3426
  %bf.clear7 = and i32 %bf.lshr, 255, !dbg !3426
  br label %cond.end, !dbg !3426

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %call4, %cond.true ], [ %bf.clear7, %cond.false ], !dbg !3426
  %idxprom = zext i32 %cond8 to i64, !dbg !3426
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3426
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3426
  %cmp9 = icmp eq i8 %6, 8, !dbg !3426
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false, !dbg !3426

lor.lhs.false:                                    ; preds = %cond.end
  %bf.load12 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast144 = and i64 %bf.load12, 65535, !dbg !3426
  %cmp15 = icmp eq i64 %bf.cast144, 14, !dbg !3426
  br i1 %cmp15, label %cond.true17, label %cond.false19, !dbg !3426

cond.true17:                                      ; preds = %lor.lhs.false
  %call18 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end25, !dbg !3426

cond.false19:                                     ; preds = %lor.lhs.false
  %type20 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i64 0, i32 6, !dbg !3426
  %bf.load22 = load i32, i32* %mode21, align 4, !dbg !3426
  %bf.lshr23 = lshr i32 %bf.load22, 16, !dbg !3426
  %bf.clear24 = and i32 %bf.lshr23, 255, !dbg !3426
  br label %cond.end25, !dbg !3426

cond.end25:                                       ; preds = %cond.false19, %cond.true17
  %cond26 = phi i32 [ %call18, %cond.true17 ], [ %bf.clear24, %cond.false19 ], !dbg !3426
  %idxprom27 = zext i32 %cond26 to i64, !dbg !3426
  %arrayidx28 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom27, !dbg !3426
  %7 = load i8, i8* %arrayidx28, align 1, !dbg !3426
  %cmp30 = icmp eq i8 %7, 9, !dbg !3426
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false32, !dbg !3426

lor.lhs.false32:                                  ; preds = %cond.end25
  %bf.load34 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast365 = and i64 %bf.load34, 65535, !dbg !3426
  %cmp37 = icmp eq i64 %bf.cast365, 14, !dbg !3426
  br i1 %cmp37, label %cond.true39, label %cond.false41, !dbg !3426

cond.true39:                                      ; preds = %lor.lhs.false32
  %call40 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end47, !dbg !3426

cond.false41:                                     ; preds = %lor.lhs.false32
  %type42 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode43 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type42, i64 0, i32 6, !dbg !3426
  %bf.load44 = load i32, i32* %mode43, align 4, !dbg !3426
  %bf.lshr45 = lshr i32 %bf.load44, 16, !dbg !3426
  %bf.clear46 = and i32 %bf.lshr45, 255, !dbg !3426
  br label %cond.end47, !dbg !3426

cond.end47:                                       ; preds = %cond.false41, %cond.true39
  %cond48 = phi i32 [ %call40, %cond.true39 ], [ %bf.clear46, %cond.false41 ], !dbg !3426
  %idxprom49 = zext i32 %cond48 to i64, !dbg !3426
  %arrayidx50 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom49, !dbg !3426
  %8 = load i8, i8* %arrayidx50, align 1, !dbg !3426
  %cmp52 = icmp eq i8 %8, 11, !dbg !3426
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false54, !dbg !3426

lor.lhs.false54:                                  ; preds = %cond.end47
  %bf.load56 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast586 = and i64 %bf.load56, 65535, !dbg !3426
  %cmp59 = icmp eq i64 %bf.cast586, 14, !dbg !3426
  br i1 %cmp59, label %cond.true61, label %cond.false63, !dbg !3426

cond.true61:                                      ; preds = %lor.lhs.false54
  %call62 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end69, !dbg !3426

cond.false63:                                     ; preds = %lor.lhs.false54
  %type64 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode65 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type64, i64 0, i32 6, !dbg !3426
  %bf.load66 = load i32, i32* %mode65, align 4, !dbg !3426
  %bf.lshr67 = lshr i32 %bf.load66, 16, !dbg !3426
  %bf.clear68 = and i32 %bf.lshr67, 255, !dbg !3426
  br label %cond.end69, !dbg !3426

cond.end69:                                       ; preds = %cond.false63, %cond.true61
  %cond70 = phi i32 [ %call62, %cond.true61 ], [ %bf.clear68, %cond.false63 ], !dbg !3426
  %idxprom71 = zext i32 %cond70 to i64, !dbg !3426
  %arrayidx72 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom71, !dbg !3426
  %9 = load i8, i8* %arrayidx72, align 1, !dbg !3426
  %cmp74 = icmp eq i8 %9, 17, !dbg !3426
  br i1 %cmp74, label %land.lhs.true, label %if.end, !dbg !3426

land.lhs.true:                                    ; preds = %cond.end69, %cond.end47, %cond.end25, %cond.end
  %bf.load77 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast797 = and i64 %bf.load77, 65535, !dbg !3426
  %cmp80 = icmp eq i64 %bf.cast797, 14, !dbg !3426
  br i1 %cmp80, label %cond.true82, label %cond.false84, !dbg !3426

cond.true82:                                      ; preds = %land.lhs.true
  %call83 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end90, !dbg !3426

cond.false84:                                     ; preds = %land.lhs.true
  %type85 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode86 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type85, i64 0, i32 6, !dbg !3426
  %bf.load87 = load i32, i32* %mode86, align 4, !dbg !3426
  %bf.lshr88 = lshr i32 %bf.load87, 16, !dbg !3426
  %bf.clear89 = and i32 %bf.lshr88, 255, !dbg !3426
  br label %cond.end90, !dbg !3426

cond.end90:                                       ; preds = %cond.false84, %cond.true82
  %cond91 = phi i32 [ %call83, %cond.true82 ], [ %bf.clear89, %cond.false84 ], !dbg !3426
  %idxprom92 = zext i32 %cond91 to i64, !dbg !3426
  %arrayidx93 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom92, !dbg !3426
  %10 = load i8, i8* %arrayidx93, align 1, !dbg !3426
  %cmp95 = icmp eq i8 %10, 8, !dbg !3426
  br i1 %cmp95, label %cond.true119, label %lor.lhs.false97, !dbg !3426

lor.lhs.false97:                                  ; preds = %cond.end90
  %bf.load99 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast1018 = and i64 %bf.load99, 65535, !dbg !3426
  %cmp102 = icmp eq i64 %bf.cast1018, 14, !dbg !3426
  br i1 %cmp102, label %cond.true104, label %cond.false106, !dbg !3426

cond.true104:                                     ; preds = %lor.lhs.false97
  %call105 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end112, !dbg !3426

cond.false106:                                    ; preds = %lor.lhs.false97
  %type107 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode108 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type107, i64 0, i32 6, !dbg !3426
  %bf.load109 = load i32, i32* %mode108, align 4, !dbg !3426
  %bf.lshr110 = lshr i32 %bf.load109, 16, !dbg !3426
  %bf.clear111 = and i32 %bf.lshr110, 255, !dbg !3426
  br label %cond.end112, !dbg !3426

cond.end112:                                      ; preds = %cond.false106, %cond.true104
  %cond113 = phi i32 [ %call105, %cond.true104 ], [ %bf.clear111, %cond.false106 ], !dbg !3426
  %idxprom114 = zext i32 %cond113 to i64, !dbg !3426
  %arrayidx115 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom114, !dbg !3426
  %11 = load i8, i8* %arrayidx115, align 1, !dbg !3426
  %cmp117 = icmp eq i8 %11, 9, !dbg !3426
  br i1 %cmp117, label %cond.true119, label %cond.false136, !dbg !3426

cond.true119:                                     ; preds = %cond.end112, %cond.end90
  %bf.load121 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast12317 = and i64 %bf.load121, 65535, !dbg !3426
  %cmp124 = icmp eq i64 %bf.cast12317, 14, !dbg !3426
  br i1 %cmp124, label %cond.true126, label %cond.false128, !dbg !3426

cond.true126:                                     ; preds = %cond.true119
  %call127 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end156, !dbg !3426

cond.false128:                                    ; preds = %cond.true119
  %type129 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode130 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type129, i64 0, i32 6, !dbg !3426
  %bf.load131 = load i32, i32* %mode130, align 4, !dbg !3426
  %bf.lshr132 = lshr i32 %bf.load131, 16, !dbg !3426
  %bf.clear133 = and i32 %bf.lshr132, 255, !dbg !3426
  br label %cond.end156, !dbg !3426

cond.false136:                                    ; preds = %cond.end112
  %bf.load138 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast1409 = and i64 %bf.load138, 65535, !dbg !3426
  %cmp141 = icmp eq i64 %bf.cast1409, 14, !dbg !3426
  br i1 %cmp141, label %cond.true143, label %cond.false145, !dbg !3426

cond.true143:                                     ; preds = %cond.false136
  %call144 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end151, !dbg !3426

cond.false145:                                    ; preds = %cond.false136
  %type146 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode147 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type146, i64 0, i32 6, !dbg !3426
  %bf.load148 = load i32, i32* %mode147, align 4, !dbg !3426
  %bf.lshr149 = lshr i32 %bf.load148, 16, !dbg !3426
  %bf.clear150 = and i32 %bf.lshr149, 255, !dbg !3426
  br label %cond.end151, !dbg !3426

cond.end151:                                      ; preds = %cond.false145, %cond.true143
  %cond152 = phi i32 [ %call144, %cond.true143 ], [ %bf.clear150, %cond.false145 ], !dbg !3426
  %idxprom153 = zext i32 %cond152 to i64, !dbg !3426
  %arrayidx154 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom153, !dbg !3426
  %12 = load i8, i8* %arrayidx154, align 1, !dbg !3426
  %conv155 = zext i8 %12 to i32, !dbg !3426
  br label %cond.end156, !dbg !3426

cond.end156:                                      ; preds = %cond.true126, %cond.false128, %cond.end151
  %cond157 = phi i32 [ %conv155, %cond.end151 ], [ %call127, %cond.true126 ], [ %bf.clear133, %cond.false128 ], !dbg !3426
  %idxprom158 = zext i32 %cond157 to i64, !dbg !3426
  %arrayidx159 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom158, !dbg !3426
  %13 = load i8, i8* %arrayidx159, align 1, !dbg !3426
  %cmp161 = icmp eq i8 %13, 9, !dbg !3426
  %bf.load165 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast16710 = and i64 %bf.load165, 65535, !dbg !3426
  %cmp168 = icmp eq i64 %bf.cast16710, 14, !dbg !3426
  br i1 %cmp161, label %cond.true163, label %cond.false246, !dbg !3426

cond.true163:                                     ; preds = %cond.end156
  br i1 %cmp168, label %cond.true170, label %cond.false172, !dbg !3426

cond.true170:                                     ; preds = %cond.true163
  %call171 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end178, !dbg !3426

cond.false172:                                    ; preds = %cond.true163
  %type173 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode174 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type173, i64 0, i32 6, !dbg !3426
  %bf.load175 = load i32, i32* %mode174, align 4, !dbg !3426
  %bf.lshr176 = lshr i32 %bf.load175, 16, !dbg !3426
  %bf.clear177 = and i32 %bf.lshr176, 255, !dbg !3426
  br label %cond.end178, !dbg !3426

cond.end178:                                      ; preds = %cond.false172, %cond.true170
  %cond179 = phi i32 [ %call171, %cond.true170 ], [ %bf.clear177, %cond.false172 ], !dbg !3426
  %idxprom180 = zext i32 %cond179 to i64, !dbg !3426
  %arrayidx181 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom180, !dbg !3426
  %14 = load i8, i8* %arrayidx181, align 1, !dbg !3426
  %cmp183 = icmp eq i8 %14, 8, !dbg !3426
  br i1 %cmp183, label %cond.true207, label %lor.lhs.false185, !dbg !3426

lor.lhs.false185:                                 ; preds = %cond.end178
  %bf.load187 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast18914 = and i64 %bf.load187, 65535, !dbg !3426
  %cmp190 = icmp eq i64 %bf.cast18914, 14, !dbg !3426
  br i1 %cmp190, label %cond.true192, label %cond.false194, !dbg !3426

cond.true192:                                     ; preds = %lor.lhs.false185
  %call193 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end200, !dbg !3426

cond.false194:                                    ; preds = %lor.lhs.false185
  %type195 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode196 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type195, i64 0, i32 6, !dbg !3426
  %bf.load197 = load i32, i32* %mode196, align 4, !dbg !3426
  %bf.lshr198 = lshr i32 %bf.load197, 16, !dbg !3426
  %bf.clear199 = and i32 %bf.lshr198, 255, !dbg !3426
  br label %cond.end200, !dbg !3426

cond.end200:                                      ; preds = %cond.false194, %cond.true192
  %cond201 = phi i32 [ %call193, %cond.true192 ], [ %bf.clear199, %cond.false194 ], !dbg !3426
  %idxprom202 = zext i32 %cond201 to i64, !dbg !3426
  %arrayidx203 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom202, !dbg !3426
  %15 = load i8, i8* %arrayidx203, align 1, !dbg !3426
  %cmp205 = icmp eq i8 %15, 9, !dbg !3426
  br i1 %cmp205, label %cond.true207, label %cond.false224, !dbg !3426

cond.true207:                                     ; preds = %cond.end200, %cond.end178
  %bf.load209 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast21116 = and i64 %bf.load209, 65535, !dbg !3426
  %cmp212 = icmp eq i64 %bf.cast21116, 14, !dbg !3426
  br i1 %cmp212, label %cond.true214, label %cond.false216, !dbg !3426

cond.true214:                                     ; preds = %cond.true207
  %call215 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end244, !dbg !3426

cond.false216:                                    ; preds = %cond.true207
  %type217 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode218 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type217, i64 0, i32 6, !dbg !3426
  %bf.load219 = load i32, i32* %mode218, align 4, !dbg !3426
  %bf.lshr220 = lshr i32 %bf.load219, 16, !dbg !3426
  %bf.clear221 = and i32 %bf.lshr220, 255, !dbg !3426
  br label %cond.end244, !dbg !3426

cond.false224:                                    ; preds = %cond.end200
  %bf.load226 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast22815 = and i64 %bf.load226, 65535, !dbg !3426
  %cmp229 = icmp eq i64 %bf.cast22815, 14, !dbg !3426
  br i1 %cmp229, label %cond.true231, label %cond.false233, !dbg !3426

cond.true231:                                     ; preds = %cond.false224
  %call232 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end239, !dbg !3426

cond.false233:                                    ; preds = %cond.false224
  %type234 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode235 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type234, i64 0, i32 6, !dbg !3426
  %bf.load236 = load i32, i32* %mode235, align 4, !dbg !3426
  %bf.lshr237 = lshr i32 %bf.load236, 16, !dbg !3426
  %bf.clear238 = and i32 %bf.lshr237, 255, !dbg !3426
  br label %cond.end239, !dbg !3426

cond.end239:                                      ; preds = %cond.false233, %cond.true231
  %cond240 = phi i32 [ %call232, %cond.true231 ], [ %bf.clear238, %cond.false233 ], !dbg !3426
  %idxprom241 = zext i32 %cond240 to i64, !dbg !3426
  %arrayidx242 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom241, !dbg !3426
  %16 = load i8, i8* %arrayidx242, align 1, !dbg !3426
  %conv243 = zext i8 %16 to i32, !dbg !3426
  br label %cond.end244, !dbg !3426

cond.end244:                                      ; preds = %cond.true214, %cond.false216, %cond.end239
  %cond245 = phi i32 [ %conv243, %cond.end239 ], [ %call215, %cond.true214 ], [ %bf.clear221, %cond.false216 ], !dbg !3426
  br label %cond.end330, !dbg !3426

cond.false246:                                    ; preds = %cond.end156
  br i1 %cmp168, label %cond.true253, label %cond.false255, !dbg !3426

cond.true253:                                     ; preds = %cond.false246
  %call254 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end261, !dbg !3426

cond.false255:                                    ; preds = %cond.false246
  %type256 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode257 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type256, i64 0, i32 6, !dbg !3426
  %bf.load258 = load i32, i32* %mode257, align 4, !dbg !3426
  %bf.lshr259 = lshr i32 %bf.load258, 16, !dbg !3426
  %bf.clear260 = and i32 %bf.lshr259, 255, !dbg !3426
  br label %cond.end261, !dbg !3426

cond.end261:                                      ; preds = %cond.false255, %cond.true253
  %cond262 = phi i32 [ %call254, %cond.true253 ], [ %bf.clear260, %cond.false255 ], !dbg !3426
  %idxprom263 = zext i32 %cond262 to i64, !dbg !3426
  %arrayidx264 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom263, !dbg !3426
  %17 = load i8, i8* %arrayidx264, align 1, !dbg !3426
  %cmp266 = icmp eq i8 %17, 8, !dbg !3426
  br i1 %cmp266, label %cond.true290, label %lor.lhs.false268, !dbg !3426

lor.lhs.false268:                                 ; preds = %cond.end261
  %bf.load270 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast27211 = and i64 %bf.load270, 65535, !dbg !3426
  %cmp273 = icmp eq i64 %bf.cast27211, 14, !dbg !3426
  br i1 %cmp273, label %cond.true275, label %cond.false277, !dbg !3426

cond.true275:                                     ; preds = %lor.lhs.false268
  %call276 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end283, !dbg !3426

cond.false277:                                    ; preds = %lor.lhs.false268
  %type278 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode279 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type278, i64 0, i32 6, !dbg !3426
  %bf.load280 = load i32, i32* %mode279, align 4, !dbg !3426
  %bf.lshr281 = lshr i32 %bf.load280, 16, !dbg !3426
  %bf.clear282 = and i32 %bf.lshr281, 255, !dbg !3426
  br label %cond.end283, !dbg !3426

cond.end283:                                      ; preds = %cond.false277, %cond.true275
  %cond284 = phi i32 [ %call276, %cond.true275 ], [ %bf.clear282, %cond.false277 ], !dbg !3426
  %idxprom285 = zext i32 %cond284 to i64, !dbg !3426
  %arrayidx286 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom285, !dbg !3426
  %18 = load i8, i8* %arrayidx286, align 1, !dbg !3426
  %cmp288 = icmp eq i8 %18, 9, !dbg !3426
  br i1 %cmp288, label %cond.true290, label %cond.false307, !dbg !3426

cond.true290:                                     ; preds = %cond.end283, %cond.end261
  %bf.load292 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast29413 = and i64 %bf.load292, 65535, !dbg !3426
  %cmp295 = icmp eq i64 %bf.cast29413, 14, !dbg !3426
  br i1 %cmp295, label %cond.true297, label %cond.false299, !dbg !3426

cond.true297:                                     ; preds = %cond.true290
  %call298 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end327, !dbg !3426

cond.false299:                                    ; preds = %cond.true290
  %type300 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode301 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type300, i64 0, i32 6, !dbg !3426
  %bf.load302 = load i32, i32* %mode301, align 4, !dbg !3426
  %bf.lshr303 = lshr i32 %bf.load302, 16, !dbg !3426
  %bf.clear304 = and i32 %bf.lshr303, 255, !dbg !3426
  br label %cond.end327, !dbg !3426

cond.false307:                                    ; preds = %cond.end283
  %bf.load309 = load i64, i64* %5, align 8, !dbg !3426
  %bf.cast31112 = and i64 %bf.load309, 65535, !dbg !3426
  %cmp312 = icmp eq i64 %bf.cast31112, 14, !dbg !3426
  br i1 %cmp312, label %cond.true314, label %cond.false316, !dbg !3426

cond.true314:                                     ; preds = %cond.false307
  %call315 = tail call i32 @vector_type_mode(%union.tree_node* %4) #6, !dbg !3426
  br label %cond.end322, !dbg !3426

cond.false316:                                    ; preds = %cond.false307
  %type317 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3426
  %mode318 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type317, i64 0, i32 6, !dbg !3426
  %bf.load319 = load i32, i32* %mode318, align 4, !dbg !3426
  %bf.lshr320 = lshr i32 %bf.load319, 16, !dbg !3426
  %bf.clear321 = and i32 %bf.lshr320, 255, !dbg !3426
  br label %cond.end322, !dbg !3426

cond.end322:                                      ; preds = %cond.false316, %cond.true314
  %cond323 = phi i32 [ %call315, %cond.true314 ], [ %bf.clear321, %cond.false316 ], !dbg !3426
  %idxprom324 = zext i32 %cond323 to i64, !dbg !3426
  %arrayidx325 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom324, !dbg !3426
  %19 = load i8, i8* %arrayidx325, align 1, !dbg !3426
  %conv326 = zext i8 %19 to i32, !dbg !3426
  br label %cond.end327, !dbg !3426

cond.end327:                                      ; preds = %cond.true297, %cond.false299, %cond.end322
  %cond328 = phi i32 [ %conv326, %cond.end322 ], [ %call298, %cond.true297 ], [ %bf.clear304, %cond.false299 ], !dbg !3426
  br label %cond.end330, !dbg !3426

cond.end330:                                      ; preds = %cond.end327, %cond.end244
  %cond331.in = phi i32 [ %cond245, %cond.end244 ], [ %cond328, %cond.end327 ]
  %cond331 = add i32 %cond331.in, -38, !dbg !3426
  %idxprom332 = zext i32 %cond331 to i64, !dbg !3426
  %arrayidx333 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom332, !dbg !3426
  %20 = load %struct.real_format*, %struct.real_format** %arrayidx333, align 8, !dbg !3426
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %20, i64 0, i32 11, !dbg !3426
  %21 = load i8, i8* %has_nans, align 2, !dbg !3426
  %tobool = icmp eq i8 %21, 0, !dbg !3426
  %22 = load i32, i32* @flag_finite_math_only, align 4, !dbg !3426
  %tobool336 = icmp ne i32 %22, 0, !dbg !3426
  %or.cond = or i1 %tobool, %tobool336, !dbg !3426
  br i1 %or.cond, label %if.end, label %cleanup572, !dbg !3426

if.end:                                           ; preds = %cond.end330, %cond.end69
  %call337 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %cond_bb) #6, !dbg !3428
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call337, metadata !3402, metadata !DIExpression()), !dbg !3422
  %call338 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %call337) #7, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %call338, metadata !3406, metadata !DIExpression()), !dbg !3422
  %call339 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3430
  %call340 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call339) #7, !dbg !3430
  call void @llvm.dbg.value(metadata %union.tree_node* %call340, metadata !3400, metadata !DIExpression()), !dbg !3422
  switch i32 %call338, label %cleanup572 [
    i32 97, label %if.then346
    i32 98, label %if.then346
    i32 99, label %if.then354
    i32 100, label %if.then354
  ], !dbg !3431

if.then346:                                       ; preds = %if.end, %if.end
  %call347 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call337) #7, !dbg !3433
  call void @llvm.dbg.value(metadata %union.tree_node* %call347, metadata !3409, metadata !DIExpression()), !dbg !3422
  %call348 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call337) #7, !dbg !3435
  call void @llvm.dbg.value(metadata %union.tree_node* %call348, metadata !3410, metadata !DIExpression()), !dbg !3422
  br label %if.end359, !dbg !3436

if.then354:                                       ; preds = %if.end, %if.end
  %call355 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call337) #7, !dbg !3437
  call void @llvm.dbg.value(metadata %union.tree_node* %call355, metadata !3409, metadata !DIExpression()), !dbg !3422
  %call356 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call337) #7, !dbg !3440
  call void @llvm.dbg.value(metadata %union.tree_node* %call356, metadata !3410, metadata !DIExpression()), !dbg !3422
  br label %if.end359

if.end359:                                        ; preds = %if.then354, %if.then346
  %smaller.0 = phi %union.tree_node* [ %call347, %if.then346 ], [ %call355, %if.then354 ], !dbg !3441
  %larger.0 = phi %union.tree_node* [ %call348, %if.then346 ], [ %call356, %if.then354 ], !dbg !3441
  call void @llvm.dbg.value(metadata %union.tree_node* %larger.0, metadata !3410, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %union.tree_node* %smaller.0, metadata !3409, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !3404, metadata !DIExpression(DW_OP_deref)), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !3405, metadata !DIExpression(DW_OP_deref)), !dbg !3422
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %cond_bb, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !3442
  %23 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3404, metadata !DIExpression()), !dbg !3422
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 1, !dbg !3445
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3445
  %cmp360 = icmp eq %struct.basic_block_def* %24, %middle_bb, !dbg !3446
  br i1 %cmp360, label %if.then362, label %if.end373, !dbg !3447

if.then362:                                       ; preds = %if.end359
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3404, metadata !DIExpression()), !dbg !3422
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %middle_bb, i64 0, i32 1, !dbg !3448
  %25 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3448
  %tobool364 = icmp eq %struct.VEC_edge_gc* %25, null, !dbg !3448
  br i1 %tobool364, label %cond.end370, label %cond.true365, !dbg !3448

cond.true365:                                     ; preds = %if.then362
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3404, metadata !DIExpression()), !dbg !3422
  %base368 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %25, i64 0, i32 0, !dbg !3448
  br label %cond.end370, !dbg !3448

cond.end370:                                      ; preds = %if.then362, %cond.true365
  %cond371 = phi %struct.VEC_edge_base* [ %base368, %cond.true365 ], [ null, %if.then362 ], !dbg !3448
  %call372 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond371, i32 0) #7, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def* %call372, metadata !3404, metadata !DIExpression()), !dbg !3422
  store %struct.edge_def* %call372, %struct.edge_def** %true_edge, align 8, !dbg !3449
  br label %if.end373, !dbg !3450

if.end373:                                        ; preds = %cond.end370, %if.end359
  %26 = phi %struct.edge_def* [ %call372, %cond.end370 ], [ %23, %if.end359 ]
  %27 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3405, metadata !DIExpression()), !dbg !3422
  %dest374 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i64 0, i32 1, !dbg !3453
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest374, align 8, !dbg !3453
  %cmp375 = icmp eq %struct.basic_block_def* %28, %middle_bb, !dbg !3454
  br i1 %cmp375, label %if.then377, label %if.end389, !dbg !3455

if.then377:                                       ; preds = %if.end373
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3405, metadata !DIExpression()), !dbg !3422
  %succs379 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %middle_bb, i64 0, i32 1, !dbg !3456
  %29 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs379, align 8, !dbg !3456
  %tobool380 = icmp eq %struct.VEC_edge_gc* %29, null, !dbg !3456
  br i1 %tobool380, label %cond.end386, label %cond.true381, !dbg !3456

cond.true381:                                     ; preds = %if.then377
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3405, metadata !DIExpression()), !dbg !3422
  %base384 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %29, i64 0, i32 0, !dbg !3456
  br label %cond.end386, !dbg !3456

cond.end386:                                      ; preds = %if.then377, %cond.true381
  %cond387 = phi %struct.VEC_edge_base* [ %base384, %cond.true381 ], [ null, %if.then377 ], !dbg !3456
  %call388 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond387, i32 0) #7, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.edge_def* %call388, metadata !3405, metadata !DIExpression()), !dbg !3422
  store %struct.edge_def* %call388, %struct.edge_def** %false_edge, align 8, !dbg !3457
  %.pre = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3458
  br label %if.end389, !dbg !3460

if.end389:                                        ; preds = %cond.end386, %if.end373
  %30 = phi %struct.edge_def* [ %call388, %cond.end386 ], [ %27, %if.end373 ], !dbg !3461
  %31 = phi %struct.edge_def* [ %.pre, %cond.end386 ], [ %26, %if.end373 ], !dbg !3458
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3404, metadata !DIExpression()), !dbg !3422
  %cmp390 = icmp eq %struct.edge_def* %31, %e0, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3405, metadata !DIExpression()), !dbg !3422
  br i1 %cmp390, label %if.then392, label %if.else399, !dbg !3463

if.then392:                                       ; preds = %if.end389
  %cmp393 = icmp eq %struct.edge_def* %30, %e1, !dbg !3464
  br i1 %cmp393, label %if.end412, label %cond.true395, !dbg !3464

cond.true395:                                     ; preds = %if.then392
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 681, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3464
  br label %if.end412, !dbg !3464

if.else399:                                       ; preds = %if.end389
  %cmp400 = icmp eq %struct.edge_def* %30, %e0, !dbg !3466
  br i1 %cmp400, label %cond.end404, label %cond.true402, !dbg !3466

cond.true402:                                     ; preds = %if.else399
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3466
  %.pre18 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3468
  br label %cond.end404, !dbg !3466

cond.end404:                                      ; preds = %if.else399, %cond.true402
  %32 = phi %struct.edge_def* [ %31, %if.else399 ], [ %.pre18, %cond.true402 ], !dbg !3468
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3404, metadata !DIExpression()), !dbg !3422
  %cmp406 = icmp eq %struct.edge_def* %32, %e1, !dbg !3468
  br i1 %cmp406, label %if.end412, label %cond.true408, !dbg !3468

cond.true408:                                     ; preds = %cond.end404
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 688, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3468
  br label %if.end412, !dbg !3468

if.end412:                                        ; preds = %cond.true408, %cond.end404, %cond.true395, %if.then392
  %arg_true.0 = phi %union.tree_node* [ %arg0, %if.then392 ], [ %arg0, %cond.true395 ], [ %arg1, %cond.end404 ], [ %arg1, %cond.true408 ], !dbg !3461
  %arg_false.0 = phi %union.tree_node* [ %arg1, %if.then392 ], [ %arg1, %cond.true395 ], [ %arg0, %cond.end404 ], [ %arg0, %cond.true408 ], !dbg !3461
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_false.0, metadata !3412, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_true.0, metadata !3411, metadata !DIExpression()), !dbg !3422
  %call413 = call zeroext i8 @empty_block_p(%struct.basic_block_def* %middle_bb) #7, !dbg !3469
  %tobool414 = icmp eq i8 %call413, 0, !dbg !3469
  br i1 %tobool414, label %if.else432, label %if.then415, !dbg !3470

if.then415:                                       ; preds = %if.end412
  %call416 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_true.0, %union.tree_node* %smaller.0) #6, !dbg !3471
  %tobool417 = icmp eq i32 %call416, 0, !dbg !3471
  br i1 %tobool417, label %if.else422, label %land.lhs.true418, !dbg !3474

land.lhs.true418:                                 ; preds = %if.then415
  %call419 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_false.0, %union.tree_node* %larger.0) #6, !dbg !3475
  %tobool420 = icmp eq i32 %call419, 0, !dbg !3475
  br i1 %tobool420, label %if.else422, label %if.end566, !dbg !3476

if.else422:                                       ; preds = %land.lhs.true418, %if.then415
  %call423 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_false.0, %union.tree_node* %smaller.0) #6, !dbg !3477
  %tobool424 = icmp eq i32 %call423, 0, !dbg !3477
  br i1 %tobool424, label %cleanup572, label %land.lhs.true425, !dbg !3479

land.lhs.true425:                                 ; preds = %if.else422
  %call426 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_true.0, %union.tree_node* %larger.0) #6, !dbg !3480
  %tobool427 = icmp eq i32 %call426, 0, !dbg !3480
  br i1 %tobool427, label %cleanup572, label %if.end566, !dbg !3481

if.else432:                                       ; preds = %if.end412
  %call433 = call %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def* %middle_bb) #6, !dbg !3482
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call433, metadata !3415, metadata !DIExpression()), !dbg !3483
  %tobool434 = icmp eq %union.gimple_statement_d* %call433, null, !dbg !3484
  br i1 %tobool434, label %cleanup, label %lor.lhs.false435, !dbg !3486

lor.lhs.false435:                                 ; preds = %if.else432
  %call436 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call433) #7, !dbg !3487
  %cmp437 = icmp eq i32 %call436, 6, !dbg !3488
  br i1 %cmp437, label %if.end440, label %cleanup, !dbg !3489

if.end440:                                        ; preds = %lor.lhs.false435
  %call441 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call433) #7, !dbg !3490
  call void @llvm.dbg.value(metadata %union.tree_node* %call441, metadata !3418, metadata !DIExpression()), !dbg !3483
  %call442 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call433) #7, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %call442, metadata !3408, metadata !DIExpression()), !dbg !3422
  %33 = and i32 %call442, -2, !dbg !3492
  %switch = icmp eq i32 %33, 80, !dbg !3492
  br i1 %switch, label %if.end449, label %cleanup, !dbg !3492

if.end449:                                        ; preds = %if.end440
  %call450 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* nonnull %call433) #7, !dbg !3494
  call void @llvm.dbg.value(metadata %union.tree_node* %call450, metadata !3419, metadata !DIExpression()), !dbg !3483
  %call451 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* nonnull %call433) #7, !dbg !3495
  call void @llvm.dbg.value(metadata %union.tree_node* %call451, metadata !3420, metadata !DIExpression()), !dbg !3483
  %34 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3404, metadata !DIExpression()), !dbg !3422
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 0, !dbg !3498
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3498
  %cmp452 = icmp eq %struct.basic_block_def* %35, %middle_bb, !dbg !3499
  br i1 %cmp452, label %if.then454, label %if.else507, !dbg !3500

if.then454:                                       ; preds = %if.end449
  %call455 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call441, %union.tree_node* %arg_true.0) #6, !dbg !3501
  %tobool456 = icmp eq i32 %call455, 0, !dbg !3501
  br i1 %tobool456, label %cleanup, label %if.end458, !dbg !3504

if.end458:                                        ; preds = %if.then454
  %call459 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_false.0, %union.tree_node* %larger.0) #6, !dbg !3505
  %tobool460 = icmp eq i32 %call459, 0, !dbg !3505
  br i1 %tobool460, label %if.else481, label %if.then461, !dbg !3507

if.then461:                                       ; preds = %if.end458
  %cmp462 = icmp eq i32 %call442, 81, !dbg !3508
  br i1 %cmp462, label %if.end465, label %cleanup, !dbg !3511

if.end465:                                        ; preds = %if.then461
  call void @llvm.dbg.value(metadata i32 80, metadata !3407, metadata !DIExpression()), !dbg !3422
  %call466 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call450, %union.tree_node* %smaller.0) #6, !dbg !3512
  %tobool467 = icmp eq i32 %call466, 0, !dbg !3512
  br i1 %tobool467, label %if.else469, label %if.end475, !dbg !3514

if.else469:                                       ; preds = %if.end465
  %call470 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call451, %union.tree_node* %smaller.0) #6, !dbg !3515
  %tobool471 = icmp eq i32 %call470, 0, !dbg !3515
  br i1 %tobool471, label %cleanup, label %if.end475, !dbg !3517

if.end475:                                        ; preds = %if.else469, %if.end465
  %bound.0 = phi %union.tree_node* [ %call451, %if.end465 ], [ %call450, %if.else469 ], !dbg !3518
  call void @llvm.dbg.value(metadata %union.tree_node* %bound.0, metadata !3421, metadata !DIExpression()), !dbg !3483
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3519
  %call476 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 98, %union.tree_node* %36, %union.tree_node* %bound.0, %union.tree_node* %larger.0) #6, !dbg !3519
  %call477 = call i32 @integer_nonzerop(%union.tree_node* %call476) #6, !dbg !3521
  %tobool478 = icmp eq i32 %call477, 0, !dbg !3521
  br i1 %tobool478, label %cleanup, label %if.end560, !dbg !3522

if.else481:                                       ; preds = %if.end458
  %call482 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_false.0, %union.tree_node* %smaller.0) #6, !dbg !3523
  %tobool483 = icmp eq i32 %call482, 0, !dbg !3523
  %cmp485 = icmp ne i32 %call442, 80, !dbg !3525
  %or.cond1 = or i1 %tobool483, %cmp485, !dbg !3528
  br i1 %or.cond1, label %cleanup, label %if.end488, !dbg !3528

if.end488:                                        ; preds = %if.else481
  call void @llvm.dbg.value(metadata i32 81, metadata !3407, metadata !DIExpression()), !dbg !3422
  %call489 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call450, %union.tree_node* %larger.0) #6, !dbg !3529
  %tobool490 = icmp eq i32 %call489, 0, !dbg !3529
  br i1 %tobool490, label %if.else492, label %if.end498, !dbg !3531

if.else492:                                       ; preds = %if.end488
  %call493 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call451, %union.tree_node* %larger.0) #6, !dbg !3532
  %tobool494 = icmp eq i32 %call493, 0, !dbg !3532
  br i1 %tobool494, label %cleanup, label %if.end498, !dbg !3534

if.end498:                                        ; preds = %if.else492, %if.end488
  %bound.1 = phi %union.tree_node* [ %call451, %if.end488 ], [ %call450, %if.else492 ], !dbg !3535
  call void @llvm.dbg.value(metadata %union.tree_node* %bound.1, metadata !3421, metadata !DIExpression()), !dbg !3483
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3536
  %call499 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 100, %union.tree_node* %37, %union.tree_node* %bound.1, %union.tree_node* %smaller.0) #6, !dbg !3536
  %call500 = call i32 @integer_nonzerop(%union.tree_node* %call499) #6, !dbg !3538
  %tobool501 = icmp eq i32 %call500, 0, !dbg !3538
  br i1 %tobool501, label %cleanup, label %if.end560, !dbg !3539

if.else507:                                       ; preds = %if.end449
  %call508 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call441, %union.tree_node* %arg_false.0) #6, !dbg !3540
  %tobool509 = icmp eq i32 %call508, 0, !dbg !3540
  br i1 %tobool509, label %cleanup, label %if.end511, !dbg !3543

if.end511:                                        ; preds = %if.else507
  %call512 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_true.0, %union.tree_node* %larger.0) #6, !dbg !3544
  %tobool513 = icmp eq i32 %call512, 0, !dbg !3544
  br i1 %tobool513, label %if.else534, label %if.then514, !dbg !3546

if.then514:                                       ; preds = %if.end511
  %cmp515 = icmp eq i32 %call442, 80, !dbg !3547
  br i1 %cmp515, label %if.end518, label %cleanup, !dbg !3550

if.end518:                                        ; preds = %if.then514
  call void @llvm.dbg.value(metadata i32 81, metadata !3407, metadata !DIExpression()), !dbg !3422
  %call519 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call450, %union.tree_node* %smaller.0) #6, !dbg !3551
  %tobool520 = icmp eq i32 %call519, 0, !dbg !3551
  br i1 %tobool520, label %if.else522, label %if.end528, !dbg !3553

if.else522:                                       ; preds = %if.end518
  %call523 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call451, %union.tree_node* %smaller.0) #6, !dbg !3554
  %tobool524 = icmp eq i32 %call523, 0, !dbg !3554
  br i1 %tobool524, label %cleanup, label %if.end528, !dbg !3556

if.end528:                                        ; preds = %if.else522, %if.end518
  %bound.2 = phi %union.tree_node* [ %call451, %if.end518 ], [ %call450, %if.else522 ], !dbg !3557
  call void @llvm.dbg.value(metadata %union.tree_node* %bound.2, metadata !3421, metadata !DIExpression()), !dbg !3483
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3558
  %call529 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 100, %union.tree_node* %38, %union.tree_node* %bound.2, %union.tree_node* %larger.0) #6, !dbg !3558
  %call530 = call i32 @integer_nonzerop(%union.tree_node* %call529) #6, !dbg !3560
  %tobool531 = icmp eq i32 %call530, 0, !dbg !3560
  br i1 %tobool531, label %cleanup, label %if.end560, !dbg !3561

if.else534:                                       ; preds = %if.end511
  %call535 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %arg_true.0, %union.tree_node* %smaller.0) #6, !dbg !3562
  %tobool536 = icmp eq i32 %call535, 0, !dbg !3562
  %cmp538 = icmp ne i32 %call442, 81, !dbg !3564
  %or.cond2 = or i1 %tobool536, %cmp538, !dbg !3567
  br i1 %or.cond2, label %cleanup, label %if.end541, !dbg !3567

if.end541:                                        ; preds = %if.else534
  call void @llvm.dbg.value(metadata i32 80, metadata !3407, metadata !DIExpression()), !dbg !3422
  %call542 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call450, %union.tree_node* %larger.0) #6, !dbg !3568
  %tobool543 = icmp eq i32 %call542, 0, !dbg !3568
  br i1 %tobool543, label %if.else545, label %if.end551, !dbg !3570

if.else545:                                       ; preds = %if.end541
  %call546 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call451, %union.tree_node* %larger.0) #6, !dbg !3571
  %tobool547 = icmp eq i32 %call546, 0, !dbg !3571
  br i1 %tobool547, label %cleanup, label %if.end551, !dbg !3573

if.end551:                                        ; preds = %if.else545, %if.end541
  %bound.3 = phi %union.tree_node* [ %call451, %if.end541 ], [ %call450, %if.else545 ], !dbg !3574
  call void @llvm.dbg.value(metadata %union.tree_node* %bound.3, metadata !3421, metadata !DIExpression()), !dbg !3483
  %39 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3575
  %call552 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 98, %union.tree_node* %39, %union.tree_node* %bound.3, %union.tree_node* %smaller.0) #6, !dbg !3575
  %call553 = call i32 @integer_nonzerop(%union.tree_node* %call552) #6, !dbg !3577
  %tobool554 = icmp eq i32 %call553, 0, !dbg !3577
  br i1 %tobool554, label %cleanup, label %if.end560, !dbg !3578

if.end560:                                        ; preds = %if.end475, %if.end498, %if.end528, %if.end551
  %minmax.3 = phi i32 [ 80, %if.end475 ], [ 81, %if.end498 ], [ 81, %if.end528 ], [ 80, %if.end551 ], !dbg !3579
  call void @llvm.dbg.value(metadata i32 %minmax.3, metadata !3407, metadata !DIExpression()), !dbg !3422
  %40 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #8, !dbg !3580
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %cond_bb) #7, !dbg !3580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %40, i64 24, i1 false), !dbg !3580
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #8, !dbg !3580
  %41 = bitcast %struct.gimple_stmt_iterator* %tmp561 to i8*, !dbg !3581
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %41) #8, !dbg !3581
  call fastcc void @gsi_last_nondebug_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp561, %struct.basic_block_def* %middle_bb) #7, !dbg !3581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %41, i64 24, i1 false), !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %41) #8, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3413, metadata !DIExpression(DW_OP_deref)), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi_from, metadata !3414, metadata !DIExpression(DW_OP_deref)), !dbg !3422
  call void @gsi_move_before(%struct.gimple_stmt_iterator* nonnull %gsi_from, %struct.gimple_stmt_iterator* nonnull %gsi) #6, !dbg !3582
  br label %cleanup, !dbg !3583

cleanup:                                          ; preds = %if.end475, %if.else469, %if.then461, %if.end498, %if.else492, %if.then454, %if.end528, %if.else522, %if.then514, %if.end551, %if.else545, %if.else507, %lor.lhs.false435, %if.else432, %if.else534, %if.else481, %if.end440, %if.end560
  %minmax.4 = phi i32 [ %minmax.3, %if.end560 ], [ undef, %lor.lhs.false435 ], [ undef, %if.else432 ], [ undef, %if.end440 ], [ undef, %if.then454 ], [ undef, %if.then461 ], [ 80, %if.else469 ], [ 80, %if.end475 ], [ 81, %if.else492 ], [ 81, %if.end498 ], [ undef, %if.else481 ], [ undef, %if.else507 ], [ undef, %if.then514 ], [ 81, %if.else522 ], [ 81, %if.end528 ], [ 80, %if.else545 ], [ 80, %if.end551 ], [ undef, %if.else534 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end560 ], [ false, %lor.lhs.false435 ], [ false, %if.else432 ], [ false, %if.end440 ], [ false, %if.then454 ], [ false, %if.then461 ], [ false, %if.else469 ], [ false, %if.end475 ], [ false, %if.else492 ], [ false, %if.end498 ], [ false, %if.else481 ], [ false, %if.else507 ], [ false, %if.then514 ], [ false, %if.else522 ], [ false, %if.end528 ], [ false, %if.else545 ], [ false, %if.end551 ], [ false, %if.else534 ]
  call void @llvm.dbg.value(metadata i32 %minmax.4, metadata !3407, metadata !DIExpression()), !dbg !3422
  br i1 %cleanup.dest.slot.0, label %if.end566, label %cleanup572

if.end566:                                        ; preds = %land.lhs.true418, %land.lhs.true425, %cleanup
  %minmax.5 = phi i32 [ 80, %land.lhs.true418 ], [ 81, %land.lhs.true425 ], [ %minmax.4, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %minmax.5, metadata !3407, metadata !DIExpression()), !dbg !3422
  %call567 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3584
  %call568 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call567) #7, !dbg !3584
  %call569 = call %union.tree_node* @duplicate_ssa_name(%union.tree_node* %call568, %union.gimple_statement_d* null) #6, !dbg !3585
  call void @llvm.dbg.value(metadata %union.tree_node* %call569, metadata !3400, metadata !DIExpression()), !dbg !3422
  %call570 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %minmax.5, %union.tree_node* %call569, %union.tree_node* %arg0, %union.tree_node* %arg1) #6, !dbg !3586
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call570, metadata !3403, metadata !DIExpression()), !dbg !3422
  %42 = bitcast %struct.gimple_stmt_iterator* %tmp571 to i8*, !dbg !3587
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %42) #8, !dbg !3587
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp571, %struct.basic_block_def* %cond_bb) #7, !dbg !3587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %42, i64 24, i1 false), !dbg !3587
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %42) #8, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3413, metadata !DIExpression(DW_OP_deref)), !dbg !3422
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call570, i32 0) #6, !dbg !3588
  call fastcc void @replace_phi_edge_with_variable(%struct.basic_block_def* %cond_bb, %struct.edge_def* %e1, %union.gimple_statement_d* %phi, %union.tree_node* %call569) #7, !dbg !3589
  br label %cleanup572, !dbg !3590

cleanup572:                                       ; preds = %land.lhs.true425, %if.else422, %if.end, %cond.end330, %cleanup, %if.end566
  %retval.1 = phi i8 [ 1, %if.end566 ], [ 0, %cleanup ], [ 0, %cond.end330 ], [ 0, %if.end ], [ 0, %land.lhs.true425 ], [ 0, %if.else422 ], !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3591
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !3591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3591
  ret i8 %retval.1, !dbg !3591
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @name_to_bb_hash(i8* %p) #5 !dbg !3592 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !3594, metadata !DIExpression()), !dbg !3599
  %0 = bitcast i8* %p to i8**, !dbg !3600
  %1 = load i8*, i8** %0, align 8, !dbg !3600
  %2 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !3601
  %call = tail call i32 %2(i8* %1) #6, !dbg !3601
  %3 = getelementptr inbounds i8, i8* %p, i64 16, !dbg !3602
  %bf.load = load i8, i8* %3, align 8, !dbg !3602
  %bf.clear = and i8 %bf.load, 1, !dbg !3602
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3602
  %xor = xor i32 %call, %bf.cast, !dbg !3603
  ret i32 %xor, !dbg !3604
}

; Function Attrs: nounwind uwtable
define internal i32 @name_to_bb_eq(i8* %p1, i8* %p2) #5 !dbg !3605 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3610, metadata !DIExpression()), !dbg !3611
  %ssa_name = bitcast i8* %p1 to %union.tree_node**, !dbg !3612
  %0 = load %union.tree_node*, %union.tree_node** %ssa_name, align 8, !dbg !3612
  %ssa_name1 = bitcast i8* %p2 to %union.tree_node**, !dbg !3613
  %1 = load %union.tree_node*, %union.tree_node** %ssa_name1, align 8, !dbg !3613
  %cmp = icmp eq %union.tree_node* %0, %1, !dbg !3614
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3615

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3609, metadata !DIExpression()), !dbg !3611
  %2 = getelementptr inbounds i8, i8* %p1, i64 16, !dbg !3616
  %bf.load = load i8, i8* %2, align 8, !dbg !3616
  %3 = getelementptr inbounds i8, i8* %p2, i64 16, !dbg !3617
  %bf.load3 = load i8, i8* %3, align 8, !dbg !3617
  %bf.clear1 = xor i8 %bf.load, %bf.load3
  %4 = and i8 %bf.clear1, 1
  %5 = xor i8 %4, 1
  %cmp6 = zext i8 %5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %cmp6, %land.rhs ]
  ret i32 %6, !dbg !3618
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @nt_init_block(%struct.dom_walk_data* %data, %struct.basic_block_def* %bb) #5 !dbg !3619 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %data, metadata !3621, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3622, metadata !DIExpression()), !dbg !3628
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3629
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3629
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !3630
  store i8* inttoptr (i64 1 to i8*), i8** %aux, align 8, !dbg !3631
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3632
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3632
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !3632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3632
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3632
  br label %for.cond, !dbg !3633

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3623, metadata !DIExpression(DW_OP_deref)), !dbg !3628
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3634
  %tobool = icmp eq i8 %call, 0, !dbg !3635
  br i1 %tobool, label %for.body, label %for.end, !dbg !3636

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3623, metadata !DIExpression(DW_OP_deref)), !dbg !3628
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3637
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !3624, metadata !DIExpression()), !dbg !3638
  %call2 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call1) #7, !dbg !3639
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3639
  br i1 %tobool3, label %for.inc, label %if.then, !dbg !3641

if.then:                                          ; preds = %for.body
  %call4 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call1) #7, !dbg !3642
  %2 = load %struct.pointer_set_t*, %struct.pointer_set_t** @nontrap_set, align 8, !dbg !3644
  call fastcc void @add_or_mark_expr(%struct.basic_block_def* %bb, %union.tree_node* %call4, %struct.pointer_set_t* %2, i8 zeroext 1) #7, !dbg !3645
  %call5 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call1) #7, !dbg !3646
  %3 = load %struct.pointer_set_t*, %struct.pointer_set_t** @nontrap_set, align 8, !dbg !3647
  call fastcc void @add_or_mark_expr(%struct.basic_block_def* %bb, %union.tree_node* %call5, %struct.pointer_set_t* %3, i8 zeroext 0) #7, !dbg !3648
  %call6 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call1) #7, !dbg !3649
  %call7 = call i32 @get_gimple_rhs_num_ops(i32 %call6) #6, !dbg !3651
  %cmp = icmp ugt i32 %call7, 1, !dbg !3652
  br i1 %cmp, label %if.then8, label %for.inc, !dbg !3653

if.then8:                                         ; preds = %if.then
  %call9 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call1) #7, !dbg !3654
  %4 = load %struct.pointer_set_t*, %struct.pointer_set_t** @nontrap_set, align 8, !dbg !3655
  call fastcc void @add_or_mark_expr(%struct.basic_block_def* %bb, %union.tree_node* %call9, %struct.pointer_set_t* %4, i8 zeroext 0) #7, !dbg !3656
  br label %for.inc, !dbg !3656

for.inc:                                          ; preds = %for.body, %if.then8, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3623, metadata !DIExpression(DW_OP_deref)), !dbg !3628
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3657
  br label %for.cond, !dbg !3658, !llvm.loop !3659

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3661
  ret void, !dbg !3661
}

; Function Attrs: nounwind uwtable
define internal void @nt_fini_block(%struct.dom_walk_data* %data, %struct.basic_block_def* %bb) #5 !dbg !3662 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %data, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3665, metadata !DIExpression()), !dbg !3666
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !3667
  store i8* null, i8** %aux, align 8, !dbg !3668
  ret void, !dbg !3669
}

declare dso_local void @init_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @walk_dominator_tree(%struct.dom_walk_data*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3670 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3672, metadata !DIExpression()), !dbg !3673
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3674
  %cmp = icmp eq i32 %call, 6, !dbg !3675
  %conv1 = zext i1 %cmp to i8, !dbg !3674
  ret i8 %conv1, !dbg !3676
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_or_mark_expr(%struct.basic_block_def* %bb, %union.tree_node* %exp, %struct.pointer_set_t* %nontrap, i8 zeroext %store) unnamed_addr #5 !dbg !3677 {
entry:
  %map = alloca %struct.name_to_bb, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3681, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !3682, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %nontrap, metadata !3683, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 %store, metadata !3684, metadata !DIExpression()), !dbg !3692
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3693
  %bf.load = load i64, i64* %0, align 8, !dbg !3693
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3693
  %cmp = icmp eq i64 %bf.cast1, 47, !dbg !3693
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3693

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 48, !dbg !3693
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false6, !dbg !3693

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 49, !dbg !3693
  br i1 %cmp11, label %land.lhs.true, label %if.end49, !dbg !3694

land.lhs.true:                                    ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3695
  %1 = bitcast %union.tree_node** %operands to i64**, !dbg !3695
  %2 = load i64*, i64** %1, align 8, !dbg !3695
  %bf.load14 = load i64, i64* %2, align 8, !dbg !3695
  %bf.cast164 = and i64 %bf.load14, 65535, !dbg !3696
  %cmp17 = icmp eq i64 %bf.cast164, 141, !dbg !3696
  %3 = ptrtoint i64* %2 to i64, !dbg !3697
  br i1 %cmp17, label %if.then, label %if.end49, !dbg !3697

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast %struct.name_to_bb* %map to i8*, !dbg !3698
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3698
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3691, metadata !DIExpression()), !dbg !3699
  %5 = bitcast %struct.name_to_bb* %map to i64*, !dbg !3700
  store i64 %3, i64* %5, align 8, !dbg !3700
  %bb21 = getelementptr inbounds %struct.name_to_bb, %struct.name_to_bb* %map, i64 0, i32 1, !dbg !3701
  store %struct.basic_block_def* null, %struct.basic_block_def** %bb21, align 8, !dbg !3702
  %store22 = getelementptr inbounds %struct.name_to_bb, %struct.name_to_bb* %map, i64 0, i32 2, !dbg !3703
  %bf.value = and i8 %store, 1, !dbg !3704
  store i8 %bf.value, i8* %store22, align 8, !dbg !3704
  %6 = load %struct.htab*, %struct.htab** @seen_ssa_names, align 8, !dbg !3705
  %call = call i8** @htab_find_slot(%struct.htab* %6, i8* nonnull %4, i32 1) #6, !dbg !3706
  call void @llvm.dbg.value(metadata i8** %call, metadata !3689, metadata !DIExpression()), !dbg !3699
  %7 = bitcast i8** %call to %struct.name_to_bb**, !dbg !3707
  %8 = load %struct.name_to_bb*, %struct.name_to_bb** %7, align 8, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.name_to_bb* %8, metadata !3690, metadata !DIExpression()), !dbg !3699
  %tobool = icmp eq %struct.name_to_bb* %8, null, !dbg !3708
  br i1 %tobool, label %if.end, label %if.then25, !dbg !3710

if.then25:                                        ; preds = %if.then
  %bb26 = getelementptr inbounds %struct.name_to_bb, %struct.name_to_bb* %8, i64 0, i32 1, !dbg !3711
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb26, align 8, !dbg !3711
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !3691, metadata !DIExpression()), !dbg !3699
  br label %if.end, !dbg !3712

if.end:                                           ; preds = %if.then, %if.then25
  %found_bb.0 = phi %struct.basic_block_def* [ %9, %if.then25 ], [ null, %if.then ], !dbg !3699
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %found_bb.0, metadata !3691, metadata !DIExpression()), !dbg !3699
  %tobool27 = icmp eq %struct.basic_block_def* %found_bb.0, null, !dbg !3713
  br i1 %tobool27, label %if.else, label %land.lhs.true28, !dbg !3715

land.lhs.true28:                                  ; preds = %if.end
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %found_bb.0, i64 0, i32 2, !dbg !3716
  %10 = load i8*, i8** %aux, align 8, !dbg !3716
  %cmp29 = icmp eq i8* %10, inttoptr (i64 1 to i8*), !dbg !3717
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !3718

if.then31:                                        ; preds = %land.lhs.true28
  %11 = bitcast %union.tree_node* %exp to i8*, !dbg !3719
  %call32 = call i32 @pointer_set_insert(%struct.pointer_set_t* %nontrap, i8* %11) #6, !dbg !3721
  br label %if.end48, !dbg !3722

if.else:                                          ; preds = %if.end, %land.lhs.true28
  br i1 %tobool, label %if.else36, label %if.then34, !dbg !3723

if.then34:                                        ; preds = %if.else
  %bb35 = getelementptr inbounds %struct.name_to_bb, %struct.name_to_bb* %8, i64 0, i32 1, !dbg !3725
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb35, align 8, !dbg !3728
  br label %if.end48, !dbg !3729

if.else36:                                        ; preds = %if.else
  %call37 = call i8* @xmalloc(i64 24) #6, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %call37, metadata !3690, metadata !DIExpression()), !dbg !3699
  %12 = bitcast i8* %call37 to i64*, !dbg !3732
  store i64 %3, i64* %12, align 8, !dbg !3732
  %bb39 = getelementptr inbounds i8, i8* %call37, i64 8, !dbg !3733
  %13 = bitcast i8* %bb39 to %struct.basic_block_def**, !dbg !3733
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %13, align 8, !dbg !3734
  %14 = getelementptr inbounds i8, i8* %call37, i64 16, !dbg !3735
  %bf.load42 = load i8, i8* %14, align 8, !dbg !3736
  %bf.clear44 = and i8 %bf.load42, -2, !dbg !3736
  %bf.set45 = or i8 %bf.clear44, %bf.value, !dbg !3736
  store i8 %bf.set45, i8* %14, align 8, !dbg !3736
  store i8* %call37, i8** %call, align 8, !dbg !3737
  br label %if.end48

if.end48:                                         ; preds = %if.then34, %if.else36, %if.then31
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3738
  br label %if.end49, !dbg !3739

if.end49:                                         ; preds = %if.end48, %land.lhs.true, %lor.lhs.false6
  ret void, !dbg !3740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3741 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3745, metadata !DIExpression()), !dbg !3746
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3747
  ret %union.tree_node* %call, !dbg !3748
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3749 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3751, metadata !DIExpression()), !dbg !3752
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3753
  ret %union.tree_node* %call, !dbg !3754
}

declare dso_local i32 @get_gimple_rhs_num_ops(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3755 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3759, metadata !DIExpression()), !dbg !3761
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %call, metadata !3760, metadata !DIExpression()), !dbg !3761
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3763
  %cmp = icmp eq i32 %call1, 3, !dbg !3765
  br i1 %cmp, label %if.then, label %if.end, !dbg !3766

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3767
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3767
  %bf.load = load i64, i64* %0, align 8, !dbg !3767
  %1 = trunc i64 %bf.load to i32, !dbg !3767
  %bf.cast = and i32 %1, 65535, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3760, metadata !DIExpression()), !dbg !3761
  br label %if.end, !dbg !3768

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3761
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3760, metadata !DIExpression()), !dbg !3761
  ret i32 %code.0, !dbg !3769
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3770 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3772, metadata !DIExpression()), !dbg !3773
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3774
  %cmp = icmp ugt i32 %call, 2, !dbg !3776
  br i1 %cmp, label %if.then, label %return, !dbg !3777

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3778
  br label %return, !dbg !3779

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3780
  ret %union.tree_node* %retval.0, !dbg !3781
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

declare dso_local i32 @pointer_set_insert(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3782 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3786, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %i, metadata !3787, metadata !DIExpression()), !dbg !3788
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3789
  %tobool = icmp eq i8 %call, 0, !dbg !3789
  br i1 %tobool, label %return, label %if.then, !dbg !3791

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3792
  %idxprom = zext i32 %i to i64, !dbg !3792
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3792
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3792
  br label %return, !dbg !3794

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3795
  ret %union.tree_node* %retval.0, !dbg !3796
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3797 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3799, metadata !DIExpression()), !dbg !3800
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3801
  %cmp = icmp eq i32 %call, 0, !dbg !3802
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3803

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3804
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3805
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3806
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3807 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3811, metadata !DIExpression()), !dbg !3813
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3814
  %idxprom = zext i32 %call to i64, !dbg !3815
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3815
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %0, metadata !3812, metadata !DIExpression()), !dbg !3813
  %cmp = icmp eq i64 %0, 0, !dbg !3816
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3816

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3816
  br label %cond.end, !dbg !3816

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3817
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3818
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3819
  ret %union.tree_node** %2, !dbg !3820
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3821 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3825, metadata !DIExpression()), !dbg !3826
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3827
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3828
  ret i32 %call1, !dbg !3829
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3830 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3834, metadata !DIExpression()), !dbg !3835
  %idxprom = zext i32 %code to i64, !dbg !3836
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3836
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3836
  ret i32 %0, !dbg !3837
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3838 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3840, metadata !DIExpression()), !dbg !3842
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3843
  call void @llvm.dbg.value(metadata i32 %call, metadata !3841, metadata !DIExpression()), !dbg !3842
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3844

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3846
  %bf.load = load i32, i32* %0, align 8, !dbg !3846
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3846
  br label %cleanup, !dbg !3847

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3848
  br label %cleanup, !dbg !3850

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3842
  ret i32 %retval.0, !dbg !3851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3852 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3856, metadata !DIExpression()), !dbg !3857
  %idxprom = sext i32 %code to i64, !dbg !3858
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3858
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3858
  %conv = zext i8 %0 to i32, !dbg !3859
  ret i32 %conv, !dbg !3860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3865, metadata !DIExpression()), !dbg !3866
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3867
  %0 = load i32, i32* %num_ops, align 4, !dbg !3867
  ret i32 %0, !dbg !3868
}

declare dso_local %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3869 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3873, metadata !DIExpression()), !dbg !3874
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3875
  %0 = load i32, i32* %location, align 8, !dbg !3875
  ret i32 %0, !dbg !3876
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @pointer_set_contains(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

declare dso_local void @mark_symbols_for_renaming(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %var) unnamed_addr #0 !dbg !3877 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3882, metadata !DIExpression()), !dbg !3885
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3886
  %bf.load = load i64, i64* %0, align 8, !dbg !3886
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3886
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3886
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3886

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 1, !dbg !3886
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !3886
  br label %cond.end19, !dbg !3886

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3886
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !3886

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3886
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !3886
  br label %cond.end19, !dbg !3886

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !3886
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3886
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !3886
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !3886
  br label %cond.end19, !dbg !3886

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !3886
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !3883, metadata !DIExpression()), !dbg !3885
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !3887
  br i1 %tobool, label %cond.true21, label %cond.end23, !dbg !3887

cond.true21:                                      ; preds = %cond.end19
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3887
  br label %cond.end23, !dbg !3887

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !3888
  %tobool25 = icmp eq %struct.var_ann_d* %4, null, !dbg !3888
  br i1 %tobool25, label %cond.false27, label %cond.true26, !dbg !3888

cond.true26:                                      ; preds = %cond.end23
  br label %cond.end28, !dbg !3888

cond.false27:                                     ; preds = %cond.end23
  %call = tail call %struct.var_ann_d* @create_var_ann(%union.tree_node* %var) #6, !dbg !3889
  br label %cond.end28, !dbg !3888

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi %struct.var_ann_d* [ %4, %cond.true26 ], [ %call, %cond.false27 ], !dbg !3888
  ret %struct.var_ann_d* %cond29, !dbg !3890
}

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3891 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3895, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3896, metadata !DIExpression()), !dbg !3897
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3898
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !3899
  ret %union.tree_node* %call, !dbg !3900
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3905, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3906, metadata !DIExpression()), !dbg !3907
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !3908
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !3909
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3911

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3912
  %bf.load = load i64, i64* %0, align 8, !dbg !3912
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3913
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3913
  br i1 %cmp, label %if.then, label %if.end, !dbg !3914

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3915
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3915
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !3916
  br label %if.end, !dbg !3915

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !3918 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3922, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i32 %location, metadata !3923, metadata !DIExpression()), !dbg !3924
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3925
  store i32 %location, i32* %location1, align 8, !dbg !3926
  ret void, !dbg !3927
}

declare dso_local void @gsi_insert_on_edge(%struct.edge_def*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3928 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3933, metadata !DIExpression()), !dbg !3934
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3935
  ret %union.tree_node* %0, !dbg !3936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3937 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3939, metadata !DIExpression()), !dbg !3940
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3941
  ret %union.tree_node** %result, !dbg !3942
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3943 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3945, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3946, metadata !DIExpression()), !dbg !3949
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3950
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3947, metadata !DIExpression()), !dbg !3948
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !3951
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3952
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3953
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3954
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3955
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3956
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3957
  ret void, !dbg !3958
}

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %struct.var_ann_d* @create_var_ann(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3959 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3963, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 0, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3965, metadata !DIExpression()), !dbg !3966
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3967
  %tobool = icmp eq i8 %call, 0, !dbg !3967
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3967

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3967
  %cmp = icmp eq i32 %call1, 0, !dbg !3967
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3967

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3967
  br label %cond.end, !dbg !3967

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3968
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !3969
  ret void, !dbg !3970
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3971 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3973, metadata !DIExpression()), !dbg !3974
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3975
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3975

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3976
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3976
  br label %cond.end, !dbg !3975

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3975
  ret %struct.gimple_seq_node_d* %cond, !dbg !3977
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3978 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3982, metadata !DIExpression()), !dbg !3983
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3984
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3984
  ret %struct.basic_block_def* %0, !dbg !3985
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3986 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %index, metadata !3991, metadata !DIExpression()), !dbg !3992
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3993
  %0 = load i32, i32* %capacity, align 8, !dbg !3993
  %cmp = icmp ult i32 %0, %index, !dbg !3993
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3993

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3993
  br label %cond.end, !dbg !3993

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3994
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3994
  ret %struct.phi_arg_d* %arrayidx, !dbg !3995
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3996 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4003, metadata !DIExpression()), !dbg !4004
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4005
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4005
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4006
  ret %union.tree_node* %1, !dbg !4007
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4008 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4010, metadata !DIExpression()), !dbg !4011
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !4012
  %bf.load = load i32, i32* %0, align 8, !dbg !4012
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4012
  ret i32 %bf.lshr, !dbg !4013
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4014 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4016, metadata !DIExpression()), !dbg !4017
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4018
  ret %union.tree_node* %call, !dbg !4019
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4020 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4022, metadata !DIExpression()), !dbg !4023
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4024
  ret %union.tree_node* %call, !dbg !4025
}

declare dso_local void @extract_true_false_edges_from_block(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4026 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4030, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %i, metadata !4031, metadata !DIExpression()), !dbg !4032
  %conv = trunc i64 %i to i32, !dbg !4033
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4034
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !4035
  %0 = load i32, i32* %locus, align 8, !dbg !4035
  ret i32 %0, !dbg !4036
}

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_phi_edge_with_variable(%struct.basic_block_def* %cond_block, %struct.edge_def* %e, %union.gimple_statement_d* %phi, %union.tree_node* %new_tree) unnamed_addr #5 !dbg !4037 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_block, metadata !4041, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4042, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4043, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata %union.tree_node* %new_tree, metadata !4044, metadata !DIExpression()), !dbg !4048
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %phi) #7, !dbg !4049
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4045, metadata !DIExpression()), !dbg !4048
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4050
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4050
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !4051
  %1 = load i32, i32* %dest_idx, align 4, !dbg !4051
  %call1 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %1) #7, !dbg !4051
  tail call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call1, %union.tree_node* %new_tree) #7, !dbg !4051
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond_block, i64 0, i32 1, !dbg !4052
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4052
  %tobool = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !4052
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4052

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !4052
  br label %cond.end, !dbg !4052

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4052
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #7, !dbg !4052
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call3, i64 0, i32 1, !dbg !4054
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4054
  %cmp = icmp eq %struct.basic_block_def* %3, %call, !dbg !4055
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4056
  %tobool5 = icmp ne %struct.VEC_edge_gc* %4, null, !dbg !4056
  br i1 %cmp, label %if.then, label %if.else, !dbg !4057

if.then:                                          ; preds = %cond.end
  br i1 %tobool5, label %cond.true6, label %cond.end10, !dbg !4058

cond.true6:                                       ; preds = %if.then
  %base8 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !4058
  br label %cond.end10, !dbg !4058

cond.end10:                                       ; preds = %if.then, %cond.true6
  %cond11 = phi %struct.VEC_edge_base* [ %base8, %cond.true6 ], [ null, %if.then ], !dbg !4058
  %call12 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond11, i32 0) #7, !dbg !4058
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call12, i64 0, i32 7, !dbg !4060
  %5 = load i32, i32* %flags, align 8, !dbg !4061
  %or = or i32 %5, 1, !dbg !4061
  store i32 %or, i32* %flags, align 8, !dbg !4061
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4062
  %tobool14 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !4062
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !4062

cond.true15:                                      ; preds = %cond.end10
  %base17 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !4062
  br label %cond.end19, !dbg !4062

cond.end19:                                       ; preds = %cond.end10, %cond.true15
  %cond20 = phi %struct.VEC_edge_base* [ %base17, %cond.true15 ], [ null, %cond.end10 ], !dbg !4062
  %call21 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond20, i32 0) #7, !dbg !4062
  %flags22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 7, !dbg !4063
  %7 = load i32, i32* %flags22, align 8, !dbg !4064
  %and = and i32 %7, -3073, !dbg !4064
  store i32 %and, i32* %flags22, align 8, !dbg !4064
  %8 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4065
  %tobool24 = icmp eq %struct.VEC_edge_gc* %8, null, !dbg !4065
  br i1 %tobool24, label %cond.end29, label %cond.true25, !dbg !4065

cond.true25:                                      ; preds = %cond.end19
  %base27 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %8, i64 0, i32 0, !dbg !4065
  br label %cond.end29, !dbg !4065

cond.end29:                                       ; preds = %cond.end19, %cond.true25
  %cond30 = phi %struct.VEC_edge_base* [ %base27, %cond.true25 ], [ null, %cond.end19 ], !dbg !4065
  %call31 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond30, i32 0) #7, !dbg !4065
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 8, !dbg !4066
  store i32 10000, i32* %probability, align 4, !dbg !4067
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4068
  %tobool33 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !4068
  br i1 %tobool33, label %cond.end38, label %cond.true34, !dbg !4068

cond.true34:                                      ; preds = %cond.end29
  %base36 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !4068
  br label %cond.end38, !dbg !4068

cond.end38:                                       ; preds = %cond.end29, %cond.true34
  %cond39 = phi %struct.VEC_edge_base* [ %base36, %cond.true34 ], [ null, %cond.end29 ], !dbg !4068
  %call40 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond39, i32 1) #7, !dbg !4068
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 9, !dbg !4069
  %10 = load i64, i64* %count, align 8, !dbg !4069
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4070
  %tobool42 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !4070
  br i1 %tobool42, label %cond.end47, label %cond.true43, !dbg !4070

cond.true43:                                      ; preds = %cond.end38
  %base45 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !4070
  br label %cond.end47, !dbg !4070

cond.end47:                                       ; preds = %cond.end38, %cond.true43
  %cond48 = phi %struct.VEC_edge_base* [ %base45, %cond.true43 ], [ null, %cond.end38 ], !dbg !4070
  %call49 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond48, i32 0) #7, !dbg !4070
  %count50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call49, i64 0, i32 9, !dbg !4071
  %12 = load i64, i64* %count50, align 8, !dbg !4072
  %add = add nsw i64 %12, %10, !dbg !4072
  store i64 %add, i64* %count50, align 8, !dbg !4072
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4073
  %tobool52 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !4073
  br i1 %tobool52, label %cond.end57, label %cond.true53, !dbg !4073

cond.true53:                                      ; preds = %cond.end47
  %base55 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !4073
  br label %cond.end57, !dbg !4073

cond.end57:                                       ; preds = %cond.end47, %cond.true53
  %cond58 = phi %struct.VEC_edge_base* [ %base55, %cond.true53 ], [ null, %cond.end47 ], !dbg !4073
  %call59 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond58, i32 1) #7, !dbg !4073
  br label %if.end, !dbg !4074

if.else:                                          ; preds = %cond.end
  br i1 %tobool5, label %cond.true63, label %cond.end67, !dbg !4075

cond.true63:                                      ; preds = %if.else
  %base65 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !4075
  br label %cond.end67, !dbg !4075

cond.end67:                                       ; preds = %if.else, %cond.true63
  %cond68 = phi %struct.VEC_edge_base* [ %base65, %cond.true63 ], [ null, %if.else ], !dbg !4075
  %call69 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond68, i32 1) #7, !dbg !4075
  %flags70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call69, i64 0, i32 7, !dbg !4077
  %14 = load i32, i32* %flags70, align 8, !dbg !4078
  %or71 = or i32 %14, 1, !dbg !4078
  store i32 %or71, i32* %flags70, align 8, !dbg !4078
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4079
  %tobool73 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !4079
  br i1 %tobool73, label %cond.end78, label %cond.true74, !dbg !4079

cond.true74:                                      ; preds = %cond.end67
  %base76 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !4079
  br label %cond.end78, !dbg !4079

cond.end78:                                       ; preds = %cond.end67, %cond.true74
  %cond79 = phi %struct.VEC_edge_base* [ %base76, %cond.true74 ], [ null, %cond.end67 ], !dbg !4079
  %call80 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond79, i32 1) #7, !dbg !4079
  %flags81 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call80, i64 0, i32 7, !dbg !4080
  %16 = load i32, i32* %flags81, align 8, !dbg !4081
  %and82 = and i32 %16, -3073, !dbg !4081
  store i32 %and82, i32* %flags81, align 8, !dbg !4081
  %17 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4082
  %tobool84 = icmp eq %struct.VEC_edge_gc* %17, null, !dbg !4082
  br i1 %tobool84, label %cond.end89, label %cond.true85, !dbg !4082

cond.true85:                                      ; preds = %cond.end78
  %base87 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %17, i64 0, i32 0, !dbg !4082
  br label %cond.end89, !dbg !4082

cond.end89:                                       ; preds = %cond.end78, %cond.true85
  %cond90 = phi %struct.VEC_edge_base* [ %base87, %cond.true85 ], [ null, %cond.end78 ], !dbg !4082
  %call91 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond90, i32 1) #7, !dbg !4082
  %probability92 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call91, i64 0, i32 8, !dbg !4083
  store i32 10000, i32* %probability92, align 4, !dbg !4084
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4085
  %tobool94 = icmp eq %struct.VEC_edge_gc* %18, null, !dbg !4085
  br i1 %tobool94, label %cond.end99, label %cond.true95, !dbg !4085

cond.true95:                                      ; preds = %cond.end89
  %base97 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !4085
  br label %cond.end99, !dbg !4085

cond.end99:                                       ; preds = %cond.end89, %cond.true95
  %cond100 = phi %struct.VEC_edge_base* [ %base97, %cond.true95 ], [ null, %cond.end89 ], !dbg !4085
  %call101 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond100, i32 0) #7, !dbg !4085
  %count102 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call101, i64 0, i32 9, !dbg !4086
  %19 = load i64, i64* %count102, align 8, !dbg !4086
  %20 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4087
  %tobool104 = icmp eq %struct.VEC_edge_gc* %20, null, !dbg !4087
  br i1 %tobool104, label %cond.end109, label %cond.true105, !dbg !4087

cond.true105:                                     ; preds = %cond.end99
  %base107 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %20, i64 0, i32 0, !dbg !4087
  br label %cond.end109, !dbg !4087

cond.end109:                                      ; preds = %cond.end99, %cond.true105
  %cond110 = phi %struct.VEC_edge_base* [ %base107, %cond.true105 ], [ null, %cond.end99 ], !dbg !4087
  %call111 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond110, i32 1) #7, !dbg !4087
  %count112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call111, i64 0, i32 9, !dbg !4088
  %21 = load i64, i64* %count112, align 8, !dbg !4089
  %add113 = add nsw i64 %21, %19, !dbg !4089
  store i64 %add113, i64* %count112, align 8, !dbg !4089
  %22 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4090
  %tobool115 = icmp eq %struct.VEC_edge_gc* %22, null, !dbg !4090
  br i1 %tobool115, label %cond.end120, label %cond.true116, !dbg !4090

cond.true116:                                     ; preds = %cond.end109
  %base118 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %22, i64 0, i32 0, !dbg !4090
  br label %cond.end120, !dbg !4090

cond.end120:                                      ; preds = %cond.end109, %cond.true116
  %cond121 = phi %struct.VEC_edge_base* [ %base118, %cond.true116 ], [ null, %cond.end109 ], !dbg !4090
  %call122 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond121, i32 0) #7, !dbg !4090
  br label %if.end

if.end:                                           ; preds = %cond.end120, %cond.end57
  %call59.pn = phi %struct.edge_def* [ %call59, %cond.end57 ], [ %call122, %cond.end120 ]
  %block_to_remove.0.in = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call59.pn, i64 0, i32 1, !dbg !4056
  %block_to_remove.0 = load %struct.basic_block_def*, %struct.basic_block_def** %block_to_remove.0.in, align 8, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %block_to_remove.0, metadata !4046, metadata !DIExpression()), !dbg !4048
  tail call void @delete_basic_block(%struct.basic_block_def* %block_to_remove.0) #6, !dbg !4091
  %23 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4092
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #8, !dbg !4092
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %cond_block) #7, !dbg !4092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %23, i64 24, i1 false), !dbg !4092
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #8, !dbg !4092
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4047, metadata !DIExpression(DW_OP_deref)), !dbg !4048
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !4093
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4094
  %tobool124 = icmp eq %struct._IO_FILE* %24, null, !dbg !4094
  br i1 %tobool124, label %if.end130, label %land.lhs.true, !dbg !4096

land.lhs.true:                                    ; preds = %if.end
  %25 = load i32, i32* @dump_flags, align 4, !dbg !4097
  %and125 = and i32 %25, 8, !dbg !4098
  %tobool126 = icmp eq i32 %and125, 0, !dbg !4098
  br i1 %tobool126, label %if.end130, label %if.then127, !dbg !4099

if.then127:                                       ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond_block, i64 0, i32 9, !dbg !4100
  %26 = load i32, i32* %index, align 8, !dbg !4100
  %index128 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !4101
  %27 = load i32, i32* %index128, align 8, !dbg !4101
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 %26, i32 %27) #6, !dbg !4102
  br label %if.end130, !dbg !4102

if.end130:                                        ; preds = %land.lhs.true, %if.end, %if.then127
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4103
  ret void, !dbg !4103
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !4104 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4108, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !4109, metadata !DIExpression()), !dbg !4110
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !4111
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4112
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4112
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !4113
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !4114
  ret void, !dbg !4115
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4116 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %i, metadata !4121, metadata !DIExpression()), !dbg !4122
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !4123
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4124
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4125
}

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4126 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4130, metadata !DIExpression()), !dbg !4131
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4132
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4132
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4134
  br i1 %cmp, label %return, label %if.end, !dbg !4135

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4136
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4136
  %2 = load i64, i64* %1, align 8, !dbg !4136
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4137
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4138
  store i64 %2, i64* %3, align 8, !dbg !4138
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4139
  %5 = load i64, i64* %4, align 8, !dbg !4139
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4140
  %7 = load i64*, i64** %6, align 8, !dbg !4140
  store i64 %5, i64* %7, align 8, !dbg !4141
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4142
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4143
  br label %return, !dbg !4144

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4144
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4145 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4149, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4150, metadata !DIExpression()), !dbg !4152
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4153
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4155

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4156
  %bf.load = load i64, i64* %0, align 8, !dbg !4156
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4157
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4157
  br i1 %cmp, label %if.else, label %if.then, !dbg !4158

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4159
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4160
  br label %if.end, !dbg !4161

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4162
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4162
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4151, metadata !DIExpression()), !dbg !4152
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !4164
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4165
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4166 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4171, metadata !DIExpression()), !dbg !4172
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4173
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4174
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4175
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4175
  %1 = load i64, i64* %0, align 8, !dbg !4175
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4176
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4177
  store i64 %1, i64* %2, align 8, !dbg !4177
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4178
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4179
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4180
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4181
  ret void, !dbg !4182
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @operand_equal_for_phi_arg_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4183 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4185, metadata !DIExpression()), !dbg !4186
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !4187
  %tobool = icmp eq i8 %call, 0, !dbg !4187
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4187

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4187
  br label %cond.end, !dbg !4187

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4188
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4188
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4188
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4188

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4188
  br label %cond.end5, !dbg !4188

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4188
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !4188
  ret %struct.edge_def* %call7, !dbg !4189
}

declare dso_local i32 @real_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @duplicate_ssa_name(%union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local i32 @integer_nonzerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_nondebug_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4190 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4193, metadata !DIExpression()), !dbg !4195
  tail call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #7, !dbg !4196
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !4197
  %tobool = icmp eq i8 %call, 0, !dbg !4197
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4199

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !4200
  %call2 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call1) #7, !dbg !4201
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4201
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4202

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @gsi_prev_nondebug(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !4203
  br label %if.end, !dbg !4203

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void, !dbg !4204
}

declare dso_local void @gsi_move_before(%struct.gimple_stmt_iterator*, %struct.gimple_stmt_iterator*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev_nondebug(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4205 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4207, metadata !DIExpression()), !dbg !4208
  br label %do.body, !dbg !4209

do.body:                                          ; preds = %land.rhs, %entry
  tail call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) #7, !dbg !4210
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !4212
  %tobool = icmp eq i8 %call, 0, !dbg !4212
  br i1 %tobool, label %land.rhs, label %do.end, !dbg !4213

land.rhs:                                         ; preds = %do.body
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !4214
  %call2 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call1) #7, !dbg !4215
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4213
  br i1 %tobool3, label %do.end, label %do.body, !dbg !4216, !llvm.loop !4217

do.end:                                           ; preds = %land.rhs, %do.body
  ret void, !dbg !4219
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4220 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4222, metadata !DIExpression()), !dbg !4223
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4224
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4224
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !4225
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !4225
  %2 = load i64, i64* %1, align 8, !dbg !4225
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4226
  store i64 %2, i64* %3, align 8, !dbg !4226
  ret void, !dbg !4227
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
!llvm.module.flags = !{!2006, !2007, !2008}
!llvm.ident = !{!2009}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_phiopt", scope: !2, file: !3, line: 1279, type: !1972, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !653, globals: !1969, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-phiopt.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !384, !560, !599, !625, !631}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !378, line: 104, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383}
!380 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !385, line: 74, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!387 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!559 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !561, line: 51, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!563 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!598 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !561, line: 727, baseType: !7, size: 32, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!601 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!602 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!603 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!604 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!605 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!606 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!607 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!608 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!609 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!610 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!611 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!612 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!613 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!614 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!615 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!616 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!617 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!618 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!619 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!620 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!624 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !561, line: 80, baseType: !7, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630}
!627 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !632, line: 36, baseType: !7, size: 32, elements: !633)
!632 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!634 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!637 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!638 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!639 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!640 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!641 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!642 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!643 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!644 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!645 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!646 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!647 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!648 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!649 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!650 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!651 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!652 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!653 = !{!654, !655, !656, !657, !660, !661, !663, !7, !780, !727, !1959, !183, !1966, !703, !1967, !1311, !658, !625, !722, !631, !5}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!656 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !665, line: 111, baseType: !666)
!665 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !668)
!668 = !{!669, !1924, !1925, !1926, !1929, !1933, !1934, !1935, !1953, !1954, !1955, !1956, !1957, !1958}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !667, file: !135, line: 219, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !672, file: !135, line: 151, baseType: !675, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !677)
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !676, file: !135, line: 150, baseType: !7, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !676, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !676, file: !135, line: 150, baseType: !681, size: 64, offset: 64)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 64, elements: !825)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !665, line: 108, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !685)
!685 = !{!686, !687, !688, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !684, file: !135, line: 124, baseType: !666, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !684, file: !135, line: 125, baseType: !666, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !684, file: !135, line: 131, baseType: !689, size: 64, offset: 128)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !690)
!690 = !{!691, !1915}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !689, file: !135, line: 129, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !665, line: 66, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !695)
!695 = !{!696, !1913, !1914}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !694, file: !561, line: 145, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !665, line: 69, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !700)
!700 = !{!701, !1911, !1912}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !699, file: !561, line: 137, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !665, line: 58, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !705)
!705 = !{!706, !1758, !1768, !1774, !1779, !1784, !1791, !1797, !1803, !1808, !1822, !1827, !1833, !1838, !1848, !1853, !1869, !1876, !1883, !1889, !1894, !1900, !1906}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !704, file: !561, line: 738, baseType: !707, size: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !724, !725, !726}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !707, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !707, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !707, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !707, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !707, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !707, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !707, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !707, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !707, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !707, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !707, file: !561, line: 316, baseType: !720, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !721, line: 58, baseType: !722)
!721 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !723, line: 44, baseType: !7)
!723 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!724 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !707, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !707, file: !561, line: 323, baseType: !666, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !707, file: !561, line: 327, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !665, line: 56, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !730)
!730 = !{!731, !764, !770, !783, !802, !813, !818, !827, !833, !846, !854, !892, !1066, !1094, !1111, !1112, !1117, !1126, !1132, !1137, !1141, !1145, !1409, !1456, !1462, !1468, !1475, !1488, !1502, !1519, !1531, !1553, !1568, !1740}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !729, file: !151, line: 3372, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !732, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !732, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !732, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !732, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !732, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !732, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !732, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !732, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !732, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !732, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !732, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !732, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !732, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !732, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !732, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !732, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !732, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !732, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !732, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !732, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !732, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !732, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !732, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !732, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !732, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !732, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !732, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !732, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !732, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !732, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !729, file: !151, line: 3373, baseType: !765, size: 192)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !765, file: !151, line: 403, baseType: !732, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !765, file: !151, line: 404, baseType: !727, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !151, line: 405, baseType: !727, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !729, file: !151, line: 3374, baseType: !771, size: 320)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !771, file: !151, line: 1385, baseType: !765, size: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !771, file: !151, line: 1386, baseType: !775, size: 128, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !776, line: 58, baseType: !777)
!776 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 54, size: 128, elements: !778)
!778 = !{!779, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !777, file: !776, line: 56, baseType: !780, size: 64)
!780 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !777, file: !776, line: 57, baseType: !782, size: 64, offset: 64)
!782 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !729, file: !151, line: 3375, baseType: !784, size: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !151, line: 1398, baseType: !765, size: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !784, file: !151, line: 1399, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !790, line: 52, size: 256, elements: !791)
!790 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!791 = !{!792, !793, !794, !795, !796, !797, !798}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !789, file: !790, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !789, file: !790, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !789, file: !790, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !789, file: !790, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !789, file: !790, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !789, file: !790, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !789, file: !790, line: 62, baseType: !799, size: 192, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 192, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 3)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !729, file: !151, line: 3376, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !151, line: 1409, baseType: !765, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !803, file: !151, line: 1410, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !809, line: 27, size: 192, elements: !810)
!809 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !808, file: !809, line: 29, baseType: !775, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !808, file: !809, line: 30, baseType: !5, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !729, file: !151, line: 3377, baseType: !814, size: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !151, line: 1438, baseType: !765, size: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !814, file: !151, line: 1439, baseType: !727, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !729, file: !151, line: 3378, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !151, line: 1419, baseType: !765, size: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !819, file: !151, line: 1420, baseType: !656, size: 32, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !819, file: !151, line: 1421, baseType: !824, size: 8, offset: 224)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 8, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 1)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !729, file: !151, line: 3379, baseType: !828, size: 320)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !151, line: 1429, baseType: !765, size: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !828, file: !151, line: 1430, baseType: !727, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !828, file: !151, line: 1431, baseType: !727, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !729, file: !151, line: 3380, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !151, line: 1461, baseType: !765, size: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !834, file: !151, line: 1462, baseType: !838, size: 128, offset: 192)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !839, line: 31, size: 128, elements: !840)
!839 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!840 = !{!841, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !838, file: !839, line: 32, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !838, file: !839, line: 33, baseType: !7, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !838, file: !839, line: 34, baseType: !7, size: 32, offset: 96)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !729, file: !151, line: 3381, baseType: !847, size: 384)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !848)
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !847, file: !151, line: 2508, baseType: !765, size: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !847, file: !151, line: 2509, baseType: !720, size: 32, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !847, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !847, file: !151, line: 2511, baseType: !727, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !847, file: !151, line: 2512, baseType: !727, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !729, file: !151, line: 3382, baseType: !855, size: 896)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !151, line: 2653, baseType: !847, size: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !855, file: !151, line: 2654, baseType: !727, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !855, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !855, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !855, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !855, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !855, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !855, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !855, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !855, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !855, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !855, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !855, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !855, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !855, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !855, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !855, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !855, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !855, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !855, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !855, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !855, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !855, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !855, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !855, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !855, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !855, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !855, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !855, file: !151, line: 2705, baseType: !727, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !855, file: !151, line: 2706, baseType: !727, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !855, file: !151, line: 2707, baseType: !727, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !855, file: !151, line: 2708, baseType: !727, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !855, file: !151, line: 2711, baseType: !890, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !729, file: !151, line: 3383, baseType: !893, size: 960)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !893, file: !151, line: 2757, baseType: !855, size: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !893, file: !151, line: 2758, baseType: !897, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !665, line: 50, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !900, line: 240, size: 384, elements: !901)
!900 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !899, file: !900, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !899, file: !900, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !899, file: !900, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !899, file: !900, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !899, file: !900, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !899, file: !900, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !899, file: !900, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !899, file: !900, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !899, file: !900, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !899, file: !900, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !899, file: !900, line: 321, baseType: !913, size: 320, offset: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !900, line: 315, size: 320, elements: !914)
!914 = !{!915, !1033, !1035, !1064, !1065}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !913, file: !900, line: 316, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 64, elements: !825)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !900, line: 183, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !900, line: 166, size: 64, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !932, !933, !945, !948, !1008, !1009, !1010, !1023, !1030}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !918, file: !900, line: 168, baseType: !656, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !918, file: !900, line: 169, baseType: !7, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !918, file: !900, line: 170, baseType: !661, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !918, file: !900, line: 171, baseType: !897, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !918, file: !900, line: 172, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !665, line: 53, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !900, line: 359, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !927, file: !900, line: 360, baseType: !656, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !927, file: !900, line: 361, baseType: !931, size: 64, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 64, elements: !825)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !918, file: !900, line: 173, baseType: !5, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !918, file: !900, line: 174, baseType: !934, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !900, line: 133, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !900, line: 115, size: 32, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !935, file: !900, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !935, file: !900, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !935, file: !900, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !935, file: !900, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !935, file: !900, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !935, file: !900, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !935, file: !900, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !935, file: !900, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !918, file: !900, line: 175, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !900, line: 175, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !918, file: !900, line: 176, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !951, line: 75, size: 256, elements: !952)
!951 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!952 = !{!953, !967, !968, !969}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !950, file: !951, line: 76, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !951, line: 68, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !951, line: 63, size: 320, elements: !957)
!957 = !{!958, !960, !961, !962}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !951, line: 64, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !956, file: !951, line: 65, baseType: !959, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !956, file: !951, line: 66, baseType: !7, size: 32, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !956, file: !951, line: 67, baseType: !963, size: 128, offset: 192)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !965)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !951, line: 29, baseType: !780)
!965 = !{!966}
!966 = !DISubrange(count: 2)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !950, file: !951, line: 77, baseType: !954, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !950, file: !951, line: 78, baseType: !7, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !950, file: !951, line: 79, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !951, line: 49, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !951, line: 45, size: 832, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !972, file: !951, line: 46, baseType: !959, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !972, file: !951, line: 47, baseType: !949, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !972, file: !951, line: 48, baseType: !977, size: 704, offset: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !978, line: 164, size: 704, elements: !979)
!978 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!979 = !{!980, !981, !991, !992, !993, !994, !995, !996, !1000, !1004, !1005, !1006, !1007}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !977, file: !978, line: 166, baseType: !782, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !977, file: !978, line: 167, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !978, line: 157, size: 192, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !983, file: !978, line: 159, baseType: !658, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !983, file: !978, line: 160, baseType: !982, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !983, file: !978, line: 161, baseType: !988, size: 32, offset: 128)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 32, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 4)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !977, file: !978, line: 168, baseType: !658, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !977, file: !978, line: 169, baseType: !658, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !977, file: !978, line: 170, baseType: !658, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !977, file: !978, line: 171, baseType: !782, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !977, file: !978, line: 172, baseType: !656, size: 32, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !977, file: !978, line: 176, baseType: !997, size: 64, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!982, !660, !782}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !977, file: !978, line: 177, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !660, !982}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !977, file: !978, line: 178, baseType: !660, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !977, file: !978, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !977, file: !978, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !977, file: !978, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !918, file: !900, line: 177, baseType: !727, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !918, file: !900, line: 178, baseType: !666, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !918, file: !900, line: 179, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !900, line: 150, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !900, line: 142, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1021, !1022}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1013, file: !900, line: 144, baseType: !727, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1013, file: !900, line: 145, baseType: !897, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1013, file: !900, line: 146, baseType: !897, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1013, file: !900, line: 147, baseType: !1019, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1020, line: 31, baseType: !656)
!1020 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1013, file: !900, line: 148, baseType: !7, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1013, file: !900, line: 149, baseType: !655, size: 8, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !918, file: !900, line: 180, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !900, line: 162, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !900, line: 159, size: 128, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1026, file: !900, line: 160, baseType: !727, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1026, file: !900, line: 161, baseType: !782, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !918, file: !900, line: 181, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !900, line: 181, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !913, file: !900, line: 317, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 64, elements: !825)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !913, file: !900, line: 318, baseType: !1036, size: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !900, line: 188, size: 320, elements: !1037)
!1037 = !{!1038, !1040, !1063}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1036, file: !900, line: 190, baseType: !1039, size: 192)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 192, elements: !800)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1036, file: !900, line: 193, baseType: !1041, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !900, line: 206, size: 320, elements: !1043)
!1043 = !{!1044, !1048, !1049, !1050, !1062}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1042, file: !900, line: 208, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !665, line: 62, baseType: !1047)
!1047 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !665, line: 61, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1042, file: !900, line: 211, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1042, file: !900, line: 214, baseType: !782, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1042, file: !900, line: 224, baseType: !1051, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !900, line: 202, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !900, line: 202, size: 128, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1053, file: !900, line: 202, baseType: !1056, size: 128)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !900, line: 200, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !900, line: 200, size: 128, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1057, file: !900, line: 200, baseType: !7, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1057, file: !900, line: 200, baseType: !7, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1057, file: !900, line: 200, baseType: !931, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1042, file: !900, line: 234, baseType: !1051, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1036, file: !900, line: 197, baseType: !782, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !913, file: !900, line: 319, baseType: !789, size: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !913, file: !900, line: 320, baseType: !808, size: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !729, file: !151, line: 3384, baseType: !1067, size: 1472)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !1068)
!1068 = !{!1069, !1090, !1091, !1092, !1093}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1067, file: !151, line: 3115, baseType: !1070, size: 1216)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1070, file: !151, line: 2985, baseType: !893, size: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1070, file: !151, line: 2986, baseType: !727, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1070, file: !151, line: 2987, baseType: !727, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1070, file: !151, line: 2988, baseType: !727, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1070, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1070, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1070, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1070, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1070, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1070, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1070, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1070, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1070, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1070, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1070, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1070, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1070, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1070, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1067, file: !151, line: 3117, baseType: !727, size: 64, offset: 1216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1067, file: !151, line: 3119, baseType: !727, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1067, file: !151, line: 3121, baseType: !727, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1067, file: !151, line: 3123, baseType: !727, size: 64, offset: 1408)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !729, file: !151, line: 3385, baseType: !1095, size: 1088)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !151, line: 2875, baseType: !893, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1095, file: !151, line: 2876, baseType: !897, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1095, file: !151, line: 2877, baseType: !1100, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1102, line: 172, size: 128, elements: !1103)
!1102 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1101, file: !1102, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1101, file: !1102, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1101, file: !1102, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1101, file: !1102, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1101, file: !1102, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1101, file: !1102, line: 195, baseType: !7, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1101, file: !1102, line: 199, baseType: !727, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !729, file: !151, line: 3386, baseType: !1070, size: 1216)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !729, file: !151, line: 3387, baseType: !1113, size: 1280)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1113, file: !151, line: 3094, baseType: !1070, size: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1113, file: !151, line: 3095, baseType: !1100, size: 64, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !729, file: !151, line: 3388, baseType: !1118, size: 1216)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1118, file: !151, line: 2825, baseType: !855, size: 896)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1118, file: !151, line: 2827, baseType: !727, size: 64, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1118, file: !151, line: 2828, baseType: !727, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1118, file: !151, line: 2829, baseType: !727, size: 64, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1118, file: !151, line: 2830, baseType: !727, size: 64, offset: 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1118, file: !151, line: 2831, baseType: !727, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !729, file: !151, line: 3389, baseType: !1127, size: 1024)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1127, file: !151, line: 2851, baseType: !893, size: 960)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1127, file: !151, line: 2852, baseType: !656, size: 32, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1127, file: !151, line: 2853, baseType: !656, size: 32, offset: 992)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !729, file: !151, line: 3390, baseType: !1133, size: 1024)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1133, file: !151, line: 2858, baseType: !893, size: 960)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1133, file: !151, line: 2859, baseType: !1100, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !729, file: !151, line: 3391, baseType: !1138, size: 960)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !151, line: 2863, baseType: !893, size: 960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !729, file: !151, line: 3392, baseType: !1142, size: 1472)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !151, line: 3305, baseType: !1067, size: 1472)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !729, file: !151, line: 3393, baseType: !1146, size: 1792)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !1147)
!1147 = !{!1148, !1149, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1146, file: !151, line: 3249, baseType: !1067, size: 1472)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1146, file: !151, line: 3251, baseType: !1150, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1152, line: 463, size: 1152, elements: !1153)
!1152 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1153 = !{!1154, !1157, !1187, !1188, !1329, !1332, !1333, !1334, !1335, !1336, !1337, !1361, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1151, file: !1152, line: 464, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1152, line: 464, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1151, file: !1152, line: 467, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1176, !1177, !1178, !1179, !1180, !1181, !1183, !1185, !1186}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1159, file: !135, line: 377, baseType: !664, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1159, file: !135, line: 378, baseType: !664, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1159, file: !135, line: 381, baseType: !1164, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1166, file: !135, line: 282, baseType: !1169, size: 128)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1170, file: !135, line: 281, baseType: !7, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1170, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1170, file: !135, line: 281, baseType: !1175, size: 64, offset: 64)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 64, elements: !825)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1159, file: !135, line: 384, baseType: !656, size: 32, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1159, file: !135, line: 387, baseType: !656, size: 32, offset: 224)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1159, file: !135, line: 390, baseType: !656, size: 32, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1159, file: !135, line: 394, baseType: !1164, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1159, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1159, file: !135, line: 399, baseType: !1182, size: 64, offset: 416)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !965)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1159, file: !135, line: 402, baseType: !1184, size: 64, offset: 480)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !965)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1159, file: !135, line: 406, baseType: !656, size: 32, offset: 544)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1159, file: !135, line: 409, baseType: !656, size: 32, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1151, file: !1152, line: 470, baseType: !693, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1151, file: !1152, line: 473, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1102, line: 39, size: 1152, elements: !1191)
!1191 = !{!1192, !1244, !1257, !1270, !1271, !1283, !1284, !1288, !1289, !1290, !1291, !1292}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1190, file: !1102, line: 41, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1194, line: 144, baseType: !1195)
!1194 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1194, line: 100, size: 896, elements: !1197)
!1197 = !{!1198, !1206, !1211, !1216, !1218, !1221, !1222, !1223, !1224, !1225, !1230, !1232, !1233, !1238, !1243}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1196, file: !1194, line: 102, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1194, line: 52, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1194, line: 47, baseType: !7)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1196, file: !1194, line: 105, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1194, line: 59, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!656, !1204, !1204}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1196, file: !1194, line: 108, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1194, line: 63, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !660}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1196, file: !1194, line: 111, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1196, file: !1194, line: 114, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1220, line: 46, baseType: !780)
!1220 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1196, file: !1194, line: 117, baseType: !1219, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1196, file: !1194, line: 120, baseType: !1219, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1196, file: !1194, line: 124, baseType: !7, size: 32, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1196, file: !1194, line: 128, baseType: !7, size: 32, offset: 480)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1196, file: !1194, line: 131, baseType: !1226, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1194, line: 75, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!660, !1219, !1219}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1196, file: !1194, line: 132, baseType: !1231, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1194, line: 78, baseType: !1213)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1196, file: !1194, line: 135, baseType: !660, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1196, file: !1194, line: 136, baseType: !1234, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1194, line: 82, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!660, !660, !1219, !1219}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1196, file: !1194, line: 137, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1194, line: 83, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !660, !660}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1196, file: !1194, line: 141, baseType: !7, size: 32, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1190, file: !1102, line: 48, baseType: !1245, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1247, file: !561, line: 35, baseType: !1250, size: 128)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1251, file: !561, line: 33, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1251, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1251, file: !561, line: 33, baseType: !1256, size: 64, offset: 64)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 64, elements: !825)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1190, file: !1102, line: 51, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1260, file: !151, line: 183, baseType: !1263, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1264, file: !151, line: 182, baseType: !7, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1264, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !151, line: 182, baseType: !1269, size: 64, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 64, elements: !825)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1190, file: !1102, line: 54, baseType: !727, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1190, file: !1102, line: 57, baseType: !1272, size: 128, offset: 256)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1273, line: 31, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1272, file: !1273, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1272, file: !1273, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1272, file: !1273, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1272, file: !1273, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1272, file: !1273, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1272, file: !1273, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1272, file: !1273, line: 56, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !665, line: 47, baseType: !949)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1190, file: !1102, line: 60, baseType: !1272, size: 128, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1190, file: !1102, line: 64, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1287, line: 33, flags: DIFlagFwdDecl)
!1287 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1190, file: !1102, line: 67, baseType: !727, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1190, file: !1102, line: 73, baseType: !1193, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1190, file: !1102, line: 77, baseType: !1282, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1190, file: !1102, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1190, file: !1102, line: 82, baseType: !1293, size: 320, offset: 832)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1294, line: 62, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1295 = !{!1296, !1302, !1303, !1304, !1305, !1312}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1293, file: !1294, line: 63, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1294, line: 56, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1298, file: !1294, line: 57, baseType: !1297, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1298, file: !1294, line: 58, baseType: !824, size: 8, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1293, file: !1294, line: 64, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1293, file: !1294, line: 66, baseType: !7, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1293, file: !1294, line: 68, baseType: !655, size: 8, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1293, file: !1294, line: 70, baseType: !1306, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1294, line: 37, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1307, file: !1294, line: 39, baseType: !1306, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1307, file: !1294, line: 40, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1293, file: !1294, line: 71, baseType: !1313, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1294, line: 45, size: 320, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1314, file: !1294, line: 47, baseType: !1313, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1314, file: !1294, line: 48, baseType: !1318, size: 256, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1319)
!1319 = !{!1320, !1322, !1323, !1328}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1318, file: !151, line: 1884, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !151, line: 1885, baseType: !1321, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1318, file: !151, line: 1891, baseType: !1324, size: 64, offset: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !151, line: 1891, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1324, file: !151, line: 1891, baseType: !702, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1324, file: !151, line: 1891, baseType: !727, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1318, file: !151, line: 1892, baseType: !1311, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1151, file: !1152, line: 476, baseType: !1330, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1152, line: 476, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1151, file: !1152, line: 479, baseType: !1193, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1151, file: !1152, line: 484, baseType: !727, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1151, file: !1152, line: 488, baseType: !727, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1151, file: !1152, line: 493, baseType: !727, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1151, file: !1152, line: 496, baseType: !727, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1151, file: !1152, line: 501, baseType: !1338, size: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1340)
!1340 = !{!1341, !1344, !1345, !1346, !1347, !1349, !1350, !1355, !1356, !1357, !1358, !1359, !1360}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1339, file: !146, line: 2356, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1339, file: !146, line: 2357, baseType: !661, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1339, file: !146, line: 2358, baseType: !656, size: 32, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1339, file: !146, line: 2359, baseType: !656, size: 32, offset: 160)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1339, file: !146, line: 2360, baseType: !1348, size: 128, offset: 192)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 128, elements: !989)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1339, file: !146, line: 2364, baseType: !656, size: 32, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1339, file: !146, line: 2367, baseType: !1351, size: 128, offset: 384)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1351, file: !146, line: 2351, baseType: !897, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1351, file: !146, line: 2352, baseType: !782, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1339, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1339, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1339, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1339, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1339, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1339, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1151, file: !1152, line: 504, baseType: !1362, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1152, line: 504, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1151, file: !1152, line: 507, baseType: !1193, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1151, file: !1152, line: 510, baseType: !656, size: 32, offset: 832)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1151, file: !1152, line: 513, baseType: !656, size: 32, offset: 864)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1151, file: !1152, line: 516, baseType: !720, size: 32, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1151, file: !1152, line: 519, baseType: !720, size: 32, offset: 928)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1151, file: !1152, line: 522, baseType: !7, size: 32, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1151, file: !1152, line: 523, baseType: !7, size: 32, offset: 992)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1151, file: !1152, line: 528, baseType: !661, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1151, file: !1152, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1151, file: !1152, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1151, file: !1152, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1151, file: !1152, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1151, file: !1152, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1151, file: !1152, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1151, file: !1152, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1151, file: !1152, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1151, file: !1152, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1151, file: !1152, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1151, file: !1152, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1151, file: !1152, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1151, file: !1152, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1151, file: !1152, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1151, file: !1152, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1151, file: !1152, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1146, file: !151, line: 3254, baseType: !727, size: 64, offset: 1536)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1146, file: !151, line: 3257, baseType: !727, size: 64, offset: 1600)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1146, file: !151, line: 3258, baseType: !727, size: 64, offset: 1664)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1146, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1146, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1146, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1146, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1146, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1146, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1146, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1146, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1146, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1146, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1146, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1146, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1146, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1146, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1146, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1146, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1146, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1146, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !151, line: 3394, baseType: !1410, size: 1344)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1410, file: !151, line: 2280, baseType: !765, size: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1410, file: !151, line: 2281, baseType: !727, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1410, file: !151, line: 2282, baseType: !727, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1410, file: !151, line: 2283, baseType: !727, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1410, file: !151, line: 2284, baseType: !727, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1410, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1410, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1410, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1410, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1410, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1410, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1410, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1410, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1410, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1410, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1410, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1410, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1410, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1410, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1410, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1410, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1410, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1410, file: !151, line: 2306, baseType: !1019, size: 32, offset: 544)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1410, file: !151, line: 2307, baseType: !727, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1410, file: !151, line: 2308, baseType: !727, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1410, file: !151, line: 2314, baseType: !1438, size: 64, offset: 704)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1438, file: !151, line: 2310, baseType: !656, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1438, file: !151, line: 2311, baseType: !661, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1438, file: !151, line: 2312, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1410, file: !151, line: 2315, baseType: !727, size: 64, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1410, file: !151, line: 2316, baseType: !727, size: 64, offset: 832)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1410, file: !151, line: 2317, baseType: !727, size: 64, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1410, file: !151, line: 2318, baseType: !727, size: 64, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1410, file: !151, line: 2319, baseType: !727, size: 64, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1410, file: !151, line: 2320, baseType: !727, size: 64, offset: 1088)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1410, file: !151, line: 2321, baseType: !727, size: 64, offset: 1152)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1410, file: !151, line: 2322, baseType: !727, size: 64, offset: 1216)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1410, file: !151, line: 2324, baseType: !1454, size: 64, offset: 1280)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !729, file: !151, line: 3395, baseType: !1457, size: 320)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1457, file: !151, line: 1470, baseType: !765, size: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1457, file: !151, line: 1471, baseType: !727, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1457, file: !151, line: 1472, baseType: !727, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !729, file: !151, line: 3396, baseType: !1463, size: 320)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1464)
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1463, file: !151, line: 1483, baseType: !765, size: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1463, file: !151, line: 1484, baseType: !656, size: 32, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1463, file: !151, line: 1485, baseType: !1269, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !729, file: !151, line: 3397, baseType: !1469, size: 384)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1469, file: !151, line: 1830, baseType: !765, size: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1469, file: !151, line: 1831, baseType: !720, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1469, file: !151, line: 1832, baseType: !727, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1469, file: !151, line: 1835, baseType: !1269, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !729, file: !151, line: 3398, baseType: !1476, size: 704)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1487}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1476, file: !151, line: 1899, baseType: !765, size: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1476, file: !151, line: 1902, baseType: !727, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1476, file: !151, line: 1905, baseType: !702, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1476, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1476, file: !151, line: 1911, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1102, line: 117, size: 128, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1484, file: !1102, line: 120, baseType: !1272, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1476, file: !151, line: 1914, baseType: !1318, size: 256, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !729, file: !151, line: 3399, baseType: !1489, size: 704)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1489, file: !151, line: 2009, baseType: !765, size: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1489, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1489, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1489, file: !151, line: 2014, baseType: !720, size: 32, offset: 224)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1489, file: !151, line: 2016, baseType: !727, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1489, file: !151, line: 2017, baseType: !1258, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1489, file: !151, line: 2019, baseType: !727, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1489, file: !151, line: 2020, baseType: !727, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1489, file: !151, line: 2021, baseType: !727, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1489, file: !151, line: 2022, baseType: !727, size: 64, offset: 576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1489, file: !151, line: 2023, baseType: !727, size: 64, offset: 640)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !729, file: !151, line: 3400, baseType: !1503, size: 832)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1503, file: !151, line: 2431, baseType: !765, size: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1503, file: !151, line: 2433, baseType: !727, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1503, file: !151, line: 2434, baseType: !727, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1503, file: !151, line: 2435, baseType: !727, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1503, file: !151, line: 2436, baseType: !727, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1503, file: !151, line: 2437, baseType: !1258, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1503, file: !151, line: 2438, baseType: !727, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1503, file: !151, line: 2440, baseType: !727, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1503, file: !151, line: 2441, baseType: !727, size: 64, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1503, file: !151, line: 2443, baseType: !1515, size: 128, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1516, file: !151, line: 182, baseType: !1263, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !729, file: !151, line: 3401, baseType: !1520, size: 320)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1521)
!1521 = !{!1522, !1523, !1530}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1520, file: !151, line: 3329, baseType: !765, size: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1520, file: !151, line: 3330, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1525, file: !151, line: 3322, baseType: !1524, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1525, file: !151, line: 3323, baseType: !1524, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1525, file: !151, line: 3324, baseType: !727, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1520, file: !151, line: 3331, baseType: !1524, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !729, file: !151, line: 3402, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1532, file: !151, line: 1541, baseType: !765, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1532, file: !151, line: 1542, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1538, file: !151, line: 1538, baseType: !1541, size: 192)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1542, file: !151, line: 1537, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1542, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1542, file: !151, line: 1537, baseType: !1547, size: 128, offset: 64)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1548, size: 128, elements: !825)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1549, file: !151, line: 1533, baseType: !727, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1549, file: !151, line: 1534, baseType: !727, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !729, file: !151, line: 3403, baseType: !1554, size: 512)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1565, !1566, !1567}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1554, file: !151, line: 1939, baseType: !765, size: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1554, file: !151, line: 1940, baseType: !720, size: 32, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1554, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1554, file: !151, line: 1946, baseType: !1560, size: 32, offset: 256)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1560, file: !151, line: 1943, baseType: !169, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1560, file: !151, line: 1944, baseType: !176, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1560, file: !151, line: 1945, baseType: !183, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1554, file: !151, line: 1950, baseType: !692, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1554, file: !151, line: 1951, baseType: !692, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1554, file: !151, line: 1953, baseType: !1269, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !729, file: !151, line: 3404, baseType: !1569, size: 1664)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1569, file: !151, line: 3338, baseType: !765, size: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1569, file: !151, line: 3341, baseType: !1573, size: 1472, offset: 192)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1574, line: 410, size: 1472, elements: !1575)
!1574 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1573, file: !1574, line: 412, baseType: !656, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1573, file: !1574, line: 413, baseType: !656, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1573, file: !1574, line: 414, baseType: !656, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1573, file: !1574, line: 415, baseType: !656, size: 32, offset: 96)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1573, file: !1574, line: 416, baseType: !656, size: 32, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1573, file: !1574, line: 417, baseType: !656, size: 32, offset: 160)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1573, file: !1574, line: 418, baseType: !655, size: 8, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1573, file: !1574, line: 419, baseType: !655, size: 8, offset: 200)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1573, file: !1574, line: 420, baseType: !1585, size: 8, offset: 208)
!1585 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1573, file: !1574, line: 421, baseType: !1585, size: 8, offset: 216)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1573, file: !1574, line: 422, baseType: !1585, size: 8, offset: 224)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1573, file: !1574, line: 423, baseType: !1585, size: 8, offset: 232)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1573, file: !1574, line: 424, baseType: !1585, size: 8, offset: 240)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1573, file: !1574, line: 425, baseType: !1585, size: 8, offset: 248)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1573, file: !1574, line: 426, baseType: !1585, size: 8, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1573, file: !1574, line: 427, baseType: !1585, size: 8, offset: 264)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1573, file: !1574, line: 428, baseType: !1585, size: 8, offset: 272)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1573, file: !1574, line: 429, baseType: !1585, size: 8, offset: 280)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1573, file: !1574, line: 430, baseType: !1585, size: 8, offset: 288)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1573, file: !1574, line: 431, baseType: !1585, size: 8, offset: 296)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1573, file: !1574, line: 432, baseType: !1585, size: 8, offset: 304)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1573, file: !1574, line: 433, baseType: !1585, size: 8, offset: 312)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1573, file: !1574, line: 434, baseType: !1585, size: 8, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1573, file: !1574, line: 435, baseType: !1585, size: 8, offset: 328)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1573, file: !1574, line: 436, baseType: !1585, size: 8, offset: 336)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1573, file: !1574, line: 437, baseType: !1585, size: 8, offset: 344)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1573, file: !1574, line: 438, baseType: !1585, size: 8, offset: 352)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1573, file: !1574, line: 439, baseType: !1585, size: 8, offset: 360)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1573, file: !1574, line: 440, baseType: !1585, size: 8, offset: 368)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1573, file: !1574, line: 441, baseType: !1585, size: 8, offset: 376)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1573, file: !1574, line: 442, baseType: !1585, size: 8, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1573, file: !1574, line: 443, baseType: !1585, size: 8, offset: 392)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1573, file: !1574, line: 444, baseType: !1585, size: 8, offset: 400)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1573, file: !1574, line: 445, baseType: !1585, size: 8, offset: 408)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1573, file: !1574, line: 446, baseType: !1585, size: 8, offset: 416)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1573, file: !1574, line: 447, baseType: !1585, size: 8, offset: 424)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1573, file: !1574, line: 448, baseType: !1585, size: 8, offset: 432)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1573, file: !1574, line: 449, baseType: !1585, size: 8, offset: 440)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1573, file: !1574, line: 450, baseType: !1585, size: 8, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1573, file: !1574, line: 451, baseType: !1585, size: 8, offset: 456)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1573, file: !1574, line: 452, baseType: !1585, size: 8, offset: 464)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1573, file: !1574, line: 453, baseType: !1585, size: 8, offset: 472)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1573, file: !1574, line: 454, baseType: !1585, size: 8, offset: 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1573, file: !1574, line: 455, baseType: !1585, size: 8, offset: 488)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1573, file: !1574, line: 456, baseType: !1585, size: 8, offset: 496)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1573, file: !1574, line: 457, baseType: !1585, size: 8, offset: 504)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1573, file: !1574, line: 458, baseType: !1585, size: 8, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1573, file: !1574, line: 459, baseType: !1585, size: 8, offset: 520)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1573, file: !1574, line: 460, baseType: !1585, size: 8, offset: 528)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1573, file: !1574, line: 461, baseType: !1585, size: 8, offset: 536)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1573, file: !1574, line: 462, baseType: !1585, size: 8, offset: 544)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1573, file: !1574, line: 463, baseType: !1585, size: 8, offset: 552)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1573, file: !1574, line: 464, baseType: !1585, size: 8, offset: 560)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1573, file: !1574, line: 465, baseType: !1585, size: 8, offset: 568)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1573, file: !1574, line: 466, baseType: !1585, size: 8, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1573, file: !1574, line: 467, baseType: !1585, size: 8, offset: 584)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1573, file: !1574, line: 468, baseType: !1585, size: 8, offset: 592)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1573, file: !1574, line: 469, baseType: !1585, size: 8, offset: 600)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1573, file: !1574, line: 470, baseType: !1585, size: 8, offset: 608)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1573, file: !1574, line: 471, baseType: !1585, size: 8, offset: 616)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1573, file: !1574, line: 472, baseType: !1585, size: 8, offset: 624)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1573, file: !1574, line: 473, baseType: !1585, size: 8, offset: 632)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1573, file: !1574, line: 474, baseType: !1585, size: 8, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1573, file: !1574, line: 475, baseType: !1585, size: 8, offset: 648)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1573, file: !1574, line: 476, baseType: !1585, size: 8, offset: 656)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1573, file: !1574, line: 477, baseType: !1585, size: 8, offset: 664)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1573, file: !1574, line: 478, baseType: !1585, size: 8, offset: 672)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1573, file: !1574, line: 479, baseType: !1585, size: 8, offset: 680)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1573, file: !1574, line: 480, baseType: !1585, size: 8, offset: 688)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1573, file: !1574, line: 481, baseType: !1585, size: 8, offset: 696)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1573, file: !1574, line: 482, baseType: !1585, size: 8, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1573, file: !1574, line: 483, baseType: !1585, size: 8, offset: 712)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1573, file: !1574, line: 484, baseType: !1585, size: 8, offset: 720)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1573, file: !1574, line: 485, baseType: !1585, size: 8, offset: 728)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1573, file: !1574, line: 486, baseType: !1585, size: 8, offset: 736)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1573, file: !1574, line: 487, baseType: !1585, size: 8, offset: 744)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1573, file: !1574, line: 488, baseType: !1585, size: 8, offset: 752)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1573, file: !1574, line: 489, baseType: !1585, size: 8, offset: 760)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1573, file: !1574, line: 490, baseType: !1585, size: 8, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1573, file: !1574, line: 491, baseType: !1585, size: 8, offset: 776)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1573, file: !1574, line: 492, baseType: !1585, size: 8, offset: 784)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1573, file: !1574, line: 493, baseType: !1585, size: 8, offset: 792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1573, file: !1574, line: 494, baseType: !1585, size: 8, offset: 800)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1573, file: !1574, line: 495, baseType: !1585, size: 8, offset: 808)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1573, file: !1574, line: 496, baseType: !1585, size: 8, offset: 816)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1573, file: !1574, line: 497, baseType: !1585, size: 8, offset: 824)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1573, file: !1574, line: 498, baseType: !1585, size: 8, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1573, file: !1574, line: 499, baseType: !1585, size: 8, offset: 840)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1573, file: !1574, line: 500, baseType: !1585, size: 8, offset: 848)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1573, file: !1574, line: 501, baseType: !1585, size: 8, offset: 856)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1573, file: !1574, line: 502, baseType: !1585, size: 8, offset: 864)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1573, file: !1574, line: 503, baseType: !1585, size: 8, offset: 872)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1573, file: !1574, line: 504, baseType: !1585, size: 8, offset: 880)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1573, file: !1574, line: 505, baseType: !1585, size: 8, offset: 888)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1573, file: !1574, line: 506, baseType: !1585, size: 8, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1573, file: !1574, line: 507, baseType: !1585, size: 8, offset: 904)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1573, file: !1574, line: 508, baseType: !1585, size: 8, offset: 912)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1573, file: !1574, line: 509, baseType: !1585, size: 8, offset: 920)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1573, file: !1574, line: 510, baseType: !1585, size: 8, offset: 928)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1573, file: !1574, line: 511, baseType: !1585, size: 8, offset: 936)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1573, file: !1574, line: 512, baseType: !1585, size: 8, offset: 944)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1573, file: !1574, line: 513, baseType: !1585, size: 8, offset: 952)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1573, file: !1574, line: 514, baseType: !1585, size: 8, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1573, file: !1574, line: 515, baseType: !1585, size: 8, offset: 968)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1573, file: !1574, line: 516, baseType: !1585, size: 8, offset: 976)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1573, file: !1574, line: 517, baseType: !1585, size: 8, offset: 984)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1573, file: !1574, line: 518, baseType: !1585, size: 8, offset: 992)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1573, file: !1574, line: 519, baseType: !1585, size: 8, offset: 1000)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1573, file: !1574, line: 520, baseType: !1585, size: 8, offset: 1008)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1573, file: !1574, line: 521, baseType: !1585, size: 8, offset: 1016)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1573, file: !1574, line: 522, baseType: !1585, size: 8, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1573, file: !1574, line: 523, baseType: !1585, size: 8, offset: 1032)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1573, file: !1574, line: 524, baseType: !1585, size: 8, offset: 1040)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1573, file: !1574, line: 525, baseType: !1585, size: 8, offset: 1048)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1573, file: !1574, line: 526, baseType: !1585, size: 8, offset: 1056)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1573, file: !1574, line: 527, baseType: !1585, size: 8, offset: 1064)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1573, file: !1574, line: 528, baseType: !1585, size: 8, offset: 1072)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1573, file: !1574, line: 529, baseType: !1585, size: 8, offset: 1080)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1573, file: !1574, line: 530, baseType: !1585, size: 8, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1573, file: !1574, line: 531, baseType: !1585, size: 8, offset: 1096)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1573, file: !1574, line: 532, baseType: !1585, size: 8, offset: 1104)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1573, file: !1574, line: 533, baseType: !1585, size: 8, offset: 1112)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1573, file: !1574, line: 534, baseType: !1585, size: 8, offset: 1120)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1573, file: !1574, line: 535, baseType: !1585, size: 8, offset: 1128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1573, file: !1574, line: 536, baseType: !1585, size: 8, offset: 1136)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1573, file: !1574, line: 537, baseType: !1585, size: 8, offset: 1144)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1573, file: !1574, line: 538, baseType: !1585, size: 8, offset: 1152)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1573, file: !1574, line: 539, baseType: !1585, size: 8, offset: 1160)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1573, file: !1574, line: 540, baseType: !1585, size: 8, offset: 1168)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1573, file: !1574, line: 541, baseType: !1585, size: 8, offset: 1176)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1573, file: !1574, line: 542, baseType: !1585, size: 8, offset: 1184)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1573, file: !1574, line: 543, baseType: !1585, size: 8, offset: 1192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1573, file: !1574, line: 544, baseType: !1585, size: 8, offset: 1200)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1573, file: !1574, line: 545, baseType: !1585, size: 8, offset: 1208)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1573, file: !1574, line: 546, baseType: !1585, size: 8, offset: 1216)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1573, file: !1574, line: 547, baseType: !1585, size: 8, offset: 1224)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1573, file: !1574, line: 548, baseType: !1585, size: 8, offset: 1232)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1573, file: !1574, line: 549, baseType: !1585, size: 8, offset: 1240)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1573, file: !1574, line: 550, baseType: !1585, size: 8, offset: 1248)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1573, file: !1574, line: 551, baseType: !1585, size: 8, offset: 1256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1573, file: !1574, line: 552, baseType: !1585, size: 8, offset: 1264)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1573, file: !1574, line: 553, baseType: !1585, size: 8, offset: 1272)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1573, file: !1574, line: 554, baseType: !1585, size: 8, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1573, file: !1574, line: 555, baseType: !1585, size: 8, offset: 1288)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1573, file: !1574, line: 556, baseType: !1585, size: 8, offset: 1296)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1573, file: !1574, line: 557, baseType: !1585, size: 8, offset: 1304)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1573, file: !1574, line: 558, baseType: !1585, size: 8, offset: 1312)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1573, file: !1574, line: 559, baseType: !1585, size: 8, offset: 1320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1573, file: !1574, line: 560, baseType: !1585, size: 8, offset: 1328)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1573, file: !1574, line: 561, baseType: !1585, size: 8, offset: 1336)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1573, file: !1574, line: 562, baseType: !1585, size: 8, offset: 1344)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1573, file: !1574, line: 563, baseType: !1585, size: 8, offset: 1352)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1573, file: !1574, line: 564, baseType: !1585, size: 8, offset: 1360)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1573, file: !1574, line: 565, baseType: !1585, size: 8, offset: 1368)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1573, file: !1574, line: 566, baseType: !1585, size: 8, offset: 1376)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1573, file: !1574, line: 567, baseType: !1585, size: 8, offset: 1384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1573, file: !1574, line: 568, baseType: !1585, size: 8, offset: 1392)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1573, file: !1574, line: 569, baseType: !1585, size: 8, offset: 1400)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1573, file: !1574, line: 570, baseType: !1585, size: 8, offset: 1408)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1573, file: !1574, line: 571, baseType: !1585, size: 8, offset: 1416)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1573, file: !1574, line: 572, baseType: !1585, size: 8, offset: 1424)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1573, file: !1574, line: 573, baseType: !1585, size: 8, offset: 1432)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1573, file: !1574, line: 574, baseType: !1585, size: 8, offset: 1440)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !729, file: !151, line: 3405, baseType: !1741, size: 384)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1741, file: !151, line: 3353, baseType: !765, size: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1741, file: !151, line: 3356, baseType: !1745, size: 192, offset: 192)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1574, line: 578, size: 192, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1745, file: !1574, line: 580, baseType: !656, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1745, file: !1574, line: 581, baseType: !656, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1745, file: !1574, line: 582, baseType: !656, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1745, file: !1574, line: 583, baseType: !656, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1745, file: !1574, line: 584, baseType: !655, size: 8, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1745, file: !1574, line: 585, baseType: !655, size: 8, offset: 136)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1745, file: !1574, line: 586, baseType: !655, size: 8, offset: 144)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1745, file: !1574, line: 587, baseType: !655, size: 8, offset: 152)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1745, file: !1574, line: 588, baseType: !655, size: 8, offset: 160)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1745, file: !1574, line: 589, baseType: !655, size: 8, offset: 168)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1745, file: !1574, line: 590, baseType: !655, size: 8, offset: 176)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !704, file: !561, line: 739, baseType: !1759, size: 448)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !1760)
!1760 = !{!1761, !1767}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1759, file: !561, line: 353, baseType: !1762, size: 384)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1762, file: !561, line: 336, baseType: !707, size: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1762, file: !561, line: 343, baseType: !1306, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1762, file: !561, line: 344, baseType: !1313, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1759, file: !561, line: 359, baseType: !1269, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !704, file: !561, line: 740, baseType: !1769, size: 512)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1769, file: !561, line: 368, baseType: !1762, size: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1769, file: !561, line: 373, baseType: !727, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1769, file: !561, line: 374, baseType: !727, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !704, file: !561, line: 741, baseType: !1775, size: 576)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1775, file: !561, line: 383, baseType: !1769, size: 512)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1775, file: !561, line: 389, baseType: !1269, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !704, file: !561, line: 742, baseType: !1780, size: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1780, file: !561, line: 397, baseType: !707, size: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1780, file: !561, line: 400, baseType: !692, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !704, file: !561, line: 743, baseType: !1785, size: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1785, file: !561, line: 408, baseType: !707, size: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1785, file: !561, line: 412, baseType: !727, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1785, file: !561, line: 420, baseType: !727, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1785, file: !561, line: 423, baseType: !692, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !704, file: !561, line: 744, baseType: !1792, size: 384)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1792, file: !561, line: 431, baseType: !707, size: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1792, file: !561, line: 434, baseType: !727, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1792, file: !561, line: 437, baseType: !692, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !704, file: !561, line: 745, baseType: !1798, size: 384)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1798, file: !561, line: 445, baseType: !707, size: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1798, file: !561, line: 449, baseType: !727, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1798, file: !561, line: 453, baseType: !692, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !704, file: !561, line: 746, baseType: !1804, size: 320)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1804, file: !561, line: 461, baseType: !707, size: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1804, file: !561, line: 464, baseType: !727, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !704, file: !561, line: 747, baseType: !1809, size: 768)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1809, file: !561, line: 471, baseType: !707, size: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1809, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1809, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1809, file: !561, line: 478, baseType: !727, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1809, file: !561, line: 481, baseType: !1816, size: 384, offset: 384)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1817, size: 384, elements: !825)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !151, line: 1917, size: 384, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1817, file: !151, line: 1920, baseType: !1318, size: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1817, file: !151, line: 1921, baseType: !727, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1817, file: !151, line: 1922, baseType: !720, size: 32, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !704, file: !561, line: 748, baseType: !1823, size: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1823, file: !561, line: 490, baseType: !707, size: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1823, file: !561, line: 494, baseType: !656, size: 32, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !704, file: !561, line: 749, baseType: !1828, size: 384)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1828, file: !561, line: 502, baseType: !707, size: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1828, file: !561, line: 506, baseType: !692, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1828, file: !561, line: 510, baseType: !692, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !704, file: !561, line: 750, baseType: !1834, size: 320)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1834, file: !561, line: 531, baseType: !707, size: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1834, file: !561, line: 540, baseType: !692, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !704, file: !561, line: 751, baseType: !1839, size: 704)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1839, file: !561, line: 549, baseType: !1769, size: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1839, file: !561, line: 553, baseType: !661, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1839, file: !561, line: 557, baseType: !655, size: 8, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1839, file: !561, line: 558, baseType: !655, size: 8, offset: 584)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1839, file: !561, line: 559, baseType: !655, size: 8, offset: 592)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1839, file: !561, line: 560, baseType: !655, size: 8, offset: 600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1839, file: !561, line: 566, baseType: !1269, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !704, file: !561, line: 752, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1849, file: !561, line: 573, baseType: !1780, size: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1849, file: !561, line: 577, baseType: !727, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !704, file: !561, line: 753, baseType: !1854, size: 576)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1868}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1854, file: !561, line: 602, baseType: !1780, size: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1854, file: !561, line: 605, baseType: !727, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1854, file: !561, line: 609, baseType: !1219, size: 64, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1854, file: !561, line: 612, baseType: !1860, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1861, file: !561, line: 583, baseType: !183, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1861, file: !561, line: 586, baseType: !727, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1861, file: !561, line: 589, baseType: !727, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1861, file: !561, line: 592, baseType: !727, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1861, file: !561, line: 595, baseType: !727, size: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1854, file: !561, line: 616, baseType: !692, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !704, file: !561, line: 754, baseType: !1870, size: 512)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1870, file: !561, line: 624, baseType: !1780, size: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1870, file: !561, line: 628, baseType: !727, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1870, file: !561, line: 632, baseType: !727, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1870, file: !561, line: 636, baseType: !727, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !704, file: !561, line: 755, baseType: !1877, size: 704)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1877, file: !561, line: 644, baseType: !1870, size: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1877, file: !561, line: 648, baseType: !727, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1877, file: !561, line: 652, baseType: !727, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1877, file: !561, line: 653, baseType: !727, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !704, file: !561, line: 756, baseType: !1884, size: 448)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !1885)
!1885 = !{!1886, !1887, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1884, file: !561, line: 665, baseType: !1780, size: 320)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1884, file: !561, line: 668, baseType: !727, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1884, file: !561, line: 673, baseType: !727, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !704, file: !561, line: 757, baseType: !1890, size: 384)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1890, file: !561, line: 696, baseType: !1780, size: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1890, file: !561, line: 699, baseType: !727, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !704, file: !561, line: 758, baseType: !1895, size: 384)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !1896)
!1896 = !{!1897, !1898, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1895, file: !561, line: 683, baseType: !707, size: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1895, file: !561, line: 686, baseType: !727, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1895, file: !561, line: 689, baseType: !727, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !704, file: !561, line: 759, baseType: !1901, size: 384)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1901, file: !561, line: 709, baseType: !707, size: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1901, file: !561, line: 712, baseType: !727, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1901, file: !561, line: 712, baseType: !727, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !704, file: !561, line: 760, baseType: !1907, size: 320)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1907, file: !561, line: 720, baseType: !707, size: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1907, file: !561, line: 723, baseType: !727, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !699, file: !561, line: 138, baseType: !698, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !561, line: 139, baseType: !698, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !694, file: !561, line: 146, baseType: !697, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !694, file: !561, line: 152, baseType: !692, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !689, file: !135, line: 130, baseType: !897, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !684, file: !135, line: 134, baseType: !660, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !684, file: !135, line: 137, baseType: !727, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !684, file: !135, line: 138, baseType: !720, size: 32, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !684, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !135, line: 144, baseType: !656, size: 32, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !684, file: !135, line: 145, baseType: !656, size: 32, offset: 416)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !684, file: !135, line: 146, baseType: !1923, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !782)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !667, file: !135, line: 220, baseType: !670, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !667, file: !135, line: 223, baseType: !660, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !667, file: !135, line: 226, baseType: !1927, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !667, file: !135, line: 229, baseType: !1930, size: 128, offset: 256)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 128, elements: !965)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !667, file: !135, line: 232, baseType: !666, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !667, file: !135, line: 233, baseType: !666, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !667, file: !135, line: 238, baseType: !1936, size: 64, offset: 512)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1937)
!1937 = !{!1938, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1936, file: !135, line: 236, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1940, file: !135, line: 275, baseType: !692, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1940, file: !135, line: 278, baseType: !692, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1936, file: !135, line: 237, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1946, file: !135, line: 261, baseType: !897, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1946, file: !135, line: 262, baseType: !897, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1946, file: !135, line: 266, baseType: !897, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1946, file: !135, line: 267, baseType: !897, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1946, file: !135, line: 270, baseType: !656, size: 32, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !135, line: 241, baseType: !1923, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !667, file: !135, line: 244, baseType: !656, size: 32, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !667, file: !135, line: 247, baseType: !656, size: 32, offset: 672)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !667, file: !135, line: 250, baseType: !656, size: 32, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !667, file: !135, line: 253, baseType: !656, size: 32, offset: 736)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !135, line: 256, baseType: !656, size: 32, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name_to_bb", file: !3, line: 1019, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1961, file: !3, line: 1021, baseType: !727, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1961, file: !3, line: 1022, baseType: !664, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1961, file: !3, line: 1023, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!1969 = !{!0, !1970, !1998, !2000, !2002}
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(name: "pass_cselim", scope: !2, file: !3, line: 1308, type: !1972, isLocal: false, isDefinition: true)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !378, line: 156, size: 640, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1972, file: !378, line: 158, baseType: !1975, size: 640)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !378, line: 114, size: 640, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1983, !1987, !1989, !1990, !1991, !1993, !1994, !1995, !1996, !1997}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1975, file: !378, line: 117, baseType: !377, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1975, file: !378, line: 121, baseType: !661, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1975, file: !378, line: 125, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!655}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1975, file: !378, line: 130, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!7}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1975, file: !378, line: 133, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1975, file: !378, line: 136, baseType: !1988, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1975, file: !378, line: 139, baseType: !656, size: 32, offset: 384)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1975, file: !378, line: 143, baseType: !1992, size: 32, offset: 416)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !385, line: 80, baseType: !384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1975, file: !378, line: 146, baseType: !7, size: 32, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1975, file: !378, line: 147, baseType: !7, size: 32, offset: 480)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1975, file: !378, line: 148, baseType: !7, size: 32, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1975, file: !378, line: 151, baseType: !7, size: 32, offset: 544)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1975, file: !378, line: 152, baseType: !7, size: 32, offset: 576)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "condstoretemp", scope: !2, file: !3, line: 178, type: !727, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(name: "seen_ssa_names", scope: !2, file: !3, line: 1027, type: !1193, isLocal: true, isDefinition: true)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(name: "nontrap_set", scope: !2, file: !3, line: 1030, type: !2004, isLocal: true, isDefinition: true)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !151, line: 5199, flags: DIFlagFwdDecl)
!2006 = !{i32 2, !"Dwarf Version", i32 4}
!2007 = !{i32 2, !"Debug Info Version", i32 3}
!2008 = !{i32 1, !"wchar_size", i32 4}
!2009 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2010 = distinct !DISubprogram(name: "vprintf", scope: !2011, file: !2011, line: 39, type: !2012, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2022)
!2011 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!656, !2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !661)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2016, file: !3, baseType: !7, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2016, file: !3, baseType: !7, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2016, file: !3, baseType: !660, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2016, file: !3, baseType: !660, size: 64, offset: 128)
!2022 = !{!2023, !2024}
!2023 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2010, file: !2011, line: 39, type: !2014)
!2024 = !DILocalVariable(name: "__arg", arg: 2, scope: !2010, file: !2011, line: 39, type: !2015)
!2025 = !DILocation(line: 0, scope: !2010)
!2026 = !DILocation(line: 41, column: 20, scope: !2010)
!2027 = !DILocation(line: 41, column: 10, scope: !2010)
!2028 = !DILocation(line: 41, column: 3, scope: !2010)
!2029 = distinct !DISubprogram(name: "getchar", scope: !2011, file: !2011, line: 47, type: !2030, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!656}
!2032 = !{}
!2033 = !DILocation(line: 49, column: 16, scope: !2029)
!2034 = !DILocation(line: 49, column: 10, scope: !2029)
!2035 = !DILocation(line: 49, column: 3, scope: !2029)
!2036 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2011, file: !2011, line: 56, type: !2037, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!656, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2041, line: 7, baseType: !2042)
!2041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2043, line: 49, size: 1728, elements: !2044)
!2043 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2060, !2062, !2063, !2064, !2067, !2069, !2070, !2071, !2074, !2076, !2079, !2082, !2083, !2084, !2085, !2086}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2042, file: !2043, line: 51, baseType: !656, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2042, file: !2043, line: 54, baseType: !658, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2042, file: !2043, line: 55, baseType: !658, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2042, file: !2043, line: 56, baseType: !658, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2042, file: !2043, line: 57, baseType: !658, size: 64, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2042, file: !2043, line: 58, baseType: !658, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2042, file: !2043, line: 59, baseType: !658, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2042, file: !2043, line: 60, baseType: !658, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2042, file: !2043, line: 61, baseType: !658, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2042, file: !2043, line: 64, baseType: !658, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2042, file: !2043, line: 65, baseType: !658, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2042, file: !2043, line: 66, baseType: !658, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2042, file: !2043, line: 68, baseType: !2058, size: 64, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2043, line: 36, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2042, file: !2043, line: 70, baseType: !2061, size: 64, offset: 832)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2042, file: !2043, line: 72, baseType: !656, size: 32, offset: 896)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2042, file: !2043, line: 73, baseType: !656, size: 32, offset: 928)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2042, file: !2043, line: 74, baseType: !2065, size: 64, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2066, line: 152, baseType: !782)
!2066 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2042, file: !2043, line: 77, baseType: !2068, size: 16, offset: 1024)
!2068 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2042, file: !2043, line: 78, baseType: !1585, size: 8, offset: 1040)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2042, file: !2043, line: 79, baseType: !824, size: 8, offset: 1048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2042, file: !2043, line: 81, baseType: !2072, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2043, line: 43, baseType: null)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2042, file: !2043, line: 89, baseType: !2075, size: 64, offset: 1152)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2066, line: 153, baseType: !782)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2042, file: !2043, line: 91, baseType: !2077, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2043, line: 37, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2042, file: !2043, line: 92, baseType: !2080, size: 64, offset: 1280)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2043, line: 38, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2042, file: !2043, line: 93, baseType: !2061, size: 64, offset: 1344)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2042, file: !2043, line: 94, baseType: !660, size: 64, offset: 1408)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2042, file: !2043, line: 95, baseType: !1219, size: 64, offset: 1472)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2042, file: !2043, line: 96, baseType: !656, size: 32, offset: 1536)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2042, file: !2043, line: 98, baseType: !2087, size: 160, offset: 1568)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 160, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 20)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "__fp", arg: 1, scope: !2036, file: !2011, line: 56, type: !2039)
!2092 = !DILocation(line: 0, scope: !2036)
!2093 = !DILocation(line: 58, column: 10, scope: !2036)
!2094 = !DILocation(line: 58, column: 3, scope: !2036)
!2095 = distinct !DISubprogram(name: "getc_unlocked", scope: !2011, file: !2011, line: 66, type: !2037, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__fp", arg: 1, scope: !2095, file: !2011, line: 66, type: !2039)
!2098 = !DILocation(line: 0, scope: !2095)
!2099 = !DILocation(line: 68, column: 10, scope: !2095)
!2100 = !DILocation(line: 68, column: 3, scope: !2095)
!2101 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2011, file: !2011, line: 73, type: !2030, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2102 = !DILocation(line: 75, column: 10, scope: !2101)
!2103 = !DILocation(line: 75, column: 3, scope: !2101)
!2104 = distinct !DISubprogram(name: "putchar", scope: !2011, file: !2011, line: 82, type: !2105, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!656, !656}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "__c", arg: 1, scope: !2104, file: !2011, line: 82, type: !656)
!2109 = !DILocation(line: 0, scope: !2104)
!2110 = !DILocation(line: 84, column: 21, scope: !2104)
!2111 = !DILocation(line: 84, column: 10, scope: !2104)
!2112 = !DILocation(line: 84, column: 3, scope: !2104)
!2113 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2011, file: !2011, line: 91, type: !2114, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!656, !656, !2039}
!2116 = !{!2117, !2118}
!2117 = !DILocalVariable(name: "__c", arg: 1, scope: !2113, file: !2011, line: 91, type: !656)
!2118 = !DILocalVariable(name: "__stream", arg: 2, scope: !2113, file: !2011, line: 91, type: !2039)
!2119 = !DILocation(line: 0, scope: !2113)
!2120 = !DILocation(line: 93, column: 10, scope: !2113)
!2121 = !DILocation(line: 93, column: 3, scope: !2113)
!2122 = distinct !DISubprogram(name: "putc_unlocked", scope: !2011, file: !2011, line: 101, type: !2114, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2123 = !{!2124, !2125}
!2124 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !2011, line: 101, type: !656)
!2125 = !DILocalVariable(name: "__stream", arg: 2, scope: !2122, file: !2011, line: 101, type: !2039)
!2126 = !DILocation(line: 0, scope: !2122)
!2127 = !DILocation(line: 103, column: 10, scope: !2122)
!2128 = !DILocation(line: 103, column: 3, scope: !2122)
!2129 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2011, file: !2011, line: 108, type: !2105, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__c", arg: 1, scope: !2129, file: !2011, line: 108, type: !656)
!2132 = !DILocation(line: 0, scope: !2129)
!2133 = !DILocation(line: 110, column: 10, scope: !2129)
!2134 = !DILocation(line: 110, column: 3, scope: !2129)
!2135 = distinct !DISubprogram(name: "getline", scope: !2011, file: !2011, line: 118, type: !2136, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!2138, !657, !2139, !2039}
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2066, line: 193, baseType: !782)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!2140 = !{!2141, !2142, !2143}
!2141 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2135, file: !2011, line: 118, type: !657)
!2142 = !DILocalVariable(name: "__n", arg: 2, scope: !2135, file: !2011, line: 118, type: !2139)
!2143 = !DILocalVariable(name: "__stream", arg: 3, scope: !2135, file: !2011, line: 118, type: !2039)
!2144 = !DILocation(line: 0, scope: !2135)
!2145 = !DILocation(line: 120, column: 10, scope: !2135)
!2146 = !DILocation(line: 120, column: 3, scope: !2135)
!2147 = distinct !DISubprogram(name: "feof_unlocked", scope: !2011, file: !2011, line: 128, type: !2037, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "__stream", arg: 1, scope: !2147, file: !2011, line: 128, type: !2039)
!2150 = !DILocation(line: 0, scope: !2147)
!2151 = !DILocation(line: 130, column: 10, scope: !2147)
!2152 = !DILocation(line: 130, column: 3, scope: !2147)
!2153 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2011, file: !2011, line: 135, type: !2037, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "__stream", arg: 1, scope: !2153, file: !2011, line: 135, type: !2039)
!2156 = !DILocation(line: 0, scope: !2153)
!2157 = !DILocation(line: 137, column: 10, scope: !2153)
!2158 = !DILocation(line: 137, column: 3, scope: !2153)
!2159 = distinct !DISubprogram(name: "tolower", scope: !2160, file: !2160, line: 207, type: !2105, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2160 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2160, line: 207, type: !656)
!2163 = !DILocation(line: 0, scope: !2159)
!2164 = !DILocation(line: 209, column: 22, scope: !2159)
!2165 = !DILocation(line: 209, column: 39, scope: !2159)
!2166 = !DILocation(line: 209, column: 38, scope: !2159)
!2167 = !DILocation(line: 209, column: 37, scope: !2159)
!2168 = !DILocation(line: 209, column: 10, scope: !2159)
!2169 = !DILocation(line: 209, column: 3, scope: !2159)
!2170 = distinct !DISubprogram(name: "toupper", scope: !2160, file: !2160, line: 213, type: !2105, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "__c", arg: 1, scope: !2170, file: !2160, line: 213, type: !656)
!2173 = !DILocation(line: 0, scope: !2170)
!2174 = !DILocation(line: 215, column: 22, scope: !2170)
!2175 = !DILocation(line: 215, column: 39, scope: !2170)
!2176 = !DILocation(line: 215, column: 38, scope: !2170)
!2177 = !DILocation(line: 215, column: 37, scope: !2170)
!2178 = !DILocation(line: 215, column: 10, scope: !2170)
!2179 = !DILocation(line: 215, column: 3, scope: !2170)
!2180 = distinct !DISubprogram(name: "atoi", scope: !2181, file: !2181, line: 361, type: !2182, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2181 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!656, !661}
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2180, file: !2181, line: 361, type: !661)
!2186 = !DILocation(line: 0, scope: !2180)
!2187 = !DILocation(line: 363, column: 16, scope: !2180)
!2188 = !DILocation(line: 363, column: 10, scope: !2180)
!2189 = !DILocation(line: 363, column: 3, scope: !2180)
!2190 = distinct !DISubprogram(name: "atol", scope: !2181, file: !2181, line: 366, type: !2191, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!782, !661}
!2193 = !{!2194}
!2194 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2190, file: !2181, line: 366, type: !661)
!2195 = !DILocation(line: 0, scope: !2190)
!2196 = !DILocation(line: 368, column: 10, scope: !2190)
!2197 = !DILocation(line: 368, column: 3, scope: !2190)
!2198 = distinct !DISubprogram(name: "atoll", scope: !2181, file: !2181, line: 373, type: !2199, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2201, !661}
!2201 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2202 = !{!2203}
!2203 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2198, file: !2181, line: 373, type: !661)
!2204 = !DILocation(line: 0, scope: !2198)
!2205 = !DILocation(line: 375, column: 10, scope: !2198)
!2206 = !DILocation(line: 375, column: 3, scope: !2198)
!2207 = distinct !DISubprogram(name: "bsearch", scope: !2208, file: !2208, line: 20, type: !2209, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!660, !1204, !1204, !1219, !1219, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2181, line: 808, baseType: !1208)
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2213 = !DILocalVariable(name: "__key", arg: 1, scope: !2207, file: !2208, line: 20, type: !1204)
!2214 = !DILocalVariable(name: "__base", arg: 2, scope: !2207, file: !2208, line: 20, type: !1204)
!2215 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2207, file: !2208, line: 20, type: !1219)
!2216 = !DILocalVariable(name: "__size", arg: 4, scope: !2207, file: !2208, line: 20, type: !1219)
!2217 = !DILocalVariable(name: "__compar", arg: 5, scope: !2207, file: !2208, line: 21, type: !2211)
!2218 = !DILocalVariable(name: "__l", scope: !2207, file: !2208, line: 23, type: !1219)
!2219 = !DILocalVariable(name: "__u", scope: !2207, file: !2208, line: 23, type: !1219)
!2220 = !DILocalVariable(name: "__idx", scope: !2207, file: !2208, line: 23, type: !1219)
!2221 = !DILocalVariable(name: "__p", scope: !2207, file: !2208, line: 24, type: !1204)
!2222 = !DILocalVariable(name: "__comparison", scope: !2207, file: !2208, line: 25, type: !656)
!2223 = !DILocation(line: 0, scope: !2207)
!2224 = !DILocation(line: 29, column: 3, scope: !2207)
!2225 = !DILocation(line: 27, column: 7, scope: !2207)
!2226 = !DILocation(line: 29, column: 14, scope: !2207)
!2227 = !DILocation(line: 31, column: 20, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2207, file: !2208, line: 30, column: 5)
!2229 = !DILocation(line: 31, column: 27, scope: !2228)
!2230 = !DILocation(line: 32, column: 56, scope: !2228)
!2231 = !DILocation(line: 32, column: 47, scope: !2228)
!2232 = !DILocation(line: 33, column: 22, scope: !2228)
!2233 = !DILocation(line: 34, column: 24, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !2208, line: 34, column: 11)
!2235 = !DILocation(line: 34, column: 11, scope: !2228)
!2236 = !DILocation(line: 36, column: 29, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !2208, line: 36, column: 16)
!2238 = !DILocation(line: 36, column: 16, scope: !2234)
!2239 = !DILocation(line: 37, column: 14, scope: !2237)
!2240 = distinct !{!2240, !2224, !2241}
!2241 = !DILocation(line: 40, column: 5, scope: !2207)
!2242 = !DILocation(line: 43, column: 1, scope: !2207)
!2243 = distinct !DISubprogram(name: "atof", scope: !2244, file: !2244, line: 25, type: !2245, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2247, !661}
!2247 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2243, file: !2244, line: 25, type: !661)
!2250 = !DILocation(line: 0, scope: !2243)
!2251 = !DILocation(line: 27, column: 10, scope: !2243)
!2252 = !DILocation(line: 27, column: 3, scope: !2243)
!2253 = distinct !DISubprogram(name: "strtoimax", scope: !2254, file: !2254, line: 324, type: !2255, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2254 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!2257, !2014, !2260, !656}
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2258, line: 101, baseType: !2259)
!2258 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2066, line: 72, baseType: !782)
!2260 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !657)
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "nptr", arg: 1, scope: !2253, file: !2254, line: 324, type: !2014)
!2263 = !DILocalVariable(name: "endptr", arg: 2, scope: !2253, file: !2254, line: 324, type: !2260)
!2264 = !DILocalVariable(name: "base", arg: 3, scope: !2253, file: !2254, line: 324, type: !656)
!2265 = !DILocation(line: 0, scope: !2253)
!2266 = !DILocation(line: 327, column: 10, scope: !2253)
!2267 = !DILocation(line: 327, column: 3, scope: !2253)
!2268 = distinct !DISubprogram(name: "strtoumax", scope: !2254, file: !2254, line: 336, type: !2269, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2271, !2014, !2260, !656}
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2258, line: 102, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2066, line: 73, baseType: !780)
!2273 = !{!2274, !2275, !2276}
!2274 = !DILocalVariable(name: "nptr", arg: 1, scope: !2268, file: !2254, line: 336, type: !2014)
!2275 = !DILocalVariable(name: "endptr", arg: 2, scope: !2268, file: !2254, line: 336, type: !2260)
!2276 = !DILocalVariable(name: "base", arg: 3, scope: !2268, file: !2254, line: 336, type: !656)
!2277 = !DILocation(line: 0, scope: !2268)
!2278 = !DILocation(line: 339, column: 10, scope: !2268)
!2279 = !DILocation(line: 339, column: 3, scope: !2268)
!2280 = distinct !DISubprogram(name: "wcstoimax", scope: !2254, file: !2254, line: 348, type: !2281, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2290)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2257, !2283, !2287, !656}
!2283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2254, line: 34, baseType: !656)
!2287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2288)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2290 = !{!2291, !2292, !2293}
!2291 = !DILocalVariable(name: "nptr", arg: 1, scope: !2280, file: !2254, line: 348, type: !2283)
!2292 = !DILocalVariable(name: "endptr", arg: 2, scope: !2280, file: !2254, line: 348, type: !2287)
!2293 = !DILocalVariable(name: "base", arg: 3, scope: !2280, file: !2254, line: 348, type: !656)
!2294 = !DILocation(line: 0, scope: !2280)
!2295 = !DILocation(line: 351, column: 10, scope: !2280)
!2296 = !DILocation(line: 351, column: 3, scope: !2280)
!2297 = distinct !DISubprogram(name: "wcstoumax", scope: !2254, file: !2254, line: 362, type: !2298, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2271, !2283, !2287, !656}
!2300 = !{!2301, !2302, !2303}
!2301 = !DILocalVariable(name: "nptr", arg: 1, scope: !2297, file: !2254, line: 362, type: !2283)
!2302 = !DILocalVariable(name: "endptr", arg: 2, scope: !2297, file: !2254, line: 362, type: !2287)
!2303 = !DILocalVariable(name: "base", arg: 3, scope: !2297, file: !2254, line: 362, type: !656)
!2304 = !DILocation(line: 0, scope: !2297)
!2305 = !DILocation(line: 365, column: 10, scope: !2297)
!2306 = !DILocation(line: 365, column: 3, scope: !2297)
!2307 = distinct !DISubprogram(name: "stat", scope: !2308, file: !2308, line: 453, type: !2309, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!656, !661, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2313, line: 46, size: 1152, elements: !2314)
!2313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2314 = !{!2315, !2317, !2319, !2321, !2323, !2325, !2327, !2328, !2329, !2330, !2332, !2334, !2342, !2343, !2344}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2312, file: !2313, line: 48, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2066, line: 145, baseType: !780)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2312, file: !2313, line: 53, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2066, line: 148, baseType: !780)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2312, file: !2313, line: 61, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2066, line: 151, baseType: !780)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2312, file: !2313, line: 62, baseType: !2322, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2066, line: 150, baseType: !7)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2312, file: !2313, line: 64, baseType: !2324, size: 32, offset: 224)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2066, line: 146, baseType: !7)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2312, file: !2313, line: 65, baseType: !2326, size: 32, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2066, line: 147, baseType: !7)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2312, file: !2313, line: 67, baseType: !656, size: 32, offset: 288)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2312, file: !2313, line: 69, baseType: !2316, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2312, file: !2313, line: 74, baseType: !2065, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2312, file: !2313, line: 78, baseType: !2331, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2066, line: 174, baseType: !782)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2312, file: !2313, line: 80, baseType: !2333, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2066, line: 179, baseType: !782)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2312, file: !2313, line: 91, baseType: !2335, size: 128, offset: 576)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2336, line: 10, size: 128, elements: !2337)
!2336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2337 = !{!2338, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2335, file: !2336, line: 12, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2066, line: 160, baseType: !782)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2335, file: !2336, line: 16, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2066, line: 196, baseType: !782)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2312, file: !2313, line: 92, baseType: !2335, size: 128, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2312, file: !2313, line: 93, baseType: !2335, size: 128, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2312, file: !2313, line: 106, baseType: !2345, size: 192, offset: 960)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2341, size: 192, elements: !800)
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "__path", arg: 1, scope: !2307, file: !2308, line: 453, type: !661)
!2348 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2307, file: !2308, line: 453, type: !2311)
!2349 = !DILocation(line: 0, scope: !2307)
!2350 = !DILocation(line: 455, column: 10, scope: !2307)
!2351 = !DILocation(line: 455, column: 3, scope: !2307)
!2352 = distinct !DISubprogram(name: "lstat", scope: !2308, file: !2308, line: 460, type: !2309, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "__path", arg: 1, scope: !2352, file: !2308, line: 460, type: !661)
!2355 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2352, file: !2308, line: 460, type: !2311)
!2356 = !DILocation(line: 0, scope: !2352)
!2357 = !DILocation(line: 462, column: 10, scope: !2352)
!2358 = !DILocation(line: 462, column: 3, scope: !2352)
!2359 = distinct !DISubprogram(name: "fstat", scope: !2308, file: !2308, line: 467, type: !2360, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!656, !656, !2311}
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "__fd", arg: 1, scope: !2359, file: !2308, line: 467, type: !656)
!2364 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2359, file: !2308, line: 467, type: !2311)
!2365 = !DILocation(line: 0, scope: !2359)
!2366 = !DILocation(line: 469, column: 10, scope: !2359)
!2367 = !DILocation(line: 469, column: 3, scope: !2359)
!2368 = distinct !DISubprogram(name: "fstatat", scope: !2308, file: !2308, line: 474, type: !2369, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!656, !656, !661, !2311, !656}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "__fd", arg: 1, scope: !2368, file: !2308, line: 474, type: !656)
!2373 = !DILocalVariable(name: "__filename", arg: 2, scope: !2368, file: !2308, line: 474, type: !661)
!2374 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2368, file: !2308, line: 474, type: !2311)
!2375 = !DILocalVariable(name: "__flag", arg: 4, scope: !2368, file: !2308, line: 474, type: !656)
!2376 = !DILocation(line: 0, scope: !2368)
!2377 = !DILocation(line: 477, column: 10, scope: !2368)
!2378 = !DILocation(line: 477, column: 3, scope: !2368)
!2379 = distinct !DISubprogram(name: "mknod", scope: !2308, file: !2308, line: 483, type: !2380, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!656, !661, !2322, !2316}
!2382 = !{!2383, !2384, !2385}
!2383 = !DILocalVariable(name: "__path", arg: 1, scope: !2379, file: !2308, line: 483, type: !661)
!2384 = !DILocalVariable(name: "__mode", arg: 2, scope: !2379, file: !2308, line: 483, type: !2322)
!2385 = !DILocalVariable(name: "__dev", arg: 3, scope: !2379, file: !2308, line: 483, type: !2316)
!2386 = !DILocation(line: 0, scope: !2379)
!2387 = !DILocation(line: 485, column: 10, scope: !2379)
!2388 = !DILocation(line: 485, column: 3, scope: !2379)
!2389 = distinct !DISubprogram(name: "mknodat", scope: !2308, file: !2308, line: 491, type: !2390, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!656, !656, !661, !2322, !2316}
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "__fd", arg: 1, scope: !2389, file: !2308, line: 491, type: !656)
!2394 = !DILocalVariable(name: "__path", arg: 2, scope: !2389, file: !2308, line: 491, type: !661)
!2395 = !DILocalVariable(name: "__mode", arg: 3, scope: !2389, file: !2308, line: 491, type: !2322)
!2396 = !DILocalVariable(name: "__dev", arg: 4, scope: !2389, file: !2308, line: 491, type: !2316)
!2397 = !DILocation(line: 0, scope: !2389)
!2398 = !DILocation(line: 494, column: 10, scope: !2389)
!2399 = !DILocation(line: 494, column: 3, scope: !2389)
!2400 = distinct !DISubprogram(name: "stat64", scope: !2308, file: !2308, line: 502, type: !2401, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!656, !661, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2313, line: 119, size: 1152, elements: !2405)
!2405 = !{!2406, !2407, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2419, !2420, !2421, !2422}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2404, file: !2313, line: 121, baseType: !2316, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2404, file: !2313, line: 123, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2066, line: 149, baseType: !780)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2404, file: !2313, line: 124, baseType: !2320, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2404, file: !2313, line: 125, baseType: !2322, size: 32, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2404, file: !2313, line: 132, baseType: !2324, size: 32, offset: 224)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2404, file: !2313, line: 133, baseType: !2326, size: 32, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2404, file: !2313, line: 135, baseType: !656, size: 32, offset: 288)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2404, file: !2313, line: 136, baseType: !2316, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2404, file: !2313, line: 137, baseType: !2065, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2404, file: !2313, line: 143, baseType: !2331, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2404, file: !2313, line: 144, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2066, line: 180, baseType: !782)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2404, file: !2313, line: 152, baseType: !2335, size: 128, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2404, file: !2313, line: 153, baseType: !2335, size: 128, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2404, file: !2313, line: 154, baseType: !2335, size: 128, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2404, file: !2313, line: 164, baseType: !2345, size: 192, offset: 960)
!2423 = !{!2424, !2425}
!2424 = !DILocalVariable(name: "__path", arg: 1, scope: !2400, file: !2308, line: 502, type: !661)
!2425 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2400, file: !2308, line: 502, type: !2403)
!2426 = !DILocation(line: 0, scope: !2400)
!2427 = !DILocation(line: 504, column: 10, scope: !2400)
!2428 = !DILocation(line: 504, column: 3, scope: !2400)
!2429 = distinct !DISubprogram(name: "lstat64", scope: !2308, file: !2308, line: 509, type: !2401, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "__path", arg: 1, scope: !2429, file: !2308, line: 509, type: !661)
!2432 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2429, file: !2308, line: 509, type: !2403)
!2433 = !DILocation(line: 0, scope: !2429)
!2434 = !DILocation(line: 511, column: 10, scope: !2429)
!2435 = !DILocation(line: 511, column: 3, scope: !2429)
!2436 = distinct !DISubprogram(name: "fstat64", scope: !2308, file: !2308, line: 516, type: !2437, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!656, !656, !2403}
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "__fd", arg: 1, scope: !2436, file: !2308, line: 516, type: !656)
!2441 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2436, file: !2308, line: 516, type: !2403)
!2442 = !DILocation(line: 0, scope: !2436)
!2443 = !DILocation(line: 518, column: 10, scope: !2436)
!2444 = !DILocation(line: 518, column: 3, scope: !2436)
!2445 = distinct !DISubprogram(name: "fstatat64", scope: !2308, file: !2308, line: 523, type: !2446, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!656, !656, !661, !2403, !656}
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "__fd", arg: 1, scope: !2445, file: !2308, line: 523, type: !656)
!2450 = !DILocalVariable(name: "__filename", arg: 2, scope: !2445, file: !2308, line: 523, type: !661)
!2451 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2445, file: !2308, line: 523, type: !2403)
!2452 = !DILocalVariable(name: "__flag", arg: 4, scope: !2445, file: !2308, line: 523, type: !656)
!2453 = !DILocation(line: 0, scope: !2445)
!2454 = !DILocation(line: 526, column: 10, scope: !2445)
!2455 = !DILocation(line: 526, column: 3, scope: !2445)
!2456 = distinct !DISubprogram(name: "blocks_in_phiopt_order", scope: !3, file: !3, line: 331, type: !2457, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!663}
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2460 = !DILocalVariable(name: "x", scope: !2456, file: !3, line: 333, type: !664)
!2461 = !DILocalVariable(name: "y", scope: !2456, file: !3, line: 333, type: !664)
!2462 = !DILocalVariable(name: "order", scope: !2456, file: !3, line: 334, type: !663)
!2463 = !DILocalVariable(name: "n", scope: !2456, file: !3, line: 335, type: !7)
!2464 = !DILocalVariable(name: "np", scope: !2456, file: !3, line: 336, type: !7)
!2465 = !DILocalVariable(name: "i", scope: !2456, file: !3, line: 336, type: !7)
!2466 = !DILocalVariable(name: "visited", scope: !2456, file: !3, line: 337, type: !2467)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2468, line: 45, baseType: !2469)
!2468 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2468, line: 39, size: 192, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2470, file: !2468, line: 41, baseType: !654, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2470, file: !2468, line: 42, baseType: !7, size: 32, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2470, file: !2468, line: 43, baseType: !7, size: 32, offset: 96)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2470, file: !2468, line: 44, baseType: !2476, size: 64, offset: 128)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 64, elements: !825)
!2477 = !DILocation(line: 334, column: 24, scope: !2456)
!2478 = !DILocation(line: 0, scope: !2456)
!2479 = !DILocation(line: 335, column: 16, scope: !2456)
!2480 = !DILocation(line: 335, column: 31, scope: !2456)
!2481 = !DILocation(line: 337, column: 36, scope: !2456)
!2482 = !DILocation(line: 337, column: 21, scope: !2456)
!2483 = !DILocation(line: 342, column: 3, scope: !2456)
!2484 = !DILocation(line: 344, column: 3, scope: !2456)
!2485 = !DILocation(line: 345, column: 3, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 345, column: 3)
!2487 = !DILocation(line: 345, column: 3, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 345, column: 3)
!2489 = !DILocation(line: 335, column: 12, scope: !2456)
!2490 = !DILocation(line: 0, scope: !2486)
!2491 = !DILocation(line: 347, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 347, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 346, column: 5)
!2494 = !DILocation(line: 347, column: 11, scope: !2493)
!2495 = !DILocation(line: 353, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 353, column: 7)
!2497 = !DILocation(line: 0, scope: !2496)
!2498 = !DILocation(line: 354, column: 5, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 353, column: 7)
!2500 = !DILocation(line: 354, column: 23, scope: !2499)
!2501 = !DILocation(line: 354, column: 27, scope: !2499)
!2502 = !DILocation(line: 354, column: 26, scope: !2499)
!2503 = !DILocation(line: 356, column: 4, scope: !2499)
!2504 = !DILocation(line: 355, column: 9, scope: !2499)
!2505 = !DILocation(line: 353, column: 7, scope: !2499)
!2506 = distinct !{!2506, !2495, !2507}
!2507 = !DILocation(line: 356, column: 4, scope: !2496)
!2508 = !DILocation(line: 357, column: 25, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 357, column: 7)
!2510 = !DILocation(line: 357, column: 12, scope: !2509)
!2511 = !DILocation(line: 0, scope: !2509)
!2512 = !DILocation(line: 358, column: 5, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 357, column: 7)
!2514 = !DILocation(line: 358, column: 23, scope: !2513)
!2515 = !DILocation(line: 358, column: 27, scope: !2513)
!2516 = !DILocation(line: 358, column: 26, scope: !2513)
!2517 = !DILocation(line: 0, scope: !2493)
!2518 = !DILocation(line: 357, column: 7, scope: !2509)
!2519 = !DILocation(line: 359, column: 9, scope: !2513)
!2520 = !DILocation(line: 359, column: 27, scope: !2513)
!2521 = !DILocation(line: 357, column: 7, scope: !2513)
!2522 = distinct !{!2522, !2518, !2523}
!2523 = !DILocation(line: 363, column: 2, scope: !2509)
!2524 = !DILocation(line: 367, column: 7, scope: !2493)
!2525 = !DILocation(line: 369, column: 5, scope: !2493)
!2526 = !DILocation(line: 0, scope: !2488)
!2527 = distinct !{!2527, !2485, !2528}
!2528 = !DILocation(line: 369, column: 5, scope: !2486)
!2529 = !DILocation(line: 371, column: 3, scope: !2456)
!2530 = !DILocation(line: 372, column: 3, scope: !2456)
!2531 = !DILocation(line: 373, column: 3, scope: !2456)
!2532 = distinct !DISubprogram(name: "SET_BIT", scope: !2468, file: !2468, line: 63, type: !2533, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2467, !7}
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "map", arg: 1, scope: !2532, file: !2468, line: 63, type: !2467)
!2537 = !DILocalVariable(name: "bitno", arg: 2, scope: !2532, file: !2468, line: 63, type: !7)
!2538 = !DILocalVariable(name: "oldbit", scope: !2539, file: !2468, line: 67, type: !655)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2468, line: 66, column: 5)
!2540 = distinct !DILexicalBlock(scope: !2532, file: !2468, line: 65, column: 7)
!2541 = !DILocation(line: 0, scope: !2532)
!2542 = !DILocation(line: 65, column: 12, scope: !2540)
!2543 = !DILocation(line: 65, column: 7, scope: !2540)
!2544 = !DILocation(line: 65, column: 7, scope: !2532)
!2545 = !DILocation(line: 73, column: 40, scope: !2532)
!2546 = !DILocation(line: 73, column: 29, scope: !2532)
!2547 = !DILocation(line: 72, column: 19, scope: !2532)
!2548 = !DILocation(line: 72, column: 3, scope: !2532)
!2549 = !DILocation(line: 68, column: 16, scope: !2539)
!2550 = !DILocation(line: 69, column: 12, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2539, file: !2468, line: 69, column: 11)
!2552 = !DILocation(line: 69, column: 11, scope: !2539)
!2553 = !DILocation(line: 70, column: 2, scope: !2551)
!2554 = !DILocation(line: 70, column: 41, scope: !2551)
!2555 = !DILocation(line: 73, column: 5, scope: !2532)
!2556 = !DILocation(line: 74, column: 1, scope: !2532)
!2557 = distinct !DISubprogram(name: "single_pred_p", scope: !135, file: !135, line: 634, type: !2558, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!655, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !665, line: 112, baseType: !2561)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "bb", arg: 1, scope: !2557, file: !135, line: 634, type: !2560)
!2565 = !DILocation(line: 0, scope: !2557)
!2566 = !DILocation(line: 636, column: 10, scope: !2557)
!2567 = !DILocation(line: 636, column: 33, scope: !2557)
!2568 = !DILocation(line: 636, column: 3, scope: !2557)
!2569 = distinct !DISubprogram(name: "single_pred", scope: !135, file: !135, line: 672, type: !2570, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!664, !2560}
!2572 = !{!2573}
!2573 = !DILocalVariable(name: "bb", arg: 1, scope: !2569, file: !135, line: 672, type: !2560)
!2574 = !DILocation(line: 0, scope: !2569)
!2575 = !DILocation(line: 674, column: 10, scope: !2569)
!2576 = !DILocation(line: 674, column: 33, scope: !2569)
!2577 = !DILocation(line: 674, column: 3, scope: !2569)
!2578 = distinct !DISubprogram(name: "empty_block_p", scope: !3, file: !3, line: 384, type: !2579, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!655, !664}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "bb", arg: 1, scope: !2578, file: !3, line: 384, type: !664)
!2583 = !DILocalVariable(name: "gsi", scope: !2578, file: !3, line: 387, type: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2585, file: !561, line: 257, baseType: !697, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2585, file: !561, line: 263, baseType: !692, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2585, file: !561, line: 264, baseType: !664, size: 64, offset: 128)
!2590 = !DILocation(line: 0, scope: !2578)
!2591 = !DILocation(line: 387, column: 3, scope: !2578)
!2592 = !DILocation(line: 387, column: 30, scope: !2578)
!2593 = !DILocation(line: 388, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 388, column: 7)
!2595 = !DILocation(line: 388, column: 7, scope: !2578)
!2596 = !DILocation(line: 390, column: 24, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 390, column: 7)
!2598 = !DILocation(line: 390, column: 7, scope: !2597)
!2599 = !DILocation(line: 390, column: 7, scope: !2578)
!2600 = !DILocation(line: 391, column: 5, scope: !2597)
!2601 = !DILocation(line: 392, column: 10, scope: !2578)
!2602 = !DILocation(line: 392, column: 3, scope: !2578)
!2603 = !DILocation(line: 393, column: 1, scope: !2578)
!2604 = distinct !DISubprogram(name: "gsi_after_labels", scope: !561, file: !561, line: 4510, type: !2605, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!2584, !664}
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "bb", arg: 1, scope: !2604, file: !561, line: 4510, type: !664)
!2609 = !DILocalVariable(name: "gsi", scope: !2604, file: !561, line: 4512, type: !2584)
!2610 = !DILocation(line: 0, scope: !2604)
!2611 = !DILocation(line: 4512, column: 24, scope: !2604)
!2612 = !DILocation(line: 4512, column: 30, scope: !2604)
!2613 = !DILocation(line: 4514, column: 3, scope: !2604)
!2614 = !DILocation(line: 4514, column: 11, scope: !2604)
!2615 = !DILocation(line: 4514, column: 27, scope: !2604)
!2616 = !DILocation(line: 4514, column: 43, scope: !2604)
!2617 = !DILocation(line: 4514, column: 30, scope: !2604)
!2618 = !DILocation(line: 4514, column: 59, scope: !2604)
!2619 = !DILocation(line: 4515, column: 5, scope: !2604)
!2620 = distinct !{!2620, !2613, !2621}
!2621 = !DILocation(line: 4515, column: 19, scope: !2604)
!2622 = !DILocation(line: 4517, column: 3, scope: !2604)
!2623 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !2624, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!655, !2584}
!2626 = !{!2627}
!2627 = !DILocalVariable(name: "i", arg: 1, scope: !2623, file: !561, line: 4467, type: !2584)
!2628 = !DILocation(line: 4467, column: 33, scope: !2623)
!2629 = !DILocation(line: 4469, column: 12, scope: !2623)
!2630 = !DILocation(line: 4469, column: 16, scope: !2623)
!2631 = !DILocation(line: 4469, column: 10, scope: !2623)
!2632 = !DILocation(line: 4469, column: 3, scope: !2623)
!2633 = distinct !DISubprogram(name: "is_gimple_debug", scope: !561, file: !561, line: 3249, type: !2634, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!655, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !665, line: 60, baseType: !1967)
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "gs", arg: 1, scope: !2633, file: !561, line: 3249, type: !2636)
!2639 = !DILocation(line: 0, scope: !2633)
!2640 = !DILocation(line: 3251, column: 10, scope: !2633)
!2641 = !DILocation(line: 3251, column: 27, scope: !2633)
!2642 = !DILocation(line: 3251, column: 3, scope: !2633)
!2643 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !2644, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!702, !2584}
!2646 = !{!2647}
!2647 = !DILocalVariable(name: "i", arg: 1, scope: !2643, file: !561, line: 4501, type: !2584)
!2648 = !DILocation(line: 4501, column: 32, scope: !2643)
!2649 = !DILocation(line: 4503, column: 12, scope: !2643)
!2650 = !DILocation(line: 4503, column: 17, scope: !2643)
!2651 = !DILocation(line: 4503, column: 3, scope: !2643)
!2652 = distinct !DISubprogram(name: "gsi_next_nondebug", scope: !561, file: !561, line: 4523, type: !2653, scopeLine: 4524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "i", arg: 1, scope: !2652, file: !561, line: 4523, type: !2655)
!2658 = !DILocation(line: 0, scope: !2652)
!2659 = !DILocation(line: 4525, column: 3, scope: !2652)
!2660 = !DILocation(line: 4527, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2652, file: !561, line: 4526, column: 5)
!2662 = !DILocation(line: 4529, column: 11, scope: !2652)
!2663 = !DILocation(line: 4529, column: 26, scope: !2652)
!2664 = !DILocation(line: 4529, column: 46, scope: !2652)
!2665 = !DILocation(line: 4529, column: 29, scope: !2652)
!2666 = !DILocation(line: 4528, column: 5, scope: !2661)
!2667 = distinct !{!2667, !2659, !2668}
!2668 = !DILocation(line: 4529, column: 60, scope: !2652)
!2669 = !DILocation(line: 4530, column: 1, scope: !2652)
!2670 = distinct !DISubprogram(name: "gate_phiopt", scope: !3, file: !3, line: 1274, type: !1981, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2671 = !DILocation(line: 1276, column: 3, scope: !2670)
!2672 = distinct !DISubprogram(name: "tree_ssa_phiopt", scope: !3, file: !3, line: 142, type: !1985, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2673 = !DILocation(line: 144, column: 10, scope: !2672)
!2674 = !DILocation(line: 144, column: 3, scope: !2672)
!2675 = distinct !DISubprogram(name: "gate_cselim", scope: !3, file: !3, line: 1303, type: !1981, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2676 = !DILocation(line: 1305, column: 10, scope: !2675)
!2677 = !DILocation(line: 1305, column: 3, scope: !2675)
!2678 = distinct !DISubprogram(name: "tree_ssa_cs_elim", scope: !3, file: !3, line: 171, type: !1985, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2679 = !DILocation(line: 173, column: 10, scope: !2678)
!2680 = !DILocation(line: 173, column: 3, scope: !2678)
!2681 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !2682, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2686)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!7, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!2686 = !{!2687}
!2687 = !DILocalVariable(name: "vec_", arg: 1, scope: !2681, file: !135, line: 150, type: !2684)
!2688 = !DILocation(line: 0, scope: !2681)
!2689 = !DILocation(line: 150, column: 1, scope: !2681)
!2690 = distinct !DISubprogram(name: "single_pred_edge", scope: !135, file: !135, line: 653, type: !2691, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!682, !2560}
!2693 = !{!2694}
!2694 = !DILocalVariable(name: "bb", arg: 1, scope: !2690, file: !135, line: 653, type: !2560)
!2695 = !DILocation(line: 0, scope: !2690)
!2696 = !DILocation(line: 655, column: 3, scope: !2690)
!2697 = !DILocation(line: 656, column: 10, scope: !2690)
!2698 = !DILocation(line: 656, column: 3, scope: !2690)
!2699 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !2700, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!682, !2684, !7}
!2702 = !{!2703, !2704}
!2703 = !DILocalVariable(name: "vec_", arg: 1, scope: !2699, file: !135, line: 150, type: !2684)
!2704 = !DILocalVariable(name: "ix_", arg: 2, scope: !2699, file: !135, line: 150, type: !7)
!2705 = !DILocation(line: 0, scope: !2699)
!2706 = !DILocation(line: 150, column: 1, scope: !2699)
!2707 = distinct !DISubprogram(name: "gsi_start_bb", scope: !561, file: !561, line: 4418, type: !2605, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "bb", arg: 1, scope: !2707, file: !561, line: 4418, type: !664)
!2710 = !DILocalVariable(name: "i", scope: !2707, file: !561, line: 4420, type: !2584)
!2711 = !DILocalVariable(name: "seq", scope: !2707, file: !561, line: 4421, type: !692)
!2712 = !DILocation(line: 0, scope: !2707)
!2713 = !DILocation(line: 4420, column: 24, scope: !2707)
!2714 = !DILocation(line: 4423, column: 9, scope: !2707)
!2715 = !DILocation(line: 4424, column: 11, scope: !2707)
!2716 = !DILocation(line: 4424, column: 5, scope: !2707)
!2717 = !DILocation(line: 4424, column: 9, scope: !2707)
!2718 = !DILocation(line: 4425, column: 5, scope: !2707)
!2719 = !DILocation(line: 4425, column: 9, scope: !2707)
!2720 = !DILocation(line: 4426, column: 5, scope: !2707)
!2721 = !DILocation(line: 4426, column: 8, scope: !2707)
!2722 = !DILocation(line: 4429, column: 1, scope: !2707)
!2723 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !2724, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!560, !2636}
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "g", arg: 1, scope: !2723, file: !561, line: 1052, type: !2636)
!2728 = !DILocation(line: 0, scope: !2723)
!2729 = !DILocation(line: 1054, column: 20, scope: !2723)
!2730 = !DILocation(line: 1054, column: 3, scope: !2723)
!2731 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !2653, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2732)
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "i", arg: 1, scope: !2731, file: !561, line: 4485, type: !2655)
!2734 = !DILocation(line: 0, scope: !2731)
!2735 = !DILocation(line: 4487, column: 15, scope: !2731)
!2736 = !DILocation(line: 4487, column: 20, scope: !2731)
!2737 = !DILocation(line: 4487, column: 10, scope: !2731)
!2738 = !DILocation(line: 4488, column: 1, scope: !2731)
!2739 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !2740, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!692, !2560}
!2742 = !{!2743}
!2743 = !DILocalVariable(name: "bb", arg: 1, scope: !2739, file: !561, line: 237, type: !2560)
!2744 = !DILocation(line: 0, scope: !2739)
!2745 = !DILocation(line: 239, column: 17, scope: !2739)
!2746 = !DILocation(line: 239, column: 23, scope: !2739)
!2747 = !DILocation(line: 239, column: 33, scope: !2739)
!2748 = !DILocation(line: 239, column: 43, scope: !2739)
!2749 = !DILocation(line: 239, column: 36, scope: !2739)
!2750 = !DILocation(line: 239, column: 10, scope: !2739)
!2751 = !DILocation(line: 239, column: 68, scope: !2739)
!2752 = !DILocation(line: 239, column: 3, scope: !2739)
!2753 = distinct !DISubprogram(name: "gimple_seq_first", scope: !561, file: !561, line: 159, type: !2754, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2759)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!697, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !665, line: 67, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "s", arg: 1, scope: !2753, file: !561, line: 159, type: !2756)
!2761 = !DILocation(line: 0, scope: !2753)
!2762 = !DILocation(line: 161, column: 10, scope: !2753)
!2763 = !DILocation(line: 161, column: 17, scope: !2753)
!2764 = !DILocation(line: 161, column: 3, scope: !2753)
!2765 = distinct !DISubprogram(name: "tree_ssa_phiopt_worker", scope: !3, file: !3, line: 185, type: !2766, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!7, !655}
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2791, !2792}
!2769 = !DILocalVariable(name: "do_store_elim", arg: 1, scope: !2765, file: !3, line: 185, type: !655)
!2770 = !DILocalVariable(name: "bb", scope: !2765, file: !3, line: 187, type: !664)
!2771 = !DILocalVariable(name: "bb_order", scope: !2765, file: !3, line: 188, type: !663)
!2772 = !DILocalVariable(name: "n", scope: !2765, file: !3, line: 189, type: !7)
!2773 = !DILocalVariable(name: "i", scope: !2765, file: !3, line: 189, type: !7)
!2774 = !DILocalVariable(name: "cfgchanged", scope: !2765, file: !3, line: 190, type: !655)
!2775 = !DILocalVariable(name: "nontrap", scope: !2765, file: !3, line: 191, type: !2004)
!2776 = !DILocalVariable(name: "cond_stmt", scope: !2777, file: !3, line: 212, type: !702)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 211, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 210, column: 3)
!2779 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 210, column: 3)
!2780 = !DILocalVariable(name: "phi", scope: !2777, file: !3, line: 212, type: !702)
!2781 = !DILocalVariable(name: "bb1", scope: !2777, file: !3, line: 213, type: !664)
!2782 = !DILocalVariable(name: "bb2", scope: !2777, file: !3, line: 213, type: !664)
!2783 = !DILocalVariable(name: "e1", scope: !2777, file: !3, line: 214, type: !682)
!2784 = !DILocalVariable(name: "e2", scope: !2777, file: !3, line: 214, type: !682)
!2785 = !DILocalVariable(name: "arg0", scope: !2777, file: !3, line: 215, type: !727)
!2786 = !DILocalVariable(name: "arg1", scope: !2777, file: !3, line: 215, type: !727)
!2787 = !DILocalVariable(name: "bb_tmp", scope: !2788, file: !3, line: 246, type: !664)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 245, column: 9)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 244, column: 16)
!2790 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 242, column: 11)
!2791 = !DILocalVariable(name: "e_tmp", scope: !2788, file: !3, line: 247, type: !682)
!2792 = !DILocalVariable(name: "phis", scope: !2793, file: !3, line: 281, type: !692)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 280, column: 2)
!2794 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 269, column: 11)
!2795 = !DILocation(line: 0, scope: !2765)
!2796 = !DILocation(line: 193, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 193, column: 7)
!2798 = !DILocation(line: 193, column: 7, scope: !2765)
!2799 = !DILocation(line: 195, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 194, column: 5)
!2801 = !DILocation(line: 197, column: 17, scope: !2800)
!2802 = !DILocation(line: 198, column: 5, scope: !2800)
!2803 = !DILocation(line: 207, column: 14, scope: !2765)
!2804 = !DILocation(line: 208, column: 7, scope: !2765)
!2805 = !DILocation(line: 210, column: 8, scope: !2779)
!2806 = !DILocation(line: 210, column: 17, scope: !2778)
!2807 = !DILocation(line: 190, column: 8, scope: !2765)
!2808 = !DILocation(line: 210, column: 3, scope: !2779)
!2809 = !DILocation(line: 217, column: 12, scope: !2777)
!2810 = !DILocation(line: 219, column: 19, scope: !2777)
!2811 = !DILocation(line: 0, scope: !2777)
!2812 = !DILocation(line: 221, column: 12, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 221, column: 11)
!2814 = !DILocation(line: 222, column: 11, scope: !2813)
!2815 = !DILocation(line: 222, column: 14, scope: !2813)
!2816 = !DILocation(line: 222, column: 38, scope: !2813)
!2817 = !DILocation(line: 221, column: 11, scope: !2777)
!2818 = !DILocation(line: 225, column: 12, scope: !2777)
!2819 = !DILocation(line: 226, column: 17, scope: !2777)
!2820 = !DILocation(line: 227, column: 12, scope: !2777)
!2821 = !DILocation(line: 228, column: 17, scope: !2777)
!2822 = !DILocation(line: 231, column: 16, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 231, column: 11)
!2824 = !DILocation(line: 231, column: 22, scope: !2823)
!2825 = !DILocation(line: 231, column: 39, scope: !2823)
!2826 = !DILocation(line: 232, column: 11, scope: !2823)
!2827 = !DILocation(line: 232, column: 19, scope: !2823)
!2828 = !DILocation(line: 232, column: 25, scope: !2823)
!2829 = !DILocation(line: 232, column: 42, scope: !2823)
!2830 = !DILocation(line: 231, column: 11, scope: !2777)
!2831 = !DILocation(line: 236, column: 11, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 236, column: 11)
!2833 = !DILocation(line: 236, column: 35, scope: !2832)
!2834 = !DILocation(line: 237, column: 18, scope: !2832)
!2835 = !DILocation(line: 237, column: 11, scope: !2832)
!2836 = !DILocation(line: 238, column: 7, scope: !2832)
!2837 = !DILocation(line: 238, column: 31, scope: !2832)
!2838 = !DILocation(line: 236, column: 11, scope: !2777)
!2839 = !DILocation(line: 242, column: 11, scope: !2790)
!2840 = !DILocation(line: 242, column: 31, scope: !2790)
!2841 = !DILocation(line: 242, column: 36, scope: !2790)
!2842 = !DILocation(line: 242, column: 11, scope: !2777)
!2843 = !DILocation(line: 244, column: 16, scope: !2789)
!2844 = !DILocation(line: 244, column: 36, scope: !2789)
!2845 = !DILocation(line: 244, column: 41, scope: !2789)
!2846 = !DILocation(line: 244, column: 16, scope: !2790)
!2847 = !DILocation(line: 256, column: 12, scope: !2777)
!2848 = !DILocation(line: 259, column: 12, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 259, column: 11)
!2850 = !DILocation(line: 260, column: 4, scope: !2849)
!2851 = !DILocation(line: 260, column: 12, scope: !2849)
!2852 = !DILocation(line: 260, column: 18, scope: !2849)
!2853 = !DILocation(line: 260, column: 35, scope: !2849)
!2854 = !DILocation(line: 259, column: 11, scope: !2777)
!2855 = !DILocation(line: 265, column: 12, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 265, column: 11)
!2857 = !DILocation(line: 266, column: 11, scope: !2856)
!2858 = !DILocation(line: 266, column: 14, scope: !2856)
!2859 = !DILocation(line: 266, column: 32, scope: !2856)
!2860 = !DILocation(line: 265, column: 11, scope: !2777)
!2861 = !DILocation(line: 269, column: 11, scope: !2777)
!2862 = !DILocation(line: 274, column: 8, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 274, column: 8)
!2864 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 270, column: 2)
!2865 = !DILocation(line: 274, column: 32, scope: !2863)
!2866 = !DILocation(line: 274, column: 8, scope: !2864)
!2867 = !DILocation(line: 276, column: 8, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 276, column: 8)
!2869 = !DILocation(line: 276, column: 8, scope: !2864)
!2870 = !DILocation(line: 278, column: 2, scope: !2864)
!2871 = !DILocation(line: 281, column: 22, scope: !2793)
!2872 = !DILocation(line: 0, scope: !2793)
!2873 = !DILocation(line: 286, column: 10, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 286, column: 8)
!2875 = !DILocation(line: 286, column: 8, scope: !2793)
!2876 = !DILocation(line: 289, column: 20, scope: !2793)
!2877 = !DILocation(line: 289, column: 10, scope: !2793)
!2878 = !DILocation(line: 290, column: 40, scope: !2793)
!2879 = !DILocation(line: 290, column: 36, scope: !2793)
!2880 = !DILocation(line: 290, column: 11, scope: !2793)
!2881 = !DILocation(line: 291, column: 40, scope: !2793)
!2882 = !DILocation(line: 291, column: 36, scope: !2793)
!2883 = !DILocation(line: 291, column: 11, scope: !2793)
!2884 = !DILocation(line: 295, column: 4, scope: !2793)
!2885 = !DILocation(line: 298, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 298, column: 8)
!2887 = !DILocation(line: 298, column: 8, scope: !2793)
!2888 = !DILocation(line: 300, column: 13, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 300, column: 13)
!2890 = !DILocation(line: 300, column: 13, scope: !2886)
!2891 = !DILocation(line: 302, column: 13, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 302, column: 13)
!2893 = !DILocation(line: 302, column: 13, scope: !2889)
!2894 = !DILocation(line: 304, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 304, column: 13)
!2896 = !DILocation(line: 304, column: 13, scope: !2892)
!2897 = !DILocation(line: 0, scope: !2794)
!2898 = !DILocation(line: 307, column: 5, scope: !2778)
!2899 = !DILocation(line: 210, column: 23, scope: !2778)
!2900 = !DILocation(line: 210, column: 3, scope: !2778)
!2901 = distinct !{!2901, !2808, !2902}
!2902 = !DILocation(line: 307, column: 5, scope: !2779)
!2903 = !DILocation(line: 309, column: 9, scope: !2765)
!2904 = !DILocation(line: 309, column: 3, scope: !2765)
!2905 = !DILocation(line: 311, column: 7, scope: !2765)
!2906 = !DILocation(line: 312, column: 5, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 311, column: 7)
!2908 = !DILocation(line: 314, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 314, column: 7)
!2910 = !DILocation(line: 314, column: 21, scope: !2909)
!2911 = !DILocation(line: 314, column: 18, scope: !2909)
!2912 = !DILocation(line: 318, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 315, column: 5)
!2914 = !DILocation(line: 324, column: 1, scope: !2765)
!2915 = !DILocation(line: 321, column: 12, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 321, column: 12)
!2917 = !DILocation(line: 321, column: 12, scope: !2909)
!2918 = distinct !DISubprogram(name: "get_non_trapping", scope: !3, file: !3, line: 1142, type: !2919, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2004}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "nontrap", scope: !2918, file: !3, line: 1144, type: !2004)
!2923 = !DILocalVariable(name: "walk_data", scope: !2918, file: !3, line: 1145, type: !2924)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_walk_data", file: !2925, line: 29, size: 512, elements: !2926)
!2925 = !DIFile(filename: "./domwalk.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2926 = !{!2927, !2928, !2933, !2937, !2938, !2939, !2953, !2954}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dom_direction", scope: !2924, file: !2925, line: 35, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_block_local_data", scope: !2924, file: !2925, line: 46, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2932, !664, !655}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "before_dom_children", scope: !2924, file: !2925, line: 50, baseType: !2934, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !2932, !664}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "after_dom_children", scope: !2924, file: !2925, line: 53, baseType: !2934, size: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "global_data", scope: !2924, file: !2925, line: 56, baseType: !660, size: 64, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "block_data_stack", scope: !2924, file: !2925, line: 61, baseType: !2940, size: 64, offset: 320)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !2925, line: 23, baseType: !2942)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !2925, line: 23, size: 128, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2942, file: !2925, line: 23, baseType: !2945, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !2925, line: 22, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !2925, line: 22, size: 128, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2946, file: !2925, line: 22, baseType: !7, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2946, file: !2925, line: 22, baseType: !7, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2946, file: !2925, line: 22, baseType: !2951, size: 64, offset: 64)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2952, size: 64, elements: !825)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !2925, line: 21, baseType: !660)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "block_local_data_size", scope: !2924, file: !2925, line: 65, baseType: !1219, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "free_block_data", scope: !2924, file: !2925, line: 71, baseType: !2940, size: 64, offset: 448)
!2955 = !DILocation(line: 1145, column: 3, scope: !2918)
!2956 = !DILocation(line: 1147, column: 13, scope: !2918)
!2957 = !DILocation(line: 0, scope: !2918)
!2958 = !DILocation(line: 1148, column: 20, scope: !2918)
!2959 = !DILocation(line: 1148, column: 18, scope: !2918)
!2960 = !DILocation(line: 1152, column: 3, scope: !2918)
!2961 = !DILocation(line: 1155, column: 15, scope: !2918)
!2962 = !DILocation(line: 1156, column: 27, scope: !2918)
!2963 = !DILocation(line: 1157, column: 13, scope: !2918)
!2964 = !DILocation(line: 1157, column: 41, scope: !2918)
!2965 = !DILocation(line: 1158, column: 13, scope: !2918)
!2966 = !DILocation(line: 1158, column: 33, scope: !2918)
!2967 = !DILocation(line: 1159, column: 13, scope: !2918)
!2968 = !DILocation(line: 1159, column: 32, scope: !2918)
!2969 = !DILocation(line: 1160, column: 13, scope: !2918)
!2970 = !DILocation(line: 1160, column: 25, scope: !2918)
!2971 = !DILocation(line: 1161, column: 13, scope: !2918)
!2972 = !DILocation(line: 1161, column: 35, scope: !2918)
!2973 = !DILocation(line: 1163, column: 3, scope: !2918)
!2974 = !DILocation(line: 1164, column: 36, scope: !2918)
!2975 = !DILocation(line: 1164, column: 3, scope: !2918)
!2976 = !DILocation(line: 1165, column: 3, scope: !2918)
!2977 = !DILocation(line: 1166, column: 16, scope: !2918)
!2978 = !DILocation(line: 1166, column: 3, scope: !2918)
!2979 = !DILocation(line: 1169, column: 1, scope: !2918)
!2980 = !DILocation(line: 1168, column: 3, scope: !2918)
!2981 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !2558, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2982)
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "bb", arg: 1, scope: !2981, file: !135, line: 626, type: !2560)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocation(line: 628, column: 10, scope: !2981)
!2986 = !DILocation(line: 628, column: 33, scope: !2981)
!2987 = !DILocation(line: 628, column: 3, scope: !2981)
!2988 = distinct !DISubprogram(name: "cond_store_replacement", scope: !3, file: !3, line: 1187, type: !2989, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!655, !664, !664, !682, !682, !2004}
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!2992 = !DILocalVariable(name: "middle_bb", arg: 1, scope: !2988, file: !3, line: 1187, type: !664)
!2993 = !DILocalVariable(name: "join_bb", arg: 2, scope: !2988, file: !3, line: 1187, type: !664)
!2994 = !DILocalVariable(name: "e0", arg: 3, scope: !2988, file: !3, line: 1188, type: !682)
!2995 = !DILocalVariable(name: "e1", arg: 4, scope: !2988, file: !3, line: 1188, type: !682)
!2996 = !DILocalVariable(name: "nontrap", arg: 5, scope: !2988, file: !3, line: 1188, type: !2004)
!2997 = !DILocalVariable(name: "assign", scope: !2988, file: !3, line: 1190, type: !702)
!2998 = !DILocalVariable(name: "lhs", scope: !2988, file: !3, line: 1191, type: !727)
!2999 = !DILocalVariable(name: "rhs", scope: !2988, file: !3, line: 1191, type: !727)
!3000 = !DILocalVariable(name: "name", scope: !2988, file: !3, line: 1191, type: !727)
!3001 = !DILocalVariable(name: "newphi", scope: !2988, file: !3, line: 1192, type: !702)
!3002 = !DILocalVariable(name: "new_stmt", scope: !2988, file: !3, line: 1192, type: !702)
!3003 = !DILocalVariable(name: "gsi", scope: !2988, file: !3, line: 1193, type: !2584)
!3004 = !DILocalVariable(name: "locus", scope: !2988, file: !3, line: 1194, type: !722)
!3005 = !DILocalVariable(name: "code", scope: !2988, file: !3, line: 1195, type: !183)
!3006 = !DILocation(line: 0, scope: !2988)
!3007 = !DILocation(line: 1190, column: 19, scope: !2988)
!3008 = !DILocation(line: 1193, column: 3, scope: !2988)
!3009 = !DILocation(line: 1198, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1198, column: 7)
!3011 = !DILocation(line: 1199, column: 7, scope: !3010)
!3012 = !DILocation(line: 1199, column: 10, scope: !3010)
!3013 = !DILocation(line: 1199, column: 31, scope: !3010)
!3014 = !DILocation(line: 1198, column: 7, scope: !2988)
!3015 = !DILocation(line: 1202, column: 11, scope: !2988)
!3016 = !DILocation(line: 1203, column: 9, scope: !2988)
!3017 = !DILocation(line: 1204, column: 9, scope: !2988)
!3018 = !DILocation(line: 1205, column: 8, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1205, column: 7)
!3020 = !DILocation(line: 1205, column: 7, scope: !2988)
!3021 = !DILocation(line: 1209, column: 10, scope: !2988)
!3022 = !DILocation(line: 1210, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1210, column: 7)
!3024 = !DILocation(line: 1210, column: 35, scope: !3023)
!3025 = !DILocation(line: 1211, column: 7, scope: !3023)
!3026 = !DILocation(line: 1211, column: 16, scope: !3023)
!3027 = !DILocation(line: 1211, column: 28, scope: !3023)
!3028 = !DILocation(line: 1211, column: 32, scope: !3023)
!3029 = !DILocation(line: 1210, column: 7, scope: !2988)
!3030 = !DILocation(line: 1216, column: 39, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1216, column: 7)
!3032 = !DILocation(line: 1216, column: 8, scope: !3031)
!3033 = !DILocation(line: 1216, column: 7, scope: !2988)
!3034 = !DILocation(line: 1221, column: 3, scope: !2988)
!3035 = !DILocation(line: 1222, column: 9, scope: !2988)
!3036 = !DILocation(line: 1223, column: 3, scope: !2988)
!3037 = !DILocation(line: 1227, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1227, column: 7)
!3039 = !DILocation(line: 1227, column: 22, scope: !3038)
!3040 = !DILocation(line: 0, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1228, column: 5)
!3042 = !DILocation(line: 1229, column: 39, scope: !3041)
!3043 = !DILocation(line: 1227, column: 25, scope: !3038)
!3044 = !DILocation(line: 1227, column: 44, scope: !3038)
!3045 = !DILocation(line: 1227, column: 41, scope: !3038)
!3046 = !DILocation(line: 1227, column: 7, scope: !2988)
!3047 = !DILocation(line: 1229, column: 23, scope: !3041)
!3048 = !DILocation(line: 1229, column: 21, scope: !3041)
!3049 = !DILocation(line: 1230, column: 7, scope: !3041)
!3050 = !DILocation(line: 1231, column: 11, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1231, column: 11)
!3052 = !DILocation(line: 1231, column: 39, scope: !3051)
!3053 = !DILocation(line: 1232, column: 11, scope: !3051)
!3054 = !DILocation(line: 1232, column: 42, scope: !3051)
!3055 = !DILocation(line: 1231, column: 11, scope: !3041)
!3056 = !DILocation(line: 1235, column: 23, scope: !2988)
!3057 = !DILocation(line: 1233, column: 2, scope: !3051)
!3058 = !DILocation(line: 1233, column: 36, scope: !3051)
!3059 = !DILocation(line: 1235, column: 3, scope: !2988)
!3060 = !DILocation(line: 1239, column: 9, scope: !2988)
!3061 = !DILocation(line: 1240, column: 14, scope: !2988)
!3062 = !DILocation(line: 1241, column: 25, scope: !2988)
!3063 = !DILocation(line: 1241, column: 10, scope: !2988)
!3064 = !DILocation(line: 1242, column: 3, scope: !2988)
!3065 = !DILocation(line: 1243, column: 3, scope: !2988)
!3066 = !DILocation(line: 1244, column: 3, scope: !2988)
!3067 = !DILocation(line: 1245, column: 3, scope: !2988)
!3068 = !DILocation(line: 1250, column: 29, scope: !2988)
!3069 = !DILocation(line: 1250, column: 12, scope: !2988)
!3070 = !DILocation(line: 1251, column: 3, scope: !2988)
!3071 = !DILocation(line: 1252, column: 3, scope: !2988)
!3072 = !DILocation(line: 1254, column: 9, scope: !2988)
!3073 = !DILocation(line: 1255, column: 14, scope: !2988)
!3074 = !DILocation(line: 1256, column: 3, scope: !2988)
!3075 = !DILocation(line: 1259, column: 9, scope: !2988)
!3076 = !DILocation(line: 1260, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1260, column: 7)
!3078 = !DILocation(line: 1260, column: 7, scope: !2988)
!3079 = !DILocation(line: 1262, column: 13, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1261, column: 5)
!3081 = !DILocation(line: 1263, column: 7, scope: !3080)
!3082 = !DILocation(line: 1264, column: 5, scope: !3080)
!3083 = !DILocation(line: 1266, column: 5, scope: !3077)
!3084 = !DILocation(line: 1269, column: 1, scope: !2988)
!3085 = distinct !DISubprogram(name: "phi_nodes", scope: !3086, file: !3086, line: 508, type: !2740, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3086 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "bb", arg: 1, scope: !3085, file: !3086, line: 508, type: !2560)
!3089 = !DILocation(line: 0, scope: !3085)
!3090 = !DILocation(line: 510, column: 3, scope: !3085)
!3091 = !DILocation(line: 511, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !3086, line: 511, column: 7)
!3093 = !DILocation(line: 511, column: 8, scope: !3092)
!3094 = !DILocation(line: 511, column: 7, scope: !3085)
!3095 = !DILocation(line: 513, column: 25, scope: !3085)
!3096 = !DILocation(line: 513, column: 3, scope: !3085)
!3097 = !DILocation(line: 514, column: 1, scope: !3085)
!3098 = distinct !DISubprogram(name: "gimple_seq_singleton_p", scope: !561, file: !561, line: 1192, type: !3099, scopeLine: 1193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!655, !692}
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "seq", arg: 1, scope: !3098, file: !561, line: 1192, type: !692)
!3103 = !DILocation(line: 0, scope: !3098)
!3104 = !DILocation(line: 1194, column: 12, scope: !3098)
!3105 = !DILocation(line: 1194, column: 35, scope: !3098)
!3106 = !DILocation(line: 1195, column: 4, scope: !3098)
!3107 = !DILocation(line: 1195, column: 8, scope: !3098)
!3108 = !DILocation(line: 1195, column: 34, scope: !3098)
!3109 = !DILocation(line: 1195, column: 31, scope: !3098)
!3110 = !DILocation(line: 1194, column: 3, scope: !3098)
!3111 = distinct !DISubprogram(name: "gsi_start", scope: !561, file: !561, line: 4403, type: !3112, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!2584, !692}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "seq", arg: 1, scope: !3111, file: !561, line: 4403, type: !692)
!3116 = !DILocalVariable(name: "i", scope: !3111, file: !561, line: 4405, type: !2584)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 4405, column: 24, scope: !3111)
!3119 = !DILocation(line: 4407, column: 11, scope: !3111)
!3120 = !DILocation(line: 4407, column: 5, scope: !3111)
!3121 = !DILocation(line: 4407, column: 9, scope: !3111)
!3122 = !DILocation(line: 4408, column: 5, scope: !3111)
!3123 = !DILocation(line: 4408, column: 9, scope: !3111)
!3124 = !DILocation(line: 4409, column: 11, scope: !3111)
!3125 = !DILocation(line: 4409, column: 17, scope: !3111)
!3126 = !DILocation(line: 4409, column: 27, scope: !3111)
!3127 = !DILocation(line: 4409, column: 20, scope: !3111)
!3128 = !DILocation(line: 4409, column: 10, scope: !3111)
!3129 = !DILocation(line: 4409, column: 35, scope: !3111)
!3130 = !DILocation(line: 4409, column: 5, scope: !3111)
!3131 = !DILocation(line: 4409, column: 8, scope: !3111)
!3132 = !DILocation(line: 4411, column: 3, scope: !3111)
!3133 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !3086, file: !3086, line: 450, type: !3134, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!727, !702, !1219}
!3136 = !{!3137, !3138, !3139}
!3137 = !DILocalVariable(name: "gs", arg: 1, scope: !3133, file: !3086, line: 450, type: !702)
!3138 = !DILocalVariable(name: "index", arg: 2, scope: !3133, file: !3086, line: 450, type: !1219)
!3139 = !DILocalVariable(name: "pd", scope: !3133, file: !3086, line: 452, type: !3140)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!3141 = !DILocation(line: 0, scope: !3133)
!3142 = !DILocation(line: 452, column: 46, scope: !3133)
!3143 = !DILocation(line: 452, column: 26, scope: !3133)
!3144 = !DILocation(line: 453, column: 33, scope: !3133)
!3145 = !DILocation(line: 453, column: 10, scope: !3133)
!3146 = !DILocation(line: 453, column: 3, scope: !3133)
!3147 = distinct !DISubprogram(name: "conditional_replacement", scope: !3, file: !3, line: 450, type: !3148, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!655, !664, !664, !682, !682, !702, !727, !727}
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3170}
!3151 = !DILocalVariable(name: "cond_bb", arg: 1, scope: !3147, file: !3, line: 450, type: !664)
!3152 = !DILocalVariable(name: "middle_bb", arg: 2, scope: !3147, file: !3, line: 450, type: !664)
!3153 = !DILocalVariable(name: "e0", arg: 3, scope: !3147, file: !3, line: 451, type: !682)
!3154 = !DILocalVariable(name: "e1", arg: 4, scope: !3147, file: !3, line: 451, type: !682)
!3155 = !DILocalVariable(name: "phi", arg: 5, scope: !3147, file: !3, line: 451, type: !702)
!3156 = !DILocalVariable(name: "arg0", arg: 6, scope: !3147, file: !3, line: 452, type: !727)
!3157 = !DILocalVariable(name: "arg1", arg: 7, scope: !3147, file: !3, line: 452, type: !727)
!3158 = !DILocalVariable(name: "result", scope: !3147, file: !3, line: 454, type: !727)
!3159 = !DILocalVariable(name: "stmt", scope: !3147, file: !3, line: 455, type: !702)
!3160 = !DILocalVariable(name: "new_stmt", scope: !3147, file: !3, line: 455, type: !702)
!3161 = !DILocalVariable(name: "cond", scope: !3147, file: !3, line: 456, type: !727)
!3162 = !DILocalVariable(name: "gsi", scope: !3147, file: !3, line: 457, type: !2584)
!3163 = !DILocalVariable(name: "true_edge", scope: !3147, file: !3, line: 458, type: !682)
!3164 = !DILocalVariable(name: "false_edge", scope: !3147, file: !3, line: 458, type: !682)
!3165 = !DILocalVariable(name: "new_var", scope: !3147, file: !3, line: 459, type: !727)
!3166 = !DILocalVariable(name: "new_var2", scope: !3147, file: !3, line: 459, type: !727)
!3167 = !DILocalVariable(name: "locus_0", scope: !3168, file: !3, line: 521, type: !722)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 520, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 519, column: 7)
!3170 = !DILocalVariable(name: "locus_1", scope: !3168, file: !3, line: 521, type: !722)
!3171 = !DILocation(line: 0, scope: !3147)
!3172 = !DILocation(line: 457, column: 3, scope: !3147)
!3173 = !DILocation(line: 458, column: 3, scope: !3147)
!3174 = !DILocation(line: 462, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 462, column: 7)
!3176 = !DILocation(line: 462, column: 36, scope: !3175)
!3177 = !DILocation(line: 463, column: 7, scope: !3175)
!3178 = !DILocation(line: 463, column: 10, scope: !3175)
!3179 = !DILocation(line: 463, column: 39, scope: !3175)
!3180 = !DILocation(line: 462, column: 7, scope: !3147)
!3181 = !DILocation(line: 468, column: 8, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 468, column: 7)
!3183 = !DILocation(line: 468, column: 29, scope: !3182)
!3184 = !DILocation(line: 468, column: 32, scope: !3182)
!3185 = !DILocation(line: 469, column: 7, scope: !3182)
!3186 = !DILocation(line: 469, column: 11, scope: !3182)
!3187 = !DILocation(line: 469, column: 32, scope: !3182)
!3188 = !DILocation(line: 469, column: 35, scope: !3182)
!3189 = !DILocation(line: 468, column: 7, scope: !3147)
!3190 = !DILocation(line: 474, column: 8, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 474, column: 7)
!3192 = !DILocation(line: 474, column: 7, scope: !3147)
!3193 = !DILocation(line: 495, column: 10, scope: !3147)
!3194 = !DILocation(line: 496, column: 12, scope: !3147)
!3195 = !DILocation(line: 501, column: 10, scope: !3147)
!3196 = !DILocation(line: 506, column: 3, scope: !3147)
!3197 = !DILocation(line: 507, column: 14, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 507, column: 7)
!3199 = !DILocation(line: 507, column: 11, scope: !3198)
!3200 = !DILocation(line: 507, column: 24, scope: !3198)
!3201 = !DILocation(line: 507, column: 27, scope: !3198)
!3202 = !DILocation(line: 508, column: 7, scope: !3198)
!3203 = !DILocation(line: 508, column: 17, scope: !3198)
!3204 = !DILocation(line: 508, column: 14, scope: !3198)
!3205 = !DILocation(line: 508, column: 28, scope: !3198)
!3206 = !DILocation(line: 508, column: 31, scope: !3198)
!3207 = !DILocation(line: 509, column: 7, scope: !3198)
!3208 = !DILocation(line: 509, column: 17, scope: !3198)
!3209 = !DILocation(line: 509, column: 14, scope: !3198)
!3210 = !DILocation(line: 509, column: 27, scope: !3198)
!3211 = !DILocation(line: 509, column: 30, scope: !3198)
!3212 = !DILocation(line: 510, column: 7, scope: !3198)
!3213 = !DILocation(line: 510, column: 17, scope: !3198)
!3214 = !DILocation(line: 510, column: 14, scope: !3198)
!3215 = !DILocation(line: 510, column: 28, scope: !3198)
!3216 = !DILocation(line: 510, column: 31, scope: !3198)
!3217 = !DILocation(line: 507, column: 7, scope: !3147)
!3218 = !DILocation(line: 511, column: 12, scope: !3198)
!3219 = !DILocation(line: 511, column: 5, scope: !3198)
!3220 = !DILocation(line: 515, column: 9, scope: !3147)
!3221 = !DILocation(line: 516, column: 13, scope: !3147)
!3222 = !DILocation(line: 519, column: 35, scope: !3169)
!3223 = !DILocation(line: 519, column: 55, scope: !3169)
!3224 = !DILocation(line: 519, column: 8, scope: !3169)
!3225 = !DILocation(line: 519, column: 7, scope: !3147)
!3226 = !DILocation(line: 523, column: 34, scope: !3168)
!3227 = !DILocation(line: 523, column: 18, scope: !3168)
!3228 = !DILocation(line: 524, column: 7, scope: !3168)
!3229 = !DILocation(line: 525, column: 18, scope: !3168)
!3230 = !DILocation(line: 527, column: 18, scope: !3168)
!3231 = !DILocation(line: 528, column: 7, scope: !3168)
!3232 = !DILocation(line: 529, column: 7, scope: !3168)
!3233 = !DILocation(line: 533, column: 17, scope: !3168)
!3234 = !DILocation(line: 0, scope: !3168)
!3235 = !DILocation(line: 534, column: 17, scope: !3168)
!3236 = !DILocation(line: 535, column: 19, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 535, column: 11)
!3238 = !DILocation(line: 535, column: 11, scope: !3168)
!3239 = !DILocation(line: 537, column: 7, scope: !3168)
!3240 = !DILocation(line: 538, column: 5, scope: !3168)
!3241 = !DILocation(line: 540, column: 3, scope: !3147)
!3242 = !DILocation(line: 543, column: 3, scope: !3147)
!3243 = !DILocation(line: 544, column: 1, scope: !3147)
!3244 = distinct !DISubprogram(name: "value_replacement", scope: !3, file: !3, line: 553, type: !3148, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3260}
!3246 = !DILocalVariable(name: "cond_bb", arg: 1, scope: !3244, file: !3, line: 553, type: !664)
!3247 = !DILocalVariable(name: "middle_bb", arg: 2, scope: !3244, file: !3, line: 553, type: !664)
!3248 = !DILocalVariable(name: "e0", arg: 3, scope: !3244, file: !3, line: 554, type: !682)
!3249 = !DILocalVariable(name: "e1", arg: 4, scope: !3244, file: !3, line: 554, type: !682)
!3250 = !DILocalVariable(name: "phi", arg: 5, scope: !3244, file: !3, line: 554, type: !702)
!3251 = !DILocalVariable(name: "arg0", arg: 6, scope: !3244, file: !3, line: 555, type: !727)
!3252 = !DILocalVariable(name: "arg1", arg: 7, scope: !3244, file: !3, line: 555, type: !727)
!3253 = !DILocalVariable(name: "cond", scope: !3244, file: !3, line: 557, type: !702)
!3254 = !DILocalVariable(name: "true_edge", scope: !3244, file: !3, line: 558, type: !682)
!3255 = !DILocalVariable(name: "false_edge", scope: !3244, file: !3, line: 558, type: !682)
!3256 = !DILocalVariable(name: "code", scope: !3244, file: !3, line: 559, type: !183)
!3257 = !DILocalVariable(name: "e", scope: !3258, file: !3, line: 596, type: !682)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 595, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 591, column: 7)
!3260 = !DILocalVariable(name: "arg", scope: !3258, file: !3, line: 597, type: !727)
!3261 = !DILocation(line: 0, scope: !3244)
!3262 = !DILocation(line: 558, column: 3, scope: !3244)
!3263 = !DILocation(line: 563, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 563, column: 7)
!3265 = !DILocation(line: 566, column: 8, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 566, column: 7)
!3267 = !DILocation(line: 566, column: 7, scope: !3244)
!3268 = !DILocation(line: 569, column: 10, scope: !3244)
!3269 = !DILocation(line: 570, column: 10, scope: !3244)
!3270 = !DILocation(line: 573, column: 23, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 573, column: 7)
!3272 = !DILocation(line: 578, column: 3, scope: !3244)
!3273 = !DILocation(line: 591, column: 43, scope: !3259)
!3274 = !DILocation(line: 591, column: 8, scope: !3259)
!3275 = !DILocation(line: 592, column: 8, scope: !3259)
!3276 = !DILocation(line: 592, column: 46, scope: !3259)
!3277 = !DILocation(line: 592, column: 11, scope: !3259)
!3278 = !DILocation(line: 593, column: 7, scope: !3259)
!3279 = !DILocation(line: 593, column: 46, scope: !3259)
!3280 = !DILocation(line: 593, column: 11, scope: !3259)
!3281 = !DILocation(line: 594, column: 4, scope: !3259)
!3282 = !DILocation(line: 594, column: 42, scope: !3259)
!3283 = !DILocation(line: 594, column: 7, scope: !3259)
!3284 = !DILocation(line: 591, column: 7, scope: !3244)
!3285 = !DILocation(line: 602, column: 17, scope: !3258)
!3286 = !DILocation(line: 602, column: 12, scope: !3258)
!3287 = !DILocation(line: 0, scope: !3258)
!3288 = !DILocation(line: 608, column: 14, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 608, column: 11)
!3290 = !DILocation(line: 608, column: 19, scope: !3289)
!3291 = !DILocation(line: 608, column: 11, scope: !3258)
!3292 = !DILocation(line: 609, column: 6, scope: !3289)
!3293 = !DILocation(line: 609, column: 2, scope: !3289)
!3294 = !DILocation(line: 613, column: 14, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 613, column: 11)
!3296 = !DILocation(line: 618, column: 7, scope: !3258)
!3297 = !DILocation(line: 624, column: 1, scope: !3244)
!3298 = distinct !DISubprogram(name: "abs_replacement", scope: !3, file: !3, line: 881, type: !3148, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3299)
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3300 = !DILocalVariable(name: "cond_bb", arg: 1, scope: !3298, file: !3, line: 881, type: !664)
!3301 = !DILocalVariable(name: "middle_bb", arg: 2, scope: !3298, file: !3, line: 881, type: !664)
!3302 = !DILocalVariable(name: "e0", arg: 3, scope: !3298, file: !3, line: 882, type: !682)
!3303 = !DILocalVariable(name: "e1", arg: 4, scope: !3298, file: !3, line: 882, type: !682)
!3304 = !DILocalVariable(name: "phi", arg: 5, scope: !3298, file: !3, line: 883, type: !702)
!3305 = !DILocalVariable(name: "arg0", arg: 6, scope: !3298, file: !3, line: 883, type: !727)
!3306 = !DILocalVariable(name: "arg1", arg: 7, scope: !3298, file: !3, line: 883, type: !727)
!3307 = !DILocalVariable(name: "result", scope: !3298, file: !3, line: 885, type: !727)
!3308 = !DILocalVariable(name: "new_stmt", scope: !3298, file: !3, line: 886, type: !702)
!3309 = !DILocalVariable(name: "cond", scope: !3298, file: !3, line: 886, type: !702)
!3310 = !DILocalVariable(name: "gsi", scope: !3298, file: !3, line: 887, type: !2584)
!3311 = !DILocalVariable(name: "true_edge", scope: !3298, file: !3, line: 888, type: !682)
!3312 = !DILocalVariable(name: "false_edge", scope: !3298, file: !3, line: 888, type: !682)
!3313 = !DILocalVariable(name: "assign", scope: !3298, file: !3, line: 889, type: !702)
!3314 = !DILocalVariable(name: "e", scope: !3298, file: !3, line: 890, type: !682)
!3315 = !DILocalVariable(name: "rhs", scope: !3298, file: !3, line: 891, type: !727)
!3316 = !DILocalVariable(name: "lhs", scope: !3298, file: !3, line: 891, type: !727)
!3317 = !DILocalVariable(name: "negate", scope: !3298, file: !3, line: 892, type: !655)
!3318 = !DILocalVariable(name: "cond_code", scope: !3298, file: !3, line: 893, type: !183)
!3319 = !DILocalVariable(name: "tmp", scope: !3320, file: !3, line: 968, type: !727)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 967, column: 5)
!3321 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 966, column: 7)
!3322 = !DILocation(line: 0, scope: !3298)
!3323 = !DILocation(line: 887, column: 3, scope: !3298)
!3324 = !DILocation(line: 888, column: 3, scope: !3298)
!3325 = !DILocation(line: 897, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 897, column: 7)
!3327 = !DILocation(line: 903, column: 12, scope: !3298)
!3328 = !DILocation(line: 906, column: 14, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 906, column: 7)
!3330 = !DILocation(line: 906, column: 7, scope: !3298)
!3331 = !DILocation(line: 912, column: 7, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 912, column: 7)
!3333 = !DILocation(line: 912, column: 28, scope: !3332)
!3334 = !DILocation(line: 912, column: 7, scope: !3298)
!3335 = !DILocation(line: 915, column: 9, scope: !3298)
!3336 = !DILocation(line: 917, column: 7, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 917, column: 7)
!3338 = !DILocation(line: 917, column: 39, scope: !3337)
!3339 = !DILocation(line: 917, column: 7, scope: !3298)
!3340 = !DILocation(line: 920, column: 9, scope: !3298)
!3341 = !DILocation(line: 923, column: 13, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 923, column: 7)
!3343 = !DILocation(line: 923, column: 28, scope: !3342)
!3344 = !DILocation(line: 923, column: 21, scope: !3342)
!3345 = !DILocation(line: 924, column: 16, scope: !3342)
!3346 = !DILocation(line: 924, column: 31, scope: !3342)
!3347 = !DILocation(line: 924, column: 24, scope: !3342)
!3348 = !DILocation(line: 927, column: 10, scope: !3298)
!3349 = !DILocation(line: 928, column: 12, scope: !3298)
!3350 = !DILocation(line: 931, column: 15, scope: !3298)
!3351 = !DILocation(line: 932, column: 28, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 932, column: 7)
!3353 = !DILocation(line: 937, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 937, column: 7)
!3355 = !DILocation(line: 937, column: 30, scope: !3354)
!3356 = !DILocation(line: 937, column: 7, scope: !3298)
!3357 = !DILocation(line: 940, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 940, column: 7)
!3359 = !DILocation(line: 940, column: 7, scope: !3298)
!3360 = !DILocation(line: 941, column: 23, scope: !3358)
!3361 = !DILocation(line: 941, column: 11, scope: !3358)
!3362 = !DILocation(line: 942, column: 26, scope: !3358)
!3363 = !DILocation(line: 942, column: 11, scope: !3358)
!3364 = !DILocation(line: 949, column: 3, scope: !3298)
!3365 = !DILocation(line: 954, column: 28, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 954, column: 7)
!3367 = !DILocation(line: 959, column: 10, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 959, column: 7)
!3369 = !DILocation(line: 959, column: 15, scope: !3368)
!3370 = !DILocation(line: 964, column: 12, scope: !3298)
!3371 = !DILocation(line: 966, column: 7, scope: !3298)
!3372 = !DILocation(line: 968, column: 34, scope: !3320)
!3373 = !DILocation(line: 968, column: 18, scope: !3320)
!3374 = !DILocation(line: 0, scope: !3320)
!3375 = !DILocation(line: 969, column: 7, scope: !3320)
!3376 = !DILocation(line: 970, column: 13, scope: !3320)
!3377 = !DILocation(line: 971, column: 5, scope: !3320)
!3378 = !DILocation(line: 0, scope: !3321)
!3379 = !DILocation(line: 976, column: 14, scope: !3298)
!3380 = !DILocation(line: 978, column: 9, scope: !3298)
!3381 = !DILocation(line: 979, column: 3, scope: !3298)
!3382 = !DILocation(line: 981, column: 7, scope: !3298)
!3383 = !DILocation(line: 986, column: 18, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 982, column: 5)
!3385 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 981, column: 7)
!3386 = !DILocation(line: 988, column: 7, scope: !3384)
!3387 = !DILocation(line: 989, column: 5, scope: !3384)
!3388 = !DILocation(line: 991, column: 3, scope: !3298)
!3389 = !DILocation(line: 994, column: 3, scope: !3298)
!3390 = !DILocation(line: 995, column: 1, scope: !3298)
!3391 = distinct !DISubprogram(name: "minmax_replacement", scope: !3, file: !3, line: 633, type: !3148, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3418, !3419, !3420, !3421}
!3393 = !DILocalVariable(name: "cond_bb", arg: 1, scope: !3391, file: !3, line: 633, type: !664)
!3394 = !DILocalVariable(name: "middle_bb", arg: 2, scope: !3391, file: !3, line: 633, type: !664)
!3395 = !DILocalVariable(name: "e0", arg: 3, scope: !3391, file: !3, line: 634, type: !682)
!3396 = !DILocalVariable(name: "e1", arg: 4, scope: !3391, file: !3, line: 634, type: !682)
!3397 = !DILocalVariable(name: "phi", arg: 5, scope: !3391, file: !3, line: 634, type: !702)
!3398 = !DILocalVariable(name: "arg0", arg: 6, scope: !3391, file: !3, line: 635, type: !727)
!3399 = !DILocalVariable(name: "arg1", arg: 7, scope: !3391, file: !3, line: 635, type: !727)
!3400 = !DILocalVariable(name: "result", scope: !3391, file: !3, line: 637, type: !727)
!3401 = !DILocalVariable(name: "type", scope: !3391, file: !3, line: 637, type: !727)
!3402 = !DILocalVariable(name: "cond", scope: !3391, file: !3, line: 638, type: !702)
!3403 = !DILocalVariable(name: "new_stmt", scope: !3391, file: !3, line: 638, type: !702)
!3404 = !DILocalVariable(name: "true_edge", scope: !3391, file: !3, line: 639, type: !682)
!3405 = !DILocalVariable(name: "false_edge", scope: !3391, file: !3, line: 639, type: !682)
!3406 = !DILocalVariable(name: "cmp", scope: !3391, file: !3, line: 640, type: !183)
!3407 = !DILocalVariable(name: "minmax", scope: !3391, file: !3, line: 640, type: !183)
!3408 = !DILocalVariable(name: "ass_code", scope: !3391, file: !3, line: 640, type: !183)
!3409 = !DILocalVariable(name: "smaller", scope: !3391, file: !3, line: 641, type: !727)
!3410 = !DILocalVariable(name: "larger", scope: !3391, file: !3, line: 641, type: !727)
!3411 = !DILocalVariable(name: "arg_true", scope: !3391, file: !3, line: 641, type: !727)
!3412 = !DILocalVariable(name: "arg_false", scope: !3391, file: !3, line: 641, type: !727)
!3413 = !DILocalVariable(name: "gsi", scope: !3391, file: !3, line: 642, type: !2584)
!3414 = !DILocalVariable(name: "gsi_from", scope: !3391, file: !3, line: 642, type: !2584)
!3415 = !DILocalVariable(name: "assign", scope: !3416, file: !3, line: 725, type: !702)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 713, column: 5)
!3417 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 693, column: 7)
!3418 = !DILocalVariable(name: "lhs", scope: !3416, file: !3, line: 726, type: !727)
!3419 = !DILocalVariable(name: "op0", scope: !3416, file: !3, line: 726, type: !727)
!3420 = !DILocalVariable(name: "op1", scope: !3416, file: !3, line: 726, type: !727)
!3421 = !DILocalVariable(name: "bound", scope: !3416, file: !3, line: 726, type: !727)
!3422 = !DILocation(line: 0, scope: !3391)
!3423 = !DILocation(line: 639, column: 3, scope: !3391)
!3424 = !DILocation(line: 642, column: 3, scope: !3391)
!3425 = !DILocation(line: 644, column: 10, scope: !3391)
!3426 = !DILocation(line: 647, column: 7, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 647, column: 7)
!3428 = !DILocation(line: 650, column: 10, scope: !3391)
!3429 = !DILocation(line: 651, column: 9, scope: !3391)
!3430 = !DILocation(line: 652, column: 12, scope: !3391)
!3431 = !DILocation(line: 656, column: 22, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 656, column: 7)
!3433 = !DILocation(line: 658, column: 17, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 657, column: 5)
!3435 = !DILocation(line: 659, column: 16, scope: !3434)
!3436 = !DILocation(line: 660, column: 5, scope: !3434)
!3437 = !DILocation(line: 663, column: 17, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 662, column: 5)
!3439 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 661, column: 12)
!3440 = !DILocation(line: 664, column: 16, scope: !3438)
!3441 = !DILocation(line: 0, scope: !3432)
!3442 = !DILocation(line: 671, column: 3, scope: !3391)
!3443 = !DILocation(line: 674, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 674, column: 7)
!3445 = !DILocation(line: 674, column: 18, scope: !3444)
!3446 = !DILocation(line: 674, column: 23, scope: !3444)
!3447 = !DILocation(line: 674, column: 7, scope: !3391)
!3448 = !DILocation(line: 675, column: 17, scope: !3444)
!3449 = !DILocation(line: 675, column: 15, scope: !3444)
!3450 = !DILocation(line: 675, column: 5, scope: !3444)
!3451 = !DILocation(line: 676, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 676, column: 7)
!3453 = !DILocation(line: 676, column: 19, scope: !3452)
!3454 = !DILocation(line: 676, column: 24, scope: !3452)
!3455 = !DILocation(line: 676, column: 7, scope: !3391)
!3456 = !DILocation(line: 677, column: 18, scope: !3452)
!3457 = !DILocation(line: 677, column: 16, scope: !3452)
!3458 = !DILocation(line: 679, column: 7, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 679, column: 7)
!3460 = !DILocation(line: 677, column: 5, scope: !3452)
!3461 = !DILocation(line: 0, scope: !3459)
!3462 = !DILocation(line: 679, column: 17, scope: !3459)
!3463 = !DILocation(line: 679, column: 7, scope: !3391)
!3464 = !DILocation(line: 681, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 680, column: 5)
!3466 = !DILocation(line: 687, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 686, column: 5)
!3468 = !DILocation(line: 688, column: 7, scope: !3467)
!3469 = !DILocation(line: 693, column: 7, scope: !3417)
!3470 = !DILocation(line: 693, column: 7, scope: !3391)
!3471 = !DILocation(line: 695, column: 11, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 695, column: 11)
!3473 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 694, column: 5)
!3474 = !DILocation(line: 696, column: 4, scope: !3472)
!3475 = !DILocation(line: 696, column: 7, scope: !3472)
!3476 = !DILocation(line: 695, column: 11, scope: !3473)
!3477 = !DILocation(line: 706, column: 16, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 706, column: 16)
!3479 = !DILocation(line: 707, column: 9, scope: !3478)
!3480 = !DILocation(line: 707, column: 12, scope: !3478)
!3481 = !DILocation(line: 706, column: 16, scope: !3472)
!3482 = !DILocation(line: 725, column: 23, scope: !3416)
!3483 = !DILocation(line: 0, scope: !3416)
!3484 = !DILocation(line: 728, column: 12, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 728, column: 11)
!3486 = !DILocation(line: 729, column: 4, scope: !3485)
!3487 = !DILocation(line: 729, column: 7, scope: !3485)
!3488 = !DILocation(line: 729, column: 28, scope: !3485)
!3489 = !DILocation(line: 728, column: 11, scope: !3416)
!3490 = !DILocation(line: 732, column: 13, scope: !3416)
!3491 = !DILocation(line: 733, column: 18, scope: !3416)
!3492 = !DILocation(line: 734, column: 32, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 734, column: 11)
!3494 = !DILocation(line: 736, column: 13, scope: !3416)
!3495 = !DILocation(line: 737, column: 13, scope: !3416)
!3496 = !DILocation(line: 739, column: 11, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 739, column: 11)
!3498 = !DILocation(line: 739, column: 22, scope: !3497)
!3499 = !DILocation(line: 739, column: 26, scope: !3497)
!3500 = !DILocation(line: 739, column: 11, scope: !3416)
!3501 = !DILocation(line: 742, column: 9, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 742, column: 8)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 740, column: 2)
!3504 = !DILocation(line: 742, column: 8, scope: !3503)
!3505 = !DILocation(line: 745, column: 8, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 745, column: 8)
!3507 = !DILocation(line: 745, column: 8, scope: !3503)
!3508 = !DILocation(line: 754, column: 21, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 754, column: 12)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 746, column: 6)
!3511 = !DILocation(line: 754, column: 12, scope: !3510)
!3512 = !DILocation(line: 758, column: 12, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 758, column: 12)
!3514 = !DILocation(line: 758, column: 12, scope: !3510)
!3515 = !DILocation(line: 760, column: 17, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 760, column: 17)
!3517 = !DILocation(line: 760, column: 17, scope: !3513)
!3518 = !DILocation(line: 0, scope: !3513)
!3519 = !DILocation(line: 766, column: 31, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 766, column: 12)
!3521 = !DILocation(line: 766, column: 13, scope: !3520)
!3522 = !DILocation(line: 766, column: 12, scope: !3510)
!3523 = !DILocation(line: 770, column: 13, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 770, column: 13)
!3525 = !DILocation(line: 779, column: 21, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 779, column: 12)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 771, column: 6)
!3528 = !DILocation(line: 770, column: 13, scope: !3506)
!3529 = !DILocation(line: 783, column: 12, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 783, column: 12)
!3531 = !DILocation(line: 783, column: 12, scope: !3527)
!3532 = !DILocation(line: 785, column: 17, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 785, column: 17)
!3534 = !DILocation(line: 785, column: 17, scope: !3530)
!3535 = !DILocation(line: 0, scope: !3530)
!3536 = !DILocation(line: 791, column: 31, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 791, column: 12)
!3538 = !DILocation(line: 791, column: 13, scope: !3537)
!3539 = !DILocation(line: 791, column: 12, scope: !3527)
!3540 = !DILocation(line: 801, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 801, column: 8)
!3542 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 799, column: 2)
!3543 = !DILocation(line: 801, column: 8, scope: !3542)
!3544 = !DILocation(line: 804, column: 8, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 804, column: 8)
!3546 = !DILocation(line: 804, column: 8, scope: !3542)
!3547 = !DILocation(line: 813, column: 21, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 813, column: 12)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 805, column: 6)
!3550 = !DILocation(line: 813, column: 12, scope: !3549)
!3551 = !DILocation(line: 817, column: 12, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 817, column: 12)
!3553 = !DILocation(line: 817, column: 12, scope: !3549)
!3554 = !DILocation(line: 819, column: 17, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 819, column: 17)
!3556 = !DILocation(line: 819, column: 17, scope: !3552)
!3557 = !DILocation(line: 0, scope: !3552)
!3558 = !DILocation(line: 825, column: 31, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 825, column: 12)
!3560 = !DILocation(line: 825, column: 13, scope: !3559)
!3561 = !DILocation(line: 825, column: 12, scope: !3549)
!3562 = !DILocation(line: 829, column: 13, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 829, column: 13)
!3564 = !DILocation(line: 838, column: 21, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 838, column: 12)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 830, column: 6)
!3567 = !DILocation(line: 829, column: 13, scope: !3545)
!3568 = !DILocation(line: 842, column: 12, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 842, column: 12)
!3570 = !DILocation(line: 842, column: 12, scope: !3566)
!3571 = !DILocation(line: 844, column: 17, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 844, column: 17)
!3573 = !DILocation(line: 844, column: 17, scope: !3569)
!3574 = !DILocation(line: 0, scope: !3569)
!3575 = !DILocation(line: 850, column: 31, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 850, column: 12)
!3577 = !DILocation(line: 850, column: 13, scope: !3576)
!3578 = !DILocation(line: 850, column: 12, scope: !3566)
!3579 = !DILocation(line: 0, scope: !3497)
!3580 = !DILocation(line: 859, column: 13, scope: !3416)
!3581 = !DILocation(line: 860, column: 18, scope: !3416)
!3582 = !DILocation(line: 861, column: 7, scope: !3416)
!3583 = !DILocation(line: 862, column: 5, scope: !3417)
!3584 = !DILocation(line: 865, column: 32, scope: !3391)
!3585 = !DILocation(line: 865, column: 12, scope: !3391)
!3586 = !DILocation(line: 866, column: 14, scope: !3391)
!3587 = !DILocation(line: 867, column: 9, scope: !3391)
!3588 = !DILocation(line: 868, column: 3, scope: !3391)
!3589 = !DILocation(line: 870, column: 3, scope: !3391)
!3590 = !DILocation(line: 871, column: 3, scope: !3391)
!3591 = !DILocation(line: 872, column: 1, scope: !3391)
!3592 = distinct !DISubprogram(name: "name_to_bb_hash", scope: !3, file: !3, line: 1034, type: !1201, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3593)
!3593 = !{!3594, !3595}
!3594 = !DILocalVariable(name: "p", arg: 1, scope: !3592, file: !3, line: 1034, type: !1204)
!3595 = !DILocalVariable(name: "n", scope: !3592, file: !3, line: 1036, type: !3596)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !665, line: 59, baseType: !3597)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!3599 = !DILocation(line: 0, scope: !3592)
!3600 = !DILocation(line: 1036, column: 50, scope: !3592)
!3601 = !DILocation(line: 1037, column: 10, scope: !3592)
!3602 = !DILocation(line: 1037, column: 66, scope: !3592)
!3603 = !DILocation(line: 1037, column: 32, scope: !3592)
!3604 = !DILocation(line: 1037, column: 3, scope: !3592)
!3605 = distinct !DISubprogram(name: "name_to_bb_eq", scope: !3, file: !3, line: 1043, type: !1209, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "p1", arg: 1, scope: !3605, file: !3, line: 1043, type: !1204)
!3608 = !DILocalVariable(name: "p2", arg: 2, scope: !3605, file: !3, line: 1043, type: !1204)
!3609 = !DILocalVariable(name: "n1", scope: !3605, file: !3, line: 1045, type: !1959)
!3610 = !DILocalVariable(name: "n2", scope: !3605, file: !3, line: 1046, type: !1959)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocation(line: 1048, column: 14, scope: !3605)
!3613 = !DILocation(line: 1048, column: 30, scope: !3605)
!3614 = !DILocation(line: 1048, column: 23, scope: !3605)
!3615 = !DILocation(line: 1048, column: 39, scope: !3605)
!3616 = !DILocation(line: 1048, column: 46, scope: !3605)
!3617 = !DILocation(line: 1048, column: 59, scope: !3605)
!3618 = !DILocation(line: 1048, column: 3, scope: !3605)
!3619 = distinct !DISubprogram(name: "nt_init_block", scope: !3, file: !3, line: 1107, type: !2935, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DILocalVariable(name: "data", arg: 1, scope: !3619, file: !3, line: 1107, type: !2932)
!3622 = !DILocalVariable(name: "bb", arg: 2, scope: !3619, file: !3, line: 1107, type: !664)
!3623 = !DILocalVariable(name: "gsi", scope: !3619, file: !3, line: 1109, type: !2584)
!3624 = !DILocalVariable(name: "stmt", scope: !3625, file: !3, line: 1116, type: !702)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 1115, column: 5)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1114, column: 3)
!3627 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 1114, column: 3)
!3628 = !DILocation(line: 0, scope: !3619)
!3629 = !DILocation(line: 1109, column: 3, scope: !3619)
!3630 = !DILocation(line: 1111, column: 7, scope: !3619)
!3631 = !DILocation(line: 1111, column: 11, scope: !3619)
!3632 = !DILocation(line: 1114, column: 14, scope: !3627)
!3633 = !DILocation(line: 1114, column: 8, scope: !3627)
!3634 = !DILocation(line: 1114, column: 34, scope: !3626)
!3635 = !DILocation(line: 1114, column: 33, scope: !3626)
!3636 = !DILocation(line: 1114, column: 3, scope: !3627)
!3637 = !DILocation(line: 1116, column: 21, scope: !3625)
!3638 = !DILocation(line: 0, scope: !3625)
!3639 = !DILocation(line: 1118, column: 11, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1118, column: 11)
!3641 = !DILocation(line: 1118, column: 11, scope: !3625)
!3642 = !DILocation(line: 1120, column: 26, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1119, column: 2)
!3644 = !DILocation(line: 1120, column: 52, scope: !3643)
!3645 = !DILocation(line: 1120, column: 4, scope: !3643)
!3646 = !DILocation(line: 1121, column: 26, scope: !3643)
!3647 = !DILocation(line: 1121, column: 53, scope: !3643)
!3648 = !DILocation(line: 1121, column: 4, scope: !3643)
!3649 = !DILocation(line: 1122, column: 32, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1122, column: 8)
!3651 = !DILocation(line: 1122, column: 8, scope: !3650)
!3652 = !DILocation(line: 1122, column: 63, scope: !3650)
!3653 = !DILocation(line: 1122, column: 8, scope: !3643)
!3654 = !DILocation(line: 1123, column: 28, scope: !3650)
!3655 = !DILocation(line: 1123, column: 55, scope: !3650)
!3656 = !DILocation(line: 1123, column: 6, scope: !3650)
!3657 = !DILocation(line: 1114, column: 51, scope: !3626)
!3658 = !DILocation(line: 1114, column: 3, scope: !3626)
!3659 = distinct !{!3659, !3636, !3660}
!3660 = !DILocation(line: 1126, column: 5, scope: !3627)
!3661 = !DILocation(line: 1127, column: 1, scope: !3619)
!3662 = distinct !DISubprogram(name: "nt_fini_block", scope: !3, file: !3, line: 1131, type: !2935, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3663)
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "data", arg: 1, scope: !3662, file: !3, line: 1131, type: !2932)
!3665 = !DILocalVariable(name: "bb", arg: 2, scope: !3662, file: !3, line: 1131, type: !664)
!3666 = !DILocation(line: 0, scope: !3662)
!3667 = !DILocation(line: 1134, column: 7, scope: !3662)
!3668 = !DILocation(line: 1134, column: 11, scope: !3662)
!3669 = !DILocation(line: 1135, column: 1, scope: !3662)
!3670 = distinct !DISubprogram(name: "is_gimple_assign", scope: !561, file: !561, line: 1677, type: !2634, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3671)
!3671 = !{!3672}
!3672 = !DILocalVariable(name: "gs", arg: 1, scope: !3670, file: !561, line: 1677, type: !2636)
!3673 = !DILocation(line: 0, scope: !3670)
!3674 = !DILocation(line: 1679, column: 10, scope: !3670)
!3675 = !DILocation(line: 1679, column: 27, scope: !3670)
!3676 = !DILocation(line: 1679, column: 3, scope: !3670)
!3677 = distinct !DISubprogram(name: "add_or_mark_expr", scope: !3, file: !3, line: 1057, type: !3678, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !664, !727, !2004, !655}
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3688, !3689, !3690, !3691}
!3681 = !DILocalVariable(name: "bb", arg: 1, scope: !3677, file: !3, line: 1057, type: !664)
!3682 = !DILocalVariable(name: "exp", arg: 2, scope: !3677, file: !3, line: 1057, type: !727)
!3683 = !DILocalVariable(name: "nontrap", arg: 3, scope: !3677, file: !3, line: 1058, type: !2004)
!3684 = !DILocalVariable(name: "store", arg: 4, scope: !3677, file: !3, line: 1058, type: !655)
!3685 = !DILocalVariable(name: "name", scope: !3686, file: !3, line: 1063, type: !727)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1062, column: 5)
!3687 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1060, column: 7)
!3688 = !DILocalVariable(name: "map", scope: !3686, file: !3, line: 1064, type: !1961)
!3689 = !DILocalVariable(name: "slot", scope: !3686, file: !3, line: 1065, type: !1217)
!3690 = !DILocalVariable(name: "n2bb", scope: !3686, file: !3, line: 1066, type: !1966)
!3691 = !DILocalVariable(name: "found_bb", scope: !3686, file: !3, line: 1067, type: !664)
!3692 = !DILocation(line: 0, scope: !3677)
!3693 = !DILocation(line: 1060, column: 7, scope: !3687)
!3694 = !DILocation(line: 1061, column: 7, scope: !3687)
!3695 = !DILocation(line: 1061, column: 10, scope: !3687)
!3696 = !DILocation(line: 1061, column: 44, scope: !3687)
!3697 = !DILocation(line: 1060, column: 7, scope: !3677)
!3698 = !DILocation(line: 1064, column: 7, scope: !3686)
!3699 = !DILocation(line: 0, scope: !3686)
!3700 = !DILocation(line: 1071, column: 20, scope: !3686)
!3701 = !DILocation(line: 1072, column: 11, scope: !3686)
!3702 = !DILocation(line: 1072, column: 14, scope: !3686)
!3703 = !DILocation(line: 1073, column: 11, scope: !3686)
!3704 = !DILocation(line: 1073, column: 17, scope: !3686)
!3705 = !DILocation(line: 1074, column: 30, scope: !3686)
!3706 = !DILocation(line: 1074, column: 14, scope: !3686)
!3707 = !DILocation(line: 1075, column: 36, scope: !3686)
!3708 = !DILocation(line: 1076, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1076, column: 11)
!3710 = !DILocation(line: 1076, column: 11, scope: !3686)
!3711 = !DILocation(line: 1077, column: 26, scope: !3709)
!3712 = !DILocation(line: 1077, column: 9, scope: !3709)
!3713 = !DILocation(line: 1082, column: 11, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1082, column: 11)
!3715 = !DILocation(line: 1082, column: 20, scope: !3714)
!3716 = !DILocation(line: 1082, column: 33, scope: !3714)
!3717 = !DILocation(line: 1082, column: 37, scope: !3714)
!3718 = !DILocation(line: 1082, column: 11, scope: !3686)
!3719 = !DILocation(line: 1084, column: 33, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1083, column: 2)
!3721 = !DILocation(line: 1084, column: 4, scope: !3720)
!3722 = !DILocation(line: 1085, column: 2, scope: !3720)
!3723 = !DILocation(line: 1089, column: 8, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1087, column: 9)
!3725 = !DILocation(line: 1091, column: 14, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1090, column: 6)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1089, column: 8)
!3728 = !DILocation(line: 1091, column: 17, scope: !3726)
!3729 = !DILocation(line: 1092, column: 6, scope: !3726)
!3730 = !DILocation(line: 1095, column: 15, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1094, column: 6)
!3732 = !DILocation(line: 1096, column: 23, scope: !3731)
!3733 = !DILocation(line: 1097, column: 14, scope: !3731)
!3734 = !DILocation(line: 1097, column: 17, scope: !3731)
!3735 = !DILocation(line: 1098, column: 14, scope: !3731)
!3736 = !DILocation(line: 1098, column: 20, scope: !3731)
!3737 = !DILocation(line: 1099, column: 14, scope: !3731)
!3738 = !DILocation(line: 1102, column: 5, scope: !3687)
!3739 = !DILocation(line: 1102, column: 5, scope: !3686)
!3740 = !DILocation(line: 1103, column: 1, scope: !3677)
!3741 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !561, file: !561, line: 1694, type: !3742, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!727, !2636}
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "gs", arg: 1, scope: !3741, file: !561, line: 1694, type: !2636)
!3746 = !DILocation(line: 0, scope: !3741)
!3747 = !DILocation(line: 1697, column: 10, scope: !3741)
!3748 = !DILocation(line: 1697, column: 3, scope: !3741)
!3749 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !3742, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3750)
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "gs", arg: 1, scope: !3749, file: !561, line: 1727, type: !2636)
!3752 = !DILocation(line: 0, scope: !3749)
!3753 = !DILocation(line: 1730, column: 10, scope: !3749)
!3754 = !DILocation(line: 1730, column: 3, scope: !3749)
!3755 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !561, file: !561, line: 1815, type: !3756, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!183, !2636}
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "gs", arg: 1, scope: !3755, file: !561, line: 1815, type: !2636)
!3760 = !DILocalVariable(name: "code", scope: !3755, file: !561, line: 1817, type: !183)
!3761 = !DILocation(line: 0, scope: !3755)
!3762 = !DILocation(line: 1820, column: 10, scope: !3755)
!3763 = !DILocation(line: 1821, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3755, file: !561, line: 1821, column: 7)
!3765 = !DILocation(line: 1821, column: 35, scope: !3764)
!3766 = !DILocation(line: 1821, column: 7, scope: !3755)
!3767 = !DILocation(line: 1822, column: 12, scope: !3764)
!3768 = !DILocation(line: 1822, column: 5, scope: !3764)
!3769 = !DILocation(line: 1824, column: 3, scope: !3755)
!3770 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !561, file: !561, line: 1759, type: !3742, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "gs", arg: 1, scope: !3770, file: !561, line: 1759, type: !2636)
!3773 = !DILocation(line: 0, scope: !3770)
!3774 = !DILocation(line: 1763, column: 7, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3770, file: !561, line: 1763, column: 7)
!3776 = !DILocation(line: 1763, column: 27, scope: !3775)
!3777 = !DILocation(line: 1763, column: 7, scope: !3770)
!3778 = !DILocation(line: 1764, column: 12, scope: !3775)
!3779 = !DILocation(line: 1764, column: 5, scope: !3775)
!3780 = !DILocation(line: 0, scope: !3775)
!3781 = !DILocation(line: 1767, column: 1, scope: !3770)
!3782 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !3783, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!727, !2636, !7}
!3785 = !{!3786, !3787}
!3786 = !DILocalVariable(name: "gs", arg: 1, scope: !3782, file: !561, line: 1631, type: !2636)
!3787 = !DILocalVariable(name: "i", arg: 2, scope: !3782, file: !561, line: 1631, type: !7)
!3788 = !DILocation(line: 0, scope: !3782)
!3789 = !DILocation(line: 1633, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3782, file: !561, line: 1633, column: 7)
!3791 = !DILocation(line: 1633, column: 7, scope: !3782)
!3792 = !DILocation(line: 1638, column: 14, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !561, line: 1634, column: 5)
!3794 = !DILocation(line: 1638, column: 7, scope: !3793)
!3795 = !DILocation(line: 0, scope: !3790)
!3796 = !DILocation(line: 1642, column: 1, scope: !3782)
!3797 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !2634, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "g", arg: 1, scope: !3797, file: !561, line: 1274, type: !2636)
!3800 = !DILocation(line: 0, scope: !3797)
!3801 = !DILocation(line: 1276, column: 10, scope: !3797)
!3802 = !DILocation(line: 1276, column: 26, scope: !3797)
!3803 = !DILocation(line: 1276, column: 41, scope: !3797)
!3804 = !DILocation(line: 1276, column: 44, scope: !3797)
!3805 = !DILocation(line: 1276, column: 60, scope: !3797)
!3806 = !DILocation(line: 1276, column: 3, scope: !3797)
!3807 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !3808, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!1311, !702}
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "gs", arg: 1, scope: !3807, file: !561, line: 1614, type: !702)
!3812 = !DILocalVariable(name: "off", scope: !3807, file: !561, line: 1616, type: !1219)
!3813 = !DILocation(line: 0, scope: !3807)
!3814 = !DILocation(line: 1621, column: 28, scope: !3807)
!3815 = !DILocation(line: 1621, column: 9, scope: !3807)
!3816 = !DILocation(line: 1622, column: 3, scope: !3807)
!3817 = !DILocation(line: 1624, column: 20, scope: !3807)
!3818 = !DILocation(line: 1624, column: 32, scope: !3807)
!3819 = !DILocation(line: 1624, column: 10, scope: !3807)
!3820 = !DILocation(line: 1624, column: 3, scope: !3807)
!3821 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !3822, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!599, !702}
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "gs", arg: 1, scope: !3821, file: !561, line: 1073, type: !702)
!3826 = !DILocation(line: 0, scope: !3821)
!3827 = !DILocation(line: 1075, column: 24, scope: !3821)
!3828 = !DILocation(line: 1075, column: 10, scope: !3821)
!3829 = !DILocation(line: 1075, column: 3, scope: !3821)
!3830 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !3831, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!599, !560}
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "code", arg: 1, scope: !3830, file: !561, line: 1061, type: !560)
!3835 = !DILocation(line: 0, scope: !3830)
!3836 = !DILocation(line: 1066, column: 10, scope: !3830)
!3837 = !DILocation(line: 1066, column: 3, scope: !3830)
!3838 = distinct !DISubprogram(name: "gimple_expr_code", scope: !561, file: !561, line: 1438, type: !3756, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3839)
!3839 = !{!3840, !3841}
!3840 = !DILocalVariable(name: "stmt", arg: 1, scope: !3838, file: !561, line: 1438, type: !2636)
!3841 = !DILocalVariable(name: "code", scope: !3838, file: !561, line: 1440, type: !560)
!3842 = !DILocation(line: 0, scope: !3838)
!3843 = !DILocation(line: 1440, column: 27, scope: !3838)
!3844 = !DILocation(line: 1441, column: 29, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3838, file: !561, line: 1441, column: 7)
!3846 = !DILocation(line: 1442, column: 42, scope: !3845)
!3847 = !DILocation(line: 1442, column: 5, scope: !3845)
!3848 = !DILocation(line: 1446, column: 5, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !561, line: 1443, column: 12)
!3850 = !DILocation(line: 1448, column: 5, scope: !3838)
!3851 = !DILocation(line: 1450, column: 1, scope: !3838)
!3852 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !561, file: !561, line: 1686, type: !3853, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!625, !183}
!3855 = !{!3856}
!3856 = !DILocalVariable(name: "code", arg: 1, scope: !3852, file: !561, line: 1686, type: !183)
!3857 = !DILocation(line: 0, scope: !3852)
!3858 = !DILocation(line: 1688, column: 34, scope: !3852)
!3859 = !DILocation(line: 1688, column: 10, scope: !3852)
!3860 = !DILocation(line: 1688, column: 3, scope: !3852)
!3861 = distinct !DISubprogram(name: "gimple_num_ops", scope: !561, file: !561, line: 1596, type: !3862, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!7, !2636}
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "gs", arg: 1, scope: !3861, file: !561, line: 1596, type: !2636)
!3866 = !DILocation(line: 0, scope: !3861)
!3867 = !DILocation(line: 1598, column: 21, scope: !3861)
!3868 = !DILocation(line: 1598, column: 3, scope: !3861)
!3869 = distinct !DISubprogram(name: "gimple_location", scope: !561, file: !561, line: 1139, type: !3870, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3872)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!720, !2636}
!3872 = !{!3873}
!3873 = !DILocalVariable(name: "g", arg: 1, scope: !3869, file: !561, line: 1139, type: !2636)
!3874 = !DILocation(line: 0, scope: !3869)
!3875 = !DILocation(line: 1141, column: 20, scope: !3869)
!3876 = !DILocation(line: 1141, column: 3, scope: !3869)
!3877 = distinct !DISubprogram(name: "get_var_ann", scope: !3086, file: !3086, line: 141, type: !3878, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3881)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!3880, !727}
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !1102, line: 297, baseType: !1100)
!3881 = !{!3882, !3883}
!3882 = !DILocalVariable(name: "var", arg: 1, scope: !3877, file: !3086, line: 141, type: !727)
!3883 = !DILocalVariable(name: "p", scope: !3877, file: !3086, line: 143, type: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3885 = !DILocation(line: 0, scope: !3877)
!3886 = !DILocation(line: 143, column: 18, scope: !3877)
!3887 = !DILocation(line: 144, column: 3, scope: !3877)
!3888 = !DILocation(line: 145, column: 10, scope: !3877)
!3889 = !DILocation(line: 145, column: 20, scope: !3877)
!3890 = !DILocation(line: 145, column: 3, scope: !3877)
!3891 = distinct !DISubprogram(name: "make_ssa_name", scope: !3086, file: !3086, line: 1245, type: !3892, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!727, !727, !702}
!3894 = !{!3895, !3896}
!3895 = !DILocalVariable(name: "var", arg: 1, scope: !3891, file: !3086, line: 1245, type: !727)
!3896 = !DILocalVariable(name: "stmt", arg: 2, scope: !3891, file: !3086, line: 1245, type: !702)
!3897 = !DILocation(line: 0, scope: !3891)
!3898 = !DILocation(line: 1247, column: 28, scope: !3891)
!3899 = !DILocation(line: 1247, column: 10, scope: !3891)
!3900 = !DILocation(line: 1247, column: 3, scope: !3891)
!3901 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !561, file: !561, line: 1714, type: !3902, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !702, !727}
!3904 = !{!3905, !3906}
!3905 = !DILocalVariable(name: "gs", arg: 1, scope: !3901, file: !561, line: 1714, type: !702)
!3906 = !DILocalVariable(name: "lhs", arg: 2, scope: !3901, file: !561, line: 1714, type: !727)
!3907 = !DILocation(line: 0, scope: !3901)
!3908 = !DILocation(line: 1717, column: 3, scope: !3901)
!3909 = !DILocation(line: 1719, column: 7, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !561, line: 1719, column: 7)
!3911 = !DILocation(line: 1719, column: 11, scope: !3910)
!3912 = !DILocation(line: 1719, column: 14, scope: !3910)
!3913 = !DILocation(line: 1719, column: 30, scope: !3910)
!3914 = !DILocation(line: 1719, column: 7, scope: !3901)
!3915 = !DILocation(line: 1720, column: 5, scope: !3910)
!3916 = !DILocation(line: 1720, column: 29, scope: !3910)
!3917 = !DILocation(line: 1721, column: 1, scope: !3901)
!3918 = distinct !DISubprogram(name: "gimple_set_location", scope: !561, file: !561, line: 1156, type: !3919, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !702, !720}
!3921 = !{!3922, !3923}
!3922 = !DILocalVariable(name: "g", arg: 1, scope: !3918, file: !561, line: 1156, type: !702)
!3923 = !DILocalVariable(name: "location", arg: 2, scope: !3918, file: !561, line: 1156, type: !720)
!3924 = !DILocation(line: 0, scope: !3918)
!3925 = !DILocation(line: 1158, column: 13, scope: !3918)
!3926 = !DILocation(line: 1158, column: 22, scope: !3918)
!3927 = !DILocation(line: 1159, column: 1, scope: !3918)
!3928 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3086, file: !3086, line: 434, type: !3929, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!727, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1294, line: 27, baseType: !1311)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "def", arg: 1, scope: !3928, file: !3086, line: 434, type: !3931)
!3934 = !DILocation(line: 0, scope: !3928)
!3935 = !DILocation(line: 436, column: 10, scope: !3928)
!3936 = !DILocation(line: 436, column: 3, scope: !3928)
!3937 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !561, file: !561, line: 3080, type: !3808, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3938)
!3938 = !{!3939}
!3939 = !DILocalVariable(name: "gs", arg: 1, scope: !3937, file: !561, line: 3080, type: !702)
!3940 = !DILocation(line: 0, scope: !3937)
!3941 = !DILocation(line: 3083, column: 26, scope: !3937)
!3942 = !DILocation(line: 3083, column: 3, scope: !3937)
!3943 = distinct !DISubprogram(name: "gsi_last_bb", scope: !561, file: !561, line: 4450, type: !2605, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DILocalVariable(name: "bb", arg: 1, scope: !3943, file: !561, line: 4450, type: !664)
!3946 = !DILocalVariable(name: "i", scope: !3943, file: !561, line: 4452, type: !2584)
!3947 = !DILocalVariable(name: "seq", scope: !3943, file: !561, line: 4453, type: !692)
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 4452, column: 24, scope: !3943)
!3950 = !DILocation(line: 4455, column: 9, scope: !3943)
!3951 = !DILocation(line: 4456, column: 11, scope: !3943)
!3952 = !DILocation(line: 4456, column: 5, scope: !3943)
!3953 = !DILocation(line: 4456, column: 9, scope: !3943)
!3954 = !DILocation(line: 4457, column: 5, scope: !3943)
!3955 = !DILocation(line: 4457, column: 9, scope: !3943)
!3956 = !DILocation(line: 4458, column: 5, scope: !3943)
!3957 = !DILocation(line: 4458, column: 8, scope: !3943)
!3958 = !DILocation(line: 4461, column: 1, scope: !3943)
!3959 = distinct !DISubprogram(name: "gimple_set_op", scope: !561, file: !561, line: 1663, type: !3960, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{null, !702, !7, !727}
!3962 = !{!3963, !3964, !3965}
!3963 = !DILocalVariable(name: "gs", arg: 1, scope: !3959, file: !561, line: 1663, type: !702)
!3964 = !DILocalVariable(name: "i", arg: 2, scope: !3959, file: !561, line: 1663, type: !7)
!3965 = !DILocalVariable(name: "op", arg: 3, scope: !3959, file: !561, line: 1663, type: !727)
!3966 = !DILocation(line: 0, scope: !3959)
!3967 = !DILocation(line: 1665, column: 3, scope: !3959)
!3968 = !DILocation(line: 1671, column: 3, scope: !3959)
!3969 = !DILocation(line: 1671, column: 22, scope: !3959)
!3970 = !DILocation(line: 1672, column: 1, scope: !3959)
!3971 = distinct !DISubprogram(name: "gimple_seq_last", scope: !561, file: !561, line: 178, type: !2754, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3972)
!3972 = !{!3973}
!3973 = !DILocalVariable(name: "s", arg: 1, scope: !3971, file: !561, line: 178, type: !2756)
!3974 = !DILocation(line: 0, scope: !3971)
!3975 = !DILocation(line: 180, column: 10, scope: !3971)
!3976 = !DILocation(line: 180, column: 17, scope: !3971)
!3977 = !DILocation(line: 180, column: 3, scope: !3971)
!3978 = distinct !DISubprogram(name: "gimple_bb", scope: !561, file: !561, line: 1112, type: !3979, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!666, !2636}
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "g", arg: 1, scope: !3978, file: !561, line: 1112, type: !2636)
!3983 = !DILocation(line: 0, scope: !3978)
!3984 = !DILocation(line: 1114, column: 20, scope: !3978)
!3985 = !DILocation(line: 1114, column: 3, scope: !3978)
!3986 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !561, file: !561, line: 3100, type: !3987, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!3140, !702, !7}
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "gs", arg: 1, scope: !3986, file: !561, line: 3100, type: !702)
!3991 = !DILocalVariable(name: "index", arg: 2, scope: !3986, file: !561, line: 3100, type: !7)
!3992 = !DILocation(line: 0, scope: !3986)
!3993 = !DILocation(line: 3103, column: 3, scope: !3986)
!3994 = !DILocation(line: 3104, column: 12, scope: !3986)
!3995 = !DILocation(line: 3104, column: 3, scope: !3986)
!3996 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3086, file: !3086, line: 427, type: !3997, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!727, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1294, line: 30, baseType: !4000)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !151, line: 1893, baseType: !1318)
!4002 = !{!4003}
!4003 = !DILocalVariable(name: "use", arg: 1, scope: !3996, file: !3086, line: 427, type: !3999)
!4004 = !DILocation(line: 0, scope: !3996)
!4005 = !DILocation(line: 429, column: 17, scope: !3996)
!4006 = !DILocation(line: 429, column: 10, scope: !3996)
!4007 = !DILocation(line: 429, column: 3, scope: !3996)
!4008 = distinct !DISubprogram(name: "gimple_cond_code", scope: !561, file: !561, line: 2221, type: !3756, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4009)
!4009 = !{!4010}
!4010 = !DILocalVariable(name: "gs", arg: 1, scope: !4008, file: !561, line: 2221, type: !2636)
!4011 = !DILocation(line: 0, scope: !4008)
!4012 = !DILocation(line: 2224, column: 38, scope: !4008)
!4013 = !DILocation(line: 2224, column: 3, scope: !4008)
!4014 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !561, file: !561, line: 2241, type: !3742, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4015)
!4015 = !{!4016}
!4016 = !DILocalVariable(name: "gs", arg: 1, scope: !4014, file: !561, line: 2241, type: !2636)
!4017 = !DILocation(line: 0, scope: !4014)
!4018 = !DILocation(line: 2244, column: 10, scope: !4014)
!4019 = !DILocation(line: 2244, column: 3, scope: !4014)
!4020 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !561, file: !561, line: 2271, type: !3742, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "gs", arg: 1, scope: !4020, file: !561, line: 2271, type: !2636)
!4023 = !DILocation(line: 0, scope: !4020)
!4024 = !DILocation(line: 2274, column: 10, scope: !4020)
!4025 = !DILocation(line: 2274, column: 3, scope: !4020)
!4026 = distinct !DISubprogram(name: "gimple_phi_arg_location", scope: !3086, file: !3086, line: 475, type: !4027, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!722, !702, !1219}
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "gs", arg: 1, scope: !4026, file: !3086, line: 475, type: !702)
!4031 = !DILocalVariable(name: "i", arg: 2, scope: !4026, file: !3086, line: 475, type: !1219)
!4032 = !DILocation(line: 0, scope: !4026)
!4033 = !DILocation(line: 477, column: 30, scope: !4026)
!4034 = !DILocation(line: 477, column: 10, scope: !4026)
!4035 = !DILocation(line: 477, column: 34, scope: !4026)
!4036 = !DILocation(line: 477, column: 3, scope: !4026)
!4037 = distinct !DISubprogram(name: "replace_phi_edge_with_variable", scope: !3, file: !3, line: 400, type: !4038, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !664, !682, !702, !727}
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046, !4047}
!4041 = !DILocalVariable(name: "cond_block", arg: 1, scope: !4037, file: !3, line: 400, type: !664)
!4042 = !DILocalVariable(name: "e", arg: 2, scope: !4037, file: !3, line: 401, type: !682)
!4043 = !DILocalVariable(name: "phi", arg: 3, scope: !4037, file: !3, line: 401, type: !702)
!4044 = !DILocalVariable(name: "new_tree", arg: 4, scope: !4037, file: !3, line: 401, type: !727)
!4045 = !DILocalVariable(name: "bb", scope: !4037, file: !3, line: 403, type: !664)
!4046 = !DILocalVariable(name: "block_to_remove", scope: !4037, file: !3, line: 404, type: !664)
!4047 = !DILocalVariable(name: "gsi", scope: !4037, file: !3, line: 405, type: !2584)
!4048 = !DILocation(line: 0, scope: !4037)
!4049 = !DILocation(line: 403, column: 20, scope: !4037)
!4050 = !DILocation(line: 405, column: 3, scope: !4037)
!4051 = !DILocation(line: 408, column: 3, scope: !4037)
!4052 = !DILocation(line: 411, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 411, column: 7)
!4054 = !DILocation(line: 411, column: 34, scope: !4053)
!4055 = !DILocation(line: 411, column: 39, scope: !4053)
!4056 = !DILocation(line: 0, scope: !4053)
!4057 = !DILocation(line: 411, column: 7, scope: !4037)
!4058 = !DILocation(line: 413, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 412, column: 5)
!4060 = !DILocation(line: 413, column: 34, scope: !4059)
!4061 = !DILocation(line: 413, column: 40, scope: !4059)
!4062 = !DILocation(line: 414, column: 7, scope: !4059)
!4063 = !DILocation(line: 414, column: 34, scope: !4059)
!4064 = !DILocation(line: 414, column: 40, scope: !4059)
!4065 = !DILocation(line: 415, column: 7, scope: !4059)
!4066 = !DILocation(line: 415, column: 34, scope: !4059)
!4067 = !DILocation(line: 415, column: 46, scope: !4059)
!4068 = !DILocation(line: 416, column: 43, scope: !4059)
!4069 = !DILocation(line: 416, column: 70, scope: !4059)
!4070 = !DILocation(line: 416, column: 7, scope: !4059)
!4071 = !DILocation(line: 416, column: 34, scope: !4059)
!4072 = !DILocation(line: 416, column: 40, scope: !4059)
!4073 = !DILocation(line: 418, column: 25, scope: !4059)
!4074 = !DILocation(line: 419, column: 5, scope: !4059)
!4075 = !DILocation(line: 422, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 421, column: 5)
!4077 = !DILocation(line: 422, column: 34, scope: !4076)
!4078 = !DILocation(line: 422, column: 40, scope: !4076)
!4079 = !DILocation(line: 423, column: 7, scope: !4076)
!4080 = !DILocation(line: 423, column: 34, scope: !4076)
!4081 = !DILocation(line: 424, column: 2, scope: !4076)
!4082 = !DILocation(line: 425, column: 7, scope: !4076)
!4083 = !DILocation(line: 425, column: 34, scope: !4076)
!4084 = !DILocation(line: 425, column: 46, scope: !4076)
!4085 = !DILocation(line: 426, column: 43, scope: !4076)
!4086 = !DILocation(line: 426, column: 70, scope: !4076)
!4087 = !DILocation(line: 426, column: 7, scope: !4076)
!4088 = !DILocation(line: 426, column: 34, scope: !4076)
!4089 = !DILocation(line: 426, column: 40, scope: !4076)
!4090 = !DILocation(line: 428, column: 25, scope: !4076)
!4091 = !DILocation(line: 430, column: 3, scope: !4037)
!4092 = !DILocation(line: 433, column: 9, scope: !4037)
!4093 = !DILocation(line: 434, column: 3, scope: !4037)
!4094 = !DILocation(line: 436, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 436, column: 7)
!4096 = !DILocation(line: 436, column: 17, scope: !4095)
!4097 = !DILocation(line: 436, column: 21, scope: !4095)
!4098 = !DILocation(line: 436, column: 32, scope: !4095)
!4099 = !DILocation(line: 436, column: 7, scope: !4037)
!4100 = !DILocation(line: 439, column: 20, scope: !4095)
!4101 = !DILocation(line: 440, column: 12, scope: !4095)
!4102 = !DILocation(line: 437, column: 5, scope: !4095)
!4103 = !DILocation(line: 441, column: 1, scope: !4037)
!4104 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !3086, file: !3086, line: 233, type: !4105, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !3999, !727}
!4107 = !{!4108, !4109}
!4108 = !DILocalVariable(name: "use", arg: 1, scope: !4104, file: !3086, line: 233, type: !3999)
!4109 = !DILocalVariable(name: "val", arg: 2, scope: !4104, file: !3086, line: 233, type: !727)
!4110 = !DILocation(line: 0, scope: !4104)
!4111 = !DILocation(line: 235, column: 3, scope: !4104)
!4112 = !DILocation(line: 236, column: 10, scope: !4104)
!4113 = !DILocation(line: 236, column: 15, scope: !4104)
!4114 = !DILocation(line: 237, column: 3, scope: !4104)
!4115 = !DILocation(line: 238, column: 1, scope: !4104)
!4116 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3086, file: !3086, line: 442, type: !4117, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!3999, !702, !656}
!4119 = !{!4120, !4121}
!4120 = !DILocalVariable(name: "gs", arg: 1, scope: !4116, file: !3086, line: 442, type: !702)
!4121 = !DILocalVariable(name: "i", arg: 2, scope: !4116, file: !3086, line: 442, type: !656)
!4122 = !DILocation(line: 0, scope: !4116)
!4123 = !DILocation(line: 444, column: 11, scope: !4116)
!4124 = !DILocation(line: 444, column: 35, scope: !4116)
!4125 = !DILocation(line: 444, column: 3, scope: !4116)
!4126 = distinct !DISubprogram(name: "delink_imm_use", scope: !3086, file: !3086, line: 188, type: !4127, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !4000}
!4129 = !{!4130}
!4130 = !DILocalVariable(name: "linknode", arg: 1, scope: !4126, file: !3086, line: 188, type: !4000)
!4131 = !DILocation(line: 0, scope: !4126)
!4132 = !DILocation(line: 191, column: 17, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4126, file: !3086, line: 191, column: 7)
!4134 = !DILocation(line: 191, column: 22, scope: !4133)
!4135 = !DILocation(line: 191, column: 7, scope: !4126)
!4136 = !DILocation(line: 194, column: 36, scope: !4126)
!4137 = !DILocation(line: 194, column: 19, scope: !4126)
!4138 = !DILocation(line: 194, column: 24, scope: !4126)
!4139 = !DILocation(line: 195, column: 36, scope: !4126)
!4140 = !DILocation(line: 195, column: 13, scope: !4126)
!4141 = !DILocation(line: 195, column: 24, scope: !4126)
!4142 = !DILocation(line: 196, column: 18, scope: !4126)
!4143 = !DILocation(line: 197, column: 18, scope: !4126)
!4144 = !DILocation(line: 198, column: 1, scope: !4126)
!4145 = distinct !DISubprogram(name: "link_imm_use", scope: !3086, file: !3086, line: 214, type: !4146, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !4000, !727}
!4148 = !{!4149, !4150, !4151}
!4149 = !DILocalVariable(name: "linknode", arg: 1, scope: !4145, file: !3086, line: 214, type: !4000)
!4150 = !DILocalVariable(name: "def", arg: 2, scope: !4145, file: !3086, line: 214, type: !727)
!4151 = !DILocalVariable(name: "root", scope: !4145, file: !3086, line: 216, type: !4000)
!4152 = !DILocation(line: 0, scope: !4145)
!4153 = !DILocation(line: 218, column: 8, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4145, file: !3086, line: 218, column: 7)
!4155 = !DILocation(line: 218, column: 12, scope: !4154)
!4156 = !DILocation(line: 218, column: 15, scope: !4154)
!4157 = !DILocation(line: 218, column: 31, scope: !4154)
!4158 = !DILocation(line: 218, column: 7, scope: !4145)
!4159 = !DILocation(line: 219, column: 15, scope: !4154)
!4160 = !DILocation(line: 219, column: 20, scope: !4154)
!4161 = !DILocation(line: 219, column: 5, scope: !4154)
!4162 = !DILocation(line: 222, column: 16, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4154, file: !3086, line: 221, column: 5)
!4164 = !DILocation(line: 227, column: 7, scope: !4163)
!4165 = !DILocation(line: 229, column: 1, scope: !4145)
!4166 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !3086, file: !3086, line: 202, type: !4167, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{null, !4000, !4000}
!4169 = !{!4170, !4171}
!4170 = !DILocalVariable(name: "linknode", arg: 1, scope: !4166, file: !3086, line: 202, type: !4000)
!4171 = !DILocalVariable(name: "list", arg: 2, scope: !4166, file: !3086, line: 202, type: !4000)
!4172 = !DILocation(line: 0, scope: !4166)
!4173 = !DILocation(line: 206, column: 13, scope: !4166)
!4174 = !DILocation(line: 206, column: 18, scope: !4166)
!4175 = !DILocation(line: 207, column: 26, scope: !4166)
!4176 = !DILocation(line: 207, column: 13, scope: !4166)
!4177 = !DILocation(line: 207, column: 18, scope: !4166)
!4178 = !DILocation(line: 208, column: 9, scope: !4166)
!4179 = !DILocation(line: 208, column: 15, scope: !4166)
!4180 = !DILocation(line: 208, column: 20, scope: !4166)
!4181 = !DILocation(line: 209, column: 14, scope: !4166)
!4182 = !DILocation(line: 210, column: 1, scope: !4166)
!4183 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !2691, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "bb", arg: 1, scope: !4183, file: !135, line: 643, type: !2560)
!4186 = !DILocation(line: 0, scope: !4183)
!4187 = !DILocation(line: 645, column: 3, scope: !4183)
!4188 = !DILocation(line: 646, column: 10, scope: !4183)
!4189 = !DILocation(line: 646, column: 3, scope: !4183)
!4190 = distinct !DISubprogram(name: "gsi_last_nondebug_bb", scope: !561, file: !561, line: 4562, type: !2605, scopeLine: 4563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4191)
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "bb", arg: 1, scope: !4190, file: !561, line: 4562, type: !664)
!4193 = !DILocalVariable(name: "i", scope: !4190, file: !561, line: 4564, type: !2584)
!4194 = !DILocation(line: 0, scope: !4190)
!4195 = !DILocation(line: 4564, column: 24, scope: !4190)
!4196 = !DILocation(line: 4564, column: 28, scope: !4190)
!4197 = !DILocation(line: 4566, column: 8, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !561, line: 4566, column: 7)
!4199 = !DILocation(line: 4566, column: 22, scope: !4198)
!4200 = !DILocation(line: 4566, column: 42, scope: !4198)
!4201 = !DILocation(line: 4566, column: 25, scope: !4198)
!4202 = !DILocation(line: 4566, column: 7, scope: !4190)
!4203 = !DILocation(line: 4567, column: 5, scope: !4198)
!4204 = !DILocation(line: 4569, column: 3, scope: !4190)
!4205 = distinct !DISubprogram(name: "gsi_prev_nondebug", scope: !561, file: !561, line: 4535, type: !2653, scopeLine: 4536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4206)
!4206 = !{!4207}
!4207 = !DILocalVariable(name: "i", arg: 1, scope: !4205, file: !561, line: 4535, type: !2655)
!4208 = !DILocation(line: 0, scope: !4205)
!4209 = !DILocation(line: 4537, column: 3, scope: !4205)
!4210 = !DILocation(line: 4539, column: 7, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4205, file: !561, line: 4538, column: 5)
!4212 = !DILocation(line: 4541, column: 11, scope: !4205)
!4213 = !DILocation(line: 4541, column: 26, scope: !4205)
!4214 = !DILocation(line: 4541, column: 46, scope: !4205)
!4215 = !DILocation(line: 4541, column: 29, scope: !4205)
!4216 = !DILocation(line: 4540, column: 5, scope: !4211)
!4217 = distinct !{!4217, !4209, !4218}
!4218 = !DILocation(line: 4541, column: 60, scope: !4205)
!4219 = !DILocation(line: 4542, column: 1, scope: !4205)
!4220 = distinct !DISubprogram(name: "gsi_prev", scope: !561, file: !561, line: 4493, type: !2653, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "i", arg: 1, scope: !4220, file: !561, line: 4493, type: !2655)
!4223 = !DILocation(line: 0, scope: !4220)
!4224 = !DILocation(line: 4495, column: 15, scope: !4220)
!4225 = !DILocation(line: 4495, column: 20, scope: !4220)
!4226 = !DILocation(line: 4495, column: 10, scope: !4220)
!4227 = !DILocation(line: 4496, column: 1, scope: !4220)
