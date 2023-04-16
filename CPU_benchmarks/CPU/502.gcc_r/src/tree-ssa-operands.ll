; ModuleID = 'tree-ssa-operands.bc'
source_filename = "tree-ssa-operands.c"
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
%struct.rtx_def = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.constructor_elt_d = type { %union.tree_node*, %union.tree_node* }
%struct.VEC_constructor_elt_gc = type { %struct.VEC_constructor_elt_base }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, i8*, i8, i8, i8, i8, [1 x %union.tree_node*] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, %union.tree_node*, %union.tree_node* }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@n_initialized = internal unnamed_addr global i32 0, align 4, !dbg !0
@build_defs = internal global %struct.VEC_tree_heap* null, align 8, !dbg !1539
@build_uses = internal global %struct.VEC_tree_heap* null, align 8, !dbg !1541
@build_vuse = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !1545
@build_vdef = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !1543
@operands_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !1547
@.str = private unnamed_addr constant [20 x i8] c"tree-ssa-operands.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@clobber_stats = internal global %struct.anon zeroinitializer, align 4, !dbg !1529
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Original clobbered vars:           %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Static write clobbers avoided:     %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Static read clobbers avoided:      %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unescapable clobbers avoided:      %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Original read-only clobbers:       %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Static read-only clobbers avoided: %d\0A\00", align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" STMT MODIFIED. - <%p> \00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c" IMM ERROR : (use_p : tree - %p:%p)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" : -->\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" no uses.\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c" single use.\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d uses.\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"***end of stmt iterator marker***\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Immediate_uses: \0A\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c".MEM\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@optimize = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1553 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1567, metadata !DIExpression()), !dbg !1568
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1569
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1570
  ret i32 %call, !dbg !1571
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1572 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1576
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1577
  ret i32 %call, !dbg !1578
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1579 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1634, metadata !DIExpression()), !dbg !1635
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1636
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1636
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1636
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1636
  %cmp = icmp uge i8* %0, %1, !dbg !1636
  %conv1 = zext i1 %cmp to i64, !dbg !1636
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1636
  %tobool = icmp eq i64 %expval, 0, !dbg !1636
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1636

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1636
  br label %cond.end, !dbg !1636

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1636
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1636
  %2 = load i8, i8* %0, align 1, !dbg !1636
  %conv3 = zext i8 %2 to i32, !dbg !1636
  br label %cond.end, !dbg !1636

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1636
  ret i32 %cond, !dbg !1637
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1638 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1640, metadata !DIExpression()), !dbg !1641
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1642
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1642
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1642
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1642
  %cmp = icmp uge i8* %0, %1, !dbg !1642
  %conv1 = zext i1 %cmp to i64, !dbg !1642
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1642
  %tobool = icmp eq i64 %expval, 0, !dbg !1642
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1642

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1642
  br label %cond.end, !dbg !1642

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1642
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1642
  %2 = load i8, i8* %0, align 1, !dbg !1642
  %conv3 = zext i8 %2 to i32, !dbg !1642
  br label %cond.end, !dbg !1642

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1642
  ret i32 %cond, !dbg !1643
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1644 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1645
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1645
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1645
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1645
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1645
  %cmp = icmp uge i8* %1, %2, !dbg !1645
  %conv1 = zext i1 %cmp to i64, !dbg !1645
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1645
  %tobool = icmp eq i64 %expval, 0, !dbg !1645
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1645

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1645
  br label %cond.end, !dbg !1645

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1645
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1645
  %3 = load i8, i8* %1, align 1, !dbg !1645
  %conv3 = zext i8 %3 to i32, !dbg !1645
  br label %cond.end, !dbg !1645

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1645
  ret i32 %cond, !dbg !1646
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1647 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1651, metadata !DIExpression()), !dbg !1652
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1653
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1654
  ret i32 %call, !dbg !1655
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1656 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1660, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1661, metadata !DIExpression()), !dbg !1662
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1663
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1663
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1663
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1663
  %cmp = icmp uge i8* %0, %1, !dbg !1663
  %conv1 = zext i1 %cmp to i64, !dbg !1663
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1663
  %tobool = icmp eq i64 %expval, 0, !dbg !1663
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1663

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1663
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1663
  br label %cond.end, !dbg !1663

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1663
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1663
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1663
  store i8 %conv2, i8* %0, align 1, !dbg !1663
  %conv6 = and i32 %__c, 255, !dbg !1663
  br label %cond.end, !dbg !1663

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1663
  ret i32 %cond, !dbg !1664
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1667, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1668, metadata !DIExpression()), !dbg !1669
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1670
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1670
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1670
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1670
  %cmp = icmp uge i8* %0, %1, !dbg !1670
  %conv1 = zext i1 %cmp to i64, !dbg !1670
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1670
  %tobool = icmp eq i64 %expval, 0, !dbg !1670
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1670

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1670
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1670
  br label %cond.end, !dbg !1670

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1670
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1670
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1670
  store i8 %conv2, i8* %0, align 1, !dbg !1670
  %conv6 = and i32 %__c, 255, !dbg !1670
  br label %cond.end, !dbg !1670

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1670
  ret i32 %cond, !dbg !1671
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1672 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1674, metadata !DIExpression()), !dbg !1675
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1676
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1676
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1676
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1676
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1676
  %cmp = icmp uge i8* %1, %2, !dbg !1676
  %conv1 = zext i1 %cmp to i64, !dbg !1676
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1676
  %tobool = icmp eq i64 %expval, 0, !dbg !1676
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1676

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1676
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1676
  br label %cond.end, !dbg !1676

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1676
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1676
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1676
  store i8 %conv4, i8* %1, align 1, !dbg !1676
  %conv6 = and i32 %__c, 255, !dbg !1676
  br label %cond.end, !dbg !1676

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1676
  ret i32 %cond, !dbg !1677
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1678 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1684, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1685, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1686, metadata !DIExpression()), !dbg !1687
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1688
  ret i64 %call, !dbg !1689
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1690 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1692, metadata !DIExpression()), !dbg !1693
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1694
  %0 = load i32, i32* %_flags, align 8, !dbg !1694
  %and = lshr i32 %0, 4, !dbg !1694
  %and.lobit = and i32 %and, 1, !dbg !1694
  ret i32 %and.lobit, !dbg !1695
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1696 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1698, metadata !DIExpression()), !dbg !1699
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1700
  %0 = load i32, i32* %_flags, align 8, !dbg !1700
  %and = lshr i32 %0, 5, !dbg !1700
  %and.lobit = and i32 %and, 1, !dbg !1700
  ret i32 %and.lobit, !dbg !1701
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1702 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1705, metadata !DIExpression()), !dbg !1706
  %__c.off = add i32 %__c, 128, !dbg !1707
  %0 = icmp ult i32 %__c.off, 384, !dbg !1707
  br i1 %0, label %cond.true, label %cond.end, !dbg !1707

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1708
  %1 = load i32*, i32** %call, align 8, !dbg !1709
  %idxprom = sext i32 %__c to i64, !dbg !1710
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1710
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1710
  br label %cond.end, !dbg !1711

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1711
  ret i32 %cond, !dbg !1712
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1715, metadata !DIExpression()), !dbg !1716
  %__c.off = add i32 %__c, 128, !dbg !1717
  %0 = icmp ult i32 %__c.off, 384, !dbg !1717
  br i1 %0, label %cond.true, label %cond.end, !dbg !1717

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1718
  %1 = load i32*, i32** %call, align 8, !dbg !1719
  %idxprom = sext i32 %__c to i64, !dbg !1720
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1720
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1720
  br label %cond.end, !dbg !1721

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1721
  ret i32 %cond, !dbg !1722
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1723 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1728, metadata !DIExpression()), !dbg !1729
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1730
  %conv = trunc i64 %call to i32, !dbg !1731
  ret i32 %conv, !dbg !1732
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1733 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1737, metadata !DIExpression()), !dbg !1738
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1739
  ret i64 %call, !dbg !1740
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1741 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1746, metadata !DIExpression()), !dbg !1747
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1748
  ret i64 %call, !dbg !1749
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1756, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1757, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1758, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1760, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1762, metadata !DIExpression()), !dbg !1766
  br label %while.cond, !dbg !1767

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1768
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1762, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1761, metadata !DIExpression()), !dbg !1766
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1769
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1767

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1770
  %div = lshr i64 %add, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %div, metadata !1763, metadata !DIExpression()), !dbg !1766
  %mul = mul i64 %div, %__size, !dbg !1773
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1764, metadata !DIExpression()), !dbg !1766
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %call, metadata !1765, metadata !DIExpression()), !dbg !1766
  %cmp1 = icmp slt i32 %call, 0, !dbg !1776
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1778

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1779
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1781

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1761, metadata !DIExpression()), !dbg !1766
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1766
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1762, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1761, metadata !DIExpression()), !dbg !1766
  br label %while.cond, !dbg !1767, !llvm.loop !1783

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1766
  ret i8* %retval.0, !dbg !1785
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1786 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1792, metadata !DIExpression()), !dbg !1793
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1794
  ret double %call, !dbg !1795
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1796 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1806, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %base, metadata !1807, metadata !DIExpression()), !dbg !1808
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1809
  ret i64 %call, !dbg !1810
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %base, metadata !1819, metadata !DIExpression()), !dbg !1820
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1821
  ret i64 %call, !dbg !1822
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1823 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1834, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1835, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 %base, metadata !1836, metadata !DIExpression()), !dbg !1837
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1838
  ret i64 %call, !dbg !1839
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1840 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1844, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %base, metadata !1846, metadata !DIExpression()), !dbg !1847
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1848
  ret i64 %call, !dbg !1849
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1893, metadata !DIExpression()), !dbg !1894
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1895
  ret i32 %call, !dbg !1896
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1899, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1900, metadata !DIExpression()), !dbg !1901
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1902
  ret i32 %call, !dbg !1903
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1904 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1909, metadata !DIExpression()), !dbg !1910
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1911
  ret i32 %call, !dbg !1912
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1913 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1917, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1918, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1920, metadata !DIExpression()), !dbg !1921
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1922
  ret i32 %call, !dbg !1923
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1924 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1928, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1929, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1930, metadata !DIExpression()), !dbg !1931
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1930, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1932
  ret i32 %call, !dbg !1933
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1934 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1938, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1939, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1941, metadata !DIExpression()), !dbg !1942
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1941, metadata !DIExpression(DW_OP_deref)), !dbg !1942
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1943
  ret i32 %call, !dbg !1944
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1945 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1970, metadata !DIExpression()), !dbg !1971
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1972
  ret i32 %call, !dbg !1973
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1977, metadata !DIExpression()), !dbg !1978
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1979
  ret i32 %call, !dbg !1980
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1981 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1986, metadata !DIExpression()), !dbg !1987
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1988
  ret i32 %call, !dbg !1989
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1994, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1997, metadata !DIExpression()), !dbg !1998
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1999
  ret i32 %call, !dbg !2000
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ssa_operands_active() local_unnamed_addr #4 !dbg !2001 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2004
  %cmp = icmp eq %struct.function* %0, null, !dbg !2006
  br i1 %cmp, label %return, label %if.end, !dbg !2007

if.end:                                           ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2008
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2008
  %tobool = icmp eq %struct.gimple_df* %1, null, !dbg !2009
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2010

land.rhs:                                         ; preds = %if.end
  %call = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* nonnull %0) #7, !dbg !2011
  %ops_active = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call, i64 0, i32 3, !dbg !2012
  %2 = load i8, i8* %ops_active, align 8, !dbg !2012
  %tobool3 = icmp ne i8 %2, 0, !dbg !2010
  %phitmp = zext i1 %tobool3 to i8
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %3 = phi i8 [ 0, %if.end ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !2013

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i8 [ %3, %land.end ], [ 0, %entry ], !dbg !2014
  ret i8 %retval.0, !dbg !2015
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %fun) unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2024, metadata !DIExpression()), !dbg !2025
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2026
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2026
  %ssa_operands = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 11, !dbg !2027
  ret %struct.ssa_operands* %ssa_operands, !dbg !2028
}

; Function Attrs: nounwind uwtable
define dso_local void @init_ssa_operands() local_unnamed_addr #4 !dbg !2029 {
entry:
  %0 = load i32, i32* @n_initialized, align 4, !dbg !2032
  %inc = add nsw i32 %0, 1, !dbg !2032
  store i32 %inc, i32* @n_initialized, align 4, !dbg !2032
  %tobool = icmp eq i32 %0, 0, !dbg !2032
  br i1 %tobool, label %if.then, label %if.end, !dbg !2034

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 5) #7, !dbg !2035
  store %struct.VEC_tree_heap* %call, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !2037
  %call1 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 10) #7, !dbg !2038
  store %struct.VEC_tree_heap* %call1, %struct.VEC_tree_heap** @build_uses, align 8, !dbg !2039
  store %union.tree_node* null, %union.tree_node** @build_vuse, align 8, !dbg !2040
  store %union.tree_node* null, %union.tree_node** @build_vdef, align 8, !dbg !2041
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @operands_bitmap_obstack) #6, !dbg !2042
  br label %if.end, !dbg !2043

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2044
  %call2 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %1) #7, !dbg !2044
  %operand_memory = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call2, i64 0, i32 0, !dbg !2044
  %2 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** %operand_memory, align 8, !dbg !2044
  %cmp = icmp eq %struct.ssa_operand_memory_d* %2, null, !dbg !2044
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2044

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2044
  br label %cond.end, !dbg !2044

cond.end:                                         ; preds = %if.end, %cond.true
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2045
  %call4 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %3) #7, !dbg !2046
  %ssa_operand_mem_size = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call4, i64 0, i32 2, !dbg !2047
  %4 = load i32, i32* %ssa_operand_mem_size, align 4, !dbg !2047
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2048
  %call6 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %5) #7, !dbg !2049
  %operand_memory_index = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call6, i64 0, i32 1, !dbg !2050
  store i32 %4, i32* %operand_memory_index, align 8, !dbg !2051
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2052
  %call8 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %6) #7, !dbg !2053
  %ops_active = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call8, i64 0, i32 3, !dbg !2054
  store i8 1, i8* %ops_active, align 8, !dbg !2055
  %call9 = tail call i8* @memset(i8* bitcast (%struct.anon* @clobber_stats to i8*), i32 0, i64 24) #6, !dbg !2056
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2057
  %call11 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %7) #7, !dbg !2058
  %ssa_operand_mem_size12 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call11, i64 0, i32 2, !dbg !2059
  store i32 0, i32* %ssa_operand_mem_size12, align 4, !dbg !2060
  tail call fastcc void @create_vop_var() #7, !dbg !2061
  ret void, !dbg !2062
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2063 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2067, metadata !DIExpression()), !dbg !2068
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2069
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !2069
  ret %struct.VEC_tree_heap* %0, !dbg !2069
}

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @create_vop_var() unnamed_addr #4 !dbg !2070 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2073
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2073
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2073
  %vop = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 3, !dbg !2073
  %2 = load %union.tree_node*, %union.tree_node** %vop, align 8, !dbg !2073
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2073
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2073

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2073
  br label %cond.end, !dbg !2073

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2074
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2074
  %call1 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 32, %union.tree_node* %call, %union.tree_node* %3) #6, !dbg !2074
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2072, metadata !DIExpression()), !dbg !2075
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2076
  %4 = bitcast i40* %artificial_flag to i64*, !dbg !2076
  %bf.load = load i64, i64* %4, align 8, !dbg !2077
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2078
  %bf.load2 = load i64, i64* %5, align 8, !dbg !2079
  %bf.clear3 = and i64 %bf.load2, -85721089, !dbg !2079
  %bf.set7 = or i64 %bf.load, 33558528, !dbg !2080
  store i64 %bf.set7, i64* %4, align 8, !dbg !2080
  %bf.set15 = or i64 %bf.clear3, 83886080, !dbg !2081
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2082
  store %union.tree_node* null, %union.tree_node** %context, align 8, !dbg !2083
  store i64 %bf.set15, i64* %5, align 8, !dbg !2084
  %call22 = tail call %struct.var_ann_d* @create_var_ann(%union.tree_node* %call1) #6, !dbg !2085
  %call23 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call1) #6, !dbg !2086
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2087
  %gimple_df25 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 3, !dbg !2088
  %7 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df25, align 8, !dbg !2088
  %vop26 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %7, i64 0, i32 3, !dbg !2089
  store %union.tree_node* %call1, %union.tree_node** %vop26, align 8, !dbg !2090
  ret void, !dbg !2091
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_ssa_operands() local_unnamed_addr #4 !dbg !2092 {
entry:
  %0 = load i32, i32* @n_initialized, align 4, !dbg !2095
  %dec = add nsw i32 %0, -1, !dbg !2095
  store i32 %dec, i32* @n_initialized, align 4, !dbg !2095
  %tobool = icmp eq i32 %dec, 0, !dbg !2095
  br i1 %tobool, label %if.then, label %if.end, !dbg !2097

if.then:                                          ; preds = %entry
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull @build_defs) #7, !dbg !2098
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull @build_uses) #7, !dbg !2100
  store %union.tree_node* null, %union.tree_node** @build_vdef, align 8, !dbg !2101
  store %union.tree_node* null, %union.tree_node** @build_vuse, align 8, !dbg !2102
  br label %if.end, !dbg !2103

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2104
  %call = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %1) #7, !dbg !2105
  %free_defs = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call, i64 0, i32 4, !dbg !2106
  store %struct.def_optype_d* null, %struct.def_optype_d** %free_defs, align 8, !dbg !2107
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2108
  %call2 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %2) #7, !dbg !2109
  %free_uses = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call2, i64 0, i32 5, !dbg !2110
  store %struct.use_optype_d* null, %struct.use_optype_d** %free_uses, align 8, !dbg !2111
  br label %while.cond, !dbg !2112

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2113
  %call4 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %3) #7, !dbg !2114
  %operand_memory = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call4, i64 0, i32 0, !dbg !2115
  %4 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** %operand_memory, align 8, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.ssa_operand_memory_d* %4, metadata !2094, metadata !DIExpression()), !dbg !2116
  %cmp = icmp eq %struct.ssa_operand_memory_d* %4, null, !dbg !2117
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2116
  %call6 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %5) #7, !dbg !2116
  br i1 %cmp, label %while.end, label %while.body, !dbg !2112

while.body:                                       ; preds = %while.cond
  %6 = bitcast %struct.ssa_operands* %call6 to i64**, !dbg !2118
  %7 = load i64*, i64** %6, align 8, !dbg !2118
  %8 = load i64, i64* %7, align 8, !dbg !2120
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2121
  %call9 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %9) #7, !dbg !2122
  %10 = bitcast %struct.ssa_operands* %call9 to i64*, !dbg !2123
  store i64 %8, i64* %10, align 8, !dbg !2123
  %11 = bitcast %struct.ssa_operand_memory_d* %4 to i8*, !dbg !2124
  tail call void @ggc_free(i8* nonnull %11) #6, !dbg !2125
  br label %while.cond, !dbg !2112, !llvm.loop !2126

while.end:                                        ; preds = %while.cond
  %call6.lcssa = phi %struct.ssa_operands* [ %call6, %while.cond ], !dbg !2116
  %ops_active = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call6.lcssa, i64 0, i32 3, !dbg !2128
  store i8 0, i8* %ops_active, align 8, !dbg !2129
  %12 = load i32, i32* @n_initialized, align 4, !dbg !2130
  %tobool13 = icmp eq i32 %12, 0, !dbg !2130
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2132

if.then14:                                        ; preds = %while.end
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @operands_bitmap_obstack) #6, !dbg !2133
  br label %if.end15, !dbg !2133

if.end15:                                         ; preds = %while.end, %if.then14
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2134
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 3, !dbg !2135
  %14 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2135
  %vop = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %14, i64 0, i32 3, !dbg !2136
  store %union.tree_node* null, %union.tree_node** %vop, align 8, !dbg !2137
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2138
  %tobool17 = icmp eq %struct._IO_FILE* %15, null, !dbg !2138
  br i1 %tobool17, label %if.end26, label %land.lhs.true, !dbg !2140

land.lhs.true:                                    ; preds = %if.end15
  %16 = load i32, i32* @dump_flags, align 4, !dbg !2141
  %and = and i32 %16, 16, !dbg !2142
  %tobool18 = icmp eq i32 %and, 0, !dbg !2142
  br i1 %tobool18, label %if.end26, label %if.then19, !dbg !2143

if.then19:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 0), align 4, !dbg !2144
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %17) #6, !dbg !2146
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2147
  %19 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 1), align 4, !dbg !2148
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %19) #6, !dbg !2149
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2150
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 2), align 4, !dbg !2151
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %21) #6, !dbg !2152
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2153
  %23 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 3), align 4, !dbg !2154
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %23) #6, !dbg !2155
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2156
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 4), align 4, !dbg !2157
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %25) #6, !dbg !2158
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2159
  %27 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @clobber_stats, i64 0, i32 5), align 4, !dbg !2160
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %27) #6, !dbg !2161
  br label %if.end26, !dbg !2162

if.end26:                                         ; preds = %land.lhs.true, %if.end15, %if.then19
  ret void, !dbg !2163
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2169, metadata !DIExpression()), !dbg !2170
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2171
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2171
  br i1 %tobool, label %if.end, label %if.then, !dbg !2173

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2173
  tail call void @free(i8* nonnull %1) #6, !dbg !2171
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2173
  ret void, !dbg !2173
}

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_stmt_operands(%union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2174 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2178, metadata !DIExpression()), !dbg !2185
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %call, metadata !2179, metadata !DIExpression()), !dbg !2185
  %call1 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call1, metadata !2182, metadata !DIExpression()), !dbg !2185
  %tobool = icmp eq %struct.def_optype_d* %call, null, !dbg !2188
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !2190

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2191

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %last_def.0 = phi %struct.def_optype_d* [ %0, %for.inc ], [ %call, %for.cond.preheader ], !dbg !2194
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last_def.0, metadata !2181, metadata !DIExpression()), !dbg !2185
  %next = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %last_def.0, i64 0, i32 0, !dbg !2195
  %0 = load %struct.def_optype_d*, %struct.def_optype_d** %next, align 8, !dbg !2195
  %tobool2 = icmp eq %struct.def_optype_d* %0, null, !dbg !2191
  br i1 %tobool2, label %for.end, label %for.inc, !dbg !2191

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  br label %for.cond, !dbg !2197, !llvm.loop !2198

for.end:                                          ; preds = %for.cond
  %last_def.0.lcssa = phi %struct.def_optype_d* [ %last_def.0, %for.cond ], !dbg !2194
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last_def.0.lcssa, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last_def.0.lcssa, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last_def.0.lcssa, metadata !2181, metadata !DIExpression()), !dbg !2185
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2200
  %call4 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %1) #7, !dbg !2201
  %free_defs = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call4, i64 0, i32 4, !dbg !2202
  %2 = bitcast %struct.def_optype_d** %free_defs to i64*, !dbg !2202
  %3 = load i64, i64* %2, align 8, !dbg !2202
  %4 = bitcast %struct.def_optype_d* %last_def.0.lcssa to i64*, !dbg !2203
  store i64 %3, i64* %4, align 8, !dbg !2203
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2204
  %call7 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %5) #7, !dbg !2205
  %free_defs8 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call7, i64 0, i32 4, !dbg !2206
  store %struct.def_optype_d* %call, %struct.def_optype_d** %free_defs8, align 8, !dbg !2207
  tail call fastcc void @gimple_set_def_ops(%union.gimple_statement_d* %stmt, %struct.def_optype_d* null) #7, !dbg !2208
  br label %if.end, !dbg !2209

if.end:                                           ; preds = %entry, %for.end
  %tobool9 = icmp eq %struct.use_optype_d* %call1, null, !dbg !2210
  br i1 %tobool9, label %if.end25, label %for.cond11.preheader, !dbg !2212

for.cond11.preheader:                             ; preds = %if.end
  br label %for.cond11, !dbg !2213

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc15
  %last_use.0 = phi %struct.use_optype_d* [ %7, %for.inc15 ], [ %call1, %for.cond11.preheader ], !dbg !2216
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last_use.0, metadata !2184, metadata !DIExpression()), !dbg !2185
  %next12 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %last_use.0, i64 0, i32 0, !dbg !2217
  %6 = load %struct.use_optype_d*, %struct.use_optype_d** %next12, align 8, !dbg !2217
  %tobool13 = icmp eq %struct.use_optype_d* %6, null, !dbg !2213
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %last_use.0, i64 0, i32 1, !dbg !2219
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !2219
  br i1 %tobool13, label %for.end17, label %for.inc15, !dbg !2213

for.inc15:                                        ; preds = %for.cond11
  %7 = load %struct.use_optype_d*, %struct.use_optype_d** %next12, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %7, metadata !2184, metadata !DIExpression()), !dbg !2185
  br label %for.cond11, !dbg !2221, !llvm.loop !2222

for.end17:                                        ; preds = %for.cond11
  %last_use.0.lcssa = phi %struct.use_optype_d* [ %last_use.0, %for.cond11 ], !dbg !2216
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last_use.0.lcssa, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last_use.0.lcssa, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last_use.0.lcssa, metadata !2184, metadata !DIExpression()), !dbg !2185
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2224
  %call20 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %8) #7, !dbg !2225
  %free_uses = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call20, i64 0, i32 5, !dbg !2226
  %9 = bitcast %struct.use_optype_d** %free_uses to i64*, !dbg !2226
  %10 = load i64, i64* %9, align 8, !dbg !2226
  %11 = bitcast %struct.use_optype_d* %last_use.0.lcssa to i64*, !dbg !2227
  store i64 %10, i64* %11, align 8, !dbg !2227
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2228
  %call23 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %12) #7, !dbg !2229
  %free_uses24 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call23, i64 0, i32 5, !dbg !2230
  store %struct.use_optype_d* %call1, %struct.use_optype_d** %free_uses24, align 8, !dbg !2231
  tail call fastcc void @gimple_set_use_ops(%union.gimple_statement_d* %stmt, %struct.use_optype_d* null) #7, !dbg !2232
  br label %if.end25, !dbg !2233

if.end25:                                         ; preds = %if.end, %for.end17
  %call26 = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2234
  %tobool27 = icmp eq i8 %call26, 0, !dbg !2234
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !2236

if.then28:                                        ; preds = %if.end25
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %stmt, %union.tree_node* null) #7, !dbg !2237
  tail call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %stmt, %union.tree_node* null) #7, !dbg !2239
  br label %if.end29, !dbg !2240

if.end29:                                         ; preds = %if.end25, %if.then28
  ret void, !dbg !2241
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2247, metadata !DIExpression()), !dbg !2248
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2249
  %tobool = icmp eq i8 %call, 0, !dbg !2249
  br i1 %tobool, label %return, label %if.end, !dbg !2251

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !2252
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !2252
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !2252
  br label %return, !dbg !2253

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !2248
  ret %struct.def_optype_d* %retval.0, !dbg !2254
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2261
  %tobool = icmp eq i8 %call, 0, !dbg !2261
  br i1 %tobool, label %return, label %if.end, !dbg !2263

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !2264
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !2264
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !2264
  br label %return, !dbg !2265

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !2260
  ret %struct.use_optype_d* %retval.0, !dbg !2266
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_def_ops(%union.gimple_statement_d* %g, %struct.def_optype_d* %def) unnamed_addr #0 !dbg !2267 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %def, metadata !2272, metadata !DIExpression()), !dbg !2273
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2274
  %tobool = icmp eq i8 %call, 0, !dbg !2274
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2274

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 1305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2274
  br label %cond.end, !dbg !2274

cond.end:                                         ; preds = %entry, %cond.true
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !2275
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !2275
  store %struct.def_optype_d* %def, %struct.def_optype_d** %0, align 8, !dbg !2276
  ret void, !dbg !2277
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2282, metadata !DIExpression()), !dbg !2283
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2284
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2284
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !2286
  br i1 %cmp, label %return, label %if.end, !dbg !2287

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !2288
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2288
  %2 = load i64, i64* %1, align 8, !dbg !2288
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2289
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !2290
  store i64 %2, i64* %3, align 8, !dbg !2290
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !2291
  %5 = load i64, i64* %4, align 8, !dbg !2291
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !2292
  %7 = load i64*, i64** %6, align 8, !dbg !2292
  store i64 %5, i64* %7, align 8, !dbg !2293
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2294
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2295
  br label %return, !dbg !2296

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2296
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_use_ops(%union.gimple_statement_d* %g, %struct.use_optype_d* %use) unnamed_addr #0 !dbg !2297 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %use, metadata !2302, metadata !DIExpression()), !dbg !2303
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2304
  %tobool = icmp eq i8 %call, 0, !dbg !2304
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2304

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 1326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2304
  br label %cond.end, !dbg !2304

cond.end:                                         ; preds = %entry, %cond.true
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !2305
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !2305
  store %struct.use_optype_d* %use, %struct.use_optype_d** %0, align 8, !dbg !2306
  ret void, !dbg !2307
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2312, metadata !DIExpression()), !dbg !2313
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2314
  %cmp = icmp ugt i32 %call, 5, !dbg !2315
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2316

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2317
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2318
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_vuse(%union.gimple_statement_d* %g, %union.tree_node* %vuse) unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse, metadata !2325, metadata !DIExpression()), !dbg !2326
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2327
  %tobool = icmp eq i8 %call, 0, !dbg !2327
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2327

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 1407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2327
  br label %cond.end, !dbg !2327

cond.end:                                         ; preds = %entry, %cond.true
  %vuse1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2328
  %0 = bitcast %struct.ssa_use_operand_d** %vuse1 to %union.tree_node**, !dbg !2328
  store %union.tree_node* %vuse, %union.tree_node** %0, align 8, !dbg !2329
  ret void, !dbg !2330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_vdef(%union.gimple_statement_d* %g, %union.tree_node* %vdef) unnamed_addr #0 !dbg !2331 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !2334, metadata !DIExpression()), !dbg !2335
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2336
  %tobool = icmp eq i8 %call, 0, !dbg !2336
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2336

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 1416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2336
  br label %cond.end, !dbg !2336

cond.end:                                         ; preds = %entry, %cond.true
  %vdef1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2337
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef1 to %union.tree_node**, !dbg !2337
  store %union.tree_node* %vdef, %union.tree_node** %0, align 8, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local void @update_stmt_operands(%union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2342, metadata !DIExpression()), !dbg !2343
  %call = tail call zeroext i8 @ssa_operands_active() #7, !dbg !2344
  %tobool = icmp eq i8 %call, 0, !dbg !2344
  br i1 %tobool, label %do.end10, label %do.body, !dbg !2346

do.body:                                          ; preds = %entry
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2347
  %tobool1 = icmp eq i8 %0, 0, !dbg !2347
  br i1 %tobool1, label %do.end, label %if.then2, !dbg !2350

if.then2:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 61) #6, !dbg !2347
  br label %do.end, !dbg !2347

do.end:                                           ; preds = %do.body, %if.then2
  %call4 = tail call fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %stmt) #7, !dbg !2351
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2351
  br i1 %tobool5, label %cond.true, label %cond.end, !dbg !2351

cond.true:                                        ; preds = %do.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2351
  br label %cond.end, !dbg !2351

cond.end:                                         ; preds = %do.end, %cond.true
  tail call fastcc void @build_ssa_operands(%union.gimple_statement_d* %stmt) #7, !dbg !2352
  tail call void @gimple_set_modified(%union.gimple_statement_d* %stmt, i8 zeroext 0) #6, !dbg !2353
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !2354
  %tobool7 = icmp eq i8 %1, 0, !dbg !2354
  br i1 %tobool7, label %do.end10, label %if.then8, !dbg !2357

if.then8:                                         ; preds = %cond.end
  tail call void @timevar_pop_1(i32 61) #6, !dbg !2354
  br label %do.end10, !dbg !2354

do.end10:                                         ; preds = %cond.end, %entry, %if.then8
  ret void, !dbg !2358
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2361, metadata !DIExpression()), !dbg !2362
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2363
  %tobool = icmp eq i8 %call, 0, !dbg !2364
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2364

cond.true:                                        ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2365
  %bf.load = load i32, i32* %0, align 8, !dbg !2365
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !2365
  %1 = trunc i32 %bf.lshr to i8, !dbg !2366
  %conv1 = and i8 %1, 1, !dbg !2366
  br label %cond.end, !dbg !2364

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8 [ %conv1, %cond.true ], [ 0, %entry ]
  ret i8 %cond, !dbg !2367
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_ssa_operands(%union.gimple_statement_d* %stmt) unnamed_addr #4 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2370, metadata !DIExpression()), !dbg !2371
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 0) #7, !dbg !2372
  tail call fastcc void @start_ssa_stmt_operands() #7, !dbg !2373
  tail call fastcc void @parse_ssa_operands(%union.gimple_statement_d* %stmt) #7, !dbg !2374
  tail call fastcc void @finalize_ssa_stmt_operands(%union.gimple_statement_d* %stmt) #7, !dbg !2375
  ret void, !dbg !2376
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @swap_tree_operands(%union.gimple_statement_d* %stmt, %union.tree_node** %exp0, %union.tree_node** %exp1) local_unnamed_addr #4 !dbg !2377 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2381, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %union.tree_node** %exp0, metadata !2382, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %union.tree_node** %exp1, metadata !2383, metadata !DIExpression()), !dbg !2394
  %0 = load %union.tree_node*, %union.tree_node** %exp0, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2384, metadata !DIExpression()), !dbg !2394
  %1 = load %union.tree_node*, %union.tree_node** %exp1, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2385, metadata !DIExpression()), !dbg !2394
  %call = tail call zeroext i8 @ssa_operands_active() #7, !dbg !2397
  %tobool = icmp ne i8 %call, 0, !dbg !2397
  %cmp = icmp ne %union.tree_node* %0, %1, !dbg !2398
  %or.cond = and i1 %tobool, %cmp, !dbg !2399
  br i1 %or.cond, label %if.then, label %if.end33, !dbg !2399

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.use_optype_d* null, metadata !2389, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %struct.use_optype_d* null, metadata !2386, metadata !DIExpression()), !dbg !2400
  %call2 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2401
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call2, metadata !2390, metadata !DIExpression()), !dbg !2400
  br label %for.cond, !dbg !2403

for.cond:                                         ; preds = %for.inc, %if.then
  %ptr.0 = phi %struct.use_optype_d* [ %call2, %if.then ], [ %3, %for.inc ], !dbg !2404
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %ptr.0, metadata !2390, metadata !DIExpression()), !dbg !2400
  %tobool3 = icmp eq %struct.use_optype_d* %ptr.0, null, !dbg !2405
  br i1 %tobool3, label %for.end, label %for.body, !dbg !2405

for.body:                                         ; preds = %for.cond
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.0, i64 0, i32 1, i32 3, !dbg !2406
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !2406
  %cmp4 = icmp eq %union.tree_node** %2, %exp0, !dbg !2409
  br i1 %cmp4, label %for.end, label %for.inc, !dbg !2410

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.0, i64 0, i32 0, !dbg !2411
  %3 = load %struct.use_optype_d*, %struct.use_optype_d** %next, align 8, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %3, metadata !2390, metadata !DIExpression()), !dbg !2400
  br label %for.cond, !dbg !2412, !llvm.loop !2413

for.end:                                          ; preds = %for.cond, %for.body
  %use0.0 = phi %struct.use_optype_d* [ null, %for.cond ], [ %ptr.0, %for.body ], !dbg !2400
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %use0.0, metadata !2386, metadata !DIExpression()), !dbg !2400
  %call7 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call7, metadata !2390, metadata !DIExpression()), !dbg !2400
  br label %for.cond8, !dbg !2417

for.cond8:                                        ; preds = %for.inc17, %for.end
  %ptr.1 = phi %struct.use_optype_d* [ %call7, %for.end ], [ %5, %for.inc17 ], !dbg !2418
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %ptr.1, metadata !2390, metadata !DIExpression()), !dbg !2400
  %tobool9 = icmp eq %struct.use_optype_d* %ptr.1, null, !dbg !2419
  br i1 %tobool9, label %for.end19, label %for.body10, !dbg !2419

for.body10:                                       ; preds = %for.cond8
  %use12 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.1, i64 0, i32 1, i32 3, !dbg !2420
  %4 = load %union.tree_node**, %union.tree_node*** %use12, align 8, !dbg !2420
  %cmp13 = icmp eq %union.tree_node** %4, %exp1, !dbg !2423
  br i1 %cmp13, label %for.end19, label %for.inc17, !dbg !2424

for.inc17:                                        ; preds = %for.body10
  %next18 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.1, i64 0, i32 0, !dbg !2425
  %5 = load %struct.use_optype_d*, %struct.use_optype_d** %next18, align 8, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %5, metadata !2390, metadata !DIExpression()), !dbg !2400
  br label %for.cond8, !dbg !2426, !llvm.loop !2427

for.end19:                                        ; preds = %for.cond8, %for.body10
  %use1.0 = phi %struct.use_optype_d* [ null, %for.cond8 ], [ %ptr.1, %for.body10 ], !dbg !2400
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %use1.0, metadata !2389, metadata !DIExpression()), !dbg !2400
  %tobool20 = icmp ne %struct.use_optype_d* %use0.0, null, !dbg !2429
  %tobool22 = icmp ne %struct.use_optype_d* %use1.0, null, !dbg !2430
  %or.cond1 = and i1 %tobool20, %tobool22, !dbg !2431
  br i1 %or.cond1, label %if.then23, label %if.end33, !dbg !2431

if.then23:                                        ; preds = %for.end19
  %use25 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %use1.0, i64 0, i32 1, i32 3, !dbg !2432
  %6 = bitcast %union.tree_node*** %use25 to i64*, !dbg !2432
  %7 = load i64, i64* %6, align 8, !dbg !2432
  %use27 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %use0.0, i64 0, i32 1, i32 3, !dbg !2433
  %8 = bitcast %union.tree_node*** %use27 to i64*, !dbg !2433
  %9 = load i64, i64* %8, align 8, !dbg !2433
  store i64 %9, i64* %6, align 8, !dbg !2434
  store i64 %7, i64* %8, align 8, !dbg !2435
  br label %if.end33, !dbg !2436

if.end33:                                         ; preds = %for.end19, %if.then23, %entry
  store %union.tree_node* %1, %union.tree_node** %exp0, align 8, !dbg !2437
  store %union.tree_node* %0, %union.tree_node** %exp1, align 8, !dbg !2438
  ret void, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @verify_imm_links(%struct._IO_FILE* %f, %union.tree_node* %var) local_unnamed_addr #4 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2444, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2445, metadata !DIExpression()), !dbg !2451
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2452
  %bf.load = load i64, i64* %0, align 8, !dbg !2452
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2452
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2452
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2452

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2452
  br label %cond.end, !dbg !2452

cond.end:                                         ; preds = %entry, %cond.true
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2453
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !2448, metadata !DIExpression()), !dbg !2451
  %use = getelementptr inbounds i40, i40* %imm_uses, i64 3, !dbg !2454
  %2 = bitcast i40* %use to %union.tree_node***, !dbg !2454
  %3 = load %union.tree_node**, %union.tree_node*** %2, align 8, !dbg !2454
  %cmp1 = icmp eq %union.tree_node** %3, null, !dbg !2454
  br i1 %cmp1, label %cond.end4, label %cond.true2, !dbg !2454

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2454
  br label %cond.end4, !dbg !2454

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %prev6 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d**, !dbg !2455
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev6, align 8, !dbg !2455
  %cmp7 = icmp eq %struct.ssa_use_operand_d* %4, null, !dbg !2457
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2451
  %5 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2451
  %6 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %5, align 8, !dbg !2451
  br i1 %cmp7, label %if.then, label %for.cond.preheader, !dbg !2458

for.cond.preheader:                               ; preds = %cond.end4
  br label %for.cond, !dbg !2459

if.then:                                          ; preds = %cond.end4
  %cmp8 = icmp eq %struct.ssa_use_operand_d* %6, null, !dbg !2461
  br i1 %cmp8, label %cleanup, label %cond.true9, !dbg !2461

cond.true9:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2461
  br label %cleanup, !dbg !2461

for.cond:                                         ; preds = %for.cond.preheader, %if.end26
  %prev.0 = phi %struct.ssa_use_operand_d* [ %ptr.0, %if.end26 ], [ %1, %for.cond.preheader ], !dbg !2451
  %ptr.0 = phi %struct.ssa_use_operand_d* [ %10, %if.end26 ], [ %6, %for.cond.preheader ], !dbg !2463
  %count.0 = phi i32 [ %inc, %if.end26 ], [ 0, %for.cond.preheader ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.0, metadata !2446, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %prev.0, metadata !2447, metadata !DIExpression()), !dbg !2451
  %cmp14 = icmp eq %struct.ssa_use_operand_d* %ptr.0, %1, !dbg !2464
  br i1 %cmp14, label %for.end, label %for.body, !dbg !2459

for.body:                                         ; preds = %for.cond
  %prev15 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.0, i64 0, i32 0, !dbg !2466
  %7 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev15, align 8, !dbg !2466
  %cmp16 = icmp eq %struct.ssa_use_operand_d* %prev.0, %7, !dbg !2469
  br i1 %cmp16, label %if.end18, label %error.loopexit2, !dbg !2470

if.end18:                                         ; preds = %for.body
  %use19 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.0, i64 0, i32 3, !dbg !2471
  %8 = load %union.tree_node**, %union.tree_node*** %use19, align 8, !dbg !2471
  %cmp20 = icmp eq %union.tree_node** %8, null, !dbg !2473
  br i1 %cmp20, label %error.loopexit2, label %if.else, !dbg !2474

if.else:                                          ; preds = %if.end18
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !2475
  %cmp23 = icmp eq %union.tree_node* %9, %var, !dbg !2477
  br i1 %cmp23, label %if.end26, label %error.loopexit2, !dbg !2478

if.end26:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.0, metadata !2447, metadata !DIExpression()), !dbg !2451
  %next27 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.0, i64 0, i32 1, !dbg !2479
  %10 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next27, align 8, !dbg !2479
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %10, metadata !2446, metadata !DIExpression()), !dbg !2451
  %inc = add nuw nsw i32 %count.0, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2449, metadata !DIExpression()), !dbg !2451
  %exitcond = icmp eq i32 %inc, 50000002, !dbg !2482
  br i1 %exitcond, label %error.loopexit2, label %for.cond, !dbg !2483, !llvm.loop !2484

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i32 [ %count.0, %for.cond ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %4, metadata !2446, metadata !DIExpression()), !dbg !2451
  br label %for.cond32, !dbg !2486

for.cond32:                                       ; preds = %if.end38, %for.end
  %prev.1 = phi %struct.ssa_use_operand_d* [ %1, %for.end ], [ %ptr.1, %if.end38 ], !dbg !2451
  %ptr.1 = phi %struct.ssa_use_operand_d* [ %4, %for.end ], [ %12, %if.end38 ], !dbg !2488
  %count.1 = phi i32 [ %count.0.lcssa, %for.end ], [ %dec, %if.end38 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.1, metadata !2446, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %prev.1, metadata !2447, metadata !DIExpression()), !dbg !2451
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %ptr.1, %1, !dbg !2489
  br i1 %cmp33, label %for.end43, label %for.body34, !dbg !2491

for.body34:                                       ; preds = %for.cond32
  %next35 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.1, i64 0, i32 1, !dbg !2492
  %11 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next35, align 8, !dbg !2492
  %cmp36 = icmp eq %struct.ssa_use_operand_d* %prev.1, %11, !dbg !2495
  br i1 %cmp36, label %if.end38, label %error.loopexit, !dbg !2496

if.end38:                                         ; preds = %for.body34
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.1, metadata !2447, metadata !DIExpression()), !dbg !2451
  %prev39 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.1, i64 0, i32 0, !dbg !2497
  %12 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev39, align 8, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %12, metadata !2446, metadata !DIExpression()), !dbg !2451
  %dec = add nsw i32 %count.1, -1, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2449, metadata !DIExpression()), !dbg !2451
  %cmp40 = icmp slt i32 %count.1, 0, !dbg !2500
  br i1 %cmp40, label %error.loopexit, label %for.cond32, !dbg !2501, !llvm.loop !2502

for.end43:                                        ; preds = %for.cond32
  %count.1.lcssa = phi i32 [ %count.1, %for.cond32 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.1, metadata !2446, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %count.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  %cmp44 = icmp eq i32 %count.1.lcssa, 0, !dbg !2504
  br i1 %cmp44, label %cleanup, label %error, !dbg !2506

error.loopexit:                                   ; preds = %if.end38, %for.body34
  %ptr.2.ph = phi %struct.ssa_use_operand_d* [ %12, %if.end38 ], [ %ptr.1, %for.body34 ]
  br label %error, !dbg !2507

error.loopexit2:                                  ; preds = %if.end18, %if.end26, %for.body, %if.else
  %ptr.2.ph3 = phi %struct.ssa_use_operand_d* [ %10, %if.end26 ], [ %ptr.0, %if.else ], [ %ptr.0, %if.end18 ], [ %ptr.0, %for.body ]
  br label %error, !dbg !2507

error:                                            ; preds = %error.loopexit2, %error.loopexit, %for.end43
  %ptr.2 = phi %struct.ssa_use_operand_d* [ %1, %for.end43 ], [ %ptr.2.ph, %error.loopexit ], [ %ptr.2.ph3, %error.loopexit2 ], !dbg !2451
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.2, metadata !2446, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.label(metadata !2450), !dbg !2509
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.2, i64 0, i32 2, i32 0, !dbg !2507
  %13 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2507
  %tobool = icmp eq %union.gimple_statement_d* %13, null, !dbg !2510
  br i1 %tobool, label %if.end56, label %land.lhs.true, !dbg !2511

land.lhs.true:                                    ; preds = %error
  %call = tail call fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* nonnull %13) #7, !dbg !2512
  %tobool49 = icmp eq i8 %call, 0, !dbg !2512
  br i1 %tobool49, label %if.end56, label %if.then50, !dbg !2513

if.then50:                                        ; preds = %land.lhs.true
  %14 = bitcast %union.gimple_statement_d** %stmt to i8**, !dbg !2514
  %15 = load i8*, i8** %14, align 8, !dbg !2514
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %15) #6, !dbg !2516
  %16 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2517
  tail call void @print_gimple_stmt(%struct._IO_FILE* %f, %union.gimple_statement_d* %16, i32 0, i32 2) #6, !dbg !2518
  br label %if.end56, !dbg !2519

if.end56:                                         ; preds = %land.lhs.true, %error, %if.then50
  %use57 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.2, i64 0, i32 3, !dbg !2520
  %17 = bitcast %union.tree_node*** %use57 to i8**, !dbg !2520
  %18 = load i8*, i8** %17, align 8, !dbg !2520
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), %struct.ssa_use_operand_d* %ptr.2, i8* %18) #6, !dbg !2521
  %call59 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %ptr.2) #7, !dbg !2522
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call59, i32 2) #6, !dbg !2523
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2524
  br label %cleanup, !dbg !2525

cleanup:                                          ; preds = %for.end43, %cond.true9, %if.then, %if.end56
  %retval.0 = phi i8 [ 1, %if.end56 ], [ 0, %if.then ], [ 0, %cond.true9 ], [ 0, %for.end43 ], !dbg !2451
  ret i8 %retval.0, !dbg !2526
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #1

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2527 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2531, metadata !DIExpression()), !dbg !2532
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2533
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2533
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2534
  ret %union.tree_node* %1, !dbg !2535
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_immediate_uses_for(%struct._IO_FILE* %file, %union.tree_node* %var) local_unnamed_addr #4 !dbg !2536 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2540, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2541, metadata !DIExpression()), !dbg !2551
  %0 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !2552
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !2552
  %tobool = icmp eq %union.tree_node* %var, null, !dbg !2553
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !2553

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2553
  %bf.load = load i64, i64* %1, align 8, !dbg !2553
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2553
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2553
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2553

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2553
  br label %cond.end, !dbg !2553

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %var, i32 2) #6, !dbg !2554
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2555
  %call1 = tail call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) #7, !dbg !2556
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2556
  br i1 %tobool2, label %if.else, label %if.then, !dbg !2558

if.then:                                          ; preds = %cond.end
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2559
  br label %if.end11, !dbg !2559

if.else:                                          ; preds = %cond.end
  %call4 = tail call fastcc zeroext i8 @has_single_use(%union.tree_node* %var) #7, !dbg !2560
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2560
  br i1 %tobool5, label %if.else8, label %if.then6, !dbg !2562

if.then6:                                         ; preds = %if.else
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2563
  br label %if.end11, !dbg !2563

if.else8:                                         ; preds = %if.else
  %call9 = tail call fastcc i32 @num_imm_uses(%union.tree_node* %var) #7, !dbg !2564
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %call9) #6, !dbg !2565
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.else8, %if.then
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call12 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %var) #7, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !2550, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2566

for.cond:                                         ; preds = %for.inc, %if.end11
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call12, %if.end11 ], [ %call32, %for.inc ], !dbg !2568
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call13 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2569
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2569
  br i1 %tobool14, label %for.body, label %for.end, !dbg !2566

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !2571
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2571
  %cmp15 = icmp eq %union.gimple_statement_d* %2, null, !dbg !2574
  br i1 %cmp15, label %land.lhs.true16, label %if.else20, !dbg !2575

land.lhs.true16:                                  ; preds = %for.body
  %use = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 3, !dbg !2576
  %3 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !2576
  %cmp17 = icmp eq %union.tree_node** %3, null, !dbg !2577
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !2578

if.then18:                                        ; preds = %land.lhs.true16
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2579
  br label %for.inc, !dbg !2579

if.else20:                                        ; preds = %land.lhs.true16, %for.body
  %call21 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2580
  %call22 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call21) #6, !dbg !2582
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2582
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2583
  br i1 %tobool23, label %if.then24, label %if.else27, !dbg !2584

if.then24:                                        ; preds = %if.else20
  call void @print_gimple_stmt(%struct._IO_FILE* %file, %union.gimple_statement_d* %4, i32 0, i32 16448) #6, !dbg !2585
  br label %for.inc, !dbg !2585

if.else27:                                        ; preds = %if.else20
  call void @print_gimple_stmt(%struct._IO_FILE* %file, %union.gimple_statement_d* %4, i32 0, i32 2) #6, !dbg !2586
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.else27, %if.then24
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call32 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !2550, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2569, !llvm.loop !2587

for.end:                                          ; preds = %for.cond
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !2590
  ret void, !dbg !2590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2598, metadata !DIExpression()), !dbg !2603
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2604
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2599, metadata !DIExpression()), !dbg !2603
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2605
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2605
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2605
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !2607
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2608

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2609
  %tobool = icmp eq i32 %3, 0, !dbg !2609
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !2611

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !2612
  br label %cleanup, !dbg !2613

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !2603
  ret i8 %retval.0, !dbg !2614
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_single_use(%union.tree_node* %var) unnamed_addr #0 !dbg !2615 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2617, metadata !DIExpression()), !dbg !2619
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2620
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2618, metadata !DIExpression()), !dbg !2619
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2621
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2621
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2621
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !2623
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2624

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !2625
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !2625
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !2627
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2628

if.then4:                                         ; preds = %if.end
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !2629
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2629
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !2630
  %tobool = icmp eq i8 %call, 0, !dbg !2631
  %conv = zext i1 %tobool to i8, !dbg !2631
  br label %cleanup, !dbg !2632

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2633
  %tobool7 = icmp eq i32 %5, 0, !dbg !2633
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !2635

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** null, %union.gimple_statement_d** null) #6, !dbg !2636
  br label %cleanup, !dbg !2637

cleanup:                                          ; preds = %if.end6, %entry, %if.end9, %if.then4
  %retval.0 = phi i8 [ %conv, %if.then4 ], [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %if.end6 ], !dbg !2619
  ret i8 %retval.0, !dbg !2638
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_imm_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !2639 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2643, metadata !DIExpression()), !dbg !2647
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2648
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !2646, metadata !DIExpression()), !dbg !2647
  %1 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2649
  %tobool = icmp eq i32 %1, 0, !dbg !2649
  %next2 = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2651
  %2 = bitcast i40* %next2 to %struct.ssa_use_operand_d**, !dbg !2651
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %2, align 8, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %3, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %3, metadata !2645, metadata !DIExpression()), !dbg !2647
  br i1 %tobool, label %for.cond.preheader, label %for.cond3.preheader, !dbg !2652

for.cond3.preheader:                              ; preds = %entry
  br label %for.cond3, !dbg !2653

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2655

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %ptr.0 = phi %struct.ssa_use_operand_d* [ %4, %for.body ], [ %3, %for.cond.preheader ], !dbg !2657
  %num.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.0, metadata !2645, metadata !DIExpression()), !dbg !2647
  %cmp = icmp eq %struct.ssa_use_operand_d* %ptr.0, %0, !dbg !2658
  br i1 %cmp, label %if.end12.loopexit, label %for.body, !dbg !2655

for.body:                                         ; preds = %for.cond
  %inc = add i32 %num.0, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2646, metadata !DIExpression()), !dbg !2647
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.0, i64 0, i32 1, !dbg !2661
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next1, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %4, metadata !2645, metadata !DIExpression()), !dbg !2647
  br label %for.cond, !dbg !2662, !llvm.loop !2663

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %ptr.1 = phi %struct.ssa_use_operand_d* [ %6, %for.body5 ], [ %3, %for.cond3.preheader ], !dbg !2665
  %num.1 = phi i32 [ %spec.select, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2666
  call void @llvm.dbg.value(metadata i32 %num.1, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %ptr.1, metadata !2645, metadata !DIExpression()), !dbg !2647
  %cmp4 = icmp eq %struct.ssa_use_operand_d* %ptr.1, %0, !dbg !2667
  br i1 %cmp4, label %if.end12.loopexit1, label %for.body5, !dbg !2653

for.body5:                                        ; preds = %for.cond3
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.1, i64 0, i32 2, i32 0, !dbg !2669
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2669
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %5) #7, !dbg !2671
  %tobool6 = icmp eq i8 %call, 0, !dbg !2671
  %inc8 = zext i1 %tobool6 to i32, !dbg !2672
  %spec.select = add i32 %num.1, %inc8, !dbg !2672
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2646, metadata !DIExpression()), !dbg !2647
  %next10 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %ptr.1, i64 0, i32 1, !dbg !2673
  %6 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next10, align 8, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %6, metadata !2645, metadata !DIExpression()), !dbg !2647
  br label %for.cond3, !dbg !2674, !llvm.loop !2675

if.end12.loopexit:                                ; preds = %for.cond
  %num.0.lcssa = phi i32 [ %num.0, %for.cond ], !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  br label %if.end12, !dbg !2677

if.end12.loopexit1:                               ; preds = %for.cond3
  %num.1.lcssa = phi i32 [ %num.1, %for.cond3 ], !dbg !2666
  call void @llvm.dbg.value(metadata i32 %num.1.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.1.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %num.1.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2647
  br label %if.end12, !dbg !2677

if.end12:                                         ; preds = %if.end12.loopexit1, %if.end12.loopexit
  %num.3 = phi i32 [ %num.0.lcssa, %if.end12.loopexit ], [ %num.1.lcssa, %if.end12.loopexit1 ], !dbg !2666
  call void @llvm.dbg.value(metadata i32 %num.3, metadata !2646, metadata !DIExpression()), !dbg !2647
  ret i32 %num.3, !dbg !2677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !2678 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2684, metadata !DIExpression()), !dbg !2685
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2686
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2687
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !2688
  store i40* %imm_uses, i40** %0, align 8, !dbg !2688
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2689
  %1 = bitcast i40* %next to i64*, !dbg !2689
  %2 = load i64, i64* %1, align 8, !dbg !2689
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2690
  store i64 %2, i64* %3, align 8, !dbg !2690
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !2691
  %tobool = icmp eq i8 %call, 0, !dbg !2691
  br i1 %tobool, label %if.end, label %return, !dbg !2693

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2694
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !2694
  br label %return, !dbg !2695

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !2685
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2696
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2697 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2703, metadata !DIExpression()), !dbg !2704
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2705
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2705
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2706
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !2706
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !2707
  %conv1 = zext i1 %cmp to i8, !dbg !2708
  ret i8 %conv1, !dbg !2709
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2714, metadata !DIExpression()), !dbg !2716
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2717
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2715, metadata !DIExpression()), !dbg !2716
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2718
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2718
  %2 = load i64, i64* %1, align 8, !dbg !2718
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2719
  store i64 %2, i64* %3, align 8, !dbg !2719
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !2720
  %tobool = icmp eq i8 %call, 0, !dbg !2720
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2722

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2723
  br label %cleanup, !dbg !2724

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !2716
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_immediate_uses(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2730, metadata !DIExpression()), !dbg !2733
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2734
  call void @llvm.dbg.value(metadata i32 1, metadata !2732, metadata !DIExpression()), !dbg !2733
  br label %for.cond, !dbg !2735

for.cond:                                         ; preds = %for.inc, %entry
  %x.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !2737
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !2732, metadata !DIExpression()), !dbg !2733
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2738
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2738
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2738
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2738
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2738
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !2738
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2738

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !2738
  br label %cond.end, !dbg !2738

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2738
  %call4 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2738
  %cmp = icmp ult i32 %x.0, %call4, !dbg !2740
  br i1 %cmp, label %for.body, label %for.end, !dbg !2741

for.body:                                         ; preds = %cond.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2742
  %gimple_df6 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !2742
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df6, align 8, !dbg !2742
  %ssa_names7 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !2742
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names7, align 8, !dbg !2742
  %tobool8 = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !2742
  br i1 %tobool8, label %cond.end15, label %cond.true9, !dbg !2742

cond.true9:                                       ; preds = %for.body
  %base13 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !2742
  br label %cond.end15, !dbg !2742

cond.end15:                                       ; preds = %for.body, %cond.true9
  %cond16 = phi %struct.VEC_tree_base* [ %base13, %cond.true9 ], [ null, %for.body ], !dbg !2742
  %call17 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond16, i32 %x.0) #7, !dbg !2742
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !2731, metadata !DIExpression()), !dbg !2733
  %tobool18 = icmp eq %union.tree_node* %call17, null, !dbg !2744
  br i1 %tobool18, label %for.inc, label %if.end, !dbg !2746

if.end:                                           ; preds = %cond.end15
  tail call void @dump_immediate_uses_for(%struct._IO_FILE* %file, %union.tree_node* nonnull %call17) #7, !dbg !2747
  br label %for.inc, !dbg !2748

for.inc:                                          ; preds = %cond.end15, %if.end
  %inc = add i32 %x.0, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2732, metadata !DIExpression()), !dbg !2733
  br label %for.cond, !dbg !2750, !llvm.loop !2751

for.end:                                          ; preds = %cond.end
  ret void, !dbg !2753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2760, metadata !DIExpression()), !dbg !2761
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2762
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2762

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2762
  %0 = load i32, i32* %num, align 8, !dbg !2762
  br label %cond.end, !dbg !2762

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2762
  ret i32 %cond, !dbg !2762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2763 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2768, metadata !DIExpression()), !dbg !2769
  br label %land.end, !dbg !2770

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2770
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2770
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2770
  ret %union.tree_node* %0, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_immediate_uses() local_unnamed_addr #4 !dbg !2771 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2772
  tail call void @dump_immediate_uses(%struct._IO_FILE* %0) #7, !dbg !2773
  ret void, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_immediate_uses_for(%union.tree_node* %var) local_unnamed_addr #4 !dbg !2775 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2779, metadata !DIExpression()), !dbg !2780
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2781
  tail call void @dump_immediate_uses_for(%struct._IO_FILE* %0, %union.tree_node* %var) #7, !dbg !2782
  ret void, !dbg !2783
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_stmt_vdef(%union.gimple_statement_d* %stmt) local_unnamed_addr #4 !dbg !2784 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2786, metadata !DIExpression()), !dbg !2791
  %0 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !2792
  %call = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !2793
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2790, metadata !DIExpression()), !dbg !2791
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2794
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2796

lor.lhs.false:                                    ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2797
  %bf.load = load i64, i64* %1, align 8, !dbg !2797
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2798
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2798
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2799

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call2 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call1) #7, !dbg !2800
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2789, metadata !DIExpression()), !dbg !2791
  br label %for.cond, !dbg !2800

for.cond:                                         ; preds = %for.inc13, %if.end
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call3 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2802
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2802
  br i1 %tobool4, label %for.body, label %for.end15, !dbg !2800

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call5 = call fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call5, metadata !2787, metadata !DIExpression()), !dbg !2791
  br label %for.cond6, !dbg !2804

for.cond6:                                        ; preds = %for.body10, %for.body
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call5, %for.body ], [ %call12, %for.body10 ], !dbg !2807
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call7 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2808
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2808
  br i1 %tobool8, label %for.body10, label %for.inc13, !dbg !2804

for.body10:                                       ; preds = %for.cond6
  %call11 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !2810
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0, %union.tree_node* %call11) #7, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call12 = call fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2808
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !2787, metadata !DIExpression()), !dbg !2791
  br label %for.cond6, !dbg !2808, !llvm.loop !2811

for.inc13:                                        ; preds = %for.cond6
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call14 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !2802
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !2789, metadata !DIExpression()), !dbg !2791
  br label %for.cond, !dbg !2802, !llvm.loop !2813

for.end15:                                        ; preds = %for.cond
  %call16 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !2815
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2815
  %bf.load18 = load i64, i64* %2, align 8, !dbg !2815
  %bf.cast202 = and i64 %bf.load18, 4194304, !dbg !2815
  %tobool21 = icmp eq i64 %bf.cast202, 0, !dbg !2815
  br i1 %tobool21, label %cleanup, label %if.then22, !dbg !2817

if.then22:                                        ; preds = %for.end15
  %call23 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !2818
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2818
  %bf.load25 = load i64, i64* %3, align 8, !dbg !2819
  %bf.set = or i64 %bf.load25, 4194304, !dbg !2819
  store i64 %bf.set, i64* %3, align 8, !dbg !2819
  br label %cleanup, !dbg !2818

cleanup:                                          ; preds = %for.end15, %lor.lhs.false, %entry, %if.then22
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !2820
  ret void, !dbg !2820
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2821 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2825, metadata !DIExpression()), !dbg !2826
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2827
  %tobool = icmp eq i8 %call, 0, !dbg !2827
  br i1 %tobool, label %return, label %if.end, !dbg !2829

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2830
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2830
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2830
  br label %return, !dbg !2831

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2826
  ret %union.tree_node* %retval.0, !dbg !2832
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !2833 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2838, metadata !DIExpression()), !dbg !2839
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2840
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2841
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !2842
  store i40* %imm_uses, i40** %0, align 8, !dbg !2842
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2843
  %1 = bitcast i40* %next to i64*, !dbg !2843
  %2 = load i64, i64* %1, align 8, !dbg !2843
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2844
  store i64 %2, i64* %3, align 8, !dbg !2844
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2845
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !2846
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !2847
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2848
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !2849
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !2850
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !2851
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !2852
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !2853
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !2854
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !2855
  %tobool = icmp eq i8 %call, 0, !dbg !2855
  br i1 %tobool, label %if.end, label %return, !dbg !2857

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2858
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !2858
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !2859
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !2860
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !2860
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !2860
  br label %return, !dbg !2861

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !2839
  ret %union.gimple_statement_d* %retval.0, !dbg !2862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2863 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2865, metadata !DIExpression()), !dbg !2866
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2867
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2867
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2868
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !2868
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !2869
  %conv1 = zext i1 %cmp to i8, !dbg !2870
  ret i8 %conv1, !dbg !2871
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2872 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2874, metadata !DIExpression()), !dbg !2875
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2876
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2876
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2877
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2877
  %2 = load i64, i64* %1, align 8, !dbg !2877
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2878
  %3 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !2879
  store i64 %2, i64* %3, align 8, !dbg !2879
  ret %struct.ssa_use_operand_d* %0, !dbg !2880
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2881 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2883, metadata !DIExpression()), !dbg !2884
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2885
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2885
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2886
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %iter_node, !dbg !2887
  %conv1 = zext i1 %cmp to i8, !dbg !2888
  ret i8 %conv1, !dbg !2889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !2890 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2894, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2895, metadata !DIExpression()), !dbg !2896
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !2897
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2898
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2898
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !2899
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !2900
  ret void, !dbg !2901
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2904, metadata !DIExpression()), !dbg !2905
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2906
  %tobool = icmp eq i8 %call, 0, !dbg !2906
  br i1 %tobool, label %return, label %if.end, !dbg !2908

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2909
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2909
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2909
  br label %return, !dbg !2910

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2905
  ret %union.tree_node* %retval.0, !dbg !2911
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2914, metadata !DIExpression()), !dbg !2915
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2916
  %0 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !2916
  %1 = load i64, i64* %0, align 8, !dbg !2916
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2917
  store i64 %1, i64* %2, align 8, !dbg !2917
  %call = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !2918
  %tobool = icmp eq i8 %call, 0, !dbg !2918
  br i1 %tobool, label %if.else, label %return, !dbg !2920

if.else:                                          ; preds = %entry
  %imm_use1 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2921
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use1, align 8, !dbg !2921
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 1, !dbg !2923
  %4 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2923
  %5 = load i64, i64* %4, align 8, !dbg !2923
  store i64 %5, i64* %0, align 8, !dbg !2924
  br label %return, !dbg !2925

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi %struct.ssa_use_operand_d* [ %3, %if.else ], [ null, %entry ], !dbg !2926
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2928 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2932, metadata !DIExpression()), !dbg !2933
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !2934
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2934
  %1 = load i64, i64* %0, align 8, !dbg !2934
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2935
  store i64 %1, i64* %2, align 8, !dbg !2935
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !2936
  %tobool = icmp eq i8 %call, 0, !dbg !2936
  br i1 %tobool, label %if.end4, label %if.then, !dbg !2938

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !2939
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2939
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !2942
  br i1 %cmp, label %return, label %if.then2, !dbg !2943

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2944
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #7, !dbg !2945
  br label %return, !dbg !2945

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2946
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !2946
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !2947
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !2948
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !2948
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2948
  br label %return, !dbg !2949

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !2933
  ret %union.gimple_statement_d* %retval.0, !dbg !2950
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #1

declare dso_local %struct.var_ann_d* @create_var_ann(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2951 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2953, metadata !DIExpression()), !dbg !2954
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2955
  %cmp = icmp eq i32 %call, 0, !dbg !2956
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2957

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2958
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2959
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2960
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2961 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2965, metadata !DIExpression()), !dbg !2966
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2967
  %bf.load = load i32, i32* %0, align 8, !dbg !2967
  %bf.clear = and i32 %bf.load, 255, !dbg !2967
  ret i32 %bf.clear, !dbg !2968
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext %volatilep) unnamed_addr #0 !dbg !2969 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 %volatilep, metadata !2974, metadata !DIExpression()), !dbg !2975
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2976
  %tobool = icmp eq i8 %call, 0, !dbg !2976
  br i1 %tobool, label %if.end, label %if.then, !dbg !2978

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2979
  %bf.load = load i32, i32* %0, align 8, !dbg !2980
  %1 = and i8 %volatilep, 1, !dbg !2980
  %bf.value = zext i8 %1 to i32, !dbg !2980
  %bf.shl = shl nuw nsw i32 %bf.value, 14, !dbg !2980
  %bf.clear = and i32 %bf.load, -16385, !dbg !2980
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !2980
  store i32 %bf.set, i32* %0, align 8, !dbg !2980
  br label %if.end, !dbg !2981

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2982
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @start_ssa_stmt_operands() unnamed_addr #0 !dbg !2983 {
entry:
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !2984
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2984
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !2984
  %cmp = icmp eq i32 %call, 0, !dbg !2984
  br i1 %cmp, label %cond.end3, label %cond.true1, !dbg !2984

cond.true1:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2984
  br label %cond.end3, !dbg !2984

cond.end3:                                        ; preds = %entry, %cond.true1
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_uses, align 8, !dbg !2985
  %base7 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !2985
  %call11 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base7) #7, !dbg !2985
  %cmp12 = icmp eq i32 %call11, 0, !dbg !2985
  br i1 %cmp12, label %cond.end15, label %cond.true13, !dbg !2985

cond.true13:                                      ; preds = %cond.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 571, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2985
  br label %cond.end15, !dbg !2985

cond.end15:                                       ; preds = %cond.end3, %cond.true13
  %2 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !2986
  %cmp17 = icmp eq %union.tree_node* %2, null, !dbg !2986
  br i1 %cmp17, label %cond.end20, label %cond.true18, !dbg !2986

cond.true18:                                      ; preds = %cond.end15
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2986
  br label %cond.end20, !dbg !2986

cond.end20:                                       ; preds = %cond.end15, %cond.true18
  %3 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !2987
  %cmp22 = icmp eq %union.tree_node* %3, null, !dbg !2987
  br i1 %cmp22, label %cond.end25, label %cond.true23, !dbg !2987

cond.true23:                                      ; preds = %cond.end20
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 573, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2987
  br label %cond.end25, !dbg !2987

cond.end25:                                       ; preds = %cond.end20, %cond.true23
  ret void, !dbg !2988
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_ssa_operands(%union.gimple_statement_d* %stmt) unnamed_addr #4 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2991, metadata !DIExpression()), !dbg !2998
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2999
  call void @llvm.dbg.value(metadata i32 %call, metadata !2992, metadata !DIExpression()), !dbg !2998
  %cmp = icmp eq i32 %call, 7, !dbg !3000
  br i1 %cmp, label %if.then, label %if.else, !dbg !3001

if.then:                                          ; preds = %entry
  tail call fastcc void @get_asm_expr_operands(%union.gimple_statement_d* %stmt) #7, !dbg !3002
  br label %if.end29, !dbg !3002

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #7, !dbg !3003
  %tobool = icmp eq i8 %call1, 0, !dbg !3003
  br i1 %tobool, label %if.else10, label %if.then2, !dbg !3004

if.then2:                                         ; preds = %if.else
  %call3 = tail call fastcc zeroext i8 @gimple_debug_bind_p(%union.gimple_statement_d* %stmt) #7, !dbg !3005
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3005
  br i1 %tobool4, label %if.end29, label %land.lhs.true, !dbg !3008

land.lhs.true:                                    ; preds = %if.then2
  %call5 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(%union.gimple_statement_d* %stmt) #7, !dbg !3009
  %tobool7 = icmp eq i8 %call5, 0, !dbg !3009
  br i1 %tobool7, label %if.end29, label %if.then8, !dbg !3010

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call fastcc %union.tree_node** @gimple_debug_bind_get_value_ptr(%union.gimple_statement_d* %stmt) #7, !dbg !3011
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** %call9, i32 2) #7, !dbg !3012
  br label %if.end29, !dbg !3012

if.else10:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 0, metadata !2997, metadata !DIExpression()), !dbg !3013
  switch i32 %call, label %if.end17 [
    i32 6, label %if.then15
    i32 8, label %if.then15
  ], !dbg !3014

if.then15:                                        ; preds = %if.else10, %if.else10
  %call16 = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %stmt, i32 0) #7, !dbg !3016
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** %call16, i32 1) #7, !dbg !3018
  call void @llvm.dbg.value(metadata i64 1, metadata !2997, metadata !DIExpression()), !dbg !3013
  br label %if.end17, !dbg !3019

if.end17:                                         ; preds = %if.else10, %if.then15
  %start.0 = phi i64 [ 1, %if.then15 ], [ 0, %if.else10 ], !dbg !3013
  call void @llvm.dbg.value(metadata i64 %start.0, metadata !2997, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %start.0, metadata !2993, metadata !DIExpression()), !dbg !3013
  br label %for.cond, !dbg !3020

for.cond:                                         ; preds = %for.body, %if.end17
  %i.0 = phi i64 [ %start.0, %if.end17 ], [ %inc, %for.body ], !dbg !3022
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2993, metadata !DIExpression()), !dbg !3013
  %call18 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3023
  %conv19 = zext i32 %call18 to i64, !dbg !3023
  %cmp20 = icmp ult i64 %i.0, %conv19, !dbg !3025
  br i1 %cmp20, label %for.body, label %for.end, !dbg !3026

for.body:                                         ; preds = %for.cond
  %conv22 = trunc i64 %i.0 to i32, !dbg !3027
  %call23 = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %stmt, i32 %conv22) #7, !dbg !3028
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** %call23, i32 0) #7, !dbg !3029
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2993, metadata !DIExpression()), !dbg !3013
  br label %for.cond, !dbg !3031, !llvm.loop !3032

for.end:                                          ; preds = %for.cond
  %cmp24 = icmp eq i32 %call, 8, !dbg !3034
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !3036

if.then26:                                        ; preds = %for.end
  tail call fastcc void @maybe_add_call_vops(%union.gimple_statement_d* %stmt) #7, !dbg !3037
  br label %if.end29, !dbg !3037

if.end29:                                         ; preds = %land.lhs.true, %if.then2, %if.then8, %if.then26, %for.end, %if.then
  ret void, !dbg !3038
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @finalize_ssa_stmt_operands(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3039 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3041, metadata !DIExpression()), !dbg !3042
  tail call fastcc void @finalize_ssa_defs(%union.gimple_statement_d* %stmt) #7, !dbg !3043
  tail call fastcc void @finalize_ssa_uses(%union.gimple_statement_d* %stmt) #7, !dbg !3044
  tail call fastcc void @cleanup_build_arrays() #7, !dbg !3045
  ret void, !dbg !3046
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_asm_expr_operands(%union.gimple_statement_d* %stmt) unnamed_addr #4 !dbg !3047 {
entry:
  %constraint = alloca i8*, align 8
  %allows_mem = alloca i8, align 1
  %allows_reg = alloca i8, align 1
  %is_inout = alloca i8, align 1
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3049, metadata !DIExpression()), !dbg !3075
  %0 = bitcast i8** %constraint to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %allows_mem, metadata !3054, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %allows_mem) #8, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %allows_reg, metadata !3055, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %allows_reg) #8, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %is_inout, metadata !3056, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %is_inout) #8, !dbg !3077
  %call = tail call fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %stmt) #7, !dbg !3078
  %conv = zext i32 %call to i64, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3051, metadata !DIExpression()), !dbg !3075
  %1 = alloca i8*, i64 %conv, align 16, !dbg !3079
  call void @llvm.dbg.value(metadata i8** %1, metadata !3052, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 0, metadata !3050, metadata !DIExpression()), !dbg !3075
  br label %for.cond, !dbg !3080

for.cond:                                         ; preds = %if.end22, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %if.end22 ], !dbg !3081
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3050, metadata !DIExpression()), !dbg !3075
  %call1 = call fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %stmt) #7, !dbg !3082
  %conv2 = zext i32 %call1 to i64, !dbg !3082
  %cmp = icmp ult i64 %i.0, %conv2, !dbg !3083
  br i1 %cmp, label %for.body, label %for.cond25.preheader, !dbg !3084

for.cond25.preheader:                             ; preds = %for.cond
  br label %for.cond25, !dbg !3085

for.body:                                         ; preds = %for.cond
  %conv4 = trunc i64 %i.0 to i32, !dbg !3086
  %call5 = call fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %stmt, i32 %conv4) #7, !dbg !3087
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3057, metadata !DIExpression()), !dbg !3088
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3089
  %2 = bitcast i32* %purpose to %struct.tree_list**, !dbg !3089
  %3 = load %struct.tree_list*, %struct.tree_list** %2, align 8, !dbg !3089
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %3, i64 0, i32 2, !dbg !3089
  %4 = bitcast %union.tree_node** %value to %struct.tree_string**, !dbg !3089
  %5 = load %struct.tree_string*, %struct.tree_string** %4, align 8, !dbg !3089
  %arraydecay = getelementptr inbounds %struct.tree_string, %struct.tree_string* %5, i64 0, i32 2, i64 0, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !3053, metadata !DIExpression()), !dbg !3075
  store i8* %arraydecay, i8** %constraint, align 8, !dbg !3090
  %.cast = ptrtoint i8* %arraydecay to i64, !dbg !3091
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %i.0, !dbg !3092
  %6 = bitcast i8** %arrayidx to i64*, !dbg !3093
  store i64 %.cast, i64* %6, align 8, !dbg !3093
  call void @llvm.dbg.value(metadata i8** %constraint, metadata !3053, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %allows_mem, metadata !3054, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %allows_reg, metadata !3055, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %is_inout, metadata !3056, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  %call8 = call zeroext i8 @parse_output_constraint(i8** nonnull %constraint, i32 %conv4, i32 0, i32 0, i8* nonnull %allows_mem, i8* nonnull %allows_reg, i8* nonnull %is_inout) #6, !dbg !3094
  %7 = load i8, i8* %allows_reg, align 1, !dbg !3095
  call void @llvm.dbg.value(metadata i8 %7, metadata !3055, metadata !DIExpression()), !dbg !3075
  %tobool = icmp ne i8 %7, 0, !dbg !3095
  %8 = load i8, i8* %is_inout, align 1, !dbg !3095
  call void @llvm.dbg.value(metadata i8 %8, metadata !3056, metadata !DIExpression()), !dbg !3075
  %tobool9 = icmp ne i8 %8, 0, !dbg !3095
  %or.cond = and i1 %tobool, %tobool9, !dbg !3095
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !3095

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 796, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3095
  %.pre = load i8, i8* %allows_reg, align 1, !dbg !3096
  br label %cond.end, !dbg !3095

cond.end:                                         ; preds = %for.body, %cond.true
  %9 = phi i8 [ %7, %for.body ], [ %.pre, %cond.true ], !dbg !3096
  call void @llvm.dbg.value(metadata i8 %9, metadata !3055, metadata !DIExpression()), !dbg !3075
  %tobool10 = icmp eq i8 %9, 0, !dbg !3096
  br i1 %tobool10, label %land.lhs.true, label %if.end22, !dbg !3097

land.lhs.true:                                    ; preds = %cond.end
  %10 = load i8, i8* %allows_mem, align 1, !dbg !3098
  call void @llvm.dbg.value(metadata i8 %10, metadata !3054, metadata !DIExpression()), !dbg !3075
  %tobool12 = icmp eq i8 %10, 0, !dbg !3098
  br i1 %tobool12, label %if.end22, label %if.then, !dbg !3099

if.then:                                          ; preds = %land.lhs.true
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3100
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3100
  %call15 = call %union.tree_node* @get_base_address(%union.tree_node* %12) #6, !dbg !3101
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3061, metadata !DIExpression()), !dbg !3102
  %tobool16 = icmp eq %union.tree_node* %call15, null, !dbg !3103
  br i1 %tobool16, label %if.end22, label %land.lhs.true17, !dbg !3105

land.lhs.true17:                                  ; preds = %if.then
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3106
  %bf.load = load i64, i64* %13, align 8, !dbg !3106
  %bf.cast = and i64 %bf.load, 65535, !dbg !3106
  %arrayidx18 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3106
  %14 = load i32, i32* %arrayidx18, align 4, !dbg !3106
  %cmp19 = icmp eq i32 %14, 3, !dbg !3106
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3107

if.then21:                                        ; preds = %land.lhs.true17
  call fastcc void @mark_address_taken(%union.tree_node* nonnull %call15) #7, !dbg !3108
  br label %if.end22, !dbg !3108

if.end22:                                         ; preds = %if.then, %land.lhs.true, %cond.end, %land.lhs.true17, %if.then21
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3109
  call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %15, i32 1) #7, !dbg !3110
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3050, metadata !DIExpression()), !dbg !3075
  br label %for.cond, !dbg !3112, !llvm.loop !3113

for.cond25:                                       ; preds = %for.cond25.preheader, %if.end64
  %i.1 = phi i64 [ %inc68, %if.end64 ], [ 0, %for.cond25.preheader ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3050, metadata !DIExpression()), !dbg !3075
  %call26 = call fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %stmt) #7, !dbg !3116
  %conv27 = zext i32 %call26 to i64, !dbg !3116
  %cmp28 = icmp ult i64 %i.1, %conv27, !dbg !3117
  br i1 %cmp28, label %for.body30, label %for.cond70.preheader, !dbg !3085

for.cond70.preheader:                             ; preds = %for.cond25
  br label %for.cond70, !dbg !3118

for.body30:                                       ; preds = %for.cond25
  %conv32 = trunc i64 %i.1 to i32, !dbg !3119
  %call33 = call fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %stmt, i32 %conv32) #7, !dbg !3120
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !3064, metadata !DIExpression()), !dbg !3121
  %purpose35 = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3122
  %16 = bitcast i32* %purpose35 to %struct.tree_list**, !dbg !3122
  %17 = load %struct.tree_list*, %struct.tree_list** %16, align 8, !dbg !3122
  %value37 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %17, i64 0, i32 2, !dbg !3122
  %18 = bitcast %union.tree_node** %value37 to %struct.tree_string**, !dbg !3122
  %19 = load %struct.tree_string*, %struct.tree_string** %18, align 8, !dbg !3122
  %arraydecay40 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %19, i64 0, i32 2, i64 0, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %arraydecay40, metadata !3053, metadata !DIExpression()), !dbg !3075
  store i8* %arraydecay40, i8** %constraint, align 8, !dbg !3123
  call void @llvm.dbg.value(metadata i8** %constraint, metadata !3053, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %allows_mem, metadata !3054, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %allows_reg, metadata !3055, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  %call42 = call zeroext i8 @parse_input_constraint(i8** nonnull %constraint, i32 0, i32 0, i32 %call, i32 0, i8** nonnull %1, i8* nonnull %allows_mem, i8* nonnull %allows_reg) #6, !dbg !3124
  %20 = load i8, i8* %allows_reg, align 1, !dbg !3125
  call void @llvm.dbg.value(metadata i8 %20, metadata !3055, metadata !DIExpression()), !dbg !3075
  %tobool43 = icmp eq i8 %20, 0, !dbg !3125
  br i1 %tobool43, label %land.lhs.true44, label %if.end64, !dbg !3126

land.lhs.true44:                                  ; preds = %for.body30
  %21 = load i8, i8* %allows_mem, align 1, !dbg !3127
  call void @llvm.dbg.value(metadata i8 %21, metadata !3054, metadata !DIExpression()), !dbg !3075
  %tobool46 = icmp eq i8 %21, 0, !dbg !3127
  br i1 %tobool46, label %if.end64, label %if.then47, !dbg !3128

if.then47:                                        ; preds = %land.lhs.true44
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3129
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8, !dbg !3129
  %call51 = call %union.tree_node* @get_base_address(%union.tree_node* %23) #6, !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !3068, metadata !DIExpression()), !dbg !3131
  %tobool52 = icmp eq %union.tree_node* %call51, null, !dbg !3132
  br i1 %tobool52, label %if.end64, label %land.lhs.true53, !dbg !3134

land.lhs.true53:                                  ; preds = %if.then47
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %call51, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3135
  %bf.load55 = load i64, i64* %24, align 8, !dbg !3135
  %bf.cast57 = and i64 %bf.load55, 65535, !dbg !3135
  %arrayidx59 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast57, !dbg !3135
  %25 = load i32, i32* %arrayidx59, align 4, !dbg !3135
  %cmp60 = icmp eq i32 %25, 3, !dbg !3135
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !3136

if.then62:                                        ; preds = %land.lhs.true53
  call fastcc void @mark_address_taken(%union.tree_node* nonnull %call51) #7, !dbg !3137
  br label %if.end64, !dbg !3137

if.end64:                                         ; preds = %if.then47, %land.lhs.true44, %for.body30, %land.lhs.true53, %if.then62
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3138
  call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %26, i32 0) #7, !dbg !3139
  %inc68 = add nuw nsw i64 %i.1, 1, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %inc68, metadata !3050, metadata !DIExpression()), !dbg !3075
  br label %for.cond25, !dbg !3141, !llvm.loop !3142

for.cond70:                                       ; preds = %for.cond70.preheader, %for.inc89
  %i.2 = phi i64 [ %inc90, %for.inc89 ], [ 0, %for.cond70.preheader ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !3050, metadata !DIExpression()), !dbg !3075
  %call71 = call fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %stmt) #7, !dbg !3145
  %conv72 = zext i32 %call71 to i64, !dbg !3145
  %cmp73 = icmp ult i64 %i.2, %conv72, !dbg !3146
  br i1 %cmp73, label %for.body75, label %for.end91, !dbg !3118

for.body75:                                       ; preds = %for.cond70
  %conv77 = trunc i64 %i.2 to i32, !dbg !3147
  %call78 = call fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %stmt, i32 %conv77) #7, !dbg !3148
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3071, metadata !DIExpression()), !dbg !3149
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call78, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3150
  %28 = bitcast %union.tree_node** %27 to %struct.tree_string**, !dbg !3150
  %29 = load %struct.tree_string*, %struct.tree_string** %28, align 8, !dbg !3150
  %arraydecay83 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %29, i64 0, i32 2, i64 0, !dbg !3150
  %call84 = call i32 @strcmp(i8* nonnull %arraydecay83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3152
  %cmp85 = icmp eq i32 %call84, 0, !dbg !3153
  br i1 %cmp85, label %if.then87, label %cleanup, !dbg !3154

if.then87:                                        ; preds = %for.body75
  call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 1) #7, !dbg !3155
  br label %cleanup, !dbg !3157

cleanup:                                          ; preds = %for.body75, %if.then87
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then87 ], [ true, %for.body75 ]
  br i1 %cleanup.dest.slot.0, label %for.inc89, label %for.end91

for.inc89:                                        ; preds = %cleanup
  %inc90 = add nuw nsw i64 %i.2, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !3050, metadata !DIExpression()), !dbg !3075
  br label %for.cond70, !dbg !3159, !llvm.loop !3160

for.end91:                                        ; preds = %cleanup, %for.cond70
  call void @llvm.dbg.value(metadata i8* %is_inout, metadata !3056, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %is_inout) #8, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %allows_reg, metadata !3055, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %allows_reg) #8, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %allows_mem, metadata !3054, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %allows_mem) #8, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3162
  ret void, !dbg !3162
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3163 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3165, metadata !DIExpression()), !dbg !3166
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3167
  %cmp = icmp eq i32 %call, 2, !dbg !3168
  %conv1 = zext i1 %cmp to i8, !dbg !3167
  ret i8 %conv1, !dbg !3169
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3172, metadata !DIExpression()), !dbg !3173
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %s) #7, !dbg !3174
  %tobool = icmp eq i8 %call, 0, !dbg !3174
  br i1 %tobool, label %return, label %if.then, !dbg !3176

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !3177
  %bf.load = load i32, i32* %0, align 8, !dbg !3177
  %cmp = icmp ult i32 %bf.load, 65536, !dbg !3178
  %conv1 = zext i1 %cmp to i8, !dbg !3179
  br label %return, !dbg !3180

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv1, %if.then ], [ 0, %entry ], !dbg !3173
  ret i8 %retval.0, !dbg !3181
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(%union.gimple_statement_d* %dbg) unnamed_addr #0 !dbg !3182 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dbg, metadata !3186, metadata !DIExpression()), !dbg !3187
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %dbg, i32 1) #7, !dbg !3188
  %cmp = icmp ne %union.tree_node* %call, null, !dbg !3189
  %conv1 = zext i1 %cmp to i8, !dbg !3188
  ret i8 %conv1, !dbg !3190
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** %expr_p, i32 %flags) unnamed_addr #4 !dbg !3191 {
entry:
  %ce = alloca %struct.constructor_elt_d*, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3195, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %union.tree_node** %expr_p, metadata !3196, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3197, metadata !DIExpression()), !dbg !3209
  %0 = load %union.tree_node*, %union.tree_node** %expr_p, align 8, !dbg !3210
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3200, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 0, metadata !3201, metadata !DIExpression()), !dbg !3209
  %cmp = icmp eq %union.tree_node* %0, null, !dbg !3211
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !3213

if.end:                                           ; preds = %entry
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #7, !dbg !3214
  %tobool = icmp eq i8 %call, 0, !dbg !3214
  %and = and i32 %flags, 2, !dbg !3216
  %uflags.0 = select i1 %tobool, i32 0, i32 %and, !dbg !3216
  call void @llvm.dbg.value(metadata i32 %uflags.0, metadata !3201, metadata !DIExpression()), !dbg !3209
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3217
  %bf.load = load i64, i64* %1, align 8, !dbg !3217
  call void @llvm.dbg.value(metadata i32 undef, metadata !3198, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3209
  call void @llvm.dbg.value(metadata i32 undef, metadata !3199, metadata !DIExpression()), !dbg !3209
  %trunc = trunc i64 %bf.load to i16, !dbg !3218
  switch i16 %trunc, label %sw.default [
    i16 121, label %sw.bb
    i16 141, label %sw.bb16
    i16 32, label %sw.bb17
    i16 34, label %sw.bb17
    i16 36, label %sw.bb17
    i16 37, label %sw.bb18
    i16 49, label %sw.bb21
    i16 48, label %sw.bb25
    i16 47, label %sw.bb25
    i16 152, label %sw.bb26
    i16 45, label %sw.bb27
    i16 46, label %sw.bb27
    i16 41, label %sw.bb27
    i16 43, label %sw.bb27
    i16 44, label %sw.bb27
    i16 150, label %sw.bb68
    i16 56, label %sw.bb75
    i16 57, label %sw.bb75
    i16 51, label %sw.bb85
    i16 42, label %sw.bb96
    i16 96, label %do_unary
    i16 118, label %do_unary
    i16 93, label %do_binary
    i16 94, label %do_binary
    i16 95, label %do_binary
    i16 52, label %do_binary
    i16 50, label %do_binary
    i16 148, label %do_binary
    i16 167, label %sw.bb116
    i16 151, label %sw.bb116
    i16 29, label %cleanup.cont
    i16 30, label %cleanup.cont
    i16 33, label %cleanup.cont
    i16 139, label %cleanup.cont
  ], !dbg !3218

sw.bb:                                            ; preds = %if.end
  %call3 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #7, !dbg !3219
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3219
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !3221

if.then5:                                         ; preds = %sw.bb
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3222
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3222
  tail call fastcc void @mark_address_taken(%union.tree_node* %2) #7, !dbg !3223
  br label %if.end7, !dbg !3223

if.end7:                                          ; preds = %sw.bb, %if.then5
  %call8 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %0) #6, !dbg !3224
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3224
  br i1 %tobool9, label %if.end11, label %cleanup.cont, !dbg !3226

if.end11:                                         ; preds = %if.end7
  %or12 = or i32 %flags, 2, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %or12, metadata !3197, metadata !DIExpression()), !dbg !3209
  %operands14 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3228
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands14, i32 %or12) #7, !dbg !3229
  br label %cleanup.cont, !dbg !3230

sw.bb16:                                          ; preds = %if.end
  tail call fastcc void @add_stmt_operand(%union.tree_node** %expr_p, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3231
  br label %cleanup.cont, !dbg !3232

sw.bb17:                                          ; preds = %if.end, %if.end, %if.end
  tail call fastcc void @add_stmt_operand(%union.tree_node** %expr_p, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3233
  br label %cleanup.cont, !dbg !3234

sw.bb18:                                          ; preds = %if.end
  %call19 = tail call fastcc zeroext i8 @gimple_debug_bind_p(%union.gimple_statement_d* %stmt) #7, !dbg !3235
  %tobool20 = icmp eq i8 %call19, 0, !dbg !3235
  br i1 %tobool20, label %cond.true, label %cleanup.cont, !dbg !3235

cond.true:                                        ; preds = %sw.bb18
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 899, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3235
  br label %cleanup.cont, !dbg !3235

sw.bb21:                                          ; preds = %if.end
  %operands23 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3236
  %arrayidx24 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands23, i64 1, !dbg !3236
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx24, i32 %flags) #7, !dbg !3237
  br label %sw.bb25, !dbg !3237

sw.bb25:                                          ; preds = %if.end, %if.end, %sw.bb21
  tail call fastcc void @get_indirect_ref_operands(%union.gimple_statement_d* %stmt, %union.tree_node* nonnull %0, i32 %flags, i8 zeroext 1) #7, !dbg !3238
  br label %cleanup.cont, !dbg !3239

sw.bb26:                                          ; preds = %if.end
  tail call fastcc void @get_tmr_operands(%union.gimple_statement_d* %stmt, %union.tree_node* nonnull %0, i32 %flags) #7, !dbg !3240
  br label %cleanup.cont, !dbg !3241

sw.bb27:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %bf.cast312 = and i64 %bf.load, 524288, !dbg !3242
  %tobool32 = icmp eq i64 %bf.cast312, 0, !dbg !3242
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !3245

if.then33:                                        ; preds = %sw.bb27
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3246
  br label %if.end34, !dbg !3246

if.end34:                                         ; preds = %sw.bb27, %if.then33
  %operands36 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3247
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands36, i32 %flags) #7, !dbg !3248
  switch i16 %trunc, label %cleanup.cont [
    i16 41, label %if.then39
    i16 45, label %if.then56
    i16 46, label %if.then56
  ], !dbg !3249

if.then39:                                        ; preds = %if.end34
  %arrayidx42 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 1, !dbg !3250
  %3 = bitcast %union.tree_node** %arrayidx42 to i64**, !dbg !3250
  %4 = load i64*, i64** %3, align 8, !dbg !3250
  %bf.load44 = load i64, i64* %4, align 8, !dbg !3250
  %bf.cast474 = and i64 %bf.load44, 524288, !dbg !3250
  %tobool48 = icmp eq i64 %bf.cast474, 0, !dbg !3250
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !3254

if.then49:                                        ; preds = %if.then39
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3255
  br label %if.end50, !dbg !3255

if.end50:                                         ; preds = %if.then39, %if.then49
  %arrayidx53 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 2, !dbg !3256
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx53, i32 %uflags.0) #7, !dbg !3257
  br label %cleanup.cont, !dbg !3258

if.then56:                                        ; preds = %if.end34, %if.end34
  %arrayidx59 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 1, !dbg !3259
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx59, i32 %uflags.0) #7, !dbg !3262
  %arrayidx62 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 2, !dbg !3263
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx62, i32 %uflags.0) #7, !dbg !3264
  %arrayidx65 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 3, !dbg !3265
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx65, i32 %uflags.0) #7, !dbg !3266
  br label %cleanup.cont, !dbg !3267

sw.bb68:                                          ; preds = %if.end
  %operands70 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3268
  %arrayidx71 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands70, i64 1, !dbg !3268
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx71, i32 %uflags.0) #7, !dbg !3269
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands70, i32 %flags) #7, !dbg !3270
  br label %cleanup.cont, !dbg !3271

sw.bb75:                                          ; preds = %if.end, %if.end
  %operands77 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3272
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands77, i32 %uflags.0) #7, !dbg !3273
  %arrayidx81 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands77, i64 1, !dbg !3274
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx81, i32 %uflags.0) #7, !dbg !3275
  %arrayidx84 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands77, i64 2, !dbg !3276
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx84, i32 %uflags.0) #7, !dbg !3277
  br label %cleanup.cont, !dbg !3278

sw.bb85:                                          ; preds = %if.end
  %5 = bitcast %struct.constructor_elt_d** %ce to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3279
  call void @llvm.dbg.value(metadata i64 0, metadata !3206, metadata !DIExpression()), !dbg !3280
  %elts = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3281
  %6 = bitcast i32* %elts to %struct.VEC_constructor_elt_gc**, !dbg !3281
  br label %for.cond, !dbg !3284

for.cond:                                         ; preds = %for.body, %sw.bb85
  %idx.0 = phi i64 [ 0, %sw.bb85 ], [ %inc, %for.body ], !dbg !3285
  call void @llvm.dbg.value(metadata i64 %idx.0, metadata !3206, metadata !DIExpression()), !dbg !3280
  %7 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %6, align 8, !dbg !3286
  %tobool86 = icmp eq %struct.VEC_constructor_elt_gc* %7, null, !dbg !3286
  br i1 %tobool86, label %cond.end92, label %cond.true87, !dbg !3286

cond.true87:                                      ; preds = %for.cond
  %base90 = getelementptr inbounds %struct.VEC_constructor_elt_gc, %struct.VEC_constructor_elt_gc* %7, i64 0, i32 0, !dbg !3286
  br label %cond.end92, !dbg !3286

cond.end92:                                       ; preds = %for.cond, %cond.true87
  %cond93 = phi %struct.VEC_constructor_elt_base* [ %base90, %cond.true87 ], [ null, %for.cond ], !dbg !3286
  %conv = trunc i64 %idx.0 to i32, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d** %ce, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3280
  %call94 = call fastcc i32 @VEC_constructor_elt_base_iterate(%struct.VEC_constructor_elt_base* %cond93, i32 %conv, %struct.constructor_elt_d** nonnull %ce) #7, !dbg !3286
  %tobool95 = icmp eq i32 %call94, 0, !dbg !3287
  br i1 %tobool95, label %for.end, label %for.body, !dbg !3287

for.body:                                         ; preds = %cond.end92
  %8 = load %struct.constructor_elt_d*, %struct.constructor_elt_d** %ce, align 8, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d* %8, metadata !3202, metadata !DIExpression()), !dbg !3280
  %value = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %8, i64 0, i32 1, !dbg !3289
  call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %value, i32 %uflags.0) #7, !dbg !3290
  %inc = add i64 %idx.0, 1, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3206, metadata !DIExpression()), !dbg !3280
  br label %for.cond, !dbg !3292, !llvm.loop !3293

for.end:                                          ; preds = %cond.end92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3295
  br label %cleanup.cont

sw.bb96:                                          ; preds = %if.end
  %bf.cast1011 = and i64 %bf.load, 524288, !dbg !3296
  %tobool102 = icmp eq i64 %bf.cast1011, 0, !dbg !3296
  br i1 %tobool102, label %do_unary, label %if.then103, !dbg !3298

if.then103:                                       ; preds = %sw.bb96
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3299
  br label %do_unary, !dbg !3299

do_unary:                                         ; preds = %sw.bb96, %sw.default, %if.end, %if.end, %if.then103
  call void @llvm.dbg.label(metadata !3207), !dbg !3300
  %operands107 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3301
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands107, i32 %flags) #7, !dbg !3302
  br label %cleanup.cont, !dbg !3303

do_binary:                                        ; preds = %sw.default, %sw.default, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  call void @llvm.dbg.label(metadata !3208), !dbg !3304
  %operands111 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3305
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands111, i32 %flags) #7, !dbg !3307
  %arrayidx115 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands111, i64 1, !dbg !3308
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx115, i32 %flags) #7, !dbg !3309
  br label %cleanup.cont, !dbg !3310

sw.bb116:                                         ; preds = %if.end, %if.end
  %operands118 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3311
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands118, i32 %flags) #7, !dbg !3313
  %arrayidx122 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands118, i64 1, !dbg !3314
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx122, i32 %flags) #7, !dbg !3315
  %arrayidx125 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands118, i64 2, !dbg !3316
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx125, i32 %flags) #7, !dbg !3317
  br label %cleanup.cont, !dbg !3318

sw.default:                                       ; preds = %if.end
  %bf.cast = and i64 %bf.load, 65535, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %bf.cast, metadata !3198, metadata !DIExpression()), !dbg !3209
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3319
  %9 = load i32, i32* %arrayidx, align 4, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %9, metadata !3199, metadata !DIExpression()), !dbg !3209
  switch i32 %9, label %sw.epilog [
    i32 6, label %do_unary
    i32 7, label %do_binary
    i32 5, label %do_binary
    i32 1, label %cleanup.cont
    i32 2, label %cleanup.cont
  ], !dbg !3320

sw.epilog:                                        ; preds = %sw.default
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1026, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3321
  br label %cleanup.cont, !dbg !3322

cleanup.cont:                                     ; preds = %if.end7, %sw.bb18, %if.end11, %sw.bb16, %sw.bb17, %sw.bb25, %sw.bb26, %sw.bb68, %sw.bb75, %for.end, %do_unary, %do_binary, %sw.bb116, %sw.epilog, %entry, %cond.true, %if.then56, %if.end34, %if.end50, %if.end, %if.end, %if.end, %if.end, %sw.default, %sw.default
  ret void, !dbg !3322
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_debug_bind_get_value_ptr(%union.gimple_statement_d* %dbg) unnamed_addr #0 !dbg !3323 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dbg, metadata !3327, metadata !DIExpression()), !dbg !3328
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %dbg, i32 1) #7, !dbg !3329
  ret %union.tree_node** %call, !dbg !3330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3331 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %i, metadata !3336, metadata !DIExpression()), !dbg !3337
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3338
  %tobool = icmp eq i8 %call, 0, !dbg !3338
  br i1 %tobool, label %return, label %if.then, !dbg !3340

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3341
  %idx.ext = zext i32 %i to i64, !dbg !3343
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !3343
  br label %return, !dbg !3344

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !3345
  ret %union.tree_node** %retval.0, !dbg !3346
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3347 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3351, metadata !DIExpression()), !dbg !3352
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3353
  %0 = load i32, i32* %num_ops, align 4, !dbg !3353
  ret i32 %0, !dbg !3354
}

; Function Attrs: nounwind uwtable
define internal fastcc void @maybe_add_call_vops(%union.gimple_statement_d* %stmt) unnamed_addr #4 !dbg !3355 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3357, metadata !DIExpression()), !dbg !3359
  %call = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %stmt) #6, !dbg !3360
  call void @llvm.dbg.value(metadata i32 %call, metadata !3358, metadata !DIExpression()), !dbg !3359
  %and = and i32 %call, 512, !dbg !3361
  %tobool = icmp eq i32 %and, 0, !dbg !3361
  br i1 %tobool, label %if.then, label %if.end8, !dbg !3363

if.then:                                          ; preds = %entry
  %and1 = and i32 %call, 11, !dbg !3364
  %tobool2 = icmp eq i32 %and1, 0, !dbg !3364
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3367

if.then3:                                         ; preds = %if.then
  tail call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 1) #7, !dbg !3368
  br label %if.end8, !dbg !3368

if.else:                                          ; preds = %if.then
  %and4 = and i32 %call, 1, !dbg !3369
  %tobool5 = icmp eq i32 %and4, 0, !dbg !3369
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !3371

if.then6:                                         ; preds = %if.else
  tail call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 0) #7, !dbg !3372
  br label %if.end8, !dbg !3372

if.end8:                                          ; preds = %if.else, %entry, %if.then3, %if.then6
  ret void, !dbg !3373
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3374 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3376, metadata !DIExpression()), !dbg !3377
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3378
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !3379
  %0 = load i8, i8* %no, align 1, !dbg !3379
  %conv = zext i8 %0 to i32, !dbg !3380
  ret i32 %conv, !dbg !3381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3382 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %index, metadata !3387, metadata !DIExpression()), !dbg !3388
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3389
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !3389
  %0 = load i8, i8* %no, align 1, !dbg !3389
  %conv = zext i8 %0 to i32, !dbg !3389
  %cmp = icmp ult i32 %conv, %index, !dbg !3389
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3389

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 2655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3389
  br label %cond.end, !dbg !3389

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3390
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !3390
  %2 = load i8, i8* %1, align 8, !dbg !3390
  %conv3 = zext i8 %2 to i32, !dbg !3391
  %add = add i32 %conv3, %index, !dbg !3392
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !3393
  ret %union.tree_node* %call, !dbg !3394
}

declare dso_local zeroext i8 @parse_output_constraint(i8**, i32, i32, i32, i8*, i8*, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_address_taken(%union.tree_node* %ref) unnamed_addr #4 !dbg !3395 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3397, metadata !DIExpression()), !dbg !3399
  %call = tail call %union.tree_node* @get_base_address(%union.tree_node* %ref) #6, !dbg !3400
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3398, metadata !DIExpression()), !dbg !3399
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !3401
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3403

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3404
  %bf.load = load i64, i64* %0, align 8, !dbg !3404
  %bf.cast = and i64 %bf.load, 65535, !dbg !3404
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3404
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3404
  %cmp = icmp eq i32 %1, 3, !dbg !3404
  br i1 %cmp, label %if.then, label %if.end, !dbg !3405

if.then:                                          ; preds = %land.lhs.true
  %bf.set = or i64 %bf.load, 262144, !dbg !3406
  store i64 %bf.set, i64* %0, align 8, !dbg !3406
  br label %if.end, !dbg !3407

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3408
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3409 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3411, metadata !DIExpression()), !dbg !3412
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3413
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !3413
  %1 = load i8, i8* %0, align 8, !dbg !3413
  %conv = zext i8 %1 to i32, !dbg !3414
  ret i32 %conv, !dbg !3415
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3416 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %index, metadata !3419, metadata !DIExpression()), !dbg !3420
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3421
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !3421
  %1 = load i8, i8* %0, align 8, !dbg !3421
  %conv = zext i8 %1 to i32, !dbg !3421
  %cmp = icmp ult i32 %conv, %index, !dbg !3421
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3421

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 2622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3421
  br label %cond.end, !dbg !3421

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %index) #7, !dbg !3422
  ret %union.tree_node* %call, !dbg !3423
}

declare dso_local zeroext i8 @parse_input_constraint(i8**, i32, i32, i32, i32, i8**, i8*, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3426, metadata !DIExpression()), !dbg !3427
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3428
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !3429
  %0 = load i8, i8* %nc, align 2, !dbg !3429
  %conv = zext i8 %0 to i32, !dbg !3430
  ret i32 %conv, !dbg !3431
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3432 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 %index, metadata !3435, metadata !DIExpression()), !dbg !3436
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3437
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !3437
  %0 = load i8, i8* %nc, align 2, !dbg !3437
  %conv = zext i8 %0 to i32, !dbg !3437
  %cmp = icmp ult i32 %conv, %index, !dbg !3437
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3437

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 2688, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3437
  br label %cond.end, !dbg !3437

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3438
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !3438
  %2 = load i8, i8* %1, align 8, !dbg !3438
  %conv3 = zext i8 %2 to i32, !dbg !3439
  %add = add i32 %conv3, %index, !dbg !3440
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !3441
  %3 = load i8, i8* %no, align 1, !dbg !3441
  %conv5 = zext i8 %3 to i32, !dbg !3442
  %add6 = add i32 %add, %conv5, !dbg !3443
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add6) #7, !dbg !3444
  ret %union.tree_node* %call, !dbg !3445
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #4 !dbg !3446 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3450, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3451, metadata !DIExpression()), !dbg !3452
  %and = and i32 %flags, 2, !dbg !3453
  %tobool = icmp eq i32 %and, 0, !dbg !3453
  br i1 %tobool, label %if.end, label %if.end8, !dbg !3455

if.end:                                           ; preds = %entry
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #7, !dbg !3456
  %tobool1 = icmp eq i8 %call, 0, !dbg !3456
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3456

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 638, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3456
  br label %cond.end, !dbg !3456

cond.end:                                         ; preds = %if.end, %cond.true
  %and2 = and i32 %flags, 1, !dbg !3457
  %tobool3 = icmp eq i32 %and2, 0, !dbg !3457
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3459
  %call5 = tail call fastcc %union.tree_node* @gimple_vop(%struct.function* %0) #7, !dbg !3459
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3460

if.then4:                                         ; preds = %cond.end
  tail call fastcc void @append_vdef(%union.tree_node* %call5) #7, !dbg !3461
  br label %if.end8, !dbg !3461

if.else:                                          ; preds = %cond.end
  tail call fastcc void @append_vuse(%union.tree_node* %call5) #7, !dbg !3462
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.else, %if.then4
  ret void, !dbg !3463
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3464 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3466, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %i, metadata !3467, metadata !DIExpression()), !dbg !3468
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3469
  %tobool = icmp eq i8 %call, 0, !dbg !3469
  br i1 %tobool, label %return, label %if.then, !dbg !3471

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3472
  %idxprom = zext i32 %i to i64, !dbg !3472
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3472
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3472
  br label %return, !dbg !3474

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3475
  ret %union.tree_node* %retval.0, !dbg !3476
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3477 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3479, metadata !DIExpression()), !dbg !3481
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3482
  %idxprom = zext i32 %call to i64, !dbg !3483
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3483
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3481
  %cmp = icmp eq i64 %0, 0, !dbg !3484
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3484

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3484
  br label %cond.end, !dbg !3484

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3485
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3486
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3487
  ret %union.tree_node** %2, !dbg !3488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3489 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3493, metadata !DIExpression()), !dbg !3494
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3495
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3496
  ret i32 %call1, !dbg !3497
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3498 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3502, metadata !DIExpression()), !dbg !3503
  %idxprom = zext i32 %code to i64, !dbg !3504
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3504
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3504
  ret i32 %0, !dbg !3505
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @append_vdef(%union.tree_node* %var) unnamed_addr #0 !dbg !3506 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3508, metadata !DIExpression()), !dbg !3509
  %0 = load i32, i32* @optimize, align 4, !dbg !3510
  %tobool = icmp eq i32 %0, 0, !dbg !3510
  br i1 %tobool, label %return, label %if.end, !dbg !3512

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !3513
  %cmp = icmp eq %union.tree_node* %1, null, !dbg !3513
  %cmp1 = icmp eq %union.tree_node* %1, %var, !dbg !3513
  %or.cond = or i1 %cmp, %cmp1, !dbg !3513
  br i1 %or.cond, label %land.lhs.true, label %cond.true, !dbg !3513

land.lhs.true:                                    ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3513
  %cmp2 = icmp eq %union.tree_node* %2, null, !dbg !3513
  %cmp4 = icmp eq %union.tree_node* %2, %var, !dbg !3513
  %or.cond1 = or i1 %cmp2, %cmp4, !dbg !3513
  br i1 %or.cond1, label %cond.end, label %cond.true, !dbg !3513

cond.true:                                        ; preds = %land.lhs.true, %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3513
  br label %cond.end, !dbg !3513

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  store %union.tree_node* %var, %union.tree_node** @build_vdef, align 8, !dbg !3514
  store %union.tree_node* %var, %union.tree_node** @build_vuse, align 8, !dbg !3515
  br label %return, !dbg !3516

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !3516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vop(%struct.function* %fun) unnamed_addr #0 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3521, metadata !DIExpression()), !dbg !3522
  %tobool = icmp eq %struct.function* %fun, null, !dbg !3523
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3523

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3523
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3523
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !3523
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !3523

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3523
  %gimple_df2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3522
  %.pre = load %struct.gimple_df*, %struct.gimple_df** %gimple_df2.phi.trans.insert, align 8, !dbg !3524
  br label %cond.end, !dbg !3523

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %1 = phi %struct.gimple_df* [ %0, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !3524
  %vop = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 3, !dbg !3525
  %2 = load %union.tree_node*, %union.tree_node** %vop, align 8, !dbg !3525
  ret %union.tree_node* %2, !dbg !3526
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @append_vuse(%union.tree_node* %var) unnamed_addr #0 !dbg !3527 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3529, metadata !DIExpression()), !dbg !3530
  %0 = load i32, i32* @optimize, align 4, !dbg !3531
  %tobool = icmp eq i32 %0, 0, !dbg !3531
  br i1 %tobool, label %return, label %if.end, !dbg !3533

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3534
  %cmp = icmp eq %union.tree_node* %1, null, !dbg !3534
  %cmp1 = icmp eq %union.tree_node* %1, %var, !dbg !3534
  %or.cond = or i1 %cmp, %cmp1, !dbg !3534
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3534

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3534
  br label %cond.end, !dbg !3534

cond.end:                                         ; preds = %if.end, %cond.true
  store %union.tree_node* %var, %union.tree_node** @build_vuse, align 8, !dbg !3535
  br label %return, !dbg !3536

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !3536
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_stmt_operand(%union.tree_node** %var_p, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #4 !dbg !3537 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %var_p, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3542, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3543, metadata !DIExpression()), !dbg !3546
  %0 = bitcast %union.tree_node** %var_p to i64**, !dbg !3547
  %1 = load i64*, i64** %0, align 8, !dbg !3547
  %bf.load = load i64, i64* %1, align 8, !dbg !3547
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3547
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3547
  %2 = bitcast i64* %1 to %union.tree_node*, !dbg !3547
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !3547

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3547
  br i1 %cmp5, label %cond.end, label %lor.lhs.false6, !dbg !3547

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !3547
  br i1 %cmp11, label %cond.end, label %lor.lhs.false12, !dbg !3547

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !3547
  br i1 %cmp17, label %land.lhs.true, label %cond.true, !dbg !3547

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var18 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !3547
  %3 = bitcast i64* %var18 to i64**, !dbg !3547
  %4 = load i64*, i64** %3, align 8, !dbg !3547
  %bf.load20 = load i64, i64* %4, align 8, !dbg !3547
  %bf.cast227 = and i64 %bf.load20, 65535, !dbg !3547
  %cmp23 = icmp eq i64 %bf.cast227, 32, !dbg !3547
  br i1 %cmp23, label %cond.end, label %lor.lhs.false24, !dbg !3547

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %cmp31 = icmp eq i64 %bf.cast227, 34, !dbg !3547
  br i1 %cmp31, label %cond.end, label %lor.lhs.false32, !dbg !3547

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %cmp39 = icmp eq i64 %bf.cast227, 36, !dbg !3547
  br i1 %cmp39, label %cond.end, label %cond.true, !dbg !3547

cond.true:                                        ; preds = %lor.lhs.false32, %lor.lhs.false12
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 657, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3547
  %.pre = load %union.tree_node*, %union.tree_node** %var_p, align 8, !dbg !3548
  br label %cond.end, !dbg !3547

cond.end:                                         ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %land.lhs.true, %lor.lhs.false24, %lor.lhs.false32, %cond.true
  %5 = phi %union.tree_node* [ %2, %entry ], [ %2, %lor.lhs.false ], [ %2, %lor.lhs.false6 ], [ %2, %land.lhs.true ], [ %2, %lor.lhs.false24 ], [ %2, %lor.lhs.false32 ], [ %.pre, %cond.true ], !dbg !3548
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3544, metadata !DIExpression()), !dbg !3546
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3549
  %bf.load41 = load i64, i64* %6, align 8, !dbg !3549
  %bf.cast435 = and i64 %bf.load41, 65535, !dbg !3550
  %cmp44 = icmp eq i64 %bf.cast435, 141, !dbg !3550
  br i1 %cmp44, label %cond.true45, label %cond.end49, !dbg !3549

cond.true45:                                      ; preds = %cond.end
  %var47 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3551
  %7 = bitcast i32* %var47 to %union.tree_node**, !dbg !3551
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !3551
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3552
  %bf.load52.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3554
  br label %cond.end49, !dbg !3549

cond.end49:                                       ; preds = %cond.end, %cond.true45
  %bf.load52 = phi i64 [ %bf.load52.pre, %cond.true45 ], [ %bf.load41, %cond.end ], !dbg !3554
  %cond50 = phi %union.tree_node* [ %8, %cond.true45 ], [ %5, %cond.end ], !dbg !3549
  call void @llvm.dbg.value(metadata %union.tree_node* %cond50, metadata !3545, metadata !DIExpression()), !dbg !3546
  %bf.cast546 = and i64 %bf.load52, 524288, !dbg !3554
  %tobool = icmp eq i64 %bf.cast546, 0, !dbg !3554
  br i1 %tobool, label %if.end, label %if.then, !dbg !3555

if.then:                                          ; preds = %cond.end49
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3556
  br label %if.end, !dbg !3556

if.end:                                           ; preds = %cond.end49, %if.then
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %cond50) #6, !dbg !3557
  %tobool55 = icmp eq i8 %call, 0, !dbg !3557
  br i1 %tobool55, label %if.else60, label %if.then56, !dbg !3559

if.then56:                                        ; preds = %if.end
  %and = and i32 %flags, 1, !dbg !3560
  %tobool57 = icmp eq i32 %and, 0, !dbg !3560
  br i1 %tobool57, label %if.else, label %if.then58, !dbg !3563

if.then58:                                        ; preds = %if.then56
  tail call fastcc void @append_def(%union.tree_node** %var_p) #7, !dbg !3564
  br label %if.end61, !dbg !3564

if.else:                                          ; preds = %if.then56
  tail call fastcc void @append_use(%union.tree_node** %var_p) #7, !dbg !3565
  br label %if.end61

if.else60:                                        ; preds = %if.end
  tail call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3566
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.else, %if.else60
  ret void, !dbg !3567
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_indirect_ref_operands(%union.gimple_statement_d* %stmt, %union.tree_node* %expr, i32 %flags, i8 zeroext %recurse_on_base) unnamed_addr #4 !dbg !3568 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3572, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3573, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3574, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 1, metadata !3575, metadata !DIExpression()), !dbg !3577
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3578
  call void @llvm.dbg.value(metadata %union.tree_node** %operands, metadata !3576, metadata !DIExpression()), !dbg !3577
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3579
  %bf.load = load i64, i64* %0, align 8, !dbg !3579
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !3579
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !3579
  br i1 %tobool, label %if.end, label %if.then, !dbg !3581

if.then:                                          ; preds = %entry
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3582
  br label %if.end, !dbg !3582

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3583
  br i1 false, label %if.end.if.end3_crit_edge, label %if.then2, !dbg !3584

if.end.if.end3_crit_edge:                         ; preds = %if.end
  br label %if.end3, !dbg !3584

if.then2:                                         ; preds = %if.end
  %and = and i32 %flags, 2, !dbg !3585
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %operands, i32 %and) #7, !dbg !3587
  br label %if.end3, !dbg !3587

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then2
  ret void, !dbg !3588
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_tmr_operands(%union.gimple_statement_d* %stmt, %union.tree_node* %expr, i32 %flags) unnamed_addr #4 !dbg !3589 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3595, metadata !DIExpression()), !dbg !3596
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3597
  %bf.load = load i64, i64* %0, align 8, !dbg !3597
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !3597
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !3597
  br i1 %tobool, label %if.end, label %if.then, !dbg !3599

if.then:                                          ; preds = %entry
  tail call fastcc void @gimple_set_has_volatile_ops(%union.gimple_statement_d* %stmt, i8 zeroext 1) #7, !dbg !3600
  br label %if.end, !dbg !3600

if.end:                                           ; preds = %entry, %if.then
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3601
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3601
  %and = and i32 %flags, 2, !dbg !3602
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx, i32 %and) #7, !dbg !3603
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3604
  tail call fastcc void @get_expr_operands(%union.gimple_statement_d* %stmt, %union.tree_node** nonnull %arrayidx3, i32 %and) #7, !dbg !3605
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3606
  %tobool9 = icmp eq %union.tree_node* %1, null, !dbg !3606
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !3608

if.then10:                                        ; preds = %if.end
  tail call fastcc void @mark_address_taken(%union.tree_node* nonnull %1) #7, !dbg !3609
  br label %if.end14, !dbg !3609

if.end14:                                         ; preds = %if.end, %if.then10
  tail call fastcc void @add_virtual_operand(%union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3610
  ret void, !dbg !3611
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_constructor_elt_base_iterate(%struct.VEC_constructor_elt_base* %vec_, i32 %ix_, %struct.constructor_elt_d** %ptr) unnamed_addr #0 !dbg !3612 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3618, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata %struct.constructor_elt_d** %ptr, metadata !3620, metadata !DIExpression()), !dbg !3621
  %tobool = icmp eq %struct.VEC_constructor_elt_base* %vec_, null, !dbg !3622
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3622

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 0, !dbg !3622
  %0 = load i32, i32* %num, align 8, !dbg !3622
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3622
  br i1 %cmp, label %if.then, label %if.else, !dbg !3624

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3625
  %arrayidx = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3625
  br label %return, !dbg !3625

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3627

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.constructor_elt_d* [ null, %if.else ], [ %arrayidx, %if.then ], !dbg !3629
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3629
  store %struct.constructor_elt_d* %storemerge, %struct.constructor_elt_d** %ptr, align 8, !dbg !3629
  ret i32 %retval.0, !dbg !3624
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @append_def(%union.tree_node** %def_p) unnamed_addr #0 !dbg !3630 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def_p, metadata !3634, metadata !DIExpression()), !dbg !3635
  %0 = bitcast %union.tree_node** %def_p to %union.tree_node*, !dbg !3636
  %call = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull @build_defs, %union.tree_node* %0) #7, !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @append_use(%union.tree_node** %use_p) unnamed_addr #0 !dbg !3638 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %use_p, metadata !3640, metadata !DIExpression()), !dbg !3641
  %0 = bitcast %union.tree_node** %use_p to %union.tree_node*, !dbg !3642
  %call = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull @build_uses, %union.tree_node* %0) #7, !dbg !3642
  ret void, !dbg !3643
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3644 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3649, metadata !DIExpression()), !dbg !3650
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3651
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3651
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3651
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3651

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3651
  br label %cond.end, !dbg !3651

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3651
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !3651
  ret %union.tree_node** %call1, !dbg !3651
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3652 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3656, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 1, metadata !3657, metadata !DIExpression()), !dbg !3659
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3660
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3660
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3660

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3660
  br label %cond.end, !dbg !3660

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3660
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3660
  %tobool1 = icmp eq i32 %call, 0, !dbg !3660
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3658, metadata !DIExpression()), !dbg !3659
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3660

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3661
  %2 = load i8*, i8** %1, align 8, !dbg !3661
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3661
  store i8* %call3, i8** %1, align 8, !dbg !3661
  br label %if.end, !dbg !3661

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3660
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3669, metadata !DIExpression()), !dbg !3671
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3672
  %0 = load i32, i32* %num1, align 8, !dbg !3672
  %inc = add i32 %0, 1, !dbg !3672
  store i32 %inc, i32* %num1, align 8, !dbg !3672
  %idxprom = zext i32 %0 to i64, !dbg !3672
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3672
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3670, metadata !DIExpression()), !dbg !3671
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3672
  ret %union.tree_node** %arrayidx, !dbg !3672
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3673 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 1, metadata !3678, metadata !DIExpression()), !dbg !3679
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3680
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3680

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3680
  %0 = load i32, i32* %alloc, align 4, !dbg !3680
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3680
  %1 = load i32, i32* %num, align 8, !dbg !3680
  %cmp1 = icmp ne i32 %0, %1, !dbg !3680
  %phitmp = zext i1 %cmp1 to i32, !dbg !3680
  br label %cond.end, !dbg !3680

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3680

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3680
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @finalize_ssa_defs(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3681 {
entry:
  %new_list = alloca %struct.def_optype_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3683, metadata !DIExpression()), !dbg !3692
  %0 = bitcast %struct.def_optype_d* %new_list to i8*, !dbg !3693
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3693
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !3694
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !3694
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %call, metadata !3688, metadata !DIExpression()), !dbg !3692
  %tobool1 = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !3695
  br i1 %tobool1, label %lor.lhs.false, label %land.lhs.true, !dbg !3695

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %stmt) #7, !dbg !3695
  %cmp = icmp ne i32 %call2, 6, !dbg !3695
  %cmp3 = icmp ult i32 %call, 2, !dbg !3695
  %or.cond = or i1 %cmp, %cmp3, !dbg !3695
  br i1 %or.cond, label %cond.end6, label %cond.true4, !dbg !3695

lor.lhs.false:                                    ; preds = %entry
  %cmp3.old = icmp ult i32 %call, 2, !dbg !3695
  br i1 %cmp3.old, label %cond.end6, label %cond.true4, !dbg !3695

cond.true4:                                       ; preds = %land.lhs.true, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 419, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3695
  br label %cond.end6, !dbg !3695

cond.end6:                                        ; preds = %land.lhs.true, %lor.lhs.false, %cond.true4
  %2 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !3696
  %cmp8 = icmp eq %union.tree_node* %2, null, !dbg !3697
  br i1 %cmp8, label %if.end20, label %if.then, !dbg !3698

if.then:                                          ; preds = %cond.end6
  %call9 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3699
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3689, metadata !DIExpression()), !dbg !3700
  %tobool10 = icmp eq %union.tree_node* %call9, null, !dbg !3701
  br i1 %tobool10, label %if.end, label %land.lhs.true11, !dbg !3703

land.lhs.true11:                                  ; preds = %if.then
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3704
  %bf.load = load i64, i64* %3, align 8, !dbg !3704
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3705
  %cmp13 = icmp eq i64 %bf.cast5, 141, !dbg !3705
  br i1 %cmp13, label %if.then14, label %if.end, !dbg !3706

if.then14:                                        ; preds = %land.lhs.true11
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3707
  %4 = bitcast i32* %var to %union.tree_node**, !dbg !3707
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3707
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3689, metadata !DIExpression()), !dbg !3700
  br label %if.end, !dbg !3708

if.end:                                           ; preds = %if.then, %if.then14, %land.lhs.true11
  %oldvdef.0 = phi %union.tree_node* [ %5, %if.then14 ], [ %call9, %land.lhs.true11 ], [ null, %if.then ], !dbg !3700
  call void @llvm.dbg.value(metadata %union.tree_node* %oldvdef.0, metadata !3689, metadata !DIExpression()), !dbg !3700
  %6 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !3709
  %cmp15 = icmp eq %union.tree_node* %oldvdef.0, %6, !dbg !3711
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !3712

if.then16:                                        ; preds = %if.end
  tail call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %stmt, %union.tree_node* %6) #7, !dbg !3713
  br label %if.end17, !dbg !3713

if.end17:                                         ; preds = %if.end, %if.then16
  %call18 = tail call fastcc %union.tree_node** @gimple_vdef_ptr(%union.gimple_statement_d* %stmt) #7, !dbg !3714
  %7 = bitcast %union.tree_node** %call18 to %union.tree_node*, !dbg !3714
  %call19 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_insert(%struct.VEC_tree_heap** nonnull @build_defs, i32 0, %union.tree_node* %7) #7, !dbg !3714
  %inc = add i32 %call, 1, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3688, metadata !DIExpression()), !dbg !3692
  br label %if.end20, !dbg !3716

if.end20:                                         ; preds = %cond.end6, %if.end17
  %num.0 = phi i32 [ %inc, %if.end17 ], [ %call, %cond.end6 ], !dbg !3692
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !3688, metadata !DIExpression()), !dbg !3692
  %next = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %new_list, i64 0, i32 0, !dbg !3717
  store %struct.def_optype_d* null, %struct.def_optype_d** %next, align 8, !dbg !3718
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %new_list, metadata !3687, metadata !DIExpression()), !dbg !3692
  %call21 = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3719
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %call21, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()), !dbg !3692
  %8 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !3720
  %cmp22 = icmp eq %union.tree_node* %8, null, !dbg !3722
  br i1 %cmp22, label %land.lhs.true23, label %if.end36, !dbg !3723

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3724
  %cmp25 = icmp eq %union.tree_node* %call24, null, !dbg !3725
  br i1 %cmp25, label %if.end36, label %if.then26, !dbg !3726

if.then26:                                        ; preds = %land.lhs.true23
  %call27 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3727
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call27, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3727
  %bf.load29 = load i64, i64* %9, align 8, !dbg !3727
  %bf.cast314 = and i64 %bf.load29, 65535, !dbg !3730
  %cmp32 = icmp eq i64 %bf.cast314, 141, !dbg !3730
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !3731

if.then33:                                        ; preds = %if.then26
  tail call void @unlink_stmt_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3732
  %call34 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3734
  tail call void @release_ssa_name(%union.tree_node* %call34) #6, !dbg !3735
  br label %if.end35, !dbg !3736

if.end35:                                         ; preds = %if.then33, %if.then26
  tail call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %stmt, %union.tree_node* null) #7, !dbg !3737
  br label %if.end36, !dbg !3738

if.end36:                                         ; preds = %land.lhs.true23, %if.end35, %if.end20
  %call37 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3739
  %tobool38 = icmp eq %union.tree_node* %call37, null, !dbg !3739
  br i1 %tobool38, label %if.end48, label %land.lhs.true39, !dbg !3741

land.lhs.true39:                                  ; preds = %if.end36
  %call40 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3742
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call40, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3742
  %bf.load42 = load i64, i64* %10, align 8, !dbg !3742
  %bf.cast443 = and i64 %bf.load42, 65535, !dbg !3743
  %cmp45 = icmp eq i64 %bf.cast443, 141, !dbg !3743
  br i1 %cmp45, label %if.end48, label %if.then46, !dbg !3744

if.then46:                                        ; preds = %land.lhs.true39
  %call47 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3745
  tail call void @mark_sym_for_renaming(%union.tree_node* %call47) #6, !dbg !3746
  br label %if.end48, !dbg !3746

if.end48:                                         ; preds = %land.lhs.true39, %if.end36, %if.then46
  %cond2 = icmp eq %struct.def_optype_d* %call21, null, !dbg !3747
  br i1 %cond2, label %if.end73, label %land.lhs.true50, !dbg !3747

land.lhs.true50:                                  ; preds = %if.end48
  %next51 = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %call21, i64 0, i32 0, !dbg !3749
  %11 = load %struct.def_optype_d*, %struct.def_optype_d** %next51, align 8, !dbg !3749
  %cmp52 = icmp eq %struct.def_optype_d* %11, null, !dbg !3750
  %cmp54 = icmp eq i32 %num.0, 1, !dbg !3751
  %or.cond1 = and i1 %cmp52, %cmp54, !dbg !3752
  br i1 %or.cond1, label %land.lhs.true55, label %if.end65, !dbg !3752

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %12 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !3753
  %base58 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %12, i64 0, i32 0, !dbg !3753
  %call62 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base58, i32 0) #7, !dbg !3753
  %13 = bitcast %union.tree_node* %call62 to %union.tree_node**, !dbg !3754
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %call21, i64 0, i32 1, !dbg !3755
  %14 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3755
  %cmp63 = icmp eq %union.tree_node** %14, %13, !dbg !3756
  br i1 %cmp63, label %cleanup, label %if.end65, !dbg !3757

if.end65:                                         ; preds = %land.lhs.true55, %land.lhs.true50
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3758
  %call68 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %15) #7, !dbg !3761
  %free_defs = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call68, i64 0, i32 4, !dbg !3762
  %16 = bitcast %struct.def_optype_d** %free_defs to i64*, !dbg !3762
  %17 = load i64, i64* %16, align 8, !dbg !3762
  %18 = bitcast %struct.def_optype_d* %call21 to i64*, !dbg !3763
  store i64 %17, i64* %18, align 8, !dbg !3763
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3764
  %call71 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %19) #7, !dbg !3765
  %free_defs72 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call71, i64 0, i32 4, !dbg !3766
  store %struct.def_optype_d* %call21, %struct.def_optype_d** %free_defs72, align 8, !dbg !3767
  br label %if.end73, !dbg !3768

if.end73:                                         ; preds = %if.end48, %if.end65
  br label %for.cond, !dbg !3769

for.cond:                                         ; preds = %for.body, %if.end73
  %last.0 = phi %struct.def_optype_d* [ %new_list, %if.end73 ], [ %call82, %for.body ], !dbg !3692
  %new_i.0 = phi i32 [ 0, %if.end73 ], [ %inc83, %for.body ], !dbg !3692
  call void @llvm.dbg.value(metadata i32 %new_i.0, metadata !3684, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last.0, metadata !3687, metadata !DIExpression()), !dbg !3692
  %exitcond = icmp eq i32 %new_i.0, %num.0, !dbg !3770
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3773

for.body:                                         ; preds = %for.cond
  %20 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !3774
  %base77 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %20, i64 0, i32 0, !dbg !3774
  %call81 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base77, i32 %new_i.0) #7, !dbg !3774
  %21 = bitcast %union.tree_node* %call81 to %union.tree_node**, !dbg !3775
  %call82 = call fastcc %struct.def_optype_d* @add_def_op(%union.tree_node** %21, %struct.def_optype_d* %last.0) #7, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %call82, metadata !3687, metadata !DIExpression()), !dbg !3692
  %inc83 = add i32 %new_i.0, 1, !dbg !3777
  call void @llvm.dbg.value(metadata i32 %inc83, metadata !3684, metadata !DIExpression()), !dbg !3692
  br label %for.cond, !dbg !3778, !llvm.loop !3779

for.end:                                          ; preds = %for.cond
  %22 = load %struct.def_optype_d*, %struct.def_optype_d** %next, align 8, !dbg !3781
  call fastcc void @gimple_set_def_ops(%union.gimple_statement_d* %stmt, %struct.def_optype_d* %22) #7, !dbg !3782
  br label %cleanup, !dbg !3783

cleanup:                                          ; preds = %land.lhs.true55, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3783
  ret void, !dbg !3783
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @finalize_ssa_uses(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3784 {
entry:
  %new_list = alloca %struct.use_optype_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3786, metadata !DIExpression()), !dbg !3795
  %0 = bitcast %struct.use_optype_d* %new_list to i8*, !dbg !3796
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3796
  %1 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3797
  %cmp = icmp eq %union.tree_node* %1, null, !dbg !3798
  br i1 %cmp, label %if.end9, label %if.then, !dbg !3799

if.then:                                          ; preds = %entry
  %call = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3800
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3792, metadata !DIExpression()), !dbg !3801
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !3802
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3804

land.lhs.true:                                    ; preds = %if.then
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3805
  %bf.load = load i64, i64* %2, align 8, !dbg !3805
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3806
  %cmp1 = icmp eq i64 %bf.cast1, 141, !dbg !3806
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3807

if.then2:                                         ; preds = %land.lhs.true
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3808
  %3 = bitcast i32* %var to %union.tree_node**, !dbg !3808
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3808
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3792, metadata !DIExpression()), !dbg !3801
  br label %if.end, !dbg !3809

if.end:                                           ; preds = %if.then, %if.then2, %land.lhs.true
  %oldvuse.0 = phi %union.tree_node* [ %4, %if.then2 ], [ %call, %land.lhs.true ], [ null, %if.then ], !dbg !3801
  call void @llvm.dbg.value(metadata %union.tree_node* %oldvuse.0, metadata !3792, metadata !DIExpression()), !dbg !3801
  %5 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3810
  %cmp3 = icmp eq %union.tree_node* %5, null, !dbg !3812
  %6 = load %union.tree_node*, %union.tree_node** @build_vdef, align 8, !dbg !3810
  %cond = select i1 %cmp3, %union.tree_node* %6, %union.tree_node* %5, !dbg !3810
  %cmp4 = icmp eq %union.tree_node* %oldvuse.0, %cond, !dbg !3813
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !3814

if.then5:                                         ; preds = %if.end
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %stmt, %union.tree_node* null) #7, !dbg !3815
  br label %if.end6, !dbg !3815

if.end6:                                          ; preds = %if.end, %if.then5
  %call7 = tail call fastcc %union.tree_node** @gimple_vuse_ptr(%union.gimple_statement_d* %stmt) #7, !dbg !3816
  %7 = bitcast %union.tree_node** %call7 to %union.tree_node*, !dbg !3816
  %call8 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_insert(%struct.VEC_tree_heap** nonnull @build_uses, i32 0, %union.tree_node* %7) #7, !dbg !3816
  br label %if.end9, !dbg !3817

if.end9:                                          ; preds = %entry, %if.end6
  %next = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %new_list, i64 0, i32 0, !dbg !3818
  store %struct.use_optype_d* null, %struct.use_optype_d** %next, align 8, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %new_list, metadata !3791, metadata !DIExpression()), !dbg !3795
  %call10 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3820
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call10, metadata !3789, metadata !DIExpression()), !dbg !3795
  %8 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3821
  %cmp11 = icmp eq %union.tree_node* %8, null, !dbg !3823
  br i1 %cmp11, label %land.lhs.true12, label %if.end16, !dbg !3824

land.lhs.true12:                                  ; preds = %if.end9
  %call13 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3825
  %cmp14 = icmp eq %union.tree_node* %call13, null, !dbg !3826
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !3827

if.then15:                                        ; preds = %land.lhs.true12
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %stmt, %union.tree_node* null) #7, !dbg !3828
  br label %if.end16, !dbg !3828

if.end16:                                         ; preds = %land.lhs.true12, %if.then15, %if.end9
  %tobool17 = icmp eq %struct.use_optype_d* %call10, null, !dbg !3829
  br i1 %tobool17, label %if.end26, label %for.cond.preheader, !dbg !3831

for.cond.preheader:                               ; preds = %if.end16
  br label %for.cond, !dbg !3832

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %ptr.0 = phi %struct.use_optype_d* [ %9, %for.body ], [ %call10, %for.cond.preheader ], !dbg !3835
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %ptr.0, metadata !3790, metadata !DIExpression()), !dbg !3795
  %tobool19 = icmp eq %struct.use_optype_d* %ptr.0, null, !dbg !3832
  br i1 %tobool19, label %for.end, label %for.body, !dbg !3832

for.body:                                         ; preds = %for.cond
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.0, i64 0, i32 1, !dbg !3836
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !3838
  %next20 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %ptr.0, i64 0, i32 0, !dbg !3839
  %9 = load %struct.use_optype_d*, %struct.use_optype_d** %next20, align 8, !dbg !3839
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %9, metadata !3790, metadata !DIExpression()), !dbg !3795
  br label %for.cond, !dbg !3840, !llvm.loop !3841

for.end:                                          ; preds = %for.cond
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3843
  %call21 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %10) #7, !dbg !3844
  %free_uses = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call21, i64 0, i32 5, !dbg !3845
  %11 = bitcast %struct.use_optype_d** %free_uses to i64*, !dbg !3845
  %12 = load i64, i64* %11, align 8, !dbg !3845
  %13 = bitcast %struct.use_optype_d* %call10 to i64*, !dbg !3846
  store i64 %12, i64* %13, align 8, !dbg !3846
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3847
  %call24 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %14) #7, !dbg !3848
  %free_uses25 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call24, i64 0, i32 5, !dbg !3849
  store %struct.use_optype_d* %call10, %struct.use_optype_d** %free_uses25, align 8, !dbg !3850
  br label %if.end26, !dbg !3851

if.end26:                                         ; preds = %if.end16, %for.end
  %15 = load %union.tree_node*, %union.tree_node** @build_vuse, align 8, !dbg !3852
  %cmp27 = icmp eq %union.tree_node* %15, null, !dbg !3854
  br i1 %cmp27, label %if.end36, label %land.lhs.true28, !dbg !3855

land.lhs.true28:                                  ; preds = %if.end26
  %call29 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3856
  %cmp30 = icmp eq %union.tree_node* %call29, null, !dbg !3857
  br i1 %cmp30, label %if.then31, label %if.end36, !dbg !3858

if.then31:                                        ; preds = %land.lhs.true28
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3859
  %call33 = tail call fastcc %union.tree_node* @gimple_vop(%struct.function* %16) #7, !dbg !3861
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %stmt, %union.tree_node* %call33) #7, !dbg !3862
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3863
  %call35 = tail call fastcc %union.tree_node* @gimple_vop(%struct.function* %17) #7, !dbg !3864
  tail call void @mark_sym_for_renaming(%union.tree_node* %call35) #6, !dbg !3865
  br label %if.end36, !dbg !3866

if.end36:                                         ; preds = %if.end26, %if.then31, %land.lhs.true28
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()), !dbg !3795
  br label %for.cond37, !dbg !3867

for.cond37:                                       ; preds = %for.body46, %if.end36
  %last.0 = phi %struct.use_optype_d* [ %new_list, %if.end36 ], [ %call54, %for.body46 ], !dbg !3795
  %new_i.0 = phi i32 [ 0, %if.end36 ], [ %inc, %for.body46 ], !dbg !3869
  call void @llvm.dbg.value(metadata i32 %new_i.0, metadata !3787, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last.0, metadata !3791, metadata !DIExpression()), !dbg !3795
  %18 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_uses, align 8, !dbg !3870
  %base40 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %18, i64 0, i32 0, !dbg !3870
  %call44 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base40) #7, !dbg !3870
  %cmp45 = icmp ult i32 %new_i.0, %call44, !dbg !3872
  br i1 %cmp45, label %for.body46, label %for.end56, !dbg !3873

for.body46:                                       ; preds = %for.cond37
  %19 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_uses, align 8, !dbg !3874
  %base49 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %19, i64 0, i32 0, !dbg !3874
  %call53 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base49, i32 %new_i.0) #7, !dbg !3874
  %20 = bitcast %union.tree_node* %call53 to %union.tree_node**, !dbg !3875
  %call54 = call fastcc %struct.use_optype_d* @add_use_op(%union.gimple_statement_d* %stmt, %union.tree_node** %20, %struct.use_optype_d* %last.0) #7, !dbg !3876
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call54, metadata !3791, metadata !DIExpression()), !dbg !3795
  %inc = add i32 %new_i.0, 1, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3787, metadata !DIExpression()), !dbg !3795
  br label %for.cond37, !dbg !3878, !llvm.loop !3879

for.end56:                                        ; preds = %for.cond37
  %21 = load %struct.use_optype_d*, %struct.use_optype_d** %next, align 8, !dbg !3881
  call fastcc void @gimple_set_use_ops(%union.gimple_statement_d* %stmt, %struct.use_optype_d* %21) #7, !dbg !3882
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3883
  ret void, !dbg !3883
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cleanup_build_arrays() unnamed_addr #0 !dbg !3884 {
entry:
  store %union.tree_node* null, %union.tree_node** @build_vdef, align 8, !dbg !3885
  store %union.tree_node* null, %union.tree_node** @build_vuse, align 8, !dbg !3886
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_defs, align 8, !dbg !3887
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3887
  tail call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base, i32 0) #7, !dbg !3887
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @build_uses, align 8, !dbg !3888
  %base3 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !3888
  tail call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base3, i32 0) #7, !dbg !3888
  ret void, !dbg !3889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_insert(%struct.VEC_tree_heap** %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3890 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3895, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3896, metadata !DIExpression()), !dbg !3897
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3898
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3898
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3898
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3898

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3898
  br label %cond.end, !dbg !3898

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3898
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_insert(%struct.VEC_tree_base* %cond, i32 0, %union.tree_node* %obj_) #7, !dbg !3898
  ret %union.tree_node** %call1, !dbg !3898
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_vdef_ptr(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3899 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3901, metadata !DIExpression()), !dbg !3902
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3903
  %tobool = icmp eq i8 %call, 0, !dbg !3903
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3905
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3905
  %retval.0 = select i1 %tobool, %union.tree_node** null, %union.tree_node** %0, !dbg !3905
  ret %union.tree_node** %retval.0, !dbg !3906
}

declare dso_local void @release_ssa_name(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @mark_sym_for_renaming(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @add_def_op(%union.tree_node** %op, %struct.def_optype_d* %last) unnamed_addr #0 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %op, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %last, metadata !3912, metadata !DIExpression()), !dbg !3914
  %call = tail call fastcc %struct.def_optype_d* @alloc_def() #7, !dbg !3915
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %call, metadata !3913, metadata !DIExpression()), !dbg !3914
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %call, i64 0, i32 1, !dbg !3916
  store %union.tree_node** %op, %union.tree_node*** %def_ptr, align 8, !dbg !3917
  %next = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %last, i64 0, i32 0, !dbg !3918
  store %struct.def_optype_d* %call, %struct.def_optype_d** %next, align 8, !dbg !3919
  %next1 = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %call, i64 0, i32 0, !dbg !3920
  store %struct.def_optype_d* null, %struct.def_optype_d** %next1, align 8, !dbg !3921
  ret %struct.def_optype_d* %call, !dbg !3922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_insert(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3923 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3927, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 0, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3929, metadata !DIExpression()), !dbg !3931
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 0, !dbg !3932
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3930, metadata !DIExpression()), !dbg !3931
  %add.ptr = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 1, !dbg !3932
  %0 = bitcast %union.tree_node** %add.ptr to i8*, !dbg !3932
  %1 = bitcast %union.tree_node** %arrayidx to i8*, !dbg !3932
  %num4 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3932
  %2 = load i32, i32* %num4, align 8, !dbg !3932
  %inc = add i32 %2, 1, !dbg !3932
  store i32 %inc, i32* %num4, align 8, !dbg !3932
  %conv5 = zext i32 %2 to i64, !dbg !3932
  %mul = shl nuw nsw i64 %conv5, 3, !dbg !3932
  %call = tail call i8* @memmove(i8* nonnull %0, i8* nonnull %1, i64 %mul) #6, !dbg !3932
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3932
  ret %union.tree_node** %arrayidx, !dbg !3932
}

declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @alloc_def() unnamed_addr #0 !dbg !3933 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3938
  %call = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %0) #7, !dbg !3940
  %free_defs = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call, i64 0, i32 4, !dbg !3941
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %free_defs, align 8, !dbg !3941
  %tobool = icmp eq %struct.def_optype_d* %1, null, !dbg !3940
  br i1 %tobool, label %if.else, label %if.then, !dbg !3942

if.then:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3943
  %call2 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %2) #7, !dbg !3945
  %free_defs3 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call2, i64 0, i32 4, !dbg !3946
  %3 = load %struct.def_optype_d*, %struct.def_optype_d** %free_defs3, align 8, !dbg !3946
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %3, metadata !3937, metadata !DIExpression()), !dbg !3947
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3948
  %call5 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %4) #7, !dbg !3949
  %free_defs6 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call5, i64 0, i32 4, !dbg !3950
  %5 = bitcast %struct.def_optype_d** %free_defs6 to i64**, !dbg !3950
  %6 = load i64*, i64** %5, align 8, !dbg !3950
  %7 = load i64, i64* %6, align 8, !dbg !3951
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3952
  %call8 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %8) #7, !dbg !3953
  %free_defs9 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call8, i64 0, i32 4, !dbg !3954
  %9 = bitcast %struct.def_optype_d** %free_defs9 to i64*, !dbg !3955
  store i64 %7, i64* %9, align 8, !dbg !3955
  br label %if.end, !dbg !3956

if.else:                                          ; preds = %entry
  %call10 = tail call fastcc i8* @ssa_operand_alloc(i32 16) #7, !dbg !3957
  %10 = bitcast i8* %call10 to %struct.def_optype_d*, !dbg !3958
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %10, metadata !3937, metadata !DIExpression()), !dbg !3947
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi %struct.def_optype_d* [ %3, %if.then ], [ %10, %if.else ], !dbg !3959
  call void @llvm.dbg.value(metadata %struct.def_optype_d* %ret.0, metadata !3937, metadata !DIExpression()), !dbg !3947
  ret %struct.def_optype_d* %ret.0, !dbg !3960
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @ssa_operand_alloc(i32 %size) unnamed_addr #0 !dbg !3961 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !3965, metadata !DIExpression()), !dbg !3970
  %cmp = icmp eq i32 %size, 40, !dbg !3971
  %cmp3 = icmp eq i32 %size, 16, !dbg !3971
  %or.cond = or i1 %cmp, %cmp3, !dbg !3971
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3971

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3971
  br label %cond.end, !dbg !3971

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3972
  %call = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %0) #7, !dbg !3973
  %operand_memory_index = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call, i64 0, i32 1, !dbg !3974
  %1 = load i32, i32* %operand_memory_index, align 8, !dbg !3974
  %add = add i32 %1, %size, !dbg !3975
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3976
  %call6 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %2) #7, !dbg !3977
  %ssa_operand_mem_size = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call6, i64 0, i32 2, !dbg !3978
  %3 = load i32, i32* %ssa_operand_mem_size, align 4, !dbg !3978
  %cmp7 = icmp ult i32 %add, %3, !dbg !3979
  br i1 %cmp7, label %if.end, label %if.then, !dbg !3980

if.then:                                          ; preds = %cond.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3981
  %call11 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %4) #7, !dbg !3982
  %ssa_operand_mem_size12 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call11, i64 0, i32 2, !dbg !3983
  %5 = load i32, i32* %ssa_operand_mem_size12, align 4, !dbg !3983
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1016, label %sw.bb16
    i32 4088, label %sw.bb20
    i32 16376, label %sw.bb20
  ], !dbg !3984

sw.bb:                                            ; preds = %if.then
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3985
  %call14 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %6) #7, !dbg !3987
  %ssa_operand_mem_size15 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call14, i64 0, i32 2, !dbg !3988
  store i32 1016, i32* %ssa_operand_mem_size15, align 4, !dbg !3989
  br label %sw.epilog, !dbg !3990

sw.bb16:                                          ; preds = %if.then
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3991
  %call18 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %7) #7, !dbg !3992
  %ssa_operand_mem_size19 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call18, i64 0, i32 2, !dbg !3993
  store i32 4088, i32* %ssa_operand_mem_size19, align 4, !dbg !3994
  br label %sw.epilog, !dbg !3995

sw.bb20:                                          ; preds = %if.then, %if.then
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3996
  %call22 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %8) #7, !dbg !3997
  %ssa_operand_mem_size23 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call22, i64 0, i32 2, !dbg !3998
  store i32 16376, i32* %ssa_operand_mem_size23, align 4, !dbg !3999
  br label %sw.epilog, !dbg !4000

sw.default:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 319, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4001
  br label %sw.epilog, !dbg !4002

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb16, %sw.bb
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4003
  %call25 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %9) #7, !dbg !4003
  %ssa_operand_mem_size26 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call25, i64 0, i32 2, !dbg !4003
  %10 = load i32, i32* %ssa_operand_mem_size26, align 4, !dbg !4003
  %conv27 = zext i32 %10 to i64, !dbg !4003
  %add28 = add nuw nsw i64 %conv27, 8, !dbg !4003
  %call29 = tail call i8* @ggc_alloc_stat(i64 %add28) #6, !dbg !4003
  call void @llvm.dbg.value(metadata i8* %call29, metadata !3967, metadata !DIExpression()), !dbg !4004
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4005
  %call31 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %11) #7, !dbg !4006
  %12 = bitcast %struct.ssa_operands* %call31 to i64*, !dbg !4007
  %13 = load i64, i64* %12, align 8, !dbg !4007
  %14 = bitcast i8* %call29 to i64*, !dbg !4008
  store i64 %13, i64* %14, align 8, !dbg !4008
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4009
  %call33 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %15) #7, !dbg !4010
  %16 = bitcast %struct.ssa_operands* %call33 to i8**, !dbg !4011
  store i8* %call29, i8** %16, align 8, !dbg !4011
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4012
  %call36 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %17) #7, !dbg !4013
  %operand_memory_index37 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call36, i64 0, i32 1, !dbg !4014
  store i32 0, i32* %operand_memory_index37, align 8, !dbg !4015
  br label %if.end, !dbg !4016

if.end:                                           ; preds = %cond.end, %sw.epilog
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4017
  %call39 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %18) #7, !dbg !4018
  %operand_memory40 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call39, i64 0, i32 0, !dbg !4019
  %19 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** %operand_memory40, align 8, !dbg !4019
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4020
  %call42 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %20) #7, !dbg !4021
  %operand_memory_index43 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call42, i64 0, i32 1, !dbg !4022
  %21 = load i32, i32* %operand_memory_index43, align 8, !dbg !4022
  %idxprom = zext i32 %21 to i64, !dbg !4018
  %arrayidx = getelementptr inbounds %struct.ssa_operand_memory_d, %struct.ssa_operand_memory_d* %19, i64 0, i32 1, i64 %idxprom, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !3966, metadata !DIExpression()), !dbg !3970
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4023
  %call45 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %22) #7, !dbg !4024
  %operand_memory_index46 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call45, i64 0, i32 1, !dbg !4025
  %23 = load i32, i32* %operand_memory_index46, align 8, !dbg !4026
  %add47 = add i32 %23, %size, !dbg !4026
  store i32 %add47, i32* %operand_memory_index46, align 8, !dbg !4026
  ret i8* %arrayidx, !dbg !4027
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_vuse_ptr(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4030, metadata !DIExpression()), !dbg !4031
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4032
  %tobool = icmp eq i8 %call, 0, !dbg !4032
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4034
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4034
  %retval.0 = select i1 %tobool, %union.tree_node** null, %union.tree_node** %0, !dbg !4034
  ret %union.tree_node** %retval.0, !dbg !4035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @add_use_op(%union.gimple_statement_d* %stmt, %union.tree_node** %op, %struct.use_optype_d* %last) unnamed_addr #0 !dbg !4036 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4040, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata %union.tree_node** %op, metadata !4041, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %last, metadata !4042, metadata !DIExpression()), !dbg !4044
  %call = tail call fastcc %struct.use_optype_d* @alloc_use() #7, !dbg !4045
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %call, metadata !4043, metadata !DIExpression()), !dbg !4044
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %call, i64 0, i32 1, i32 3, !dbg !4046
  store %union.tree_node** %op, %union.tree_node*** %use, align 8, !dbg !4047
  %use_ptr1 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %call, i64 0, i32 1, !dbg !4048
  %0 = load %union.tree_node*, %union.tree_node** %op, align 8, !dbg !4049
  tail call fastcc void @link_imm_use_stmt(%struct.ssa_use_operand_d* nonnull %use_ptr1, %union.tree_node* %0, %union.gimple_statement_d* %stmt) #7, !dbg !4050
  %next = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %last, i64 0, i32 0, !dbg !4051
  store %struct.use_optype_d* %call, %struct.use_optype_d** %next, align 8, !dbg !4052
  %next2 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %call, i64 0, i32 0, !dbg !4053
  store %struct.use_optype_d* null, %struct.use_optype_d** %next2, align 8, !dbg !4054
  ret %struct.use_optype_d* %call, !dbg !4055
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @alloc_use() unnamed_addr #0 !dbg !4056 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4061
  %call = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %0) #7, !dbg !4063
  %free_uses = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call, i64 0, i32 5, !dbg !4064
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %free_uses, align 8, !dbg !4064
  %tobool = icmp eq %struct.use_optype_d* %1, null, !dbg !4063
  br i1 %tobool, label %if.else, label %if.then, !dbg !4065

if.then:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4066
  %call2 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %2) #7, !dbg !4068
  %free_uses3 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call2, i64 0, i32 5, !dbg !4069
  %3 = load %struct.use_optype_d*, %struct.use_optype_d** %free_uses3, align 8, !dbg !4069
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %3, metadata !4060, metadata !DIExpression()), !dbg !4070
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4071
  %call5 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %4) #7, !dbg !4072
  %free_uses6 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call5, i64 0, i32 5, !dbg !4073
  %5 = bitcast %struct.use_optype_d** %free_uses6 to i64**, !dbg !4073
  %6 = load i64*, i64** %5, align 8, !dbg !4073
  %7 = load i64, i64* %6, align 8, !dbg !4074
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4075
  %call8 = tail call fastcc %struct.ssa_operands* @gimple_ssa_operands(%struct.function* %8) #7, !dbg !4076
  %free_uses9 = getelementptr inbounds %struct.ssa_operands, %struct.ssa_operands* %call8, i64 0, i32 5, !dbg !4077
  %9 = bitcast %struct.use_optype_d** %free_uses9 to i64*, !dbg !4078
  store i64 %7, i64* %9, align 8, !dbg !4078
  br label %if.end, !dbg !4079

if.else:                                          ; preds = %entry
  %call10 = tail call fastcc i8* @ssa_operand_alloc(i32 40) #7, !dbg !4080
  %10 = bitcast i8* %call10 to %struct.use_optype_d*, !dbg !4081
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %10, metadata !4060, metadata !DIExpression()), !dbg !4070
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi %struct.use_optype_d* [ %3, %if.then ], [ %10, %if.else ], !dbg !4082
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %ret.0, metadata !4060, metadata !DIExpression()), !dbg !4070
  ret %struct.use_optype_d* %ret.0, !dbg !4083
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_stmt(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4084 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4088, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4089, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4090, metadata !DIExpression()), !dbg !4091
  %tobool = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !4092
  br i1 %tobool, label %if.else, label %if.then, !dbg !4094

if.then:                                          ; preds = %entry
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) #7, !dbg !4095
  br label %if.end, !dbg !4095

if.else:                                          ; preds = %entry
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* null) #7, !dbg !4096
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %stmt1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 2, i32 0, !dbg !4097
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt1, align 8, !dbg !4098
  ret void, !dbg !4099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4100 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4105, metadata !DIExpression()), !dbg !4107
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4108
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4110

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4111
  %bf.load = load i64, i64* %0, align 8, !dbg !4111
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4112
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4112
  br i1 %cmp, label %if.else, label %if.then, !dbg !4113

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4114
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4115
  br label %if.end, !dbg !4116

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4117
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4117
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4106, metadata !DIExpression()), !dbg !4107
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !4119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4120
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4121 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4126, metadata !DIExpression()), !dbg !4127
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4128
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4129
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4130
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4130
  %1 = load i64, i64* %0, align 8, !dbg !4130
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4131
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4132
  store i64 %1, i64* %2, align 8, !dbg !4132
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4133
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4134
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4135
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4136
  ret void, !dbg !4137
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !4138 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4142, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i32 0, metadata !4143, metadata !DIExpression()), !dbg !4144
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4145
  br label %cond.true, !dbg !4145

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4145

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !4145

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !4145

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4146
  store i32 0, i32* %num3, align 8, !dbg !4146
  br label %if.end, !dbg !4146

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !4145
}

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #1

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4148 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4152, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4153, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4155, metadata !DIExpression()), !dbg !4170
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !4171
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4171
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !4156, metadata !DIExpression()), !dbg !4170
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #7, !dbg !4172
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4157, metadata !DIExpression()), !dbg !4170
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !4173
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !4173
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4174
  %tobool = icmp eq i8 %call1, 0, !dbg !4174
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4169, metadata !DIExpression()), !dbg !4170
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #7, !dbg !4175
  %cmp = icmp eq i32 %call2, 16, !dbg !4177
  br i1 %cmp, label %if.then, label %if.else, !dbg !4178

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %for.cond, !dbg !4179

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !4182
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !4154, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4183
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4183
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !4179

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !4185
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !4187
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !4188

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #7, !dbg !4189
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !4155, metadata !DIExpression()), !dbg !4170
  br label %for.inc, !dbg !4190

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4183
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %for.cond, !dbg !4183, !llvm.loop !4191

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !4193

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %for.cond17, !dbg !4195

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !4199
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !4154, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4200
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4200
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !4195

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #7, !dbg !4202
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !4204
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !4205

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #7, !dbg !4206
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !4155, metadata !DIExpression()), !dbg !4170
  br label %for.inc28, !dbg !4207

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4158, metadata !DIExpression(DW_OP_deref)), !dbg !4170
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4200
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !4154, metadata !DIExpression()), !dbg !4170
  br label %for.cond17, !dbg !4200, !llvm.loop !4208

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #7, !dbg !4210
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !4154, metadata !DIExpression()), !dbg !4170
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !4212
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !4213

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #7, !dbg !4214
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !4217
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !4218

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #7, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !4155, metadata !DIExpression()), !dbg !4170
  br label %if.end44, !dbg !4220

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  br label %if.end44, !dbg !4221

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4155, metadata !DIExpression()), !dbg !4170
  br label %if.end44, !dbg !4221

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !4223
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !4155, metadata !DIExpression()), !dbg !4170
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !4221
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4221
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !4224
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !4225

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4226
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #7, !dbg !4227
  br label %if.end49, !dbg !4227

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4228
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #7, !dbg !4229
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !4230
  ret void, !dbg !4230
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !4231 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4236, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4237, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4238, metadata !DIExpression()), !dbg !4241
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !4242
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4239, metadata !DIExpression()), !dbg !4241
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4243
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4244
  store i8 0, i8* %done, align 8, !dbg !4245
  %and = and i32 %flags, 5, !dbg !4246
  %cmp = icmp eq i32 %and, 0, !dbg !4246
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4246

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4246
  br label %cond.end, !dbg !4246

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4247
  %tobool = icmp eq i8 %call1, 0, !dbg !4247
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !4247
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !4240, metadata !DIExpression()), !dbg !4241
  %and3 = and i32 %cond2, %flags, !dbg !4248
  %cmp4 = icmp eq i32 %and3, 0, !dbg !4250
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4251

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !4252
  br label %cleanup, !dbg !4254

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4255
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4256
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !4257
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4258
  store i32 %call7, i32* %num_phi, align 4, !dbg !4259
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4260
  store i32 2, i32* %iter_type, align 4, !dbg !4261
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4262
  br label %cleanup, !dbg !4263

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !4241
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4264
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4265 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4271, metadata !DIExpression()), !dbg !4272
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4273
  %0 = load i8, i8* %done, align 8, !dbg !4273
  ret i8 %0, !dbg !4274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !4275 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !4279, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !4281, metadata !DIExpression()), !dbg !4282
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !4283
  br i1 %cmp, label %if.end3, label %if.then, !dbg !4285

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !4286
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4286
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !4289
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !4290

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #7, !dbg !4291
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #7, !dbg !4293
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !4281, metadata !DIExpression()), !dbg !4282
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !4281, metadata !DIExpression()), !dbg !4282
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !4294
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4295 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4299, metadata !DIExpression()), !dbg !4301
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4302
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4302
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4304
  br i1 %tobool, label %if.end, label %if.then, !dbg !4305

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4306
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4300, metadata !DIExpression()), !dbg !4301
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4308
  %2 = load i64, i64* %1, align 8, !dbg !4308
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4309
  store i64 %2, i64* %3, align 8, !dbg !4309
  br label %cleanup, !dbg !4310

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4311
  %4 = load i32, i32* %phi_i, align 8, !dbg !4311
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4313
  %5 = load i32, i32* %num_phi, align 4, !dbg !4313
  %cmp = icmp slt i32 %4, %5, !dbg !4314
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4315

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4316
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4316
  %inc = add nsw i32 %4, 1, !dbg !4316
  store i32 %inc, i32* %phi_i, align 8, !dbg !4316
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !4316
  br label %cleanup, !dbg !4318

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4319
  store i8 1, i8* %done, align 8, !dbg !4320
  br label %cleanup, !dbg !4321

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4301
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4322
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4323 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4325, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4326, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4327, metadata !DIExpression()), !dbg !4328
  %0 = and i32 %flags, 11, !dbg !4329
  %1 = icmp eq i32 %0, 1, !dbg !4329
  br i1 %1, label %cond.end, label %cond.true, !dbg !4329

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4329
  br label %cond.end, !dbg !4329

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !4330
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4331
  store i32 2, i32* %iter_type, align 4, !dbg !4332
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4333
  ret %struct.ssa_use_operand_d* %call, !dbg !4334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4339, metadata !DIExpression()), !dbg !4341
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4342
  %tobool = icmp eq i8 %call, 0, !dbg !4342
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4344

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4345
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4345
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4345
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !4340, metadata !DIExpression()), !dbg !4341
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !4346
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !4348

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !4349
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !4349
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4350
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4350
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !4351
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !4352
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !4353
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !4353

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !4354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4355 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4357, metadata !DIExpression()), !dbg !4358
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4359
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4359
  ret %union.tree_node* %0, !dbg !4360
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4361 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4365, metadata !DIExpression()), !dbg !4366
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4367
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4368
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4369
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4370
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4371
  store i32 0, i32* %iter_type, align 4, !dbg !4372
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4373
  store i32 0, i32* %phi_i, align 8, !dbg !4374
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4375
  store i32 0, i32* %num_phi, align 4, !dbg !4376
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4377
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4378
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4379
  store i8 1, i8* %done, align 8, !dbg !4380
  ret void, !dbg !4381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4382 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4384, metadata !DIExpression()), !dbg !4385
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4386
  %0 = load i32, i32* %nargs, align 4, !dbg !4386
  ret i32 %0, !dbg !4387
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4388 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4392, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata i32 %i, metadata !4393, metadata !DIExpression()), !dbg !4394
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !4395
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4396
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4397
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4398 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4403, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i32 %index, metadata !4404, metadata !DIExpression()), !dbg !4405
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4406
  %0 = load i32, i32* %capacity, align 8, !dbg !4406
  %cmp = icmp ult i32 %0, %index, !dbg !4406
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4406

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4406
  br label %cond.end, !dbg !4406

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4407
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4407
  ret %struct.phi_arg_d* %arrayidx, !dbg !4408
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4409 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4413, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4414, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4415, metadata !DIExpression()), !dbg !4416
  %0 = and i32 %flags, 10, !dbg !4417
  %1 = icmp eq i32 %0, 8, !dbg !4417
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !4417

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !4417
  %3 = icmp eq i32 %2, 4, !dbg !4417
  br i1 %3, label %cond.true, label %cond.end, !dbg !4417

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4417
  br label %cond.end, !dbg !4417

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !4418
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !4419

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !4420
  br label %cond.end12, !dbg !4419

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !4419
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4421
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !4422
  %and14 = and i32 %flags, 8, !dbg !4423
  %tobool15 = icmp eq i32 %and14, 0, !dbg !4423
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !4425

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !4426
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !4427

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !4428
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !4429
  br i1 %cmp, label %if.end, label %if.then, !dbg !4430

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4431
  %6 = load i64*, i64** %5, align 8, !dbg !4431
  %7 = load i64, i64* %6, align 8, !dbg !4432
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4433
  store i64 %7, i64* %8, align 8, !dbg !4433
  br label %if.end, !dbg !4434

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !4435
  %tobool24 = icmp eq i32 %and23, 0, !dbg !4435
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !4436

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !4437
  br label %cond.end28, !dbg !4436

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !4436
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4438
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !4439
  %and30 = and i32 %flags, 4, !dbg !4440
  %tobool31 = icmp eq i32 %and30, 0, !dbg !4440
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !4442

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !4443
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !4444

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !4445
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !4446
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !4447

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4448
  %11 = load i64*, i64** %10, align 8, !dbg !4448
  %12 = load i64, i64* %11, align 8, !dbg !4449
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4450
  store i64 %12, i64* %13, align 8, !dbg !4450
  br label %if.end42, !dbg !4451

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4452
  store i8 0, i8* %done, align 8, !dbg !4453
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4454
  store i32 0, i32* %phi_i, align 8, !dbg !4455
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4456
  store i32 0, i32* %num_phi, align 4, !dbg !4457
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4458
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4459
  ret void, !dbg !4460
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1549, !1550, !1551}
!llvm.ident = !{!1552}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n_initialized", scope: !2, file: !3, line: 148, type: !337, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !334, globals: !1528, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-operands.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !288, !314, !327}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!9 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !202, line: 363, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !202, line: 355, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !213, line: 474, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!219 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !250, line: 51, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!252 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!257 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!258 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!259 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!260 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!261 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!262 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!263 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!264 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!265 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!266 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!267 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!268 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!269 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!270 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!271 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!272 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!273 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!274 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!275 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!276 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!277 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!278 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!279 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!280 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!281 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!282 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!283 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!284 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!285 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!286 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!287 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !250, line: 727, baseType: !7, size: 32, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!290 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!291 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!292 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!293 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!294 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!295 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!296 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!297 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!298 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!299 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!300 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!301 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!302 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!303 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!304 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!305 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!306 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!307 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!308 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!309 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!310 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!311 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!312 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!313 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code_class", file: !6, line: 58, baseType: !7, size: 32, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!316 = !DIEnumerator(name: "tcc_exceptional", value: 0, isUnsigned: true)
!317 = !DIEnumerator(name: "tcc_constant", value: 1, isUnsigned: true)
!318 = !DIEnumerator(name: "tcc_type", value: 2, isUnsigned: true)
!319 = !DIEnumerator(name: "tcc_declaration", value: 3, isUnsigned: true)
!320 = !DIEnumerator(name: "tcc_reference", value: 4, isUnsigned: true)
!321 = !DIEnumerator(name: "tcc_comparison", value: 5, isUnsigned: true)
!322 = !DIEnumerator(name: "tcc_unary", value: 6, isUnsigned: true)
!323 = !DIEnumerator(name: "tcc_binary", value: 7, isUnsigned: true)
!324 = !DIEnumerator(name: "tcc_statement", value: 8, isUnsigned: true)
!325 = !DIEnumerator(name: "tcc_vl_exp", value: 9, isUnsigned: true)
!326 = !DIEnumerator(name: "tcc_expression", value: 10, isUnsigned: true)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !328, line: 119, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!329 = !{!330, !331, !332, !333}
!330 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!332 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!333 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!334 = !{!335, !336, !337, !338, !341, !342, !344, !5, !1517, !455, !7, !1522, !640, !1523, !673, !339, !668, !1076, !675, !1525}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!337 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !345, line: 56, baseType: !346)
!345 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !348)
!348 = !{!349, !382, !388, !401, !408, !415, !420, !429, !435, !448, !460, !498, !506, !534, !551, !552, !557, !566, !572, !577, !581, !585, !1166, !1215, !1221, !1227, !1234, !1247, !1261, !1278, !1290, !1312, !1327, !1499}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !347, file: !6, line: 3372, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !350, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !350, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !350, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !350, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !350, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !350, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !350, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !350, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !350, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !350, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !350, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !350, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !350, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !350, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !350, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !350, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !350, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !350, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !350, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !350, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !350, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !350, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !350, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !350, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !350, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !350, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !350, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !350, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !350, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !350, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !347, file: !6, line: 3373, baseType: !383, size: 192)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !383, file: !6, line: 403, baseType: !350, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !383, file: !6, line: 404, baseType: !344, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !383, file: !6, line: 405, baseType: !344, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !347, file: !6, line: 3374, baseType: !389, size: 320)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !389, file: !6, line: 1385, baseType: !383, size: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !389, file: !6, line: 1386, baseType: !393, size: 128, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !394, line: 58, baseType: !395)
!394 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 54, size: 128, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !395, file: !394, line: 56, baseType: !398, size: 64)
!398 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !395, file: !394, line: 57, baseType: !400, size: 64, offset: 64)
!400 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !347, file: !6, line: 3375, baseType: !402, size: 256)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !402, file: !6, line: 1398, baseType: !383, size: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !402, file: !6, line: 1399, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !347, file: !6, line: 3376, baseType: !409, size: 256)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !409, file: !6, line: 1409, baseType: !383, size: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !409, file: !6, line: 1410, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !347, file: !6, line: 3377, baseType: !416, size: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !416, file: !6, line: 1438, baseType: !383, size: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !416, file: !6, line: 1439, baseType: !344, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !347, file: !6, line: 3378, baseType: !421, size: 256)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !421, file: !6, line: 1419, baseType: !383, size: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !421, file: !6, line: 1420, baseType: !337, size: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !421, file: !6, line: 1421, baseType: !426, size: 8, offset: 224)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 8, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 1)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !347, file: !6, line: 3379, baseType: !430, size: 320)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !430, file: !6, line: 1429, baseType: !383, size: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !430, file: !6, line: 1430, baseType: !344, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !430, file: !6, line: 1431, baseType: !344, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !347, file: !6, line: 3380, baseType: !436, size: 320)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !436, file: !6, line: 1461, baseType: !383, size: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !436, file: !6, line: 1462, baseType: !440, size: 128, offset: 192)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !441, line: 31, size: 128, elements: !442)
!441 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!442 = !{!443, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !440, file: !441, line: 32, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !440, file: !441, line: 33, baseType: !7, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !440, file: !441, line: 34, baseType: !7, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !347, file: !6, line: 3381, baseType: !449, size: 384)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !450)
!450 = !{!451, !452, !457, !458, !459}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !449, file: !6, line: 2508, baseType: !383, size: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !449, file: !6, line: 2509, baseType: !453, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !454, line: 58, baseType: !455)
!454 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !456, line: 44, baseType: !7)
!456 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !449, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !6, line: 2511, baseType: !344, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !449, file: !6, line: 2512, baseType: !344, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !347, file: !6, line: 3382, baseType: !461, size: 896)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !461, file: !6, line: 2653, baseType: !449, size: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !6, line: 2654, baseType: !344, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !461, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !461, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !461, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !461, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !461, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !461, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !461, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !461, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !461, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !461, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !461, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !461, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !461, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !461, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !461, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !461, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !461, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !461, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !461, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !461, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !461, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !461, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !461, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !461, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !461, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !461, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !461, file: !6, line: 2705, baseType: !344, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !461, file: !6, line: 2706, baseType: !344, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !461, file: !6, line: 2707, baseType: !344, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !461, file: !6, line: 2708, baseType: !344, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !461, file: !6, line: 2711, baseType: !496, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !347, file: !6, line: 3383, baseType: !499, size: 960)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !499, file: !6, line: 2757, baseType: !461, size: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !499, file: !6, line: 2758, baseType: !503, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !345, line: 50, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !345, line: 49, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !347, file: !6, line: 3384, baseType: !507, size: 1472)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !508)
!508 = !{!509, !530, !531, !532, !533}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !507, file: !6, line: 3115, baseType: !510, size: 1216)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !510, file: !6, line: 2985, baseType: !499, size: 960)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !510, file: !6, line: 2986, baseType: !344, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !510, file: !6, line: 2987, baseType: !344, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !510, file: !6, line: 2988, baseType: !344, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !510, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !510, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !510, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !510, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !510, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !510, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !510, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !510, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !510, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !510, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !510, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !510, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !510, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !510, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !507, file: !6, line: 3117, baseType: !344, size: 64, offset: 1216)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !507, file: !6, line: 3119, baseType: !344, size: 64, offset: 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !507, file: !6, line: 3121, baseType: !344, size: 64, offset: 1344)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !507, file: !6, line: 3123, baseType: !344, size: 64, offset: 1408)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !347, file: !6, line: 3385, baseType: !535, size: 1088)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !535, file: !6, line: 2875, baseType: !499, size: 960)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !535, file: !6, line: 2876, baseType: !503, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !535, file: !6, line: 2877, baseType: !540, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !542, line: 172, size: 128, elements: !543)
!542 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!543 = !{!544, !545, !546, !547, !548, !549, !550}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !541, file: !542, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !541, file: !542, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !541, file: !542, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !541, file: !542, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !541, file: !542, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !541, file: !542, line: 195, baseType: !7, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !541, file: !542, line: 199, baseType: !344, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !347, file: !6, line: 3386, baseType: !510, size: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !347, file: !6, line: 3387, baseType: !553, size: 1280)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !553, file: !6, line: 3094, baseType: !510, size: 1216)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !553, file: !6, line: 3095, baseType: !540, size: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !347, file: !6, line: 3388, baseType: !558, size: 1216)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !6, line: 2825, baseType: !461, size: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !558, file: !6, line: 2827, baseType: !344, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !558, file: !6, line: 2828, baseType: !344, size: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !558, file: !6, line: 2829, baseType: !344, size: 64, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !558, file: !6, line: 2830, baseType: !344, size: 64, offset: 1088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !558, file: !6, line: 2831, baseType: !344, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !347, file: !6, line: 3389, baseType: !567, size: 1024)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !6, line: 2851, baseType: !499, size: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !567, file: !6, line: 2852, baseType: !337, size: 32, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !567, file: !6, line: 2853, baseType: !337, size: 32, offset: 992)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !347, file: !6, line: 3390, baseType: !573, size: 1024)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !573, file: !6, line: 2858, baseType: !499, size: 960)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !573, file: !6, line: 2859, baseType: !540, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !347, file: !6, line: 3391, baseType: !578, size: 960)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !6, line: 2863, baseType: !499, size: 960)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !347, file: !6, line: 3392, baseType: !582, size: 1472)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !582, file: !6, line: 3305, baseType: !507, size: 1472)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !347, file: !6, line: 3393, baseType: !586, size: 1792)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !587)
!587 = !{!588, !589, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !586, file: !6, line: 3249, baseType: !507, size: 1472)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !586, file: !6, line: 3251, baseType: !590, size: 64, offset: 1472)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !592, line: 463, size: 1152, elements: !593)
!592 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!593 = !{!594, !597, !913, !914, !1086, !1089, !1090, !1091, !1092, !1093, !1094, !1118, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !591, file: !592, line: 464, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !592, line: 464, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !591, file: !592, line: 467, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !600)
!600 = !{!601, !888, !889, !902, !903, !904, !905, !906, !907, !909, !911, !912}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !599, file: !202, line: 377, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !345, line: 111, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !605)
!605 = !{!606, !851, !852, !853, !856, !862, !863, !864, !882, !883, !884, !885, !886, !887}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !604, file: !202, line: 219, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !609, file: !202, line: 151, baseType: !612, size: 128)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !613, file: !202, line: 150, baseType: !7, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !613, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !613, file: !202, line: 150, baseType: !618, size: 64, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 64, elements: !427)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !345, line: 108, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !622)
!622 = !{!623, !624, !625, !843, !844, !845, !846, !847, !848, !849}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !621, file: !202, line: 124, baseType: !603, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !621, file: !202, line: 125, baseType: !603, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !621, file: !202, line: 131, baseType: !626, size: 64, offset: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !627)
!627 = !{!628, !842}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !626, file: !202, line: 129, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !345, line: 66, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !250, line: 143, size: 192, elements: !632)
!632 = !{!633, !840, !841}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !631, file: !250, line: 145, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !345, line: 69, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !250, line: 136, size: 192, elements: !637)
!637 = !{!638, !838, !839}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !636, file: !250, line: 137, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !345, line: 58, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !250, line: 737, size: 768, elements: !642)
!642 = !{!643, !660, !693, !699, !704, !709, !716, !722, !728, !733, !747, !752, !758, !763, !773, !778, !796, !803, !810, !816, !821, !827, !833}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !641, file: !250, line: 738, baseType: !644, size: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !250, line: 271, size: 256, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !644, file: !250, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !644, file: !250, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !644, file: !250, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !644, file: !250, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !644, file: !250, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !644, file: !250, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !644, file: !250, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !644, file: !250, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !644, file: !250, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !644, file: !250, line: 312, baseType: !7, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !644, file: !250, line: 316, baseType: !453, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !644, file: !250, line: 319, baseType: !7, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !644, file: !250, line: 323, baseType: !603, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !644, file: !250, line: 327, baseType: !344, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !641, file: !250, line: 739, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !250, line: 350, size: 448, elements: !662)
!662 = !{!663, !691}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !661, file: !250, line: 353, baseType: !664, size: 384)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !250, line: 333, size: 384, elements: !665)
!665 = !{!666, !667, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !664, file: !250, line: 336, baseType: !644, size: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !664, file: !250, line: 343, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !328, line: 37, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !328, line: 39, baseType: !668, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !669, file: !328, line: 40, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !664, file: !250, line: 344, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !328, line: 45, size: 320, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !328, line: 47, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !676, file: !328, line: 48, baseType: !680, size: 256, offset: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !681)
!681 = !{!682, !684, !685, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !680, file: !6, line: 1884, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !6, line: 1885, baseType: !683, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !680, file: !6, line: 1891, baseType: !686, size: 64, offset: 128)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !6, line: 1891, size: 64, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !686, file: !6, line: 1891, baseType: !639, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !686, file: !6, line: 1891, baseType: !344, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !680, file: !6, line: 1892, baseType: !673, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !661, file: !250, line: 359, baseType: !692, size: 64, offset: 384)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 64, elements: !427)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !641, file: !250, line: 740, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !250, line: 365, size: 512, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !694, file: !250, line: 368, baseType: !664, size: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !694, file: !250, line: 373, baseType: !344, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !694, file: !250, line: 374, baseType: !344, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !641, file: !250, line: 741, baseType: !700, size: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !250, line: 380, size: 576, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !700, file: !250, line: 383, baseType: !694, size: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !700, file: !250, line: 389, baseType: !692, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !641, file: !250, line: 742, baseType: !705, size: 320)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !250, line: 395, size: 320, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !705, file: !250, line: 397, baseType: !644, size: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !705, file: !250, line: 400, baseType: !629, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !641, file: !250, line: 743, baseType: !710, size: 448)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !250, line: 406, size: 448, elements: !711)
!711 = !{!712, !713, !714, !715}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !710, file: !250, line: 408, baseType: !644, size: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !710, file: !250, line: 412, baseType: !344, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !710, file: !250, line: 420, baseType: !344, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !710, file: !250, line: 423, baseType: !629, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !641, file: !250, line: 744, baseType: !717, size: 384)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !250, line: 429, size: 384, elements: !718)
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !717, file: !250, line: 431, baseType: !644, size: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !717, file: !250, line: 434, baseType: !344, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !250, line: 437, baseType: !629, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !641, file: !250, line: 745, baseType: !723, size: 384)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !250, line: 443, size: 384, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !723, file: !250, line: 445, baseType: !644, size: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !723, file: !250, line: 449, baseType: !344, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !723, file: !250, line: 453, baseType: !629, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !641, file: !250, line: 746, baseType: !729, size: 320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !250, line: 459, size: 320, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !729, file: !250, line: 461, baseType: !644, size: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !729, file: !250, line: 464, baseType: !344, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !641, file: !250, line: 747, baseType: !734, size: 768)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !250, line: 469, size: 768, elements: !735)
!735 = !{!736, !737, !738, !739, !740}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !734, file: !250, line: 471, baseType: !644, size: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !734, file: !250, line: 474, baseType: !7, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !734, file: !250, line: 475, baseType: !7, size: 32, offset: 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !734, file: !250, line: 478, baseType: !344, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !734, file: !250, line: 481, baseType: !741, size: 384, offset: 384)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 384, elements: !427)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !742, file: !6, line: 1920, baseType: !680, size: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !742, file: !6, line: 1921, baseType: !344, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !742, file: !6, line: 1922, baseType: !453, size: 32, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !641, file: !250, line: 748, baseType: !748, size: 320)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !250, line: 487, size: 320, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !748, file: !250, line: 490, baseType: !644, size: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !748, file: !250, line: 494, baseType: !337, size: 32, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !641, file: !250, line: 749, baseType: !753, size: 384)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !250, line: 500, size: 384, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !753, file: !250, line: 502, baseType: !644, size: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !753, file: !250, line: 506, baseType: !629, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !753, file: !250, line: 510, baseType: !629, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !641, file: !250, line: 750, baseType: !759, size: 320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !250, line: 529, size: 320, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !759, file: !250, line: 531, baseType: !644, size: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !759, file: !250, line: 540, baseType: !629, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !641, file: !250, line: 751, baseType: !764, size: 704)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !250, line: 546, size: 704, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !764, file: !250, line: 549, baseType: !694, size: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !764, file: !250, line: 553, baseType: !342, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !764, file: !250, line: 557, baseType: !336, size: 8, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !764, file: !250, line: 558, baseType: !336, size: 8, offset: 584)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !764, file: !250, line: 559, baseType: !336, size: 8, offset: 592)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !764, file: !250, line: 560, baseType: !336, size: 8, offset: 600)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !764, file: !250, line: 566, baseType: !692, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !641, file: !250, line: 752, baseType: !774, size: 384)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !250, line: 571, size: 384, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !774, file: !250, line: 573, baseType: !705, size: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !250, line: 577, baseType: !344, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !641, file: !250, line: 753, baseType: !779, size: 576)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !250, line: 600, size: 576, elements: !780)
!780 = !{!781, !782, !783, !786, !795}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !779, file: !250, line: 602, baseType: !705, size: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !779, file: !250, line: 605, baseType: !344, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !779, file: !250, line: 609, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !785, line: 46, baseType: !398)
!785 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!786 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !779, file: !250, line: 612, baseType: !787, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !250, line: 581, size: 320, elements: !789)
!789 = !{!790, !791, !792, !793, !794}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !788, file: !250, line: 583, baseType: !5, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !788, file: !250, line: 586, baseType: !344, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !788, file: !250, line: 589, baseType: !344, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !788, file: !250, line: 592, baseType: !344, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !788, file: !250, line: 595, baseType: !344, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !779, file: !250, line: 616, baseType: !629, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !641, file: !250, line: 754, baseType: !797, size: 512)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !250, line: 622, size: 512, elements: !798)
!798 = !{!799, !800, !801, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !797, file: !250, line: 624, baseType: !705, size: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !797, file: !250, line: 628, baseType: !344, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !797, file: !250, line: 632, baseType: !344, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !797, file: !250, line: 636, baseType: !344, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !641, file: !250, line: 755, baseType: !804, size: 704)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !250, line: 642, size: 704, elements: !805)
!805 = !{!806, !807, !808, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !804, file: !250, line: 644, baseType: !797, size: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !804, file: !250, line: 648, baseType: !344, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !804, file: !250, line: 652, baseType: !344, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !804, file: !250, line: 653, baseType: !344, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !641, file: !250, line: 756, baseType: !811, size: 448)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !250, line: 663, size: 448, elements: !812)
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !811, file: !250, line: 665, baseType: !705, size: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !811, file: !250, line: 668, baseType: !344, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !811, file: !250, line: 673, baseType: !344, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !641, file: !250, line: 757, baseType: !817, size: 384)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !250, line: 694, size: 384, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !817, file: !250, line: 696, baseType: !705, size: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !817, file: !250, line: 699, baseType: !344, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !641, file: !250, line: 758, baseType: !822, size: 384)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !250, line: 681, size: 384, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !822, file: !250, line: 683, baseType: !644, size: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !822, file: !250, line: 686, baseType: !344, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !822, file: !250, line: 689, baseType: !344, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !641, file: !250, line: 759, baseType: !828, size: 384)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !250, line: 707, size: 384, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !828, file: !250, line: 709, baseType: !644, size: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !828, file: !250, line: 712, baseType: !344, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !828, file: !250, line: 712, baseType: !344, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !641, file: !250, line: 760, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !250, line: 718, size: 320, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !834, file: !250, line: 720, baseType: !644, size: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !250, line: 723, baseType: !344, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !636, file: !250, line: 138, baseType: !635, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !250, line: 139, baseType: !635, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !631, file: !250, line: 146, baseType: !634, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !631, file: !250, line: 152, baseType: !629, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !626, file: !202, line: 130, baseType: !503, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !621, file: !202, line: 134, baseType: !341, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !621, file: !202, line: 137, baseType: !344, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !621, file: !202, line: 138, baseType: !453, size: 32, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !621, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !202, line: 144, baseType: !337, size: 32, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !621, file: !202, line: 145, baseType: !337, size: 32, offset: 416)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !621, file: !202, line: 146, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !400)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !604, file: !202, line: 220, baseType: !607, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !604, file: !202, line: 223, baseType: !341, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !604, file: !202, line: 226, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !604, file: !202, line: 229, baseType: !857, size: 128, offset: 256)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 128, elements: !860)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!860 = !{!861}
!861 = !DISubrange(count: 2)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !604, file: !202, line: 232, baseType: !603, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !604, file: !202, line: 233, baseType: !603, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !604, file: !202, line: 238, baseType: !865, size: 64, offset: 512)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !866)
!866 = !{!867, !873}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !865, file: !202, line: 236, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !869, file: !202, line: 275, baseType: !629, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !869, file: !202, line: 278, baseType: !629, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !865, file: !202, line: 237, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !876)
!876 = !{!877, !878, !879, !880, !881}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !875, file: !202, line: 261, baseType: !503, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !875, file: !202, line: 262, baseType: !503, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !875, file: !202, line: 266, baseType: !503, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !875, file: !202, line: 267, baseType: !503, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !875, file: !202, line: 270, baseType: !337, size: 32, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !202, line: 241, baseType: !850, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !604, file: !202, line: 244, baseType: !337, size: 32, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !604, file: !202, line: 247, baseType: !337, size: 32, offset: 672)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !604, file: !202, line: 250, baseType: !337, size: 32, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !604, file: !202, line: 253, baseType: !337, size: 32, offset: 736)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !202, line: 256, baseType: !337, size: 32, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !599, file: !202, line: 378, baseType: !602, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !599, file: !202, line: 381, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !892, file: !202, line: 282, baseType: !895, size: 128)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !896, file: !202, line: 281, baseType: !7, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !896, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !896, file: !202, line: 281, baseType: !901, size: 64, offset: 64)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 64, elements: !427)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !599, file: !202, line: 384, baseType: !337, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !599, file: !202, line: 387, baseType: !337, size: 32, offset: 224)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !599, file: !202, line: 390, baseType: !337, size: 32, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !599, file: !202, line: 394, baseType: !890, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !599, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !599, file: !202, line: 399, baseType: !908, size: 64, offset: 416)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !860)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !599, file: !202, line: 402, baseType: !910, size: 64, offset: 480)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !860)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !599, file: !202, line: 406, baseType: !337, size: 32, offset: 544)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !599, file: !202, line: 409, baseType: !337, size: 32, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !591, file: !592, line: 470, baseType: !630, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !591, file: !592, line: 473, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !542, line: 39, size: 1152, elements: !917)
!917 = !{!918, !968, !981, !993, !994, !1063, !1064, !1068, !1069, !1070, !1071, !1072}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !916, file: !542, line: 41, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !920, line: 144, baseType: !921)
!920 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !920, line: 100, size: 896, elements: !923)
!923 = !{!924, !932, !937, !942, !944, !945, !946, !947, !948, !949, !954, !956, !957, !962, !967}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !922, file: !920, line: 102, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !920, line: 52, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !920, line: 47, baseType: !7)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !922, file: !920, line: 105, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !920, line: 59, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!337, !930, !930}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !922, file: !920, line: 108, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !920, line: 63, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !341}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !922, file: !920, line: 111, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !922, file: !920, line: 114, baseType: !784, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !922, file: !920, line: 117, baseType: !784, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !922, file: !920, line: 120, baseType: !784, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !922, file: !920, line: 124, baseType: !7, size: 32, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !922, file: !920, line: 128, baseType: !7, size: 32, offset: 480)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !922, file: !920, line: 131, baseType: !950, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !920, line: 75, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!341, !784, !784}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !922, file: !920, line: 132, baseType: !955, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !920, line: 78, baseType: !939)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !922, file: !920, line: 135, baseType: !341, size: 64, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !922, file: !920, line: 136, baseType: !958, size: 64, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !920, line: 82, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!341, !341, !784, !784}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !922, file: !920, line: 137, baseType: !963, size: 64, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !920, line: 83, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !341, !341}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !922, file: !920, line: 141, baseType: !7, size: 32, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !916, file: !542, line: 48, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !250, line: 35, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !250, line: 35, size: 128, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !971, file: !250, line: 35, baseType: !974, size: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !250, line: 33, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !250, line: 33, size: 128, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !975, file: !250, line: 33, baseType: !7, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !975, file: !250, line: 33, baseType: !7, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !975, file: !250, line: 33, baseType: !980, size: 64, offset: 64)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 64, elements: !427)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !916, file: !542, line: 51, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !984, file: !6, line: 183, baseType: !987, size: 128)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !988, file: !6, line: 182, baseType: !7, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !988, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !988, file: !6, line: 182, baseType: !692, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !916, file: !542, line: 54, baseType: !344, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !916, file: !542, line: 57, baseType: !995, size: 128, offset: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !996, line: 31, size: 128, elements: !997)
!996 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !995, file: !996, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !995, file: !996, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !995, file: !996, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !995, file: !996, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !995, file: !996, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !995, file: !996, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !995, file: !996, line: 56, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !345, line: 47, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1008, line: 75, size: 256, elements: !1009)
!1008 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1009 = !{!1010, !1022, !1023, !1024}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1007, file: !1008, line: 76, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1008, line: 68, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1008, line: 63, size: 320, elements: !1014)
!1014 = !{!1015, !1017, !1018, !1019}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1013, file: !1008, line: 64, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1013, file: !1008, line: 65, baseType: !1016, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1013, file: !1008, line: 66, baseType: !7, size: 32, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1013, file: !1008, line: 67, baseType: !1020, size: 128, offset: 192)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 128, elements: !860)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1008, line: 29, baseType: !398)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1007, file: !1008, line: 77, baseType: !1011, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1007, file: !1008, line: 78, baseType: !7, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1007, file: !1008, line: 79, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1008, line: 49, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1008, line: 45, size: 832, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1027, file: !1008, line: 46, baseType: !1016, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1027, file: !1008, line: 47, baseType: !1006, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1027, file: !1008, line: 48, baseType: !1032, size: 704, offset: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1033, line: 164, size: 704, elements: !1034)
!1033 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1034 = !{!1035, !1036, !1046, !1047, !1048, !1049, !1050, !1051, !1055, !1059, !1060, !1061, !1062}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1032, file: !1033, line: 166, baseType: !400, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1032, file: !1033, line: 167, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1033, line: 157, size: 192, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1038, file: !1033, line: 159, baseType: !339, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1038, file: !1033, line: 160, baseType: !1037, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1038, file: !1033, line: 161, baseType: !1043, size: 32, offset: 128)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32, elements: !1044)
!1044 = !{!1045}
!1045 = !DISubrange(count: 4)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1032, file: !1033, line: 168, baseType: !339, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1032, file: !1033, line: 169, baseType: !339, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1032, file: !1033, line: 170, baseType: !339, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1032, file: !1033, line: 171, baseType: !400, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1032, file: !1033, line: 172, baseType: !337, size: 32, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1032, file: !1033, line: 176, baseType: !1052, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1037, !341, !400}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1032, file: !1033, line: 177, baseType: !1056, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !341, !1037}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1032, file: !1033, line: 178, baseType: !341, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1032, file: !1033, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1032, file: !1033, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1032, file: !1033, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !916, file: !542, line: 60, baseType: !995, size: 128, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !916, file: !542, line: 64, baseType: !1065, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1067, line: 33, flags: DIFlagFwdDecl)
!1067 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !916, file: !542, line: 67, baseType: !344, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !916, file: !542, line: 73, baseType: !919, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !916, file: !542, line: 77, baseType: !1005, size: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !916, file: !542, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !916, file: !542, line: 82, baseType: !1073, size: 320, offset: 832)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !328, line: 62, size: 320, elements: !1074)
!1074 = !{!1075, !1081, !1082, !1083, !1084, !1085}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1073, file: !328, line: 63, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !328, line: 56, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1077, file: !328, line: 57, baseType: !1076, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1077, file: !328, line: 58, baseType: !426, size: 8, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1073, file: !328, line: 64, baseType: !7, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1073, file: !328, line: 66, baseType: !7, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1073, file: !328, line: 68, baseType: !336, size: 8, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1073, file: !328, line: 70, baseType: !668, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1073, file: !328, line: 71, baseType: !675, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !591, file: !592, line: 476, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !592, line: 476, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !591, file: !592, line: 479, baseType: !919, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !591, file: !592, line: 484, baseType: !344, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !591, file: !592, line: 488, baseType: !344, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !591, file: !592, line: 493, baseType: !344, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !591, file: !592, line: 496, baseType: !344, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !591, file: !592, line: 501, baseType: !1095, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1097)
!1097 = !{!1098, !1101, !1102, !1103, !1104, !1106, !1107, !1112, !1113, !1114, !1115, !1116, !1117}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1096, file: !213, line: 2356, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1096, file: !213, line: 2357, baseType: !342, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1096, file: !213, line: 2358, baseType: !337, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1096, file: !213, line: 2359, baseType: !337, size: 32, offset: 160)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1096, file: !213, line: 2360, baseType: !1105, size: 128, offset: 192)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 128, elements: !1044)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1096, file: !213, line: 2364, baseType: !337, size: 32, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1096, file: !213, line: 2367, baseType: !1108, size: 128, offset: 384)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1108, file: !213, line: 2351, baseType: !503, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1108, file: !213, line: 2352, baseType: !400, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1096, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1096, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1096, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1096, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1096, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1096, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !591, file: !592, line: 504, baseType: !1119, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !592, line: 504, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !591, file: !592, line: 507, baseType: !919, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !591, file: !592, line: 510, baseType: !337, size: 32, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !591, file: !592, line: 513, baseType: !337, size: 32, offset: 864)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !591, file: !592, line: 516, baseType: !453, size: 32, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !591, file: !592, line: 519, baseType: !453, size: 32, offset: 928)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !591, file: !592, line: 522, baseType: !7, size: 32, offset: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !591, file: !592, line: 523, baseType: !7, size: 32, offset: 992)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !591, file: !592, line: 528, baseType: !342, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !591, file: !592, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !591, file: !592, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !591, file: !592, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !591, file: !592, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !591, file: !592, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !591, file: !592, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !591, file: !592, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !591, file: !592, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !591, file: !592, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !591, file: !592, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !591, file: !592, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !591, file: !592, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !591, file: !592, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !591, file: !592, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !591, file: !592, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !591, file: !592, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !586, file: !6, line: 3254, baseType: !344, size: 64, offset: 1536)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !586, file: !6, line: 3257, baseType: !344, size: 64, offset: 1600)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !586, file: !6, line: 3258, baseType: !344, size: 64, offset: 1664)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !586, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !586, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !586, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !586, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !586, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !586, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !586, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !586, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !586, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !586, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !586, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !586, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !586, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !586, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !586, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !586, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !586, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !586, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !6, line: 3394, baseType: !1167, size: 1344)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1194, !1195, !1196, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !6, line: 2280, baseType: !383, size: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1167, file: !6, line: 2281, baseType: !344, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1167, file: !6, line: 2282, baseType: !344, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1167, file: !6, line: 2283, baseType: !344, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1167, file: !6, line: 2284, baseType: !344, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1167, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1167, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1167, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1167, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1167, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1167, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1167, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1167, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1167, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1167, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1167, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1167, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1167, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1167, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1167, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1167, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1167, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1167, file: !6, line: 2306, baseType: !1192, size: 32, offset: 544)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1193, line: 31, baseType: !337)
!1193 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1167, file: !6, line: 2307, baseType: !344, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1167, file: !6, line: 2308, baseType: !344, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1167, file: !6, line: 2314, baseType: !1197, size: 64, offset: 704)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1197, file: !6, line: 2310, baseType: !337, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1197, file: !6, line: 2311, baseType: !342, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1197, file: !6, line: 2312, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1167, file: !6, line: 2315, baseType: !344, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1167, file: !6, line: 2316, baseType: !344, size: 64, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1167, file: !6, line: 2317, baseType: !344, size: 64, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1167, file: !6, line: 2318, baseType: !344, size: 64, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1167, file: !6, line: 2319, baseType: !344, size: 64, offset: 1024)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1167, file: !6, line: 2320, baseType: !344, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1167, file: !6, line: 2321, baseType: !344, size: 64, offset: 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1167, file: !6, line: 2322, baseType: !344, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1167, file: !6, line: 2324, baseType: !1213, size: 64, offset: 1280)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !347, file: !6, line: 3395, baseType: !1216, size: 320)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1216, file: !6, line: 1470, baseType: !383, size: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1216, file: !6, line: 1471, baseType: !344, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1216, file: !6, line: 1472, baseType: !344, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !347, file: !6, line: 3396, baseType: !1222, size: 320)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1222, file: !6, line: 1483, baseType: !383, size: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1222, file: !6, line: 1484, baseType: !337, size: 32, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1222, file: !6, line: 1485, baseType: !692, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !347, file: !6, line: 3397, baseType: !1228, size: 384)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1228, file: !6, line: 1830, baseType: !383, size: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1228, file: !6, line: 1831, baseType: !453, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1228, file: !6, line: 1832, baseType: !344, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1228, file: !6, line: 1835, baseType: !692, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !347, file: !6, line: 3398, baseType: !1235, size: 704)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1246}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1235, file: !6, line: 1899, baseType: !383, size: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1235, file: !6, line: 1902, baseType: !344, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1235, file: !6, line: 1905, baseType: !639, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1235, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1235, file: !6, line: 1911, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !542, line: 117, size: 128, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1243, file: !542, line: 120, baseType: !995, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1235, file: !6, line: 1914, baseType: !680, size: 256, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !347, file: !6, line: 3399, baseType: !1248, size: 704)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1248, file: !6, line: 2009, baseType: !383, size: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1248, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1248, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1248, file: !6, line: 2014, baseType: !453, size: 32, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1248, file: !6, line: 2016, baseType: !344, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1248, file: !6, line: 2017, baseType: !982, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1248, file: !6, line: 2019, baseType: !344, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1248, file: !6, line: 2020, baseType: !344, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1248, file: !6, line: 2021, baseType: !344, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1248, file: !6, line: 2022, baseType: !344, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1248, file: !6, line: 2023, baseType: !344, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !347, file: !6, line: 3400, baseType: !1262, size: 832)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1262, file: !6, line: 2431, baseType: !383, size: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1262, file: !6, line: 2433, baseType: !344, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1262, file: !6, line: 2434, baseType: !344, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1262, file: !6, line: 2435, baseType: !344, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1262, file: !6, line: 2436, baseType: !344, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1262, file: !6, line: 2437, baseType: !982, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1262, file: !6, line: 2438, baseType: !344, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1262, file: !6, line: 2440, baseType: !344, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1262, file: !6, line: 2441, baseType: !344, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1262, file: !6, line: 2443, baseType: !1274, size: 128, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !6, line: 182, baseType: !987, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !347, file: !6, line: 3401, baseType: !1279, size: 320)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1280)
!1280 = !{!1281, !1282, !1289}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1279, file: !6, line: 3329, baseType: !383, size: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1279, file: !6, line: 3330, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1284, file: !6, line: 3322, baseType: !1283, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1284, file: !6, line: 3323, baseType: !1283, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1284, file: !6, line: 3324, baseType: !344, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1279, file: !6, line: 3331, baseType: !1283, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !347, file: !6, line: 3402, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1291, file: !6, line: 1541, baseType: !383, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1291, file: !6, line: 1542, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1297, file: !6, line: 1538, baseType: !1300, size: 192)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1301, file: !6, line: 1537, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1301, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1301, file: !6, line: 1537, baseType: !1306, size: 128, offset: 64)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 128, elements: !427)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1308, file: !6, line: 1533, baseType: !344, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1308, file: !6, line: 1534, baseType: !344, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !347, file: !6, line: 3403, baseType: !1313, size: 512)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1324, !1325, !1326}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !6, line: 1939, baseType: !383, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1313, file: !6, line: 1940, baseType: !453, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1313, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1313, file: !6, line: 1946, baseType: !1319, size: 32, offset: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1319, file: !6, line: 1943, baseType: !235, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1319, file: !6, line: 1944, baseType: !242, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1319, file: !6, line: 1945, baseType: !5, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1313, file: !6, line: 1950, baseType: !629, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1313, file: !6, line: 1951, baseType: !629, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1313, file: !6, line: 1953, baseType: !692, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !347, file: !6, line: 3404, baseType: !1328, size: 1664)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1328, file: !6, line: 3338, baseType: !383, size: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1328, file: !6, line: 3341, baseType: !1332, size: 1472, offset: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1333, line: 410, size: 1472, elements: !1334)
!1333 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1332, file: !1333, line: 412, baseType: !337, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1332, file: !1333, line: 413, baseType: !337, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1332, file: !1333, line: 414, baseType: !337, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1332, file: !1333, line: 415, baseType: !337, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1332, file: !1333, line: 416, baseType: !337, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1332, file: !1333, line: 417, baseType: !337, size: 32, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1332, file: !1333, line: 418, baseType: !336, size: 8, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1332, file: !1333, line: 419, baseType: !336, size: 8, offset: 200)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1332, file: !1333, line: 420, baseType: !1344, size: 8, offset: 208)
!1344 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1332, file: !1333, line: 421, baseType: !1344, size: 8, offset: 216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1332, file: !1333, line: 422, baseType: !1344, size: 8, offset: 224)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1332, file: !1333, line: 423, baseType: !1344, size: 8, offset: 232)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1332, file: !1333, line: 424, baseType: !1344, size: 8, offset: 240)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1332, file: !1333, line: 425, baseType: !1344, size: 8, offset: 248)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1332, file: !1333, line: 426, baseType: !1344, size: 8, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1332, file: !1333, line: 427, baseType: !1344, size: 8, offset: 264)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1332, file: !1333, line: 428, baseType: !1344, size: 8, offset: 272)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1332, file: !1333, line: 429, baseType: !1344, size: 8, offset: 280)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1332, file: !1333, line: 430, baseType: !1344, size: 8, offset: 288)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1332, file: !1333, line: 431, baseType: !1344, size: 8, offset: 296)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1332, file: !1333, line: 432, baseType: !1344, size: 8, offset: 304)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1332, file: !1333, line: 433, baseType: !1344, size: 8, offset: 312)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1332, file: !1333, line: 434, baseType: !1344, size: 8, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1332, file: !1333, line: 435, baseType: !1344, size: 8, offset: 328)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1332, file: !1333, line: 436, baseType: !1344, size: 8, offset: 336)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1332, file: !1333, line: 437, baseType: !1344, size: 8, offset: 344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1332, file: !1333, line: 438, baseType: !1344, size: 8, offset: 352)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1332, file: !1333, line: 439, baseType: !1344, size: 8, offset: 360)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1332, file: !1333, line: 440, baseType: !1344, size: 8, offset: 368)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1332, file: !1333, line: 441, baseType: !1344, size: 8, offset: 376)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1332, file: !1333, line: 442, baseType: !1344, size: 8, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1332, file: !1333, line: 443, baseType: !1344, size: 8, offset: 392)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1332, file: !1333, line: 444, baseType: !1344, size: 8, offset: 400)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1332, file: !1333, line: 445, baseType: !1344, size: 8, offset: 408)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1332, file: !1333, line: 446, baseType: !1344, size: 8, offset: 416)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1332, file: !1333, line: 447, baseType: !1344, size: 8, offset: 424)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1332, file: !1333, line: 448, baseType: !1344, size: 8, offset: 432)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1332, file: !1333, line: 449, baseType: !1344, size: 8, offset: 440)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1332, file: !1333, line: 450, baseType: !1344, size: 8, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1332, file: !1333, line: 451, baseType: !1344, size: 8, offset: 456)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1332, file: !1333, line: 452, baseType: !1344, size: 8, offset: 464)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1332, file: !1333, line: 453, baseType: !1344, size: 8, offset: 472)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1332, file: !1333, line: 454, baseType: !1344, size: 8, offset: 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1332, file: !1333, line: 455, baseType: !1344, size: 8, offset: 488)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1332, file: !1333, line: 456, baseType: !1344, size: 8, offset: 496)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1332, file: !1333, line: 457, baseType: !1344, size: 8, offset: 504)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1332, file: !1333, line: 458, baseType: !1344, size: 8, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1332, file: !1333, line: 459, baseType: !1344, size: 8, offset: 520)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1332, file: !1333, line: 460, baseType: !1344, size: 8, offset: 528)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1332, file: !1333, line: 461, baseType: !1344, size: 8, offset: 536)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1332, file: !1333, line: 462, baseType: !1344, size: 8, offset: 544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1332, file: !1333, line: 463, baseType: !1344, size: 8, offset: 552)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1332, file: !1333, line: 464, baseType: !1344, size: 8, offset: 560)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1332, file: !1333, line: 465, baseType: !1344, size: 8, offset: 568)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1332, file: !1333, line: 466, baseType: !1344, size: 8, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1332, file: !1333, line: 467, baseType: !1344, size: 8, offset: 584)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1332, file: !1333, line: 468, baseType: !1344, size: 8, offset: 592)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1332, file: !1333, line: 469, baseType: !1344, size: 8, offset: 600)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1332, file: !1333, line: 470, baseType: !1344, size: 8, offset: 608)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1332, file: !1333, line: 471, baseType: !1344, size: 8, offset: 616)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1332, file: !1333, line: 472, baseType: !1344, size: 8, offset: 624)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1332, file: !1333, line: 473, baseType: !1344, size: 8, offset: 632)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1332, file: !1333, line: 474, baseType: !1344, size: 8, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1332, file: !1333, line: 475, baseType: !1344, size: 8, offset: 648)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1332, file: !1333, line: 476, baseType: !1344, size: 8, offset: 656)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1332, file: !1333, line: 477, baseType: !1344, size: 8, offset: 664)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1332, file: !1333, line: 478, baseType: !1344, size: 8, offset: 672)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1332, file: !1333, line: 479, baseType: !1344, size: 8, offset: 680)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1332, file: !1333, line: 480, baseType: !1344, size: 8, offset: 688)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1332, file: !1333, line: 481, baseType: !1344, size: 8, offset: 696)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1332, file: !1333, line: 482, baseType: !1344, size: 8, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1332, file: !1333, line: 483, baseType: !1344, size: 8, offset: 712)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1332, file: !1333, line: 484, baseType: !1344, size: 8, offset: 720)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1332, file: !1333, line: 485, baseType: !1344, size: 8, offset: 728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1332, file: !1333, line: 486, baseType: !1344, size: 8, offset: 736)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1332, file: !1333, line: 487, baseType: !1344, size: 8, offset: 744)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1332, file: !1333, line: 488, baseType: !1344, size: 8, offset: 752)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1332, file: !1333, line: 489, baseType: !1344, size: 8, offset: 760)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1332, file: !1333, line: 490, baseType: !1344, size: 8, offset: 768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1332, file: !1333, line: 491, baseType: !1344, size: 8, offset: 776)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1332, file: !1333, line: 492, baseType: !1344, size: 8, offset: 784)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1332, file: !1333, line: 493, baseType: !1344, size: 8, offset: 792)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1332, file: !1333, line: 494, baseType: !1344, size: 8, offset: 800)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1332, file: !1333, line: 495, baseType: !1344, size: 8, offset: 808)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1332, file: !1333, line: 496, baseType: !1344, size: 8, offset: 816)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1332, file: !1333, line: 497, baseType: !1344, size: 8, offset: 824)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1332, file: !1333, line: 498, baseType: !1344, size: 8, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1332, file: !1333, line: 499, baseType: !1344, size: 8, offset: 840)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1332, file: !1333, line: 500, baseType: !1344, size: 8, offset: 848)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1332, file: !1333, line: 501, baseType: !1344, size: 8, offset: 856)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1332, file: !1333, line: 502, baseType: !1344, size: 8, offset: 864)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1332, file: !1333, line: 503, baseType: !1344, size: 8, offset: 872)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1332, file: !1333, line: 504, baseType: !1344, size: 8, offset: 880)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1332, file: !1333, line: 505, baseType: !1344, size: 8, offset: 888)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1332, file: !1333, line: 506, baseType: !1344, size: 8, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1332, file: !1333, line: 507, baseType: !1344, size: 8, offset: 904)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1332, file: !1333, line: 508, baseType: !1344, size: 8, offset: 912)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1332, file: !1333, line: 509, baseType: !1344, size: 8, offset: 920)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1332, file: !1333, line: 510, baseType: !1344, size: 8, offset: 928)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1332, file: !1333, line: 511, baseType: !1344, size: 8, offset: 936)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1332, file: !1333, line: 512, baseType: !1344, size: 8, offset: 944)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1332, file: !1333, line: 513, baseType: !1344, size: 8, offset: 952)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1332, file: !1333, line: 514, baseType: !1344, size: 8, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1332, file: !1333, line: 515, baseType: !1344, size: 8, offset: 968)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1332, file: !1333, line: 516, baseType: !1344, size: 8, offset: 976)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1332, file: !1333, line: 517, baseType: !1344, size: 8, offset: 984)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1332, file: !1333, line: 518, baseType: !1344, size: 8, offset: 992)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1332, file: !1333, line: 519, baseType: !1344, size: 8, offset: 1000)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1332, file: !1333, line: 520, baseType: !1344, size: 8, offset: 1008)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1332, file: !1333, line: 521, baseType: !1344, size: 8, offset: 1016)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1332, file: !1333, line: 522, baseType: !1344, size: 8, offset: 1024)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1332, file: !1333, line: 523, baseType: !1344, size: 8, offset: 1032)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1332, file: !1333, line: 524, baseType: !1344, size: 8, offset: 1040)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1332, file: !1333, line: 525, baseType: !1344, size: 8, offset: 1048)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1332, file: !1333, line: 526, baseType: !1344, size: 8, offset: 1056)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1332, file: !1333, line: 527, baseType: !1344, size: 8, offset: 1064)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1332, file: !1333, line: 528, baseType: !1344, size: 8, offset: 1072)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1332, file: !1333, line: 529, baseType: !1344, size: 8, offset: 1080)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1332, file: !1333, line: 530, baseType: !1344, size: 8, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1332, file: !1333, line: 531, baseType: !1344, size: 8, offset: 1096)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1332, file: !1333, line: 532, baseType: !1344, size: 8, offset: 1104)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1332, file: !1333, line: 533, baseType: !1344, size: 8, offset: 1112)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1332, file: !1333, line: 534, baseType: !1344, size: 8, offset: 1120)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1332, file: !1333, line: 535, baseType: !1344, size: 8, offset: 1128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1332, file: !1333, line: 536, baseType: !1344, size: 8, offset: 1136)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1332, file: !1333, line: 537, baseType: !1344, size: 8, offset: 1144)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1332, file: !1333, line: 538, baseType: !1344, size: 8, offset: 1152)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1332, file: !1333, line: 539, baseType: !1344, size: 8, offset: 1160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1332, file: !1333, line: 540, baseType: !1344, size: 8, offset: 1168)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1332, file: !1333, line: 541, baseType: !1344, size: 8, offset: 1176)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1332, file: !1333, line: 542, baseType: !1344, size: 8, offset: 1184)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1332, file: !1333, line: 543, baseType: !1344, size: 8, offset: 1192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1332, file: !1333, line: 544, baseType: !1344, size: 8, offset: 1200)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1332, file: !1333, line: 545, baseType: !1344, size: 8, offset: 1208)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1332, file: !1333, line: 546, baseType: !1344, size: 8, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1332, file: !1333, line: 547, baseType: !1344, size: 8, offset: 1224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1332, file: !1333, line: 548, baseType: !1344, size: 8, offset: 1232)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1332, file: !1333, line: 549, baseType: !1344, size: 8, offset: 1240)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1332, file: !1333, line: 550, baseType: !1344, size: 8, offset: 1248)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1332, file: !1333, line: 551, baseType: !1344, size: 8, offset: 1256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1332, file: !1333, line: 552, baseType: !1344, size: 8, offset: 1264)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1332, file: !1333, line: 553, baseType: !1344, size: 8, offset: 1272)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1332, file: !1333, line: 554, baseType: !1344, size: 8, offset: 1280)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1332, file: !1333, line: 555, baseType: !1344, size: 8, offset: 1288)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1332, file: !1333, line: 556, baseType: !1344, size: 8, offset: 1296)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1332, file: !1333, line: 557, baseType: !1344, size: 8, offset: 1304)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1332, file: !1333, line: 558, baseType: !1344, size: 8, offset: 1312)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1332, file: !1333, line: 559, baseType: !1344, size: 8, offset: 1320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1332, file: !1333, line: 560, baseType: !1344, size: 8, offset: 1328)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1332, file: !1333, line: 561, baseType: !1344, size: 8, offset: 1336)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1332, file: !1333, line: 562, baseType: !1344, size: 8, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1332, file: !1333, line: 563, baseType: !1344, size: 8, offset: 1352)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1332, file: !1333, line: 564, baseType: !1344, size: 8, offset: 1360)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1332, file: !1333, line: 565, baseType: !1344, size: 8, offset: 1368)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1332, file: !1333, line: 566, baseType: !1344, size: 8, offset: 1376)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1332, file: !1333, line: 567, baseType: !1344, size: 8, offset: 1384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1332, file: !1333, line: 568, baseType: !1344, size: 8, offset: 1392)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1332, file: !1333, line: 569, baseType: !1344, size: 8, offset: 1400)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1332, file: !1333, line: 570, baseType: !1344, size: 8, offset: 1408)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1332, file: !1333, line: 571, baseType: !1344, size: 8, offset: 1416)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1332, file: !1333, line: 572, baseType: !1344, size: 8, offset: 1424)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1332, file: !1333, line: 573, baseType: !1344, size: 8, offset: 1432)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1332, file: !1333, line: 574, baseType: !1344, size: 8, offset: 1440)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !347, file: !6, line: 3405, baseType: !1500, size: 384)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !6, line: 3353, baseType: !383, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1500, file: !6, line: 3356, baseType: !1504, size: 192, offset: 192)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1333, line: 578, size: 192, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1504, file: !1333, line: 580, baseType: !337, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1504, file: !1333, line: 581, baseType: !337, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1504, file: !1333, line: 582, baseType: !337, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1504, file: !1333, line: 583, baseType: !337, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1504, file: !1333, line: 584, baseType: !336, size: 8, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1504, file: !1333, line: 585, baseType: !336, size: 8, offset: 136)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1504, file: !1333, line: 586, baseType: !336, size: 8, offset: 144)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1504, file: !1333, line: 587, baseType: !336, size: 8, offset: 152)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1504, file: !1333, line: 588, baseType: !336, size: 8, offset: 160)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1504, file: !1333, line: 589, baseType: !336, size: 8, offset: 168)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1504, file: !1333, line: 590, baseType: !336, size: 8, offset: 176)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !6, line: 184, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !6, line: 184, size: 128, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1519, file: !6, line: 184, baseType: !987, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !328, line: 30, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !6, line: 1893, baseType: !680)
!1528 = !{!1529, !1539, !1541, !1543, !1545, !1547, !0}
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "clobber_stats", scope: !2, file: !3, line: 104, type: !1531, isLocal: true, isDefinition: true)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 81, size: 192, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "clobbered_vars", scope: !1531, file: !3, line: 85, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "static_write_clobbers_avoided", scope: !1531, file: !3, line: 89, baseType: !7, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "static_read_clobbers_avoided", scope: !1531, file: !3, line: 92, baseType: !7, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "unescapable_clobbers_avoided", scope: !1531, file: !3, line: 96, baseType: !7, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_clobbers", scope: !1531, file: !3, line: 100, baseType: !7, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "static_readonly_clobbers_avoided", scope: !1531, file: !3, line: 103, baseType: !7, size: 32, offset: 160)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(name: "build_defs", scope: !2, file: !3, line: 130, type: !1517, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(name: "build_uses", scope: !2, file: !3, line: 133, type: !1517, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "build_vdef", scope: !2, file: !3, line: 136, type: !344, isLocal: true, isDefinition: true)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(name: "build_vuse", scope: !2, file: !3, line: 139, type: !344, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(name: "operands_bitmap_obstack", scope: !2, file: !3, line: 143, type: !1026, isLocal: true, isDefinition: true)
!1549 = !{i32 2, !"Dwarf Version", i32 4}
!1550 = !{i32 2, !"Debug Info Version", i32 3}
!1551 = !{i32 1, !"wchar_size", i32 4}
!1552 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1553 = distinct !DISubprogram(name: "vprintf", scope: !1554, file: !1554, line: 39, type: !1555, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1565)
!1554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!337, !1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !342)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1559, file: !3, baseType: !7, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1559, file: !3, baseType: !7, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1559, file: !3, baseType: !341, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1559, file: !3, baseType: !341, size: 64, offset: 128)
!1565 = !{!1566, !1567}
!1566 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1553, file: !1554, line: 39, type: !1557)
!1567 = !DILocalVariable(name: "__arg", arg: 2, scope: !1553, file: !1554, line: 39, type: !1558)
!1568 = !DILocation(line: 0, scope: !1553)
!1569 = !DILocation(line: 41, column: 20, scope: !1553)
!1570 = !DILocation(line: 41, column: 10, scope: !1553)
!1571 = !DILocation(line: 41, column: 3, scope: !1553)
!1572 = distinct !DISubprogram(name: "getchar", scope: !1554, file: !1554, line: 47, type: !1573, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!337}
!1575 = !{}
!1576 = !DILocation(line: 49, column: 16, scope: !1572)
!1577 = !DILocation(line: 49, column: 10, scope: !1572)
!1578 = !DILocation(line: 49, column: 3, scope: !1572)
!1579 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1554, file: !1554, line: 56, type: !1580, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!337, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1584, line: 7, baseType: !1585)
!1584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1586, line: 49, size: 1728, elements: !1587)
!1586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1603, !1605, !1606, !1607, !1610, !1612, !1613, !1614, !1617, !1619, !1622, !1625, !1626, !1627, !1628, !1629}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1585, file: !1586, line: 51, baseType: !337, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1585, file: !1586, line: 54, baseType: !339, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1585, file: !1586, line: 55, baseType: !339, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1585, file: !1586, line: 56, baseType: !339, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1585, file: !1586, line: 57, baseType: !339, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1585, file: !1586, line: 58, baseType: !339, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1585, file: !1586, line: 59, baseType: !339, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1585, file: !1586, line: 60, baseType: !339, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1585, file: !1586, line: 61, baseType: !339, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1585, file: !1586, line: 64, baseType: !339, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1585, file: !1586, line: 65, baseType: !339, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1585, file: !1586, line: 66, baseType: !339, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1585, file: !1586, line: 68, baseType: !1601, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1586, line: 36, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1585, file: !1586, line: 70, baseType: !1604, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1585, file: !1586, line: 72, baseType: !337, size: 32, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1585, file: !1586, line: 73, baseType: !337, size: 32, offset: 928)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1585, file: !1586, line: 74, baseType: !1608, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1609, line: 152, baseType: !400)
!1609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1585, file: !1586, line: 77, baseType: !1611, size: 16, offset: 1024)
!1611 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1585, file: !1586, line: 78, baseType: !1344, size: 8, offset: 1040)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1585, file: !1586, line: 79, baseType: !426, size: 8, offset: 1048)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1585, file: !1586, line: 81, baseType: !1615, size: 64, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1586, line: 43, baseType: null)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1585, file: !1586, line: 89, baseType: !1618, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1609, line: 153, baseType: !400)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1585, file: !1586, line: 91, baseType: !1620, size: 64, offset: 1216)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1586, line: 37, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1585, file: !1586, line: 92, baseType: !1623, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1586, line: 38, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1585, file: !1586, line: 93, baseType: !1604, size: 64, offset: 1344)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1585, file: !1586, line: 94, baseType: !341, size: 64, offset: 1408)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1585, file: !1586, line: 95, baseType: !784, size: 64, offset: 1472)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1585, file: !1586, line: 96, baseType: !337, size: 32, offset: 1536)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1585, file: !1586, line: 98, baseType: !1630, size: 160, offset: 1568)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 160, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 20)
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "__fp", arg: 1, scope: !1579, file: !1554, line: 56, type: !1582)
!1635 = !DILocation(line: 0, scope: !1579)
!1636 = !DILocation(line: 58, column: 10, scope: !1579)
!1637 = !DILocation(line: 58, column: 3, scope: !1579)
!1638 = distinct !DISubprogram(name: "getc_unlocked", scope: !1554, file: !1554, line: 66, type: !1580, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1639)
!1639 = !{!1640}
!1640 = !DILocalVariable(name: "__fp", arg: 1, scope: !1638, file: !1554, line: 66, type: !1582)
!1641 = !DILocation(line: 0, scope: !1638)
!1642 = !DILocation(line: 68, column: 10, scope: !1638)
!1643 = !DILocation(line: 68, column: 3, scope: !1638)
!1644 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1554, file: !1554, line: 73, type: !1573, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1645 = !DILocation(line: 75, column: 10, scope: !1644)
!1646 = !DILocation(line: 75, column: 3, scope: !1644)
!1647 = distinct !DISubprogram(name: "putchar", scope: !1554, file: !1554, line: 82, type: !1648, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!337, !337}
!1650 = !{!1651}
!1651 = !DILocalVariable(name: "__c", arg: 1, scope: !1647, file: !1554, line: 82, type: !337)
!1652 = !DILocation(line: 0, scope: !1647)
!1653 = !DILocation(line: 84, column: 21, scope: !1647)
!1654 = !DILocation(line: 84, column: 10, scope: !1647)
!1655 = !DILocation(line: 84, column: 3, scope: !1647)
!1656 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1554, file: !1554, line: 91, type: !1657, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!337, !337, !1582}
!1659 = !{!1660, !1661}
!1660 = !DILocalVariable(name: "__c", arg: 1, scope: !1656, file: !1554, line: 91, type: !337)
!1661 = !DILocalVariable(name: "__stream", arg: 2, scope: !1656, file: !1554, line: 91, type: !1582)
!1662 = !DILocation(line: 0, scope: !1656)
!1663 = !DILocation(line: 93, column: 10, scope: !1656)
!1664 = !DILocation(line: 93, column: 3, scope: !1656)
!1665 = distinct !DISubprogram(name: "putc_unlocked", scope: !1554, file: !1554, line: 101, type: !1657, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1666)
!1666 = !{!1667, !1668}
!1667 = !DILocalVariable(name: "__c", arg: 1, scope: !1665, file: !1554, line: 101, type: !337)
!1668 = !DILocalVariable(name: "__stream", arg: 2, scope: !1665, file: !1554, line: 101, type: !1582)
!1669 = !DILocation(line: 0, scope: !1665)
!1670 = !DILocation(line: 103, column: 10, scope: !1665)
!1671 = !DILocation(line: 103, column: 3, scope: !1665)
!1672 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1554, file: !1554, line: 108, type: !1648, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "__c", arg: 1, scope: !1672, file: !1554, line: 108, type: !337)
!1675 = !DILocation(line: 0, scope: !1672)
!1676 = !DILocation(line: 110, column: 10, scope: !1672)
!1677 = !DILocation(line: 110, column: 3, scope: !1672)
!1678 = distinct !DISubprogram(name: "getline", scope: !1554, file: !1554, line: 118, type: !1679, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1683)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1681, !338, !1682, !1582}
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1609, line: 193, baseType: !400)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!1683 = !{!1684, !1685, !1686}
!1684 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1678, file: !1554, line: 118, type: !338)
!1685 = !DILocalVariable(name: "__n", arg: 2, scope: !1678, file: !1554, line: 118, type: !1682)
!1686 = !DILocalVariable(name: "__stream", arg: 3, scope: !1678, file: !1554, line: 118, type: !1582)
!1687 = !DILocation(line: 0, scope: !1678)
!1688 = !DILocation(line: 120, column: 10, scope: !1678)
!1689 = !DILocation(line: 120, column: 3, scope: !1678)
!1690 = distinct !DISubprogram(name: "feof_unlocked", scope: !1554, file: !1554, line: 128, type: !1580, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1691)
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "__stream", arg: 1, scope: !1690, file: !1554, line: 128, type: !1582)
!1693 = !DILocation(line: 0, scope: !1690)
!1694 = !DILocation(line: 130, column: 10, scope: !1690)
!1695 = !DILocation(line: 130, column: 3, scope: !1690)
!1696 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1554, file: !1554, line: 135, type: !1580, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "__stream", arg: 1, scope: !1696, file: !1554, line: 135, type: !1582)
!1699 = !DILocation(line: 0, scope: !1696)
!1700 = !DILocation(line: 137, column: 10, scope: !1696)
!1701 = !DILocation(line: 137, column: 3, scope: !1696)
!1702 = distinct !DISubprogram(name: "tolower", scope: !1703, file: !1703, line: 207, type: !1648, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1704)
!1703 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1704 = !{!1705}
!1705 = !DILocalVariable(name: "__c", arg: 1, scope: !1702, file: !1703, line: 207, type: !337)
!1706 = !DILocation(line: 0, scope: !1702)
!1707 = !DILocation(line: 209, column: 22, scope: !1702)
!1708 = !DILocation(line: 209, column: 39, scope: !1702)
!1709 = !DILocation(line: 209, column: 38, scope: !1702)
!1710 = !DILocation(line: 209, column: 37, scope: !1702)
!1711 = !DILocation(line: 209, column: 10, scope: !1702)
!1712 = !DILocation(line: 209, column: 3, scope: !1702)
!1713 = distinct !DISubprogram(name: "toupper", scope: !1703, file: !1703, line: 213, type: !1648, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "__c", arg: 1, scope: !1713, file: !1703, line: 213, type: !337)
!1716 = !DILocation(line: 0, scope: !1713)
!1717 = !DILocation(line: 215, column: 22, scope: !1713)
!1718 = !DILocation(line: 215, column: 39, scope: !1713)
!1719 = !DILocation(line: 215, column: 38, scope: !1713)
!1720 = !DILocation(line: 215, column: 37, scope: !1713)
!1721 = !DILocation(line: 215, column: 10, scope: !1713)
!1722 = !DILocation(line: 215, column: 3, scope: !1713)
!1723 = distinct !DISubprogram(name: "atoi", scope: !1724, file: !1724, line: 361, type: !1725, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1724 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!337, !342}
!1727 = !{!1728}
!1728 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1723, file: !1724, line: 361, type: !342)
!1729 = !DILocation(line: 0, scope: !1723)
!1730 = !DILocation(line: 363, column: 16, scope: !1723)
!1731 = !DILocation(line: 363, column: 10, scope: !1723)
!1732 = !DILocation(line: 363, column: 3, scope: !1723)
!1733 = distinct !DISubprogram(name: "atol", scope: !1724, file: !1724, line: 366, type: !1734, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!400, !342}
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1733, file: !1724, line: 366, type: !342)
!1738 = !DILocation(line: 0, scope: !1733)
!1739 = !DILocation(line: 368, column: 10, scope: !1733)
!1740 = !DILocation(line: 368, column: 3, scope: !1733)
!1741 = distinct !DISubprogram(name: "atoll", scope: !1724, file: !1724, line: 373, type: !1742, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1745)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1744, !342}
!1744 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1741, file: !1724, line: 373, type: !342)
!1747 = !DILocation(line: 0, scope: !1741)
!1748 = !DILocation(line: 375, column: 10, scope: !1741)
!1749 = !DILocation(line: 375, column: 3, scope: !1741)
!1750 = distinct !DISubprogram(name: "bsearch", scope: !1751, file: !1751, line: 20, type: !1752, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1751 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!341, !930, !930, !784, !784, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1724, line: 808, baseType: !934)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1756 = !DILocalVariable(name: "__key", arg: 1, scope: !1750, file: !1751, line: 20, type: !930)
!1757 = !DILocalVariable(name: "__base", arg: 2, scope: !1750, file: !1751, line: 20, type: !930)
!1758 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1750, file: !1751, line: 20, type: !784)
!1759 = !DILocalVariable(name: "__size", arg: 4, scope: !1750, file: !1751, line: 20, type: !784)
!1760 = !DILocalVariable(name: "__compar", arg: 5, scope: !1750, file: !1751, line: 21, type: !1754)
!1761 = !DILocalVariable(name: "__l", scope: !1750, file: !1751, line: 23, type: !784)
!1762 = !DILocalVariable(name: "__u", scope: !1750, file: !1751, line: 23, type: !784)
!1763 = !DILocalVariable(name: "__idx", scope: !1750, file: !1751, line: 23, type: !784)
!1764 = !DILocalVariable(name: "__p", scope: !1750, file: !1751, line: 24, type: !930)
!1765 = !DILocalVariable(name: "__comparison", scope: !1750, file: !1751, line: 25, type: !337)
!1766 = !DILocation(line: 0, scope: !1750)
!1767 = !DILocation(line: 29, column: 3, scope: !1750)
!1768 = !DILocation(line: 27, column: 7, scope: !1750)
!1769 = !DILocation(line: 29, column: 14, scope: !1750)
!1770 = !DILocation(line: 31, column: 20, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1750, file: !1751, line: 30, column: 5)
!1772 = !DILocation(line: 31, column: 27, scope: !1771)
!1773 = !DILocation(line: 32, column: 56, scope: !1771)
!1774 = !DILocation(line: 32, column: 47, scope: !1771)
!1775 = !DILocation(line: 33, column: 22, scope: !1771)
!1776 = !DILocation(line: 34, column: 24, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !1751, line: 34, column: 11)
!1778 = !DILocation(line: 34, column: 11, scope: !1771)
!1779 = !DILocation(line: 36, column: 29, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !1751, line: 36, column: 16)
!1781 = !DILocation(line: 36, column: 16, scope: !1777)
!1782 = !DILocation(line: 37, column: 14, scope: !1780)
!1783 = distinct !{!1783, !1767, !1784}
!1784 = !DILocation(line: 40, column: 5, scope: !1750)
!1785 = !DILocation(line: 43, column: 1, scope: !1750)
!1786 = distinct !DISubprogram(name: "atof", scope: !1787, file: !1787, line: 25, type: !1788, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1791)
!1787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1790, !342}
!1790 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1786, file: !1787, line: 25, type: !342)
!1793 = !DILocation(line: 0, scope: !1786)
!1794 = !DILocation(line: 27, column: 10, scope: !1786)
!1795 = !DILocation(line: 27, column: 3, scope: !1786)
!1796 = distinct !DISubprogram(name: "strtoimax", scope: !1797, file: !1797, line: 324, type: !1798, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1797 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !1557, !1803, !337}
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1801, line: 101, baseType: !1802)
!1801 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1609, line: 72, baseType: !400)
!1803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "nptr", arg: 1, scope: !1796, file: !1797, line: 324, type: !1557)
!1806 = !DILocalVariable(name: "endptr", arg: 2, scope: !1796, file: !1797, line: 324, type: !1803)
!1807 = !DILocalVariable(name: "base", arg: 3, scope: !1796, file: !1797, line: 324, type: !337)
!1808 = !DILocation(line: 0, scope: !1796)
!1809 = !DILocation(line: 327, column: 10, scope: !1796)
!1810 = !DILocation(line: 327, column: 3, scope: !1796)
!1811 = distinct !DISubprogram(name: "strtoumax", scope: !1797, file: !1797, line: 336, type: !1812, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1814, !1557, !1803, !337}
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1801, line: 102, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1609, line: 73, baseType: !398)
!1816 = !{!1817, !1818, !1819}
!1817 = !DILocalVariable(name: "nptr", arg: 1, scope: !1811, file: !1797, line: 336, type: !1557)
!1818 = !DILocalVariable(name: "endptr", arg: 2, scope: !1811, file: !1797, line: 336, type: !1803)
!1819 = !DILocalVariable(name: "base", arg: 3, scope: !1811, file: !1797, line: 336, type: !337)
!1820 = !DILocation(line: 0, scope: !1811)
!1821 = !DILocation(line: 339, column: 10, scope: !1811)
!1822 = !DILocation(line: 339, column: 3, scope: !1811)
!1823 = distinct !DISubprogram(name: "wcstoimax", scope: !1797, file: !1797, line: 348, type: !1824, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1800, !1826, !1830, !337}
!1826 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1797, line: 34, baseType: !337)
!1830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "nptr", arg: 1, scope: !1823, file: !1797, line: 348, type: !1826)
!1835 = !DILocalVariable(name: "endptr", arg: 2, scope: !1823, file: !1797, line: 348, type: !1830)
!1836 = !DILocalVariable(name: "base", arg: 3, scope: !1823, file: !1797, line: 348, type: !337)
!1837 = !DILocation(line: 0, scope: !1823)
!1838 = !DILocation(line: 351, column: 10, scope: !1823)
!1839 = !DILocation(line: 351, column: 3, scope: !1823)
!1840 = distinct !DISubprogram(name: "wcstoumax", scope: !1797, file: !1797, line: 362, type: !1841, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1814, !1826, !1830, !337}
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "nptr", arg: 1, scope: !1840, file: !1797, line: 362, type: !1826)
!1845 = !DILocalVariable(name: "endptr", arg: 2, scope: !1840, file: !1797, line: 362, type: !1830)
!1846 = !DILocalVariable(name: "base", arg: 3, scope: !1840, file: !1797, line: 362, type: !337)
!1847 = !DILocation(line: 0, scope: !1840)
!1848 = !DILocation(line: 365, column: 10, scope: !1840)
!1849 = !DILocation(line: 365, column: 3, scope: !1840)
!1850 = distinct !DISubprogram(name: "stat", scope: !1851, file: !1851, line: 453, type: !1852, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1851 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!337, !342, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1856, line: 46, size: 1152, elements: !1857)
!1856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1857 = !{!1858, !1860, !1862, !1864, !1866, !1868, !1870, !1871, !1872, !1873, !1875, !1877, !1885, !1886, !1887}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1855, file: !1856, line: 48, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1609, line: 145, baseType: !398)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1855, file: !1856, line: 53, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1609, line: 148, baseType: !398)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1855, file: !1856, line: 61, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1609, line: 151, baseType: !398)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1855, file: !1856, line: 62, baseType: !1865, size: 32, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1609, line: 150, baseType: !7)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1855, file: !1856, line: 64, baseType: !1867, size: 32, offset: 224)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1609, line: 146, baseType: !7)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1855, file: !1856, line: 65, baseType: !1869, size: 32, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1609, line: 147, baseType: !7)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1855, file: !1856, line: 67, baseType: !337, size: 32, offset: 288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1855, file: !1856, line: 69, baseType: !1859, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1855, file: !1856, line: 74, baseType: !1608, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1855, file: !1856, line: 78, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1609, line: 174, baseType: !400)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1855, file: !1856, line: 80, baseType: !1876, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1609, line: 179, baseType: !400)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1855, file: !1856, line: 91, baseType: !1878, size: 128, offset: 576)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1879, line: 10, size: 128, elements: !1880)
!1879 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1880 = !{!1881, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1878, file: !1879, line: 12, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1609, line: 160, baseType: !400)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1878, file: !1879, line: 16, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1609, line: 196, baseType: !400)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1855, file: !1856, line: 92, baseType: !1878, size: 128, offset: 704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1855, file: !1856, line: 93, baseType: !1878, size: 128, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1855, file: !1856, line: 106, baseType: !1888, size: 192, offset: 960)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 192, elements: !1889)
!1889 = !{!1890}
!1890 = !DISubrange(count: 3)
!1891 = !{!1892, !1893}
!1892 = !DILocalVariable(name: "__path", arg: 1, scope: !1850, file: !1851, line: 453, type: !342)
!1893 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1850, file: !1851, line: 453, type: !1854)
!1894 = !DILocation(line: 0, scope: !1850)
!1895 = !DILocation(line: 455, column: 10, scope: !1850)
!1896 = !DILocation(line: 455, column: 3, scope: !1850)
!1897 = distinct !DISubprogram(name: "lstat", scope: !1851, file: !1851, line: 460, type: !1852, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1898 = !{!1899, !1900}
!1899 = !DILocalVariable(name: "__path", arg: 1, scope: !1897, file: !1851, line: 460, type: !342)
!1900 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1897, file: !1851, line: 460, type: !1854)
!1901 = !DILocation(line: 0, scope: !1897)
!1902 = !DILocation(line: 462, column: 10, scope: !1897)
!1903 = !DILocation(line: 462, column: 3, scope: !1897)
!1904 = distinct !DISubprogram(name: "fstat", scope: !1851, file: !1851, line: 467, type: !1905, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!337, !337, !1854}
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "__fd", arg: 1, scope: !1904, file: !1851, line: 467, type: !337)
!1909 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1904, file: !1851, line: 467, type: !1854)
!1910 = !DILocation(line: 0, scope: !1904)
!1911 = !DILocation(line: 469, column: 10, scope: !1904)
!1912 = !DILocation(line: 469, column: 3, scope: !1904)
!1913 = distinct !DISubprogram(name: "fstatat", scope: !1851, file: !1851, line: 474, type: !1914, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!337, !337, !342, !1854, !337}
!1916 = !{!1917, !1918, !1919, !1920}
!1917 = !DILocalVariable(name: "__fd", arg: 1, scope: !1913, file: !1851, line: 474, type: !337)
!1918 = !DILocalVariable(name: "__filename", arg: 2, scope: !1913, file: !1851, line: 474, type: !342)
!1919 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1913, file: !1851, line: 474, type: !1854)
!1920 = !DILocalVariable(name: "__flag", arg: 4, scope: !1913, file: !1851, line: 474, type: !337)
!1921 = !DILocation(line: 0, scope: !1913)
!1922 = !DILocation(line: 477, column: 10, scope: !1913)
!1923 = !DILocation(line: 477, column: 3, scope: !1913)
!1924 = distinct !DISubprogram(name: "mknod", scope: !1851, file: !1851, line: 483, type: !1925, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!337, !342, !1865, !1859}
!1927 = !{!1928, !1929, !1930}
!1928 = !DILocalVariable(name: "__path", arg: 1, scope: !1924, file: !1851, line: 483, type: !342)
!1929 = !DILocalVariable(name: "__mode", arg: 2, scope: !1924, file: !1851, line: 483, type: !1865)
!1930 = !DILocalVariable(name: "__dev", arg: 3, scope: !1924, file: !1851, line: 483, type: !1859)
!1931 = !DILocation(line: 0, scope: !1924)
!1932 = !DILocation(line: 485, column: 10, scope: !1924)
!1933 = !DILocation(line: 485, column: 3, scope: !1924)
!1934 = distinct !DISubprogram(name: "mknodat", scope: !1851, file: !1851, line: 491, type: !1935, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!337, !337, !342, !1865, !1859}
!1937 = !{!1938, !1939, !1940, !1941}
!1938 = !DILocalVariable(name: "__fd", arg: 1, scope: !1934, file: !1851, line: 491, type: !337)
!1939 = !DILocalVariable(name: "__path", arg: 2, scope: !1934, file: !1851, line: 491, type: !342)
!1940 = !DILocalVariable(name: "__mode", arg: 3, scope: !1934, file: !1851, line: 491, type: !1865)
!1941 = !DILocalVariable(name: "__dev", arg: 4, scope: !1934, file: !1851, line: 491, type: !1859)
!1942 = !DILocation(line: 0, scope: !1934)
!1943 = !DILocation(line: 494, column: 10, scope: !1934)
!1944 = !DILocation(line: 494, column: 3, scope: !1934)
!1945 = distinct !DISubprogram(name: "stat64", scope: !1851, file: !1851, line: 502, type: !1946, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!337, !342, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1856, line: 119, size: 1152, elements: !1950)
!1950 = !{!1951, !1952, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1964, !1965, !1966, !1967}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1949, file: !1856, line: 121, baseType: !1859, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1949, file: !1856, line: 123, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1609, line: 149, baseType: !398)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1949, file: !1856, line: 124, baseType: !1863, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1949, file: !1856, line: 125, baseType: !1865, size: 32, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1949, file: !1856, line: 132, baseType: !1867, size: 32, offset: 224)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1949, file: !1856, line: 133, baseType: !1869, size: 32, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1949, file: !1856, line: 135, baseType: !337, size: 32, offset: 288)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1949, file: !1856, line: 136, baseType: !1859, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1949, file: !1856, line: 137, baseType: !1608, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1949, file: !1856, line: 143, baseType: !1874, size: 64, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1949, file: !1856, line: 144, baseType: !1963, size: 64, offset: 512)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1609, line: 180, baseType: !400)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1949, file: !1856, line: 152, baseType: !1878, size: 128, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1949, file: !1856, line: 153, baseType: !1878, size: 128, offset: 704)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1949, file: !1856, line: 154, baseType: !1878, size: 128, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1949, file: !1856, line: 164, baseType: !1888, size: 192, offset: 960)
!1968 = !{!1969, !1970}
!1969 = !DILocalVariable(name: "__path", arg: 1, scope: !1945, file: !1851, line: 502, type: !342)
!1970 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1945, file: !1851, line: 502, type: !1948)
!1971 = !DILocation(line: 0, scope: !1945)
!1972 = !DILocation(line: 504, column: 10, scope: !1945)
!1973 = !DILocation(line: 504, column: 3, scope: !1945)
!1974 = distinct !DISubprogram(name: "lstat64", scope: !1851, file: !1851, line: 509, type: !1946, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976, !1977}
!1976 = !DILocalVariable(name: "__path", arg: 1, scope: !1974, file: !1851, line: 509, type: !342)
!1977 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1974, file: !1851, line: 509, type: !1948)
!1978 = !DILocation(line: 0, scope: !1974)
!1979 = !DILocation(line: 511, column: 10, scope: !1974)
!1980 = !DILocation(line: 511, column: 3, scope: !1974)
!1981 = distinct !DISubprogram(name: "fstat64", scope: !1851, file: !1851, line: 516, type: !1982, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!337, !337, !1948}
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "__fd", arg: 1, scope: !1981, file: !1851, line: 516, type: !337)
!1986 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1981, file: !1851, line: 516, type: !1948)
!1987 = !DILocation(line: 0, scope: !1981)
!1988 = !DILocation(line: 518, column: 10, scope: !1981)
!1989 = !DILocation(line: 518, column: 3, scope: !1981)
!1990 = distinct !DISubprogram(name: "fstatat64", scope: !1851, file: !1851, line: 523, type: !1991, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!337, !337, !342, !1948, !337}
!1993 = !{!1994, !1995, !1996, !1997}
!1994 = !DILocalVariable(name: "__fd", arg: 1, scope: !1990, file: !1851, line: 523, type: !337)
!1995 = !DILocalVariable(name: "__filename", arg: 2, scope: !1990, file: !1851, line: 523, type: !342)
!1996 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1990, file: !1851, line: 523, type: !1948)
!1997 = !DILocalVariable(name: "__flag", arg: 4, scope: !1990, file: !1851, line: 523, type: !337)
!1998 = !DILocation(line: 0, scope: !1990)
!1999 = !DILocation(line: 526, column: 10, scope: !1990)
!2000 = !DILocation(line: 526, column: 3, scope: !1990)
!2001 = distinct !DISubprogram(name: "ssa_operands_active", scope: !3, file: !3, line: 165, type: !2002, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!336}
!2004 = !DILocation(line: 171, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 171, column: 7)
!2006 = !DILocation(line: 171, column: 12, scope: !2005)
!2007 = !DILocation(line: 171, column: 7, scope: !2001)
!2008 = !DILocation(line: 174, column: 16, scope: !2001)
!2009 = !DILocation(line: 174, column: 10, scope: !2001)
!2010 = !DILocation(line: 174, column: 26, scope: !2001)
!2011 = !DILocation(line: 174, column: 29, scope: !2001)
!2012 = !DILocation(line: 174, column: 57, scope: !2001)
!2013 = !DILocation(line: 174, column: 3, scope: !2001)
!2014 = !DILocation(line: 0, scope: !2001)
!2015 = !DILocation(line: 175, column: 1, scope: !2001)
!2016 = distinct !DISubprogram(name: "gimple_ssa_operands", scope: !2017, file: !2017, line: 1211, type: !2018, scopeLine: 1212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2017 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!2023 = !{!2024}
!2024 = !DILocalVariable(name: "fun", arg: 1, scope: !2016, file: !2017, line: 1211, type: !2021)
!2025 = !DILocation(line: 0, scope: !2016)
!2026 = !DILocation(line: 1213, column: 16, scope: !2016)
!2027 = !DILocation(line: 1213, column: 27, scope: !2016)
!2028 = !DILocation(line: 1213, column: 3, scope: !2016)
!2029 = distinct !DISubprogram(name: "init_ssa_operands", scope: !3, file: !3, line: 220, type: !2030, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null}
!2032 = !DILocation(line: 222, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 222, column: 7)
!2034 = !DILocation(line: 222, column: 7, scope: !2029)
!2035 = !DILocation(line: 224, column: 20, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 223, column: 5)
!2037 = !DILocation(line: 224, column: 18, scope: !2036)
!2038 = !DILocation(line: 225, column: 20, scope: !2036)
!2039 = !DILocation(line: 225, column: 18, scope: !2036)
!2040 = !DILocation(line: 226, column: 18, scope: !2036)
!2041 = !DILocation(line: 227, column: 18, scope: !2036)
!2042 = !DILocation(line: 228, column: 7, scope: !2036)
!2043 = !DILocation(line: 229, column: 5, scope: !2036)
!2044 = !DILocation(line: 231, column: 3, scope: !2029)
!2045 = !DILocation(line: 233, column: 29, scope: !2029)
!2046 = !DILocation(line: 233, column: 8, scope: !2029)
!2047 = !DILocation(line: 233, column: 36, scope: !2029)
!2048 = !DILocation(line: 232, column: 24, scope: !2029)
!2049 = !DILocation(line: 232, column: 3, scope: !2029)
!2050 = !DILocation(line: 232, column: 31, scope: !2029)
!2051 = !DILocation(line: 233, column: 6, scope: !2029)
!2052 = !DILocation(line: 234, column: 24, scope: !2029)
!2053 = !DILocation(line: 234, column: 3, scope: !2029)
!2054 = !DILocation(line: 234, column: 31, scope: !2029)
!2055 = !DILocation(line: 234, column: 42, scope: !2029)
!2056 = !DILocation(line: 235, column: 3, scope: !2029)
!2057 = !DILocation(line: 236, column: 24, scope: !2029)
!2058 = !DILocation(line: 236, column: 3, scope: !2029)
!2059 = !DILocation(line: 236, column: 31, scope: !2029)
!2060 = !DILocation(line: 236, column: 52, scope: !2029)
!2061 = !DILocation(line: 237, column: 3, scope: !2029)
!2062 = !DILocation(line: 238, column: 1, scope: !2029)
!2063 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !6, file: !6, line: 184, type: !2064, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!1517, !337}
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2063, file: !6, line: 184, type: !337)
!2068 = !DILocation(line: 0, scope: !2063)
!2069 = !DILocation(line: 184, column: 1, scope: !2063)
!2070 = distinct !DISubprogram(name: "create_vop_var", scope: !3, file: !3, line: 182, type: !2030, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "global_var", scope: !2070, file: !3, line: 184, type: !344)
!2073 = !DILocation(line: 186, column: 3, scope: !2070)
!2074 = !DILocation(line: 188, column: 16, scope: !2070)
!2075 = !DILocation(line: 0, scope: !2070)
!2076 = !DILocation(line: 191, column: 3, scope: !2070)
!2077 = !DILocation(line: 191, column: 32, scope: !2070)
!2078 = !DILocation(line: 192, column: 3, scope: !2070)
!2079 = !DILocation(line: 192, column: 30, scope: !2070)
!2080 = !DILocation(line: 193, column: 30, scope: !2070)
!2081 = !DILocation(line: 195, column: 26, scope: !2070)
!2082 = !DILocation(line: 196, column: 3, scope: !2070)
!2083 = !DILocation(line: 196, column: 29, scope: !2070)
!2084 = !DILocation(line: 198, column: 33, scope: !2070)
!2085 = !DILocation(line: 200, column: 3, scope: !2070)
!2086 = !DILocation(line: 201, column: 3, scope: !2070)
!2087 = !DILocation(line: 202, column: 3, scope: !2070)
!2088 = !DILocation(line: 202, column: 9, scope: !2070)
!2089 = !DILocation(line: 202, column: 20, scope: !2070)
!2090 = !DILocation(line: 202, column: 24, scope: !2070)
!2091 = !DILocation(line: 203, column: 1, scope: !2070)
!2092 = distinct !DISubprogram(name: "fini_ssa_operands", scope: !3, file: !3, line: 244, type: !2030, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "ptr", scope: !2092, file: !3, line: 246, type: !1076)
!2095 = !DILocation(line: 248, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 248, column: 7)
!2097 = !DILocation(line: 248, column: 7, scope: !2092)
!2098 = !DILocation(line: 250, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 249, column: 5)
!2100 = !DILocation(line: 251, column: 7, scope: !2099)
!2101 = !DILocation(line: 252, column: 18, scope: !2099)
!2102 = !DILocation(line: 253, column: 18, scope: !2099)
!2103 = !DILocation(line: 254, column: 5, scope: !2099)
!2104 = !DILocation(line: 256, column: 24, scope: !2092)
!2105 = !DILocation(line: 256, column: 3, scope: !2092)
!2106 = !DILocation(line: 256, column: 31, scope: !2092)
!2107 = !DILocation(line: 256, column: 41, scope: !2092)
!2108 = !DILocation(line: 257, column: 24, scope: !2092)
!2109 = !DILocation(line: 257, column: 3, scope: !2092)
!2110 = !DILocation(line: 257, column: 31, scope: !2092)
!2111 = !DILocation(line: 257, column: 41, scope: !2092)
!2112 = !DILocation(line: 259, column: 3, scope: !2092)
!2113 = !DILocation(line: 259, column: 38, scope: !2092)
!2114 = !DILocation(line: 259, column: 17, scope: !2092)
!2115 = !DILocation(line: 259, column: 45, scope: !2092)
!2116 = !DILocation(line: 0, scope: !2092)
!2117 = !DILocation(line: 259, column: 61, scope: !2092)
!2118 = !DILocation(line: 262, column: 32, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 260, column: 5)
!2120 = !DILocation(line: 262, column: 48, scope: !2119)
!2121 = !DILocation(line: 261, column: 28, scope: !2119)
!2122 = !DILocation(line: 261, column: 7, scope: !2119)
!2123 = !DILocation(line: 262, column: 2, scope: !2119)
!2124 = !DILocation(line: 263, column: 17, scope: !2119)
!2125 = !DILocation(line: 263, column: 7, scope: !2119)
!2126 = distinct !{!2126, !2112, !2127}
!2127 = !DILocation(line: 264, column: 5, scope: !2092)
!2128 = !DILocation(line: 266, column: 31, scope: !2092)
!2129 = !DILocation(line: 266, column: 42, scope: !2092)
!2130 = !DILocation(line: 268, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 268, column: 7)
!2132 = !DILocation(line: 268, column: 7, scope: !2092)
!2133 = !DILocation(line: 269, column: 5, scope: !2131)
!2134 = !DILocation(line: 271, column: 3, scope: !2092)
!2135 = !DILocation(line: 271, column: 9, scope: !2092)
!2136 = !DILocation(line: 271, column: 20, scope: !2092)
!2137 = !DILocation(line: 271, column: 24, scope: !2092)
!2138 = !DILocation(line: 273, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 273, column: 7)
!2140 = !DILocation(line: 273, column: 17, scope: !2139)
!2141 = !DILocation(line: 273, column: 21, scope: !2139)
!2142 = !DILocation(line: 273, column: 32, scope: !2139)
!2143 = !DILocation(line: 273, column: 7, scope: !2092)
!2144 = !DILocation(line: 276, column: 23, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 274, column: 5)
!2146 = !DILocation(line: 275, column: 7, scope: !2145)
!2147 = !DILocation(line: 277, column: 16, scope: !2145)
!2148 = !DILocation(line: 278, column: 23, scope: !2145)
!2149 = !DILocation(line: 277, column: 7, scope: !2145)
!2150 = !DILocation(line: 279, column: 16, scope: !2145)
!2151 = !DILocation(line: 280, column: 23, scope: !2145)
!2152 = !DILocation(line: 279, column: 7, scope: !2145)
!2153 = !DILocation(line: 281, column: 16, scope: !2145)
!2154 = !DILocation(line: 282, column: 23, scope: !2145)
!2155 = !DILocation(line: 281, column: 7, scope: !2145)
!2156 = !DILocation(line: 283, column: 16, scope: !2145)
!2157 = !DILocation(line: 284, column: 23, scope: !2145)
!2158 = !DILocation(line: 283, column: 7, scope: !2145)
!2159 = !DILocation(line: 285, column: 16, scope: !2145)
!2160 = !DILocation(line: 286, column: 23, scope: !2145)
!2161 = !DILocation(line: 285, column: 7, scope: !2145)
!2162 = !DILocation(line: 287, column: 5, scope: !2145)
!2163 = !DILocation(line: 288, column: 1, scope: !2092)
!2164 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !6, file: !6, line: 184, type: !2165, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "vec_", arg: 1, scope: !2164, file: !6, line: 184, type: !2167)
!2170 = !DILocation(line: 0, scope: !2164)
!2171 = !DILocation(line: 184, column: 1, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2164, file: !6, line: 184, column: 1)
!2173 = !DILocation(line: 184, column: 1, scope: !2164)
!2174 = distinct !DISubprogram(name: "free_stmt_operands", scope: !3, file: !3, line: 1085, type: !2175, scopeLine: 1086, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !639}
!2177 = !{!2178, !2179, !2181, !2182, !2184}
!2178 = !DILocalVariable(name: "stmt", arg: 1, scope: !2174, file: !3, line: 1085, type: !639)
!2179 = !DILocalVariable(name: "defs", scope: !2174, file: !3, line: 1087, type: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !328, line: 42, baseType: !668)
!2181 = !DILocalVariable(name: "last_def", scope: !2174, file: !3, line: 1087, type: !2180)
!2182 = !DILocalVariable(name: "uses", scope: !2174, file: !3, line: 1088, type: !2183)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !328, line: 50, baseType: !675)
!2184 = !DILocalVariable(name: "last_use", scope: !2174, file: !3, line: 1088, type: !2183)
!2185 = !DILocation(line: 0, scope: !2174)
!2186 = !DILocation(line: 1087, column: 23, scope: !2174)
!2187 = !DILocation(line: 1088, column: 23, scope: !2174)
!2188 = !DILocation(line: 1090, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1090, column: 7)
!2190 = !DILocation(line: 1090, column: 7, scope: !2174)
!2191 = !DILocation(line: 1092, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1092, column: 7)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1091, column: 5)
!2194 = !DILocation(line: 0, scope: !2192)
!2195 = !DILocation(line: 1092, column: 39, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 1092, column: 7)
!2197 = !DILocation(line: 1092, column: 7, scope: !2196)
!2198 = distinct !{!2198, !2191, !2199}
!2199 = !DILocation(line: 1093, column: 2, scope: !2192)
!2200 = !DILocation(line: 1094, column: 45, scope: !2193)
!2201 = !DILocation(line: 1094, column: 24, scope: !2193)
!2202 = !DILocation(line: 1094, column: 52, scope: !2193)
!2203 = !DILocation(line: 1094, column: 22, scope: !2193)
!2204 = !DILocation(line: 1095, column: 28, scope: !2193)
!2205 = !DILocation(line: 1095, column: 7, scope: !2193)
!2206 = !DILocation(line: 1095, column: 35, scope: !2193)
!2207 = !DILocation(line: 1095, column: 45, scope: !2193)
!2208 = !DILocation(line: 1096, column: 7, scope: !2193)
!2209 = !DILocation(line: 1097, column: 5, scope: !2193)
!2210 = !DILocation(line: 1099, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1099, column: 7)
!2212 = !DILocation(line: 1099, column: 7, scope: !2174)
!2213 = !DILocation(line: 1101, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 1101, column: 7)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1100, column: 5)
!2216 = !DILocation(line: 0, scope: !2214)
!2217 = !DILocation(line: 1101, column: 39, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1101, column: 7)
!2219 = !DILocation(line: 0, scope: !2215)
!2220 = !DILocation(line: 1101, column: 66, scope: !2218)
!2221 = !DILocation(line: 1101, column: 7, scope: !2218)
!2222 = distinct !{!2222, !2213, !2223}
!2223 = !DILocation(line: 1102, column: 39, scope: !2214)
!2224 = !DILocation(line: 1104, column: 45, scope: !2215)
!2225 = !DILocation(line: 1104, column: 24, scope: !2215)
!2226 = !DILocation(line: 1104, column: 52, scope: !2215)
!2227 = !DILocation(line: 1104, column: 22, scope: !2215)
!2228 = !DILocation(line: 1105, column: 28, scope: !2215)
!2229 = !DILocation(line: 1105, column: 7, scope: !2215)
!2230 = !DILocation(line: 1105, column: 35, scope: !2215)
!2231 = !DILocation(line: 1105, column: 45, scope: !2215)
!2232 = !DILocation(line: 1106, column: 7, scope: !2215)
!2233 = !DILocation(line: 1107, column: 5, scope: !2215)
!2234 = !DILocation(line: 1109, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1109, column: 7)
!2236 = !DILocation(line: 1109, column: 7, scope: !2174)
!2237 = !DILocation(line: 1111, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 1110, column: 5)
!2239 = !DILocation(line: 1112, column: 7, scope: !2238)
!2240 = !DILocation(line: 1113, column: 5, scope: !2238)
!2241 = !DILocation(line: 1114, column: 1, scope: !2174)
!2242 = distinct !DISubprogram(name: "gimple_def_ops", scope: !250, file: !250, line: 1292, type: !2243, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!668, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !345, line: 60, baseType: !1523)
!2246 = !{!2247}
!2247 = !DILocalVariable(name: "g", arg: 1, scope: !2242, file: !250, line: 1292, type: !2245)
!2248 = !DILocation(line: 0, scope: !2242)
!2249 = !DILocation(line: 1294, column: 8, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2242, file: !250, line: 1294, column: 7)
!2251 = !DILocation(line: 1294, column: 7, scope: !2242)
!2252 = !DILocation(line: 1296, column: 26, scope: !2242)
!2253 = !DILocation(line: 1296, column: 3, scope: !2242)
!2254 = !DILocation(line: 1297, column: 1, scope: !2242)
!2255 = distinct !DISubprogram(name: "gimple_use_ops", scope: !250, file: !250, line: 1313, type: !2256, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!675, !2245}
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "g", arg: 1, scope: !2255, file: !250, line: 1313, type: !2245)
!2260 = !DILocation(line: 0, scope: !2255)
!2261 = !DILocation(line: 1315, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !250, line: 1315, column: 7)
!2263 = !DILocation(line: 1315, column: 7, scope: !2255)
!2264 = !DILocation(line: 1317, column: 26, scope: !2255)
!2265 = !DILocation(line: 1317, column: 3, scope: !2255)
!2266 = !DILocation(line: 1318, column: 1, scope: !2255)
!2267 = distinct !DISubprogram(name: "gimple_set_def_ops", scope: !250, file: !250, line: 1303, type: !2268, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !639, !668}
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "g", arg: 1, scope: !2267, file: !250, line: 1303, type: !639)
!2272 = !DILocalVariable(name: "def", arg: 2, scope: !2267, file: !250, line: 1303, type: !668)
!2273 = !DILocation(line: 0, scope: !2267)
!2274 = !DILocation(line: 1305, column: 3, scope: !2267)
!2275 = !DILocation(line: 1306, column: 19, scope: !2267)
!2276 = !DILocation(line: 1306, column: 27, scope: !2267)
!2277 = !DILocation(line: 1307, column: 1, scope: !2267)
!2278 = distinct !DISubprogram(name: "delink_imm_use", scope: !2017, file: !2017, line: 188, type: !2279, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !1526}
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "linknode", arg: 1, scope: !2278, file: !2017, line: 188, type: !1526)
!2283 = !DILocation(line: 0, scope: !2278)
!2284 = !DILocation(line: 191, column: 17, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2278, file: !2017, line: 191, column: 7)
!2286 = !DILocation(line: 191, column: 22, scope: !2285)
!2287 = !DILocation(line: 191, column: 7, scope: !2278)
!2288 = !DILocation(line: 194, column: 36, scope: !2278)
!2289 = !DILocation(line: 194, column: 19, scope: !2278)
!2290 = !DILocation(line: 194, column: 24, scope: !2278)
!2291 = !DILocation(line: 195, column: 36, scope: !2278)
!2292 = !DILocation(line: 195, column: 13, scope: !2278)
!2293 = !DILocation(line: 195, column: 24, scope: !2278)
!2294 = !DILocation(line: 196, column: 18, scope: !2278)
!2295 = !DILocation(line: 197, column: 18, scope: !2278)
!2296 = !DILocation(line: 198, column: 1, scope: !2278)
!2297 = distinct !DISubprogram(name: "gimple_set_use_ops", scope: !250, file: !250, line: 1324, type: !2298, scopeLine: 1325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !639, !675}
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "g", arg: 1, scope: !2297, file: !250, line: 1324, type: !639)
!2302 = !DILocalVariable(name: "use", arg: 2, scope: !2297, file: !250, line: 1324, type: !675)
!2303 = !DILocation(line: 0, scope: !2297)
!2304 = !DILocation(line: 1326, column: 3, scope: !2297)
!2305 = !DILocation(line: 1327, column: 19, scope: !2297)
!2306 = !DILocation(line: 1327, column: 27, scope: !2297)
!2307 = !DILocation(line: 1328, column: 1, scope: !2297)
!2308 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !250, file: !250, line: 1283, type: !2309, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!336, !2245}
!2311 = !{!2312}
!2312 = !DILocalVariable(name: "g", arg: 1, scope: !2308, file: !250, line: 1283, type: !2245)
!2313 = !DILocation(line: 0, scope: !2308)
!2314 = !DILocation(line: 1285, column: 10, scope: !2308)
!2315 = !DILocation(line: 1285, column: 26, scope: !2308)
!2316 = !DILocation(line: 1285, column: 43, scope: !2308)
!2317 = !DILocation(line: 1285, column: 46, scope: !2308)
!2318 = !DILocation(line: 1285, column: 62, scope: !2308)
!2319 = !DILocation(line: 1285, column: 3, scope: !2308)
!2320 = distinct !DISubprogram(name: "gimple_set_vuse", scope: !250, file: !250, line: 1405, type: !2321, scopeLine: 1406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !639, !344}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "g", arg: 1, scope: !2320, file: !250, line: 1405, type: !639)
!2325 = !DILocalVariable(name: "vuse", arg: 2, scope: !2320, file: !250, line: 1405, type: !344)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 1407, column: 3, scope: !2320)
!2328 = !DILocation(line: 1408, column: 16, scope: !2320)
!2329 = !DILocation(line: 1408, column: 21, scope: !2320)
!2330 = !DILocation(line: 1409, column: 1, scope: !2320)
!2331 = distinct !DISubprogram(name: "gimple_set_vdef", scope: !250, file: !250, line: 1414, type: !2321, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2332)
!2332 = !{!2333, !2334}
!2333 = !DILocalVariable(name: "g", arg: 1, scope: !2331, file: !250, line: 1414, type: !639)
!2334 = !DILocalVariable(name: "vdef", arg: 2, scope: !2331, file: !250, line: 1414, type: !344)
!2335 = !DILocation(line: 0, scope: !2331)
!2336 = !DILocation(line: 1416, column: 3, scope: !2331)
!2337 = !DILocation(line: 1417, column: 16, scope: !2331)
!2338 = !DILocation(line: 1417, column: 21, scope: !2331)
!2339 = !DILocation(line: 1418, column: 1, scope: !2331)
!2340 = distinct !DISubprogram(name: "update_stmt_operands", scope: !3, file: !3, line: 1120, type: !2175, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "stmt", arg: 1, scope: !2340, file: !3, line: 1120, type: !639)
!2343 = !DILocation(line: 0, scope: !2340)
!2344 = !DILocation(line: 1124, column: 8, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 1124, column: 7)
!2346 = !DILocation(line: 1124, column: 7, scope: !2340)
!2347 = !DILocation(line: 1127, column: 3, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1127, column: 3)
!2349 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 1127, column: 3)
!2350 = !DILocation(line: 1127, column: 3, scope: !2349)
!2351 = !DILocation(line: 1129, column: 3, scope: !2340)
!2352 = !DILocation(line: 1130, column: 3, scope: !2340)
!2353 = !DILocation(line: 1131, column: 3, scope: !2340)
!2354 = !DILocation(line: 1133, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 1133, column: 3)
!2356 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 1133, column: 3)
!2357 = !DILocation(line: 1133, column: 3, scope: !2356)
!2358 = !DILocation(line: 1134, column: 1, scope: !2340)
!2359 = distinct !DISubprogram(name: "gimple_modified_p", scope: !250, file: !250, line: 1425, type: !2309, scopeLine: 1426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "g", arg: 1, scope: !2359, file: !250, line: 1425, type: !2245)
!2362 = !DILocation(line: 0, scope: !2359)
!2363 = !DILocation(line: 1427, column: 11, scope: !2359)
!2364 = !DILocation(line: 1427, column: 10, scope: !2359)
!2365 = !DILocation(line: 1427, column: 50, scope: !2359)
!2366 = !DILocation(line: 1427, column: 33, scope: !2359)
!2367 = !DILocation(line: 1427, column: 3, scope: !2359)
!2368 = distinct !DISubprogram(name: "build_ssa_operands", scope: !3, file: !3, line: 1070, type: !2175, scopeLine: 1071, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "stmt", arg: 1, scope: !2368, file: !3, line: 1070, type: !639)
!2371 = !DILocation(line: 0, scope: !2368)
!2372 = !DILocation(line: 1073, column: 3, scope: !2368)
!2373 = !DILocation(line: 1075, column: 3, scope: !2368)
!2374 = !DILocation(line: 1076, column: 3, scope: !2368)
!2375 = !DILocation(line: 1077, column: 3, scope: !2368)
!2376 = !DILocation(line: 1078, column: 1, scope: !2368)
!2377 = distinct !DISubprogram(name: "swap_tree_operands", scope: !3, file: !3, line: 1141, type: !2378, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !639, !673, !673}
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2389, !2390, !2391}
!2381 = !DILocalVariable(name: "stmt", arg: 1, scope: !2377, file: !3, line: 1141, type: !639)
!2382 = !DILocalVariable(name: "exp0", arg: 2, scope: !2377, file: !3, line: 1141, type: !673)
!2383 = !DILocalVariable(name: "exp1", arg: 3, scope: !2377, file: !3, line: 1141, type: !673)
!2384 = !DILocalVariable(name: "op0", scope: !2377, file: !3, line: 1143, type: !344)
!2385 = !DILocalVariable(name: "op1", scope: !2377, file: !3, line: 1143, type: !344)
!2386 = !DILocalVariable(name: "use0", scope: !2387, file: !3, line: 1152, type: !2183)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1151, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1150, column: 7)
!2389 = !DILocalVariable(name: "use1", scope: !2387, file: !3, line: 1152, type: !2183)
!2390 = !DILocalVariable(name: "ptr", scope: !2387, file: !3, line: 1152, type: !2183)
!2391 = !DILocalVariable(name: "tmp", scope: !2392, file: !3, line: 1174, type: !673)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1173, column: 9)
!2393 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1172, column: 11)
!2394 = !DILocation(line: 0, scope: !2377)
!2395 = !DILocation(line: 1144, column: 9, scope: !2377)
!2396 = !DILocation(line: 1145, column: 9, scope: !2377)
!2397 = !DILocation(line: 1150, column: 7, scope: !2388)
!2398 = !DILocation(line: 1150, column: 37, scope: !2388)
!2399 = !DILocation(line: 1150, column: 30, scope: !2388)
!2400 = !DILocation(line: 0, scope: !2387)
!2401 = !DILocation(line: 1156, column: 18, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1156, column: 7)
!2403 = !DILocation(line: 1156, column: 12, scope: !2402)
!2404 = !DILocation(line: 0, scope: !2402)
!2405 = !DILocation(line: 1156, column: 7, scope: !2402)
!2406 = !DILocation(line: 1157, column: 24, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1157, column: 6)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 1156, column: 7)
!2409 = !DILocation(line: 1157, column: 28, scope: !2407)
!2410 = !DILocation(line: 1157, column: 6, scope: !2408)
!2411 = !DILocation(line: 1156, column: 57, scope: !2408)
!2412 = !DILocation(line: 1156, column: 7, scope: !2408)
!2413 = distinct !{!2413, !2405, !2414}
!2414 = !DILocation(line: 1161, column: 4, scope: !2402)
!2415 = !DILocation(line: 1163, column: 18, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1163, column: 7)
!2417 = !DILocation(line: 1163, column: 12, scope: !2416)
!2418 = !DILocation(line: 0, scope: !2416)
!2419 = !DILocation(line: 1163, column: 7, scope: !2416)
!2420 = !DILocation(line: 1164, column: 24, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1164, column: 6)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1163, column: 7)
!2423 = !DILocation(line: 1164, column: 28, scope: !2421)
!2424 = !DILocation(line: 1164, column: 6, scope: !2422)
!2425 = !DILocation(line: 1163, column: 57, scope: !2422)
!2426 = !DILocation(line: 1163, column: 7, scope: !2422)
!2427 = distinct !{!2427, !2419, !2428}
!2428 = !DILocation(line: 1168, column: 4, scope: !2416)
!2429 = !DILocation(line: 1172, column: 11, scope: !2393)
!2430 = !DILocation(line: 1172, column: 19, scope: !2393)
!2431 = !DILocation(line: 1172, column: 16, scope: !2393)
!2432 = !DILocation(line: 1174, column: 35, scope: !2392)
!2433 = !DILocation(line: 1175, column: 48, scope: !2392)
!2434 = !DILocation(line: 1175, column: 27, scope: !2392)
!2435 = !DILocation(line: 1176, column: 27, scope: !2392)
!2436 = !DILocation(line: 1177, column: 2, scope: !2392)
!2437 = !DILocation(line: 1181, column: 9, scope: !2377)
!2438 = !DILocation(line: 1182, column: 9, scope: !2377)
!2439 = !DILocation(line: 1183, column: 1, scope: !2377)
!2440 = distinct !DISubprogram(name: "verify_imm_links", scope: !3, file: !3, line: 1190, type: !2441, scopeLine: 1191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!336, !1582, !344}
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2444 = !DILocalVariable(name: "f", arg: 1, scope: !2440, file: !3, line: 1190, type: !1582)
!2445 = !DILocalVariable(name: "var", arg: 2, scope: !2440, file: !3, line: 1190, type: !344)
!2446 = !DILocalVariable(name: "ptr", scope: !2440, file: !3, line: 1192, type: !1525)
!2447 = !DILocalVariable(name: "prev", scope: !2440, file: !3, line: 1192, type: !1525)
!2448 = !DILocalVariable(name: "list", scope: !2440, file: !3, line: 1192, type: !1525)
!2449 = !DILocalVariable(name: "count", scope: !2440, file: !3, line: 1193, type: !337)
!2450 = !DILabel(scope: !2440, name: "error", file: !3, line: 1244)
!2451 = !DILocation(line: 0, scope: !2440)
!2452 = !DILocation(line: 1195, column: 3, scope: !2440)
!2453 = !DILocation(line: 1197, column: 12, scope: !2440)
!2454 = !DILocation(line: 1198, column: 3, scope: !2440)
!2455 = !DILocation(line: 1200, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1200, column: 7)
!2457 = !DILocation(line: 1200, column: 18, scope: !2456)
!2458 = !DILocation(line: 1200, column: 7, scope: !2440)
!2459 = !DILocation(line: 1208, column: 3, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1208, column: 3)
!2461 = !DILocation(line: 1202, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1201, column: 5)
!2463 = !DILocation(line: 0, scope: !2460)
!2464 = !DILocation(line: 1208, column: 30, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1208, column: 3)
!2466 = !DILocation(line: 1210, column: 24, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1210, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1209, column: 5)
!2469 = !DILocation(line: 1210, column: 16, scope: !2467)
!2470 = !DILocation(line: 1210, column: 11, scope: !2468)
!2471 = !DILocation(line: 1213, column: 16, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1213, column: 11)
!2473 = !DILocation(line: 1213, column: 20, scope: !2472)
!2474 = !DILocation(line: 1213, column: 11, scope: !2468)
!2475 = !DILocation(line: 1215, column: 16, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1215, column: 16)
!2477 = !DILocation(line: 1215, column: 28, scope: !2476)
!2478 = !DILocation(line: 1215, column: 16, scope: !2472)
!2479 = !DILocation(line: 1219, column: 18, scope: !2468)
!2480 = !DILocation(line: 1223, column: 16, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1223, column: 11)
!2482 = !DILocation(line: 1223, column: 19, scope: !2481)
!2483 = !DILocation(line: 1223, column: 11, scope: !2468)
!2484 = distinct !{!2484, !2459, !2485}
!2485 = !DILocation(line: 1225, column: 5, scope: !2460)
!2486 = !DILocation(line: 1229, column: 8, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1229, column: 3)
!2488 = !DILocation(line: 0, scope: !2487)
!2489 = !DILocation(line: 1229, column: 30, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1229, column: 3)
!2491 = !DILocation(line: 1229, column: 3, scope: !2487)
!2492 = !DILocation(line: 1231, column: 24, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1231, column: 11)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1230, column: 5)
!2495 = !DILocation(line: 1231, column: 16, scope: !2493)
!2496 = !DILocation(line: 1231, column: 11, scope: !2494)
!2497 = !DILocation(line: 1234, column: 18, scope: !2494)
!2498 = !DILocation(line: 1235, column: 16, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1235, column: 11)
!2500 = !DILocation(line: 1235, column: 19, scope: !2499)
!2501 = !DILocation(line: 1235, column: 11, scope: !2494)
!2502 = distinct !{!2502, !2491, !2503}
!2503 = !DILocation(line: 1237, column: 5, scope: !2487)
!2504 = !DILocation(line: 1239, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1239, column: 7)
!2506 = !DILocation(line: 1239, column: 7, scope: !2440)
!2507 = !DILocation(line: 1245, column: 16, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1245, column: 7)
!2509 = !DILocation(line: 1244, column: 2, scope: !2440)
!2510 = !DILocation(line: 1245, column: 7, scope: !2508)
!2511 = !DILocation(line: 1245, column: 21, scope: !2508)
!2512 = !DILocation(line: 1245, column: 24, scope: !2508)
!2513 = !DILocation(line: 1245, column: 7, scope: !2440)
!2514 = !DILocation(line: 1247, column: 63, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1246, column: 5)
!2516 = !DILocation(line: 1247, column: 7, scope: !2515)
!2517 = !DILocation(line: 1248, column: 38, scope: !2515)
!2518 = !DILocation(line: 1248, column: 7, scope: !2515)
!2519 = !DILocation(line: 1249, column: 5, scope: !2515)
!2520 = !DILocation(line: 1251, column: 18, scope: !2440)
!2521 = !DILocation(line: 1250, column: 3, scope: !2440)
!2522 = !DILocation(line: 1252, column: 26, scope: !2440)
!2523 = !DILocation(line: 1252, column: 3, scope: !2440)
!2524 = !DILocation(line: 1253, column: 3, scope: !2440)
!2525 = !DILocation(line: 1254, column: 3, scope: !2440)
!2526 = !DILocation(line: 1255, column: 1, scope: !2440)
!2527 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2017, file: !2017, line: 427, type: !2528, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!344, !1525}
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "use", arg: 1, scope: !2527, file: !2017, line: 427, type: !1525)
!2532 = !DILocation(line: 0, scope: !2527)
!2533 = !DILocation(line: 429, column: 17, scope: !2527)
!2534 = !DILocation(line: 429, column: 10, scope: !2527)
!2535 = !DILocation(line: 429, column: 3, scope: !2527)
!2536 = distinct !DISubprogram(name: "dump_immediate_uses_for", scope: !3, file: !3, line: 1261, type: !2537, scopeLine: 1262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !1582, !344}
!2539 = !{!2540, !2541, !2542, !2550}
!2540 = !DILocalVariable(name: "file", arg: 1, scope: !2536, file: !3, line: 1261, type: !1582)
!2541 = !DILocalVariable(name: "var", arg: 2, scope: !2536, file: !3, line: 1261, type: !344)
!2542 = !DILocalVariable(name: "iter", scope: !2536, file: !3, line: 1263, type: !2543)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !542, line: 249, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !542, line: 238, size: 448, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2544, file: !542, line: 241, baseType: !1526, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2544, file: !542, line: 243, baseType: !1526, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2544, file: !542, line: 245, baseType: !1527, size: 256, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2544, file: !542, line: 248, baseType: !1526, size: 64, offset: 384)
!2550 = !DILocalVariable(name: "use_p", scope: !2536, file: !3, line: 1264, type: !1525)
!2551 = !DILocation(line: 0, scope: !2536)
!2552 = !DILocation(line: 1263, column: 3, scope: !2536)
!2553 = !DILocation(line: 1266, column: 3, scope: !2536)
!2554 = !DILocation(line: 1268, column: 3, scope: !2536)
!2555 = !DILocation(line: 1269, column: 3, scope: !2536)
!2556 = !DILocation(line: 1270, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1270, column: 7)
!2558 = !DILocation(line: 1270, column: 7, scope: !2536)
!2559 = !DILocation(line: 1271, column: 5, scope: !2557)
!2560 = !DILocation(line: 1273, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1273, column: 9)
!2562 = !DILocation(line: 1273, column: 9, scope: !2557)
!2563 = !DILocation(line: 1274, column: 7, scope: !2561)
!2564 = !DILocation(line: 1276, column: 36, scope: !2561)
!2565 = !DILocation(line: 1276, column: 7, scope: !2561)
!2566 = !DILocation(line: 1278, column: 3, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1278, column: 3)
!2568 = !DILocation(line: 0, scope: !2567)
!2569 = !DILocation(line: 1278, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1278, column: 3)
!2571 = !DILocation(line: 1280, column: 22, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 1280, column: 11)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1279, column: 5)
!2574 = !DILocation(line: 1280, column: 27, scope: !2572)
!2575 = !DILocation(line: 1280, column: 35, scope: !2572)
!2576 = !DILocation(line: 1280, column: 45, scope: !2572)
!2577 = !DILocation(line: 1280, column: 49, scope: !2572)
!2578 = !DILocation(line: 1280, column: 11, scope: !2573)
!2579 = !DILocation(line: 1281, column: 9, scope: !2572)
!2580 = !DILocation(line: 1283, column: 22, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1283, column: 6)
!2582 = !DILocation(line: 1283, column: 7, scope: !2581)
!2583 = !DILocation(line: 0, scope: !2581)
!2584 = !DILocation(line: 1283, column: 6, scope: !2572)
!2585 = !DILocation(line: 1284, column: 4, scope: !2581)
!2586 = !DILocation(line: 1286, column: 4, scope: !2581)
!2587 = distinct !{!2587, !2566, !2588}
!2588 = !DILocation(line: 1287, column: 5, scope: !2567)
!2589 = !DILocation(line: 1288, column: 3, scope: !2536)
!2590 = !DILocation(line: 1289, column: 1, scope: !2536)
!2591 = distinct !DISubprogram(name: "has_zero_uses", scope: !2017, file: !2017, line: 332, type: !2592, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!336, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !345, line: 59, baseType: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "var", arg: 1, scope: !2591, file: !2017, line: 332, type: !2594)
!2599 = !DILocalVariable(name: "ptr", scope: !2591, file: !2017, line: 334, type: !2600)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!2603 = !DILocation(line: 0, scope: !2591)
!2604 = !DILocation(line: 334, column: 42, scope: !2591)
!2605 = !DILocation(line: 337, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2591, file: !2017, line: 337, column: 7)
!2607 = !DILocation(line: 337, column: 11, scope: !2606)
!2608 = !DILocation(line: 337, column: 7, scope: !2591)
!2609 = !DILocation(line: 342, column: 8, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2591, file: !2017, line: 342, column: 7)
!2611 = !DILocation(line: 342, column: 7, scope: !2591)
!2612 = !DILocation(line: 345, column: 10, scope: !2591)
!2613 = !DILocation(line: 345, column: 3, scope: !2591)
!2614 = !DILocation(line: 346, column: 1, scope: !2591)
!2615 = distinct !DISubprogram(name: "has_single_use", scope: !2017, file: !2017, line: 350, type: !2592, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2616 = !{!2617, !2618}
!2617 = !DILocalVariable(name: "var", arg: 1, scope: !2615, file: !2017, line: 350, type: !2594)
!2618 = !DILocalVariable(name: "ptr", scope: !2615, file: !2017, line: 352, type: !2600)
!2619 = !DILocation(line: 0, scope: !2615)
!2620 = !DILocation(line: 352, column: 42, scope: !2615)
!2621 = !DILocation(line: 355, column: 19, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2615, file: !2017, line: 355, column: 7)
!2623 = !DILocation(line: 355, column: 11, scope: !2622)
!2624 = !DILocation(line: 355, column: 7, scope: !2615)
!2625 = !DILocation(line: 359, column: 25, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2615, file: !2017, line: 359, column: 7)
!2627 = !DILocation(line: 359, column: 11, scope: !2626)
!2628 = !DILocation(line: 359, column: 7, scope: !2615)
!2629 = !DILocation(line: 360, column: 30, scope: !2626)
!2630 = !DILocation(line: 360, column: 13, scope: !2626)
!2631 = !DILocation(line: 360, column: 12, scope: !2626)
!2632 = !DILocation(line: 360, column: 5, scope: !2626)
!2633 = !DILocation(line: 363, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2615, file: !2017, line: 363, column: 7)
!2635 = !DILocation(line: 363, column: 7, scope: !2615)
!2636 = !DILocation(line: 366, column: 10, scope: !2615)
!2637 = !DILocation(line: 366, column: 3, scope: !2615)
!2638 = !DILocation(line: 367, column: 1, scope: !2615)
!2639 = distinct !DISubprogram(name: "num_imm_uses", scope: !2017, file: !2017, line: 408, type: !2640, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!7, !2594}
!2642 = !{!2643, !2644, !2645, !2646}
!2643 = !DILocalVariable(name: "var", arg: 1, scope: !2639, file: !2017, line: 408, type: !2594)
!2644 = !DILocalVariable(name: "start", scope: !2639, file: !2017, line: 410, type: !2600)
!2645 = !DILocalVariable(name: "ptr", scope: !2639, file: !2017, line: 411, type: !2601)
!2646 = !DILocalVariable(name: "num", scope: !2639, file: !2017, line: 412, type: !7)
!2647 = !DILocation(line: 0, scope: !2639)
!2648 = !DILocation(line: 410, column: 44, scope: !2639)
!2649 = !DILocation(line: 414, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2639, file: !2017, line: 414, column: 7)
!2651 = !DILocation(line: 0, scope: !2650)
!2652 = !DILocation(line: 414, column: 7, scope: !2639)
!2653 = !DILocation(line: 418, column: 5, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !2017, line: 418, column: 5)
!2655 = !DILocation(line: 415, column: 5, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !2017, line: 415, column: 5)
!2657 = !DILocation(line: 0, scope: !2656)
!2658 = !DILocation(line: 415, column: 33, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !2017, line: 415, column: 5)
!2660 = !DILocation(line: 416, column: 10, scope: !2659)
!2661 = !DILocation(line: 415, column: 54, scope: !2659)
!2662 = !DILocation(line: 415, column: 5, scope: !2659)
!2663 = distinct !{!2663, !2655, !2664}
!2664 = !DILocation(line: 416, column: 10, scope: !2656)
!2665 = !DILocation(line: 0, scope: !2654)
!2666 = !DILocation(line: 412, column: 16, scope: !2639)
!2667 = !DILocation(line: 418, column: 33, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2654, file: !2017, line: 418, column: 5)
!2669 = !DILocation(line: 419, column: 29, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2668, file: !2017, line: 419, column: 11)
!2671 = !DILocation(line: 419, column: 12, scope: !2670)
!2672 = !DILocation(line: 419, column: 11, scope: !2668)
!2673 = !DILocation(line: 418, column: 54, scope: !2668)
!2674 = !DILocation(line: 418, column: 5, scope: !2668)
!2675 = distinct !{!2675, !2653, !2676}
!2676 = !DILocation(line: 420, column: 5, scope: !2654)
!2677 = !DILocation(line: 422, column: 3, scope: !2639)
!2678 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2017, file: !2017, line: 292, type: !2679, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!1525, !2681, !344}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "imm", arg: 1, scope: !2678, file: !2017, line: 292, type: !2681)
!2684 = !DILocalVariable(name: "var", arg: 2, scope: !2678, file: !2017, line: 292, type: !344)
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 294, column: 18, scope: !2678)
!2687 = !DILocation(line: 294, column: 8, scope: !2678)
!2688 = !DILocation(line: 294, column: 14, scope: !2678)
!2689 = !DILocation(line: 295, column: 30, scope: !2678)
!2690 = !DILocation(line: 295, column: 16, scope: !2678)
!2691 = !DILocation(line: 299, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2678, file: !2017, line: 299, column: 7)
!2693 = !DILocation(line: 299, column: 7, scope: !2678)
!2694 = !DILocation(line: 301, column: 15, scope: !2678)
!2695 = !DILocation(line: 301, column: 3, scope: !2678)
!2696 = !DILocation(line: 302, column: 1, scope: !2678)
!2697 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2017, file: !2017, line: 285, type: !2698, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!336, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "imm", arg: 1, scope: !2697, file: !2017, line: 285, type: !2700)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocation(line: 287, column: 16, scope: !2697)
!2706 = !DILocation(line: 287, column: 32, scope: !2697)
!2707 = !DILocation(line: 287, column: 24, scope: !2697)
!2708 = !DILocation(line: 287, column: 10, scope: !2697)
!2709 = !DILocation(line: 287, column: 3, scope: !2697)
!2710 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2017, file: !2017, line: 306, type: !2711, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!1525, !2681}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "imm", arg: 1, scope: !2710, file: !2017, line: 306, type: !2681)
!2715 = !DILocalVariable(name: "old", scope: !2710, file: !2017, line: 308, type: !1525)
!2716 = !DILocation(line: 0, scope: !2710)
!2717 = !DILocation(line: 308, column: 28, scope: !2710)
!2718 = !DILocation(line: 319, column: 23, scope: !2710)
!2719 = !DILocation(line: 319, column: 16, scope: !2710)
!2720 = !DILocation(line: 320, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2710, file: !2017, line: 320, column: 7)
!2722 = !DILocation(line: 320, column: 7, scope: !2710)
!2723 = !DILocation(line: 322, column: 15, scope: !2710)
!2724 = !DILocation(line: 322, column: 3, scope: !2710)
!2725 = !DILocation(line: 323, column: 1, scope: !2710)
!2726 = distinct !DISubprogram(name: "dump_immediate_uses", scope: !3, file: !3, line: 1295, type: !2727, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !1582}
!2729 = !{!2730, !2731, !2732}
!2730 = !DILocalVariable(name: "file", arg: 1, scope: !2726, file: !3, line: 1295, type: !1582)
!2731 = !DILocalVariable(name: "var", scope: !2726, file: !3, line: 1297, type: !344)
!2732 = !DILocalVariable(name: "x", scope: !2726, file: !3, line: 1298, type: !7)
!2733 = !DILocation(line: 0, scope: !2726)
!2734 = !DILocation(line: 1300, column: 3, scope: !2726)
!2735 = !DILocation(line: 1301, column: 8, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1301, column: 3)
!2737 = !DILocation(line: 0, scope: !2736)
!2738 = !DILocation(line: 1301, column: 19, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1301, column: 3)
!2740 = !DILocation(line: 1301, column: 17, scope: !2739)
!2741 = !DILocation(line: 1301, column: 3, scope: !2736)
!2742 = !DILocation(line: 1303, column: 13, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1302, column: 5)
!2744 = !DILocation(line: 1304, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1304, column: 11)
!2746 = !DILocation(line: 1304, column: 11, scope: !2743)
!2747 = !DILocation(line: 1306, column: 7, scope: !2743)
!2748 = !DILocation(line: 1307, column: 5, scope: !2743)
!2749 = !DILocation(line: 1301, column: 35, scope: !2739)
!2750 = !DILocation(line: 1301, column: 3, scope: !2739)
!2751 = distinct !{!2751, !2741, !2752}
!2752 = !DILocation(line: 1307, column: 5, scope: !2736)
!2753 = !DILocation(line: 1308, column: 1, scope: !2726)
!2754 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !6, file: !6, line: 182, type: !2755, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2759)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!7, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "vec_", arg: 1, scope: !2754, file: !6, line: 182, type: !2757)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 182, column: 1, scope: !2754)
!2763 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !6, file: !6, line: 182, type: !2764, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!344, !2757, !7}
!2766 = !{!2767, !2768}
!2767 = !DILocalVariable(name: "vec_", arg: 1, scope: !2763, file: !6, line: 182, type: !2757)
!2768 = !DILocalVariable(name: "ix_", arg: 2, scope: !2763, file: !6, line: 182, type: !7)
!2769 = !DILocation(line: 0, scope: !2763)
!2770 = !DILocation(line: 182, column: 1, scope: !2763)
!2771 = distinct !DISubprogram(name: "debug_immediate_uses", scope: !3, file: !3, line: 1314, type: !2030, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!2772 = !DILocation(line: 1316, column: 24, scope: !2771)
!2773 = !DILocation(line: 1316, column: 3, scope: !2771)
!2774 = !DILocation(line: 1317, column: 1, scope: !2771)
!2775 = distinct !DISubprogram(name: "debug_immediate_uses_for", scope: !3, file: !3, line: 1323, type: !2776, scopeLine: 1324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !344}
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "var", arg: 1, scope: !2775, file: !3, line: 1323, type: !344)
!2780 = !DILocation(line: 0, scope: !2775)
!2781 = !DILocation(line: 1325, column: 28, scope: !2775)
!2782 = !DILocation(line: 1325, column: 3, scope: !2775)
!2783 = !DILocation(line: 1326, column: 1, scope: !2775)
!2784 = distinct !DISubprogram(name: "unlink_stmt_vdef", scope: !3, file: !3, line: 1332, type: !2175, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2785 = !{!2786, !2787, !2788, !2789, !2790}
!2786 = !DILocalVariable(name: "stmt", arg: 1, scope: !2784, file: !3, line: 1332, type: !639)
!2787 = !DILocalVariable(name: "use_p", scope: !2784, file: !3, line: 1334, type: !1525)
!2788 = !DILocalVariable(name: "iter", scope: !2784, file: !3, line: 1335, type: !2543)
!2789 = !DILocalVariable(name: "use_stmt", scope: !2784, file: !3, line: 1336, type: !639)
!2790 = !DILocalVariable(name: "vdef", scope: !2784, file: !3, line: 1337, type: !344)
!2791 = !DILocation(line: 0, scope: !2784)
!2792 = !DILocation(line: 1335, column: 3, scope: !2784)
!2793 = !DILocation(line: 1337, column: 15, scope: !2784)
!2794 = !DILocation(line: 1339, column: 8, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 1339, column: 7)
!2796 = !DILocation(line: 1340, column: 7, scope: !2795)
!2797 = !DILocation(line: 1340, column: 10, scope: !2795)
!2798 = !DILocation(line: 1340, column: 27, scope: !2795)
!2799 = !DILocation(line: 1339, column: 7, scope: !2784)
!2800 = !DILocation(line: 1343, column: 3, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 1343, column: 3)
!2802 = !DILocation(line: 1343, column: 3, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1343, column: 3)
!2804 = !DILocation(line: 1345, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1345, column: 7)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1344, column: 5)
!2807 = !DILocation(line: 0, scope: !2805)
!2808 = !DILocation(line: 1345, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 1345, column: 7)
!2810 = !DILocation(line: 1346, column: 2, scope: !2809)
!2811 = distinct !{!2811, !2804, !2812}
!2812 = !DILocation(line: 1346, column: 2, scope: !2805)
!2813 = distinct !{!2813, !2800, !2814}
!2814 = !DILocation(line: 1347, column: 5, scope: !2801)
!2815 = !DILocation(line: 1349, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 1349, column: 7)
!2817 = !DILocation(line: 1349, column: 7, scope: !2784)
!2818 = !DILocation(line: 1350, column: 5, scope: !2816)
!2819 = !DILocation(line: 1350, column: 58, scope: !2816)
!2820 = !DILocation(line: 1351, column: 1, scope: !2784)
!2821 = distinct !DISubprogram(name: "gimple_vdef", scope: !250, file: !250, line: 1375, type: !2822, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!344, !2245}
!2824 = !{!2825}
!2825 = !DILocalVariable(name: "g", arg: 1, scope: !2821, file: !250, line: 1375, type: !2245)
!2826 = !DILocation(line: 0, scope: !2821)
!2827 = !DILocation(line: 1377, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2821, file: !250, line: 1377, column: 7)
!2829 = !DILocation(line: 1377, column: 7, scope: !2821)
!2830 = !DILocation(line: 1379, column: 23, scope: !2821)
!2831 = !DILocation(line: 1379, column: 3, scope: !2821)
!2832 = !DILocation(line: 1380, column: 1, scope: !2821)
!2833 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !2017, file: !2017, line: 1058, type: !2834, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!639, !2681, !344}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "imm", arg: 1, scope: !2833, file: !2017, line: 1058, type: !2681)
!2838 = !DILocalVariable(name: "var", arg: 2, scope: !2833, file: !2017, line: 1058, type: !344)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 1060, column: 18, scope: !2833)
!2841 = !DILocation(line: 1060, column: 8, scope: !2833)
!2842 = !DILocation(line: 1060, column: 14, scope: !2833)
!2843 = !DILocation(line: 1061, column: 30, scope: !2833)
!2844 = !DILocation(line: 1061, column: 16, scope: !2833)
!2845 = !DILocation(line: 1062, column: 8, scope: !2833)
!2846 = !DILocation(line: 1062, column: 22, scope: !2833)
!2847 = !DILocation(line: 1067, column: 18, scope: !2833)
!2848 = !DILocation(line: 1067, column: 23, scope: !2833)
!2849 = !DILocation(line: 1068, column: 18, scope: !2833)
!2850 = !DILocation(line: 1068, column: 23, scope: !2833)
!2851 = !DILocation(line: 1069, column: 22, scope: !2833)
!2852 = !DILocation(line: 1069, column: 27, scope: !2833)
!2853 = !DILocation(line: 1070, column: 18, scope: !2833)
!2854 = !DILocation(line: 1070, column: 22, scope: !2833)
!2855 = !DILocation(line: 1072, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2833, file: !2017, line: 1072, column: 7)
!2857 = !DILocation(line: 1072, column: 7, scope: !2833)
!2858 = !DILocation(line: 1075, column: 30, scope: !2833)
!2859 = !DILocation(line: 1075, column: 3, scope: !2833)
!2860 = !DILocation(line: 1077, column: 10, scope: !2833)
!2861 = !DILocation(line: 1077, column: 3, scope: !2833)
!2862 = !DILocation(line: 1078, column: 1, scope: !2833)
!2863 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !2017, file: !2017, line: 969, type: !2698, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "imm", arg: 1, scope: !2863, file: !2017, line: 969, type: !2700)
!2866 = !DILocation(line: 0, scope: !2863)
!2867 = !DILocation(line: 971, column: 16, scope: !2863)
!2868 = !DILocation(line: 971, column: 32, scope: !2863)
!2869 = !DILocation(line: 971, column: 24, scope: !2863)
!2870 = !DILocation(line: 971, column: 10, scope: !2863)
!2871 = !DILocation(line: 971, column: 3, scope: !2863)
!2872 = distinct !DISubprogram(name: "first_imm_use_on_stmt", scope: !2017, file: !2017, line: 1101, type: !2711, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "imm", arg: 1, scope: !2872, file: !2017, line: 1101, type: !2681)
!2875 = !DILocation(line: 0, scope: !2872)
!2876 = !DILocation(line: 1103, column: 29, scope: !2872)
!2877 = !DILocation(line: 1103, column: 38, scope: !2872)
!2878 = !DILocation(line: 1103, column: 8, scope: !2872)
!2879 = !DILocation(line: 1103, column: 22, scope: !2872)
!2880 = !DILocation(line: 1104, column: 3, scope: !2872)
!2881 = distinct !DISubprogram(name: "end_imm_use_on_stmt_p", scope: !2017, file: !2017, line: 1110, type: !2698, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2882)
!2882 = !{!2883}
!2883 = !DILocalVariable(name: "imm", arg: 1, scope: !2881, file: !2017, line: 1110, type: !2700)
!2884 = !DILocation(line: 0, scope: !2881)
!2885 = !DILocation(line: 1112, column: 16, scope: !2881)
!2886 = !DILocation(line: 1112, column: 34, scope: !2881)
!2887 = !DILocation(line: 1112, column: 24, scope: !2881)
!2888 = !DILocation(line: 1112, column: 10, scope: !2881)
!2889 = !DILocation(line: 1112, column: 3, scope: !2881)
!2890 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2017, file: !2017, line: 233, type: !2891, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !1525, !344}
!2893 = !{!2894, !2895}
!2894 = !DILocalVariable(name: "use", arg: 1, scope: !2890, file: !2017, line: 233, type: !1525)
!2895 = !DILocalVariable(name: "val", arg: 2, scope: !2890, file: !2017, line: 233, type: !344)
!2896 = !DILocation(line: 0, scope: !2890)
!2897 = !DILocation(line: 235, column: 3, scope: !2890)
!2898 = !DILocation(line: 236, column: 10, scope: !2890)
!2899 = !DILocation(line: 236, column: 15, scope: !2890)
!2900 = !DILocation(line: 237, column: 3, scope: !2890)
!2901 = !DILocation(line: 238, column: 1, scope: !2890)
!2902 = distinct !DISubprogram(name: "gimple_vuse", scope: !250, file: !250, line: 1365, type: !2822, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2903)
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "g", arg: 1, scope: !2902, file: !250, line: 1365, type: !2245)
!2905 = !DILocation(line: 0, scope: !2902)
!2906 = !DILocation(line: 1367, column: 8, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !250, line: 1367, column: 7)
!2908 = !DILocation(line: 1367, column: 7, scope: !2902)
!2909 = !DILocation(line: 1369, column: 23, scope: !2902)
!2910 = !DILocation(line: 1369, column: 3, scope: !2902)
!2911 = !DILocation(line: 1370, column: 1, scope: !2902)
!2912 = distinct !DISubprogram(name: "next_imm_use_on_stmt", scope: !2017, file: !2017, line: 1118, type: !2711, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2913)
!2913 = !{!2914}
!2914 = !DILocalVariable(name: "imm", arg: 1, scope: !2912, file: !2017, line: 1118, type: !2681)
!2915 = !DILocation(line: 0, scope: !2912)
!2916 = !DILocation(line: 1120, column: 23, scope: !2912)
!2917 = !DILocation(line: 1120, column: 16, scope: !2912)
!2918 = !DILocation(line: 1121, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2912, file: !2017, line: 1121, column: 7)
!2920 = !DILocation(line: 1121, column: 7, scope: !2912)
!2921 = !DILocation(line: 1125, column: 33, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2919, file: !2017, line: 1124, column: 5)
!2923 = !DILocation(line: 1125, column: 42, scope: !2922)
!2924 = !DILocation(line: 1125, column: 26, scope: !2922)
!2925 = !DILocation(line: 1126, column: 7, scope: !2922)
!2926 = !DILocation(line: 0, scope: !2919)
!2927 = !DILocation(line: 1128, column: 1, scope: !2912)
!2928 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !2017, file: !2017, line: 1083, type: !2929, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!639, !2681}
!2931 = !{!2932}
!2932 = !DILocalVariable(name: "imm", arg: 1, scope: !2928, file: !2017, line: 1083, type: !2681)
!2933 = !DILocation(line: 0, scope: !2928)
!2934 = !DILocation(line: 1085, column: 33, scope: !2928)
!2935 = !DILocation(line: 1085, column: 16, scope: !2928)
!2936 = !DILocation(line: 1086, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !2017, line: 1086, column: 7)
!2938 = !DILocation(line: 1086, column: 7, scope: !2928)
!2939 = !DILocation(line: 1088, column: 26, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !2017, line: 1088, column: 11)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !2017, line: 1087, column: 5)
!2942 = !DILocation(line: 1088, column: 31, scope: !2940)
!2943 = !DILocation(line: 1088, column: 11, scope: !2941)
!2944 = !DILocation(line: 1089, column: 24, scope: !2940)
!2945 = !DILocation(line: 1089, column: 2, scope: !2940)
!2946 = !DILocation(line: 1093, column: 30, scope: !2928)
!2947 = !DILocation(line: 1093, column: 3, scope: !2928)
!2948 = !DILocation(line: 1094, column: 10, scope: !2928)
!2949 = !DILocation(line: 1094, column: 3, scope: !2928)
!2950 = !DILocation(line: 1095, column: 1, scope: !2928)
!2951 = distinct !DISubprogram(name: "gimple_has_ops", scope: !250, file: !250, line: 1274, type: !2309, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2952)
!2952 = !{!2953}
!2953 = !DILocalVariable(name: "g", arg: 1, scope: !2951, file: !250, line: 1274, type: !2245)
!2954 = !DILocation(line: 0, scope: !2951)
!2955 = !DILocation(line: 1276, column: 10, scope: !2951)
!2956 = !DILocation(line: 1276, column: 26, scope: !2951)
!2957 = !DILocation(line: 1276, column: 41, scope: !2951)
!2958 = !DILocation(line: 1276, column: 44, scope: !2951)
!2959 = !DILocation(line: 1276, column: 60, scope: !2951)
!2960 = !DILocation(line: 1276, column: 3, scope: !2951)
!2961 = distinct !DISubprogram(name: "gimple_code", scope: !250, file: !250, line: 1052, type: !2962, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!249, !2245}
!2964 = !{!2965}
!2965 = !DILocalVariable(name: "g", arg: 1, scope: !2961, file: !250, line: 1052, type: !2245)
!2966 = !DILocation(line: 0, scope: !2961)
!2967 = !DILocation(line: 1054, column: 20, scope: !2961)
!2968 = !DILocation(line: 1054, column: 3, scope: !2961)
!2969 = distinct !DISubprogram(name: "gimple_set_has_volatile_ops", scope: !250, file: !250, line: 1489, type: !2970, scopeLine: 1490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !639, !336}
!2972 = !{!2973, !2974}
!2973 = !DILocalVariable(name: "stmt", arg: 1, scope: !2969, file: !250, line: 1489, type: !639)
!2974 = !DILocalVariable(name: "volatilep", arg: 2, scope: !2969, file: !250, line: 1489, type: !336)
!2975 = !DILocation(line: 0, scope: !2969)
!2976 = !DILocation(line: 1491, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !250, line: 1491, column: 7)
!2978 = !DILocation(line: 1491, column: 7, scope: !2969)
!2979 = !DILocation(line: 1492, column: 18, scope: !2977)
!2980 = !DILocation(line: 1492, column: 35, scope: !2977)
!2981 = !DILocation(line: 1492, column: 5, scope: !2977)
!2982 = !DILocation(line: 1493, column: 1, scope: !2969)
!2983 = distinct !DISubprogram(name: "start_ssa_stmt_operands", scope: !3, file: !3, line: 568, type: !2030, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!2984 = !DILocation(line: 570, column: 3, scope: !2983)
!2985 = !DILocation(line: 571, column: 3, scope: !2983)
!2986 = !DILocation(line: 572, column: 3, scope: !2983)
!2987 = !DILocation(line: 573, column: 3, scope: !2983)
!2988 = !DILocation(line: 574, column: 1, scope: !2983)
!2989 = distinct !DISubprogram(name: "parse_ssa_operands", scope: !3, file: !3, line: 1034, type: !2175, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2990 = !{!2991, !2992, !2993, !2997}
!2991 = !DILocalVariable(name: "stmt", arg: 1, scope: !2989, file: !3, line: 1034, type: !639)
!2992 = !DILocalVariable(name: "code", scope: !2989, file: !3, line: 1036, type: !249)
!2993 = !DILocalVariable(name: "i", scope: !2994, file: !3, line: 1049, type: !784)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1048, column: 5)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 1040, column: 12)
!2996 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1038, column: 7)
!2997 = !DILocalVariable(name: "start", scope: !2994, file: !3, line: 1049, type: !784)
!2998 = !DILocation(line: 0, scope: !2989)
!2999 = !DILocation(line: 1036, column: 27, scope: !2989)
!3000 = !DILocation(line: 1038, column: 12, scope: !2996)
!3001 = !DILocation(line: 1038, column: 7, scope: !2989)
!3002 = !DILocation(line: 1039, column: 5, scope: !2996)
!3003 = !DILocation(line: 1040, column: 12, scope: !2995)
!3004 = !DILocation(line: 1040, column: 12, scope: !2996)
!3005 = !DILocation(line: 1042, column: 11, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1042, column: 11)
!3007 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1041, column: 5)
!3008 = !DILocation(line: 1043, column: 4, scope: !3006)
!3009 = !DILocation(line: 1043, column: 7, scope: !3006)
!3010 = !DILocation(line: 1042, column: 11, scope: !3007)
!3011 = !DILocation(line: 1044, column: 27, scope: !3006)
!3012 = !DILocation(line: 1044, column: 2, scope: !3006)
!3013 = !DILocation(line: 0, scope: !2994)
!3014 = !DILocation(line: 1051, column: 33, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1051, column: 11)
!3016 = !DILocation(line: 1053, column: 29, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1052, column: 2)
!3018 = !DILocation(line: 1053, column: 4, scope: !3017)
!3019 = !DILocation(line: 1055, column: 2, scope: !3017)
!3020 = !DILocation(line: 1057, column: 12, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1057, column: 7)
!3022 = !DILocation(line: 0, scope: !3021)
!3023 = !DILocation(line: 1057, column: 27, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1057, column: 7)
!3025 = !DILocation(line: 1057, column: 25, scope: !3024)
!3026 = !DILocation(line: 1057, column: 7, scope: !3021)
!3027 = !DILocation(line: 1058, column: 48, scope: !3024)
!3028 = !DILocation(line: 1058, column: 27, scope: !3024)
!3029 = !DILocation(line: 1058, column: 2, scope: !3024)
!3030 = !DILocation(line: 1057, column: 51, scope: !3024)
!3031 = !DILocation(line: 1057, column: 7, scope: !3024)
!3032 = distinct !{!3032, !3026, !3033}
!3033 = !DILocation(line: 1058, column: 59, scope: !3021)
!3034 = !DILocation(line: 1061, column: 16, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1061, column: 11)
!3036 = !DILocation(line: 1061, column: 11, scope: !2994)
!3037 = !DILocation(line: 1062, column: 2, scope: !3035)
!3038 = !DILocation(line: 1064, column: 1, scope: !2989)
!3039 = distinct !DISubprogram(name: "finalize_ssa_stmt_operands", scope: !3, file: !3, line: 557, type: !2175, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3040 = !{!3041}
!3041 = !DILocalVariable(name: "stmt", arg: 1, scope: !3039, file: !3, line: 557, type: !639)
!3042 = !DILocation(line: 0, scope: !3039)
!3043 = !DILocation(line: 559, column: 3, scope: !3039)
!3044 = !DILocation(line: 560, column: 3, scope: !3039)
!3045 = !DILocation(line: 561, column: 3, scope: !3039)
!3046 = !DILocation(line: 562, column: 1, scope: !3039)
!3047 = distinct !DISubprogram(name: "get_asm_expr_operands", scope: !3, file: !3, line: 776, type: !2175, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3061, !3064, !3068, !3071}
!3049 = !DILocalVariable(name: "stmt", arg: 1, scope: !3047, file: !3, line: 776, type: !639)
!3050 = !DILocalVariable(name: "i", scope: !3047, file: !3, line: 778, type: !784)
!3051 = !DILocalVariable(name: "noutputs", scope: !3047, file: !3, line: 778, type: !784)
!3052 = !DILocalVariable(name: "oconstraints", scope: !3047, file: !3, line: 779, type: !1522)
!3053 = !DILocalVariable(name: "constraint", scope: !3047, file: !3, line: 780, type: !342)
!3054 = !DILocalVariable(name: "allows_mem", scope: !3047, file: !3, line: 781, type: !336)
!3055 = !DILocalVariable(name: "allows_reg", scope: !3047, file: !3, line: 781, type: !336)
!3056 = !DILocalVariable(name: "is_inout", scope: !3047, file: !3, line: 781, type: !336)
!3057 = !DILocalVariable(name: "link", scope: !3058, file: !3, line: 789, type: !344)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 788, column: 5)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 787, column: 3)
!3060 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 787, column: 3)
!3061 = !DILocalVariable(name: "t", scope: !3062, file: !3, line: 802, type: !344)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 801, column: 2)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 800, column: 11)
!3064 = !DILocalVariable(name: "link", scope: !3065, file: !3, line: 813, type: !344)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 812, column: 5)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 811, column: 3)
!3067 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 811, column: 3)
!3068 = !DILocalVariable(name: "t", scope: !3069, file: !3, line: 822, type: !344)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 821, column: 2)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 820, column: 11)
!3071 = !DILocalVariable(name: "link", scope: !3072, file: !3, line: 833, type: !344)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 832, column: 5)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 831, column: 3)
!3074 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 831, column: 3)
!3075 = !DILocation(line: 0, scope: !3047)
!3076 = !DILocation(line: 780, column: 3, scope: !3047)
!3077 = !DILocation(line: 781, column: 3, scope: !3047)
!3078 = !DILocation(line: 783, column: 14, scope: !3047)
!3079 = !DILocation(line: 784, column: 34, scope: !3047)
!3080 = !DILocation(line: 787, column: 8, scope: !3060)
!3081 = !DILocation(line: 0, scope: !3060)
!3082 = !DILocation(line: 787, column: 19, scope: !3059)
!3083 = !DILocation(line: 787, column: 17, scope: !3059)
!3084 = !DILocation(line: 787, column: 3, scope: !3060)
!3085 = !DILocation(line: 811, column: 3, scope: !3067)
!3086 = !DILocation(line: 789, column: 47, scope: !3058)
!3087 = !DILocation(line: 789, column: 19, scope: !3058)
!3088 = !DILocation(line: 0, scope: !3058)
!3089 = !DILocation(line: 790, column: 20, scope: !3058)
!3090 = !DILocation(line: 790, column: 18, scope: !3058)
!3091 = !DILocation(line: 791, column: 25, scope: !3058)
!3092 = !DILocation(line: 791, column: 7, scope: !3058)
!3093 = !DILocation(line: 791, column: 23, scope: !3058)
!3094 = !DILocation(line: 792, column: 7, scope: !3058)
!3095 = !DILocation(line: 796, column: 7, scope: !3058)
!3096 = !DILocation(line: 800, column: 12, scope: !3063)
!3097 = !DILocation(line: 800, column: 23, scope: !3063)
!3098 = !DILocation(line: 800, column: 26, scope: !3063)
!3099 = !DILocation(line: 800, column: 11, scope: !3058)
!3100 = !DILocation(line: 802, column: 31, scope: !3062)
!3101 = !DILocation(line: 802, column: 13, scope: !3062)
!3102 = !DILocation(line: 0, scope: !3062)
!3103 = !DILocation(line: 803, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 803, column: 8)
!3105 = !DILocation(line: 803, column: 10, scope: !3104)
!3106 = !DILocation(line: 803, column: 13, scope: !3104)
!3107 = !DILocation(line: 803, column: 8, scope: !3062)
!3108 = !DILocation(line: 804, column: 6, scope: !3104)
!3109 = !DILocation(line: 807, column: 33, scope: !3058)
!3110 = !DILocation(line: 807, column: 7, scope: !3058)
!3111 = !DILocation(line: 787, column: 48, scope: !3059)
!3112 = !DILocation(line: 787, column: 3, scope: !3059)
!3113 = distinct !{!3113, !3084, !3114}
!3114 = !DILocation(line: 808, column: 5, scope: !3060)
!3115 = !DILocation(line: 0, scope: !3067)
!3116 = !DILocation(line: 811, column: 19, scope: !3066)
!3117 = !DILocation(line: 811, column: 17, scope: !3066)
!3118 = !DILocation(line: 831, column: 3, scope: !3074)
!3119 = !DILocation(line: 813, column: 46, scope: !3065)
!3120 = !DILocation(line: 813, column: 19, scope: !3065)
!3121 = !DILocation(line: 0, scope: !3065)
!3122 = !DILocation(line: 814, column: 20, scope: !3065)
!3123 = !DILocation(line: 814, column: 18, scope: !3065)
!3124 = !DILocation(line: 815, column: 7, scope: !3065)
!3125 = !DILocation(line: 820, column: 12, scope: !3070)
!3126 = !DILocation(line: 820, column: 23, scope: !3070)
!3127 = !DILocation(line: 820, column: 26, scope: !3070)
!3128 = !DILocation(line: 820, column: 11, scope: !3065)
!3129 = !DILocation(line: 822, column: 31, scope: !3069)
!3130 = !DILocation(line: 822, column: 13, scope: !3069)
!3131 = !DILocation(line: 0, scope: !3069)
!3132 = !DILocation(line: 823, column: 8, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 823, column: 8)
!3134 = !DILocation(line: 823, column: 10, scope: !3133)
!3135 = !DILocation(line: 823, column: 13, scope: !3133)
!3136 = !DILocation(line: 823, column: 8, scope: !3069)
!3137 = !DILocation(line: 824, column: 6, scope: !3133)
!3138 = !DILocation(line: 827, column: 33, scope: !3065)
!3139 = !DILocation(line: 827, column: 7, scope: !3065)
!3140 = !DILocation(line: 811, column: 47, scope: !3066)
!3141 = !DILocation(line: 811, column: 3, scope: !3066)
!3142 = distinct !{!3142, !3085, !3143}
!3143 = !DILocation(line: 828, column: 5, scope: !3067)
!3144 = !DILocation(line: 0, scope: !3074)
!3145 = !DILocation(line: 831, column: 19, scope: !3073)
!3146 = !DILocation(line: 831, column: 17, scope: !3073)
!3147 = !DILocation(line: 833, column: 48, scope: !3072)
!3148 = !DILocation(line: 833, column: 19, scope: !3072)
!3149 = !DILocation(line: 0, scope: !3072)
!3150 = !DILocation(line: 834, column: 19, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 834, column: 11)
!3152 = !DILocation(line: 834, column: 11, scope: !3151)
!3153 = !DILocation(line: 834, column: 70, scope: !3151)
!3154 = !DILocation(line: 834, column: 11, scope: !3072)
!3155 = !DILocation(line: 836, column: 4, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 835, column: 2)
!3157 = !DILocation(line: 837, column: 4, scope: !3156)
!3158 = !DILocation(line: 831, column: 49, scope: !3073)
!3159 = !DILocation(line: 831, column: 3, scope: !3073)
!3160 = distinct !{!3160, !3118, !3161}
!3161 = !DILocation(line: 839, column: 5, scope: !3074)
!3162 = !DILocation(line: 840, column: 1, scope: !3047)
!3163 = distinct !DISubprogram(name: "is_gimple_debug", scope: !250, file: !250, line: 3249, type: !2309, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3164)
!3164 = !{!3165}
!3165 = !DILocalVariable(name: "gs", arg: 1, scope: !3163, file: !250, line: 3249, type: !2245)
!3166 = !DILocation(line: 0, scope: !3163)
!3167 = !DILocation(line: 3251, column: 10, scope: !3163)
!3168 = !DILocation(line: 3251, column: 27, scope: !3163)
!3169 = !DILocation(line: 3251, column: 3, scope: !3163)
!3170 = distinct !DISubprogram(name: "gimple_debug_bind_p", scope: !250, file: !250, line: 3257, type: !2309, scopeLine: 3258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3171 = !{!3172}
!3172 = !DILocalVariable(name: "s", arg: 1, scope: !3170, file: !250, line: 3257, type: !2245)
!3173 = !DILocation(line: 0, scope: !3170)
!3174 = !DILocation(line: 3259, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3170, file: !250, line: 3259, column: 7)
!3176 = !DILocation(line: 3259, column: 7, scope: !3170)
!3177 = !DILocation(line: 3260, column: 22, scope: !3175)
!3178 = !DILocation(line: 3260, column: 30, scope: !3175)
!3179 = !DILocation(line: 3260, column: 12, scope: !3175)
!3180 = !DILocation(line: 3260, column: 5, scope: !3175)
!3181 = !DILocation(line: 3263, column: 1, scope: !3170)
!3182 = distinct !DISubprogram(name: "gimple_debug_bind_has_value_p", scope: !250, file: !250, line: 3349, type: !3183, scopeLine: 3350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!336, !639}
!3185 = !{!3186}
!3186 = !DILocalVariable(name: "dbg", arg: 1, scope: !3182, file: !250, line: 3349, type: !639)
!3187 = !DILocation(line: 0, scope: !3182)
!3188 = !DILocation(line: 3355, column: 10, scope: !3182)
!3189 = !DILocation(line: 3355, column: 29, scope: !3182)
!3190 = !DILocation(line: 3355, column: 3, scope: !3182)
!3191 = distinct !DISubprogram(name: "get_expr_operands", scope: !3, file: !3, line: 848, type: !3192, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !639, !673, !337}
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3206, !3207, !3208}
!3195 = !DILocalVariable(name: "stmt", arg: 1, scope: !3191, file: !3, line: 848, type: !639)
!3196 = !DILocalVariable(name: "expr_p", arg: 2, scope: !3191, file: !3, line: 848, type: !673)
!3197 = !DILocalVariable(name: "flags", arg: 3, scope: !3191, file: !3, line: 848, type: !337)
!3198 = !DILocalVariable(name: "code", scope: !3191, file: !3, line: 850, type: !5)
!3199 = !DILocalVariable(name: "codeclass", scope: !3191, file: !3, line: 851, type: !314)
!3200 = !DILocalVariable(name: "expr", scope: !3191, file: !3, line: 852, type: !344)
!3201 = !DILocalVariable(name: "uflags", scope: !3191, file: !3, line: 853, type: !337)
!3202 = !DILocalVariable(name: "ce", scope: !3203, file: !3, line: 960, type: !3205)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 957, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 865, column: 5)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!3206 = !DILocalVariable(name: "idx", scope: !3203, file: !3, line: 961, type: !398)
!3207 = !DILabel(scope: !3204, name: "do_unary", file: !3, line: 978)
!3208 = !DILabel(scope: !3204, name: "do_binary", file: !3, line: 988)
!3209 = !DILocation(line: 0, scope: !3191)
!3210 = !DILocation(line: 852, column: 15, scope: !3191)
!3211 = !DILocation(line: 855, column: 12, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 855, column: 7)
!3213 = !DILocation(line: 855, column: 7, scope: !3191)
!3214 = !DILocation(line: 858, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 858, column: 7)
!3216 = !DILocation(line: 858, column: 7, scope: !3191)
!3217 = !DILocation(line: 861, column: 10, scope: !3191)
!3218 = !DILocation(line: 864, column: 3, scope: !3191)
!3219 = !DILocation(line: 871, column: 12, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 871, column: 11)
!3221 = !DILocation(line: 871, column: 11, scope: !3204)
!3222 = !DILocation(line: 872, column: 22, scope: !3220)
!3223 = !DILocation(line: 872, column: 2, scope: !3220)
!3224 = !DILocation(line: 876, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 876, column: 11)
!3226 = !DILocation(line: 876, column: 11, scope: !3204)
!3227 = !DILocation(line: 884, column: 13, scope: !3204)
!3228 = !DILocation(line: 885, column: 33, scope: !3204)
!3229 = !DILocation(line: 885, column: 7, scope: !3204)
!3230 = !DILocation(line: 886, column: 7, scope: !3204)
!3231 = !DILocation(line: 889, column: 6, scope: !3204)
!3232 = !DILocation(line: 890, column: 6, scope: !3204)
!3233 = !DILocation(line: 895, column: 7, scope: !3204)
!3234 = !DILocation(line: 896, column: 7, scope: !3204)
!3235 = !DILocation(line: 899, column: 7, scope: !3204)
!3236 = !DILocation(line: 903, column: 33, scope: !3204)
!3237 = !DILocation(line: 903, column: 7, scope: !3204)
!3238 = !DILocation(line: 908, column: 7, scope: !3204)
!3239 = !DILocation(line: 909, column: 7, scope: !3204)
!3240 = !DILocation(line: 912, column: 7, scope: !3204)
!3241 = !DILocation(line: 913, column: 7, scope: !3204)
!3242 = !DILocation(line: 921, column: 6, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 921, column: 6)
!3244 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 920, column: 7)
!3245 = !DILocation(line: 921, column: 6, scope: !3244)
!3246 = !DILocation(line: 922, column: 4, scope: !3243)
!3247 = !DILocation(line: 924, column: 28, scope: !3244)
!3248 = !DILocation(line: 924, column: 2, scope: !3244)
!3249 = !DILocation(line: 926, column: 6, scope: !3244)
!3250 = !DILocation(line: 928, column: 10, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 928, column: 10)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 927, column: 4)
!3253 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 926, column: 6)
!3254 = !DILocation(line: 928, column: 10, scope: !3252)
!3255 = !DILocation(line: 929, column: 8, scope: !3251)
!3256 = !DILocation(line: 930, column: 32, scope: !3252)
!3257 = !DILocation(line: 930, column: 6, scope: !3252)
!3258 = !DILocation(line: 931, column: 4, scope: !3252)
!3259 = !DILocation(line: 934, column: 39, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 933, column: 4)
!3261 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 932, column: 11)
!3262 = !DILocation(line: 934, column: 13, scope: !3260)
!3263 = !DILocation(line: 935, column: 39, scope: !3260)
!3264 = !DILocation(line: 935, column: 13, scope: !3260)
!3265 = !DILocation(line: 936, column: 39, scope: !3260)
!3266 = !DILocation(line: 936, column: 13, scope: !3260)
!3267 = !DILocation(line: 937, column: 4, scope: !3260)
!3268 = !DILocation(line: 945, column: 33, scope: !3204)
!3269 = !DILocation(line: 945, column: 7, scope: !3204)
!3270 = !DILocation(line: 946, column: 7, scope: !3204)
!3271 = !DILocation(line: 947, column: 7, scope: !3204)
!3272 = !DILocation(line: 951, column: 33, scope: !3204)
!3273 = !DILocation(line: 951, column: 7, scope: !3204)
!3274 = !DILocation(line: 952, column: 33, scope: !3204)
!3275 = !DILocation(line: 952, column: 7, scope: !3204)
!3276 = !DILocation(line: 953, column: 33, scope: !3204)
!3277 = !DILocation(line: 953, column: 7, scope: !3204)
!3278 = !DILocation(line: 954, column: 7, scope: !3204)
!3279 = !DILocation(line: 960, column: 2, scope: !3203)
!3280 = !DILocation(line: 0, scope: !3203)
!3281 = !DILocation(line: 0, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 963, column: 2)
!3283 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 963, column: 2)
!3284 = !DILocation(line: 963, column: 7, scope: !3283)
!3285 = !DILocation(line: 0, scope: !3283)
!3286 = !DILocation(line: 964, column: 7, scope: !3282)
!3287 = !DILocation(line: 963, column: 2, scope: !3283)
!3288 = !DILocation(line: 966, column: 30, scope: !3282)
!3289 = !DILocation(line: 966, column: 34, scope: !3282)
!3290 = !DILocation(line: 966, column: 4, scope: !3282)
!3291 = !DILocation(line: 965, column: 10, scope: !3282)
!3292 = !DILocation(line: 963, column: 2, scope: !3282)
!3293 = distinct !{!3293, !3287, !3294}
!3294 = !DILocation(line: 966, column: 47, scope: !3283)
!3295 = !DILocation(line: 969, column: 7, scope: !3204)
!3296 = !DILocation(line: 972, column: 11, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 972, column: 11)
!3298 = !DILocation(line: 972, column: 11, scope: !3204)
!3299 = !DILocation(line: 973, column: 2, scope: !3297)
!3300 = !DILocation(line: 978, column: 5, scope: !3204)
!3301 = !DILocation(line: 979, column: 33, scope: !3204)
!3302 = !DILocation(line: 979, column: 7, scope: !3204)
!3303 = !DILocation(line: 980, column: 7, scope: !3204)
!3304 = !DILocation(line: 988, column: 5, scope: !3204)
!3305 = !DILocation(line: 990, column: 28, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 989, column: 7)
!3307 = !DILocation(line: 990, column: 2, scope: !3306)
!3308 = !DILocation(line: 991, column: 28, scope: !3306)
!3309 = !DILocation(line: 991, column: 2, scope: !3306)
!3310 = !DILocation(line: 992, column: 2, scope: !3306)
!3311 = !DILocation(line: 998, column: 28, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 997, column: 7)
!3313 = !DILocation(line: 998, column: 2, scope: !3312)
!3314 = !DILocation(line: 999, column: 35, scope: !3312)
!3315 = !DILocation(line: 999, column: 9, scope: !3312)
!3316 = !DILocation(line: 1000, column: 35, scope: !3312)
!3317 = !DILocation(line: 1000, column: 9, scope: !3312)
!3318 = !DILocation(line: 1001, column: 9, scope: !3312)
!3319 = !DILocation(line: 862, column: 15, scope: !3191)
!3320 = !DILocation(line: 1012, column: 11, scope: !3204)
!3321 = !DILocation(line: 1026, column: 3, scope: !3191)
!3322 = !DILocation(line: 1027, column: 1, scope: !3191)
!3323 = distinct !DISubprogram(name: "gimple_debug_bind_get_value_ptr", scope: !250, file: !250, line: 3294, type: !3324, scopeLine: 3295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!673, !639}
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "dbg", arg: 1, scope: !3323, file: !250, line: 3294, type: !639)
!3328 = !DILocation(line: 0, scope: !3323)
!3329 = !DILocation(line: 3300, column: 10, scope: !3323)
!3330 = !DILocation(line: 3300, column: 3, scope: !3323)
!3331 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !250, file: !250, line: 1647, type: !3332, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!673, !2245, !7}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "gs", arg: 1, scope: !3331, file: !250, line: 1647, type: !2245)
!3336 = !DILocalVariable(name: "i", arg: 2, scope: !3331, file: !250, line: 1647, type: !7)
!3337 = !DILocation(line: 0, scope: !3331)
!3338 = !DILocation(line: 1649, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3331, file: !250, line: 1649, column: 7)
!3340 = !DILocation(line: 1649, column: 7, scope: !3331)
!3341 = !DILocation(line: 1654, column: 14, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3339, file: !250, line: 1650, column: 5)
!3343 = !DILocation(line: 1654, column: 50, scope: !3342)
!3344 = !DILocation(line: 1654, column: 7, scope: !3342)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocation(line: 1658, column: 1, scope: !3331)
!3347 = distinct !DISubprogram(name: "gimple_num_ops", scope: !250, file: !250, line: 1596, type: !3348, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!7, !2245}
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "gs", arg: 1, scope: !3347, file: !250, line: 1596, type: !2245)
!3352 = !DILocation(line: 0, scope: !3347)
!3353 = !DILocation(line: 1598, column: 21, scope: !3347)
!3354 = !DILocation(line: 1598, column: 3, scope: !3347)
!3355 = distinct !DISubprogram(name: "maybe_add_call_vops", scope: !3, file: !3, line: 753, type: !2175, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3356 = !{!3357, !3358}
!3357 = !DILocalVariable(name: "stmt", arg: 1, scope: !3355, file: !3, line: 753, type: !639)
!3358 = !DILocalVariable(name: "call_flags", scope: !3355, file: !3, line: 755, type: !337)
!3359 = !DILocation(line: 0, scope: !3355)
!3360 = !DILocation(line: 755, column: 20, scope: !3355)
!3361 = !DILocation(line: 760, column: 20, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 760, column: 7)
!3363 = !DILocation(line: 760, column: 7, scope: !3355)
!3364 = !DILocation(line: 765, column: 24, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 765, column: 11)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 761, column: 5)
!3367 = !DILocation(line: 765, column: 11, scope: !3366)
!3368 = !DILocation(line: 766, column: 2, scope: !3365)
!3369 = !DILocation(line: 767, column: 29, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 767, column: 16)
!3371 = !DILocation(line: 767, column: 16, scope: !3365)
!3372 = !DILocation(line: 768, column: 2, scope: !3370)
!3373 = !DILocation(line: 770, column: 1, scope: !3355)
!3374 = distinct !DISubprogram(name: "gimple_asm_noutputs", scope: !250, file: !250, line: 2591, type: !3348, scopeLine: 2592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3375)
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "gs", arg: 1, scope: !3374, file: !250, line: 2591, type: !2245)
!3377 = !DILocation(line: 0, scope: !3374)
!3378 = !DILocation(line: 2594, column: 14, scope: !3374)
!3379 = !DILocation(line: 2594, column: 25, scope: !3374)
!3380 = !DILocation(line: 2594, column: 10, scope: !3374)
!3381 = !DILocation(line: 2594, column: 3, scope: !3374)
!3382 = distinct !DISubprogram(name: "gimple_asm_output_op", scope: !250, file: !250, line: 2652, type: !3383, scopeLine: 2653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!344, !2245, !7}
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "gs", arg: 1, scope: !3382, file: !250, line: 2652, type: !2245)
!3387 = !DILocalVariable(name: "index", arg: 2, scope: !3382, file: !250, line: 2652, type: !7)
!3388 = !DILocation(line: 0, scope: !3382)
!3389 = !DILocation(line: 2655, column: 3, scope: !3382)
!3390 = !DILocation(line: 2656, column: 48, scope: !3382)
!3391 = !DILocation(line: 2656, column: 33, scope: !3382)
!3392 = !DILocation(line: 2656, column: 31, scope: !3382)
!3393 = !DILocation(line: 2656, column: 10, scope: !3382)
!3394 = !DILocation(line: 2656, column: 3, scope: !3382)
!3395 = distinct !DISubprogram(name: "mark_address_taken", scope: !3, file: !3, line: 684, type: !2776, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3396)
!3396 = !{!3397, !3398}
!3397 = !DILocalVariable(name: "ref", arg: 1, scope: !3395, file: !3, line: 684, type: !344)
!3398 = !DILocalVariable(name: "var", scope: !3395, file: !3, line: 686, type: !344)
!3399 = !DILocation(line: 0, scope: !3395)
!3400 = !DILocation(line: 693, column: 9, scope: !3395)
!3401 = !DILocation(line: 694, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 694, column: 7)
!3403 = !DILocation(line: 694, column: 11, scope: !3402)
!3404 = !DILocation(line: 694, column: 14, scope: !3402)
!3405 = !DILocation(line: 694, column: 7, scope: !3395)
!3406 = !DILocation(line: 695, column: 28, scope: !3402)
!3407 = !DILocation(line: 695, column: 5, scope: !3402)
!3408 = !DILocation(line: 696, column: 1, scope: !3395)
!3409 = distinct !DISubprogram(name: "gimple_asm_ninputs", scope: !250, file: !250, line: 2581, type: !3348, scopeLine: 2582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "gs", arg: 1, scope: !3409, file: !250, line: 2581, type: !2245)
!3412 = !DILocation(line: 0, scope: !3409)
!3413 = !DILocation(line: 2584, column: 25, scope: !3409)
!3414 = !DILocation(line: 2584, column: 10, scope: !3409)
!3415 = !DILocation(line: 2584, column: 3, scope: !3409)
!3416 = distinct !DISubprogram(name: "gimple_asm_input_op", scope: !250, file: !250, line: 2619, type: !3383, scopeLine: 2620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3417 = !{!3418, !3419}
!3418 = !DILocalVariable(name: "gs", arg: 1, scope: !3416, file: !250, line: 2619, type: !2245)
!3419 = !DILocalVariable(name: "index", arg: 2, scope: !3416, file: !250, line: 2619, type: !7)
!3420 = !DILocation(line: 0, scope: !3416)
!3421 = !DILocation(line: 2622, column: 3, scope: !3416)
!3422 = !DILocation(line: 2623, column: 10, scope: !3416)
!3423 = !DILocation(line: 2623, column: 3, scope: !3416)
!3424 = distinct !DISubprogram(name: "gimple_asm_nclobbers", scope: !250, file: !250, line: 2601, type: !3348, scopeLine: 2602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3425)
!3425 = !{!3426}
!3426 = !DILocalVariable(name: "gs", arg: 1, scope: !3424, file: !250, line: 2601, type: !2245)
!3427 = !DILocation(line: 0, scope: !3424)
!3428 = !DILocation(line: 2604, column: 14, scope: !3424)
!3429 = !DILocation(line: 2604, column: 25, scope: !3424)
!3430 = !DILocation(line: 2604, column: 10, scope: !3424)
!3431 = !DILocation(line: 2604, column: 3, scope: !3424)
!3432 = distinct !DISubprogram(name: "gimple_asm_clobber_op", scope: !250, file: !250, line: 2685, type: !3383, scopeLine: 2686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3433)
!3433 = !{!3434, !3435}
!3434 = !DILocalVariable(name: "gs", arg: 1, scope: !3432, file: !250, line: 2685, type: !2245)
!3435 = !DILocalVariable(name: "index", arg: 2, scope: !3432, file: !250, line: 2685, type: !7)
!3436 = !DILocation(line: 0, scope: !3432)
!3437 = !DILocation(line: 2688, column: 3, scope: !3432)
!3438 = !DILocation(line: 2689, column: 48, scope: !3432)
!3439 = !DILocation(line: 2689, column: 33, scope: !3432)
!3440 = !DILocation(line: 2689, column: 31, scope: !3432)
!3441 = !DILocation(line: 2689, column: 68, scope: !3432)
!3442 = !DILocation(line: 2689, column: 53, scope: !3432)
!3443 = !DILocation(line: 2689, column: 51, scope: !3432)
!3444 = !DILocation(line: 2689, column: 10, scope: !3432)
!3445 = !DILocation(line: 2689, column: 3, scope: !3432)
!3446 = distinct !DISubprogram(name: "add_virtual_operand", scope: !3, file: !3, line: 630, type: !3447, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !639, !337}
!3449 = !{!3450, !3451}
!3450 = !DILocalVariable(name: "stmt", arg: 1, scope: !3446, file: !3, line: 630, type: !639)
!3451 = !DILocalVariable(name: "flags", arg: 2, scope: !3446, file: !3, line: 630, type: !337)
!3452 = !DILocation(line: 0, scope: !3446)
!3453 = !DILocation(line: 635, column: 13, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 635, column: 7)
!3455 = !DILocation(line: 635, column: 7, scope: !3446)
!3456 = !DILocation(line: 638, column: 3, scope: !3446)
!3457 = !DILocation(line: 640, column: 13, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 640, column: 7)
!3459 = !DILocation(line: 0, scope: !3458)
!3460 = !DILocation(line: 640, column: 7, scope: !3446)
!3461 = !DILocation(line: 641, column: 5, scope: !3458)
!3462 = !DILocation(line: 643, column: 5, scope: !3458)
!3463 = !DILocation(line: 644, column: 1, scope: !3446)
!3464 = distinct !DISubprogram(name: "gimple_op", scope: !250, file: !250, line: 1631, type: !3383, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3465)
!3465 = !{!3466, !3467}
!3466 = !DILocalVariable(name: "gs", arg: 1, scope: !3464, file: !250, line: 1631, type: !2245)
!3467 = !DILocalVariable(name: "i", arg: 2, scope: !3464, file: !250, line: 1631, type: !7)
!3468 = !DILocation(line: 0, scope: !3464)
!3469 = !DILocation(line: 1633, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3464, file: !250, line: 1633, column: 7)
!3471 = !DILocation(line: 1633, column: 7, scope: !3464)
!3472 = !DILocation(line: 1638, column: 14, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !250, line: 1634, column: 5)
!3474 = !DILocation(line: 1638, column: 7, scope: !3473)
!3475 = !DILocation(line: 0, scope: !3470)
!3476 = !DILocation(line: 1642, column: 1, scope: !3464)
!3477 = distinct !DISubprogram(name: "gimple_ops", scope: !250, file: !250, line: 1614, type: !3324, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3478)
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "gs", arg: 1, scope: !3477, file: !250, line: 1614, type: !639)
!3480 = !DILocalVariable(name: "off", scope: !3477, file: !250, line: 1616, type: !784)
!3481 = !DILocation(line: 0, scope: !3477)
!3482 = !DILocation(line: 1621, column: 28, scope: !3477)
!3483 = !DILocation(line: 1621, column: 9, scope: !3477)
!3484 = !DILocation(line: 1622, column: 3, scope: !3477)
!3485 = !DILocation(line: 1624, column: 20, scope: !3477)
!3486 = !DILocation(line: 1624, column: 32, scope: !3477)
!3487 = !DILocation(line: 1624, column: 10, scope: !3477)
!3488 = !DILocation(line: 1624, column: 3, scope: !3477)
!3489 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !250, file: !250, line: 1073, type: !3490, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!288, !639}
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "gs", arg: 1, scope: !3489, file: !250, line: 1073, type: !639)
!3494 = !DILocation(line: 0, scope: !3489)
!3495 = !DILocation(line: 1075, column: 24, scope: !3489)
!3496 = !DILocation(line: 1075, column: 10, scope: !3489)
!3497 = !DILocation(line: 1075, column: 3, scope: !3489)
!3498 = distinct !DISubprogram(name: "gss_for_code", scope: !250, file: !250, line: 1061, type: !3499, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!288, !249}
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "code", arg: 1, scope: !3498, file: !250, line: 1061, type: !249)
!3503 = !DILocation(line: 0, scope: !3498)
!3504 = !DILocation(line: 1066, column: 10, scope: !3498)
!3505 = !DILocation(line: 1066, column: 3, scope: !3498)
!3506 = distinct !DISubprogram(name: "append_vdef", scope: !3, file: !3, line: 598, type: !2776, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3507)
!3507 = !{!3508}
!3508 = !DILocalVariable(name: "var", arg: 1, scope: !3506, file: !3, line: 598, type: !344)
!3509 = !DILocation(line: 0, scope: !3506)
!3510 = !DILocation(line: 600, column: 8, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 600, column: 7)
!3512 = !DILocation(line: 600, column: 7, scope: !3506)
!3513 = !DILocation(line: 603, column: 3, scope: !3506)
!3514 = !DILocation(line: 608, column: 14, scope: !3506)
!3515 = !DILocation(line: 609, column: 14, scope: !3506)
!3516 = !DILocation(line: 610, column: 1, scope: !3506)
!3517 = distinct !DISubprogram(name: "gimple_vop", scope: !2017, file: !2017, line: 49, type: !3518, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!344, !2021}
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "fun", arg: 1, scope: !3517, file: !2017, line: 49, type: !2021)
!3522 = !DILocation(line: 0, scope: !3517)
!3523 = !DILocation(line: 51, column: 3, scope: !3517)
!3524 = !DILocation(line: 52, column: 15, scope: !3517)
!3525 = !DILocation(line: 52, column: 26, scope: !3517)
!3526 = !DILocation(line: 52, column: 3, scope: !3517)
!3527 = distinct !DISubprogram(name: "append_vuse", scope: !3, file: !3, line: 616, type: !2776, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "var", arg: 1, scope: !3527, file: !3, line: 616, type: !344)
!3530 = !DILocation(line: 0, scope: !3527)
!3531 = !DILocation(line: 618, column: 8, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 618, column: 7)
!3533 = !DILocation(line: 618, column: 7, scope: !3527)
!3534 = !DILocation(line: 621, column: 3, scope: !3527)
!3535 = !DILocation(line: 624, column: 14, scope: !3527)
!3536 = !DILocation(line: 625, column: 1, scope: !3527)
!3537 = distinct !DISubprogram(name: "add_stmt_operand", scope: !3, file: !3, line: 653, type: !3538, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !673, !639, !337}
!3540 = !{!3541, !3542, !3543, !3544, !3545}
!3541 = !DILocalVariable(name: "var_p", arg: 1, scope: !3537, file: !3, line: 653, type: !673)
!3542 = !DILocalVariable(name: "stmt", arg: 2, scope: !3537, file: !3, line: 653, type: !639)
!3543 = !DILocalVariable(name: "flags", arg: 3, scope: !3537, file: !3, line: 653, type: !337)
!3544 = !DILocalVariable(name: "var", scope: !3537, file: !3, line: 655, type: !344)
!3545 = !DILocalVariable(name: "sym", scope: !3537, file: !3, line: 655, type: !344)
!3546 = !DILocation(line: 0, scope: !3537)
!3547 = !DILocation(line: 657, column: 3, scope: !3537)
!3548 = !DILocation(line: 659, column: 9, scope: !3537)
!3549 = !DILocation(line: 660, column: 10, scope: !3537)
!3550 = !DILocation(line: 660, column: 26, scope: !3537)
!3551 = !DILocation(line: 660, column: 40, scope: !3537)
!3552 = !DILocation(line: 0, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 663, column: 7)
!3554 = !DILocation(line: 663, column: 7, scope: !3553)
!3555 = !DILocation(line: 663, column: 7, scope: !3537)
!3556 = !DILocation(line: 664, column: 5, scope: !3553)
!3557 = !DILocation(line: 666, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 666, column: 7)
!3559 = !DILocation(line: 666, column: 7, scope: !3537)
!3560 = !DILocation(line: 669, column: 17, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 669, column: 11)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 667, column: 5)
!3563 = !DILocation(line: 669, column: 11, scope: !3562)
!3564 = !DILocation(line: 670, column: 2, scope: !3561)
!3565 = !DILocation(line: 672, column: 2, scope: !3561)
!3566 = !DILocation(line: 675, column: 5, scope: !3558)
!3567 = !DILocation(line: 676, column: 1, scope: !3537)
!3568 = distinct !DISubprogram(name: "get_indirect_ref_operands", scope: !3, file: !3, line: 712, type: !3569, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !639, !344, !337, !336}
!3571 = !{!3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "stmt", arg: 1, scope: !3568, file: !3, line: 712, type: !639)
!3573 = !DILocalVariable(name: "expr", arg: 2, scope: !3568, file: !3, line: 712, type: !344)
!3574 = !DILocalVariable(name: "flags", arg: 3, scope: !3568, file: !3, line: 712, type: !337)
!3575 = !DILocalVariable(name: "recurse_on_base", arg: 4, scope: !3568, file: !3, line: 713, type: !336)
!3576 = !DILocalVariable(name: "pptr", scope: !3568, file: !3, line: 715, type: !673)
!3577 = !DILocation(line: 0, scope: !3568)
!3578 = !DILocation(line: 715, column: 17, scope: !3568)
!3579 = !DILocation(line: 717, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 717, column: 7)
!3581 = !DILocation(line: 717, column: 7, scope: !3568)
!3582 = !DILocation(line: 718, column: 5, scope: !3580)
!3583 = !DILocation(line: 721, column: 3, scope: !3568)
!3584 = !DILocation(line: 724, column: 7, scope: !3568)
!3585 = !DILocation(line: 726, column: 27, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 724, column: 7)
!3587 = !DILocation(line: 725, column: 5, scope: !3586)
!3588 = !DILocation(line: 727, column: 1, scope: !3568)
!3589 = distinct !DISubprogram(name: "get_tmr_operands", scope: !3, file: !3, line: 733, type: !3590, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !639, !344, !337}
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "stmt", arg: 1, scope: !3589, file: !3, line: 733, type: !639)
!3594 = !DILocalVariable(name: "expr", arg: 2, scope: !3589, file: !3, line: 733, type: !344)
!3595 = !DILocalVariable(name: "flags", arg: 3, scope: !3589, file: !3, line: 733, type: !337)
!3596 = !DILocation(line: 0, scope: !3589)
!3597 = !DILocation(line: 735, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 735, column: 7)
!3599 = !DILocation(line: 735, column: 7, scope: !3589)
!3600 = !DILocation(line: 736, column: 5, scope: !3598)
!3601 = !DILocation(line: 739, column: 29, scope: !3589)
!3602 = !DILocation(line: 739, column: 63, scope: !3589)
!3603 = !DILocation(line: 739, column: 3, scope: !3589)
!3604 = !DILocation(line: 740, column: 29, scope: !3589)
!3605 = !DILocation(line: 740, column: 3, scope: !3589)
!3606 = !DILocation(line: 742, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 742, column: 7)
!3608 = !DILocation(line: 742, column: 7, scope: !3589)
!3609 = !DILocation(line: 743, column: 5, scope: !3607)
!3610 = !DILocation(line: 745, column: 3, scope: !3589)
!3611 = !DILocation(line: 746, column: 1, scope: !3589)
!3612 = distinct !DISubprogram(name: "VEC_constructor_elt_base_iterate", scope: !6, file: !6, line: 1537, type: !3613, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3617)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!337, !3615, !7, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3617 = !{!3618, !3619, !3620}
!3618 = !DILocalVariable(name: "vec_", arg: 1, scope: !3612, file: !6, line: 1537, type: !3615)
!3619 = !DILocalVariable(name: "ix_", arg: 2, scope: !3612, file: !6, line: 1537, type: !7)
!3620 = !DILocalVariable(name: "ptr", arg: 3, scope: !3612, file: !6, line: 1537, type: !3616)
!3621 = !DILocation(line: 0, scope: !3612)
!3622 = !DILocation(line: 1537, column: 1, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3612, file: !6, line: 1537, column: 1)
!3624 = !DILocation(line: 1537, column: 1, scope: !3612)
!3625 = !DILocation(line: 1537, column: 1, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !6, line: 1537, column: 1)
!3627 = !DILocation(line: 1537, column: 1, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3623, file: !6, line: 1537, column: 1)
!3629 = !DILocation(line: 0, scope: !3623)
!3630 = distinct !DISubprogram(name: "append_def", scope: !3, file: !3, line: 580, type: !3631, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !673}
!3633 = !{!3634}
!3634 = !DILocalVariable(name: "def_p", arg: 1, scope: !3630, file: !3, line: 580, type: !673)
!3635 = !DILocation(line: 0, scope: !3630)
!3636 = !DILocation(line: 582, column: 3, scope: !3630)
!3637 = !DILocation(line: 583, column: 1, scope: !3630)
!3638 = distinct !DISubprogram(name: "append_use", scope: !3, file: !3, line: 589, type: !3631, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3639)
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "use_p", arg: 1, scope: !3638, file: !3, line: 589, type: !673)
!3641 = !DILocation(line: 0, scope: !3638)
!3642 = !DILocation(line: 591, column: 3, scope: !3638)
!3643 = !DILocation(line: 592, column: 1, scope: !3638)
!3644 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !6, file: !6, line: 184, type: !3645, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!673, !2167, !344}
!3647 = !{!3648, !3649}
!3648 = !DILocalVariable(name: "vec_", arg: 1, scope: !3644, file: !6, line: 184, type: !2167)
!3649 = !DILocalVariable(name: "obj_", arg: 2, scope: !3644, file: !6, line: 184, type: !344)
!3650 = !DILocation(line: 0, scope: !3644)
!3651 = !DILocation(line: 184, column: 1, scope: !3644)
!3652 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !6, file: !6, line: 184, type: !3653, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!337, !2167, !337}
!3655 = !{!3656, !3657, !3658}
!3656 = !DILocalVariable(name: "vec_", arg: 1, scope: !3652, file: !6, line: 184, type: !2167)
!3657 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3652, file: !6, line: 184, type: !337)
!3658 = !DILocalVariable(name: "extend", scope: !3652, file: !6, line: 184, type: !337)
!3659 = !DILocation(line: 0, scope: !3652)
!3660 = !DILocation(line: 184, column: 1, scope: !3652)
!3661 = !DILocation(line: 184, column: 1, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3652, file: !6, line: 184, column: 1)
!3663 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !6, file: !6, line: 182, type: !3664, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3667)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!673, !3666, !344}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!3667 = !{!3668, !3669, !3670}
!3668 = !DILocalVariable(name: "vec_", arg: 1, scope: !3663, file: !6, line: 182, type: !3666)
!3669 = !DILocalVariable(name: "obj_", arg: 2, scope: !3663, file: !6, line: 182, type: !344)
!3670 = !DILocalVariable(name: "slot_", scope: !3663, file: !6, line: 182, type: !673)
!3671 = !DILocation(line: 0, scope: !3663)
!3672 = !DILocation(line: 182, column: 1, scope: !3663)
!3673 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !6, file: !6, line: 182, type: !3674, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!337, !3666, !337}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "vec_", arg: 1, scope: !3673, file: !6, line: 182, type: !3666)
!3678 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3673, file: !6, line: 182, type: !337)
!3679 = !DILocation(line: 0, scope: !3673)
!3680 = !DILocation(line: 182, column: 1, scope: !3673)
!3681 = distinct !DISubprogram(name: "finalize_ssa_defs", scope: !3, file: !3, line: 411, type: !2175, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3683 = !DILocalVariable(name: "stmt", arg: 1, scope: !3681, file: !3, line: 411, type: !639)
!3684 = !DILocalVariable(name: "new_i", scope: !3681, file: !3, line: 413, type: !7)
!3685 = !DILocalVariable(name: "new_list", scope: !3681, file: !3, line: 414, type: !669)
!3686 = !DILocalVariable(name: "old_ops", scope: !3681, file: !3, line: 415, type: !2180)
!3687 = !DILocalVariable(name: "last", scope: !3681, file: !3, line: 415, type: !2180)
!3688 = !DILocalVariable(name: "num", scope: !3681, file: !3, line: 416, type: !7)
!3689 = !DILocalVariable(name: "oldvdef", scope: !3690, file: !3, line: 424, type: !344)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 423, column: 5)
!3691 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 422, column: 7)
!3692 = !DILocation(line: 0, scope: !3681)
!3693 = !DILocation(line: 414, column: 3, scope: !3681)
!3694 = !DILocation(line: 416, column: 22, scope: !3681)
!3695 = !DILocation(line: 419, column: 3, scope: !3681)
!3696 = !DILocation(line: 422, column: 7, scope: !3691)
!3697 = !DILocation(line: 422, column: 18, scope: !3691)
!3698 = !DILocation(line: 422, column: 7, scope: !3681)
!3699 = !DILocation(line: 424, column: 22, scope: !3690)
!3700 = !DILocation(line: 0, scope: !3690)
!3701 = !DILocation(line: 425, column: 11, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 425, column: 11)
!3703 = !DILocation(line: 426, column: 4, scope: !3702)
!3704 = !DILocation(line: 426, column: 7, scope: !3702)
!3705 = !DILocation(line: 426, column: 27, scope: !3702)
!3706 = !DILocation(line: 425, column: 11, scope: !3690)
!3707 = !DILocation(line: 427, column: 12, scope: !3702)
!3708 = !DILocation(line: 427, column: 2, scope: !3702)
!3709 = !DILocation(line: 428, column: 22, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 428, column: 11)
!3711 = !DILocation(line: 428, column: 19, scope: !3710)
!3712 = !DILocation(line: 428, column: 11, scope: !3690)
!3713 = !DILocation(line: 429, column: 2, scope: !3710)
!3714 = !DILocation(line: 430, column: 7, scope: !3690)
!3715 = !DILocation(line: 431, column: 7, scope: !3690)
!3716 = !DILocation(line: 432, column: 5, scope: !3690)
!3717 = !DILocation(line: 434, column: 12, scope: !3681)
!3718 = !DILocation(line: 434, column: 17, scope: !3681)
!3719 = !DILocation(line: 437, column: 13, scope: !3681)
!3720 = !DILocation(line: 442, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 442, column: 7)
!3722 = !DILocation(line: 442, column: 18, scope: !3721)
!3723 = !DILocation(line: 443, column: 7, scope: !3721)
!3724 = !DILocation(line: 443, column: 10, scope: !3721)
!3725 = !DILocation(line: 443, column: 29, scope: !3721)
!3726 = !DILocation(line: 442, column: 7, scope: !3681)
!3727 = !DILocation(line: 445, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 445, column: 11)
!3729 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 444, column: 5)
!3730 = !DILocation(line: 445, column: 42, scope: !3728)
!3731 = !DILocation(line: 445, column: 11, scope: !3729)
!3732 = !DILocation(line: 447, column: 4, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 446, column: 2)
!3734 = !DILocation(line: 448, column: 22, scope: !3733)
!3735 = !DILocation(line: 448, column: 4, scope: !3733)
!3736 = !DILocation(line: 449, column: 2, scope: !3733)
!3737 = !DILocation(line: 450, column: 7, scope: !3729)
!3738 = !DILocation(line: 451, column: 5, scope: !3729)
!3739 = !DILocation(line: 454, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 454, column: 7)
!3741 = !DILocation(line: 455, column: 7, scope: !3740)
!3742 = !DILocation(line: 455, column: 10, scope: !3740)
!3743 = !DILocation(line: 455, column: 41, scope: !3740)
!3744 = !DILocation(line: 454, column: 7, scope: !3681)
!3745 = !DILocation(line: 456, column: 28, scope: !3740)
!3746 = !DILocation(line: 456, column: 5, scope: !3740)
!3747 = !DILocation(line: 459, column: 15, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 459, column: 7)
!3749 = !DILocation(line: 459, column: 27, scope: !3748)
!3750 = !DILocation(line: 459, column: 32, scope: !3748)
!3751 = !DILocation(line: 459, column: 47, scope: !3748)
!3752 = !DILocation(line: 459, column: 40, scope: !3748)
!3753 = !DILocation(line: 460, column: 19, scope: !3748)
!3754 = !DILocation(line: 460, column: 10, scope: !3748)
!3755 = !DILocation(line: 460, column: 54, scope: !3748)
!3756 = !DILocation(line: 460, column: 51, scope: !3748)
!3757 = !DILocation(line: 459, column: 7, scope: !3681)
!3758 = !DILocation(line: 466, column: 44, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 465, column: 5)
!3760 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 464, column: 7)
!3761 = !DILocation(line: 466, column: 23, scope: !3759)
!3762 = !DILocation(line: 466, column: 51, scope: !3759)
!3763 = !DILocation(line: 466, column: 21, scope: !3759)
!3764 = !DILocation(line: 467, column: 28, scope: !3759)
!3765 = !DILocation(line: 467, column: 7, scope: !3759)
!3766 = !DILocation(line: 467, column: 35, scope: !3759)
!3767 = !DILocation(line: 467, column: 45, scope: !3759)
!3768 = !DILocation(line: 468, column: 5, scope: !3759)
!3769 = !DILocation(line: 471, column: 3, scope: !3681)
!3770 = !DILocation(line: 471, column: 17, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 471, column: 3)
!3772 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 471, column: 3)
!3773 = !DILocation(line: 471, column: 3, scope: !3772)
!3774 = !DILocation(line: 472, column: 33, scope: !3771)
!3775 = !DILocation(line: 472, column: 24, scope: !3771)
!3776 = !DILocation(line: 472, column: 12, scope: !3771)
!3777 = !DILocation(line: 471, column: 29, scope: !3771)
!3778 = !DILocation(line: 471, column: 3, scope: !3771)
!3779 = distinct !{!3779, !3773, !3780}
!3780 = !DILocation(line: 472, column: 74, scope: !3772)
!3781 = !DILocation(line: 475, column: 38, scope: !3681)
!3782 = !DILocation(line: 475, column: 3, scope: !3681)
!3783 = !DILocation(line: 476, column: 1, scope: !3681)
!3784 = distinct !DISubprogram(name: "finalize_ssa_uses", scope: !3, file: !3, line: 483, type: !2175, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792}
!3786 = !DILocalVariable(name: "stmt", arg: 1, scope: !3784, file: !3, line: 483, type: !639)
!3787 = !DILocalVariable(name: "new_i", scope: !3784, file: !3, line: 485, type: !7)
!3788 = !DILocalVariable(name: "new_list", scope: !3784, file: !3, line: 486, type: !676)
!3789 = !DILocalVariable(name: "old_ops", scope: !3784, file: !3, line: 487, type: !2183)
!3790 = !DILocalVariable(name: "ptr", scope: !3784, file: !3, line: 487, type: !2183)
!3791 = !DILocalVariable(name: "last", scope: !3784, file: !3, line: 487, type: !2183)
!3792 = !DILocalVariable(name: "oldvuse", scope: !3793, file: !3, line: 492, type: !344)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 491, column: 5)
!3794 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 490, column: 7)
!3795 = !DILocation(line: 0, scope: !3784)
!3796 = !DILocation(line: 486, column: 3, scope: !3784)
!3797 = !DILocation(line: 490, column: 7, scope: !3794)
!3798 = !DILocation(line: 490, column: 18, scope: !3794)
!3799 = !DILocation(line: 490, column: 7, scope: !3784)
!3800 = !DILocation(line: 492, column: 22, scope: !3793)
!3801 = !DILocation(line: 0, scope: !3793)
!3802 = !DILocation(line: 493, column: 11, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 493, column: 11)
!3804 = !DILocation(line: 494, column: 4, scope: !3803)
!3805 = !DILocation(line: 494, column: 7, scope: !3803)
!3806 = !DILocation(line: 494, column: 27, scope: !3803)
!3807 = !DILocation(line: 493, column: 11, scope: !3793)
!3808 = !DILocation(line: 495, column: 12, scope: !3803)
!3809 = !DILocation(line: 495, column: 2, scope: !3803)
!3810 = !DILocation(line: 496, column: 23, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 496, column: 11)
!3812 = !DILocation(line: 496, column: 34, scope: !3811)
!3813 = !DILocation(line: 496, column: 19, scope: !3811)
!3814 = !DILocation(line: 496, column: 11, scope: !3793)
!3815 = !DILocation(line: 498, column: 2, scope: !3811)
!3816 = !DILocation(line: 499, column: 7, scope: !3793)
!3817 = !DILocation(line: 500, column: 5, scope: !3793)
!3818 = !DILocation(line: 502, column: 12, scope: !3784)
!3819 = !DILocation(line: 502, column: 17, scope: !3784)
!3820 = !DILocation(line: 505, column: 13, scope: !3784)
!3821 = !DILocation(line: 508, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 508, column: 7)
!3823 = !DILocation(line: 508, column: 18, scope: !3822)
!3824 = !DILocation(line: 509, column: 7, scope: !3822)
!3825 = !DILocation(line: 509, column: 10, scope: !3822)
!3826 = !DILocation(line: 509, column: 29, scope: !3822)
!3827 = !DILocation(line: 508, column: 7, scope: !3784)
!3828 = !DILocation(line: 510, column: 5, scope: !3822)
!3829 = !DILocation(line: 513, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 513, column: 7)
!3831 = !DILocation(line: 513, column: 7, scope: !3784)
!3832 = !DILocation(line: 515, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 515, column: 7)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 514, column: 5)
!3835 = !DILocation(line: 0, scope: !3833)
!3836 = !DILocation(line: 516, column: 18, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 515, column: 7)
!3838 = !DILocation(line: 516, column: 2, scope: !3837)
!3839 = !DILocation(line: 515, column: 43, scope: !3837)
!3840 = !DILocation(line: 515, column: 7, scope: !3837)
!3841 = distinct !{!3841, !3832, !3842}
!3842 = !DILocation(line: 516, column: 34, scope: !3833)
!3843 = !DILocation(line: 517, column: 44, scope: !3834)
!3844 = !DILocation(line: 517, column: 23, scope: !3834)
!3845 = !DILocation(line: 517, column: 51, scope: !3834)
!3846 = !DILocation(line: 517, column: 21, scope: !3834)
!3847 = !DILocation(line: 518, column: 28, scope: !3834)
!3848 = !DILocation(line: 518, column: 7, scope: !3834)
!3849 = !DILocation(line: 518, column: 35, scope: !3834)
!3850 = !DILocation(line: 518, column: 45, scope: !3834)
!3851 = !DILocation(line: 519, column: 5, scope: !3834)
!3852 = !DILocation(line: 523, column: 7, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 523, column: 7)
!3854 = !DILocation(line: 523, column: 18, scope: !3853)
!3855 = !DILocation(line: 524, column: 7, scope: !3853)
!3856 = !DILocation(line: 524, column: 10, scope: !3853)
!3857 = !DILocation(line: 524, column: 29, scope: !3853)
!3858 = !DILocation(line: 523, column: 7, scope: !3784)
!3859 = !DILocation(line: 526, column: 42, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 525, column: 5)
!3861 = !DILocation(line: 526, column: 30, scope: !3860)
!3862 = !DILocation(line: 526, column: 7, scope: !3860)
!3863 = !DILocation(line: 527, column: 42, scope: !3860)
!3864 = !DILocation(line: 527, column: 30, scope: !3860)
!3865 = !DILocation(line: 527, column: 7, scope: !3860)
!3866 = !DILocation(line: 528, column: 5, scope: !3860)
!3867 = !DILocation(line: 531, column: 8, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 531, column: 3)
!3869 = !DILocation(line: 0, scope: !3868)
!3870 = !DILocation(line: 531, column: 27, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 531, column: 3)
!3872 = !DILocation(line: 531, column: 25, scope: !3871)
!3873 = !DILocation(line: 531, column: 3, scope: !3868)
!3874 = !DILocation(line: 533, column: 19, scope: !3871)
!3875 = !DILocation(line: 533, column: 10, scope: !3871)
!3876 = !DILocation(line: 532, column: 12, scope: !3871)
!3877 = !DILocation(line: 531, column: 63, scope: !3871)
!3878 = !DILocation(line: 531, column: 3, scope: !3871)
!3879 = distinct !{!3879, !3873, !3880}
!3880 = !DILocation(line: 534, column: 14, scope: !3868)
!3881 = !DILocation(line: 537, column: 38, scope: !3784)
!3882 = !DILocation(line: 537, column: 3, scope: !3784)
!3883 = !DILocation(line: 538, column: 1, scope: !3784)
!3884 = distinct !DISubprogram(name: "cleanup_build_arrays", scope: !3, file: !3, line: 545, type: !2030, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!3885 = !DILocation(line: 547, column: 14, scope: !3884)
!3886 = !DILocation(line: 548, column: 14, scope: !3884)
!3887 = !DILocation(line: 549, column: 3, scope: !3884)
!3888 = !DILocation(line: 550, column: 3, scope: !3884)
!3889 = !DILocation(line: 551, column: 1, scope: !3884)
!3890 = distinct !DISubprogram(name: "VEC_tree_heap_safe_insert", scope: !6, file: !6, line: 184, type: !3891, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!673, !2167, !7, !344}
!3893 = !{!3894, !3895, !3896}
!3894 = !DILocalVariable(name: "vec_", arg: 1, scope: !3890, file: !6, line: 184, type: !2167)
!3895 = !DILocalVariable(name: "ix_", arg: 2, scope: !3890, file: !6, line: 184, type: !7)
!3896 = !DILocalVariable(name: "obj_", arg: 3, scope: !3890, file: !6, line: 184, type: !344)
!3897 = !DILocation(line: 0, scope: !3890)
!3898 = !DILocation(line: 184, column: 1, scope: !3890)
!3899 = distinct !DISubprogram(name: "gimple_vdef_ptr", scope: !250, file: !250, line: 1395, type: !3324, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3900)
!3900 = !{!3901}
!3901 = !DILocalVariable(name: "g", arg: 1, scope: !3899, file: !250, line: 1395, type: !639)
!3902 = !DILocation(line: 0, scope: !3899)
!3903 = !DILocation(line: 1397, column: 8, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3899, file: !250, line: 1397, column: 7)
!3905 = !DILocation(line: 1397, column: 7, scope: !3899)
!3906 = !DILocation(line: 1400, column: 1, scope: !3899)
!3907 = distinct !DISubprogram(name: "add_def_op", scope: !3, file: !3, line: 378, type: !3908, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!2180, !673, !2180}
!3910 = !{!3911, !3912, !3913}
!3911 = !DILocalVariable(name: "op", arg: 1, scope: !3907, file: !3, line: 378, type: !673)
!3912 = !DILocalVariable(name: "last", arg: 2, scope: !3907, file: !3, line: 378, type: !2180)
!3913 = !DILocalVariable(name: "new_def", scope: !3907, file: !3, line: 380, type: !2180)
!3914 = !DILocation(line: 0, scope: !3907)
!3915 = !DILocation(line: 382, column: 13, scope: !3907)
!3916 = !DILocation(line: 383, column: 3, scope: !3907)
!3917 = !DILocation(line: 383, column: 24, scope: !3907)
!3918 = !DILocation(line: 384, column: 9, scope: !3907)
!3919 = !DILocation(line: 384, column: 14, scope: !3907)
!3920 = !DILocation(line: 385, column: 12, scope: !3907)
!3921 = !DILocation(line: 385, column: 17, scope: !3907)
!3922 = !DILocation(line: 386, column: 3, scope: !3907)
!3923 = distinct !DISubprogram(name: "VEC_tree_base_quick_insert", scope: !6, file: !6, line: 182, type: !3924, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!673, !3666, !7, !344}
!3926 = !{!3927, !3928, !3929, !3930}
!3927 = !DILocalVariable(name: "vec_", arg: 1, scope: !3923, file: !6, line: 182, type: !3666)
!3928 = !DILocalVariable(name: "ix_", arg: 2, scope: !3923, file: !6, line: 182, type: !7)
!3929 = !DILocalVariable(name: "obj_", arg: 3, scope: !3923, file: !6, line: 182, type: !344)
!3930 = !DILocalVariable(name: "slot_", scope: !3923, file: !6, line: 182, type: !673)
!3931 = !DILocation(line: 0, scope: !3923)
!3932 = !DILocation(line: 182, column: 1, scope: !3923)
!3933 = distinct !DISubprogram(name: "alloc_def", scope: !3, file: !3, line: 340, type: !3934, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!668}
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "ret", scope: !3933, file: !3, line: 342, type: !668)
!3938 = !DILocation(line: 343, column: 28, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 343, column: 7)
!3940 = !DILocation(line: 343, column: 7, scope: !3939)
!3941 = !DILocation(line: 343, column: 35, scope: !3939)
!3942 = !DILocation(line: 343, column: 7, scope: !3933)
!3943 = !DILocation(line: 345, column: 34, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 344, column: 5)
!3945 = !DILocation(line: 345, column: 13, scope: !3944)
!3946 = !DILocation(line: 345, column: 41, scope: !3944)
!3947 = !DILocation(line: 0, scope: !3933)
!3948 = !DILocation(line: 347, column: 25, scope: !3944)
!3949 = !DILocation(line: 347, column: 4, scope: !3944)
!3950 = !DILocation(line: 347, column: 32, scope: !3944)
!3951 = !DILocation(line: 347, column: 43, scope: !3944)
!3952 = !DILocation(line: 346, column: 28, scope: !3944)
!3953 = !DILocation(line: 346, column: 7, scope: !3944)
!3954 = !DILocation(line: 346, column: 35, scope: !3944)
!3955 = !DILocation(line: 347, column: 2, scope: !3944)
!3956 = !DILocation(line: 348, column: 5, scope: !3944)
!3957 = !DILocation(line: 351, column: 4, scope: !3939)
!3958 = !DILocation(line: 350, column: 11, scope: !3939)
!3959 = !DILocation(line: 0, scope: !3939)
!3960 = !DILocation(line: 352, column: 3, scope: !3933)
!3961 = distinct !DISubprogram(name: "ssa_operand_alloc", scope: !3, file: !3, line: 294, type: !3962, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!341, !7}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "size", arg: 1, scope: !3961, file: !3, line: 294, type: !7)
!3966 = !DILocalVariable(name: "ptr", scope: !3961, file: !3, line: 296, type: !339)
!3967 = !DILocalVariable(name: "ptr", scope: !3968, file: !3, line: 304, type: !1076)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 303, column: 5)
!3969 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 301, column: 7)
!3970 = !DILocation(line: 0, scope: !3961)
!3971 = !DILocation(line: 298, column: 3, scope: !3961)
!3972 = !DILocation(line: 301, column: 28, scope: !3969)
!3973 = !DILocation(line: 301, column: 7, scope: !3969)
!3974 = !DILocation(line: 301, column: 35, scope: !3969)
!3975 = !DILocation(line: 301, column: 56, scope: !3969)
!3976 = !DILocation(line: 302, column: 31, scope: !3969)
!3977 = !DILocation(line: 302, column: 10, scope: !3969)
!3978 = !DILocation(line: 302, column: 38, scope: !3969)
!3979 = !DILocation(line: 302, column: 7, scope: !3969)
!3980 = !DILocation(line: 301, column: 7, scope: !3961)
!3981 = !DILocation(line: 306, column: 36, scope: !3968)
!3982 = !DILocation(line: 306, column: 15, scope: !3968)
!3983 = !DILocation(line: 306, column: 43, scope: !3968)
!3984 = !DILocation(line: 306, column: 7, scope: !3968)
!3985 = !DILocation(line: 309, column: 25, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 307, column: 2)
!3987 = !DILocation(line: 309, column: 4, scope: !3986)
!3988 = !DILocation(line: 309, column: 32, scope: !3986)
!3989 = !DILocation(line: 309, column: 53, scope: !3986)
!3990 = !DILocation(line: 310, column: 4, scope: !3986)
!3991 = !DILocation(line: 312, column: 25, scope: !3986)
!3992 = !DILocation(line: 312, column: 4, scope: !3986)
!3993 = !DILocation(line: 312, column: 32, scope: !3986)
!3994 = !DILocation(line: 312, column: 53, scope: !3986)
!3995 = !DILocation(line: 313, column: 4, scope: !3986)
!3996 = !DILocation(line: 316, column: 25, scope: !3986)
!3997 = !DILocation(line: 316, column: 4, scope: !3986)
!3998 = !DILocation(line: 316, column: 32, scope: !3986)
!3999 = !DILocation(line: 316, column: 53, scope: !3986)
!4000 = !DILocation(line: 317, column: 4, scope: !3986)
!4001 = !DILocation(line: 319, column: 4, scope: !3986)
!4002 = !DILocation(line: 320, column: 2, scope: !3986)
!4003 = !DILocation(line: 323, column: 8, scope: !3968)
!4004 = !DILocation(line: 0, scope: !3968)
!4005 = !DILocation(line: 325, column: 40, scope: !3968)
!4006 = !DILocation(line: 325, column: 19, scope: !3968)
!4007 = !DILocation(line: 325, column: 47, scope: !3968)
!4008 = !DILocation(line: 325, column: 17, scope: !3968)
!4009 = !DILocation(line: 326, column: 28, scope: !3968)
!4010 = !DILocation(line: 326, column: 7, scope: !3968)
!4011 = !DILocation(line: 326, column: 50, scope: !3968)
!4012 = !DILocation(line: 327, column: 28, scope: !3968)
!4013 = !DILocation(line: 327, column: 7, scope: !3968)
!4014 = !DILocation(line: 327, column: 35, scope: !3968)
!4015 = !DILocation(line: 327, column: 56, scope: !3968)
!4016 = !DILocation(line: 328, column: 5, scope: !3968)
!4017 = !DILocation(line: 330, column: 32, scope: !3961)
!4018 = !DILocation(line: 330, column: 11, scope: !3961)
!4019 = !DILocation(line: 330, column: 39, scope: !3961)
!4020 = !DILocation(line: 331, column: 31, scope: !3961)
!4021 = !DILocation(line: 331, column: 10, scope: !3961)
!4022 = !DILocation(line: 331, column: 38, scope: !3961)
!4023 = !DILocation(line: 332, column: 24, scope: !3961)
!4024 = !DILocation(line: 332, column: 3, scope: !3961)
!4025 = !DILocation(line: 332, column: 31, scope: !3961)
!4026 = !DILocation(line: 332, column: 52, scope: !3961)
!4027 = !DILocation(line: 333, column: 3, scope: !3961)
!4028 = distinct !DISubprogram(name: "gimple_vuse_ptr", scope: !250, file: !250, line: 1385, type: !3324, scopeLine: 1386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4029 = !{!4030}
!4030 = !DILocalVariable(name: "g", arg: 1, scope: !4028, file: !250, line: 1385, type: !639)
!4031 = !DILocation(line: 0, scope: !4028)
!4032 = !DILocation(line: 1387, column: 8, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4028, file: !250, line: 1387, column: 7)
!4034 = !DILocation(line: 1387, column: 7, scope: !4028)
!4035 = !DILocation(line: 1390, column: 1, scope: !4028)
!4036 = distinct !DISubprogram(name: "add_use_op", scope: !3, file: !3, line: 393, type: !4037, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!2183, !639, !673, !2183}
!4039 = !{!4040, !4041, !4042, !4043}
!4040 = !DILocalVariable(name: "stmt", arg: 1, scope: !4036, file: !3, line: 393, type: !639)
!4041 = !DILocalVariable(name: "op", arg: 2, scope: !4036, file: !3, line: 393, type: !673)
!4042 = !DILocalVariable(name: "last", arg: 3, scope: !4036, file: !3, line: 393, type: !2183)
!4043 = !DILocalVariable(name: "new_use", scope: !4036, file: !3, line: 395, type: !2183)
!4044 = !DILocation(line: 0, scope: !4036)
!4045 = !DILocation(line: 397, column: 13, scope: !4036)
!4046 = !DILocation(line: 398, column: 25, scope: !4036)
!4047 = !DILocation(line: 398, column: 29, scope: !4036)
!4048 = !DILocation(line: 399, column: 22, scope: !4036)
!4049 = !DILocation(line: 399, column: 44, scope: !4036)
!4050 = !DILocation(line: 399, column: 3, scope: !4036)
!4051 = !DILocation(line: 400, column: 9, scope: !4036)
!4052 = !DILocation(line: 400, column: 14, scope: !4036)
!4053 = !DILocation(line: 401, column: 12, scope: !4036)
!4054 = !DILocation(line: 401, column: 17, scope: !4036)
!4055 = !DILocation(line: 402, column: 3, scope: !4036)
!4056 = distinct !DISubprogram(name: "alloc_use", scope: !3, file: !3, line: 359, type: !4057, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!675}
!4059 = !{!4060}
!4060 = !DILocalVariable(name: "ret", scope: !4056, file: !3, line: 361, type: !675)
!4061 = !DILocation(line: 362, column: 28, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 362, column: 7)
!4063 = !DILocation(line: 362, column: 7, scope: !4062)
!4064 = !DILocation(line: 362, column: 35, scope: !4062)
!4065 = !DILocation(line: 362, column: 7, scope: !4056)
!4066 = !DILocation(line: 364, column: 34, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 363, column: 5)
!4068 = !DILocation(line: 364, column: 13, scope: !4067)
!4069 = !DILocation(line: 364, column: 41, scope: !4067)
!4070 = !DILocation(line: 0, scope: !4056)
!4071 = !DILocation(line: 366, column: 25, scope: !4067)
!4072 = !DILocation(line: 366, column: 4, scope: !4067)
!4073 = !DILocation(line: 366, column: 32, scope: !4067)
!4074 = !DILocation(line: 366, column: 43, scope: !4067)
!4075 = !DILocation(line: 365, column: 28, scope: !4067)
!4076 = !DILocation(line: 365, column: 7, scope: !4067)
!4077 = !DILocation(line: 365, column: 35, scope: !4067)
!4078 = !DILocation(line: 366, column: 2, scope: !4067)
!4079 = !DILocation(line: 367, column: 5, scope: !4067)
!4080 = !DILocation(line: 370, column: 11, scope: !4062)
!4081 = !DILocation(line: 369, column: 11, scope: !4062)
!4082 = !DILocation(line: 0, scope: !4062)
!4083 = !DILocation(line: 371, column: 3, scope: !4056)
!4084 = distinct !DISubprogram(name: "link_imm_use_stmt", scope: !2017, file: !2017, line: 243, type: !4085, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !1526, !344, !639}
!4087 = !{!4088, !4089, !4090}
!4088 = !DILocalVariable(name: "linknode", arg: 1, scope: !4084, file: !2017, line: 243, type: !1526)
!4089 = !DILocalVariable(name: "def", arg: 2, scope: !4084, file: !2017, line: 243, type: !344)
!4090 = !DILocalVariable(name: "stmt", arg: 3, scope: !4084, file: !2017, line: 243, type: !639)
!4091 = !DILocation(line: 0, scope: !4084)
!4092 = !DILocation(line: 245, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4084, file: !2017, line: 245, column: 7)
!4094 = !DILocation(line: 245, column: 7, scope: !4084)
!4095 = !DILocation(line: 246, column: 5, scope: !4093)
!4096 = !DILocation(line: 248, column: 5, scope: !4093)
!4097 = !DILocation(line: 249, column: 17, scope: !4084)
!4098 = !DILocation(line: 249, column: 22, scope: !4084)
!4099 = !DILocation(line: 250, column: 1, scope: !4084)
!4100 = distinct !DISubprogram(name: "link_imm_use", scope: !2017, file: !2017, line: 214, type: !4101, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !1526, !344}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "linknode", arg: 1, scope: !4100, file: !2017, line: 214, type: !1526)
!4105 = !DILocalVariable(name: "def", arg: 2, scope: !4100, file: !2017, line: 214, type: !344)
!4106 = !DILocalVariable(name: "root", scope: !4100, file: !2017, line: 216, type: !1526)
!4107 = !DILocation(line: 0, scope: !4100)
!4108 = !DILocation(line: 218, column: 8, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4100, file: !2017, line: 218, column: 7)
!4110 = !DILocation(line: 218, column: 12, scope: !4109)
!4111 = !DILocation(line: 218, column: 15, scope: !4109)
!4112 = !DILocation(line: 218, column: 31, scope: !4109)
!4113 = !DILocation(line: 218, column: 7, scope: !4100)
!4114 = !DILocation(line: 219, column: 15, scope: !4109)
!4115 = !DILocation(line: 219, column: 20, scope: !4109)
!4116 = !DILocation(line: 219, column: 5, scope: !4109)
!4117 = !DILocation(line: 222, column: 16, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4109, file: !2017, line: 221, column: 5)
!4119 = !DILocation(line: 227, column: 7, scope: !4118)
!4120 = !DILocation(line: 229, column: 1, scope: !4100)
!4121 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2017, file: !2017, line: 202, type: !4122, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !1526, !1526}
!4124 = !{!4125, !4126}
!4125 = !DILocalVariable(name: "linknode", arg: 1, scope: !4121, file: !2017, line: 202, type: !1526)
!4126 = !DILocalVariable(name: "list", arg: 2, scope: !4121, file: !2017, line: 202, type: !1526)
!4127 = !DILocation(line: 0, scope: !4121)
!4128 = !DILocation(line: 206, column: 13, scope: !4121)
!4129 = !DILocation(line: 206, column: 18, scope: !4121)
!4130 = !DILocation(line: 207, column: 26, scope: !4121)
!4131 = !DILocation(line: 207, column: 13, scope: !4121)
!4132 = !DILocation(line: 207, column: 18, scope: !4121)
!4133 = !DILocation(line: 208, column: 9, scope: !4121)
!4134 = !DILocation(line: 208, column: 15, scope: !4121)
!4135 = !DILocation(line: 208, column: 20, scope: !4121)
!4136 = !DILocation(line: 209, column: 14, scope: !4121)
!4137 = !DILocation(line: 210, column: 1, scope: !4121)
!4138 = distinct !DISubprogram(name: "VEC_tree_base_truncate", scope: !6, file: !6, line: 182, type: !4139, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !3666, !7}
!4141 = !{!4142, !4143}
!4142 = !DILocalVariable(name: "vec_", arg: 1, scope: !4138, file: !6, line: 182, type: !3666)
!4143 = !DILocalVariable(name: "size_", arg: 2, scope: !4138, file: !6, line: 182, type: !7)
!4144 = !DILocation(line: 0, scope: !4138)
!4145 = !DILocation(line: 182, column: 1, scope: !4138)
!4146 = !DILocation(line: 182, column: 1, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4138, file: !6, line: 182, column: 1)
!4148 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !2017, file: !2017, line: 1018, type: !4149, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !1525, !2681}
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4157, !4158, !4169}
!4152 = !DILocalVariable(name: "head", arg: 1, scope: !4148, file: !2017, line: 1018, type: !1525)
!4153 = !DILocalVariable(name: "imm", arg: 2, scope: !4148, file: !2017, line: 1018, type: !2681)
!4154 = !DILocalVariable(name: "use_p", scope: !4148, file: !2017, line: 1020, type: !1525)
!4155 = !DILocalVariable(name: "last_p", scope: !4148, file: !2017, line: 1021, type: !1525)
!4156 = !DILocalVariable(name: "head_stmt", scope: !4148, file: !2017, line: 1022, type: !639)
!4157 = !DILocalVariable(name: "use", scope: !4148, file: !2017, line: 1023, type: !344)
!4158 = !DILocalVariable(name: "op_iter", scope: !4148, file: !2017, line: 1024, type: !4159)
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !328, line: 140, baseType: !4160)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !328, line: 131, size: 320, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4160, file: !328, line: 133, baseType: !336, size: 8)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4160, file: !328, line: 134, baseType: !327, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !4160, file: !328, line: 135, baseType: !2180, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !4160, file: !328, line: 136, baseType: !2183, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !4160, file: !328, line: 137, baseType: !337, size: 32, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !4160, file: !328, line: 138, baseType: !337, size: 32, offset: 224)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !4160, file: !328, line: 139, baseType: !639, size: 64, offset: 256)
!4169 = !DILocalVariable(name: "flag", scope: !4148, file: !2017, line: 1025, type: !337)
!4170 = !DILocation(line: 0, scope: !4148)
!4171 = !DILocation(line: 1022, column: 22, scope: !4148)
!4172 = !DILocation(line: 1023, column: 14, scope: !4148)
!4173 = !DILocation(line: 1024, column: 3, scope: !4148)
!4174 = !DILocation(line: 1028, column: 11, scope: !4148)
!4175 = !DILocation(line: 1030, column: 7, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4148, file: !2017, line: 1030, column: 7)
!4177 = !DILocation(line: 1030, column: 31, scope: !4176)
!4178 = !DILocation(line: 1030, column: 7, scope: !4148)
!4179 = !DILocation(line: 1032, column: 7, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !2017, line: 1032, column: 7)
!4181 = distinct !DILexicalBlock(scope: !4176, file: !2017, line: 1031, column: 5)
!4182 = !DILocation(line: 0, scope: !4180)
!4183 = !DILocation(line: 1032, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4180, file: !2017, line: 1032, column: 7)
!4185 = !DILocation(line: 1033, column: 6, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4184, file: !2017, line: 1033, column: 6)
!4187 = !DILocation(line: 1033, column: 27, scope: !4186)
!4188 = !DILocation(line: 1033, column: 6, scope: !4184)
!4189 = !DILocation(line: 1034, column: 13, scope: !4186)
!4190 = !DILocation(line: 1034, column: 4, scope: !4186)
!4191 = distinct !{!4191, !4179, !4192}
!4192 = !DILocation(line: 1034, column: 53, scope: !4180)
!4193 = !DILocation(line: 1038, column: 11, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4176, file: !2017, line: 1037, column: 5)
!4195 = !DILocation(line: 1040, column: 4, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !2017, line: 1040, column: 4)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !2017, line: 1039, column: 2)
!4198 = distinct !DILexicalBlock(scope: !4194, file: !2017, line: 1038, column: 11)
!4199 = !DILocation(line: 0, scope: !4196)
!4200 = !DILocation(line: 1040, column: 4, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4196, file: !2017, line: 1040, column: 4)
!4202 = !DILocation(line: 1041, column: 10, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4201, file: !2017, line: 1041, column: 10)
!4204 = !DILocation(line: 1041, column: 31, scope: !4203)
!4205 = !DILocation(line: 1041, column: 10, scope: !4201)
!4206 = !DILocation(line: 1042, column: 17, scope: !4203)
!4207 = !DILocation(line: 1042, column: 8, scope: !4203)
!4208 = distinct !{!4208, !4195, !4209}
!4209 = !DILocation(line: 1042, column: 57, scope: !4196)
!4210 = !DILocation(line: 1044, column: 25, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4198, file: !2017, line: 1044, column: 16)
!4212 = !DILocation(line: 1044, column: 53, scope: !4211)
!4213 = !DILocation(line: 1044, column: 16, scope: !4198)
!4214 = !DILocation(line: 1046, column: 8, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !2017, line: 1046, column: 8)
!4216 = distinct !DILexicalBlock(scope: !4211, file: !2017, line: 1045, column: 2)
!4217 = !DILocation(line: 1046, column: 29, scope: !4215)
!4218 = !DILocation(line: 1046, column: 8, scope: !4216)
!4219 = !DILocation(line: 1047, column: 15, scope: !4215)
!4220 = !DILocation(line: 1047, column: 6, scope: !4215)
!4221 = !DILocation(line: 1051, column: 22, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4148, file: !2017, line: 1051, column: 7)
!4223 = !DILocation(line: 1021, column: 17, scope: !4148)
!4224 = !DILocation(line: 1051, column: 27, scope: !4222)
!4225 = !DILocation(line: 1051, column: 7, scope: !4148)
!4226 = !DILocation(line: 1052, column: 27, scope: !4222)
!4227 = !DILocation(line: 1052, column: 5, scope: !4222)
!4228 = !DILocation(line: 1053, column: 32, scope: !4148)
!4229 = !DILocation(line: 1053, column: 3, scope: !4148)
!4230 = !DILocation(line: 1054, column: 1, scope: !4148)
!4231 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2017, file: !2017, line: 910, type: !4232, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!1525, !4234, !639, !337}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4235 = !{!4236, !4237, !4238, !4239, !4240}
!4236 = !DILocalVariable(name: "ptr", arg: 1, scope: !4231, file: !2017, line: 910, type: !4234)
!4237 = !DILocalVariable(name: "phi", arg: 2, scope: !4231, file: !2017, line: 910, type: !639)
!4238 = !DILocalVariable(name: "flags", arg: 3, scope: !4231, file: !2017, line: 910, type: !337)
!4239 = !DILocalVariable(name: "phi_def", scope: !4231, file: !2017, line: 912, type: !344)
!4240 = !DILocalVariable(name: "comp", scope: !4231, file: !2017, line: 913, type: !337)
!4241 = !DILocation(line: 0, scope: !4231)
!4242 = !DILocation(line: 912, column: 18, scope: !4231)
!4243 = !DILocation(line: 915, column: 3, scope: !4231)
!4244 = !DILocation(line: 916, column: 8, scope: !4231)
!4245 = !DILocation(line: 916, column: 13, scope: !4231)
!4246 = !DILocation(line: 918, column: 3, scope: !4231)
!4247 = !DILocation(line: 920, column: 11, scope: !4231)
!4248 = !DILocation(line: 923, column: 14, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4231, file: !2017, line: 923, column: 7)
!4250 = !DILocation(line: 923, column: 22, scope: !4249)
!4251 = !DILocation(line: 923, column: 7, scope: !4231)
!4252 = !DILocation(line: 925, column: 17, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4249, file: !2017, line: 924, column: 5)
!4254 = !DILocation(line: 926, column: 7, scope: !4253)
!4255 = !DILocation(line: 929, column: 8, scope: !4231)
!4256 = !DILocation(line: 929, column: 17, scope: !4231)
!4257 = !DILocation(line: 930, column: 18, scope: !4231)
!4258 = !DILocation(line: 930, column: 8, scope: !4231)
!4259 = !DILocation(line: 930, column: 16, scope: !4231)
!4260 = !DILocation(line: 931, column: 8, scope: !4231)
!4261 = !DILocation(line: 931, column: 18, scope: !4231)
!4262 = !DILocation(line: 932, column: 10, scope: !4231)
!4263 = !DILocation(line: 932, column: 3, scope: !4231)
!4264 = !DILocation(line: 933, column: 1, scope: !4231)
!4265 = distinct !DISubprogram(name: "op_iter_done", scope: !2017, file: !2017, line: 652, type: !4266, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4270)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!336, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4159)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "ptr", arg: 1, scope: !4265, file: !2017, line: 652, type: !4268)
!4272 = !DILocation(line: 0, scope: !4265)
!4273 = !DILocation(line: 654, column: 15, scope: !4265)
!4274 = !DILocation(line: 654, column: 3, scope: !4265)
!4275 = distinct !DISubprogram(name: "move_use_after_head", scope: !2017, file: !2017, line: 990, type: !4276, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4278)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!1525, !1525, !1525, !1525}
!4278 = !{!4279, !4280, !4281}
!4279 = !DILocalVariable(name: "use_p", arg: 1, scope: !4275, file: !2017, line: 990, type: !1525)
!4280 = !DILocalVariable(name: "head", arg: 2, scope: !4275, file: !2017, line: 990, type: !1525)
!4281 = !DILocalVariable(name: "last_p", arg: 3, scope: !4275, file: !2017, line: 991, type: !1525)
!4282 = !DILocation(line: 0, scope: !4275)
!4283 = !DILocation(line: 997, column: 13, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4275, file: !2017, line: 997, column: 7)
!4285 = !DILocation(line: 997, column: 7, scope: !4275)
!4286 = !DILocation(line: 1000, column: 19, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !2017, line: 1000, column: 11)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !2017, line: 998, column: 5)
!4289 = !DILocation(line: 1000, column: 24, scope: !4287)
!4290 = !DILocation(line: 1000, column: 11, scope: !4288)
!4291 = !DILocation(line: 1005, column: 4, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4287, file: !2017, line: 1003, column: 2)
!4293 = !DILocation(line: 1006, column: 4, scope: !4292)
!4294 = !DILocation(line: 1010, column: 3, scope: !4275)
!4295 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2017, file: !2017, line: 659, type: !4296, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!1525, !4234}
!4298 = !{!4299, !4300}
!4299 = !DILocalVariable(name: "ptr", arg: 1, scope: !4295, file: !2017, line: 659, type: !4234)
!4300 = !DILocalVariable(name: "use_p", scope: !4295, file: !2017, line: 661, type: !1525)
!4301 = !DILocation(line: 0, scope: !4295)
!4302 = !DILocation(line: 665, column: 12, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4295, file: !2017, line: 665, column: 7)
!4304 = !DILocation(line: 665, column: 7, scope: !4303)
!4305 = !DILocation(line: 665, column: 7, scope: !4295)
!4306 = !DILocation(line: 667, column: 15, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !2017, line: 666, column: 5)
!4308 = !DILocation(line: 668, column: 30, scope: !4307)
!4309 = !DILocation(line: 668, column: 17, scope: !4307)
!4310 = !DILocation(line: 669, column: 7, scope: !4307)
!4311 = !DILocation(line: 671, column: 12, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4295, file: !2017, line: 671, column: 7)
!4313 = !DILocation(line: 671, column: 25, scope: !4312)
!4314 = !DILocation(line: 671, column: 18, scope: !4312)
!4315 = !DILocation(line: 671, column: 7, scope: !4295)
!4316 = !DILocation(line: 673, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4312, file: !2017, line: 672, column: 5)
!4318 = !DILocation(line: 673, column: 7, scope: !4317)
!4319 = !DILocation(line: 675, column: 8, scope: !4295)
!4320 = !DILocation(line: 675, column: 13, scope: !4295)
!4321 = !DILocation(line: 676, column: 3, scope: !4295)
!4322 = !DILocation(line: 677, column: 1, scope: !4295)
!4323 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2017, file: !2017, line: 768, type: !4232, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4324 = !{!4325, !4326, !4327}
!4325 = !DILocalVariable(name: "ptr", arg: 1, scope: !4323, file: !2017, line: 768, type: !4234)
!4326 = !DILocalVariable(name: "stmt", arg: 2, scope: !4323, file: !2017, line: 768, type: !639)
!4327 = !DILocalVariable(name: "flags", arg: 3, scope: !4323, file: !2017, line: 768, type: !337)
!4328 = !DILocation(line: 0, scope: !4323)
!4329 = !DILocation(line: 770, column: 3, scope: !4323)
!4330 = !DILocation(line: 772, column: 3, scope: !4323)
!4331 = !DILocation(line: 773, column: 8, scope: !4323)
!4332 = !DILocation(line: 773, column: 18, scope: !4323)
!4333 = !DILocation(line: 774, column: 10, scope: !4323)
!4334 = !DILocation(line: 774, column: 3, scope: !4323)
!4335 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !250, file: !250, line: 1334, type: !4336, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!1525, !2245}
!4338 = !{!4339, !4340}
!4339 = !DILocalVariable(name: "g", arg: 1, scope: !4335, file: !250, line: 1334, type: !2245)
!4340 = !DILocalVariable(name: "ops", scope: !4335, file: !250, line: 1336, type: !675)
!4341 = !DILocation(line: 0, scope: !4335)
!4342 = !DILocation(line: 1337, column: 8, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4335, file: !250, line: 1337, column: 7)
!4344 = !DILocation(line: 1337, column: 7, scope: !4335)
!4345 = !DILocation(line: 1339, column: 25, scope: !4335)
!4346 = !DILocation(line: 1340, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4335, file: !250, line: 1340, column: 7)
!4348 = !DILocation(line: 1341, column: 7, scope: !4347)
!4349 = !DILocation(line: 1341, column: 28, scope: !4347)
!4350 = !DILocation(line: 1341, column: 49, scope: !4347)
!4351 = !DILocation(line: 1341, column: 32, scope: !4347)
!4352 = !DILocation(line: 1342, column: 12, scope: !4347)
!4353 = !DILocation(line: 1340, column: 7, scope: !4335)
!4354 = !DILocation(line: 1344, column: 1, scope: !4335)
!4355 = distinct !DISubprogram(name: "gimple_phi_result", scope: !250, file: !250, line: 3071, type: !2822, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4356)
!4356 = !{!4357}
!4357 = !DILocalVariable(name: "gs", arg: 1, scope: !4355, file: !250, line: 3071, type: !2245)
!4358 = !DILocation(line: 0, scope: !4355)
!4359 = !DILocation(line: 3074, column: 25, scope: !4355)
!4360 = !DILocation(line: 3074, column: 3, scope: !4355)
!4361 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2017, file: !2017, line: 729, type: !4362, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{null, !4234}
!4364 = !{!4365}
!4365 = !DILocalVariable(name: "ptr", arg: 1, scope: !4361, file: !2017, line: 729, type: !4234)
!4366 = !DILocation(line: 0, scope: !4361)
!4367 = !DILocation(line: 731, column: 8, scope: !4361)
!4368 = !DILocation(line: 731, column: 13, scope: !4361)
!4369 = !DILocation(line: 732, column: 8, scope: !4361)
!4370 = !DILocation(line: 732, column: 13, scope: !4361)
!4371 = !DILocation(line: 733, column: 8, scope: !4361)
!4372 = !DILocation(line: 733, column: 18, scope: !4361)
!4373 = !DILocation(line: 734, column: 8, scope: !4361)
!4374 = !DILocation(line: 734, column: 14, scope: !4361)
!4375 = !DILocation(line: 735, column: 8, scope: !4361)
!4376 = !DILocation(line: 735, column: 16, scope: !4361)
!4377 = !DILocation(line: 736, column: 8, scope: !4361)
!4378 = !DILocation(line: 736, column: 17, scope: !4361)
!4379 = !DILocation(line: 737, column: 8, scope: !4361)
!4380 = !DILocation(line: 737, column: 13, scope: !4361)
!4381 = !DILocation(line: 738, column: 1, scope: !4361)
!4382 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !250, file: !250, line: 3061, type: !3348, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4383)
!4383 = !{!4384}
!4384 = !DILocalVariable(name: "gs", arg: 1, scope: !4382, file: !250, line: 3061, type: !2245)
!4385 = !DILocation(line: 0, scope: !4382)
!4386 = !DILocation(line: 3064, column: 25, scope: !4382)
!4387 = !DILocation(line: 3064, column: 3, scope: !4382)
!4388 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2017, file: !2017, line: 442, type: !4389, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!1525, !639, !337}
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "gs", arg: 1, scope: !4388, file: !2017, line: 442, type: !639)
!4393 = !DILocalVariable(name: "i", arg: 2, scope: !4388, file: !2017, line: 442, type: !337)
!4394 = !DILocation(line: 0, scope: !4388)
!4395 = !DILocation(line: 444, column: 11, scope: !4388)
!4396 = !DILocation(line: 444, column: 35, scope: !4388)
!4397 = !DILocation(line: 444, column: 3, scope: !4388)
!4398 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !250, file: !250, line: 3100, type: !4399, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4402)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!4401, !639, !7}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!4402 = !{!4403, !4404}
!4403 = !DILocalVariable(name: "gs", arg: 1, scope: !4398, file: !250, line: 3100, type: !639)
!4404 = !DILocalVariable(name: "index", arg: 2, scope: !4398, file: !250, line: 3100, type: !7)
!4405 = !DILocation(line: 0, scope: !4398)
!4406 = !DILocation(line: 3103, column: 3, scope: !4398)
!4407 = !DILocation(line: 3104, column: 12, scope: !4398)
!4408 = !DILocation(line: 3104, column: 3, scope: !4398)
!4409 = distinct !DISubprogram(name: "op_iter_init", scope: !2017, file: !2017, line: 742, type: !4410, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4412)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !4234, !639, !337}
!4412 = !{!4413, !4414, !4415}
!4413 = !DILocalVariable(name: "ptr", arg: 1, scope: !4409, file: !2017, line: 742, type: !4234)
!4414 = !DILocalVariable(name: "stmt", arg: 2, scope: !4409, file: !2017, line: 742, type: !639)
!4415 = !DILocalVariable(name: "flags", arg: 3, scope: !4409, file: !2017, line: 742, type: !337)
!4416 = !DILocation(line: 0, scope: !4409)
!4417 = !DILocation(line: 746, column: 3, scope: !4409)
!4418 = !DILocation(line: 748, column: 22, scope: !4409)
!4419 = !DILocation(line: 748, column: 15, scope: !4409)
!4420 = !DILocation(line: 748, column: 52, scope: !4409)
!4421 = !DILocation(line: 748, column: 8, scope: !4409)
!4422 = !DILocation(line: 748, column: 13, scope: !4409)
!4423 = !DILocation(line: 749, column: 15, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4409, file: !2017, line: 749, column: 7)
!4425 = !DILocation(line: 750, column: 7, scope: !4424)
!4426 = !DILocation(line: 750, column: 10, scope: !4424)
!4427 = !DILocation(line: 751, column: 7, scope: !4424)
!4428 = !DILocation(line: 751, column: 10, scope: !4424)
!4429 = !DILocation(line: 751, column: 29, scope: !4424)
!4430 = !DILocation(line: 749, column: 7, scope: !4409)
!4431 = !DILocation(line: 752, column: 22, scope: !4424)
!4432 = !DILocation(line: 752, column: 28, scope: !4424)
!4433 = !DILocation(line: 752, column: 15, scope: !4424)
!4434 = !DILocation(line: 752, column: 5, scope: !4424)
!4435 = !DILocation(line: 753, column: 22, scope: !4409)
!4436 = !DILocation(line: 753, column: 15, scope: !4409)
!4437 = !DILocation(line: 753, column: 52, scope: !4409)
!4438 = !DILocation(line: 753, column: 8, scope: !4409)
!4439 = !DILocation(line: 753, column: 13, scope: !4409)
!4440 = !DILocation(line: 754, column: 15, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4409, file: !2017, line: 754, column: 7)
!4442 = !DILocation(line: 755, column: 7, scope: !4441)
!4443 = !DILocation(line: 755, column: 10, scope: !4441)
!4444 = !DILocation(line: 756, column: 7, scope: !4441)
!4445 = !DILocation(line: 756, column: 10, scope: !4441)
!4446 = !DILocation(line: 756, column: 29, scope: !4441)
!4447 = !DILocation(line: 754, column: 7, scope: !4409)
!4448 = !DILocation(line: 757, column: 22, scope: !4441)
!4449 = !DILocation(line: 757, column: 28, scope: !4441)
!4450 = !DILocation(line: 757, column: 15, scope: !4441)
!4451 = !DILocation(line: 757, column: 5, scope: !4441)
!4452 = !DILocation(line: 758, column: 8, scope: !4409)
!4453 = !DILocation(line: 758, column: 13, scope: !4409)
!4454 = !DILocation(line: 760, column: 8, scope: !4409)
!4455 = !DILocation(line: 760, column: 14, scope: !4409)
!4456 = !DILocation(line: 761, column: 8, scope: !4409)
!4457 = !DILocation(line: 761, column: 16, scope: !4409)
!4458 = !DILocation(line: 762, column: 8, scope: !4409)
!4459 = !DILocation(line: 762, column: 17, scope: !4409)
!4460 = !DILocation(line: 763, column: 1, scope: !4409)
