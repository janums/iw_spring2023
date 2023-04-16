; ModuleID = 'tree-switch-conversion.bc'
source_filename = "tree-switch-conversion.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtx_def = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.switch_conv_info = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.basic_block_def*, %struct.basic_block_def*, i32, %union.tree_node**, %struct.VEC_constructor_elt_gc**, %union.tree_node**, %union.tree_node**, i32, i64, i64, %union.gimple_statement_d*, %union.gimple_statement_d*, i8* }
%struct.VEC_constructor_elt_gc = type { %struct.VEC_constructor_elt_base }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { %union.tree_node*, %union.tree_node* }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, %union.tree_node*, %union.gimple_statement_d*, i32, %struct.ptr_info_def*, %struct.ssa_use_operand_d }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"switchconv\00", align 1
@pass_convert_switch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8 ()* @switchconv_gate, i32 ()* @do_switchconv, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 109, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8, !dbg !0
@flag_tree_switch_conversion = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"beginning to process the following SWITCH statement (%s:%d) : ------- \0A\00", align 1
@info = internal unnamed_addr global %struct.switch_conv_info zeroinitializer, align 8, !dbg !1685
@.str.2 = private unnamed_addr constant [18 x i8] c"Switch converted\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"tree-switch-conversion.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Bailing out - \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"switch has no labels\0A\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"index error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Processing of case %i failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"index range way too large or otherwise unusable.\0A\00", align 1
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"the maximum range-branch ratio exceeded.\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"  Bad case - cs BB  label is NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"  Bad case - a non-final BB has two predecessors\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"  Bad case - a non-final BB not empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"  Bad case - different final BB\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"   Non-invariant value from a case\0A\00", align 1
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [53 x i8] c"   Value from a case would need runtime relocations\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"   Value from a case is not a valid initializer\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"csti\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"CSWTCH\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"csui\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1748, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1749, metadata !DIExpression()), !dbg !1750
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1751
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1752
  ret i32 %call, !dbg !1753
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1754 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1758
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1759
  ret i32 %call, !dbg !1760
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1816, metadata !DIExpression()), !dbg !1817
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1818
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1818
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1818
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1818
  %cmp = icmp uge i8* %0, %1, !dbg !1818
  %conv1 = zext i1 %cmp to i64, !dbg !1818
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1818
  %tobool = icmp eq i64 %expval, 0, !dbg !1818
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1818

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1818
  br label %cond.end, !dbg !1818

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1818
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1818
  %2 = load i8, i8* %0, align 1, !dbg !1818
  %conv3 = zext i8 %2 to i32, !dbg !1818
  br label %cond.end, !dbg !1818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1818
  ret i32 %cond, !dbg !1819
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1820 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1822, metadata !DIExpression()), !dbg !1823
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1824
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1824
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1824
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1824
  %cmp = icmp uge i8* %0, %1, !dbg !1824
  %conv1 = zext i1 %cmp to i64, !dbg !1824
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1824
  %tobool = icmp eq i64 %expval, 0, !dbg !1824
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1824

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1824
  br label %cond.end, !dbg !1824

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1824
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1824
  %2 = load i8, i8* %0, align 1, !dbg !1824
  %conv3 = zext i8 %2 to i32, !dbg !1824
  br label %cond.end, !dbg !1824

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1824
  ret i32 %cond, !dbg !1825
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1826 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1827
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1827
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1827
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1827
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1827
  %cmp = icmp uge i8* %1, %2, !dbg !1827
  %conv1 = zext i1 %cmp to i64, !dbg !1827
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1827
  %tobool = icmp eq i64 %expval, 0, !dbg !1827
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1827

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1827
  br label %cond.end, !dbg !1827

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1827
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1827
  %3 = load i8, i8* %1, align 1, !dbg !1827
  %conv3 = zext i8 %3 to i32, !dbg !1827
  br label %cond.end, !dbg !1827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1827
  ret i32 %cond, !dbg !1828
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1833, metadata !DIExpression()), !dbg !1834
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1835
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1836
  ret i32 %call, !dbg !1837
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1838 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1843, metadata !DIExpression()), !dbg !1844
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1845
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1845
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1845
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1845
  %cmp = icmp uge i8* %0, %1, !dbg !1845
  %conv1 = zext i1 %cmp to i64, !dbg !1845
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1845
  %tobool = icmp eq i64 %expval, 0, !dbg !1845
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1845

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1845
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1845
  br label %cond.end, !dbg !1845

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1845
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1845
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1845
  store i8 %conv2, i8* %0, align 1, !dbg !1845
  %conv6 = and i32 %__c, 255, !dbg !1845
  br label %cond.end, !dbg !1845

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1845
  ret i32 %cond, !dbg !1846
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1847 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1849, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1850, metadata !DIExpression()), !dbg !1851
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1852
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1852
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1852
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1852
  %cmp = icmp uge i8* %0, %1, !dbg !1852
  %conv1 = zext i1 %cmp to i64, !dbg !1852
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1852
  %tobool = icmp eq i64 %expval, 0, !dbg !1852
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1852

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1852
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1852
  br label %cond.end, !dbg !1852

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1852
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1852
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1852
  store i8 %conv2, i8* %0, align 1, !dbg !1852
  %conv6 = and i32 %__c, 255, !dbg !1852
  br label %cond.end, !dbg !1852

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1852
  ret i32 %cond, !dbg !1853
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1856, metadata !DIExpression()), !dbg !1857
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1858
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1858
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1858
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1858
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1858
  %cmp = icmp uge i8* %1, %2, !dbg !1858
  %conv1 = zext i1 %cmp to i64, !dbg !1858
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1858
  %tobool = icmp eq i64 %expval, 0, !dbg !1858
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1858

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1858
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1858
  br label %cond.end, !dbg !1858

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1858
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1858
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1858
  store i8 %conv4, i8* %1, align 1, !dbg !1858
  %conv6 = and i32 %__c, 255, !dbg !1858
  br label %cond.end, !dbg !1858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1858
  ret i32 %cond, !dbg !1859
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1866, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1868, metadata !DIExpression()), !dbg !1869
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1870
  ret i64 %call, !dbg !1871
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1874, metadata !DIExpression()), !dbg !1875
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1876
  %0 = load i32, i32* %_flags, align 8, !dbg !1876
  %and = lshr i32 %0, 4, !dbg !1876
  %and.lobit = and i32 %and, 1, !dbg !1876
  ret i32 %and.lobit, !dbg !1877
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1880, metadata !DIExpression()), !dbg !1881
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1882
  %0 = load i32, i32* %_flags, align 8, !dbg !1882
  %and = lshr i32 %0, 5, !dbg !1882
  %and.lobit = and i32 %and, 1, !dbg !1882
  ret i32 %and.lobit, !dbg !1883
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1887, metadata !DIExpression()), !dbg !1888
  %__c.off = add i32 %__c, 128, !dbg !1889
  %0 = icmp ult i32 %__c.off, 384, !dbg !1889
  br i1 %0, label %cond.true, label %cond.end, !dbg !1889

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1890
  %1 = load i32*, i32** %call, align 8, !dbg !1891
  %idxprom = sext i32 %__c to i64, !dbg !1892
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1892
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1892
  br label %cond.end, !dbg !1893

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1893
  ret i32 %cond, !dbg !1894
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1895 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1897, metadata !DIExpression()), !dbg !1898
  %__c.off = add i32 %__c, 128, !dbg !1899
  %0 = icmp ult i32 %__c.off, 384, !dbg !1899
  br i1 %0, label %cond.true, label %cond.end, !dbg !1899

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1900
  %1 = load i32*, i32** %call, align 8, !dbg !1901
  %idxprom = sext i32 %__c to i64, !dbg !1902
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1902
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1902
  br label %cond.end, !dbg !1903

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1903
  ret i32 %cond, !dbg !1904
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1912
  %conv = trunc i64 %call to i32, !dbg !1913
  ret i32 %conv, !dbg !1914
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1919, metadata !DIExpression()), !dbg !1920
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1921
  ret i64 %call, !dbg !1922
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1923 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1928, metadata !DIExpression()), !dbg !1929
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1930
  ret i64 %call, !dbg !1931
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1938, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1939, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1940, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1941, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1942, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1944, metadata !DIExpression()), !dbg !1948
  br label %while.cond, !dbg !1949

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1950
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1944, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1943, metadata !DIExpression()), !dbg !1948
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1951
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1949

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1952
  %div = lshr i64 %add, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %div, metadata !1945, metadata !DIExpression()), !dbg !1948
  %mul = mul i64 %div, %__size, !dbg !1955
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1956
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1946, metadata !DIExpression()), !dbg !1948
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %call, metadata !1947, metadata !DIExpression()), !dbg !1948
  %cmp1 = icmp slt i32 %call, 0, !dbg !1958
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1960

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1961
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1963

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1943, metadata !DIExpression()), !dbg !1948
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1948
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1944, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1943, metadata !DIExpression()), !dbg !1948
  br label %while.cond, !dbg !1949, !llvm.loop !1965

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1948
  ret i8* %retval.0, !dbg !1967
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1968 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1974, metadata !DIExpression()), !dbg !1975
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1976
  ret double %call, !dbg !1977
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1987, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 %base, metadata !1989, metadata !DIExpression()), !dbg !1990
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1991
  ret i64 %call, !dbg !1992
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1993 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %base, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2003
  ret i64 %call, !dbg !2004
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2017, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %base, metadata !2018, metadata !DIExpression()), !dbg !2019
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2020
  ret i64 %call, !dbg !2021
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %base, metadata !2028, metadata !DIExpression()), !dbg !2029
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2030
  ret i64 %call, !dbg !2031
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2074, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2075, metadata !DIExpression()), !dbg !2076
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2077
  ret i32 %call, !dbg !2078
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2082, metadata !DIExpression()), !dbg !2083
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2084
  ret i32 %call, !dbg !2085
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2091, metadata !DIExpression()), !dbg !2092
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2093
  ret i32 %call, !dbg !2094
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2099, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2102, metadata !DIExpression()), !dbg !2103
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2104
  ret i32 %call, !dbg !2105
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2106 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2112, metadata !DIExpression(DW_OP_deref)), !dbg !2113
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2114
  ret i32 %call, !dbg !2115
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2116 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2120, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2123, metadata !DIExpression(DW_OP_deref)), !dbg !2124
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2125
  ret i32 %call, !dbg !2126
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2152, metadata !DIExpression()), !dbg !2153
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2154
  ret i32 %call, !dbg !2155
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2159, metadata !DIExpression()), !dbg !2160
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2161
  ret i32 %call, !dbg !2162
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2168, metadata !DIExpression()), !dbg !2169
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2170
  ret i32 %call, !dbg !2171
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2179, metadata !DIExpression()), !dbg !2180
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2181
  ret i32 %call, !dbg !2182
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @switchconv_gate() #5 !dbg !2183 {
entry:
  %0 = load i32, i32* @flag_tree_switch_conversion, align 4, !dbg !2184
  %cmp = icmp ne i32 %0, 0, !dbg !2185
  %conv1 = zext i1 %cmp to i8, !dbg !2184
  ret i8 %conv1, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal i32 @do_switchconv() #5 !dbg !2187 {
entry:
  %loc = alloca %struct.expanded_location, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2206
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2206
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2206
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2206
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2206
  %3 = bitcast %struct.expanded_location* %loc to i8*, !dbg !2207
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %loc, i64 0, i32 0, !dbg !2207
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %loc, i64 0, i32 1, !dbg !2207
  br label %for.cond, !dbg !2206

for.cond:                                         ; preds = %for.inc, %entry
  %4 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc ], !dbg !2208
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2209
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2189, metadata !DIExpression()), !dbg !2210
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !2208
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2208
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %5, !dbg !2208
  br i1 %cmp, label %for.end, label %for.body, !dbg !2206

for.body:                                         ; preds = %for.cond
  %call = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %bb.0) #6, !dbg !2211
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2190, metadata !DIExpression()), !dbg !2212
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !2213
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !2214

land.lhs.true:                                    ; preds = %for.body
  %call3 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2215
  %cmp4 = icmp eq i32 %call3, 5, !dbg !2216
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !2217

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2218
  %tobool5 = icmp eq %struct._IO_FILE* %6, null, !dbg !2218
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !2219

if.then6:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2220
  %call7 = call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %call) #7, !dbg !2221
  call void @llvm.dbg.value(metadata %struct.expanded_location* %loc, metadata !2194, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  call void @expand_location(%struct.expanded_location* nonnull sret %loc, i32 %call7) #6, !dbg !2222
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2223
  %8 = load i8*, i8** %file, align 8, !dbg !2224
  %9 = load i32, i32* %line, align 8, !dbg !2225
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 %9) #6, !dbg !2226
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2227
  call void @print_gimple_stmt(%struct._IO_FILE* %10, %union.gimple_statement_d* nonnull %call, i32 0, i32 2) #6, !dbg !2228
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2229
  %call9 = call i32 @putc(i32 10, %struct._IO_FILE* %11) #6, !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2231
  br label %if.end, !dbg !2232

if.end:                                           ; preds = %if.then, %if.then6
  store i8* null, i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2233
  %call10 = call fastcc zeroext i8 @process_switch(%union.gimple_statement_d* nonnull %call) #7, !dbg !2234
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2234
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2236
  %tobool13 = icmp ne %struct._IO_FILE* %12, null, !dbg !2236
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !2237

if.then12:                                        ; preds = %if.end
  br i1 %tobool13, label %if.then14, label %for.inc, !dbg !2238

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* nonnull %12) #6, !dbg !2240
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2243
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %13) #6, !dbg !2244
  br label %for.inc, !dbg !2245

if.else:                                          ; preds = %if.end
  br i1 %tobool13, label %if.then19, label %for.inc, !dbg !2246

if.then19:                                        ; preds = %if.else
  %14 = load i8*, i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2248
  %tobool20 = icmp eq i8* %14, null, !dbg !2248
  br i1 %tobool20, label %cond.true, label %cond.end, !dbg !2248

cond.true:                                        ; preds = %if.then19
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 894, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2248
  %.pre2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2251
  br label %cond.end, !dbg !2248

cond.end:                                         ; preds = %if.then19, %cond.true
  %15 = phi %struct._IO_FILE* [ %12, %if.then19 ], [ %.pre2, %cond.true ], !dbg !2251
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %15) #6, !dbg !2252
  %16 = load i8*, i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2253
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2254
  %call22 = call i32 @fputs(i8* %16, %struct._IO_FILE* %17) #6, !dbg !2255
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2256
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %18) #6, !dbg !2257
  br label %for.inc, !dbg !2258

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.else, %cond.end, %if.then12, %if.then14
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2208
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2259
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2208
  br label %for.cond, !dbg !2208, !llvm.loop !2260

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !2262
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2268, metadata !DIExpression()), !dbg !2269
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2270
  %bf.load = load i32, i32* %0, align 8, !dbg !2270
  %bf.clear = and i32 %bf.load, 255, !dbg !2270
  ret i32 %bf.clear, !dbg !2271
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2272 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2276, metadata !DIExpression()), !dbg !2277
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2278
  %0 = load i32, i32* %location, align 8, !dbg !2278
  ret i32 %0, !dbg !2279
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @process_switch(%union.gimple_statement_d* %swtch) unnamed_addr #5 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !2284, metadata !DIExpression()), !dbg !2288
  %call = tail call fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* %swtch) #7, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %call, metadata !2286, metadata !DIExpression()), !dbg !2288
  %cmp = icmp ult i32 %call, 2, !dbg !2290
  br i1 %cmp, label %if.then, label %if.end, !dbg !2292

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2293
  br label %cleanup, !dbg !2295

if.end:                                           ; preds = %entry
  store %struct.basic_block_def* null, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2296
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %swtch) #7, !dbg !2297
  store %struct.basic_block_def* %call1, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2298
  %call2 = tail call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %swtch) #7, !dbg !2299
  store %union.tree_node* %call2, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 0), align 8, !dbg !2300
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2301
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2301
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2287, metadata !DIExpression()), !dbg !2288
  store %union.gimple_statement_d* null, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 13), align 8, !dbg !2302
  store %union.gimple_statement_d* null, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 14), align 8, !dbg !2303
  store i32 0, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 10), align 8, !dbg !2304
  store i64 0, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 11), align 8, !dbg !2305
  store i64 0, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 12), align 8, !dbg !2306
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2307
  %cmp3 = icmp eq %union.tree_node* %0, %1, !dbg !2309
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2310

if.then4:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2311
  br label %cleanup, !dbg !2313

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc zeroext i8 @check_range(%union.gimple_statement_d* %swtch) #7, !dbg !2314
  %tobool = icmp eq i8 %call6, 0, !dbg !2314
  br i1 %tobool, label %cleanup, label %for.cond.preheader, !dbg !2316

for.cond.preheader:                               ; preds = %if.end5
  br label %for.cond, !dbg !2317

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2319
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2285, metadata !DIExpression()), !dbg !2288
  %exitcond = icmp eq i32 %i.0, %call, !dbg !2320
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2317

for.body:                                         ; preds = %for.cond
  %call10 = tail call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 %i.0) #7, !dbg !2322
  %call11 = tail call fastcc zeroext i8 @check_process_case(%union.tree_node* %call10) #7, !dbg !2324
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2324
  br i1 %tobool12, label %if.then13, label %for.inc, !dbg !2325

if.then13:                                        ; preds = %for.body
  %i.0.lcssa3 = phi i32 [ %i.0, %for.body ], !dbg !2319
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2285, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2285, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2285, metadata !DIExpression()), !dbg !2288
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2326
  %tobool14 = icmp eq %struct._IO_FILE* %2, null, !dbg !2326
  br i1 %tobool14, label %cleanup, label %if.then15, !dbg !2329

if.then15:                                        ; preds = %if.then13
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %i.0.lcssa3) #6, !dbg !2330
  br label %cleanup, !dbg !2330

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2285, metadata !DIExpression()), !dbg !2288
  br label %for.cond, !dbg !2332, !llvm.loop !2333

for.end:                                          ; preds = %for.cond
  %call19 = tail call fastcc zeroext i8 @check_final_bb() #7, !dbg !2335
  %tobool20 = icmp eq i8 %call19, 0, !dbg !2335
  br i1 %tobool20, label %cleanup, label %if.end22, !dbg !2337

if.end22:                                         ; preds = %for.end
  tail call fastcc void @create_temp_arrays() #7, !dbg !2338
  %call23 = tail call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 0) #7, !dbg !2339
  tail call fastcc void @gather_default_values(%union.tree_node* %call23) #7, !dbg !2340
  tail call fastcc void @build_constructors(%union.gimple_statement_d* %swtch) #7, !dbg !2341
  tail call fastcc void @build_arrays(%union.gimple_statement_d* %swtch) #7, !dbg !2342
  tail call fastcc void @gen_inbound_check(%union.gimple_statement_d* %swtch) #7, !dbg !2343
  tail call fastcc void @free_temp_arrays() #7, !dbg !2344
  br label %cleanup, !dbg !2345

cleanup:                                          ; preds = %if.then13, %for.end, %if.end5, %if.then15, %if.end22, %if.then4, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end22 ], [ 0, %if.end5 ], [ 0, %if.then15 ], [ 0, %if.then13 ], [ 0, %for.end ], !dbg !2288
  ret i8 %retval.0, !dbg !2346
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2351, metadata !DIExpression()), !dbg !2353
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %call, metadata !2352, metadata !DIExpression()), !dbg !2353
  %cmp = icmp ugt i32 %call, 1, !dbg !2355
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2355

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 3162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2355
  br label %cond.end, !dbg !2355

cond.end:                                         ; preds = %entry, %cond.true
  %sub = add i32 %call, -1, !dbg !2356
  ret i32 %sub, !dbg !2357
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2362, metadata !DIExpression()), !dbg !2363
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2364
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2364
  ret %struct.basic_block_def* %0, !dbg !2365
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2366 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2372
  ret %union.tree_node* %call, !dbg !2373
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_range(%union.gimple_statement_d* %swtch) unnamed_addr #5 !dbg !2374 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !2376, metadata !DIExpression()), !dbg !2381
  %call = tail call fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* %swtch) #7, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %call, metadata !2379, metadata !DIExpression()), !dbg !2381
  %call1 = tail call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 1) #7, !dbg !2383
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2377, metadata !DIExpression()), !dbg !2381
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2384
  %0 = bitcast %union.tree_node** %operands to i64*, !dbg !2384
  %1 = load i64, i64* %0, align 8, !dbg !2384
  store i64 %1, i64* bitcast (%union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1) to i64*), align 8, !dbg !2385
  %cmp = icmp ugt i32 %call, 1, !dbg !2386
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2386

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2386
  br label %cond.end, !dbg !2386

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 0) #7, !dbg !2387
  %operands4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2387
  %2 = load %union.tree_node*, %union.tree_node** %operands4, align 8, !dbg !2387
  %cmp6 = icmp eq %union.tree_node* %2, null, !dbg !2387
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !2387

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2387
  br label %cond.end9, !dbg !2387

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %sub = add i32 %call, -1, !dbg !2388
  %call11 = tail call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 %sub) #7, !dbg !2389
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !2378, metadata !DIExpression()), !dbg !2381
  %operands13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2390
  %arrayidx14 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands13, i64 1, !dbg !2390
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8, !dbg !2390
  %cmp15 = icmp eq %union.tree_node* %3, null, !dbg !2392
  br i1 %cmp15, label %if.else, label %if.then, !dbg !2393

if.then:                                          ; preds = %cond.end9
  br label %if.end, !dbg !2394

if.else:                                          ; preds = %cond.end9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %range_max.0.in = phi %union.tree_node** [ %arrayidx14, %if.then ], [ %operands13, %if.else ]
  %range_max.0 = load %union.tree_node*, %union.tree_node** %range_max.0.in, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata %union.tree_node* %range_max.0, metadata !2380, metadata !DIExpression()), !dbg !2381
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2396
  %tobool = icmp eq %union.tree_node* %4, null, !dbg !2396
  br i1 %tobool, label %cond.true22, label %cond.end24, !dbg !2396

cond.true22:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2396
  br label %cond.end24, !dbg !2396

cond.end24:                                       ; preds = %if.end, %cond.true22
  %tobool26 = icmp eq %union.tree_node* %range_max.0, null, !dbg !2397
  br i1 %tobool26, label %cond.true27, label %cond.end29, !dbg !2397

cond.true27:                                      ; preds = %cond.end24
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2397
  br label %cond.end29, !dbg !2397

cond.end29:                                       ; preds = %cond.end24, %cond.true27
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2398
  %call31 = tail call %union.tree_node* @int_const_binop(i32 64, %union.tree_node* %range_max.0, %union.tree_node* %5, i32 0) #6, !dbg !2399
  store %union.tree_node* %call31, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2400
  %tobool32 = icmp eq %union.tree_node* %call31, null, !dbg !2401
  br i1 %tobool32, label %cond.true33, label %cond.end35, !dbg !2401

cond.true33:                                      ; preds = %cond.end29
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2401
  %.pre = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2402
  br label %cond.end35, !dbg !2401

cond.end35:                                       ; preds = %cond.end29, %cond.true33
  %6 = phi %union.tree_node* [ %call31, %cond.end29 ], [ %.pre, %cond.true33 ], !dbg !2402
  %call37 = tail call i32 @host_integerp(%union.tree_node* %6, i32 1) #6, !dbg !2404
  %tobool38 = icmp eq i32 %call37, 0, !dbg !2404
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2405

if.then39:                                        ; preds = %cond.end35
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2406
  br label %cleanup, !dbg !2408

if.end40:                                         ; preds = %cond.end35
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2409
  %call41 = tail call i64 @tree_low_cst(%union.tree_node* %7, i32 1) #6, !dbg !2411
  %8 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2412
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %8, i64 108, i32 1, !dbg !2412
  %9 = load i32, i32* %value, align 8, !dbg !2412
  %mul = mul i32 %call, %9, !dbg !2413
  %conv = zext i32 %mul to i64, !dbg !2414
  %cmp43 = icmp ugt i64 %call41, %conv, !dbg !2415
  br i1 %cmp43, label %if.then45, label %cleanup, !dbg !2416

if.then45:                                        ; preds = %if.end40
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2417
  br label %cleanup, !dbg !2419

cleanup:                                          ; preds = %if.end40, %if.then45, %if.then39
  %retval.0 = phi i8 [ 0, %if.then45 ], [ 0, %if.then39 ], [ 1, %if.end40 ], !dbg !2381
  ret i8 %retval.0, !dbg !2420
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_process_case(%union.tree_node* %cs) unnamed_addr #5 !dbg !2421 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %cs, metadata !2425, metadata !DIExpression()), !dbg !2430
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %cs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2431
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2431
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2426, metadata !DIExpression()), !dbg !2430
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2432
  %call = tail call %struct.basic_block_def* @label_to_block_fn(%struct.function* %1, %union.tree_node* %0) #6, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2427, metadata !DIExpression()), !dbg !2430
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2433
  %call1 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %2, %struct.basic_block_def* %call) #6, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2429, metadata !DIExpression()), !dbg !2430
  %tobool = icmp eq %struct.edge_def* %call1, null, !dbg !2435
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2435

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2435
  br label %cond.end, !dbg !2435

cond.end:                                         ; preds = %entry, %cond.true
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2436
  %cmp = icmp eq %union.tree_node* %3, null, !dbg !2438
  br i1 %cmp, label %if.then, label %if.else, !dbg !2439

if.then:                                          ; preds = %cond.end
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 8, !dbg !2440
  %4 = load i32, i32* %probability, align 4, !dbg !2440
  store i32 %4, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 10), align 8, !dbg !2442
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 9, !dbg !2443
  %5 = load i64, i64* %count, align 8, !dbg !2443
  store i64 %5, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 11), align 8, !dbg !2444
  br label %if.end, !dbg !2445

if.else:                                          ; preds = %cond.end
  %count5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 9, !dbg !2446
  %6 = load i64, i64* %count5, align 8, !dbg !2446
  %7 = load i64, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 12), align 8, !dbg !2447
  %add = add nsw i64 %7, %6, !dbg !2447
  store i64 %add, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 12), align 8, !dbg !2447
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool6 = icmp eq %struct.basic_block_def* %call, null, !dbg !2448
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2450

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2451
  br label %cleanup, !dbg !2453

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* nonnull %call) #7, !dbg !2454
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2454
  br i1 %tobool10, label %if.then11, label %if.else16, !dbg !2456

if.then11:                                        ; preds = %if.end8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2457
  %tobool12 = icmp ne %struct.basic_block_def* %8, null, !dbg !2460
  %cmp13 = icmp ne %struct.basic_block_def* %8, %call, !dbg !2461
  %or.cond = and i1 %tobool12, %cmp13, !dbg !2462
  br i1 %or.cond, label %if.then14, label %if.end23, !dbg !2462

if.then14:                                        ; preds = %if.then11
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2463
  br label %cleanup, !dbg !2465

if.else16:                                        ; preds = %if.end8
  %call17 = tail call zeroext i8 @empty_block_p(%struct.basic_block_def* nonnull %call) #6, !dbg !2466
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2466
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2469

if.then19:                                        ; preds = %if.else16
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2470
  br label %cleanup, !dbg !2472

if.end20:                                         ; preds = %if.else16
  %call21 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* nonnull %call) #7, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !2429, metadata !DIExpression()), !dbg !2430
  %call22 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* nonnull %call) #7, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call22, metadata !2428, metadata !DIExpression()), !dbg !2430
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2475
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.end20
  %9 = phi %struct.basic_block_def* [ %.pre, %if.end20 ], [ %8, %if.then11 ], !dbg !2475
  %following_bb.0 = phi %struct.basic_block_def* [ %call22, %if.end20 ], [ %call, %if.then11 ], !dbg !2477
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %following_bb.0, metadata !2428, metadata !DIExpression()), !dbg !2430
  %tobool24 = icmp eq %struct.basic_block_def* %9, null, !dbg !2478
  br i1 %tobool24, label %if.then25, label %if.else26, !dbg !2479

if.then25:                                        ; preds = %if.end23
  store %struct.basic_block_def* %following_bb.0, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2480
  br label %cleanup, !dbg !2481

if.else26:                                        ; preds = %if.end23
  %cmp27 = icmp eq %struct.basic_block_def* %9, %following_bb.0, !dbg !2482
  br i1 %cmp27, label %cleanup, label %if.then28, !dbg !2484

if.then28:                                        ; preds = %if.else26
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2485
  br label %cleanup, !dbg !2487

cleanup:                                          ; preds = %if.else26, %if.then25, %if.then28, %if.then19, %if.then14, %if.then7
  %retval.0 = phi i8 [ 0, %if.then28 ], [ 0, %if.then19 ], [ 0, %if.then14 ], [ 0, %if.then7 ], [ 1, %if.else26 ], [ 1, %if.then25 ], !dbg !2430
  ret i8 %retval.0, !dbg !2488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2489 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %index, metadata !2494, metadata !DIExpression()), !dbg !2495
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !2496
  %add = add i32 %index, 1, !dbg !2496
  %cmp = icmp ugt i32 %call, %add, !dbg !2496
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2496

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 3215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2496
  br label %cond.end, !dbg !2496

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !2497
  ret %union.tree_node* %call2, !dbg !2498
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_final_bb() unnamed_addr #5 !dbg !2499 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2521
  store i32 0, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2522
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2523
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2524
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %2) #6, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2523
  br label %for.cond, !dbg !2525

for.cond:                                         ; preds = %for.inc44, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2526
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2527
  %tobool = icmp eq i8 %call, 0, !dbg !2528
  br i1 %tobool, label %for.body, label %cleanup46, !dbg !2529

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2526
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2530
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2508, metadata !DIExpression()), !dbg !2531
  %3 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2532
  %inc = add nsw i32 %3, 1, !dbg !2532
  store i32 %inc, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2532
  call void @llvm.dbg.value(metadata i32 0, metadata !2512, metadata !DIExpression()), !dbg !2531
  br label %for.cond2, !dbg !2533

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ], !dbg !2534
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2512, metadata !DIExpression()), !dbg !2531
  %call3 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call1) #7, !dbg !2535
  %4 = zext i32 %call3 to i64, !dbg !2536
  %cmp = icmp ult i64 %indvars.iv, %4, !dbg !2536
  br i1 %cmp, label %for.body4, label %cleanup40, !dbg !2537

for.body4:                                        ; preds = %for.cond2
  %call5 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call1, i64 %indvars.iv) #7, !dbg !2538
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call5, i64 0, i32 0, !dbg !2539
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2539
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !2513, metadata !DIExpression()), !dbg !2540
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2541
  %cmp6 = icmp eq %struct.basic_block_def* %5, %6, !dbg !2542
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !2543

lor.lhs.false:                                    ; preds = %for.body4
  %call8 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %5) #7, !dbg !2544
  %tobool10 = icmp eq i8 %call8, 0, !dbg !2544
  br i1 %tobool10, label %if.end35, label %land.lhs.true, !dbg !2545

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call11 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %5) #7, !dbg !2546
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2547
  %cmp12 = icmp eq %struct.basic_block_def* %call11, %7, !dbg !2548
  br i1 %cmp12, label %if.then, label %if.end35, !dbg !2549

if.then:                                          ; preds = %land.lhs.true, %for.body4
  %call15 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call1, i64 %indvars.iv) #7, !dbg !2550
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2520, metadata !DIExpression()), !dbg !2551
  %call16 = call zeroext i8 @is_gimple_ip_invariant(%union.tree_node* %call15) #6, !dbg !2552
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2552
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !2554

if.then18:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2555
  br label %cleanup, !dbg !2557

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2558
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2558
  %call19 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %call15, %union.tree_node* %8) #6, !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !2517, metadata !DIExpression()), !dbg !2551
  %9 = load i32, i32* @flag_pic, align 4, !dbg !2560
  %tobool20 = icmp ne i32 %9, 0, !dbg !2560
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16, !dbg !2562
  %cmp22 = icmp ne %union.tree_node* %call19, %10, !dbg !2563
  %or.cond = and i1 %tobool20, %cmp22, !dbg !2564
  br i1 %or.cond, label %if.then29, label %lor.lhs.false24, !dbg !2564

lor.lhs.false24:                                  ; preds = %if.end
  %tobool25 = icmp eq i32 %9, 0, !dbg !2565
  %cmp27 = icmp eq %union.tree_node* %call19, null, !dbg !2566
  %or.cond3 = and i1 %tobool25, %cmp27, !dbg !2567
  br i1 %or.cond3, label %if.then29, label %cleanup, !dbg !2567

if.then29:                                        ; preds = %lor.lhs.false24, %if.end
  %tobool30 = icmp eq %union.tree_node* %call19, null, !dbg !2568
  br i1 %tobool30, label %if.else, label %if.then31, !dbg !2571

if.then31:                                        ; preds = %if.then29
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2572
  br label %cleanup, !dbg !2573

if.else:                                          ; preds = %if.then29
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 15), align 8, !dbg !2574
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false24, %if.then31, %if.else, %if.then18
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then18 ], [ 1, %if.else ], [ 1, %if.then31 ], [ 0, %lor.lhs.false24 ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond2, label %if.end35, label %cleanup36

if.end35:                                         ; preds = %lor.lhs.false, %cleanup, %land.lhs.true
  br label %cleanup36, !dbg !2575

cleanup36:                                        ; preds = %cleanup, %if.end35
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end35 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %for.inc, label %cleanup40

for.inc:                                          ; preds = %cleanup36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2576
  br label %for.cond2, !dbg !2577, !llvm.loop !2578

cleanup40:                                        ; preds = %for.cond2, %cleanup36
  %cleanup.dest.slot.2 = phi i32 [ %cleanup.dest.slot.1, %cleanup36 ], [ 0, %for.cond2 ]
  %cond = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond, label %for.inc44, label %cleanup46

for.inc44:                                        ; preds = %cleanup40
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2526
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2580
  br label %for.cond, !dbg !2581, !llvm.loop !2582

cleanup46:                                        ; preds = %for.cond, %cleanup40
  %retval.6 = phi i8 [ 0, %cleanup40 ], [ 1, %for.cond ], !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2584
  ret i8 %retval.6, !dbg !2584
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_temp_arrays() unnamed_addr #5 !dbg !2585 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2590
  %conv = sext i32 %0 to i64, !dbg !2591
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2592
  store i8* %call, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6) to i8**), align 8, !dbg !2593
  %1 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2594
  %conv1 = sext i32 %1 to i64, !dbg !2595
  %call2 = tail call i8* @xcalloc(i64 %conv1, i64 8) #6, !dbg !2596
  store i8* %call2, i8** bitcast (%struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7) to i8**), align 8, !dbg !2597
  %2 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2598
  %conv3 = sext i32 %2 to i64, !dbg !2599
  %call4 = tail call i8* @xcalloc(i64 %conv3, i64 8) #6, !dbg !2600
  store i8* %call4, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 8) to i8**), align 8, !dbg !2601
  %3 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2602
  %conv5 = sext i32 %3 to i64, !dbg !2603
  %call6 = tail call i8* @xcalloc(i64 %conv5, i64 8) #6, !dbg !2604
  store i8* %call6, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 9) to i8**), align 8, !dbg !2605
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2606
  br label %for.cond, !dbg !2607

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2609
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2589, metadata !DIExpression()), !dbg !2606
  %4 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2610
  %5 = sext i32 %4 to i64, !dbg !2612
  %cmp = icmp slt i64 %indvars.iv, %5, !dbg !2612
  br i1 %cmp, label %for.body, label %for.end, !dbg !2613

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2614
  %call8 = tail call i64 @tree_low_cst(%union.tree_node* %6, i32 1) #6, !dbg !2614
  %7 = trunc i64 %call8 to i32, !dbg !2614
  %conv9 = add i32 %7, 1, !dbg !2614
  %call10 = tail call fastcc %struct.VEC_constructor_elt_gc* @VEC_constructor_elt_gc_alloc(i32 %conv9) #7, !dbg !2614
  %8 = load %struct.VEC_constructor_elt_gc**, %struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7), align 8, !dbg !2615
  %arrayidx = getelementptr inbounds %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %8, i64 %indvars.iv, !dbg !2616
  store %struct.VEC_constructor_elt_gc* %call10, %struct.VEC_constructor_elt_gc** %arrayidx, align 8, !dbg !2617
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i32 undef, metadata !2589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2606
  br label %for.cond, !dbg !2619, !llvm.loop !2620

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gather_default_values(%union.tree_node* %default_case) unnamed_addr #5 !dbg !2623 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %default_case, metadata !2627, metadata !DIExpression()), !dbg !2637
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2638
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2639
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %default_case, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2639
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2639
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2639
  %call = tail call %struct.basic_block_def* @label_to_block_fn(%struct.function* %1, %union.tree_node* %2) #6, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2629, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()), !dbg !2637
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2640
  %cmp = icmp eq %union.tree_node* %3, null, !dbg !2640
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2640

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2640
  br label %cond.end, !dbg !2640

cond.end:                                         ; preds = %entry, %cond.true
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2641
  %cmp4 = icmp eq %struct.basic_block_def* %call, %4, !dbg !2643
  br i1 %cmp4, label %if.then, label %if.else, !dbg !2644

if.then:                                          ; preds = %cond.end
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2645
  %call5 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %5, %struct.basic_block_def* %call) #6, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !2630, metadata !DIExpression()), !dbg !2637
  br label %if.end, !dbg !2647

if.else:                                          ; preds = %cond.end
  %call6 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #7, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.edge_def* %call6, metadata !2630, metadata !DIExpression()), !dbg !2637
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %e.0 = phi %struct.edge_def* [ %call5, %if.then ], [ %call6, %if.else ], !dbg !2649
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !2630, metadata !DIExpression()), !dbg !2637
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2650
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2651
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %7) #6, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2650
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 6, !dbg !2652
  br label %for.cond, !dbg !2653

for.cond:                                         ; preds = %cond.end14, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end14 ], [ 0, %if.end ], !dbg !2637
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2631, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2637
  %call7 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2654
  %tobool = icmp eq i8 %call7, 0, !dbg !2655
  br i1 %tobool, label %for.body, label %for.end, !dbg !2656

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2637
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2657
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !2632, metadata !DIExpression()), !dbg !2652
  %8 = load i32, i32* %dest_idx, align 4, !dbg !2658
  %call9 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call8, i32 %8) #7, !dbg !2658
  %call10 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call9) #7, !dbg !2658
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2636, metadata !DIExpression()), !dbg !2652
  %tobool11 = icmp eq %union.tree_node* %call10, null, !dbg !2659
  br i1 %tobool11, label %cond.true12, label %cond.end14, !dbg !2659

cond.true12:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2659
  br label %cond.end14, !dbg !2659

cond.end14:                                       ; preds = %for.body, %cond.true12
  %9 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !2660
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i32 undef, metadata !2631, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2637
  %arrayidx16 = getelementptr inbounds %union.tree_node*, %union.tree_node** %9, i64 %indvars.iv, !dbg !2662
  store %union.tree_node* %call10, %union.tree_node** %arrayidx16, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2637
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2664
  br label %for.cond, !dbg !2665, !llvm.loop !2666

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2668
  ret void, !dbg !2668
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_constructors(%union.gimple_statement_d* %swtch) unnamed_addr #5 !dbg !2669 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !2673, metadata !DIExpression()), !dbg !2701
  %call = tail call fastcc i32 @gimple_switch_num_labels(%union.gimple_statement_d* %swtch) #7, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %call, metadata !2675, metadata !DIExpression()), !dbg !2701
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 1, metadata !2674, metadata !DIExpression()), !dbg !2701
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2704
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2705
  br label %for.cond, !dbg !2706

for.cond:                                         ; preds = %for.end84, %entry
  %pos.0 = phi %union.tree_node* [ %0, %entry ], [ %pos.2.lcssa, %for.end84 ], !dbg !2707
  %i.0 = phi i32 [ 1, %entry ], [ %inc86, %for.end84 ], !dbg !2708
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2674, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.0, metadata !2676, metadata !DIExpression()), !dbg !2701
  %cmp = icmp ult i32 %i.0, %call, !dbg !2709
  br i1 %cmp, label %for.body, label %for.end87, !dbg !2710

for.body:                                         ; preds = %for.cond
  %call1 = call fastcc %union.tree_node* @gimple_switch_label(%union.gimple_statement_d* %swtch, i32 %i.0) #7, !dbg !2711
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2677, metadata !DIExpression()), !dbg !2704
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2712
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2712
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2712
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2712
  %call2 = call %struct.basic_block_def* @label_to_block_fn(%struct.function* %3, %union.tree_node* %4) #6, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call2, metadata !2681, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2713
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2714
  %cmp3 = icmp eq %struct.basic_block_def* %call2, %5, !dbg !2716
  br i1 %cmp3, label %if.then, label %if.else, !dbg !2717

if.then:                                          ; preds = %for.body
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 3), align 8, !dbg !2718
  %call4 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %6, %struct.basic_block_def* %call2) #6, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !2682, metadata !DIExpression()), !dbg !2704
  br label %if.end, !dbg !2720

if.else:                                          ; preds = %for.body
  %call5 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call2) #7, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.edge_def* %call5, metadata !2682, metadata !DIExpression()), !dbg !2704
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %e.0 = phi %struct.edge_def* [ %call4, %if.then ], [ %call5, %if.else ], !dbg !2722
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !2682, metadata !DIExpression()), !dbg !2704
  %tobool = icmp eq %struct.edge_def* %e.0, null, !dbg !2723
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2723

cond.true:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 413, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2723
  br label %cond.end, !dbg !2723

cond.end:                                         ; preds = %if.end, %cond.true
  br label %while.cond, !dbg !2724

while.cond:                                       ; preds = %for.end, %cond.end
  %pos.1 = phi %union.tree_node* [ %pos.0, %cond.end ], [ %call26, %for.end ], !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.1, metadata !2676, metadata !DIExpression()), !dbg !2701
  %7 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2725
  %call9 = call i32 @tree_int_cst_lt(%union.tree_node* %pos.1, %union.tree_node* %7) #6, !dbg !2726
  %tobool10 = icmp eq i32 %call9, 0, !dbg !2724
  br i1 %tobool10, label %while.end, label %for.cond11.preheader, !dbg !2724

for.cond11.preheader:                             ; preds = %while.cond
  br label %for.cond11, !dbg !2727

for.cond11:                                       ; preds = %for.cond11.preheader, %cond.end20
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %cond.end20 ], !dbg !2728
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2686, metadata !DIExpression()), !dbg !2729
  %8 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !2730
  %9 = sext i32 %8 to i64, !dbg !2731
  %cmp12 = icmp slt i64 %indvars.iv, %9, !dbg !2731
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !2727

for.body13:                                       ; preds = %for.cond11
  %10 = load %struct.VEC_constructor_elt_gc**, %struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7), align 8, !dbg !2732
  %arrayidx14 = getelementptr inbounds %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %10, i64 %indvars.iv, !dbg !2732
  %11 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %arrayidx14, align 8, !dbg !2732
  %tobool15 = icmp eq %struct.VEC_constructor_elt_gc* %11, null, !dbg !2732
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !2732

cond.true16:                                      ; preds = %for.body13
  %base = getelementptr inbounds %struct.VEC_constructor_elt_gc, %struct.VEC_constructor_elt_gc* %11, i64 0, i32 0, !dbg !2732
  br label %cond.end20, !dbg !2732

cond.end20:                                       ; preds = %for.body13, %cond.true16
  %cond21 = phi %struct.VEC_constructor_elt_base* [ %base, %cond.true16 ], [ null, %for.body13 ], !dbg !2732
  %call22 = call fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_quick_push(%struct.VEC_constructor_elt_base* %cond21, %struct.constructor_elt_d* null) #7, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* %call22, metadata !2688, metadata !DIExpression()), !dbg !2733
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2734
  %call23 = call %union.tree_node* @int_const_binop(i32 64, %union.tree_node* %pos.1, %union.tree_node* %12, i32 0) #6, !dbg !2735
  %index = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call22, i64 0, i32 0, !dbg !2736
  store %union.tree_node* %call23, %union.tree_node** %index, align 8, !dbg !2737
  %13 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !2738
  %arrayidx25 = getelementptr inbounds %union.tree_node*, %union.tree_node** %13, i64 %indvars.iv, !dbg !2739
  %14 = bitcast %union.tree_node** %arrayidx25 to i64*, !dbg !2739
  %15 = load i64, i64* %14, align 8, !dbg !2739
  %value = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call22, i64 0, i32 1, !dbg !2740
  %16 = bitcast %union.tree_node** %value to i64*, !dbg !2741
  store i64 %15, i64* %16, align 8, !dbg !2741
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i32 undef, metadata !2686, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2729
  br label %for.cond11, !dbg !2743, !llvm.loop !2744

for.end:                                          ; preds = %for.cond11
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !2746
  %call26 = call %union.tree_node* @int_const_binop(i32 63, %union.tree_node* %pos.1, %union.tree_node* %17, i32 0) #6, !dbg !2747
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !2676, metadata !DIExpression()), !dbg !2701
  br label %while.cond, !dbg !2724, !llvm.loop !2748

while.end:                                        ; preds = %while.cond
  %pos.1.lcssa = phi %union.tree_node* [ %pos.1, %while.cond ], !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.1.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.1.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.1.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  %18 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2750
  %call30 = call i32 @tree_int_cst_equal(%union.tree_node* %pos.1.lcssa, %union.tree_node* %18) #6, !dbg !2750
  %tobool31 = icmp eq i32 %call30, 0, !dbg !2750
  br i1 %tobool31, label %cond.true32, label %cond.end34, !dbg !2750

cond.true32:                                      ; preds = %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2750
  br label %cond.end34, !dbg !2750

cond.end34:                                       ; preds = %while.end, %cond.true32
  call void @llvm.dbg.value(metadata i32 0, metadata !2685, metadata !DIExpression()), !dbg !2704
  %arrayidx38 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2751
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8, !dbg !2751
  %tobool39 = icmp eq %union.tree_node* %19, null, !dbg !2751
  br i1 %tobool39, label %if.else44, label %if.then40, !dbg !2753

if.then40:                                        ; preds = %cond.end34
  br label %if.end48, !dbg !2754

if.else44:                                        ; preds = %cond.end34
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then40
  %high.0.in = phi %union.tree_node** [ %arrayidx38, %if.then40 ], [ %operands, %if.else44 ]
  %high.0 = load %union.tree_node*, %union.tree_node** %high.0.in, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata %union.tree_node* %high.0, metadata !2683, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2756
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2757
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %20) #6, !dbg !2756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2756
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.0, i64 0, i32 6, !dbg !2758
  br label %for.cond49, !dbg !2759

for.cond49:                                       ; preds = %do.end, %if.end48
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %do.end ], [ 0, %if.end48 ], !dbg !2701
  %pos.2 = phi %union.tree_node* [ %call77.lcssa, %do.end ], [ %pos.1.lcssa, %if.end48 ], !dbg !2701
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2685, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.2, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  %call50 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2760
  %tobool51 = icmp eq i8 %call50, 0, !dbg !2761
  br i1 %tobool51, label %for.body52, label %for.end84, !dbg !2762

for.body52:                                       ; preds = %for.cond49
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  %call53 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call53, metadata !2693, metadata !DIExpression()), !dbg !2758
  %21 = load i32, i32* %dest_idx, align 4, !dbg !2764
  %call54 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call53, i32 %21) #7, !dbg !2764
  %call55 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call54) #7, !dbg !2764
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !2697, metadata !DIExpression()), !dbg !2758
  %22 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2765
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !2676, metadata !DIExpression()), !dbg !2701
  br label %do.body, !dbg !2766

do.body:                                          ; preds = %land.rhs, %for.body52
  %pos.3 = phi %union.tree_node* [ %22, %for.body52 ], [ %call77, %land.rhs ], !dbg !2758
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.3, metadata !2676, metadata !DIExpression()), !dbg !2701
  %23 = load %struct.VEC_constructor_elt_gc**, %struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7), align 8, !dbg !2767
  %arrayidx64 = getelementptr inbounds %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %23, i64 %indvars.iv1, !dbg !2767
  %24 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %arrayidx64, align 8, !dbg !2767
  %tobool65 = icmp eq %struct.VEC_constructor_elt_gc* %24, null, !dbg !2767
  br i1 %tobool65, label %cond.end71, label %cond.true66, !dbg !2767

cond.true66:                                      ; preds = %do.body
  %base69 = getelementptr inbounds %struct.VEC_constructor_elt_gc, %struct.VEC_constructor_elt_gc* %24, i64 0, i32 0, !dbg !2767
  br label %cond.end71, !dbg !2767

cond.end71:                                       ; preds = %do.body, %cond.true66
  %cond72 = phi %struct.VEC_constructor_elt_base* [ %base69, %cond.true66 ], [ null, %do.body ], !dbg !2767
  %call73 = call fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_quick_push(%struct.VEC_constructor_elt_base* %cond72, %struct.constructor_elt_d* null) #7, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* %call73, metadata !2699, metadata !DIExpression()), !dbg !2768
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2769
  %call74 = call %union.tree_node* @int_const_binop(i32 64, %union.tree_node* %pos.3, %union.tree_node* %25, i32 0) #6, !dbg !2770
  %index75 = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call73, i64 0, i32 0, !dbg !2771
  store %union.tree_node* %call74, %union.tree_node** %index75, align 8, !dbg !2772
  %value76 = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call73, i64 0, i32 1, !dbg !2773
  store %union.tree_node* %call55, %union.tree_node** %value76, align 8, !dbg !2774
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !2775
  %call77 = call %union.tree_node* @int_const_binop(i32 63, %union.tree_node* %pos.3, %union.tree_node* %26, i32 0) #6, !dbg !2776
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !2676, metadata !DIExpression()), !dbg !2701
  %call78 = call i32 @tree_int_cst_lt(%union.tree_node* %high.0, %union.tree_node* %call77) #6, !dbg !2777
  %tobool79 = icmp eq i32 %call78, 0, !dbg !2777
  br i1 %tobool79, label %land.rhs, label %do.end, !dbg !2778

land.rhs:                                         ; preds = %cond.end71
  %call80 = call i32 @tree_int_cst_lt(%union.tree_node* %22, %union.tree_node* %call77) #6, !dbg !2779
  %tobool81 = icmp eq i32 %call80, 0, !dbg !2778
  br i1 %tobool81, label %do.end, label %do.body, !dbg !2780, !llvm.loop !2781

do.end:                                           ; preds = %land.rhs, %cond.end71
  %call77.lcssa = phi %union.tree_node* [ %call77, %land.rhs ], [ %call77, %cond.end71 ], !dbg !2776
  %indvars.iv.next2 = add nuw i64 %indvars.iv1, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i32 undef, metadata !2685, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2704
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2784
  br label %for.cond49, !dbg !2785, !llvm.loop !2786

for.end84:                                        ; preds = %for.cond49
  %pos.2.lcssa = phi %union.tree_node* [ %pos.2, %for.cond49 ], !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.2.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.2.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %pos.2.lcssa, metadata !2676, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2788
  %inc86 = add i32 %i.0, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !2674, metadata !DIExpression()), !dbg !2701
  br label %for.cond, !dbg !2790, !llvm.loop !2791

for.end87:                                        ; preds = %for.cond
  ret void, !dbg !2793
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_arrays(%union.gimple_statement_d* %swtch) unnamed_addr #5 !dbg !2794 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp1 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp14 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !2796, metadata !DIExpression()), !dbg !2805
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2806
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2806
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %swtch) #7, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %call, metadata !2804, metadata !DIExpression()), !dbg !2805
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp1 to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2808
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp1, %union.gimple_statement_d* %swtch) #6, !dbg !2808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2808
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2809
  %call2 = call %union.tree_node* @build_index_type(%union.tree_node* %2) #6, !dbg !2810
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2797, metadata !DIExpression()), !dbg !2805
  %3 = load %struct.tree_common*, %struct.tree_common** bitcast (%struct.switch_conv_info* @info to %struct.tree_common**), align 8, !dbg !2811
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i64 0, i32 2, !dbg !2811
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2811
  %call3 = call %union.tree_node* @create_tmp_var(%union.tree_node* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2812
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2800, metadata !DIExpression()), !dbg !2805
  %call4 = call zeroext i8 @add_referenced_var(%union.tree_node* %call3) #6, !dbg !2813
  %call5 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call3, %union.gimple_statement_d* null) #7, !dbg !2814
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2798, metadata !DIExpression()), !dbg !2805
  %5 = load %struct.tree_common*, %struct.tree_common** bitcast (%struct.switch_conv_info* @info to %struct.tree_common**), align 8, !dbg !2815
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i64 0, i32 2, !dbg !2815
  %6 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !2815
  %.cast = bitcast %struct.tree_common* %5 to %union.tree_node*, !dbg !2815
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2815
  %call10 = call %union.tree_node* @fold_convert_loc(i32 %call, %union.tree_node* %6, %union.tree_node* %7) #6, !dbg !2815
  %call11 = call %union.tree_node* @fold_build2_stat_loc(i32 %call, i32 64, %union.tree_node* %6, %union.tree_node* %.cast, %union.tree_node* %call10) #6, !dbg !2815
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !2799, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %call12 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call11, i8 zeroext 0, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2816
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !2799, metadata !DIExpression()), !dbg !2805
  %call13 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call5, %union.tree_node* %call12) #6, !dbg !2817
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !2801, metadata !DIExpression()), !dbg !2805
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2818
  %8 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2818
  store %union.gimple_statement_d* %call13, %union.gimple_statement_d** %8, align 8, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call13, i32 1) #6, !dbg !2820
  call fastcc void @update_stmt(%union.gimple_statement_d* %call13) #7, !dbg !2821
  store %union.gimple_statement_d* %call13, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 13), align 8, !dbg !2822
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp14 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2823
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2825
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp14, %struct.basic_block_def* %10) #6, !dbg !2823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2823
  call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression()), !dbg !2805
  br label %for.cond, !dbg !2826

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2827
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %call15 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2828
  %tobool = icmp eq i8 %call15, 0, !dbg !2830
  br i1 %tobool, label %for.body, label %for.end, !dbg !2831

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %call16 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2832
  call fastcc void @build_one_array(%union.gimple_statement_d* %swtch, i32 %i.0, %union.tree_node* %call2, %union.gimple_statement_d* %call16, %union.tree_node* %call5) #7, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2834
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2803, metadata !DIExpression()), !dbg !2805
  br label %for.cond, !dbg !2836, !llvm.loop !2837

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_inbound_check(%union.gimple_statement_d* %swtch) unnamed_addr #5 !dbg !2840 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp30 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp33 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp35 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !2842, metadata !DIExpression()), !dbg !2874
  %call = tail call %union.tree_node* @create_artificial_label(i32 0) #6, !dbg !2875
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2843, metadata !DIExpression()), !dbg !2874
  %call1 = tail call %union.tree_node* @create_artificial_label(i32 0) #6, !dbg !2876
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2844, metadata !DIExpression()), !dbg !2874
  %call2 = tail call %union.tree_node* @create_artificial_label(i32 0) #6, !dbg !2877
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2845, metadata !DIExpression()), !dbg !2874
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2878
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2878
  %call3 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %swtch) #7, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2873, metadata !DIExpression()), !dbg !2874
  %1 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !2880
  %tobool = icmp eq %union.tree_node** %1, null, !dbg !2880
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2880

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 691, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2880
  br label %cond.end, !dbg !2880

cond.end:                                         ; preds = %entry, %cond.true
  %call4 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %swtch) #7, !dbg !2881
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !2862, metadata !DIExpression()), !dbg !2874
  %2 = load %struct.tree_common*, %struct.tree_common** bitcast (%struct.switch_conv_info* @info to %struct.tree_common**), align 8, !dbg !2882
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !2882
  %3 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !2882
  %4 = load %struct.tree_common*, %struct.tree_common** %3, align 8, !dbg !2882
  %type6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %4, i64 0, i32 2, !dbg !2882
  %5 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !2882
  %tobool7 = icmp eq %union.tree_node* %5, null, !dbg !2882
  br i1 %tobool7, label %if.else, label %if.then, !dbg !2884

if.then:                                          ; preds = %cond.end
  %call12 = tail call %union.tree_node* @unsigned_type_for(%union.tree_node* nonnull %5) #6, !dbg !2885
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !2849, metadata !DIExpression()), !dbg !2874
  br label %if.end, !dbg !2886

if.else:                                          ; preds = %cond.end
  %6 = bitcast %struct.tree_common* %4 to %union.tree_node*, !dbg !2887
  %call15 = tail call %union.tree_node* @unsigned_type_for(%union.tree_node* %6) #6, !dbg !2888
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2849, metadata !DIExpression()), !dbg !2874
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %utype.0 = phi %union.tree_node* [ %call12, %if.then ], [ %call15, %if.else ], !dbg !2887
  call void @llvm.dbg.value(metadata %union.tree_node* %utype.0, metadata !2849, metadata !DIExpression()), !dbg !2874
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2889
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2889
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 13), align 8, !dbg !2890
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %8) #6, !dbg !2889
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2889
  %call16 = call %union.tree_node* @create_tmp_var(%union.tree_node* %utype.0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2891
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2852, metadata !DIExpression()), !dbg !2874
  %call17 = call zeroext i8 @add_referenced_var(%union.tree_node* %call16) #6, !dbg !2892
  %call18 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call16, %union.gimple_statement_d* null) #7, !dbg !2893
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !2850, metadata !DIExpression()), !dbg !2874
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 0), align 8, !dbg !2894
  %call19 = call %union.tree_node* @fold_convert_loc(i32 %call3, %union.tree_node* %utype.0, %union.tree_node* %9) #6, !dbg !2895
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !2853, metadata !DIExpression()), !dbg !2874
  %call20 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call18, %union.tree_node* %call19) #6, !dbg !2896
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !2854, metadata !DIExpression()), !dbg !2874
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2897
  %10 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2897
  store %union.gimple_statement_d* %call20, %union.gimple_statement_d** %10, align 8, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call20, i32 1) #6, !dbg !2899
  call fastcc void @update_stmt(%union.gimple_statement_d* %call20) #7, !dbg !2900
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 1), align 8, !dbg !2901
  %call21 = call %union.tree_node* @fold_convert_loc(i32 %call3, %union.tree_node* %utype.0, %union.tree_node* %11) #6, !dbg !2902
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !2856, metadata !DIExpression()), !dbg !2874
  %call22 = call %union.tree_node* @fold_build2_stat_loc(i32 %call3, i32 64, %union.tree_node* %utype.0, %union.tree_node* %call18, %union.tree_node* %call21) #6, !dbg !2903
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !2857, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  %call23 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call22, i8 zeroext 0, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2904
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2857, metadata !DIExpression()), !dbg !2874
  %call24 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call16, %union.gimple_statement_d* null) #7, !dbg !2905
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !2851, metadata !DIExpression()), !dbg !2874
  %call25 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call24, %union.tree_node* %call23) #6, !dbg !2906
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call25, metadata !2855, metadata !DIExpression()), !dbg !2874
  %def_stmt27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2907
  %12 = bitcast %union.tree_node** %def_stmt27 to %union.gimple_statement_d**, !dbg !2907
  store %union.gimple_statement_d* %call25, %union.gimple_statement_d** %12, align 8, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call25, i32 1) #6, !dbg !2909
  call fastcc void @update_stmt(%union.gimple_statement_d* %call25) #7, !dbg !2910
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 2), align 8, !dbg !2911
  %call28 = call %union.tree_node* @fold_convert_loc(i32 %call3, %union.tree_node* %utype.0, %union.tree_node* %13) #6, !dbg !2912
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !2858, metadata !DIExpression()), !dbg !2874
  %call29 = call %union.gimple_statement_d* @gimple_build_cond(i32 98, %union.tree_node* %call24, %union.tree_node* %call28, %union.tree_node* null, %union.tree_node* null) #6, !dbg !2913
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call29, metadata !2859, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call29, i32 1) #6, !dbg !2914
  call fastcc void @update_stmt(%union.gimple_statement_d* %call29) #7, !dbg !2915
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp30 to i8*, !dbg !2916
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2916
  %15 = load %union.gimple_statement_d*, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 13), align 8, !dbg !2917
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp30, %union.gimple_statement_d* %15) #6, !dbg !2916
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2916
  %call31 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call1) #6, !dbg !2918
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call31, metadata !2847, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call31, i32 1) #6, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  %call32 = call fastcc %union.gimple_statement_d* @gen_def_assigns(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2920
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call32, metadata !2860, metadata !DIExpression()), !dbg !2874
  %16 = bitcast %struct.gimple_stmt_iterator* %tmp33 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8, !dbg !2921
  %17 = load %union.gimple_statement_d*, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 13), align 8, !dbg !2922
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp33, %union.gimple_statement_d* %17) #6, !dbg !2921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8, !dbg !2921
  %call34 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call) #6, !dbg !2923
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call34, metadata !2846, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call34, i32 1) #6, !dbg !2924
  %18 = bitcast %struct.gimple_stmt_iterator* %tmp35 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #8, !dbg !2925
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2926
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp35, %struct.basic_block_def* %19) #7, !dbg !2925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %18, i64 24, i1 false), !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #8, !dbg !2925
  %call36 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call2) #6, !dbg !2927
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call36, metadata !2848, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2874
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call36, i32 1) #6, !dbg !2928
  %20 = bitcast %union.gimple_statement_d* %call29 to i8*, !dbg !2929
  %call37 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call4, i8* %20) #6, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.edge_def* %call37, metadata !2868, metadata !DIExpression()), !dbg !2874
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call37, i64 0, i32 1, !dbg !2931
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2931
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %21, metadata !2864, metadata !DIExpression()), !dbg !2874
  %22 = bitcast %union.gimple_statement_d* %call32 to i8*, !dbg !2932
  %call38 = call %struct.edge_def* @split_block(%struct.basic_block_def* %21, i8* %22) #6, !dbg !2933
  call void @llvm.dbg.value(metadata %struct.edge_def* %call38, metadata !2869, metadata !DIExpression()), !dbg !2874
  %dest39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call38, i64 0, i32 1, !dbg !2934
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest39, align 8, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %23, metadata !2863, metadata !DIExpression()), !dbg !2874
  call void @remove_edge(%struct.edge_def* %call38) #6, !dbg !2935
  %24 = load i8*, i8** bitcast (%union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 14) to i8**), align 8, !dbg !2936
  %call40 = call %struct.edge_def* @split_block(%struct.basic_block_def* %23, i8* %24) #6, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.edge_def* %call40, metadata !2870, metadata !DIExpression()), !dbg !2874
  %dest41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 1, !dbg !2938
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest41, align 8, !dbg !2938
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %25, metadata !2866, metadata !DIExpression()), !dbg !2874
  call void @remove_edge(%struct.edge_def* %call40) #6, !dbg !2939
  %call42 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call4, %struct.basic_block_def* %23, i32 1024) #6, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.edge_def* %call42, metadata !2867, metadata !DIExpression()), !dbg !2874
  %26 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 10), align 8, !dbg !2941
  %sub = sub nsw i32 10000, %26, !dbg !2942
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call42, i64 0, i32 8, !dbg !2943
  store i32 %sub, i32* %probability, align 4, !dbg !2944
  %27 = load i64, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 12), align 8, !dbg !2945
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call42, i64 0, i32 9, !dbg !2946
  store i64 %27, i64* %count, align 8, !dbg !2947
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call37, i64 0, i32 7, !dbg !2948
  %28 = load i32, i32* %flags, align 8, !dbg !2949
  %and = and i32 %28, -2050, !dbg !2949
  %or = or i32 %and, 2048, !dbg !2950
  store i32 %or, i32* %flags, align 8, !dbg !2950
  %29 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 10), align 8, !dbg !2951
  %probability44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call37, i64 0, i32 8, !dbg !2952
  store i32 %29, i32* %probability44, align 4, !dbg !2953
  %30 = load i64, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 11), align 8, !dbg !2954
  %count45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call37, i64 0, i32 9, !dbg !2955
  store i64 %30, i64* %count45, align 8, !dbg !2956
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %31, metadata !2865, metadata !DIExpression()), !dbg !2874
  %call46 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %23, %struct.basic_block_def* %31, i32 1) #6, !dbg !2958
  call void @llvm.dbg.value(metadata %struct.edge_def* %call46, metadata !2871, metadata !DIExpression()), !dbg !2874
  %probability47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call46, i64 0, i32 8, !dbg !2959
  store i32 10000, i32* %probability47, align 4, !dbg !2960
  %32 = load i64, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 12), align 8, !dbg !2961
  %count48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call46, i64 0, i32 9, !dbg !2962
  store i64 %32, i64* %count48, align 8, !dbg !2963
  %call49 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %21, %struct.basic_block_def* %31, i32 1) #6, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.edge_def* %call49, metadata !2872, metadata !DIExpression()), !dbg !2874
  %probability50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call49, i64 0, i32 8, !dbg !2965
  store i32 10000, i32* %probability50, align 4, !dbg !2966
  %33 = load i64, i64* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 11), align 8, !dbg !2967
  %count51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call49, i64 0, i32 9, !dbg !2968
  store i64 %33, i64* %count51, align 8, !dbg !2969
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call42, i64 0, i32 0, !dbg !2970
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2970
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 11, !dbg !2970
  %35 = load i32, i32* %frequency, align 8, !dbg !2970
  %36 = load i32, i32* %probability, align 4, !dbg !2970
  %mul = mul nsw i32 %35, %36, !dbg !2970
  %add = add nsw i32 %mul, 5000, !dbg !2970
  %div = sdiv i32 %add, 10000, !dbg !2970
  %frequency53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 11, !dbg !2971
  store i32 %div, i32* %frequency53, align 8, !dbg !2972
  %src54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call37, i64 0, i32 0, !dbg !2973
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src54, align 8, !dbg !2973
  %frequency55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 11, !dbg !2973
  %38 = load i32, i32* %frequency55, align 8, !dbg !2973
  %39 = load i32, i32* %probability44, align 4, !dbg !2973
  %mul57 = mul nsw i32 %38, %39, !dbg !2973
  %add58 = add nsw i32 %mul57, 5000, !dbg !2973
  %div59 = sdiv i32 %add58, 10000, !dbg !2973
  %frequency60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !2974
  store i32 %div59, i32* %frequency60, align 8, !dbg !2975
  %src61 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call46, i64 0, i32 0, !dbg !2976
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %src61, align 8, !dbg !2976
  %frequency62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i64 0, i32 11, !dbg !2976
  %41 = load i32, i32* %frequency62, align 8, !dbg !2976
  %42 = load i32, i32* %probability47, align 4, !dbg !2976
  %mul64 = mul nsw i32 %41, %42, !dbg !2976
  %add65 = add nsw i32 %mul64, 5000, !dbg !2976
  %div66 = sdiv i32 %add65, 10000, !dbg !2976
  %src67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call49, i64 0, i32 0, !dbg !2977
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src67, align 8, !dbg !2977
  %frequency68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i64 0, i32 11, !dbg !2977
  %44 = load i32, i32* %frequency68, align 8, !dbg !2977
  %45 = load i32, i32* %probability50, align 4, !dbg !2977
  %mul70 = mul nsw i32 %44, %45, !dbg !2977
  %add71 = add nsw i32 %mul70, 5000, !dbg !2977
  %div72 = sdiv i32 %add71, 10000, !dbg !2977
  %add73 = add nsw i32 %div66, %div72, !dbg !2978
  %frequency74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 11, !dbg !2979
  store i32 %add73, i32* %frequency74, align 8, !dbg !2980
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 4), align 8, !dbg !2981
  call fastcc void @prune_bbs(%struct.basic_block_def* %25, %struct.basic_block_def* %46) #7, !dbg !2982
  call fastcc void @fix_phi_nodes(%struct.edge_def* %call46, %struct.edge_def* %call49, %struct.basic_block_def* %31) #7, !dbg !2983
  call void @free_dominance_info(i32 1) #6, !dbg !2984
  call void @free_dominance_info(i32 2) #6, !dbg !2985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2986
  ret void, !dbg !2986
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_temp_arrays() unnamed_addr #5 !dbg !2987 {
entry:
  %0 = load i8*, i8** bitcast (%struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7) to i8**), align 8, !dbg !2988
  tail call void @free(i8* %0) #6, !dbg !2989
  %1 = load i8*, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6) to i8**), align 8, !dbg !2990
  tail call void @free(i8* %1) #6, !dbg !2991
  %2 = load i8*, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 8) to i8**), align 8, !dbg !2992
  tail call void @free(i8* %2) #6, !dbg !2993
  %3 = load i8*, i8** bitcast (%union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 9) to i8**), align 8, !dbg !2994
  tail call void @free(i8* %3) #6, !dbg !2995
  ret void, !dbg !2996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2997 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2999, metadata !DIExpression()), !dbg !3000
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3001
  %0 = load i32, i32* %num_ops, align 4, !dbg !3001
  ret i32 %0, !dbg !3002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3003 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %i, metadata !3006, metadata !DIExpression()), !dbg !3007
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3008
  %tobool = icmp eq i8 %call, 0, !dbg !3008
  br i1 %tobool, label %return, label %if.then, !dbg !3010

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3011
  %idxprom = zext i32 %i to i64, !dbg !3011
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3011
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3011
  br label %return, !dbg !3013

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3014
  ret %union.tree_node* %retval.0, !dbg !3015
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3016 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3020, metadata !DIExpression()), !dbg !3021
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3022
  %cmp = icmp eq i32 %call, 0, !dbg !3023
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3024

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3025
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3026
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3027
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3028 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3032, metadata !DIExpression()), !dbg !3034
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3035
  %idxprom = zext i32 %call to i64, !dbg !3036
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3036
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %0, metadata !3033, metadata !DIExpression()), !dbg !3034
  %cmp = icmp eq i64 %0, 0, !dbg !3037
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3037

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3037
  br label %cond.end, !dbg !3037

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3038
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3039
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3040
  ret %union.tree_node** %2, !dbg !3041
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3042 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3046, metadata !DIExpression()), !dbg !3047
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3048
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3049
  ret i32 %call1, !dbg !3050
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3051 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3055, metadata !DIExpression()), !dbg !3056
  %idxprom = zext i32 %code to i64, !dbg !3057
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3057
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3057
  ret i32 %0, !dbg !3058
}

declare dso_local %union.tree_node* @int_const_binop(i32, %union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @label_to_block_fn(%struct.function*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3059 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3066, metadata !DIExpression()), !dbg !3067
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3068
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3068
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3068
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3068

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3068
  br label %cond.end, !dbg !3068

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3068
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3068
  %cmp = icmp eq i32 %call, 1, !dbg !3069
  %conv2 = zext i1 %cmp to i8, !dbg !3068
  ret i8 %conv2, !dbg !3070
}

declare dso_local zeroext i8 @empty_block_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3075, metadata !DIExpression()), !dbg !3076
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3077
  %tobool = icmp eq i8 %call, 0, !dbg !3077
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3077

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3077
  br label %cond.end, !dbg !3077

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3078
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3078
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3078
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3078

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3078
  br label %cond.end5, !dbg !3078

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3078
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3078
  ret %struct.edge_def* %call7, !dbg !3079
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3084, metadata !DIExpression()), !dbg !3085
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !3086
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3087
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3087
  ret %struct.basic_block_def* %0, !dbg !3088
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3089 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3095, metadata !DIExpression()), !dbg !3096
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3097
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3097

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3097
  %0 = load i32, i32* %num, align 8, !dbg !3097
  br label %cond.end, !dbg !3097

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3097
  ret i32 %cond, !dbg !3097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3100, metadata !DIExpression()), !dbg !3101
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3102
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3102
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3102
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3102

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3102
  br label %cond.end, !dbg !3102

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3102
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3102
  %cmp = icmp eq i32 %call, 1, !dbg !3103
  %conv2 = zext i1 %cmp to i8, !dbg !3102
  ret i8 %conv2, !dbg !3104
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3110, metadata !DIExpression()), !dbg !3111
  br label %land.end, !dbg !3112

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3112
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3112
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3112
  ret %struct.edge_def* %0, !dbg !3112
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3113 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3117, metadata !DIExpression()), !dbg !3118
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3119
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3119
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3120
  %conv1 = zext i1 %cmp to i8, !dbg !3121
  ret i8 %conv1, !dbg !3122
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3123 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3127, metadata !DIExpression()), !dbg !3128
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3129
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3129
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3130
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3130
  ret %union.gimple_statement_d* %1, !dbg !3131
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3132 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3134, metadata !DIExpression()), !dbg !3135
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3136
  %0 = load i32, i32* %nargs, align 4, !dbg !3136
  ret i32 %0, !dbg !3137
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3138 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %i, metadata !3144, metadata !DIExpression()), !dbg !3145
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3146
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3146
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3146
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3146
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3146

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3146
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !3146
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !3146
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3146
  br label %cond.end, !dbg !3146

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3146
  %conv = trunc i64 %i to i32, !dbg !3146
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !3146
  ret %struct.edge_def* %call3, !dbg !3147
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3148 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3150, metadata !DIExpression()), !dbg !3151
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !3152
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3153
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3153
  ret %struct.basic_block_def* %0, !dbg !3154
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !3155 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %index, metadata !3160, metadata !DIExpression()), !dbg !3163
  %conv = trunc i64 %index to i32, !dbg !3164
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !3161, metadata !DIExpression()), !dbg !3163
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3166
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !3167
  ret %union.tree_node* %call1, !dbg !3168
}

declare dso_local zeroext i8 @is_gimple_ip_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @initializer_constant_valid_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3169 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3174, metadata !DIExpression()), !dbg !3175
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3176
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3176
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3177
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3177
  %2 = load i64, i64* %1, align 8, !dbg !3177
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3178
  store i64 %2, i64* %3, align 8, !dbg !3178
  ret void, !dbg !3179
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3182, metadata !DIExpression()), !dbg !3183
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3184
  %tobool = icmp eq i8 %call, 0, !dbg !3184
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3184

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3184
  br label %cond.end, !dbg !3184

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3185
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3185
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3185
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3185

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3185
  br label %cond.end5, !dbg !3185

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3185
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3185
  ret %struct.edge_def* %call7, !dbg !3186
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3187 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 %index, metadata !3192, metadata !DIExpression()), !dbg !3193
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3194
  %0 = load i32, i32* %capacity, align 8, !dbg !3194
  %cmp = icmp ult i32 %0, %index, !dbg !3194
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3194

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3194
  br label %cond.end, !dbg !3194

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3195
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3195
  ret %struct.phi_arg_d* %arrayidx, !dbg !3196
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3197 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3204, metadata !DIExpression()), !dbg !3205
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3206
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3206
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3207
  ret %union.tree_node* %1, !dbg !3208
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_constructor_elt_gc* @VEC_constructor_elt_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3209 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3213, metadata !DIExpression()), !dbg !3214
  %call = tail call i8* @vec_gc_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 16) #6, !dbg !3215
  %0 = bitcast i8* %call to %struct.VEC_constructor_elt_gc*, !dbg !3215
  ret %struct.VEC_constructor_elt_gc* %0, !dbg !3215
}

declare dso_local i8* @vec_gc_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3216 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 %i, metadata !3221, metadata !DIExpression()), !dbg !3222
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3223
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3224
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3225
}

declare dso_local i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_quick_push(%struct.VEC_constructor_elt_base* %vec_, %struct.constructor_elt_d* %obj_) unnamed_addr #0 !dbg !3226 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* null, metadata !3234, metadata !DIExpression()), !dbg !3236
  %num1 = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 0, !dbg !3237
  %0 = load i32, i32* %num1, align 8, !dbg !3237
  %inc = add i32 %0, 1, !dbg !3237
  store i32 %inc, i32* %num1, align 8, !dbg !3237
  %idxprom = zext i32 %0 to i64, !dbg !3237
  %arrayidx = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* %arrayidx, metadata !3235, metadata !DIExpression()), !dbg !3236
  ret %struct.constructor_elt_d* %arrayidx, !dbg !3237
}

declare dso_local i32 @tree_int_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_index_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3238 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3242, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3243, metadata !DIExpression()), !dbg !3244
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3245
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* null) #6, !dbg !3246
  ret %union.tree_node* %call, !dbg !3247
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3248 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3250, metadata !DIExpression()), !dbg !3251
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !3252
  %tobool = icmp eq i8 %call, 0, !dbg !3252
  br i1 %tobool, label %if.end, label %if.then, !dbg !3254

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3255
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3257
  br label %if.end, !dbg !3258

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3259
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_one_array(%union.gimple_statement_d* %swtch, i32 %num, %union.tree_node* %arr_index_type, %union.gimple_statement_d* %phi, %union.tree_node* %tidx) unnamed_addr #5 !dbg !3260 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %swtch, metadata !3264, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %num, metadata !3265, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node* %arr_index_type, metadata !3266, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3267, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node* %tidx, metadata !3268, metadata !DIExpression()), !dbg !3281
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3272, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %swtch) #6, !dbg !3283
  %call = call fastcc i32 @gimple_location(%union.gimple_statement_d* %swtch) #7, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %call, metadata !3273, metadata !DIExpression()), !dbg !3281
  %1 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !3285
  %idxprom = sext i32 %num to i64, !dbg !3285
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %1, i64 %idxprom, !dbg !3285
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3285
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !3285
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3285

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3285
  br label %cond.end, !dbg !3285

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !3286
  %call2 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call1) #7, !dbg !3286
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3286
  %3 = bitcast i32* %var to %union.tree_node**, !dbg !3286
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3286
  %call3 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %4, %union.gimple_statement_d* null) #7, !dbg !3287
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3269, metadata !DIExpression()), !dbg !3281
  %5 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 8), align 8, !dbg !3288
  %arrayidx5 = getelementptr inbounds %union.tree_node*, %union.tree_node** %5, i64 %idxprom, !dbg !3289
  store %union.tree_node* %call3, %union.tree_node** %arrayidx5, align 8, !dbg !3290
  %6 = load %struct.VEC_constructor_elt_gc**, %struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7), align 8, !dbg !3291
  %arrayidx7 = getelementptr inbounds %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %6, i64 %idxprom, !dbg !3292
  %7 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %arrayidx7, align 8, !dbg !3292
  %call8 = call fastcc %union.tree_node* @constructor_contains_same_values_p(%struct.VEC_constructor_elt_gc* %7) #7, !dbg !3293
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3270, metadata !DIExpression()), !dbg !3281
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !3294
  br i1 %tobool9, label %if.else, label %if.then, !dbg !3295

if.then:                                          ; preds = %cond.end
  %call10 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call3, %union.tree_node* nonnull %call8) #6, !dbg !3296
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !3271, metadata !DIExpression()), !dbg !3281
  br label %if.end, !dbg !3297

if.else:                                          ; preds = %cond.end
  %8 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !3298
  %arrayidx12 = getelementptr inbounds %union.tree_node*, %union.tree_node** %8, i64 %idxprom, !dbg !3298
  %9 = bitcast %union.tree_node** %arrayidx12 to %struct.tree_common**, !dbg !3298
  %10 = load %struct.tree_common*, %struct.tree_common** %9, align 8, !dbg !3298
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 0, i32 2, !dbg !3298
  %11 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3298
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3279, metadata !DIExpression()), !dbg !3299
  %call13 = call %union.tree_node* @build_array_type(%union.tree_node* %11, %union.tree_node* %arr_index_type) #6, !dbg !3300
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3274, metadata !DIExpression()), !dbg !3299
  %12 = load %struct.VEC_constructor_elt_gc**, %struct.VEC_constructor_elt_gc*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 7), align 8, !dbg !3301
  %arrayidx15 = getelementptr inbounds %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %12, i64 %idxprom, !dbg !3302
  %13 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %arrayidx15, align 8, !dbg !3302
  %call16 = call %union.tree_node* @build_constructor(%union.tree_node* %call13, %struct.VEC_constructor_elt_gc* %13) #6, !dbg !3303
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3277, metadata !DIExpression()), !dbg !3299
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3304
  %bf.load = load i64, i64* %14, align 8, !dbg !3305
  %bf.set = or i64 %bf.load, 131072, !dbg !3305
  store i64 %bf.set, i64* %14, align 8, !dbg !3305
  %call17 = call %union.tree_node* @build_decl_stat(i32 %call, i32 32, %union.tree_node* null, %union.tree_node* %call13) #6, !dbg !3306
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !3278, metadata !DIExpression()), !dbg !3299
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3307
  %bf.load19 = load i64, i64* %15, align 8, !dbg !3308
  %bf.set21 = or i64 %bf.load19, 67108864, !dbg !3308
  store i64 %bf.set21, i64* %15, align 8, !dbg !3308
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !3309
  store %union.tree_node* %call16, %union.tree_node** %initial, align 8, !dbg !3310
  %call22 = call %union.tree_node* @create_tmp_var_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3311
  %name23 = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3312
  store %union.tree_node* %call22, %union.tree_node** %name23, align 8, !dbg !3313
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3314
  %16 = bitcast i40* %artificial_flag to i64*, !dbg !3314
  %bf.load25 = load i64, i64* %16, align 8, !dbg !3315
  %bf.set27 = or i64 %bf.load25, 4096, !dbg !3315
  store i64 %bf.set27, i64* %16, align 8, !dbg !3315
  %bf.load29 = load i64, i64* %15, align 8, !dbg !3316
  %bf.set31 = or i64 %bf.load29, 131072, !dbg !3316
  store i64 %bf.set31, i64* %15, align 8, !dbg !3316
  %call32 = call zeroext i8 @add_referenced_var(%union.tree_node* %call17) #6, !dbg !3317
  %call33 = call %struct.varpool_node* @varpool_node(%union.tree_node* %call17) #6, !dbg !3318
  call void @varpool_mark_needed_node(%struct.varpool_node* %call33) #6, !dbg !3319
  call void @varpool_finalize_decl(%union.tree_node* %call17) #6, !dbg !3320
  %call34 = call %union.tree_node* @build4_stat(i32 45, %union.tree_node* %11, %union.tree_node* %call17, %union.tree_node* %tidx, %union.tree_node* null, %union.tree_node* null) #6, !dbg !3321
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !3280, metadata !DIExpression()), !dbg !3299
  %call35 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call3, %union.tree_node* %call34) #6, !dbg !3322
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call35, metadata !3271, metadata !DIExpression()), !dbg !3281
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %load.0 = phi %union.gimple_statement_d* [ %call10, %if.then ], [ %call35, %if.else ], !dbg !3323
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %load.0, metadata !3271, metadata !DIExpression()), !dbg !3281
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3324
  %17 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3324
  store %union.gimple_statement_d* %load.0, %union.gimple_statement_d** %17, align 8, !dbg !3325
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3272, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %load.0, i32 1) #6, !dbg !3326
  call fastcc void @update_stmt(%union.gimple_statement_d* %load.0) #7, !dbg !3327
  store %union.gimple_statement_d* %load.0, %union.gimple_statement_d** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 14), align 8, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3329
  ret void, !dbg !3329
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3330 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3335, metadata !DIExpression()), !dbg !3336
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3337
  ret %union.tree_node* %0, !dbg !3338
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3341, metadata !DIExpression()), !dbg !3342
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3343
  ret %union.tree_node** %result, !dbg !3344
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @constructor_contains_same_values_p(%struct.VEC_constructor_elt_gc* %vec) unnamed_addr #5 !dbg !3345 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_gc* %vec, metadata !3349, metadata !DIExpression()), !dbg !3357
  %base = getelementptr inbounds %struct.VEC_constructor_elt_gc, %struct.VEC_constructor_elt_gc* %vec, i64 0, i32 0, !dbg !3358
  %call = tail call fastcc i32 @VEC_constructor_elt_base_length(%struct.VEC_constructor_elt_base* %base) #7, !dbg !3358
  call void @llvm.dbg.value(metadata i32 %call, metadata !3351, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3352, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3357
  br label %for.cond, !dbg !3359

for.cond:                                         ; preds = %for.inc, %entry
  %prev.0 = phi %union.tree_node* [ null, %entry ], [ %prev.2, %for.inc ], !dbg !3360
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3350, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata %union.tree_node* %prev.0, metadata !3352, metadata !DIExpression()), !dbg !3357
  %cmp = icmp slt i32 %i.0, %call, !dbg !3362
  br i1 %cmp, label %for.body, label %cleanup14, !dbg !3363

for.body:                                         ; preds = %for.cond
  %call7 = tail call fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_index(%struct.VEC_constructor_elt_base* %base, i32 %i.0) #7, !dbg !3364
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* %call7, metadata !3353, metadata !DIExpression()), !dbg !3365
  %tobool8 = icmp eq %union.tree_node* %prev.0, null, !dbg !3366
  %value9 = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call7, i64 0, i32 1, !dbg !3368
  %0 = load %union.tree_node*, %union.tree_node** %value9, align 8, !dbg !3368
  br i1 %tobool8, label %if.end13, label %if.else, !dbg !3369

if.else:                                          ; preds = %for.body
  %call10 = tail call i32 @operand_equal_p(%union.tree_node* %0, %union.tree_node* nonnull %prev.0, i32 1) #6, !dbg !3370
  %tobool11 = icmp eq i32 %call10, 0, !dbg !3370
  br i1 %tobool11, label %cleanup, label %if.end13, !dbg !3372

if.end13:                                         ; preds = %if.else, %for.body
  %prev.1 = phi %union.tree_node* [ %0, %for.body ], [ %prev.0, %if.else ], !dbg !3357
  call void @llvm.dbg.value(metadata %union.tree_node* %prev.1, metadata !3352, metadata !DIExpression()), !dbg !3357
  br label %cleanup, !dbg !3373

cleanup:                                          ; preds = %if.else, %if.end13
  %prev.2 = phi %union.tree_node* [ %prev.1, %if.end13 ], [ %prev.0, %if.else ], !dbg !3360
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end13 ], [ false, %if.else ]
  call void @llvm.dbg.value(metadata %union.tree_node* %prev.2, metadata !3352, metadata !DIExpression()), !dbg !3357
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup14

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3350, metadata !DIExpression()), !dbg !3357
  br label %for.cond, !dbg !3375, !llvm.loop !3376

cleanup14:                                        ; preds = %for.cond, %cleanup
  %retval.2 = phi %union.tree_node* [ null, %cleanup ], [ %prev.0, %for.cond ]
  ret %union.tree_node* %retval.2, !dbg !3378
}

declare dso_local %union.tree_node* @build_array_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_constructor(%union.tree_node*, %struct.VEC_constructor_elt_gc*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var_name(i8*) local_unnamed_addr #2

declare dso_local void @varpool_mark_needed_node(%struct.varpool_node*) local_unnamed_addr #2

declare dso_local %struct.varpool_node* @varpool_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @varpool_finalize_decl(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build4_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(%struct.VEC_constructor_elt_base* %vec_) unnamed_addr #0 !dbg !3379 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3385, metadata !DIExpression()), !dbg !3386
  %tobool = icmp eq %struct.VEC_constructor_elt_base* %vec_, null, !dbg !3387
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3387

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 0, !dbg !3387
  %0 = load i32, i32* %num, align 8, !dbg !3387
  br label %cond.end, !dbg !3387

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3387
  ret i32 %cond, !dbg !3387
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_index(%struct.VEC_constructor_elt_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3388 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3393, metadata !DIExpression()), !dbg !3394
  br label %land.end, !dbg !3395

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3395
  %arrayidx = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3395
  ret %struct.constructor_elt_d* %arrayidx, !dbg !3395
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_artificial_label(i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @unsigned_type_for(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_label(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gen_def_assigns(%struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !3396 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3400, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 0, metadata !3401, metadata !DIExpression()), !dbg !3407
  br label %for.cond, !dbg !3408

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3409
  %assign.0 = phi %union.gimple_statement_d* [ %call5, %for.body ], [ null, %entry ], !dbg !3407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %assign.0, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3401, metadata !DIExpression()), !dbg !3407
  %0 = load i32, i32* getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 5), align 8, !dbg !3410
  %1 = sext i32 %0 to i64, !dbg !3411
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !3411
  br i1 %cmp, label %for.body, label %for.end, !dbg !3412

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 8), align 8, !dbg !3413
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 %indvars.iv, !dbg !3413
  %3 = bitcast %union.tree_node** %arrayidx to %struct.tree_ssa_name**, !dbg !3413
  %4 = load %struct.tree_ssa_name*, %struct.tree_ssa_name** %3, align 8, !dbg !3413
  %var = getelementptr inbounds %struct.tree_ssa_name, %struct.tree_ssa_name* %4, i64 0, i32 1, !dbg !3413
  %5 = load %union.tree_node*, %union.tree_node** %var, align 8, !dbg !3413
  %call = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %5, %union.gimple_statement_d* null) #7, !dbg !3414
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3403, metadata !DIExpression()), !dbg !3415
  %6 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 9), align 8, !dbg !3416
  %arrayidx2 = getelementptr inbounds %union.tree_node*, %union.tree_node** %6, i64 %indvars.iv, !dbg !3417
  store %union.tree_node* %call, %union.tree_node** %arrayidx2, align 8, !dbg !3418
  %7 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 6), align 8, !dbg !3419
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %7, i64 %indvars.iv, !dbg !3419
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3419
  %call5 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call, %union.tree_node* %8) #6, !dbg !3419
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3402, metadata !DIExpression()), !dbg !3407
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3420
  %9 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3420
  store %union.gimple_statement_d* %call5, %union.gimple_statement_d** %9, align 8, !dbg !3421
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call5, i32 1) #6, !dbg !3422
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call5) #7, !dbg !3423
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3424
  call void @llvm.dbg.value(metadata i32 undef, metadata !3401, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3407
  br label %for.cond, !dbg !3425, !llvm.loop !3426

for.end:                                          ; preds = %for.cond
  %assign.0.lcssa = phi %union.gimple_statement_d* [ %assign.0, %for.cond ], !dbg !3407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %assign.0.lcssa, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %assign.0.lcssa, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %assign.0.lcssa, metadata !3402, metadata !DIExpression()), !dbg !3407
  ret %union.gimple_statement_d* %assign.0.lcssa, !dbg !3428
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3429 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3434, metadata !DIExpression()), !dbg !3437
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3435, metadata !DIExpression()), !dbg !3436
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3439
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3440
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3441
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3442
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3443
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3444
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3445
  ret void, !dbg !3446
}

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @prune_bbs(%struct.basic_block_def* %bbd, %struct.basic_block_def* %final) unnamed_addr #5 !dbg !3447 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bbd, metadata !3451, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %final, metadata !3452, metadata !DIExpression()), !dbg !3465
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3466
  %1 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3467
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bbd, i64 0, i32 1, !dbg !3467
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3467
  %2 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3467
  %3 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3467
  store i32 %3, i32* %2, align 8, !dbg !3467
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3467
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3467
  store %struct.VEC_edge_gc** %5, %struct.VEC_edge_gc*** %4, align 8, !dbg !3467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3467
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3467
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3468
  %7 = load i32, i32* %6, align 8, !dbg !3468
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3468
  %9 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3468
  br label %for.cond, !dbg !3469

for.cond:                                         ; preds = %if.end, %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_safe_edge(i32 %7, %struct.VEC_edge_gc** %9) #7, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !3460, metadata !DIExpression()), !dbg !3465
  %tobool = icmp eq %struct.edge_def* %call1, null, !dbg !3471
  br i1 %tobool, label %for.end, label %for.body, !dbg !3471

for.body:                                         ; preds = %for.cond
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 1, !dbg !3472
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %10, metadata !3461, metadata !DIExpression()), !dbg !3473
  tail call void @remove_edge(%struct.edge_def* nonnull %call1) #6, !dbg !3474
  %cmp = icmp eq %struct.basic_block_def* %10, %final, !dbg !3475
  br i1 %cmp, label %if.end, label %if.then, !dbg !3477

if.then:                                          ; preds = %for.body
  tail call void @delete_basic_block(%struct.basic_block_def* %10) #6, !dbg !3478
  br label %if.end, !dbg !3478

if.end:                                           ; preds = %for.body, %if.then
  br label %for.cond, !dbg !3479, !llvm.loop !3480

for.end:                                          ; preds = %for.cond
  tail call void @delete_basic_block(%struct.basic_block_def* %bbd) #6, !dbg !3482
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3483
  ret void, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_phi_nodes(%struct.edge_def* %e1f, %struct.edge_def* %e2f, %struct.basic_block_def* %bbf) unnamed_addr #5 !dbg !3484 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1f, metadata !3488, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.edge_def* %e2f, metadata !3489, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bbf, metadata !3490, metadata !DIExpression()), !dbg !3497
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3498
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3498
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3499
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3499
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bbf) #6, !dbg !3499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3499
  call void @llvm.dbg.value(metadata i32 0, metadata !3492, metadata !DIExpression()), !dbg !3497
  br label %for.cond, !dbg !3500

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3501
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3492, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3491, metadata !DIExpression(DW_OP_deref)), !dbg !3497
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3502
  %tobool = icmp eq i8 %call, 0, !dbg !3503
  br i1 %tobool, label %for.body, label %for.end, !dbg !3504

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3491, metadata !DIExpression(DW_OP_deref)), !dbg !3497
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3505
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !3493, metadata !DIExpression()), !dbg !3506
  %2 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 8), align 8, !dbg !3507
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 %indvars.iv, !dbg !3508
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3508
  call void @add_phi_arg(%union.gimple_statement_d* %call1, %union.tree_node* %3, %struct.edge_def* %e1f, i32 0) #6, !dbg !3509
  %4 = load %union.tree_node**, %union.tree_node*** getelementptr inbounds (%struct.switch_conv_info, %struct.switch_conv_info* @info, i64 0, i32 9), align 8, !dbg !3510
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %4, i64 %indvars.iv, !dbg !3511
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !3511
  call void @add_phi_arg(%union.gimple_statement_d* %call1, %union.tree_node* %5, %struct.edge_def* %e2f, i32 0) #6, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3491, metadata !DIExpression(DW_OP_deref)), !dbg !3497
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3513
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3492, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3497
  br label %for.cond, !dbg !3515, !llvm.loop !3516

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3518
  ret void, !dbg !3518
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3519 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3523, metadata !DIExpression()), !dbg !3524
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3525
  %0 = load i32, i32* %flags, align 8, !dbg !3525
  %and = and i32 %0, 512, !dbg !3526
  %tobool = icmp eq i32 %and, 0, !dbg !3526
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3527

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3528
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3528
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3529
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3530

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3531
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3531
  br label %cond.end, !dbg !3530

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3530
  ret %struct.gimple_seq_d* %cond, !dbg !3532
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3533 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3540, metadata !DIExpression()), !dbg !3541
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3542
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3542

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3543
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3543
  br label %cond.end, !dbg !3542

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3542
  ret %struct.gimple_seq_node_d* %cond, !dbg !3544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3545 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3549, metadata !DIExpression()), !dbg !3551
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3552
  store i32 0, i32* %index, align 8, !dbg !3553
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3554
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3555
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3556
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3556
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3556
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3557 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3562
  %tobool = icmp eq i8 %call, 0, !dbg !3562
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3563

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3564
  br label %cond.end, !dbg !3563

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !3563
  ret %struct.edge_def* %cond, !dbg !3565
}

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3566 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3571
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3571
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3571

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3571
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3571
  br label %cond.end, !dbg !3571

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3571
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3571
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3572
  %conv3 = zext i1 %cmp to i8, !dbg !3573
  ret i8 %conv3, !dbg !3574
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3575 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3578
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3578
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3578

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3578
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3578
  br label %cond.end, !dbg !3578

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3578
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3578
  ret %struct.edge_def* %call2, !dbg !3579
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3580 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3585
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3585

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3585
  br label %cond.end, !dbg !3585

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3586
  ret %struct.VEC_edge_gc* %0, !dbg !3587
}

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1731, !1732, !1733}
!llvm.ident = !{!1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_convert_switch", scope: !2, file: !3, line: 914, type: !1705, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !497, globals: !1684, nameTableKind: None)
!3 = !DIFile(filename: "tree-switch-conversion.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !195, !200, !205, !224, !231, !238, !432, !471}
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
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !190, line: 363, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !190, line: 355, baseType: !7, size: 32, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !201, line: 474, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!202 = !{!203, !204}
!203 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !206, line: 280, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!208 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !206, line: 1817, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !206, line: 1805, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !206, line: 39, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!240 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!241 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!242 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!243 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!244 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!245 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!246 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!247 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!248 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!249 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!250 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!251 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!252 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!253 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!254 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!255 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!256 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!257 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!258 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!259 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!260 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!261 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!262 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!263 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!264 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!265 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!266 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!267 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!268 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!269 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!271 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!272 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!273 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!274 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!275 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!276 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!277 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!278 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!279 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!280 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!281 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!283 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!284 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!285 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!286 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!287 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!288 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!289 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!290 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!291 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!292 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!293 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!294 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!295 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!296 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!297 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!298 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!299 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!300 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!301 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!302 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!303 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!304 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!305 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!306 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!307 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!308 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!309 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!310 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!311 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!312 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!313 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!314 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!315 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!316 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!317 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!318 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!319 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!320 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!321 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!322 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!323 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!324 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!325 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!326 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!327 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!328 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!329 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!330 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!331 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!332 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!333 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!334 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!335 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!336 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!337 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!338 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!339 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!340 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!341 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!342 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!343 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!344 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!345 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!346 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!347 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!348 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!349 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!350 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!351 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!352 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!353 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!354 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!355 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!356 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!357 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!358 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!359 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!360 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!361 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!362 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!363 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!364 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!365 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!366 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!367 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!368 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!369 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!370 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!371 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!372 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!373 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!374 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!375 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!376 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!377 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!378 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!379 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!380 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!381 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!382 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!383 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!384 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!385 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!386 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!387 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!388 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!389 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!390 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!391 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!392 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!397 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!398 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!401 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!402 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!403 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!404 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!405 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!406 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!407 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!408 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!409 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!413 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!414 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!415 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!416 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!417 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!418 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!419 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!420 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!421 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!422 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!423 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!424 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!425 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!426 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!427 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!428 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!429 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!430 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!431 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !433, line: 51, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!435 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!439 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!440 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!441 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!442 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!446 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!447 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!448 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!449 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!450 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!451 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!452 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!453 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!454 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!458 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!459 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!460 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!470 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !433, line: 727, baseType: !7, size: 32, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!473 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!474 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!475 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!476 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!477 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!478 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!479 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!480 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!481 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!482 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!483 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!484 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!485 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!486 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!487 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!488 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!489 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!490 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!491 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!492 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!493 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!494 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!495 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!496 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!497 = !{!498, !499, !500, !501, !504, !505, !507, !1681, !578, !1037, !502, !631, !7, !1683, !1264, !526}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!500 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !433, line: 737, size: 768, elements: !509)
!509 = !{!510, !1528, !1538, !1544, !1549, !1554, !1561, !1567, !1573, !1578, !1592, !1597, !1603, !1608, !1618, !1623, !1639, !1646, !1653, !1659, !1664, !1670, !1676}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !508, file: !433, line: 738, baseType: !511, size: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !433, line: 271, size: 256, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !528, !529, !1527}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !511, file: !433, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !511, file: !433, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !511, file: !433, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !511, file: !433, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !511, file: !433, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !511, file: !433, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !511, file: !433, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !511, file: !433, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !511, file: !433, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !511, file: !433, line: 312, baseType: !7, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !511, file: !433, line: 316, baseType: !524, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !525, line: 58, baseType: !526)
!525 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !527, line: 44, baseType: !7)
!527 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!528 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !511, file: !433, line: 319, baseType: !7, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !511, file: !433, line: 323, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !190, line: 217, size: 832, elements: !532)
!532 = !{!533, !1492, !1493, !1494, !1497, !1501, !1502, !1503, !1521, !1522, !1523, !1524, !1525, !1526}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !531, file: !190, line: 219, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !190, line: 151, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !190, line: 151, size: 128, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !536, file: !190, line: 151, baseType: !539, size: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !190, line: 150, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !190, line: 150, size: 128, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !540, file: !190, line: 150, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !540, file: !190, line: 150, baseType: !7, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !540, file: !190, line: 150, baseType: !545, size: 64, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 64, elements: !660)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !547, line: 108, baseType: !548)
!547 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !190, line: 122, size: 512, elements: !550)
!550 = !{!551, !552, !553, !576, !577, !1486, !1487, !1488, !1489, !1490}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !549, file: !190, line: 124, baseType: !530, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !549, file: !190, line: 125, baseType: !530, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !549, file: !190, line: 131, baseType: !554, size: 64, offset: 128)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !190, line: 128, size: 64, elements: !555)
!555 = !{!556, !572}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !554, file: !190, line: 129, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !547, line: 66, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !433, line: 143, size: 192, elements: !560)
!560 = !{!561, !570, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !559, file: !433, line: 145, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !547, line: 69, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !433, line: 136, size: 192, elements: !565)
!565 = !{!566, !568, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !564, file: !433, line: 137, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !547, line: 58, baseType: !507)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !564, file: !433, line: 138, baseType: !563, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !433, line: 139, baseType: !563, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !559, file: !433, line: 146, baseType: !562, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !559, file: !433, line: 152, baseType: !557, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !554, file: !190, line: 130, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !547, line: 50, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !547, line: 49, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !549, file: !190, line: 134, baseType: !504, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !549, file: !190, line: 137, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !547, line: 56, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !206, line: 3371, size: 1792, elements: !581)
!581 = !{!582, !615, !621, !634, !641, !648, !653, !662, !668, !681, !689, !727, !732, !760, !777, !778, !783, !792, !798, !803, !807, !811, !1135, !1184, !1190, !1196, !1203, !1216, !1230, !1247, !1259, !1281, !1296, !1468}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !580, file: !206, line: 3372, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !206, line: 360, size: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !583, file: !206, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !583, file: !206, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !583, file: !206, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !583, file: !206, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !583, file: !206, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !583, file: !206, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !583, file: !206, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !583, file: !206, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !583, file: !206, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !583, file: !206, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !583, file: !206, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !583, file: !206, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !583, file: !206, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !583, file: !206, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !583, file: !206, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !583, file: !206, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !583, file: !206, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !583, file: !206, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !583, file: !206, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !583, file: !206, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !583, file: !206, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !583, file: !206, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !583, file: !206, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !583, file: !206, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !583, file: !206, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !583, file: !206, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !583, file: !206, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !583, file: !206, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !583, file: !206, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !583, file: !206, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !206, line: 3373, baseType: !616, size: 192)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !206, line: 402, size: 192, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !616, file: !206, line: 403, baseType: !583, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !616, file: !206, line: 404, baseType: !578, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !206, line: 405, baseType: !578, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !580, file: !206, line: 3374, baseType: !622, size: 320)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !206, line: 1384, size: 320, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !206, line: 1385, baseType: !616, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !622, file: !206, line: 1386, baseType: !626, size: 128, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !627, line: 58, baseType: !628)
!627 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 54, size: 128, elements: !629)
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !628, file: !627, line: 56, baseType: !631, size: 64)
!631 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !628, file: !627, line: 57, baseType: !633, size: 64, offset: 64)
!633 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !580, file: !206, line: 3375, baseType: !635, size: 256)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !206, line: 1397, size: 256, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !635, file: !206, line: 1398, baseType: !616, size: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !635, file: !206, line: 1399, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !206, line: 1392, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !580, file: !206, line: 3376, baseType: !642, size: 256)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !206, line: 1408, size: 256, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !642, file: !206, line: 1409, baseType: !616, size: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !642, file: !206, line: 1410, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !206, line: 1403, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !580, file: !206, line: 3377, baseType: !649, size: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !206, line: 1437, size: 256, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !649, file: !206, line: 1438, baseType: !616, size: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !649, file: !206, line: 1439, baseType: !578, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !580, file: !206, line: 3378, baseType: !654, size: 256)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !206, line: 1418, size: 256, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !654, file: !206, line: 1419, baseType: !616, size: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !654, file: !206, line: 1420, baseType: !500, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !654, file: !206, line: 1421, baseType: !659, size: 8, offset: 224)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 8, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 1)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !580, file: !206, line: 3379, baseType: !663, size: 320)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !206, line: 1428, size: 320, elements: !664)
!664 = !{!665, !666, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !663, file: !206, line: 1429, baseType: !616, size: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !663, file: !206, line: 1430, baseType: !578, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !663, file: !206, line: 1431, baseType: !578, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !580, file: !206, line: 3380, baseType: !669, size: 320)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !206, line: 1460, size: 320, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !669, file: !206, line: 1461, baseType: !616, size: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !669, file: !206, line: 1462, baseType: !673, size: 128, offset: 192)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !674, line: 31, size: 128, elements: !675)
!674 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!675 = !{!676, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !673, file: !674, line: 32, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !673, file: !674, line: 33, baseType: !7, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !673, file: !674, line: 34, baseType: !7, size: 32, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !580, file: !206, line: 3381, baseType: !682, size: 384)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !206, line: 2507, size: 384, elements: !683)
!683 = !{!684, !685, !686, !687, !688}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !682, file: !206, line: 2508, baseType: !616, size: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !682, file: !206, line: 2509, baseType: !524, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !206, line: 2510, baseType: !7, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !682, file: !206, line: 2511, baseType: !578, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !206, line: 2512, baseType: !578, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !580, file: !206, line: 3382, baseType: !690, size: 896)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !206, line: 2652, size: 896, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !690, file: !206, line: 2653, baseType: !682, size: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !206, line: 2654, baseType: !578, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !690, file: !206, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !690, file: !206, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !690, file: !206, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !690, file: !206, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !690, file: !206, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !690, file: !206, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !690, file: !206, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !690, file: !206, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !690, file: !206, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !690, file: !206, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !690, file: !206, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !690, file: !206, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !690, file: !206, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !690, file: !206, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !690, file: !206, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !690, file: !206, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !690, file: !206, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !690, file: !206, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !690, file: !206, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !690, file: !206, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !690, file: !206, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !690, file: !206, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !690, file: !206, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !690, file: !206, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !690, file: !206, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !690, file: !206, line: 2703, baseType: !7, size: 32, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !690, file: !206, line: 2705, baseType: !578, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !690, file: !206, line: 2706, baseType: !578, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !690, file: !206, line: 2707, baseType: !578, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !690, file: !206, line: 2708, baseType: !578, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !690, file: !206, line: 2711, baseType: !725, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !206, line: 2711, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !580, file: !206, line: 3383, baseType: !728, size: 960)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !206, line: 2756, size: 960, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !728, file: !206, line: 2757, baseType: !690, size: 896)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !728, file: !206, line: 2758, baseType: !573, size: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !580, file: !206, line: 3384, baseType: !733, size: 1472)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !206, line: 3114, size: 1472, elements: !734)
!734 = !{!735, !756, !757, !758, !759}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !733, file: !206, line: 3115, baseType: !736, size: 1216)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !206, line: 2984, size: 1216, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !206, line: 2985, baseType: !728, size: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !736, file: !206, line: 2986, baseType: !578, size: 64, offset: 960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !736, file: !206, line: 2987, baseType: !578, size: 64, offset: 1024)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !736, file: !206, line: 2988, baseType: !578, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !736, file: !206, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !736, file: !206, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !736, file: !206, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !736, file: !206, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !736, file: !206, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !736, file: !206, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !736, file: !206, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !736, file: !206, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !736, file: !206, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !736, file: !206, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !736, file: !206, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !736, file: !206, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !736, file: !206, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !736, file: !206, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !733, file: !206, line: 3117, baseType: !578, size: 64, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !733, file: !206, line: 3119, baseType: !578, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !733, file: !206, line: 3121, baseType: !578, size: 64, offset: 1344)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !733, file: !206, line: 3123, baseType: !578, size: 64, offset: 1408)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !580, file: !206, line: 3385, baseType: !761, size: 1088)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !206, line: 2874, size: 1088, elements: !762)
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !761, file: !206, line: 2875, baseType: !728, size: 960)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !761, file: !206, line: 2876, baseType: !573, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !761, file: !206, line: 2877, baseType: !766, size: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !768, line: 172, size: 128, elements: !769)
!768 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = !{!770, !771, !772, !773, !774, !775, !776}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !767, file: !768, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !767, file: !768, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !767, file: !768, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !767, file: !768, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !767, file: !768, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !767, file: !768, line: 195, baseType: !7, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !767, file: !768, line: 199, baseType: !578, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !580, file: !206, line: 3386, baseType: !736, size: 1216)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !580, file: !206, line: 3387, baseType: !779, size: 1280)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !206, line: 3093, size: 1280, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !206, line: 3094, baseType: !736, size: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !779, file: !206, line: 3095, baseType: !766, size: 64, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !580, file: !206, line: 3388, baseType: !784, size: 1216)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !206, line: 2824, size: 1216, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !206, line: 2825, baseType: !690, size: 896)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !784, file: !206, line: 2827, baseType: !578, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !784, file: !206, line: 2828, baseType: !578, size: 64, offset: 960)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !784, file: !206, line: 2829, baseType: !578, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !784, file: !206, line: 2830, baseType: !578, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !784, file: !206, line: 2831, baseType: !578, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !580, file: !206, line: 3389, baseType: !793, size: 1024)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !206, line: 2850, size: 1024, elements: !794)
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !793, file: !206, line: 2851, baseType: !728, size: 960)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !793, file: !206, line: 2852, baseType: !500, size: 32, offset: 960)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !793, file: !206, line: 2853, baseType: !500, size: 32, offset: 992)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !580, file: !206, line: 3390, baseType: !799, size: 1024)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !206, line: 2857, size: 1024, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !799, file: !206, line: 2858, baseType: !728, size: 960)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !799, file: !206, line: 2859, baseType: !766, size: 64, offset: 960)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !580, file: !206, line: 3391, baseType: !804, size: 960)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !206, line: 2862, size: 960, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !804, file: !206, line: 2863, baseType: !728, size: 960)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !580, file: !206, line: 3392, baseType: !808, size: 1472)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !206, line: 3304, size: 1472, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !206, line: 3305, baseType: !733, size: 1472)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !580, file: !206, line: 3393, baseType: !812, size: 1792)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !206, line: 3248, size: 1792, elements: !813)
!813 = !{!814, !815, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !812, file: !206, line: 3249, baseType: !733, size: 1472)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !812, file: !206, line: 3251, baseType: !816, size: 64, offset: 1472)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !818, line: 463, size: 1152, elements: !819)
!818 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!819 = !{!820, !823, !856, !857, !1055, !1058, !1059, !1060, !1061, !1062, !1063, !1087, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !817, file: !818, line: 464, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !818, line: 464, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !817, file: !818, line: 467, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !190, line: 374, size: 640, elements: !826)
!826 = !{!827, !829, !830, !843, !844, !845, !846, !847, !848, !852, !854, !855}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !825, file: !190, line: 377, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !547, line: 111, baseType: !530)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !825, file: !190, line: 378, baseType: !828, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !825, file: !190, line: 381, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !190, line: 282, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !190, line: 282, size: 128, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !833, file: !190, line: 282, baseType: !836, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !190, line: 281, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !190, line: 281, size: 128, elements: !838)
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !837, file: !190, line: 281, baseType: !7, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !837, file: !190, line: 281, baseType: !7, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !837, file: !190, line: 281, baseType: !842, size: 64, offset: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 64, elements: !660)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !825, file: !190, line: 384, baseType: !500, size: 32, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !825, file: !190, line: 387, baseType: !500, size: 32, offset: 224)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !825, file: !190, line: 390, baseType: !500, size: 32, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !825, file: !190, line: 394, baseType: !831, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !825, file: !190, line: 396, baseType: !189, size: 32, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !825, file: !190, line: 399, baseType: !849, size: 64, offset: 416)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 2)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !825, file: !190, line: 402, baseType: !853, size: 64, offset: 480)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !850)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !825, file: !190, line: 406, baseType: !500, size: 32, offset: 544)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !825, file: !190, line: 409, baseType: !500, size: 32, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !817, file: !818, line: 470, baseType: !558, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !817, file: !818, line: 473, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !768, line: 39, size: 1152, elements: !860)
!860 = !{!861, !913, !926, !939, !940, !1009, !1010, !1014, !1015, !1016, !1017, !1018}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !859, file: !768, line: 41, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !863, line: 144, baseType: !864)
!863 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !863, line: 100, size: 896, elements: !866)
!866 = !{!867, !875, !880, !885, !887, !890, !891, !892, !893, !894, !899, !901, !902, !907, !912}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !865, file: !863, line: 102, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !863, line: 52, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !863, line: 47, baseType: !7)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !865, file: !863, line: 105, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !863, line: 59, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!500, !873, !873}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !865, file: !863, line: 108, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !863, line: 63, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !504}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !865, file: !863, line: 111, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !865, file: !863, line: 114, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !889, line: 46, baseType: !631)
!889 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !865, file: !863, line: 117, baseType: !888, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !865, file: !863, line: 120, baseType: !888, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !865, file: !863, line: 124, baseType: !7, size: 32, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !865, file: !863, line: 128, baseType: !7, size: 32, offset: 480)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !865, file: !863, line: 131, baseType: !895, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !863, line: 75, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!504, !888, !888}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !865, file: !863, line: 132, baseType: !900, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !863, line: 78, baseType: !882)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !865, file: !863, line: 135, baseType: !504, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !865, file: !863, line: 136, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !863, line: 82, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!504, !504, !888, !888}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !865, file: !863, line: 137, baseType: !908, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !863, line: 83, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !504, !504}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !865, file: !863, line: 141, baseType: !7, size: 32, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !859, file: !768, line: 48, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !433, line: 35, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !433, line: 35, size: 128, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !916, file: !433, line: 35, baseType: !919, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !433, line: 33, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !433, line: 33, size: 128, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !920, file: !433, line: 33, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !920, file: !433, line: 33, baseType: !7, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !920, file: !433, line: 33, baseType: !925, size: 64, offset: 64)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 64, elements: !660)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !859, file: !768, line: 51, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !206, line: 183, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !206, line: 183, size: 128, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !206, line: 183, baseType: !932, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !206, line: 182, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !206, line: 182, size: 128, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !933, file: !206, line: 182, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !933, file: !206, line: 182, baseType: !7, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !933, file: !206, line: 182, baseType: !938, size: 64, offset: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !660)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !859, file: !768, line: 54, baseType: !578, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !859, file: !768, line: 57, baseType: !941, size: 128, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !942, line: 31, size: 128, elements: !943)
!942 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!943 = !{!944, !945, !946, !947, !948, !949, !950}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !941, file: !942, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !941, file: !942, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !941, file: !942, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !941, file: !942, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !941, file: !942, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !941, file: !942, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !941, file: !942, line: 56, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !547, line: 47, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !954, line: 75, size: 256, elements: !955)
!954 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!955 = !{!956, !968, !969, !970}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !953, file: !954, line: 76, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !954, line: 68, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !954, line: 63, size: 320, elements: !960)
!960 = !{!961, !963, !964, !965}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !954, line: 64, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !959, file: !954, line: 65, baseType: !962, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !959, file: !954, line: 66, baseType: !7, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !959, file: !954, line: 67, baseType: !966, size: 128, offset: 192)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 128, elements: !850)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !954, line: 29, baseType: !631)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !953, file: !954, line: 77, baseType: !957, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !953, file: !954, line: 78, baseType: !7, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !953, file: !954, line: 79, baseType: !971, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !954, line: 49, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !954, line: 45, size: 832, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !973, file: !954, line: 46, baseType: !962, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !973, file: !954, line: 47, baseType: !952, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !973, file: !954, line: 48, baseType: !978, size: 704, offset: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !979, line: 164, size: 704, elements: !980)
!979 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!980 = !{!981, !982, !992, !993, !994, !995, !996, !997, !1001, !1005, !1006, !1007, !1008}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !978, file: !979, line: 166, baseType: !633, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !978, file: !979, line: 167, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !979, line: 157, size: 192, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !984, file: !979, line: 159, baseType: !502, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !984, file: !979, line: 160, baseType: !983, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !984, file: !979, line: 161, baseType: !989, size: 32, offset: 128)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 32, elements: !990)
!990 = !{!991}
!991 = !DISubrange(count: 4)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !978, file: !979, line: 168, baseType: !502, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !978, file: !979, line: 169, baseType: !502, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !978, file: !979, line: 170, baseType: !502, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !978, file: !979, line: 171, baseType: !633, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !978, file: !979, line: 172, baseType: !500, size: 32, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !978, file: !979, line: 176, baseType: !998, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!983, !504, !633}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !978, file: !979, line: 177, baseType: !1002, size: 64, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !504, !983}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !978, file: !979, line: 178, baseType: !504, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !978, file: !979, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !978, file: !979, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !978, file: !979, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !859, file: !768, line: 60, baseType: !941, size: 128, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !859, file: !768, line: 64, baseType: !1011, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1013, line: 33, flags: DIFlagFwdDecl)
!1013 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !859, file: !768, line: 67, baseType: !578, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !859, file: !768, line: 73, baseType: !862, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !859, file: !768, line: 77, baseType: !951, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !859, file: !768, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !859, file: !768, line: 82, baseType: !1019, size: 320, offset: 832)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1020, line: 62, size: 320, elements: !1021)
!1020 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1021 = !{!1022, !1028, !1029, !1030, !1031, !1038}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1019, file: !1020, line: 63, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1020, line: 56, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !1020, line: 57, baseType: !1023, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1024, file: !1020, line: 58, baseType: !659, size: 8, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1019, file: !1020, line: 64, baseType: !7, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1019, file: !1020, line: 66, baseType: !7, size: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1019, file: !1020, line: 68, baseType: !499, size: 8, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1019, file: !1020, line: 70, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1020, line: 37, size: 128, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !1020, line: 39, baseType: !1032, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1033, file: !1020, line: 40, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1019, file: !1020, line: 71, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1020, line: 45, size: 320, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !1020, line: 47, baseType: !1039, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1040, file: !1020, line: 48, baseType: !1044, size: 256, offset: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !206, line: 1883, size: 256, elements: !1045)
!1045 = !{!1046, !1048, !1049, !1054}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1044, file: !206, line: 1884, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1044, file: !206, line: 1885, baseType: !1047, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1044, file: !206, line: 1891, baseType: !1050, size: 64, offset: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !206, line: 1891, size: 64, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1050, file: !206, line: 1891, baseType: !567, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1050, file: !206, line: 1891, baseType: !578, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1044, file: !206, line: 1892, baseType: !1037, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !817, file: !818, line: 476, baseType: !1056, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !818, line: 476, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !817, file: !818, line: 479, baseType: !862, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !817, file: !818, line: 484, baseType: !578, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !817, file: !818, line: 488, baseType: !578, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !817, file: !818, line: 493, baseType: !578, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !817, file: !818, line: 496, baseType: !578, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !817, file: !818, line: 501, baseType: !1064, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !201, line: 2355, size: 576, elements: !1066)
!1066 = !{!1067, !1070, !1071, !1072, !1073, !1075, !1076, !1081, !1082, !1083, !1084, !1085, !1086}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1065, file: !201, line: 2356, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !201, line: 2356, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1065, file: !201, line: 2357, baseType: !505, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1065, file: !201, line: 2358, baseType: !500, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1065, file: !201, line: 2359, baseType: !500, size: 32, offset: 160)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1065, file: !201, line: 2360, baseType: !1074, size: 128, offset: 192)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 128, elements: !990)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1065, file: !201, line: 2364, baseType: !500, size: 32, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1065, file: !201, line: 2367, baseType: !1077, size: 128, offset: 384)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !201, line: 2349, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1077, file: !201, line: 2351, baseType: !573, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1077, file: !201, line: 2352, baseType: !633, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1065, file: !201, line: 2371, baseType: !200, size: 32, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1065, file: !201, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1065, file: !201, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1065, file: !201, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1065, file: !201, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1065, file: !201, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !817, file: !818, line: 504, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !818, line: 504, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !817, file: !818, line: 507, baseType: !862, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !817, file: !818, line: 510, baseType: !500, size: 32, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !817, file: !818, line: 513, baseType: !500, size: 32, offset: 864)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !817, file: !818, line: 516, baseType: !524, size: 32, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !817, file: !818, line: 519, baseType: !524, size: 32, offset: 928)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !817, file: !818, line: 522, baseType: !7, size: 32, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !817, file: !818, line: 523, baseType: !7, size: 32, offset: 992)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !817, file: !818, line: 528, baseType: !505, size: 64, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !817, file: !818, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !817, file: !818, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !817, file: !818, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !817, file: !818, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !817, file: !818, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !817, file: !818, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !817, file: !818, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !817, file: !818, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !817, file: !818, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !817, file: !818, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !817, file: !818, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !817, file: !818, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !817, file: !818, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !817, file: !818, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !817, file: !818, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !817, file: !818, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !812, file: !206, line: 3254, baseType: !578, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !812, file: !206, line: 3257, baseType: !578, size: 64, offset: 1600)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !812, file: !206, line: 3258, baseType: !578, size: 64, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !812, file: !206, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !812, file: !206, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !812, file: !206, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !812, file: !206, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !812, file: !206, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !812, file: !206, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !812, file: !206, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !812, file: !206, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !812, file: !206, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !812, file: !206, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !812, file: !206, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !812, file: !206, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !812, file: !206, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !812, file: !206, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !812, file: !206, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !812, file: !206, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !812, file: !206, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !812, file: !206, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !206, line: 3394, baseType: !1136, size: 1344)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !206, line: 2279, size: 1344, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1136, file: !206, line: 2280, baseType: !616, size: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1136, file: !206, line: 2281, baseType: !578, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1136, file: !206, line: 2282, baseType: !578, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1136, file: !206, line: 2283, baseType: !578, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1136, file: !206, line: 2284, baseType: !578, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1136, file: !206, line: 2285, baseType: !7, size: 32, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1136, file: !206, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1136, file: !206, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1136, file: !206, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1136, file: !206, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1136, file: !206, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1136, file: !206, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1136, file: !206, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1136, file: !206, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1136, file: !206, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1136, file: !206, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1136, file: !206, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1136, file: !206, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1136, file: !206, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1136, file: !206, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1136, file: !206, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1136, file: !206, line: 2305, baseType: !7, size: 32, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1136, file: !206, line: 2306, baseType: !1161, size: 32, offset: 544)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1162, line: 31, baseType: !500)
!1162 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1136, file: !206, line: 2307, baseType: !578, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1136, file: !206, line: 2308, baseType: !578, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1136, file: !206, line: 2314, baseType: !1166, size: 64, offset: 704)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !206, line: 2309, size: 64, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1166, file: !206, line: 2310, baseType: !500, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1166, file: !206, line: 2311, baseType: !505, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1166, file: !206, line: 2312, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !206, line: 2277, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1136, file: !206, line: 2315, baseType: !578, size: 64, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1136, file: !206, line: 2316, baseType: !578, size: 64, offset: 832)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1136, file: !206, line: 2317, baseType: !578, size: 64, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1136, file: !206, line: 2318, baseType: !578, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1136, file: !206, line: 2319, baseType: !578, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1136, file: !206, line: 2320, baseType: !578, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1136, file: !206, line: 2321, baseType: !578, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1136, file: !206, line: 2322, baseType: !578, size: 64, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1136, file: !206, line: 2324, baseType: !1182, size: 64, offset: 1280)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !206, line: 2324, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !580, file: !206, line: 3395, baseType: !1185, size: 320)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !206, line: 1469, size: 320, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !206, line: 1470, baseType: !616, size: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1185, file: !206, line: 1471, baseType: !578, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1185, file: !206, line: 1472, baseType: !578, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !580, file: !206, line: 3396, baseType: !1191, size: 320)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !206, line: 1482, size: 320, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1191, file: !206, line: 1483, baseType: !616, size: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1191, file: !206, line: 1484, baseType: !500, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1191, file: !206, line: 1485, baseType: !938, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !580, file: !206, line: 3397, baseType: !1197, size: 384)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !206, line: 1829, size: 384, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !206, line: 1830, baseType: !616, size: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1197, file: !206, line: 1831, baseType: !524, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1197, file: !206, line: 1832, baseType: !578, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1197, file: !206, line: 1835, baseType: !938, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !580, file: !206, line: 3398, baseType: !1204, size: 704)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !206, line: 1898, size: 704, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1215}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1204, file: !206, line: 1899, baseType: !616, size: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1204, file: !206, line: 1902, baseType: !578, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1204, file: !206, line: 1905, baseType: !567, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1204, file: !206, line: 1908, baseType: !7, size: 32, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1204, file: !206, line: 1911, baseType: !1211, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !768, line: 117, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1212, file: !768, line: 120, baseType: !941, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1204, file: !206, line: 1914, baseType: !1044, size: 256, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !580, file: !206, line: 3399, baseType: !1217, size: 704)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !206, line: 2008, size: 704, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1217, file: !206, line: 2009, baseType: !616, size: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1217, file: !206, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1217, file: !206, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1217, file: !206, line: 2014, baseType: !524, size: 32, offset: 224)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1217, file: !206, line: 2016, baseType: !578, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1217, file: !206, line: 2017, baseType: !927, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1217, file: !206, line: 2019, baseType: !578, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1217, file: !206, line: 2020, baseType: !578, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1217, file: !206, line: 2021, baseType: !578, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1217, file: !206, line: 2022, baseType: !578, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1217, file: !206, line: 2023, baseType: !578, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !580, file: !206, line: 3400, baseType: !1231, size: 832)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !206, line: 2430, size: 832, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1231, file: !206, line: 2431, baseType: !616, size: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1231, file: !206, line: 2433, baseType: !578, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1231, file: !206, line: 2434, baseType: !578, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1231, file: !206, line: 2435, baseType: !578, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1231, file: !206, line: 2436, baseType: !578, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1231, file: !206, line: 2437, baseType: !927, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1231, file: !206, line: 2438, baseType: !578, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1231, file: !206, line: 2440, baseType: !578, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1231, file: !206, line: 2441, baseType: !578, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1231, file: !206, line: 2443, baseType: !1243, size: 128, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !206, line: 182, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !206, line: 182, size: 128, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1244, file: !206, line: 182, baseType: !932, size: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !580, file: !206, line: 3401, baseType: !1248, size: 320)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !206, line: 3327, size: 320, elements: !1249)
!1249 = !{!1250, !1251, !1258}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1248, file: !206, line: 3329, baseType: !616, size: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1248, file: !206, line: 3330, baseType: !1252, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !206, line: 3320, size: 192, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1253, file: !206, line: 3322, baseType: !1252, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !206, line: 3323, baseType: !1252, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1253, file: !206, line: 3324, baseType: !578, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1248, file: !206, line: 3331, baseType: !1252, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !580, file: !206, line: 3402, baseType: !1260, size: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !206, line: 1540, size: 256, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !206, line: 1541, baseType: !616, size: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1260, file: !206, line: 1542, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !206, line: 1538, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !206, line: 1538, size: 192, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1266, file: !206, line: 1538, baseType: !1269, size: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !206, line: 1537, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !206, line: 1537, size: 192, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1270, file: !206, line: 1537, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1270, file: !206, line: 1537, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1270, file: !206, line: 1537, baseType: !1275, size: 128, offset: 64)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1276, size: 128, elements: !660)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !206, line: 1535, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !206, line: 1532, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1277, file: !206, line: 1533, baseType: !578, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1277, file: !206, line: 1534, baseType: !578, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !580, file: !206, line: 3403, baseType: !1282, size: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !206, line: 1938, size: 512, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1293, !1294, !1295}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1282, file: !206, line: 1939, baseType: !616, size: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1282, file: !206, line: 1940, baseType: !524, size: 32, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1282, file: !206, line: 1941, baseType: !205, size: 32, offset: 224)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1282, file: !206, line: 1946, baseType: !1288, size: 32, offset: 256)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !206, line: 1942, size: 32, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1288, file: !206, line: 1943, baseType: !224, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1288, file: !206, line: 1944, baseType: !231, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1288, file: !206, line: 1945, baseType: !238, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1282, file: !206, line: 1950, baseType: !557, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1282, file: !206, line: 1951, baseType: !557, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1282, file: !206, line: 1953, baseType: !938, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !580, file: !206, line: 3404, baseType: !1297, size: 1664)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !206, line: 3337, size: 1664, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1297, file: !206, line: 3338, baseType: !616, size: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1297, file: !206, line: 3341, baseType: !1301, size: 1472, offset: 192)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1302, line: 410, size: 1472, elements: !1303)
!1302 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1301, file: !1302, line: 412, baseType: !500, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1301, file: !1302, line: 413, baseType: !500, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1301, file: !1302, line: 414, baseType: !500, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1301, file: !1302, line: 415, baseType: !500, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1301, file: !1302, line: 416, baseType: !500, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1301, file: !1302, line: 417, baseType: !500, size: 32, offset: 160)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1301, file: !1302, line: 418, baseType: !499, size: 8, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1301, file: !1302, line: 419, baseType: !499, size: 8, offset: 200)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1301, file: !1302, line: 420, baseType: !1313, size: 8, offset: 208)
!1313 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1301, file: !1302, line: 421, baseType: !1313, size: 8, offset: 216)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1301, file: !1302, line: 422, baseType: !1313, size: 8, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1301, file: !1302, line: 423, baseType: !1313, size: 8, offset: 232)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1301, file: !1302, line: 424, baseType: !1313, size: 8, offset: 240)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1301, file: !1302, line: 425, baseType: !1313, size: 8, offset: 248)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1301, file: !1302, line: 426, baseType: !1313, size: 8, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1301, file: !1302, line: 427, baseType: !1313, size: 8, offset: 264)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1301, file: !1302, line: 428, baseType: !1313, size: 8, offset: 272)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1301, file: !1302, line: 429, baseType: !1313, size: 8, offset: 280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1301, file: !1302, line: 430, baseType: !1313, size: 8, offset: 288)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1301, file: !1302, line: 431, baseType: !1313, size: 8, offset: 296)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1301, file: !1302, line: 432, baseType: !1313, size: 8, offset: 304)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1301, file: !1302, line: 433, baseType: !1313, size: 8, offset: 312)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1301, file: !1302, line: 434, baseType: !1313, size: 8, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1301, file: !1302, line: 435, baseType: !1313, size: 8, offset: 328)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1301, file: !1302, line: 436, baseType: !1313, size: 8, offset: 336)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1301, file: !1302, line: 437, baseType: !1313, size: 8, offset: 344)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1301, file: !1302, line: 438, baseType: !1313, size: 8, offset: 352)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1301, file: !1302, line: 439, baseType: !1313, size: 8, offset: 360)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1301, file: !1302, line: 440, baseType: !1313, size: 8, offset: 368)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1301, file: !1302, line: 441, baseType: !1313, size: 8, offset: 376)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1301, file: !1302, line: 442, baseType: !1313, size: 8, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1301, file: !1302, line: 443, baseType: !1313, size: 8, offset: 392)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1301, file: !1302, line: 444, baseType: !1313, size: 8, offset: 400)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1301, file: !1302, line: 445, baseType: !1313, size: 8, offset: 408)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1301, file: !1302, line: 446, baseType: !1313, size: 8, offset: 416)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1301, file: !1302, line: 447, baseType: !1313, size: 8, offset: 424)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1301, file: !1302, line: 448, baseType: !1313, size: 8, offset: 432)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1301, file: !1302, line: 449, baseType: !1313, size: 8, offset: 440)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1301, file: !1302, line: 450, baseType: !1313, size: 8, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1301, file: !1302, line: 451, baseType: !1313, size: 8, offset: 456)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1301, file: !1302, line: 452, baseType: !1313, size: 8, offset: 464)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1301, file: !1302, line: 453, baseType: !1313, size: 8, offset: 472)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1301, file: !1302, line: 454, baseType: !1313, size: 8, offset: 480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1301, file: !1302, line: 455, baseType: !1313, size: 8, offset: 488)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1301, file: !1302, line: 456, baseType: !1313, size: 8, offset: 496)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1301, file: !1302, line: 457, baseType: !1313, size: 8, offset: 504)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1301, file: !1302, line: 458, baseType: !1313, size: 8, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1301, file: !1302, line: 459, baseType: !1313, size: 8, offset: 520)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1301, file: !1302, line: 460, baseType: !1313, size: 8, offset: 528)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1301, file: !1302, line: 461, baseType: !1313, size: 8, offset: 536)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1301, file: !1302, line: 462, baseType: !1313, size: 8, offset: 544)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1301, file: !1302, line: 463, baseType: !1313, size: 8, offset: 552)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1301, file: !1302, line: 464, baseType: !1313, size: 8, offset: 560)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1301, file: !1302, line: 465, baseType: !1313, size: 8, offset: 568)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1301, file: !1302, line: 466, baseType: !1313, size: 8, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1301, file: !1302, line: 467, baseType: !1313, size: 8, offset: 584)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1301, file: !1302, line: 468, baseType: !1313, size: 8, offset: 592)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1301, file: !1302, line: 469, baseType: !1313, size: 8, offset: 600)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1301, file: !1302, line: 470, baseType: !1313, size: 8, offset: 608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1301, file: !1302, line: 471, baseType: !1313, size: 8, offset: 616)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1301, file: !1302, line: 472, baseType: !1313, size: 8, offset: 624)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1301, file: !1302, line: 473, baseType: !1313, size: 8, offset: 632)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1301, file: !1302, line: 474, baseType: !1313, size: 8, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1301, file: !1302, line: 475, baseType: !1313, size: 8, offset: 648)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1301, file: !1302, line: 476, baseType: !1313, size: 8, offset: 656)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1301, file: !1302, line: 477, baseType: !1313, size: 8, offset: 664)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1301, file: !1302, line: 478, baseType: !1313, size: 8, offset: 672)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1301, file: !1302, line: 479, baseType: !1313, size: 8, offset: 680)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1301, file: !1302, line: 480, baseType: !1313, size: 8, offset: 688)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1301, file: !1302, line: 481, baseType: !1313, size: 8, offset: 696)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1301, file: !1302, line: 482, baseType: !1313, size: 8, offset: 704)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1301, file: !1302, line: 483, baseType: !1313, size: 8, offset: 712)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1301, file: !1302, line: 484, baseType: !1313, size: 8, offset: 720)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1301, file: !1302, line: 485, baseType: !1313, size: 8, offset: 728)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1301, file: !1302, line: 486, baseType: !1313, size: 8, offset: 736)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1301, file: !1302, line: 487, baseType: !1313, size: 8, offset: 744)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1301, file: !1302, line: 488, baseType: !1313, size: 8, offset: 752)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1301, file: !1302, line: 489, baseType: !1313, size: 8, offset: 760)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1301, file: !1302, line: 490, baseType: !1313, size: 8, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1301, file: !1302, line: 491, baseType: !1313, size: 8, offset: 776)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1301, file: !1302, line: 492, baseType: !1313, size: 8, offset: 784)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1301, file: !1302, line: 493, baseType: !1313, size: 8, offset: 792)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1301, file: !1302, line: 494, baseType: !1313, size: 8, offset: 800)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1301, file: !1302, line: 495, baseType: !1313, size: 8, offset: 808)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1301, file: !1302, line: 496, baseType: !1313, size: 8, offset: 816)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1301, file: !1302, line: 497, baseType: !1313, size: 8, offset: 824)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1301, file: !1302, line: 498, baseType: !1313, size: 8, offset: 832)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1301, file: !1302, line: 499, baseType: !1313, size: 8, offset: 840)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1301, file: !1302, line: 500, baseType: !1313, size: 8, offset: 848)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1301, file: !1302, line: 501, baseType: !1313, size: 8, offset: 856)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1301, file: !1302, line: 502, baseType: !1313, size: 8, offset: 864)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1301, file: !1302, line: 503, baseType: !1313, size: 8, offset: 872)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1301, file: !1302, line: 504, baseType: !1313, size: 8, offset: 880)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1301, file: !1302, line: 505, baseType: !1313, size: 8, offset: 888)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1301, file: !1302, line: 506, baseType: !1313, size: 8, offset: 896)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1301, file: !1302, line: 507, baseType: !1313, size: 8, offset: 904)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1301, file: !1302, line: 508, baseType: !1313, size: 8, offset: 912)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1301, file: !1302, line: 509, baseType: !1313, size: 8, offset: 920)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1301, file: !1302, line: 510, baseType: !1313, size: 8, offset: 928)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1301, file: !1302, line: 511, baseType: !1313, size: 8, offset: 936)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1301, file: !1302, line: 512, baseType: !1313, size: 8, offset: 944)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1301, file: !1302, line: 513, baseType: !1313, size: 8, offset: 952)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1301, file: !1302, line: 514, baseType: !1313, size: 8, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1301, file: !1302, line: 515, baseType: !1313, size: 8, offset: 968)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1301, file: !1302, line: 516, baseType: !1313, size: 8, offset: 976)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1301, file: !1302, line: 517, baseType: !1313, size: 8, offset: 984)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1301, file: !1302, line: 518, baseType: !1313, size: 8, offset: 992)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1301, file: !1302, line: 519, baseType: !1313, size: 8, offset: 1000)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1301, file: !1302, line: 520, baseType: !1313, size: 8, offset: 1008)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1301, file: !1302, line: 521, baseType: !1313, size: 8, offset: 1016)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1301, file: !1302, line: 522, baseType: !1313, size: 8, offset: 1024)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1301, file: !1302, line: 523, baseType: !1313, size: 8, offset: 1032)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1301, file: !1302, line: 524, baseType: !1313, size: 8, offset: 1040)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1301, file: !1302, line: 525, baseType: !1313, size: 8, offset: 1048)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1301, file: !1302, line: 526, baseType: !1313, size: 8, offset: 1056)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1301, file: !1302, line: 527, baseType: !1313, size: 8, offset: 1064)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1301, file: !1302, line: 528, baseType: !1313, size: 8, offset: 1072)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1301, file: !1302, line: 529, baseType: !1313, size: 8, offset: 1080)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1301, file: !1302, line: 530, baseType: !1313, size: 8, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1301, file: !1302, line: 531, baseType: !1313, size: 8, offset: 1096)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1301, file: !1302, line: 532, baseType: !1313, size: 8, offset: 1104)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1301, file: !1302, line: 533, baseType: !1313, size: 8, offset: 1112)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1301, file: !1302, line: 534, baseType: !1313, size: 8, offset: 1120)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1301, file: !1302, line: 535, baseType: !1313, size: 8, offset: 1128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1301, file: !1302, line: 536, baseType: !1313, size: 8, offset: 1136)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1301, file: !1302, line: 537, baseType: !1313, size: 8, offset: 1144)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1301, file: !1302, line: 538, baseType: !1313, size: 8, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1301, file: !1302, line: 539, baseType: !1313, size: 8, offset: 1160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1301, file: !1302, line: 540, baseType: !1313, size: 8, offset: 1168)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1301, file: !1302, line: 541, baseType: !1313, size: 8, offset: 1176)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1301, file: !1302, line: 542, baseType: !1313, size: 8, offset: 1184)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1301, file: !1302, line: 543, baseType: !1313, size: 8, offset: 1192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1301, file: !1302, line: 544, baseType: !1313, size: 8, offset: 1200)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1301, file: !1302, line: 545, baseType: !1313, size: 8, offset: 1208)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1301, file: !1302, line: 546, baseType: !1313, size: 8, offset: 1216)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1301, file: !1302, line: 547, baseType: !1313, size: 8, offset: 1224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1301, file: !1302, line: 548, baseType: !1313, size: 8, offset: 1232)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1301, file: !1302, line: 549, baseType: !1313, size: 8, offset: 1240)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1301, file: !1302, line: 550, baseType: !1313, size: 8, offset: 1248)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1301, file: !1302, line: 551, baseType: !1313, size: 8, offset: 1256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1301, file: !1302, line: 552, baseType: !1313, size: 8, offset: 1264)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1301, file: !1302, line: 553, baseType: !1313, size: 8, offset: 1272)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1301, file: !1302, line: 554, baseType: !1313, size: 8, offset: 1280)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1301, file: !1302, line: 555, baseType: !1313, size: 8, offset: 1288)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1301, file: !1302, line: 556, baseType: !1313, size: 8, offset: 1296)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1301, file: !1302, line: 557, baseType: !1313, size: 8, offset: 1304)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1301, file: !1302, line: 558, baseType: !1313, size: 8, offset: 1312)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1301, file: !1302, line: 559, baseType: !1313, size: 8, offset: 1320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1301, file: !1302, line: 560, baseType: !1313, size: 8, offset: 1328)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1301, file: !1302, line: 561, baseType: !1313, size: 8, offset: 1336)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1301, file: !1302, line: 562, baseType: !1313, size: 8, offset: 1344)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1301, file: !1302, line: 563, baseType: !1313, size: 8, offset: 1352)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1301, file: !1302, line: 564, baseType: !1313, size: 8, offset: 1360)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1301, file: !1302, line: 565, baseType: !1313, size: 8, offset: 1368)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1301, file: !1302, line: 566, baseType: !1313, size: 8, offset: 1376)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1301, file: !1302, line: 567, baseType: !1313, size: 8, offset: 1384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1301, file: !1302, line: 568, baseType: !1313, size: 8, offset: 1392)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1301, file: !1302, line: 569, baseType: !1313, size: 8, offset: 1400)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1301, file: !1302, line: 570, baseType: !1313, size: 8, offset: 1408)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1301, file: !1302, line: 571, baseType: !1313, size: 8, offset: 1416)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1301, file: !1302, line: 572, baseType: !1313, size: 8, offset: 1424)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1301, file: !1302, line: 573, baseType: !1313, size: 8, offset: 1432)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1301, file: !1302, line: 574, baseType: !1313, size: 8, offset: 1440)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !580, file: !206, line: 3405, baseType: !1469, size: 384)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !206, line: 3352, size: 384, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1469, file: !206, line: 3353, baseType: !616, size: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1469, file: !206, line: 3356, baseType: !1473, size: 192, offset: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1302, line: 578, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1473, file: !1302, line: 580, baseType: !500, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1473, file: !1302, line: 581, baseType: !500, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1473, file: !1302, line: 582, baseType: !500, size: 32, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1473, file: !1302, line: 583, baseType: !500, size: 32, offset: 96)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1473, file: !1302, line: 584, baseType: !499, size: 8, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1473, file: !1302, line: 585, baseType: !499, size: 8, offset: 136)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1473, file: !1302, line: 586, baseType: !499, size: 8, offset: 144)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1473, file: !1302, line: 587, baseType: !499, size: 8, offset: 152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1473, file: !1302, line: 588, baseType: !499, size: 8, offset: 160)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1473, file: !1302, line: 589, baseType: !499, size: 8, offset: 168)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1473, file: !1302, line: 590, baseType: !499, size: 8, offset: 176)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !549, file: !190, line: 138, baseType: !524, size: 32, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !549, file: !190, line: 142, baseType: !7, size: 32, offset: 352)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !190, line: 144, baseType: !500, size: 32, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !549, file: !190, line: 145, baseType: !500, size: 32, offset: 416)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !549, file: !190, line: 146, baseType: !1491, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !190, line: 119, baseType: !633)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !531, file: !190, line: 220, baseType: !534, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !531, file: !190, line: 223, baseType: !504, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !531, file: !190, line: 226, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !190, line: 185, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !531, file: !190, line: 229, baseType: !1498, size: 128, offset: 256)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1499, size: 128, elements: !850)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !190, line: 229, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !531, file: !190, line: 232, baseType: !530, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !531, file: !190, line: 233, baseType: !530, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !531, file: !190, line: 238, baseType: !1504, size: 64, offset: 512)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !190, line: 235, size: 64, elements: !1505)
!1505 = !{!1506, !1512}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1504, file: !190, line: 236, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !190, line: 273, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1508, file: !190, line: 275, baseType: !557, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1508, file: !190, line: 278, baseType: !557, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1504, file: !190, line: 237, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !190, line: 259, size: 320, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1514, file: !190, line: 261, baseType: !573, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1514, file: !190, line: 262, baseType: !573, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1514, file: !190, line: 266, baseType: !573, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1514, file: !190, line: 267, baseType: !573, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1514, file: !190, line: 270, baseType: !500, size: 32, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !531, file: !190, line: 241, baseType: !1491, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !531, file: !190, line: 244, baseType: !500, size: 32, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !531, file: !190, line: 247, baseType: !500, size: 32, offset: 672)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !531, file: !190, line: 250, baseType: !500, size: 32, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !531, file: !190, line: 253, baseType: !500, size: 32, offset: 736)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !190, line: 256, baseType: !500, size: 32, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !511, file: !433, line: 327, baseType: !578, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !508, file: !433, line: 739, baseType: !1529, size: 448)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !433, line: 350, size: 448, elements: !1530)
!1530 = !{!1531, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1529, file: !433, line: 353, baseType: !1532, size: 384)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !433, line: 333, size: 384, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1532, file: !433, line: 336, baseType: !511, size: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1532, file: !433, line: 343, baseType: !1032, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1532, file: !433, line: 344, baseType: !1039, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1529, file: !433, line: 359, baseType: !938, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !508, file: !433, line: 740, baseType: !1539, size: 512)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !433, line: 365, size: 512, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1539, file: !433, line: 368, baseType: !1532, size: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1539, file: !433, line: 373, baseType: !578, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1539, file: !433, line: 374, baseType: !578, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !508, file: !433, line: 741, baseType: !1545, size: 576)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !433, line: 380, size: 576, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1545, file: !433, line: 383, baseType: !1539, size: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1545, file: !433, line: 389, baseType: !938, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !508, file: !433, line: 742, baseType: !1550, size: 320)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !433, line: 395, size: 320, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1550, file: !433, line: 397, baseType: !511, size: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1550, file: !433, line: 400, baseType: !557, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !508, file: !433, line: 743, baseType: !1555, size: 448)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !433, line: 406, size: 448, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1555, file: !433, line: 408, baseType: !511, size: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1555, file: !433, line: 412, baseType: !578, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1555, file: !433, line: 420, baseType: !578, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1555, file: !433, line: 423, baseType: !557, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !508, file: !433, line: 744, baseType: !1562, size: 384)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !433, line: 429, size: 384, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1562, file: !433, line: 431, baseType: !511, size: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1562, file: !433, line: 434, baseType: !578, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1562, file: !433, line: 437, baseType: !557, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !508, file: !433, line: 745, baseType: !1568, size: 384)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !433, line: 443, size: 384, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1568, file: !433, line: 445, baseType: !511, size: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1568, file: !433, line: 449, baseType: !578, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1568, file: !433, line: 453, baseType: !557, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !508, file: !433, line: 746, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !433, line: 459, size: 320, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1574, file: !433, line: 461, baseType: !511, size: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1574, file: !433, line: 464, baseType: !578, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !508, file: !433, line: 747, baseType: !1579, size: 768)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !433, line: 469, size: 768, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1579, file: !433, line: 471, baseType: !511, size: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1579, file: !433, line: 474, baseType: !7, size: 32, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1579, file: !433, line: 475, baseType: !7, size: 32, offset: 288)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1579, file: !433, line: 478, baseType: !578, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1579, file: !433, line: 481, baseType: !1586, size: 384, offset: 384)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1587, size: 384, elements: !660)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !206, line: 1917, size: 384, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1587, file: !206, line: 1920, baseType: !1044, size: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1587, file: !206, line: 1921, baseType: !578, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1587, file: !206, line: 1922, baseType: !524, size: 32, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !508, file: !433, line: 748, baseType: !1593, size: 320)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !433, line: 487, size: 320, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1593, file: !433, line: 490, baseType: !511, size: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1593, file: !433, line: 494, baseType: !500, size: 32, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !508, file: !433, line: 749, baseType: !1598, size: 384)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !433, line: 500, size: 384, elements: !1599)
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1598, file: !433, line: 502, baseType: !511, size: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1598, file: !433, line: 506, baseType: !557, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1598, file: !433, line: 510, baseType: !557, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !508, file: !433, line: 750, baseType: !1604, size: 320)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !433, line: 529, size: 320, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1604, file: !433, line: 531, baseType: !511, size: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1604, file: !433, line: 540, baseType: !557, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !508, file: !433, line: 751, baseType: !1609, size: 704)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !433, line: 546, size: 704, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1609, file: !433, line: 549, baseType: !1539, size: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1609, file: !433, line: 553, baseType: !505, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1609, file: !433, line: 557, baseType: !499, size: 8, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1609, file: !433, line: 558, baseType: !499, size: 8, offset: 584)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1609, file: !433, line: 559, baseType: !499, size: 8, offset: 592)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1609, file: !433, line: 560, baseType: !499, size: 8, offset: 600)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1609, file: !433, line: 566, baseType: !938, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !508, file: !433, line: 752, baseType: !1619, size: 384)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !433, line: 571, size: 384, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1619, file: !433, line: 573, baseType: !1550, size: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1619, file: !433, line: 577, baseType: !578, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !508, file: !433, line: 753, baseType: !1624, size: 576)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !433, line: 600, size: 576, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1638}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1624, file: !433, line: 602, baseType: !1550, size: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1624, file: !433, line: 605, baseType: !578, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1624, file: !433, line: 609, baseType: !888, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1624, file: !433, line: 612, baseType: !1630, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !433, line: 581, size: 320, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1631, file: !433, line: 583, baseType: !238, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1631, file: !433, line: 586, baseType: !578, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1631, file: !433, line: 589, baseType: !578, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1631, file: !433, line: 592, baseType: !578, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1631, file: !433, line: 595, baseType: !578, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1624, file: !433, line: 616, baseType: !557, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !508, file: !433, line: 754, baseType: !1640, size: 512)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !433, line: 622, size: 512, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1640, file: !433, line: 624, baseType: !1550, size: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1640, file: !433, line: 628, baseType: !578, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1640, file: !433, line: 632, baseType: !578, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1640, file: !433, line: 636, baseType: !578, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !508, file: !433, line: 755, baseType: !1647, size: 704)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !433, line: 642, size: 704, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1647, file: !433, line: 644, baseType: !1640, size: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1647, file: !433, line: 648, baseType: !578, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1647, file: !433, line: 652, baseType: !578, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1647, file: !433, line: 653, baseType: !578, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !508, file: !433, line: 756, baseType: !1654, size: 448)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !433, line: 663, size: 448, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1654, file: !433, line: 665, baseType: !1550, size: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1654, file: !433, line: 668, baseType: !578, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1654, file: !433, line: 673, baseType: !578, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !508, file: !433, line: 757, baseType: !1660, size: 384)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !433, line: 694, size: 384, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1660, file: !433, line: 696, baseType: !1550, size: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1660, file: !433, line: 699, baseType: !578, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !508, file: !433, line: 758, baseType: !1665, size: 384)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !433, line: 681, size: 384, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1665, file: !433, line: 683, baseType: !511, size: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1665, file: !433, line: 686, baseType: !578, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1665, file: !433, line: 689, baseType: !578, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !508, file: !433, line: 759, baseType: !1671, size: 384)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !433, line: 707, size: 384, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1671, file: !433, line: 709, baseType: !511, size: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1671, file: !433, line: 712, baseType: !578, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1671, file: !433, line: 712, baseType: !578, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !508, file: !433, line: 760, baseType: !1677, size: 320)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !433, line: 718, size: 320, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1677, file: !433, line: 720, baseType: !511, size: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1677, file: !433, line: 723, baseType: !578, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1684 = !{!0, !1685}
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "info", scope: !2, file: !3, line: 161, type: !1687, isLocal: true, isDefinition: true)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "switch_conv_info", file: !3, line: 101, size: 1024, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "index_expr", scope: !1687, file: !3, line: 105, baseType: !578, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !1687, file: !3, line: 109, baseType: !578, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "range_size", scope: !1687, file: !3, line: 113, baseType: !578, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "switch_bb", scope: !1687, file: !3, line: 116, baseType: !828, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "final_bb", scope: !1687, file: !3, line: 120, baseType: !828, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "phi_count", scope: !1687, file: !3, line: 123, baseType: !500, size: 32, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "default_values", scope: !1687, file: !3, line: 126, baseType: !1037, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "constructors", scope: !1687, file: !3, line: 129, baseType: !1683, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "target_inbound_names", scope: !1687, file: !3, line: 133, baseType: !1037, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "target_outbound_names", scope: !1687, file: !3, line: 137, baseType: !1037, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "default_prob", scope: !1687, file: !3, line: 140, baseType: !500, size: 32, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "default_count", scope: !1687, file: !3, line: 143, baseType: !1491, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "other_count", scope: !1687, file: !3, line: 146, baseType: !1491, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arr_ref_first", scope: !1687, file: !3, line: 150, baseType: !567, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "arr_ref_last", scope: !1687, file: !3, line: 153, baseType: !567, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1687, file: !3, line: 157, baseType: !505, size: 64, offset: 960)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1705, file: !6, line: 158, baseType: !1708, size: 640)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1716, !1720, !1722, !1723, !1724, !1726, !1727, !1728, !1729, !1730}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1708, file: !6, line: 117, baseType: !5, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1708, file: !6, line: 121, baseType: !505, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1708, file: !6, line: 125, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!499}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1708, file: !6, line: 130, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!7}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1708, file: !6, line: 133, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1708, file: !6, line: 136, baseType: !1721, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1708, file: !6, line: 139, baseType: !500, size: 32, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1708, file: !6, line: 143, baseType: !1725, size: 32, offset: 416)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1708, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1708, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1708, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1708, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1708, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1731 = !{i32 2, !"Dwarf Version", i32 4}
!1732 = !{i32 2, !"Debug Info Version", i32 3}
!1733 = !{i32 1, !"wchar_size", i32 4}
!1734 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1735 = distinct !DISubprogram(name: "vprintf", scope: !1736, file: !1736, line: 39, type: !1737, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1747)
!1736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!500, !1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !505)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1741, file: !3, baseType: !7, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1741, file: !3, baseType: !7, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1741, file: !3, baseType: !504, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1741, file: !3, baseType: !504, size: 64, offset: 128)
!1747 = !{!1748, !1749}
!1748 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1735, file: !1736, line: 39, type: !1739)
!1749 = !DILocalVariable(name: "__arg", arg: 2, scope: !1735, file: !1736, line: 39, type: !1740)
!1750 = !DILocation(line: 0, scope: !1735)
!1751 = !DILocation(line: 41, column: 20, scope: !1735)
!1752 = !DILocation(line: 41, column: 10, scope: !1735)
!1753 = !DILocation(line: 41, column: 3, scope: !1735)
!1754 = distinct !DISubprogram(name: "getchar", scope: !1736, file: !1736, line: 47, type: !1755, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!500}
!1757 = !{}
!1758 = !DILocation(line: 49, column: 16, scope: !1754)
!1759 = !DILocation(line: 49, column: 10, scope: !1754)
!1760 = !DILocation(line: 49, column: 3, scope: !1754)
!1761 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1736, file: !1736, line: 56, type: !1762, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!500, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1766, line: 7, baseType: !1767)
!1766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1768, line: 49, size: 1728, elements: !1769)
!1768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1785, !1787, !1788, !1789, !1792, !1794, !1795, !1796, !1799, !1801, !1804, !1807, !1808, !1809, !1810, !1811}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1767, file: !1768, line: 51, baseType: !500, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1767, file: !1768, line: 54, baseType: !502, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1767, file: !1768, line: 55, baseType: !502, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1767, file: !1768, line: 56, baseType: !502, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1767, file: !1768, line: 57, baseType: !502, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1767, file: !1768, line: 58, baseType: !502, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1767, file: !1768, line: 59, baseType: !502, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1767, file: !1768, line: 60, baseType: !502, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1767, file: !1768, line: 61, baseType: !502, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1767, file: !1768, line: 64, baseType: !502, size: 64, offset: 576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1767, file: !1768, line: 65, baseType: !502, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1767, file: !1768, line: 66, baseType: !502, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1767, file: !1768, line: 68, baseType: !1783, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1768, line: 36, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1767, file: !1768, line: 70, baseType: !1786, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1767, file: !1768, line: 72, baseType: !500, size: 32, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1767, file: !1768, line: 73, baseType: !500, size: 32, offset: 928)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1767, file: !1768, line: 74, baseType: !1790, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1791, line: 152, baseType: !633)
!1791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1767, file: !1768, line: 77, baseType: !1793, size: 16, offset: 1024)
!1793 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1767, file: !1768, line: 78, baseType: !1313, size: 8, offset: 1040)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1767, file: !1768, line: 79, baseType: !659, size: 8, offset: 1048)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1767, file: !1768, line: 81, baseType: !1797, size: 64, offset: 1088)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1768, line: 43, baseType: null)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1767, file: !1768, line: 89, baseType: !1800, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1791, line: 153, baseType: !633)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1767, file: !1768, line: 91, baseType: !1802, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1768, line: 37, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1767, file: !1768, line: 92, baseType: !1805, size: 64, offset: 1280)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1768, line: 38, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1767, file: !1768, line: 93, baseType: !1786, size: 64, offset: 1344)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1767, file: !1768, line: 94, baseType: !504, size: 64, offset: 1408)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1767, file: !1768, line: 95, baseType: !888, size: 64, offset: 1472)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1767, file: !1768, line: 96, baseType: !500, size: 32, offset: 1536)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1767, file: !1768, line: 98, baseType: !1812, size: 160, offset: 1568)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 160, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 20)
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "__fp", arg: 1, scope: !1761, file: !1736, line: 56, type: !1764)
!1817 = !DILocation(line: 0, scope: !1761)
!1818 = !DILocation(line: 58, column: 10, scope: !1761)
!1819 = !DILocation(line: 58, column: 3, scope: !1761)
!1820 = distinct !DISubprogram(name: "getc_unlocked", scope: !1736, file: !1736, line: 66, type: !1762, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "__fp", arg: 1, scope: !1820, file: !1736, line: 66, type: !1764)
!1823 = !DILocation(line: 0, scope: !1820)
!1824 = !DILocation(line: 68, column: 10, scope: !1820)
!1825 = !DILocation(line: 68, column: 3, scope: !1820)
!1826 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1736, file: !1736, line: 73, type: !1755, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1827 = !DILocation(line: 75, column: 10, scope: !1826)
!1828 = !DILocation(line: 75, column: 3, scope: !1826)
!1829 = distinct !DISubprogram(name: "putchar", scope: !1736, file: !1736, line: 82, type: !1830, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!500, !500}
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "__c", arg: 1, scope: !1829, file: !1736, line: 82, type: !500)
!1834 = !DILocation(line: 0, scope: !1829)
!1835 = !DILocation(line: 84, column: 21, scope: !1829)
!1836 = !DILocation(line: 84, column: 10, scope: !1829)
!1837 = !DILocation(line: 84, column: 3, scope: !1829)
!1838 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1736, file: !1736, line: 91, type: !1839, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!500, !500, !1764}
!1841 = !{!1842, !1843}
!1842 = !DILocalVariable(name: "__c", arg: 1, scope: !1838, file: !1736, line: 91, type: !500)
!1843 = !DILocalVariable(name: "__stream", arg: 2, scope: !1838, file: !1736, line: 91, type: !1764)
!1844 = !DILocation(line: 0, scope: !1838)
!1845 = !DILocation(line: 93, column: 10, scope: !1838)
!1846 = !DILocation(line: 93, column: 3, scope: !1838)
!1847 = distinct !DISubprogram(name: "putc_unlocked", scope: !1736, file: !1736, line: 101, type: !1839, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1848 = !{!1849, !1850}
!1849 = !DILocalVariable(name: "__c", arg: 1, scope: !1847, file: !1736, line: 101, type: !500)
!1850 = !DILocalVariable(name: "__stream", arg: 2, scope: !1847, file: !1736, line: 101, type: !1764)
!1851 = !DILocation(line: 0, scope: !1847)
!1852 = !DILocation(line: 103, column: 10, scope: !1847)
!1853 = !DILocation(line: 103, column: 3, scope: !1847)
!1854 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1736, file: !1736, line: 108, type: !1830, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "__c", arg: 1, scope: !1854, file: !1736, line: 108, type: !500)
!1857 = !DILocation(line: 0, scope: !1854)
!1858 = !DILocation(line: 110, column: 10, scope: !1854)
!1859 = !DILocation(line: 110, column: 3, scope: !1854)
!1860 = distinct !DISubprogram(name: "getline", scope: !1736, file: !1736, line: 118, type: !1861, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !501, !1864, !1764}
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1791, line: 193, baseType: !633)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!1865 = !{!1866, !1867, !1868}
!1866 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1860, file: !1736, line: 118, type: !501)
!1867 = !DILocalVariable(name: "__n", arg: 2, scope: !1860, file: !1736, line: 118, type: !1864)
!1868 = !DILocalVariable(name: "__stream", arg: 3, scope: !1860, file: !1736, line: 118, type: !1764)
!1869 = !DILocation(line: 0, scope: !1860)
!1870 = !DILocation(line: 120, column: 10, scope: !1860)
!1871 = !DILocation(line: 120, column: 3, scope: !1860)
!1872 = distinct !DISubprogram(name: "feof_unlocked", scope: !1736, file: !1736, line: 128, type: !1762, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "__stream", arg: 1, scope: !1872, file: !1736, line: 128, type: !1764)
!1875 = !DILocation(line: 0, scope: !1872)
!1876 = !DILocation(line: 130, column: 10, scope: !1872)
!1877 = !DILocation(line: 130, column: 3, scope: !1872)
!1878 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1736, file: !1736, line: 135, type: !1762, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "__stream", arg: 1, scope: !1878, file: !1736, line: 135, type: !1764)
!1881 = !DILocation(line: 0, scope: !1878)
!1882 = !DILocation(line: 137, column: 10, scope: !1878)
!1883 = !DILocation(line: 137, column: 3, scope: !1878)
!1884 = distinct !DISubprogram(name: "tolower", scope: !1885, file: !1885, line: 207, type: !1830, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1885 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1886 = !{!1887}
!1887 = !DILocalVariable(name: "__c", arg: 1, scope: !1884, file: !1885, line: 207, type: !500)
!1888 = !DILocation(line: 0, scope: !1884)
!1889 = !DILocation(line: 209, column: 22, scope: !1884)
!1890 = !DILocation(line: 209, column: 39, scope: !1884)
!1891 = !DILocation(line: 209, column: 38, scope: !1884)
!1892 = !DILocation(line: 209, column: 37, scope: !1884)
!1893 = !DILocation(line: 209, column: 10, scope: !1884)
!1894 = !DILocation(line: 209, column: 3, scope: !1884)
!1895 = distinct !DISubprogram(name: "toupper", scope: !1885, file: !1885, line: 213, type: !1830, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "__c", arg: 1, scope: !1895, file: !1885, line: 213, type: !500)
!1898 = !DILocation(line: 0, scope: !1895)
!1899 = !DILocation(line: 215, column: 22, scope: !1895)
!1900 = !DILocation(line: 215, column: 39, scope: !1895)
!1901 = !DILocation(line: 215, column: 38, scope: !1895)
!1902 = !DILocation(line: 215, column: 37, scope: !1895)
!1903 = !DILocation(line: 215, column: 10, scope: !1895)
!1904 = !DILocation(line: 215, column: 3, scope: !1895)
!1905 = distinct !DISubprogram(name: "atoi", scope: !1906, file: !1906, line: 361, type: !1907, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1906 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!500, !505}
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1905, file: !1906, line: 361, type: !505)
!1911 = !DILocation(line: 0, scope: !1905)
!1912 = !DILocation(line: 363, column: 16, scope: !1905)
!1913 = !DILocation(line: 363, column: 10, scope: !1905)
!1914 = !DILocation(line: 363, column: 3, scope: !1905)
!1915 = distinct !DISubprogram(name: "atol", scope: !1906, file: !1906, line: 366, type: !1916, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!633, !505}
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1915, file: !1906, line: 366, type: !505)
!1920 = !DILocation(line: 0, scope: !1915)
!1921 = !DILocation(line: 368, column: 10, scope: !1915)
!1922 = !DILocation(line: 368, column: 3, scope: !1915)
!1923 = distinct !DISubprogram(name: "atoll", scope: !1906, file: !1906, line: 373, type: !1924, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !505}
!1926 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1923, file: !1906, line: 373, type: !505)
!1929 = !DILocation(line: 0, scope: !1923)
!1930 = !DILocation(line: 375, column: 10, scope: !1923)
!1931 = !DILocation(line: 375, column: 3, scope: !1923)
!1932 = distinct !DISubprogram(name: "bsearch", scope: !1933, file: !1933, line: 20, type: !1934, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1933 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!504, !873, !873, !888, !888, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1906, line: 808, baseType: !877)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1938 = !DILocalVariable(name: "__key", arg: 1, scope: !1932, file: !1933, line: 20, type: !873)
!1939 = !DILocalVariable(name: "__base", arg: 2, scope: !1932, file: !1933, line: 20, type: !873)
!1940 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1932, file: !1933, line: 20, type: !888)
!1941 = !DILocalVariable(name: "__size", arg: 4, scope: !1932, file: !1933, line: 20, type: !888)
!1942 = !DILocalVariable(name: "__compar", arg: 5, scope: !1932, file: !1933, line: 21, type: !1936)
!1943 = !DILocalVariable(name: "__l", scope: !1932, file: !1933, line: 23, type: !888)
!1944 = !DILocalVariable(name: "__u", scope: !1932, file: !1933, line: 23, type: !888)
!1945 = !DILocalVariable(name: "__idx", scope: !1932, file: !1933, line: 23, type: !888)
!1946 = !DILocalVariable(name: "__p", scope: !1932, file: !1933, line: 24, type: !873)
!1947 = !DILocalVariable(name: "__comparison", scope: !1932, file: !1933, line: 25, type: !500)
!1948 = !DILocation(line: 0, scope: !1932)
!1949 = !DILocation(line: 29, column: 3, scope: !1932)
!1950 = !DILocation(line: 27, column: 7, scope: !1932)
!1951 = !DILocation(line: 29, column: 14, scope: !1932)
!1952 = !DILocation(line: 31, column: 20, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1932, file: !1933, line: 30, column: 5)
!1954 = !DILocation(line: 31, column: 27, scope: !1953)
!1955 = !DILocation(line: 32, column: 56, scope: !1953)
!1956 = !DILocation(line: 32, column: 47, scope: !1953)
!1957 = !DILocation(line: 33, column: 22, scope: !1953)
!1958 = !DILocation(line: 34, column: 24, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !1933, line: 34, column: 11)
!1960 = !DILocation(line: 34, column: 11, scope: !1953)
!1961 = !DILocation(line: 36, column: 29, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !1933, line: 36, column: 16)
!1963 = !DILocation(line: 36, column: 16, scope: !1959)
!1964 = !DILocation(line: 37, column: 14, scope: !1962)
!1965 = distinct !{!1965, !1949, !1966}
!1966 = !DILocation(line: 40, column: 5, scope: !1932)
!1967 = !DILocation(line: 43, column: 1, scope: !1932)
!1968 = distinct !DISubprogram(name: "atof", scope: !1969, file: !1969, line: 25, type: !1970, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1969 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1972, !505}
!1972 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1968, file: !1969, line: 25, type: !505)
!1975 = !DILocation(line: 0, scope: !1968)
!1976 = !DILocation(line: 27, column: 10, scope: !1968)
!1977 = !DILocation(line: 27, column: 3, scope: !1968)
!1978 = distinct !DISubprogram(name: "strtoimax", scope: !1979, file: !1979, line: 324, type: !1980, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1979 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1982, !1739, !1985, !500}
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1983, line: 101, baseType: !1984)
!1983 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1791, line: 72, baseType: !633)
!1985 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !501)
!1986 = !{!1987, !1988, !1989}
!1987 = !DILocalVariable(name: "nptr", arg: 1, scope: !1978, file: !1979, line: 324, type: !1739)
!1988 = !DILocalVariable(name: "endptr", arg: 2, scope: !1978, file: !1979, line: 324, type: !1985)
!1989 = !DILocalVariable(name: "base", arg: 3, scope: !1978, file: !1979, line: 324, type: !500)
!1990 = !DILocation(line: 0, scope: !1978)
!1991 = !DILocation(line: 327, column: 10, scope: !1978)
!1992 = !DILocation(line: 327, column: 3, scope: !1978)
!1993 = distinct !DISubprogram(name: "strtoumax", scope: !1979, file: !1979, line: 336, type: !1994, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !1739, !1985, !500}
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1983, line: 102, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1791, line: 73, baseType: !631)
!1998 = !{!1999, !2000, !2001}
!1999 = !DILocalVariable(name: "nptr", arg: 1, scope: !1993, file: !1979, line: 336, type: !1739)
!2000 = !DILocalVariable(name: "endptr", arg: 2, scope: !1993, file: !1979, line: 336, type: !1985)
!2001 = !DILocalVariable(name: "base", arg: 3, scope: !1993, file: !1979, line: 336, type: !500)
!2002 = !DILocation(line: 0, scope: !1993)
!2003 = !DILocation(line: 339, column: 10, scope: !1993)
!2004 = !DILocation(line: 339, column: 3, scope: !1993)
!2005 = distinct !DISubprogram(name: "wcstoimax", scope: !1979, file: !1979, line: 348, type: !2006, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1982, !2008, !2012, !500}
!2008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1979, line: 34, baseType: !500)
!2012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "nptr", arg: 1, scope: !2005, file: !1979, line: 348, type: !2008)
!2017 = !DILocalVariable(name: "endptr", arg: 2, scope: !2005, file: !1979, line: 348, type: !2012)
!2018 = !DILocalVariable(name: "base", arg: 3, scope: !2005, file: !1979, line: 348, type: !500)
!2019 = !DILocation(line: 0, scope: !2005)
!2020 = !DILocation(line: 351, column: 10, scope: !2005)
!2021 = !DILocation(line: 351, column: 3, scope: !2005)
!2022 = distinct !DISubprogram(name: "wcstoumax", scope: !1979, file: !1979, line: 362, type: !2023, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1996, !2008, !2012, !500}
!2025 = !{!2026, !2027, !2028}
!2026 = !DILocalVariable(name: "nptr", arg: 1, scope: !2022, file: !1979, line: 362, type: !2008)
!2027 = !DILocalVariable(name: "endptr", arg: 2, scope: !2022, file: !1979, line: 362, type: !2012)
!2028 = !DILocalVariable(name: "base", arg: 3, scope: !2022, file: !1979, line: 362, type: !500)
!2029 = !DILocation(line: 0, scope: !2022)
!2030 = !DILocation(line: 365, column: 10, scope: !2022)
!2031 = !DILocation(line: 365, column: 3, scope: !2022)
!2032 = distinct !DISubprogram(name: "stat", scope: !2033, file: !2033, line: 453, type: !2034, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!500, !505, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2038, line: 46, size: 1152, elements: !2039)
!2038 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2039 = !{!2040, !2042, !2044, !2046, !2048, !2050, !2052, !2053, !2054, !2055, !2057, !2059, !2067, !2068, !2069}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2037, file: !2038, line: 48, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1791, line: 145, baseType: !631)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2037, file: !2038, line: 53, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1791, line: 148, baseType: !631)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2037, file: !2038, line: 61, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1791, line: 151, baseType: !631)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2037, file: !2038, line: 62, baseType: !2047, size: 32, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1791, line: 150, baseType: !7)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2037, file: !2038, line: 64, baseType: !2049, size: 32, offset: 224)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1791, line: 146, baseType: !7)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2037, file: !2038, line: 65, baseType: !2051, size: 32, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1791, line: 147, baseType: !7)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2037, file: !2038, line: 67, baseType: !500, size: 32, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2037, file: !2038, line: 69, baseType: !2041, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2037, file: !2038, line: 74, baseType: !1790, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2037, file: !2038, line: 78, baseType: !2056, size: 64, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1791, line: 174, baseType: !633)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2037, file: !2038, line: 80, baseType: !2058, size: 64, offset: 512)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1791, line: 179, baseType: !633)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2037, file: !2038, line: 91, baseType: !2060, size: 128, offset: 576)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2061, line: 10, size: 128, elements: !2062)
!2061 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2062 = !{!2063, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2060, file: !2061, line: 12, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1791, line: 160, baseType: !633)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2060, file: !2061, line: 16, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1791, line: 196, baseType: !633)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2037, file: !2038, line: 92, baseType: !2060, size: 128, offset: 704)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2037, file: !2038, line: 93, baseType: !2060, size: 128, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2037, file: !2038, line: 106, baseType: !2070, size: 192, offset: 960)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2066, size: 192, elements: !2071)
!2071 = !{!2072}
!2072 = !DISubrange(count: 3)
!2073 = !{!2074, !2075}
!2074 = !DILocalVariable(name: "__path", arg: 1, scope: !2032, file: !2033, line: 453, type: !505)
!2075 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2032, file: !2033, line: 453, type: !2036)
!2076 = !DILocation(line: 0, scope: !2032)
!2077 = !DILocation(line: 455, column: 10, scope: !2032)
!2078 = !DILocation(line: 455, column: 3, scope: !2032)
!2079 = distinct !DISubprogram(name: "lstat", scope: !2033, file: !2033, line: 460, type: !2034, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2080 = !{!2081, !2082}
!2081 = !DILocalVariable(name: "__path", arg: 1, scope: !2079, file: !2033, line: 460, type: !505)
!2082 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2079, file: !2033, line: 460, type: !2036)
!2083 = !DILocation(line: 0, scope: !2079)
!2084 = !DILocation(line: 462, column: 10, scope: !2079)
!2085 = !DILocation(line: 462, column: 3, scope: !2079)
!2086 = distinct !DISubprogram(name: "fstat", scope: !2033, file: !2033, line: 467, type: !2087, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!500, !500, !2036}
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "__fd", arg: 1, scope: !2086, file: !2033, line: 467, type: !500)
!2091 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2086, file: !2033, line: 467, type: !2036)
!2092 = !DILocation(line: 0, scope: !2086)
!2093 = !DILocation(line: 469, column: 10, scope: !2086)
!2094 = !DILocation(line: 469, column: 3, scope: !2086)
!2095 = distinct !DISubprogram(name: "fstatat", scope: !2033, file: !2033, line: 474, type: !2096, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!500, !500, !505, !2036, !500}
!2098 = !{!2099, !2100, !2101, !2102}
!2099 = !DILocalVariable(name: "__fd", arg: 1, scope: !2095, file: !2033, line: 474, type: !500)
!2100 = !DILocalVariable(name: "__filename", arg: 2, scope: !2095, file: !2033, line: 474, type: !505)
!2101 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2095, file: !2033, line: 474, type: !2036)
!2102 = !DILocalVariable(name: "__flag", arg: 4, scope: !2095, file: !2033, line: 474, type: !500)
!2103 = !DILocation(line: 0, scope: !2095)
!2104 = !DILocation(line: 477, column: 10, scope: !2095)
!2105 = !DILocation(line: 477, column: 3, scope: !2095)
!2106 = distinct !DISubprogram(name: "mknod", scope: !2033, file: !2033, line: 483, type: !2107, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!500, !505, !2047, !2041}
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "__path", arg: 1, scope: !2106, file: !2033, line: 483, type: !505)
!2111 = !DILocalVariable(name: "__mode", arg: 2, scope: !2106, file: !2033, line: 483, type: !2047)
!2112 = !DILocalVariable(name: "__dev", arg: 3, scope: !2106, file: !2033, line: 483, type: !2041)
!2113 = !DILocation(line: 0, scope: !2106)
!2114 = !DILocation(line: 485, column: 10, scope: !2106)
!2115 = !DILocation(line: 485, column: 3, scope: !2106)
!2116 = distinct !DISubprogram(name: "mknodat", scope: !2033, file: !2033, line: 491, type: !2117, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!500, !500, !505, !2047, !2041}
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DILocalVariable(name: "__fd", arg: 1, scope: !2116, file: !2033, line: 491, type: !500)
!2121 = !DILocalVariable(name: "__path", arg: 2, scope: !2116, file: !2033, line: 491, type: !505)
!2122 = !DILocalVariable(name: "__mode", arg: 3, scope: !2116, file: !2033, line: 491, type: !2047)
!2123 = !DILocalVariable(name: "__dev", arg: 4, scope: !2116, file: !2033, line: 491, type: !2041)
!2124 = !DILocation(line: 0, scope: !2116)
!2125 = !DILocation(line: 494, column: 10, scope: !2116)
!2126 = !DILocation(line: 494, column: 3, scope: !2116)
!2127 = distinct !DISubprogram(name: "stat64", scope: !2033, file: !2033, line: 502, type: !2128, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!500, !505, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2038, line: 119, size: 1152, elements: !2132)
!2132 = !{!2133, !2134, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2146, !2147, !2148, !2149}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2131, file: !2038, line: 121, baseType: !2041, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2131, file: !2038, line: 123, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1791, line: 149, baseType: !631)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2131, file: !2038, line: 124, baseType: !2045, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2131, file: !2038, line: 125, baseType: !2047, size: 32, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2131, file: !2038, line: 132, baseType: !2049, size: 32, offset: 224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2131, file: !2038, line: 133, baseType: !2051, size: 32, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2131, file: !2038, line: 135, baseType: !500, size: 32, offset: 288)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2131, file: !2038, line: 136, baseType: !2041, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2131, file: !2038, line: 137, baseType: !1790, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2131, file: !2038, line: 143, baseType: !2056, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2131, file: !2038, line: 144, baseType: !2145, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1791, line: 180, baseType: !633)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2131, file: !2038, line: 152, baseType: !2060, size: 128, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2131, file: !2038, line: 153, baseType: !2060, size: 128, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2131, file: !2038, line: 154, baseType: !2060, size: 128, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2131, file: !2038, line: 164, baseType: !2070, size: 192, offset: 960)
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "__path", arg: 1, scope: !2127, file: !2033, line: 502, type: !505)
!2152 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2127, file: !2033, line: 502, type: !2130)
!2153 = !DILocation(line: 0, scope: !2127)
!2154 = !DILocation(line: 504, column: 10, scope: !2127)
!2155 = !DILocation(line: 504, column: 3, scope: !2127)
!2156 = distinct !DISubprogram(name: "lstat64", scope: !2033, file: !2033, line: 509, type: !2128, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2157 = !{!2158, !2159}
!2158 = !DILocalVariable(name: "__path", arg: 1, scope: !2156, file: !2033, line: 509, type: !505)
!2159 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2156, file: !2033, line: 509, type: !2130)
!2160 = !DILocation(line: 0, scope: !2156)
!2161 = !DILocation(line: 511, column: 10, scope: !2156)
!2162 = !DILocation(line: 511, column: 3, scope: !2156)
!2163 = distinct !DISubprogram(name: "fstat64", scope: !2033, file: !2033, line: 516, type: !2164, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!500, !500, !2130}
!2166 = !{!2167, !2168}
!2167 = !DILocalVariable(name: "__fd", arg: 1, scope: !2163, file: !2033, line: 516, type: !500)
!2168 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2163, file: !2033, line: 516, type: !2130)
!2169 = !DILocation(line: 0, scope: !2163)
!2170 = !DILocation(line: 518, column: 10, scope: !2163)
!2171 = !DILocation(line: 518, column: 3, scope: !2163)
!2172 = distinct !DISubprogram(name: "fstatat64", scope: !2033, file: !2033, line: 523, type: !2173, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!500, !500, !505, !2130, !500}
!2175 = !{!2176, !2177, !2178, !2179}
!2176 = !DILocalVariable(name: "__fd", arg: 1, scope: !2172, file: !2033, line: 523, type: !500)
!2177 = !DILocalVariable(name: "__filename", arg: 2, scope: !2172, file: !2033, line: 523, type: !505)
!2178 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2172, file: !2033, line: 523, type: !2130)
!2179 = !DILocalVariable(name: "__flag", arg: 4, scope: !2172, file: !2033, line: 523, type: !500)
!2180 = !DILocation(line: 0, scope: !2172)
!2181 = !DILocation(line: 526, column: 10, scope: !2172)
!2182 = !DILocation(line: 526, column: 3, scope: !2172)
!2183 = distinct !DISubprogram(name: "switchconv_gate", scope: !3, file: !3, line: 909, type: !1714, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!2184 = !DILocation(line: 911, column: 10, scope: !2183)
!2185 = !DILocation(line: 911, column: 38, scope: !2183)
!2186 = !DILocation(line: 911, column: 3, scope: !2183)
!2187 = distinct !DISubprogram(name: "do_switchconv", scope: !3, file: !3, line: 861, type: !1718, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189, !2190, !2194}
!2189 = !DILocalVariable(name: "bb", scope: !2187, file: !3, line: 863, type: !828)
!2190 = !DILocalVariable(name: "stmt", scope: !2191, file: !3, line: 867, type: !567)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 866, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 865, column: 3)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 865, column: 3)
!2194 = !DILocalVariable(name: "loc", scope: !2195, file: !3, line: 872, type: !2199)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 871, column: 4)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 870, column: 6)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 869, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 868, column: 9)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !525, line: 52, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 40, size: 192, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2200, file: !525, line: 43, baseType: !505, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2200, file: !525, line: 46, baseType: !500, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2200, file: !525, line: 48, baseType: !500, size: 32, offset: 96)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2200, file: !525, line: 51, baseType: !499, size: 8, offset: 128)
!2206 = !DILocation(line: 865, column: 3, scope: !2193)
!2207 = !DILocation(line: 0, scope: !2195)
!2208 = !DILocation(line: 865, column: 3, scope: !2192)
!2209 = !DILocation(line: 0, scope: !2193)
!2210 = !DILocation(line: 0, scope: !2187)
!2211 = !DILocation(line: 867, column: 19, scope: !2191)
!2212 = !DILocation(line: 0, scope: !2191)
!2213 = !DILocation(line: 868, column: 9, scope: !2198)
!2214 = !DILocation(line: 868, column: 14, scope: !2198)
!2215 = !DILocation(line: 868, column: 17, scope: !2198)
!2216 = !DILocation(line: 868, column: 36, scope: !2198)
!2217 = !DILocation(line: 868, column: 9, scope: !2191)
!2218 = !DILocation(line: 870, column: 6, scope: !2196)
!2219 = !DILocation(line: 870, column: 6, scope: !2197)
!2220 = !DILocation(line: 872, column: 6, scope: !2195)
!2221 = !DILocation(line: 872, column: 47, scope: !2195)
!2222 = !DILocation(line: 872, column: 30, scope: !2195)
!2223 = !DILocation(line: 874, column: 15, scope: !2195)
!2224 = !DILocation(line: 876, column: 12, scope: !2195)
!2225 = !DILocation(line: 876, column: 22, scope: !2195)
!2226 = !DILocation(line: 874, column: 6, scope: !2195)
!2227 = !DILocation(line: 877, column: 25, scope: !2195)
!2228 = !DILocation(line: 877, column: 6, scope: !2195)
!2229 = !DILocation(line: 878, column: 18, scope: !2195)
!2230 = !DILocation(line: 878, column: 6, scope: !2195)
!2231 = !DILocation(line: 879, column: 4, scope: !2196)
!2232 = !DILocation(line: 879, column: 4, scope: !2195)
!2233 = !DILocation(line: 881, column: 14, scope: !2197)
!2234 = !DILocation(line: 882, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 882, column: 6)
!2236 = !DILocation(line: 0, scope: !2235)
!2237 = !DILocation(line: 882, column: 6, scope: !2197)
!2238 = !DILocation(line: 884, column: 10, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 883, column: 4)
!2240 = !DILocation(line: 886, column: 3, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 885, column: 8)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 884, column: 10)
!2243 = !DILocation(line: 887, column: 48, scope: !2241)
!2244 = !DILocation(line: 887, column: 3, scope: !2241)
!2245 = !DILocation(line: 888, column: 8, scope: !2241)
!2246 = !DILocation(line: 892, column: 10, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 891, column: 4)
!2248 = !DILocation(line: 894, column: 3, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 893, column: 8)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 892, column: 10)
!2251 = !DILocation(line: 895, column: 28, scope: !2249)
!2252 = !DILocation(line: 895, column: 3, scope: !2249)
!2253 = !DILocation(line: 896, column: 15, scope: !2249)
!2254 = !DILocation(line: 896, column: 23, scope: !2249)
!2255 = !DILocation(line: 896, column: 3, scope: !2249)
!2256 = !DILocation(line: 897, column: 48, scope: !2249)
!2257 = !DILocation(line: 897, column: 3, scope: !2249)
!2258 = !DILocation(line: 898, column: 8, scope: !2249)
!2259 = !DILocation(line: 0, scope: !2192)
!2260 = distinct !{!2260, !2206, !2261}
!2261 = !DILocation(line: 901, column: 3, scope: !2193)
!2262 = !DILocation(line: 903, column: 3, scope: !2187)
!2263 = distinct !DISubprogram(name: "gimple_code", scope: !433, file: !433, line: 1052, type: !2264, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!432, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !547, line: 60, baseType: !1681)
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "g", arg: 1, scope: !2263, file: !433, line: 1052, type: !2266)
!2269 = !DILocation(line: 0, scope: !2263)
!2270 = !DILocation(line: 1054, column: 20, scope: !2263)
!2271 = !DILocation(line: 1054, column: 3, scope: !2263)
!2272 = distinct !DISubprogram(name: "gimple_location", scope: !433, file: !433, line: 1139, type: !2273, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!524, !2266}
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "g", arg: 1, scope: !2272, file: !433, line: 1139, type: !2266)
!2277 = !DILocation(line: 0, scope: !2272)
!2278 = !DILocation(line: 1141, column: 20, scope: !2272)
!2279 = !DILocation(line: 1141, column: 3, scope: !2272)
!2280 = distinct !DISubprogram(name: "process_switch", scope: !3, file: !3, line: 795, type: !2281, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!499, !567}
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DILocalVariable(name: "swtch", arg: 1, scope: !2280, file: !3, line: 795, type: !567)
!2285 = !DILocalVariable(name: "i", scope: !2280, file: !3, line: 797, type: !7)
!2286 = !DILocalVariable(name: "branch_num", scope: !2280, file: !3, line: 797, type: !7)
!2287 = !DILocalVariable(name: "index_type", scope: !2280, file: !3, line: 798, type: !578)
!2288 = !DILocation(line: 0, scope: !2280)
!2289 = !DILocation(line: 797, column: 32, scope: !2280)
!2290 = !DILocation(line: 801, column: 18, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 801, column: 7)
!2292 = !DILocation(line: 801, column: 7, scope: !2280)
!2293 = !DILocation(line: 803, column: 19, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 802, column: 5)
!2295 = !DILocation(line: 804, column: 7, scope: !2294)
!2296 = !DILocation(line: 807, column: 17, scope: !2280)
!2297 = !DILocation(line: 808, column: 20, scope: !2280)
!2298 = !DILocation(line: 808, column: 18, scope: !2280)
!2299 = !DILocation(line: 809, column: 21, scope: !2280)
!2300 = !DILocation(line: 809, column: 19, scope: !2280)
!2301 = !DILocation(line: 810, column: 16, scope: !2280)
!2302 = !DILocation(line: 811, column: 22, scope: !2280)
!2303 = !DILocation(line: 812, column: 21, scope: !2280)
!2304 = !DILocation(line: 813, column: 21, scope: !2280)
!2305 = !DILocation(line: 814, column: 22, scope: !2280)
!2306 = !DILocation(line: 815, column: 20, scope: !2280)
!2307 = !DILocation(line: 819, column: 21, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 819, column: 7)
!2309 = !DILocation(line: 819, column: 18, scope: !2308)
!2310 = !DILocation(line: 819, column: 7, scope: !2280)
!2311 = !DILocation(line: 821, column: 19, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 820, column: 5)
!2313 = !DILocation(line: 822, column: 7, scope: !2312)
!2314 = !DILocation(line: 826, column: 8, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 826, column: 7)
!2316 = !DILocation(line: 826, column: 7, scope: !2280)
!2317 = !DILocation(line: 831, column: 3, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 831, column: 3)
!2319 = !DILocation(line: 0, scope: !2318)
!2320 = !DILocation(line: 831, column: 17, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 831, column: 3)
!2322 = !DILocation(line: 832, column: 30, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 832, column: 9)
!2324 = !DILocation(line: 832, column: 10, scope: !2323)
!2325 = !DILocation(line: 832, column: 9, scope: !2321)
!2326 = !DILocation(line: 834, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 834, column: 6)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 833, column: 7)
!2329 = !DILocation(line: 834, column: 6, scope: !2328)
!2330 = !DILocation(line: 835, column: 4, scope: !2327)
!2331 = !DILocation(line: 831, column: 32, scope: !2321)
!2332 = !DILocation(line: 831, column: 3, scope: !2321)
!2333 = distinct !{!2333, !2317, !2334}
!2334 = !DILocation(line: 837, column: 7, scope: !2318)
!2335 = !DILocation(line: 839, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 839, column: 7)
!2337 = !DILocation(line: 839, column: 7, scope: !2280)
!2338 = !DILocation(line: 845, column: 3, scope: !2280)
!2339 = !DILocation(line: 846, column: 26, scope: !2280)
!2340 = !DILocation(line: 846, column: 3, scope: !2280)
!2341 = !DILocation(line: 847, column: 3, scope: !2280)
!2342 = !DILocation(line: 849, column: 3, scope: !2280)
!2343 = !DILocation(line: 850, column: 3, scope: !2280)
!2344 = !DILocation(line: 853, column: 3, scope: !2280)
!2345 = !DILocation(line: 854, column: 3, scope: !2280)
!2346 = !DILocation(line: 855, column: 1, scope: !2280)
!2347 = distinct !DISubprogram(name: "gimple_switch_num_labels", scope: !433, file: !433, line: 3157, type: !2348, scopeLine: 3158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!7, !2266}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "gs", arg: 1, scope: !2347, file: !433, line: 3157, type: !2266)
!2352 = !DILocalVariable(name: "num_ops", scope: !2347, file: !433, line: 3159, type: !7)
!2353 = !DILocation(line: 0, scope: !2347)
!2354 = !DILocation(line: 3161, column: 13, scope: !2347)
!2355 = !DILocation(line: 3162, column: 3, scope: !2347)
!2356 = !DILocation(line: 3163, column: 18, scope: !2347)
!2357 = !DILocation(line: 3163, column: 3, scope: !2347)
!2358 = distinct !DISubprogram(name: "gimple_bb", scope: !433, file: !433, line: 1112, type: !2359, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!530, !2266}
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "g", arg: 1, scope: !2358, file: !433, line: 1112, type: !2266)
!2363 = !DILocation(line: 0, scope: !2358)
!2364 = !DILocation(line: 1114, column: 20, scope: !2358)
!2365 = !DILocation(line: 1114, column: 3, scope: !2358)
!2366 = distinct !DISubprogram(name: "gimple_switch_index", scope: !433, file: !433, line: 3180, type: !2367, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!578, !2266}
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "gs", arg: 1, scope: !2366, file: !433, line: 3180, type: !2266)
!2371 = !DILocation(line: 0, scope: !2366)
!2372 = !DILocation(line: 3183, column: 10, scope: !2366)
!2373 = !DILocation(line: 3183, column: 3, scope: !2366)
!2374 = distinct !DISubprogram(name: "check_range", scope: !3, file: !3, line: 169, type: !2281, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380}
!2376 = !DILocalVariable(name: "swtch", arg: 1, scope: !2374, file: !3, line: 169, type: !567)
!2377 = !DILocalVariable(name: "min_case", scope: !2374, file: !3, line: 171, type: !578)
!2378 = !DILocalVariable(name: "max_case", scope: !2374, file: !3, line: 171, type: !578)
!2379 = !DILocalVariable(name: "branch_num", scope: !2374, file: !3, line: 172, type: !7)
!2380 = !DILocalVariable(name: "range_max", scope: !2374, file: !3, line: 173, type: !578)
!2381 = !DILocation(line: 0, scope: !2374)
!2382 = !DILocation(line: 172, column: 29, scope: !2374)
!2383 = !DILocation(line: 178, column: 14, scope: !2374)
!2384 = !DILocation(line: 179, column: 20, scope: !2374)
!2385 = !DILocation(line: 179, column: 18, scope: !2374)
!2386 = !DILocation(line: 181, column: 3, scope: !2374)
!2387 = !DILocation(line: 182, column: 3, scope: !2374)
!2388 = !DILocation(line: 183, column: 53, scope: !2374)
!2389 = !DILocation(line: 183, column: 14, scope: !2374)
!2390 = !DILocation(line: 184, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 184, column: 7)
!2392 = !DILocation(line: 184, column: 28, scope: !2391)
!2393 = !DILocation(line: 184, column: 7, scope: !2374)
!2394 = !DILocation(line: 185, column: 5, scope: !2391)
!2395 = !DILocation(line: 0, scope: !2391)
!2396 = !DILocation(line: 189, column: 3, scope: !2374)
!2397 = !DILocation(line: 190, column: 3, scope: !2374)
!2398 = !DILocation(line: 192, column: 66, scope: !2374)
!2399 = !DILocation(line: 192, column: 21, scope: !2374)
!2400 = !DILocation(line: 192, column: 19, scope: !2374)
!2401 = !DILocation(line: 194, column: 3, scope: !2374)
!2402 = !DILocation(line: 195, column: 28, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 195, column: 7)
!2404 = !DILocation(line: 195, column: 8, scope: !2403)
!2405 = !DILocation(line: 195, column: 7, scope: !2374)
!2406 = !DILocation(line: 197, column: 19, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 196, column: 5)
!2408 = !DILocation(line: 198, column: 7, scope: !2407)
!2409 = !DILocation(line: 201, column: 51, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 201, column: 7)
!2411 = !DILocation(line: 201, column: 32, scope: !2410)
!2412 = !DILocation(line: 202, column: 34, scope: !2410)
!2413 = !DILocation(line: 202, column: 32, scope: !2410)
!2414 = !DILocation(line: 202, column: 9, scope: !2410)
!2415 = !DILocation(line: 202, column: 7, scope: !2410)
!2416 = !DILocation(line: 201, column: 7, scope: !2374)
!2417 = !DILocation(line: 204, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 203, column: 5)
!2419 = !DILocation(line: 205, column: 7, scope: !2418)
!2420 = !DILocation(line: 209, column: 1, scope: !2374)
!2421 = distinct !DISubprogram(name: "check_process_case", scope: !3, file: !3, line: 217, type: !2422, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!499, !578}
!2424 = !{!2425, !2426, !2427, !2428, !2429}
!2425 = !DILocalVariable(name: "cs", arg: 1, scope: !2421, file: !3, line: 217, type: !578)
!2426 = !DILocalVariable(name: "ldecl", scope: !2421, file: !3, line: 219, type: !578)
!2427 = !DILocalVariable(name: "label_bb", scope: !2421, file: !3, line: 220, type: !828)
!2428 = !DILocalVariable(name: "following_bb", scope: !2421, file: !3, line: 220, type: !828)
!2429 = !DILocalVariable(name: "e", scope: !2421, file: !3, line: 221, type: !546)
!2430 = !DILocation(line: 0, scope: !2421)
!2431 = !DILocation(line: 223, column: 11, scope: !2421)
!2432 = !DILocation(line: 224, column: 14, scope: !2421)
!2433 = !DILocation(line: 226, column: 23, scope: !2421)
!2434 = !DILocation(line: 226, column: 7, scope: !2421)
!2435 = !DILocation(line: 227, column: 3, scope: !2421)
!2436 = !DILocation(line: 229, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 229, column: 7)
!2438 = !DILocation(line: 229, column: 21, scope: !2437)
!2439 = !DILocation(line: 229, column: 7, scope: !2421)
!2440 = !DILocation(line: 232, column: 30, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 230, column: 5)
!2442 = !DILocation(line: 232, column: 25, scope: !2441)
!2443 = !DILocation(line: 233, column: 31, scope: !2441)
!2444 = !DILocation(line: 233, column: 26, scope: !2441)
!2445 = !DILocation(line: 234, column: 5, scope: !2441)
!2446 = !DILocation(line: 236, column: 28, scope: !2437)
!2447 = !DILocation(line: 236, column: 22, scope: !2437)
!2448 = !DILocation(line: 238, column: 8, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 238, column: 7)
!2450 = !DILocation(line: 238, column: 7, scope: !2421)
!2451 = !DILocation(line: 240, column: 19, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 239, column: 5)
!2453 = !DILocation(line: 241, column: 7, scope: !2452)
!2454 = !DILocation(line: 244, column: 8, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 244, column: 7)
!2456 = !DILocation(line: 244, column: 7, scope: !2421)
!2457 = !DILocation(line: 246, column: 16, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 246, column: 11)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 245, column: 5)
!2460 = !DILocation(line: 246, column: 11, scope: !2458)
!2461 = !DILocation(line: 246, column: 42, scope: !2458)
!2462 = !DILocation(line: 246, column: 25, scope: !2458)
!2463 = !DILocation(line: 248, column: 16, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 247, column: 2)
!2465 = !DILocation(line: 249, column: 4, scope: !2464)
!2466 = !DILocation(line: 256, column: 12, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 256, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 255, column: 5)
!2469 = !DILocation(line: 256, column: 11, scope: !2468)
!2470 = !DILocation(line: 258, column: 16, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 257, column: 2)
!2472 = !DILocation(line: 259, column: 4, scope: !2471)
!2473 = !DILocation(line: 262, column: 11, scope: !2468)
!2474 = !DILocation(line: 263, column: 22, scope: !2468)
!2475 = !DILocation(line: 266, column: 13, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 266, column: 7)
!2477 = !DILocation(line: 0, scope: !2455)
!2478 = !DILocation(line: 266, column: 8, scope: !2476)
!2479 = !DILocation(line: 266, column: 7, scope: !2421)
!2480 = !DILocation(line: 267, column: 19, scope: !2476)
!2481 = !DILocation(line: 267, column: 5, scope: !2476)
!2482 = !DILocation(line: 268, column: 26, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 268, column: 12)
!2484 = !DILocation(line: 268, column: 12, scope: !2476)
!2485 = !DILocation(line: 270, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 269, column: 5)
!2487 = !DILocation(line: 271, column: 7, scope: !2486)
!2488 = !DILocation(line: 275, column: 1, scope: !2421)
!2489 = distinct !DISubprogram(name: "gimple_switch_label", scope: !433, file: !433, line: 3212, type: !2490, scopeLine: 3213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!578, !2266, !7}
!2492 = !{!2493, !2494}
!2493 = !DILocalVariable(name: "gs", arg: 1, scope: !2489, file: !433, line: 3212, type: !2266)
!2494 = !DILocalVariable(name: "index", arg: 2, scope: !2489, file: !433, line: 3212, type: !7)
!2495 = !DILocation(line: 0, scope: !2489)
!2496 = !DILocation(line: 3215, column: 3, scope: !2489)
!2497 = !DILocation(line: 3216, column: 10, scope: !2489)
!2498 = !DILocation(line: 3216, column: 3, scope: !2489)
!2499 = distinct !DISubprogram(name: "check_final_bb", scope: !3, file: !3, line: 283, type: !1714, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2500 = !{!2501, !2508, !2512, !2513, !2517, !2520}
!2501 = !DILocalVariable(name: "gsi", scope: !2499, file: !3, line: 285, type: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !433, line: 265, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 254, size: 192, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2503, file: !433, line: 257, baseType: !562, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2503, file: !433, line: 263, baseType: !557, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2503, file: !433, line: 264, baseType: !828, size: 64, offset: 128)
!2508 = !DILocalVariable(name: "phi", scope: !2509, file: !3, line: 290, type: !567)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 289, column: 5)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 288, column: 3)
!2511 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 288, column: 3)
!2512 = !DILocalVariable(name: "i", scope: !2509, file: !3, line: 291, type: !7)
!2513 = !DILocalVariable(name: "bb", scope: !2514, file: !3, line: 297, type: !828)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 296, column: 2)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 295, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 295, column: 7)
!2517 = !DILocalVariable(name: "reloc", scope: !2518, file: !3, line: 302, type: !578)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 301, column: 6)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 299, column: 8)
!2520 = !DILocalVariable(name: "val", scope: !2518, file: !3, line: 302, type: !578)
!2521 = !DILocation(line: 285, column: 3, scope: !2499)
!2522 = !DILocation(line: 287, column: 18, scope: !2499)
!2523 = !DILocation(line: 288, column: 14, scope: !2511)
!2524 = !DILocation(line: 288, column: 35, scope: !2511)
!2525 = !DILocation(line: 288, column: 8, scope: !2511)
!2526 = !DILocation(line: 0, scope: !2499)
!2527 = !DILocation(line: 288, column: 47, scope: !2510)
!2528 = !DILocation(line: 288, column: 46, scope: !2510)
!2529 = !DILocation(line: 288, column: 3, scope: !2511)
!2530 = !DILocation(line: 290, column: 20, scope: !2509)
!2531 = !DILocation(line: 0, scope: !2509)
!2532 = !DILocation(line: 293, column: 21, scope: !2509)
!2533 = !DILocation(line: 295, column: 12, scope: !2516)
!2534 = !DILocation(line: 0, scope: !2516)
!2535 = !DILocation(line: 295, column: 23, scope: !2515)
!2536 = !DILocation(line: 295, column: 21, scope: !2515)
!2537 = !DILocation(line: 295, column: 7, scope: !2516)
!2538 = !DILocation(line: 297, column: 21, scope: !2514)
!2539 = !DILocation(line: 297, column: 51, scope: !2514)
!2540 = !DILocation(line: 0, scope: !2514)
!2541 = !DILocation(line: 299, column: 19, scope: !2519)
!2542 = !DILocation(line: 299, column: 11, scope: !2519)
!2543 = !DILocation(line: 300, column: 8, scope: !2519)
!2544 = !DILocation(line: 300, column: 12, scope: !2519)
!2545 = !DILocation(line: 300, column: 31, scope: !2519)
!2546 = !DILocation(line: 300, column: 34, scope: !2519)
!2547 = !DILocation(line: 300, column: 59, scope: !2519)
!2548 = !DILocation(line: 300, column: 51, scope: !2519)
!2549 = !DILocation(line: 299, column: 8, scope: !2514)
!2550 = !DILocation(line: 304, column: 14, scope: !2518)
!2551 = !DILocation(line: 0, scope: !2518)
!2552 = !DILocation(line: 305, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 305, column: 12)
!2554 = !DILocation(line: 305, column: 12, scope: !2518)
!2555 = !DILocation(line: 307, column: 17, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 306, column: 3)
!2557 = !DILocation(line: 308, column: 5, scope: !2556)
!2558 = !DILocation(line: 310, column: 51, scope: !2518)
!2559 = !DILocation(line: 310, column: 16, scope: !2518)
!2560 = !DILocation(line: 311, column: 13, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 311, column: 12)
!2562 = !DILocation(line: 311, column: 34, scope: !2561)
!2563 = !DILocation(line: 311, column: 31, scope: !2561)
!2564 = !DILocation(line: 311, column: 22, scope: !2561)
!2565 = !DILocation(line: 312, column: 10, scope: !2561)
!2566 = !DILocation(line: 312, column: 28, scope: !2561)
!2567 = !DILocation(line: 312, column: 19, scope: !2561)
!2568 = !DILocation(line: 314, column: 9, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 314, column: 9)
!2570 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 313, column: 3)
!2571 = !DILocation(line: 314, column: 9, scope: !2570)
!2572 = !DILocation(line: 316, column: 9, scope: !2569)
!2573 = !DILocation(line: 315, column: 7, scope: !2569)
!2574 = !DILocation(line: 319, column: 9, scope: !2569)
!2575 = !DILocation(line: 323, column: 2, scope: !2515)
!2576 = !DILocation(line: 295, column: 51, scope: !2515)
!2577 = !DILocation(line: 295, column: 7, scope: !2515)
!2578 = distinct !{!2578, !2537, !2579}
!2579 = !DILocation(line: 323, column: 2, scope: !2516)
!2580 = !DILocation(line: 288, column: 64, scope: !2510)
!2581 = !DILocation(line: 288, column: 3, scope: !2510)
!2582 = distinct !{!2582, !2529, !2583}
!2583 = !DILocation(line: 324, column: 5, scope: !2511)
!2584 = !DILocation(line: 327, column: 1, scope: !2499)
!2585 = distinct !DISubprogram(name: "create_temp_arrays", scope: !3, file: !3, line: 334, type: !2586, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null}
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "i", scope: !2585, file: !3, line: 336, type: !500)
!2590 = !DILocation(line: 338, column: 48, scope: !2585)
!2591 = !DILocation(line: 338, column: 43, scope: !2585)
!2592 = !DILocation(line: 338, column: 34, scope: !2585)
!2593 = !DILocation(line: 338, column: 23, scope: !2585)
!2594 = !DILocation(line: 339, column: 68, scope: !2585)
!2595 = !DILocation(line: 339, column: 63, scope: !2585)
!2596 = !DILocation(line: 339, column: 54, scope: !2585)
!2597 = !DILocation(line: 339, column: 21, scope: !2585)
!2598 = !DILocation(line: 341, column: 54, scope: !2585)
!2599 = !DILocation(line: 341, column: 49, scope: !2585)
!2600 = !DILocation(line: 341, column: 40, scope: !2585)
!2601 = !DILocation(line: 341, column: 29, scope: !2585)
!2602 = !DILocation(line: 342, column: 55, scope: !2585)
!2603 = !DILocation(line: 342, column: 50, scope: !2585)
!2604 = !DILocation(line: 342, column: 41, scope: !2585)
!2605 = !DILocation(line: 342, column: 30, scope: !2585)
!2606 = !DILocation(line: 0, scope: !2585)
!2607 = !DILocation(line: 345, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 345, column: 3)
!2609 = !DILocation(line: 0, scope: !2608)
!2610 = !DILocation(line: 345, column: 24, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 345, column: 3)
!2612 = !DILocation(line: 345, column: 17, scope: !2611)
!2613 = !DILocation(line: 345, column: 3, scope: !2608)
!2614 = !DILocation(line: 347, column: 9, scope: !2611)
!2615 = !DILocation(line: 346, column: 10, scope: !2611)
!2616 = !DILocation(line: 346, column: 5, scope: !2611)
!2617 = !DILocation(line: 347, column: 7, scope: !2611)
!2618 = !DILocation(line: 345, column: 36, scope: !2611)
!2619 = !DILocation(line: 345, column: 3, scope: !2611)
!2620 = distinct !{!2620, !2613, !2621}
!2621 = !DILocation(line: 347, column: 9, scope: !2608)
!2622 = !DILocation(line: 348, column: 1, scope: !2585)
!2623 = distinct !DISubprogram(name: "gather_default_values", scope: !3, file: !3, line: 367, type: !2624, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !578}
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2636}
!2627 = !DILocalVariable(name: "default_case", arg: 1, scope: !2623, file: !3, line: 367, type: !578)
!2628 = !DILocalVariable(name: "gsi", scope: !2623, file: !3, line: 369, type: !2502)
!2629 = !DILocalVariable(name: "bb", scope: !2623, file: !3, line: 370, type: !828)
!2630 = !DILocalVariable(name: "e", scope: !2623, file: !3, line: 371, type: !546)
!2631 = !DILocalVariable(name: "i", scope: !2623, file: !3, line: 372, type: !500)
!2632 = !DILocalVariable(name: "phi", scope: !2633, file: !3, line: 383, type: !567)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 382, column: 5)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 381, column: 3)
!2635 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 381, column: 3)
!2636 = !DILocalVariable(name: "val", scope: !2633, file: !3, line: 384, type: !578)
!2637 = !DILocation(line: 0, scope: !2623)
!2638 = !DILocation(line: 369, column: 3, scope: !2623)
!2639 = !DILocation(line: 370, column: 20, scope: !2623)
!2640 = !DILocation(line: 374, column: 3, scope: !2623)
!2641 = !DILocation(line: 376, column: 18, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 376, column: 7)
!2643 = !DILocation(line: 376, column: 10, scope: !2642)
!2644 = !DILocation(line: 376, column: 7, scope: !2623)
!2645 = !DILocation(line: 377, column: 25, scope: !2642)
!2646 = !DILocation(line: 377, column: 9, scope: !2642)
!2647 = !DILocation(line: 377, column: 5, scope: !2642)
!2648 = !DILocation(line: 379, column: 9, scope: !2642)
!2649 = !DILocation(line: 0, scope: !2642)
!2650 = !DILocation(line: 381, column: 14, scope: !2635)
!2651 = !DILocation(line: 381, column: 35, scope: !2635)
!2652 = !DILocation(line: 0, scope: !2633)
!2653 = !DILocation(line: 381, column: 8, scope: !2635)
!2654 = !DILocation(line: 381, column: 47, scope: !2634)
!2655 = !DILocation(line: 381, column: 46, scope: !2634)
!2656 = !DILocation(line: 381, column: 3, scope: !2635)
!2657 = !DILocation(line: 383, column: 20, scope: !2633)
!2658 = !DILocation(line: 384, column: 18, scope: !2633)
!2659 = !DILocation(line: 385, column: 7, scope: !2633)
!2660 = !DILocation(line: 386, column: 12, scope: !2633)
!2661 = !DILocation(line: 386, column: 28, scope: !2633)
!2662 = !DILocation(line: 386, column: 7, scope: !2633)
!2663 = !DILocation(line: 386, column: 32, scope: !2633)
!2664 = !DILocation(line: 381, column: 64, scope: !2634)
!2665 = !DILocation(line: 381, column: 3, scope: !2634)
!2666 = distinct !{!2666, !2656, !2667}
!2667 = !DILocation(line: 387, column: 5, scope: !2635)
!2668 = !DILocation(line: 388, column: 1, scope: !2623)
!2669 = distinct !DISubprogram(name: "build_constructors", scope: !3, file: !3, line: 395, type: !2670, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !567}
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2681, !2682, !2683, !2684, !2685, !2686, !2688, !2693, !2697, !2698, !2699}
!2673 = !DILocalVariable(name: "swtch", arg: 1, scope: !2669, file: !3, line: 395, type: !567)
!2674 = !DILocalVariable(name: "i", scope: !2669, file: !3, line: 397, type: !7)
!2675 = !DILocalVariable(name: "branch_num", scope: !2669, file: !3, line: 397, type: !7)
!2676 = !DILocalVariable(name: "pos", scope: !2669, file: !3, line: 398, type: !578)
!2677 = !DILocalVariable(name: "cs", scope: !2678, file: !3, line: 402, type: !578)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 401, column: 5)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 400, column: 3)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 400, column: 3)
!2681 = !DILocalVariable(name: "bb", scope: !2678, file: !3, line: 403, type: !828)
!2682 = !DILocalVariable(name: "e", scope: !2678, file: !3, line: 404, type: !546)
!2683 = !DILocalVariable(name: "high", scope: !2678, file: !3, line: 405, type: !578)
!2684 = !DILocalVariable(name: "gsi", scope: !2678, file: !3, line: 406, type: !2502)
!2685 = !DILocalVariable(name: "j", scope: !2678, file: !3, line: 407, type: !500)
!2686 = !DILocalVariable(name: "k", scope: !2687, file: !3, line: 417, type: !500)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 416, column: 2)
!2688 = !DILocalVariable(name: "elt", scope: !2689, file: !3, line: 420, type: !2692)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 419, column: 6)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 418, column: 4)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 418, column: 4)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!2693 = !DILocalVariable(name: "phi", scope: !2694, file: !3, line: 441, type: !567)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 440, column: 2)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 438, column: 7)
!2696 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 438, column: 7)
!2697 = !DILocalVariable(name: "val", scope: !2694, file: !3, line: 442, type: !578)
!2698 = !DILocalVariable(name: "low", scope: !2694, file: !3, line: 443, type: !578)
!2699 = !DILocalVariable(name: "elt", scope: !2700, file: !3, line: 448, type: !2692)
!2700 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 447, column: 6)
!2701 = !DILocation(line: 0, scope: !2669)
!2702 = !DILocation(line: 397, column: 28, scope: !2669)
!2703 = !DILocation(line: 398, column: 19, scope: !2669)
!2704 = !DILocation(line: 0, scope: !2678)
!2705 = !DILocation(line: 0, scope: !2696)
!2706 = !DILocation(line: 400, column: 8, scope: !2680)
!2707 = !DILocation(line: 398, column: 8, scope: !2669)
!2708 = !DILocation(line: 0, scope: !2680)
!2709 = !DILocation(line: 400, column: 17, scope: !2679)
!2710 = !DILocation(line: 400, column: 3, scope: !2680)
!2711 = !DILocation(line: 402, column: 17, scope: !2678)
!2712 = !DILocation(line: 403, column: 24, scope: !2678)
!2713 = !DILocation(line: 406, column: 7, scope: !2678)
!2714 = !DILocation(line: 409, column: 22, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 409, column: 11)
!2716 = !DILocation(line: 409, column: 14, scope: !2715)
!2717 = !DILocation(line: 409, column: 11, scope: !2678)
!2718 = !DILocation(line: 410, column: 22, scope: !2715)
!2719 = !DILocation(line: 410, column: 6, scope: !2715)
!2720 = !DILocation(line: 410, column: 2, scope: !2715)
!2721 = !DILocation(line: 412, column: 6, scope: !2715)
!2722 = !DILocation(line: 0, scope: !2715)
!2723 = !DILocation(line: 413, column: 7, scope: !2678)
!2724 = !DILocation(line: 415, column: 7, scope: !2678)
!2725 = !DILocation(line: 415, column: 36, scope: !2678)
!2726 = !DILocation(line: 415, column: 14, scope: !2678)
!2727 = !DILocation(line: 418, column: 4, scope: !2691)
!2728 = !DILocation(line: 0, scope: !2691)
!2729 = !DILocation(line: 0, scope: !2687)
!2730 = !DILocation(line: 418, column: 25, scope: !2690)
!2731 = !DILocation(line: 418, column: 18, scope: !2690)
!2732 = !DILocation(line: 422, column: 14, scope: !2689)
!2733 = !DILocation(line: 0, scope: !2689)
!2734 = !DILocation(line: 425, column: 15, scope: !2689)
!2735 = !DILocation(line: 424, column: 21, scope: !2689)
!2736 = !DILocation(line: 424, column: 13, scope: !2689)
!2737 = !DILocation(line: 424, column: 19, scope: !2689)
!2738 = !DILocation(line: 426, column: 26, scope: !2689)
!2739 = !DILocation(line: 426, column: 21, scope: !2689)
!2740 = !DILocation(line: 426, column: 13, scope: !2689)
!2741 = !DILocation(line: 426, column: 19, scope: !2689)
!2742 = !DILocation(line: 418, column: 37, scope: !2690)
!2743 = !DILocation(line: 418, column: 4, scope: !2690)
!2744 = distinct !{!2744, !2727, !2745}
!2745 = !DILocation(line: 427, column: 6, scope: !2691)
!2746 = !DILocation(line: 429, column: 43, scope: !2687)
!2747 = !DILocation(line: 429, column: 10, scope: !2687)
!2748 = distinct !{!2748, !2724, !2749}
!2749 = !DILocation(line: 430, column: 2, scope: !2678)
!2750 = !DILocation(line: 431, column: 7, scope: !2678)
!2751 = !DILocation(line: 434, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 434, column: 11)
!2753 = !DILocation(line: 434, column: 11, scope: !2678)
!2754 = !DILocation(line: 435, column: 2, scope: !2752)
!2755 = !DILocation(line: 0, scope: !2752)
!2756 = !DILocation(line: 438, column: 18, scope: !2696)
!2757 = !DILocation(line: 438, column: 39, scope: !2696)
!2758 = !DILocation(line: 0, scope: !2694)
!2759 = !DILocation(line: 438, column: 12, scope: !2696)
!2760 = !DILocation(line: 439, column: 6, scope: !2695)
!2761 = !DILocation(line: 439, column: 5, scope: !2695)
!2762 = !DILocation(line: 438, column: 7, scope: !2696)
!2763 = !DILocation(line: 441, column: 17, scope: !2694)
!2764 = !DILocation(line: 442, column: 15, scope: !2694)
!2765 = !DILocation(line: 443, column: 15, scope: !2694)
!2766 = !DILocation(line: 446, column: 4, scope: !2694)
!2767 = !DILocation(line: 450, column: 14, scope: !2700)
!2768 = !DILocation(line: 0, scope: !2700)
!2769 = !DILocation(line: 452, column: 60, scope: !2700)
!2770 = !DILocation(line: 452, column: 21, scope: !2700)
!2771 = !DILocation(line: 452, column: 13, scope: !2700)
!2772 = !DILocation(line: 452, column: 19, scope: !2700)
!2773 = !DILocation(line: 453, column: 13, scope: !2700)
!2774 = !DILocation(line: 453, column: 19, scope: !2700)
!2775 = !DILocation(line: 455, column: 47, scope: !2700)
!2776 = !DILocation(line: 455, column: 14, scope: !2700)
!2777 = !DILocation(line: 456, column: 16, scope: !2694)
!2778 = !DILocation(line: 457, column: 8, scope: !2694)
!2779 = !DILocation(line: 457, column: 11, scope: !2694)
!2780 = !DILocation(line: 456, column: 6, scope: !2700)
!2781 = distinct !{!2781, !2766, !2782}
!2782 = !DILocation(line: 457, column: 37, scope: !2694)
!2783 = !DILocation(line: 458, column: 5, scope: !2694)
!2784 = !DILocation(line: 439, column: 23, scope: !2695)
!2785 = !DILocation(line: 438, column: 7, scope: !2695)
!2786 = distinct !{!2786, !2762, !2787}
!2787 = !DILocation(line: 459, column: 2, scope: !2696)
!2788 = !DILocation(line: 460, column: 5, scope: !2679)
!2789 = !DILocation(line: 400, column: 32, scope: !2679)
!2790 = !DILocation(line: 400, column: 3, scope: !2679)
!2791 = distinct !{!2791, !2710, !2792}
!2792 = !DILocation(line: 460, column: 5, scope: !2680)
!2793 = !DILocation(line: 461, column: 1, scope: !2669)
!2794 = distinct !DISubprogram(name: "build_arrays", scope: !3, file: !3, line: 548, type: !2670, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2796 = !DILocalVariable(name: "swtch", arg: 1, scope: !2794, file: !3, line: 548, type: !567)
!2797 = !DILocalVariable(name: "arr_index_type", scope: !2794, file: !3, line: 550, type: !578)
!2798 = !DILocalVariable(name: "tidx", scope: !2794, file: !3, line: 551, type: !578)
!2799 = !DILocalVariable(name: "sub", scope: !2794, file: !3, line: 551, type: !578)
!2800 = !DILocalVariable(name: "tmp", scope: !2794, file: !3, line: 551, type: !578)
!2801 = !DILocalVariable(name: "stmt", scope: !2794, file: !3, line: 552, type: !567)
!2802 = !DILocalVariable(name: "gsi", scope: !2794, file: !3, line: 553, type: !2502)
!2803 = !DILocalVariable(name: "i", scope: !2794, file: !3, line: 554, type: !500)
!2804 = !DILocalVariable(name: "loc", scope: !2794, file: !3, line: 555, type: !524)
!2805 = !DILocation(line: 0, scope: !2794)
!2806 = !DILocation(line: 553, column: 3, scope: !2794)
!2807 = !DILocation(line: 555, column: 20, scope: !2794)
!2808 = !DILocation(line: 557, column: 9, scope: !2794)
!2809 = !DILocation(line: 559, column: 43, scope: !2794)
!2810 = !DILocation(line: 559, column: 20, scope: !2794)
!2811 = !DILocation(line: 560, column: 25, scope: !2794)
!2812 = !DILocation(line: 560, column: 9, scope: !2794)
!2813 = !DILocation(line: 561, column: 3, scope: !2794)
!2814 = !DILocation(line: 562, column: 10, scope: !2794)
!2815 = !DILocation(line: 563, column: 9, scope: !2794)
!2816 = !DILocation(line: 567, column: 9, scope: !2794)
!2817 = !DILocation(line: 569, column: 10, scope: !2794)
!2818 = !DILocation(line: 570, column: 3, scope: !2794)
!2819 = !DILocation(line: 570, column: 28, scope: !2794)
!2820 = !DILocation(line: 572, column: 3, scope: !2794)
!2821 = !DILocation(line: 573, column: 3, scope: !2794)
!2822 = !DILocation(line: 574, column: 22, scope: !2794)
!2823 = !DILocation(line: 576, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 576, column: 3)
!2825 = !DILocation(line: 576, column: 35, scope: !2824)
!2826 = !DILocation(line: 576, column: 8, scope: !2824)
!2827 = !DILocation(line: 0, scope: !2824)
!2828 = !DILocation(line: 577, column: 9, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 576, column: 3)
!2830 = !DILocation(line: 577, column: 8, scope: !2829)
!2831 = !DILocation(line: 576, column: 3, scope: !2824)
!2832 = !DILocation(line: 578, column: 48, scope: !2829)
!2833 = !DILocation(line: 578, column: 5, scope: !2829)
!2834 = !DILocation(line: 577, column: 26, scope: !2829)
!2835 = !DILocation(line: 577, column: 44, scope: !2829)
!2836 = !DILocation(line: 576, column: 3, scope: !2829)
!2837 = distinct !{!2837, !2831, !2838}
!2838 = !DILocation(line: 578, column: 68, scope: !2824)
!2839 = !DILocation(line: 579, column: 1, scope: !2794)
!2840 = distinct !DISubprogram(name: "gen_inbound_check", scope: !3, file: !3, line: 669, type: !2670, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2841)
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2842 = !DILocalVariable(name: "swtch", arg: 1, scope: !2840, file: !3, line: 669, type: !567)
!2843 = !DILocalVariable(name: "label_decl1", scope: !2840, file: !3, line: 671, type: !578)
!2844 = !DILocalVariable(name: "label_decl2", scope: !2840, file: !3, line: 672, type: !578)
!2845 = !DILocalVariable(name: "label_decl3", scope: !2840, file: !3, line: 673, type: !578)
!2846 = !DILocalVariable(name: "label1", scope: !2840, file: !3, line: 674, type: !567)
!2847 = !DILocalVariable(name: "label2", scope: !2840, file: !3, line: 674, type: !567)
!2848 = !DILocalVariable(name: "label3", scope: !2840, file: !3, line: 674, type: !567)
!2849 = !DILocalVariable(name: "utype", scope: !2840, file: !3, line: 676, type: !578)
!2850 = !DILocalVariable(name: "tmp_u_1", scope: !2840, file: !3, line: 677, type: !578)
!2851 = !DILocalVariable(name: "tmp_u_2", scope: !2840, file: !3, line: 677, type: !578)
!2852 = !DILocalVariable(name: "tmp_u_var", scope: !2840, file: !3, line: 677, type: !578)
!2853 = !DILocalVariable(name: "cast", scope: !2840, file: !3, line: 678, type: !578)
!2854 = !DILocalVariable(name: "cast_assign", scope: !2840, file: !3, line: 679, type: !567)
!2855 = !DILocalVariable(name: "minus_assign", scope: !2840, file: !3, line: 679, type: !567)
!2856 = !DILocalVariable(name: "ulb", scope: !2840, file: !3, line: 680, type: !578)
!2857 = !DILocalVariable(name: "minus", scope: !2840, file: !3, line: 680, type: !578)
!2858 = !DILocalVariable(name: "bound", scope: !2840, file: !3, line: 681, type: !578)
!2859 = !DILocalVariable(name: "cond_stmt", scope: !2840, file: !3, line: 683, type: !567)
!2860 = !DILocalVariable(name: "last_assign", scope: !2840, file: !3, line: 685, type: !567)
!2861 = !DILocalVariable(name: "gsi", scope: !2840, file: !3, line: 686, type: !2502)
!2862 = !DILocalVariable(name: "bb0", scope: !2840, file: !3, line: 687, type: !828)
!2863 = !DILocalVariable(name: "bb1", scope: !2840, file: !3, line: 687, type: !828)
!2864 = !DILocalVariable(name: "bb2", scope: !2840, file: !3, line: 687, type: !828)
!2865 = !DILocalVariable(name: "bbf", scope: !2840, file: !3, line: 687, type: !828)
!2866 = !DILocalVariable(name: "bbd", scope: !2840, file: !3, line: 687, type: !828)
!2867 = !DILocalVariable(name: "e01", scope: !2840, file: !3, line: 688, type: !546)
!2868 = !DILocalVariable(name: "e02", scope: !2840, file: !3, line: 688, type: !546)
!2869 = !DILocalVariable(name: "e21", scope: !2840, file: !3, line: 688, type: !546)
!2870 = !DILocalVariable(name: "e1d", scope: !2840, file: !3, line: 688, type: !546)
!2871 = !DILocalVariable(name: "e1f", scope: !2840, file: !3, line: 688, type: !546)
!2872 = !DILocalVariable(name: "e2f", scope: !2840, file: !3, line: 688, type: !546)
!2873 = !DILocalVariable(name: "loc", scope: !2840, file: !3, line: 689, type: !524)
!2874 = !DILocation(line: 0, scope: !2840)
!2875 = !DILocation(line: 671, column: 22, scope: !2840)
!2876 = !DILocation(line: 672, column: 22, scope: !2840)
!2877 = !DILocation(line: 673, column: 22, scope: !2840)
!2878 = !DILocation(line: 686, column: 3, scope: !2840)
!2879 = !DILocation(line: 689, column: 20, scope: !2840)
!2880 = !DILocation(line: 691, column: 3, scope: !2840)
!2881 = !DILocation(line: 692, column: 9, scope: !2840)
!2882 = !DILocation(line: 695, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 695, column: 7)
!2884 = !DILocation(line: 695, column: 7, scope: !2840)
!2885 = !DILocation(line: 696, column: 13, scope: !2883)
!2886 = !DILocation(line: 696, column: 5, scope: !2883)
!2887 = !DILocation(line: 0, scope: !2883)
!2888 = !DILocation(line: 698, column: 13, scope: !2883)
!2889 = !DILocation(line: 701, column: 9, scope: !2840)
!2890 = !DILocation(line: 701, column: 28, scope: !2840)
!2891 = !DILocation(line: 702, column: 15, scope: !2840)
!2892 = !DILocation(line: 703, column: 3, scope: !2840)
!2893 = !DILocation(line: 704, column: 13, scope: !2840)
!2894 = !DILocation(line: 706, column: 45, scope: !2840)
!2895 = !DILocation(line: 706, column: 10, scope: !2840)
!2896 = !DILocation(line: 707, column: 17, scope: !2840)
!2897 = !DILocation(line: 708, column: 3, scope: !2840)
!2898 = !DILocation(line: 708, column: 31, scope: !2840)
!2899 = !DILocation(line: 709, column: 3, scope: !2840)
!2900 = !DILocation(line: 710, column: 3, scope: !2840)
!2901 = !DILocation(line: 712, column: 44, scope: !2840)
!2902 = !DILocation(line: 712, column: 9, scope: !2840)
!2903 = !DILocation(line: 713, column: 11, scope: !2840)
!2904 = !DILocation(line: 714, column: 11, scope: !2840)
!2905 = !DILocation(line: 716, column: 13, scope: !2840)
!2906 = !DILocation(line: 717, column: 18, scope: !2840)
!2907 = !DILocation(line: 718, column: 3, scope: !2840)
!2908 = !DILocation(line: 718, column: 31, scope: !2840)
!2909 = !DILocation(line: 719, column: 3, scope: !2840)
!2910 = !DILocation(line: 720, column: 3, scope: !2840)
!2911 = !DILocation(line: 722, column: 46, scope: !2840)
!2912 = !DILocation(line: 722, column: 11, scope: !2840)
!2913 = !DILocation(line: 723, column: 15, scope: !2840)
!2914 = !DILocation(line: 724, column: 3, scope: !2840)
!2915 = !DILocation(line: 725, column: 3, scope: !2840)
!2916 = !DILocation(line: 728, column: 9, scope: !2840)
!2917 = !DILocation(line: 728, column: 28, scope: !2840)
!2918 = !DILocation(line: 729, column: 12, scope: !2840)
!2919 = !DILocation(line: 730, column: 3, scope: !2840)
!2920 = !DILocation(line: 731, column: 17, scope: !2840)
!2921 = !DILocation(line: 734, column: 9, scope: !2840)
!2922 = !DILocation(line: 734, column: 28, scope: !2840)
!2923 = !DILocation(line: 735, column: 12, scope: !2840)
!2924 = !DILocation(line: 736, column: 3, scope: !2840)
!2925 = !DILocation(line: 739, column: 9, scope: !2840)
!2926 = !DILocation(line: 739, column: 28, scope: !2840)
!2927 = !DILocation(line: 740, column: 12, scope: !2840)
!2928 = !DILocation(line: 741, column: 3, scope: !2840)
!2929 = !DILocation(line: 744, column: 27, scope: !2840)
!2930 = !DILocation(line: 744, column: 9, scope: !2840)
!2931 = !DILocation(line: 745, column: 14, scope: !2840)
!2932 = !DILocation(line: 747, column: 27, scope: !2840)
!2933 = !DILocation(line: 747, column: 9, scope: !2840)
!2934 = !DILocation(line: 748, column: 14, scope: !2840)
!2935 = !DILocation(line: 749, column: 3, scope: !2840)
!2936 = !DILocation(line: 751, column: 32, scope: !2840)
!2937 = !DILocation(line: 751, column: 9, scope: !2840)
!2938 = !DILocation(line: 752, column: 14, scope: !2840)
!2939 = !DILocation(line: 753, column: 3, scope: !2840)
!2940 = !DILocation(line: 756, column: 9, scope: !2840)
!2941 = !DILocation(line: 757, column: 46, scope: !2840)
!2942 = !DILocation(line: 757, column: 39, scope: !2840)
!2943 = !DILocation(line: 757, column: 8, scope: !2840)
!2944 = !DILocation(line: 757, column: 20, scope: !2840)
!2945 = !DILocation(line: 758, column: 21, scope: !2840)
!2946 = !DILocation(line: 758, column: 8, scope: !2840)
!2947 = !DILocation(line: 758, column: 14, scope: !2840)
!2948 = !DILocation(line: 761, column: 8, scope: !2840)
!2949 = !DILocation(line: 761, column: 14, scope: !2840)
!2950 = !DILocation(line: 762, column: 14, scope: !2840)
!2951 = !DILocation(line: 763, column: 27, scope: !2840)
!2952 = !DILocation(line: 763, column: 8, scope: !2840)
!2953 = !DILocation(line: 763, column: 20, scope: !2840)
!2954 = !DILocation(line: 764, column: 21, scope: !2840)
!2955 = !DILocation(line: 764, column: 8, scope: !2840)
!2956 = !DILocation(line: 764, column: 14, scope: !2840)
!2957 = !DILocation(line: 766, column: 14, scope: !2840)
!2958 = !DILocation(line: 768, column: 9, scope: !2840)
!2959 = !DILocation(line: 769, column: 8, scope: !2840)
!2960 = !DILocation(line: 769, column: 20, scope: !2840)
!2961 = !DILocation(line: 770, column: 21, scope: !2840)
!2962 = !DILocation(line: 770, column: 8, scope: !2840)
!2963 = !DILocation(line: 770, column: 14, scope: !2840)
!2964 = !DILocation(line: 772, column: 9, scope: !2840)
!2965 = !DILocation(line: 773, column: 8, scope: !2840)
!2966 = !DILocation(line: 773, column: 20, scope: !2840)
!2967 = !DILocation(line: 774, column: 21, scope: !2840)
!2968 = !DILocation(line: 774, column: 8, scope: !2840)
!2969 = !DILocation(line: 774, column: 14, scope: !2840)
!2970 = !DILocation(line: 777, column: 20, scope: !2840)
!2971 = !DILocation(line: 777, column: 8, scope: !2840)
!2972 = !DILocation(line: 777, column: 18, scope: !2840)
!2973 = !DILocation(line: 778, column: 20, scope: !2840)
!2974 = !DILocation(line: 778, column: 8, scope: !2840)
!2975 = !DILocation(line: 778, column: 18, scope: !2840)
!2976 = !DILocation(line: 779, column: 20, scope: !2840)
!2977 = !DILocation(line: 779, column: 43, scope: !2840)
!2978 = !DILocation(line: 779, column: 41, scope: !2840)
!2979 = !DILocation(line: 779, column: 8, scope: !2840)
!2980 = !DILocation(line: 779, column: 18, scope: !2840)
!2981 = !DILocation(line: 781, column: 24, scope: !2840)
!2982 = !DILocation(line: 781, column: 3, scope: !2840)
!2983 = !DILocation(line: 784, column: 3, scope: !2840)
!2984 = !DILocation(line: 786, column: 3, scope: !2840)
!2985 = !DILocation(line: 787, column: 3, scope: !2840)
!2986 = !DILocation(line: 788, column: 1, scope: !2840)
!2987 = distinct !DISubprogram(name: "free_temp_arrays", scope: !3, file: !3, line: 355, type: !2586, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!2988 = !DILocation(line: 357, column: 14, scope: !2987)
!2989 = !DILocation(line: 357, column: 3, scope: !2987)
!2990 = !DILocation(line: 358, column: 14, scope: !2987)
!2991 = !DILocation(line: 358, column: 3, scope: !2987)
!2992 = !DILocation(line: 359, column: 14, scope: !2987)
!2993 = !DILocation(line: 359, column: 3, scope: !2987)
!2994 = !DILocation(line: 360, column: 14, scope: !2987)
!2995 = !DILocation(line: 360, column: 3, scope: !2987)
!2996 = !DILocation(line: 361, column: 1, scope: !2987)
!2997 = distinct !DISubprogram(name: "gimple_num_ops", scope: !433, file: !433, line: 1596, type: !2348, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2998)
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "gs", arg: 1, scope: !2997, file: !433, line: 1596, type: !2266)
!3000 = !DILocation(line: 0, scope: !2997)
!3001 = !DILocation(line: 1598, column: 21, scope: !2997)
!3002 = !DILocation(line: 1598, column: 3, scope: !2997)
!3003 = distinct !DISubprogram(name: "gimple_op", scope: !433, file: !433, line: 1631, type: !2490, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "gs", arg: 1, scope: !3003, file: !433, line: 1631, type: !2266)
!3006 = !DILocalVariable(name: "i", arg: 2, scope: !3003, file: !433, line: 1631, type: !7)
!3007 = !DILocation(line: 0, scope: !3003)
!3008 = !DILocation(line: 1633, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !433, line: 1633, column: 7)
!3010 = !DILocation(line: 1633, column: 7, scope: !3003)
!3011 = !DILocation(line: 1638, column: 14, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !433, line: 1634, column: 5)
!3013 = !DILocation(line: 1638, column: 7, scope: !3012)
!3014 = !DILocation(line: 0, scope: !3009)
!3015 = !DILocation(line: 1642, column: 1, scope: !3003)
!3016 = distinct !DISubprogram(name: "gimple_has_ops", scope: !433, file: !433, line: 1274, type: !3017, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!499, !2266}
!3019 = !{!3020}
!3020 = !DILocalVariable(name: "g", arg: 1, scope: !3016, file: !433, line: 1274, type: !2266)
!3021 = !DILocation(line: 0, scope: !3016)
!3022 = !DILocation(line: 1276, column: 10, scope: !3016)
!3023 = !DILocation(line: 1276, column: 26, scope: !3016)
!3024 = !DILocation(line: 1276, column: 41, scope: !3016)
!3025 = !DILocation(line: 1276, column: 44, scope: !3016)
!3026 = !DILocation(line: 1276, column: 60, scope: !3016)
!3027 = !DILocation(line: 1276, column: 3, scope: !3016)
!3028 = distinct !DISubprogram(name: "gimple_ops", scope: !433, file: !433, line: 1614, type: !3029, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!1037, !567}
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "gs", arg: 1, scope: !3028, file: !433, line: 1614, type: !567)
!3033 = !DILocalVariable(name: "off", scope: !3028, file: !433, line: 1616, type: !888)
!3034 = !DILocation(line: 0, scope: !3028)
!3035 = !DILocation(line: 1621, column: 28, scope: !3028)
!3036 = !DILocation(line: 1621, column: 9, scope: !3028)
!3037 = !DILocation(line: 1622, column: 3, scope: !3028)
!3038 = !DILocation(line: 1624, column: 20, scope: !3028)
!3039 = !DILocation(line: 1624, column: 32, scope: !3028)
!3040 = !DILocation(line: 1624, column: 10, scope: !3028)
!3041 = !DILocation(line: 1624, column: 3, scope: !3028)
!3042 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !433, file: !433, line: 1073, type: !3043, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!471, !567}
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "gs", arg: 1, scope: !3042, file: !433, line: 1073, type: !567)
!3047 = !DILocation(line: 0, scope: !3042)
!3048 = !DILocation(line: 1075, column: 24, scope: !3042)
!3049 = !DILocation(line: 1075, column: 10, scope: !3042)
!3050 = !DILocation(line: 1075, column: 3, scope: !3042)
!3051 = distinct !DISubprogram(name: "gss_for_code", scope: !433, file: !433, line: 1061, type: !3052, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!471, !432}
!3054 = !{!3055}
!3055 = !DILocalVariable(name: "code", arg: 1, scope: !3051, file: !433, line: 1061, type: !432)
!3056 = !DILocation(line: 0, scope: !3051)
!3057 = !DILocation(line: 1066, column: 10, scope: !3051)
!3058 = !DILocation(line: 1066, column: 3, scope: !3051)
!3059 = distinct !DISubprogram(name: "single_pred_p", scope: !190, file: !190, line: 634, type: !3060, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3065)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!499, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !547, line: 112, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "bb", arg: 1, scope: !3059, file: !190, line: 634, type: !3062)
!3067 = !DILocation(line: 0, scope: !3059)
!3068 = !DILocation(line: 636, column: 10, scope: !3059)
!3069 = !DILocation(line: 636, column: 33, scope: !3059)
!3070 = !DILocation(line: 636, column: 3, scope: !3059)
!3071 = distinct !DISubprogram(name: "single_succ_edge", scope: !190, file: !190, line: 643, type: !3072, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!546, !3062}
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "bb", arg: 1, scope: !3071, file: !190, line: 643, type: !3062)
!3076 = !DILocation(line: 0, scope: !3071)
!3077 = !DILocation(line: 645, column: 3, scope: !3071)
!3078 = !DILocation(line: 646, column: 10, scope: !3071)
!3079 = !DILocation(line: 646, column: 3, scope: !3071)
!3080 = distinct !DISubprogram(name: "single_succ", scope: !190, file: !190, line: 663, type: !3081, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!828, !3062}
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "bb", arg: 1, scope: !3080, file: !190, line: 663, type: !3062)
!3085 = !DILocation(line: 0, scope: !3080)
!3086 = !DILocation(line: 665, column: 10, scope: !3080)
!3087 = !DILocation(line: 665, column: 33, scope: !3080)
!3088 = !DILocation(line: 665, column: 3, scope: !3080)
!3089 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !190, file: !190, line: 150, type: !3090, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!7, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "vec_", arg: 1, scope: !3089, file: !190, line: 150, type: !3092)
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 150, column: 1, scope: !3089)
!3098 = distinct !DISubprogram(name: "single_succ_p", scope: !190, file: !190, line: 626, type: !3060, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "bb", arg: 1, scope: !3098, file: !190, line: 626, type: !3062)
!3101 = !DILocation(line: 0, scope: !3098)
!3102 = !DILocation(line: 628, column: 10, scope: !3098)
!3103 = !DILocation(line: 628, column: 33, scope: !3098)
!3104 = !DILocation(line: 628, column: 3, scope: !3098)
!3105 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !190, file: !190, line: 150, type: !3106, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!546, !3092, !7}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "vec_", arg: 1, scope: !3105, file: !190, line: 150, type: !3092)
!3110 = !DILocalVariable(name: "ix_", arg: 2, scope: !3105, file: !190, line: 150, type: !7)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 150, column: 1, scope: !3105)
!3113 = distinct !DISubprogram(name: "gsi_end_p", scope: !433, file: !433, line: 4467, type: !3114, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!499, !2502}
!3116 = !{!3117}
!3117 = !DILocalVariable(name: "i", arg: 1, scope: !3113, file: !433, line: 4467, type: !2502)
!3118 = !DILocation(line: 4467, column: 33, scope: !3113)
!3119 = !DILocation(line: 4469, column: 12, scope: !3113)
!3120 = !DILocation(line: 4469, column: 16, scope: !3113)
!3121 = !DILocation(line: 4469, column: 10, scope: !3113)
!3122 = !DILocation(line: 4469, column: 3, scope: !3113)
!3123 = distinct !DISubprogram(name: "gsi_stmt", scope: !433, file: !433, line: 4501, type: !3124, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!567, !2502}
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "i", arg: 1, scope: !3123, file: !433, line: 4501, type: !2502)
!3128 = !DILocation(line: 4501, column: 32, scope: !3123)
!3129 = !DILocation(line: 4503, column: 12, scope: !3123)
!3130 = !DILocation(line: 4503, column: 17, scope: !3123)
!3131 = !DILocation(line: 4503, column: 3, scope: !3123)
!3132 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !433, file: !433, line: 3061, type: !2348, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "gs", arg: 1, scope: !3132, file: !433, line: 3061, type: !2266)
!3135 = !DILocation(line: 0, scope: !3132)
!3136 = !DILocation(line: 3064, column: 25, scope: !3132)
!3137 = !DILocation(line: 3064, column: 3, scope: !3132)
!3138 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !3139, file: !3139, line: 467, type: !3140, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3142)
!3139 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!546, !567, !888}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "gs", arg: 1, scope: !3138, file: !3139, line: 467, type: !567)
!3144 = !DILocalVariable(name: "i", arg: 2, scope: !3138, file: !3139, line: 467, type: !888)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 469, column: 10, scope: !3138)
!3147 = !DILocation(line: 469, column: 3, scope: !3138)
!3148 = distinct !DISubprogram(name: "single_pred", scope: !190, file: !190, line: 672, type: !3081, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "bb", arg: 1, scope: !3148, file: !190, line: 672, type: !3062)
!3151 = !DILocation(line: 0, scope: !3148)
!3152 = !DILocation(line: 674, column: 10, scope: !3148)
!3153 = !DILocation(line: 674, column: 33, scope: !3148)
!3154 = !DILocation(line: 674, column: 3, scope: !3148)
!3155 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !3139, file: !3139, line: 450, type: !3156, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!578, !567, !888}
!3158 = !{!3159, !3160, !3161}
!3159 = !DILocalVariable(name: "gs", arg: 1, scope: !3155, file: !3139, line: 450, type: !567)
!3160 = !DILocalVariable(name: "index", arg: 2, scope: !3155, file: !3139, line: 450, type: !888)
!3161 = !DILocalVariable(name: "pd", scope: !3155, file: !3139, line: 452, type: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!3163 = !DILocation(line: 0, scope: !3155)
!3164 = !DILocation(line: 452, column: 46, scope: !3155)
!3165 = !DILocation(line: 452, column: 26, scope: !3155)
!3166 = !DILocation(line: 453, column: 33, scope: !3155)
!3167 = !DILocation(line: 453, column: 10, scope: !3155)
!3168 = !DILocation(line: 453, column: 3, scope: !3155)
!3169 = distinct !DISubprogram(name: "gsi_next", scope: !433, file: !433, line: 4485, type: !3170, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !3172}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!3173 = !{!3174}
!3174 = !DILocalVariable(name: "i", arg: 1, scope: !3169, file: !433, line: 4485, type: !3172)
!3175 = !DILocation(line: 0, scope: !3169)
!3176 = !DILocation(line: 4487, column: 15, scope: !3169)
!3177 = !DILocation(line: 4487, column: 20, scope: !3169)
!3178 = !DILocation(line: 4487, column: 10, scope: !3169)
!3179 = !DILocation(line: 4488, column: 1, scope: !3169)
!3180 = distinct !DISubprogram(name: "single_pred_edge", scope: !190, file: !190, line: 653, type: !3072, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3181)
!3181 = !{!3182}
!3182 = !DILocalVariable(name: "bb", arg: 1, scope: !3180, file: !190, line: 653, type: !3062)
!3183 = !DILocation(line: 0, scope: !3180)
!3184 = !DILocation(line: 655, column: 3, scope: !3180)
!3185 = !DILocation(line: 656, column: 10, scope: !3180)
!3186 = !DILocation(line: 656, column: 3, scope: !3180)
!3187 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !433, file: !433, line: 3100, type: !3188, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!3162, !567, !7}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "gs", arg: 1, scope: !3187, file: !433, line: 3100, type: !567)
!3192 = !DILocalVariable(name: "index", arg: 2, scope: !3187, file: !433, line: 3100, type: !7)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 3103, column: 3, scope: !3187)
!3195 = !DILocation(line: 3104, column: 12, scope: !3187)
!3196 = !DILocation(line: 3104, column: 3, scope: !3187)
!3197 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3139, file: !3139, line: 427, type: !3198, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3203)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!578, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1020, line: 30, baseType: !3201)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !206, line: 1893, baseType: !1044)
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "use", arg: 1, scope: !3197, file: !3139, line: 427, type: !3200)
!3205 = !DILocation(line: 0, scope: !3197)
!3206 = !DILocation(line: 429, column: 17, scope: !3197)
!3207 = !DILocation(line: 429, column: 10, scope: !3197)
!3208 = !DILocation(line: 429, column: 3, scope: !3197)
!3209 = distinct !DISubprogram(name: "VEC_constructor_elt_gc_alloc", scope: !206, file: !206, line: 1538, type: !3210, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!1264, !500}
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3209, file: !206, line: 1538, type: !500)
!3214 = !DILocation(line: 0, scope: !3209)
!3215 = !DILocation(line: 1538, column: 1, scope: !3209)
!3216 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3139, file: !3139, line: 442, type: !3217, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!3200, !567, !500}
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "gs", arg: 1, scope: !3216, file: !3139, line: 442, type: !567)
!3221 = !DILocalVariable(name: "i", arg: 2, scope: !3216, file: !3139, line: 442, type: !500)
!3222 = !DILocation(line: 0, scope: !3216)
!3223 = !DILocation(line: 444, column: 11, scope: !3216)
!3224 = !DILocation(line: 444, column: 35, scope: !3216)
!3225 = !DILocation(line: 444, column: 3, scope: !3216)
!3226 = distinct !DISubprogram(name: "VEC_constructor_elt_base_quick_push", scope: !206, file: !206, line: 1537, type: !3227, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3232)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!2692, !3229, !3230}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!3232 = !{!3233, !3234, !3235}
!3233 = !DILocalVariable(name: "vec_", arg: 1, scope: !3226, file: !206, line: 1537, type: !3229)
!3234 = !DILocalVariable(name: "obj_", arg: 2, scope: !3226, file: !206, line: 1537, type: !3230)
!3235 = !DILocalVariable(name: "slot_", scope: !3226, file: !206, line: 1537, type: !2692)
!3236 = !DILocation(line: 0, scope: !3226)
!3237 = !DILocation(line: 1537, column: 1, scope: !3226)
!3238 = distinct !DISubprogram(name: "make_ssa_name", scope: !3139, file: !3139, line: 1245, type: !3239, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!578, !578, !567}
!3241 = !{!3242, !3243}
!3242 = !DILocalVariable(name: "var", arg: 1, scope: !3238, file: !3139, line: 1245, type: !578)
!3243 = !DILocalVariable(name: "stmt", arg: 2, scope: !3238, file: !3139, line: 1245, type: !567)
!3244 = !DILocation(line: 0, scope: !3238)
!3245 = !DILocation(line: 1247, column: 28, scope: !3238)
!3246 = !DILocation(line: 1247, column: 10, scope: !3238)
!3247 = !DILocation(line: 1247, column: 3, scope: !3238)
!3248 = distinct !DISubprogram(name: "update_stmt", scope: !433, file: !433, line: 1456, type: !2670, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3249)
!3249 = !{!3250}
!3250 = !DILocalVariable(name: "s", arg: 1, scope: !3248, file: !433, line: 1456, type: !567)
!3251 = !DILocation(line: 0, scope: !3248)
!3252 = !DILocation(line: 1458, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3248, file: !433, line: 1458, column: 7)
!3254 = !DILocation(line: 1458, column: 7, scope: !3248)
!3255 = !DILocation(line: 1460, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3253, file: !433, line: 1459, column: 5)
!3257 = !DILocation(line: 1461, column: 7, scope: !3256)
!3258 = !DILocation(line: 1462, column: 5, scope: !3256)
!3259 = !DILocation(line: 1463, column: 1, scope: !3248)
!3260 = distinct !DISubprogram(name: "build_one_array", scope: !3, file: !3, line: 496, type: !3261, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !567, !500, !578, !567, !578}
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3277, !3278, !3279, !3280}
!3264 = !DILocalVariable(name: "swtch", arg: 1, scope: !3260, file: !3, line: 496, type: !567)
!3265 = !DILocalVariable(name: "num", arg: 2, scope: !3260, file: !3, line: 496, type: !500)
!3266 = !DILocalVariable(name: "arr_index_type", arg: 3, scope: !3260, file: !3, line: 496, type: !578)
!3267 = !DILocalVariable(name: "phi", arg: 4, scope: !3260, file: !3, line: 496, type: !567)
!3268 = !DILocalVariable(name: "tidx", arg: 5, scope: !3260, file: !3, line: 497, type: !578)
!3269 = !DILocalVariable(name: "name", scope: !3260, file: !3, line: 499, type: !578)
!3270 = !DILocalVariable(name: "cst", scope: !3260, file: !3, line: 499, type: !578)
!3271 = !DILocalVariable(name: "load", scope: !3260, file: !3, line: 500, type: !567)
!3272 = !DILocalVariable(name: "gsi", scope: !3260, file: !3, line: 501, type: !2502)
!3273 = !DILocalVariable(name: "loc", scope: !3260, file: !3, line: 502, type: !524)
!3274 = !DILocalVariable(name: "array_type", scope: !3275, file: !3, line: 514, type: !578)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 513, column: 5)
!3276 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 510, column: 7)
!3277 = !DILocalVariable(name: "ctor", scope: !3275, file: !3, line: 514, type: !578)
!3278 = !DILocalVariable(name: "decl", scope: !3275, file: !3, line: 514, type: !578)
!3279 = !DILocalVariable(name: "value_type", scope: !3275, file: !3, line: 514, type: !578)
!3280 = !DILocalVariable(name: "fetch", scope: !3275, file: !3, line: 514, type: !578)
!3281 = !DILocation(line: 0, scope: !3260)
!3282 = !DILocation(line: 501, column: 3, scope: !3260)
!3283 = !DILocation(line: 501, column: 30, scope: !3260)
!3284 = !DILocation(line: 502, column: 20, scope: !3260)
!3285 = !DILocation(line: 504, column: 3, scope: !3260)
!3286 = !DILocation(line: 506, column: 25, scope: !3260)
!3287 = !DILocation(line: 506, column: 10, scope: !3260)
!3288 = !DILocation(line: 507, column: 8, scope: !3260)
!3289 = !DILocation(line: 507, column: 3, scope: !3260)
!3290 = !DILocation(line: 507, column: 34, scope: !3260)
!3291 = !DILocation(line: 509, column: 50, scope: !3260)
!3292 = !DILocation(line: 509, column: 45, scope: !3260)
!3293 = !DILocation(line: 509, column: 9, scope: !3260)
!3294 = !DILocation(line: 510, column: 7, scope: !3276)
!3295 = !DILocation(line: 510, column: 7, scope: !3260)
!3296 = !DILocation(line: 511, column: 12, scope: !3276)
!3297 = !DILocation(line: 511, column: 5, scope: !3276)
!3298 = !DILocation(line: 516, column: 20, scope: !3275)
!3299 = !DILocation(line: 0, scope: !3275)
!3300 = !DILocation(line: 517, column: 20, scope: !3275)
!3301 = !DILocation(line: 518, column: 50, scope: !3275)
!3302 = !DILocation(line: 518, column: 45, scope: !3275)
!3303 = !DILocation(line: 518, column: 14, scope: !3275)
!3304 = !DILocation(line: 519, column: 7, scope: !3275)
!3305 = !DILocation(line: 519, column: 28, scope: !3275)
!3306 = !DILocation(line: 521, column: 14, scope: !3275)
!3307 = !DILocation(line: 522, column: 7, scope: !3275)
!3308 = !DILocation(line: 522, column: 26, scope: !3275)
!3309 = !DILocation(line: 523, column: 7, scope: !3275)
!3310 = !DILocation(line: 523, column: 27, scope: !3275)
!3311 = !DILocation(line: 525, column: 26, scope: !3275)
!3312 = !DILocation(line: 525, column: 7, scope: !3275)
!3313 = !DILocation(line: 525, column: 24, scope: !3275)
!3314 = !DILocation(line: 526, column: 7, scope: !3275)
!3315 = !DILocation(line: 526, column: 30, scope: !3275)
!3316 = !DILocation(line: 527, column: 28, scope: !3275)
!3317 = !DILocation(line: 528, column: 7, scope: !3275)
!3318 = !DILocation(line: 529, column: 33, scope: !3275)
!3319 = !DILocation(line: 529, column: 7, scope: !3275)
!3320 = !DILocation(line: 530, column: 7, scope: !3275)
!3321 = !DILocation(line: 532, column: 15, scope: !3275)
!3322 = !DILocation(line: 534, column: 14, scope: !3275)
!3323 = !DILocation(line: 0, scope: !3276)
!3324 = !DILocation(line: 537, column: 3, scope: !3260)
!3325 = !DILocation(line: 537, column: 28, scope: !3260)
!3326 = !DILocation(line: 538, column: 3, scope: !3260)
!3327 = !DILocation(line: 539, column: 3, scope: !3260)
!3328 = !DILocation(line: 540, column: 21, scope: !3260)
!3329 = !DILocation(line: 541, column: 1, scope: !3260)
!3330 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3139, file: !3139, line: 434, type: !3331, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!578, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1020, line: 27, baseType: !1037)
!3334 = !{!3335}
!3335 = !DILocalVariable(name: "def", arg: 1, scope: !3330, file: !3139, line: 434, type: !3333)
!3336 = !DILocation(line: 0, scope: !3330)
!3337 = !DILocation(line: 436, column: 10, scope: !3330)
!3338 = !DILocation(line: 436, column: 3, scope: !3330)
!3339 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !433, file: !433, line: 3080, type: !3029, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "gs", arg: 1, scope: !3339, file: !433, line: 3080, type: !567)
!3342 = !DILocation(line: 0, scope: !3339)
!3343 = !DILocation(line: 3083, column: 26, scope: !3339)
!3344 = !DILocation(line: 3083, column: 3, scope: !3339)
!3345 = distinct !DISubprogram(name: "constructor_contains_same_values_p", scope: !3, file: !3, line: 468, type: !3346, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!578, !1264}
!3348 = !{!3349, !3350, !3351, !3352, !3353}
!3349 = !DILocalVariable(name: "vec", arg: 1, scope: !3345, file: !3, line: 468, type: !1264)
!3350 = !DILocalVariable(name: "i", scope: !3345, file: !3, line: 470, type: !500)
!3351 = !DILocalVariable(name: "len", scope: !3345, file: !3, line: 470, type: !500)
!3352 = !DILocalVariable(name: "prev", scope: !3345, file: !3, line: 471, type: !578)
!3353 = !DILocalVariable(name: "elt", scope: !3354, file: !3, line: 475, type: !2692)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 474, column: 5)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 473, column: 3)
!3356 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 473, column: 3)
!3357 = !DILocation(line: 0, scope: !3345)
!3358 = !DILocation(line: 470, column: 16, scope: !3345)
!3359 = !DILocation(line: 473, column: 8, scope: !3356)
!3360 = !DILocation(line: 471, column: 8, scope: !3345)
!3361 = !DILocation(line: 0, scope: !3356)
!3362 = !DILocation(line: 473, column: 17, scope: !3355)
!3363 = !DILocation(line: 473, column: 3, scope: !3356)
!3364 = !DILocation(line: 475, column: 30, scope: !3354)
!3365 = !DILocation(line: 0, scope: !3354)
!3366 = !DILocation(line: 477, column: 12, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 477, column: 11)
!3368 = !DILocation(line: 0, scope: !3367)
!3369 = !DILocation(line: 477, column: 11, scope: !3354)
!3370 = !DILocation(line: 479, column: 17, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 479, column: 16)
!3372 = !DILocation(line: 479, column: 16, scope: !3367)
!3373 = !DILocation(line: 481, column: 5, scope: !3355)
!3374 = !DILocation(line: 473, column: 25, scope: !3355)
!3375 = !DILocation(line: 473, column: 3, scope: !3355)
!3376 = distinct !{!3376, !3363, !3377}
!3377 = !DILocation(line: 481, column: 5, scope: !3356)
!3378 = !DILocation(line: 483, column: 1, scope: !3345)
!3379 = distinct !DISubprogram(name: "VEC_constructor_elt_base_length", scope: !206, file: !206, line: 1537, type: !3380, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3384)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!7, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "vec_", arg: 1, scope: !3379, file: !206, line: 1537, type: !3382)
!3386 = !DILocation(line: 0, scope: !3379)
!3387 = !DILocation(line: 1537, column: 1, scope: !3379)
!3388 = distinct !DISubprogram(name: "VEC_constructor_elt_base_index", scope: !206, file: !206, line: 1537, type: !3389, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!2692, !3229, !7}
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "vec_", arg: 1, scope: !3388, file: !206, line: 1537, type: !3229)
!3393 = !DILocalVariable(name: "ix_", arg: 2, scope: !3388, file: !206, line: 1537, type: !7)
!3394 = !DILocation(line: 0, scope: !3388)
!3395 = !DILocation(line: 1537, column: 1, scope: !3388)
!3396 = distinct !DISubprogram(name: "gen_def_assigns", scope: !3, file: !3, line: 585, type: !3397, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!567, !3172}
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DILocalVariable(name: "gsi", arg: 1, scope: !3396, file: !3, line: 585, type: !3172)
!3401 = !DILocalVariable(name: "i", scope: !3396, file: !3, line: 587, type: !500)
!3402 = !DILocalVariable(name: "assign", scope: !3396, file: !3, line: 588, type: !567)
!3403 = !DILocalVariable(name: "name", scope: !3404, file: !3, line: 592, type: !578)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 591, column: 5)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 590, column: 3)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 590, column: 3)
!3407 = !DILocation(line: 0, scope: !3396)
!3408 = !DILocation(line: 590, column: 8, scope: !3406)
!3409 = !DILocation(line: 0, scope: !3406)
!3410 = !DILocation(line: 590, column: 24, scope: !3405)
!3411 = !DILocation(line: 590, column: 17, scope: !3405)
!3412 = !DILocation(line: 590, column: 3, scope: !3406)
!3413 = !DILocation(line: 593, column: 19, scope: !3404)
!3414 = !DILocation(line: 593, column: 4, scope: !3404)
!3415 = !DILocation(line: 0, scope: !3404)
!3416 = !DILocation(line: 595, column: 12, scope: !3404)
!3417 = !DILocation(line: 595, column: 7, scope: !3404)
!3418 = !DILocation(line: 595, column: 37, scope: !3404)
!3419 = !DILocation(line: 596, column: 16, scope: !3404)
!3420 = !DILocation(line: 597, column: 7, scope: !3404)
!3421 = !DILocation(line: 597, column: 32, scope: !3404)
!3422 = !DILocation(line: 598, column: 7, scope: !3404)
!3423 = !DILocation(line: 599, column: 7, scope: !3404)
!3424 = !DILocation(line: 590, column: 36, scope: !3405)
!3425 = !DILocation(line: 590, column: 3, scope: !3405)
!3426 = distinct !{!3426, !3412, !3427}
!3427 = !DILocation(line: 600, column: 5, scope: !3406)
!3428 = !DILocation(line: 601, column: 3, scope: !3396)
!3429 = distinct !DISubprogram(name: "gsi_start_bb", scope: !433, file: !433, line: 4418, type: !3430, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!2502, !828}
!3432 = !{!3433, !3434, !3435}
!3433 = !DILocalVariable(name: "bb", arg: 1, scope: !3429, file: !433, line: 4418, type: !828)
!3434 = !DILocalVariable(name: "i", scope: !3429, file: !433, line: 4420, type: !2502)
!3435 = !DILocalVariable(name: "seq", scope: !3429, file: !433, line: 4421, type: !557)
!3436 = !DILocation(line: 0, scope: !3429)
!3437 = !DILocation(line: 4420, column: 24, scope: !3429)
!3438 = !DILocation(line: 4423, column: 9, scope: !3429)
!3439 = !DILocation(line: 4424, column: 11, scope: !3429)
!3440 = !DILocation(line: 4424, column: 5, scope: !3429)
!3441 = !DILocation(line: 4424, column: 9, scope: !3429)
!3442 = !DILocation(line: 4425, column: 5, scope: !3429)
!3443 = !DILocation(line: 4425, column: 9, scope: !3429)
!3444 = !DILocation(line: 4426, column: 5, scope: !3429)
!3445 = !DILocation(line: 4426, column: 8, scope: !3429)
!3446 = !DILocation(line: 4429, column: 1, scope: !3429)
!3447 = distinct !DISubprogram(name: "prune_bbs", scope: !3, file: !3, line: 610, type: !3448, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !828, !828}
!3450 = !{!3451, !3452, !3453, !3460, !3461}
!3451 = !DILocalVariable(name: "bbd", arg: 1, scope: !3447, file: !3, line: 610, type: !828)
!3452 = !DILocalVariable(name: "final", arg: 2, scope: !3447, file: !3, line: 610, type: !828)
!3453 = !DILocalVariable(name: "ei", scope: !3447, file: !3, line: 612, type: !3454)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !190, line: 682, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 679, size: 128, elements: !3456)
!3456 = !{!3457, !3458}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3455, file: !190, line: 680, baseType: !7, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3455, file: !190, line: 681, baseType: !3459, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!3460 = !DILocalVariable(name: "e", scope: !3447, file: !3, line: 613, type: !546)
!3461 = !DILocalVariable(name: "bb", scope: !3462, file: !3, line: 617, type: !828)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 616, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 615, column: 3)
!3464 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 615, column: 3)
!3465 = !DILocation(line: 0, scope: !3447)
!3466 = !DILocation(line: 612, column: 3, scope: !3447)
!3467 = !DILocation(line: 615, column: 13, scope: !3464)
!3468 = !DILocation(line: 0, scope: !3463)
!3469 = !DILocation(line: 615, column: 8, scope: !3464)
!3470 = !DILocation(line: 615, column: 41, scope: !3463)
!3471 = !DILocation(line: 615, column: 3, scope: !3464)
!3472 = !DILocation(line: 618, column: 15, scope: !3462)
!3473 = !DILocation(line: 0, scope: !3462)
!3474 = !DILocation(line: 619, column: 7, scope: !3462)
!3475 = !DILocation(line: 620, column: 14, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 620, column: 11)
!3477 = !DILocation(line: 620, column: 11, scope: !3462)
!3478 = !DILocation(line: 621, column: 2, scope: !3476)
!3479 = !DILocation(line: 615, column: 3, scope: !3463)
!3480 = distinct !{!3480, !3471, !3481}
!3481 = !DILocation(line: 622, column: 5, scope: !3464)
!3482 = !DILocation(line: 623, column: 3, scope: !3447)
!3483 = !DILocation(line: 624, column: 1, scope: !3447)
!3484 = distinct !DISubprogram(name: "fix_phi_nodes", scope: !3, file: !3, line: 632, type: !3485, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{null, !546, !546, !828}
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493}
!3488 = !DILocalVariable(name: "e1f", arg: 1, scope: !3484, file: !3, line: 632, type: !546)
!3489 = !DILocalVariable(name: "e2f", arg: 2, scope: !3484, file: !3, line: 632, type: !546)
!3490 = !DILocalVariable(name: "bbf", arg: 3, scope: !3484, file: !3, line: 632, type: !828)
!3491 = !DILocalVariable(name: "gsi", scope: !3484, file: !3, line: 634, type: !2502)
!3492 = !DILocalVariable(name: "i", scope: !3484, file: !3, line: 635, type: !500)
!3493 = !DILocalVariable(name: "phi", scope: !3494, file: !3, line: 640, type: !567)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 639, column: 5)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 637, column: 3)
!3496 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 637, column: 3)
!3497 = !DILocation(line: 0, scope: !3484)
!3498 = !DILocation(line: 634, column: 3, scope: !3484)
!3499 = !DILocation(line: 637, column: 14, scope: !3496)
!3500 = !DILocation(line: 637, column: 8, scope: !3496)
!3501 = !DILocation(line: 0, scope: !3496)
!3502 = !DILocation(line: 638, column: 9, scope: !3495)
!3503 = !DILocation(line: 638, column: 8, scope: !3495)
!3504 = !DILocation(line: 637, column: 3, scope: !3496)
!3505 = !DILocation(line: 640, column: 20, scope: !3494)
!3506 = !DILocation(line: 0, scope: !3494)
!3507 = !DILocation(line: 641, column: 30, scope: !3494)
!3508 = !DILocation(line: 641, column: 25, scope: !3494)
!3509 = !DILocation(line: 641, column: 7, scope: !3494)
!3510 = !DILocation(line: 642, column: 30, scope: !3494)
!3511 = !DILocation(line: 642, column: 25, scope: !3494)
!3512 = !DILocation(line: 642, column: 7, scope: !3494)
!3513 = !DILocation(line: 638, column: 26, scope: !3495)
!3514 = !DILocation(line: 638, column: 44, scope: !3495)
!3515 = !DILocation(line: 637, column: 3, scope: !3495)
!3516 = distinct !{!3516, !3504, !3517}
!3517 = !DILocation(line: 643, column: 5, scope: !3496)
!3518 = !DILocation(line: 645, column: 1, scope: !3484)
!3519 = distinct !DISubprogram(name: "bb_seq", scope: !433, file: !433, line: 237, type: !3520, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!557, !3062}
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "bb", arg: 1, scope: !3519, file: !433, line: 237, type: !3062)
!3524 = !DILocation(line: 0, scope: !3519)
!3525 = !DILocation(line: 239, column: 17, scope: !3519)
!3526 = !DILocation(line: 239, column: 23, scope: !3519)
!3527 = !DILocation(line: 239, column: 33, scope: !3519)
!3528 = !DILocation(line: 239, column: 43, scope: !3519)
!3529 = !DILocation(line: 239, column: 36, scope: !3519)
!3530 = !DILocation(line: 239, column: 10, scope: !3519)
!3531 = !DILocation(line: 239, column: 68, scope: !3519)
!3532 = !DILocation(line: 239, column: 3, scope: !3519)
!3533 = distinct !DISubprogram(name: "gimple_seq_first", scope: !433, file: !433, line: 159, type: !3534, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!562, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !547, line: 67, baseType: !3537)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "s", arg: 1, scope: !3533, file: !433, line: 159, type: !3536)
!3541 = !DILocation(line: 0, scope: !3533)
!3542 = !DILocation(line: 161, column: 10, scope: !3533)
!3543 = !DILocation(line: 161, column: 17, scope: !3533)
!3544 = !DILocation(line: 161, column: 3, scope: !3533)
!3545 = distinct !DISubprogram(name: "ei_start_1", scope: !190, file: !190, line: 696, type: !3546, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!3454, !3459}
!3548 = !{!3549, !3550}
!3549 = !DILocalVariable(name: "ev", arg: 1, scope: !3545, file: !190, line: 696, type: !3459)
!3550 = !DILocalVariable(name: "i", scope: !3545, file: !190, line: 698, type: !3454)
!3551 = !DILocation(line: 0, scope: !3545)
!3552 = !DILocation(line: 700, column: 5, scope: !3545)
!3553 = !DILocation(line: 700, column: 11, scope: !3545)
!3554 = !DILocation(line: 701, column: 5, scope: !3545)
!3555 = !DILocation(line: 701, column: 15, scope: !3545)
!3556 = !DILocation(line: 703, column: 3, scope: !3545)
!3557 = distinct !DISubprogram(name: "ei_safe_edge", scope: !190, file: !190, line: 761, type: !3558, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!546, !3454}
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "i", arg: 1, scope: !3557, file: !190, line: 761, type: !3454)
!3562 = !DILocation(line: 763, column: 11, scope: !3557)
!3563 = !DILocation(line: 763, column: 10, scope: !3557)
!3564 = !DILocation(line: 763, column: 26, scope: !3557)
!3565 = !DILocation(line: 763, column: 3, scope: !3557)
!3566 = distinct !DISubprogram(name: "ei_end_p", scope: !190, file: !190, line: 721, type: !3567, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!499, !3454}
!3569 = !{!3570}
!3570 = !DILocalVariable(name: "i", arg: 1, scope: !3566, file: !190, line: 721, type: !3454)
!3571 = !DILocation(line: 723, column: 22, scope: !3566)
!3572 = !DILocation(line: 723, column: 19, scope: !3566)
!3573 = !DILocation(line: 723, column: 10, scope: !3566)
!3574 = !DILocation(line: 723, column: 3, scope: !3566)
!3575 = distinct !DISubprogram(name: "ei_edge", scope: !190, file: !190, line: 752, type: !3558, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "i", arg: 1, scope: !3575, file: !190, line: 752, type: !3454)
!3578 = !DILocation(line: 754, column: 10, scope: !3575)
!3579 = !DILocation(line: 754, column: 3, scope: !3575)
!3580 = distinct !DISubprogram(name: "ei_container", scope: !190, file: !190, line: 685, type: !3581, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!534, !3454}
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "i", arg: 1, scope: !3580, file: !190, line: 685, type: !3454)
!3585 = !DILocation(line: 687, column: 3, scope: !3580)
!3586 = !DILocation(line: 688, column: 10, scope: !3580)
!3587 = !DILocation(line: 688, column: 3, scope: !3580)
