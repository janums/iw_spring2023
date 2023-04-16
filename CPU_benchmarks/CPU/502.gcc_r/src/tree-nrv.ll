; ModuleID = 'tree-nrv.bc'
source_filename = "tree-nrv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.nrv_data = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.pointer_set_t = type opaque
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"nrv\00", align 1
@pass_nrv = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_pass_return_slot, i32 ()* @tree_nrv, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 105, i32 40, i32 0, i32 0, i32 0, i32 3 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"retslot\00", align 1
@pass_return_slot = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 ()* null, i32 ()* @execute_return_slot_opt, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !1958
@optimize = external dso_local local_unnamed_addr global i32, align 4
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tree-nrv.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"NRV Replaced: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  with: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2003, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2004, metadata !DIExpression()), !dbg !2005
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2006
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2007
  ret i32 %call, !dbg !2008
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2009 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2013
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2014
  ret i32 %call, !dbg !2015
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2071, metadata !DIExpression()), !dbg !2072
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2073
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2073
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2073
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2073
  %cmp = icmp uge i8* %0, %1, !dbg !2073
  %conv1 = zext i1 %cmp to i64, !dbg !2073
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2073
  %tobool = icmp eq i64 %expval, 0, !dbg !2073
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2073

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2073
  br label %cond.end, !dbg !2073

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2073
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2073
  %2 = load i8, i8* %0, align 1, !dbg !2073
  %conv3 = zext i8 %2 to i32, !dbg !2073
  br label %cond.end, !dbg !2073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2073
  ret i32 %cond, !dbg !2074
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2077, metadata !DIExpression()), !dbg !2078
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2079
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2079
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2079
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2079
  %cmp = icmp uge i8* %0, %1, !dbg !2079
  %conv1 = zext i1 %cmp to i64, !dbg !2079
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2079
  %tobool = icmp eq i64 %expval, 0, !dbg !2079
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2079

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2079
  br label %cond.end, !dbg !2079

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2079
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2079
  %2 = load i8, i8* %0, align 1, !dbg !2079
  %conv3 = zext i8 %2 to i32, !dbg !2079
  br label %cond.end, !dbg !2079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2079
  ret i32 %cond, !dbg !2080
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2081 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2082
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2082
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2082
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2082
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2082
  %cmp = icmp uge i8* %1, %2, !dbg !2082
  %conv1 = zext i1 %cmp to i64, !dbg !2082
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2082
  %tobool = icmp eq i64 %expval, 0, !dbg !2082
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2082

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2082
  br label %cond.end, !dbg !2082

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2082
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2082
  %3 = load i8, i8* %1, align 1, !dbg !2082
  %conv3 = zext i8 %3 to i32, !dbg !2082
  br label %cond.end, !dbg !2082

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2082
  ret i32 %cond, !dbg !2083
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2088, metadata !DIExpression()), !dbg !2089
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2090
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2091
  ret i32 %call, !dbg !2092
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2098, metadata !DIExpression()), !dbg !2099
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2100
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2100
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2100
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2100
  %cmp = icmp uge i8* %0, %1, !dbg !2100
  %conv1 = zext i1 %cmp to i64, !dbg !2100
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2100
  %tobool = icmp eq i64 %expval, 0, !dbg !2100
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2100

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2100
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2100
  br label %cond.end, !dbg !2100

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2100
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2100
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2100
  store i8 %conv2, i8* %0, align 1, !dbg !2100
  %conv6 = and i32 %__c, 255, !dbg !2100
  br label %cond.end, !dbg !2100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2100
  ret i32 %cond, !dbg !2101
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2105, metadata !DIExpression()), !dbg !2106
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2107
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2107
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2107
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2107
  %cmp = icmp uge i8* %0, %1, !dbg !2107
  %conv1 = zext i1 %cmp to i64, !dbg !2107
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2107
  %tobool = icmp eq i64 %expval, 0, !dbg !2107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2107

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2107
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2107
  br label %cond.end, !dbg !2107

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2107
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2107
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2107
  store i8 %conv2, i8* %0, align 1, !dbg !2107
  %conv6 = and i32 %__c, 255, !dbg !2107
  br label %cond.end, !dbg !2107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2107
  ret i32 %cond, !dbg !2108
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2109 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2111, metadata !DIExpression()), !dbg !2112
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2113
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2113
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2113
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2113
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2113
  %cmp = icmp uge i8* %1, %2, !dbg !2113
  %conv1 = zext i1 %cmp to i64, !dbg !2113
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2113
  %tobool = icmp eq i64 %expval, 0, !dbg !2113
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2113

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2113
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2113
  br label %cond.end, !dbg !2113

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2113
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2113
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2113
  store i8 %conv4, i8* %1, align 1, !dbg !2113
  %conv6 = and i32 %__c, 255, !dbg !2113
  br label %cond.end, !dbg !2113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2113
  ret i32 %cond, !dbg !2114
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2123, metadata !DIExpression()), !dbg !2124
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2125
  ret i64 %call, !dbg !2126
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2129, metadata !DIExpression()), !dbg !2130
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2131
  %0 = load i32, i32* %_flags, align 8, !dbg !2131
  %and = lshr i32 %0, 4, !dbg !2131
  %and.lobit = and i32 %and, 1, !dbg !2131
  ret i32 %and.lobit, !dbg !2132
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2135, metadata !DIExpression()), !dbg !2136
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2137
  %0 = load i32, i32* %_flags, align 8, !dbg !2137
  %and = lshr i32 %0, 5, !dbg !2137
  %and.lobit = and i32 %and, 1, !dbg !2137
  ret i32 %and.lobit, !dbg !2138
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2142, metadata !DIExpression()), !dbg !2143
  %__c.off = add i32 %__c, 128, !dbg !2144
  %0 = icmp ult i32 %__c.off, 384, !dbg !2144
  br i1 %0, label %cond.true, label %cond.end, !dbg !2144

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2145
  %1 = load i32*, i32** %call, align 8, !dbg !2146
  %idxprom = sext i32 %__c to i64, !dbg !2147
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2147
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2147
  br label %cond.end, !dbg !2148

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2148
  ret i32 %cond, !dbg !2149
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2152, metadata !DIExpression()), !dbg !2153
  %__c.off = add i32 %__c, 128, !dbg !2154
  %0 = icmp ult i32 %__c.off, 384, !dbg !2154
  br i1 %0, label %cond.true, label %cond.end, !dbg !2154

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2155
  %1 = load i32*, i32** %call, align 8, !dbg !2156
  %idxprom = sext i32 %__c to i64, !dbg !2157
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2157
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2157
  br label %cond.end, !dbg !2158

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2158
  ret i32 %cond, !dbg !2159
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2160 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2165, metadata !DIExpression()), !dbg !2166
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2167
  %conv = trunc i64 %call to i32, !dbg !2168
  ret i32 %conv, !dbg !2169
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2176
  ret i64 %call, !dbg !2177
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2183, metadata !DIExpression()), !dbg !2184
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2185
  ret i64 %call, !dbg !2186
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2194, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2195, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2196, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2197, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 0, metadata !2198, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2199, metadata !DIExpression()), !dbg !2203
  br label %while.cond, !dbg !2204

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2205
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2199, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2198, metadata !DIExpression()), !dbg !2203
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2206
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2204

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2207
  %div = lshr i64 %add, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %div, metadata !2200, metadata !DIExpression()), !dbg !2203
  %mul = mul i64 %div, %__size, !dbg !2210
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2201, metadata !DIExpression()), !dbg !2203
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %call, metadata !2202, metadata !DIExpression()), !dbg !2203
  %cmp1 = icmp slt i32 %call, 0, !dbg !2213
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2215

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2216
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2218

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2198, metadata !DIExpression()), !dbg !2203
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2203
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2199, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2198, metadata !DIExpression()), !dbg !2203
  br label %while.cond, !dbg !2204, !llvm.loop !2220

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2203
  ret i8* %retval.0, !dbg !2222
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2229, metadata !DIExpression()), !dbg !2230
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2231
  ret double %call, !dbg !2232
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %base, metadata !2244, metadata !DIExpression()), !dbg !2245
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2246
  ret i64 %call, !dbg !2247
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2248 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %base, metadata !2256, metadata !DIExpression()), !dbg !2257
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2258
  ret i64 %call, !dbg !2259
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2260 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %base, metadata !2273, metadata !DIExpression()), !dbg !2274
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2275
  ret i64 %call, !dbg !2276
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2277 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2281, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %base, metadata !2283, metadata !DIExpression()), !dbg !2284
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2285
  ret i64 %call, !dbg !2286
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2287 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2328, metadata !DIExpression()), !dbg !2329
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2330
  ret i32 %call, !dbg !2331
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2335, metadata !DIExpression()), !dbg !2336
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2337
  ret i32 %call, !dbg !2338
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2344, metadata !DIExpression()), !dbg !2345
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2346
  ret i32 %call, !dbg !2347
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2348 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2357
  ret i32 %call, !dbg !2358
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2359 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2365, metadata !DIExpression()), !dbg !2366
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2365, metadata !DIExpression(DW_OP_deref)), !dbg !2366
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2367
  ret i32 %call, !dbg !2368
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2369 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2373, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2376, metadata !DIExpression()), !dbg !2377
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2376, metadata !DIExpression(DW_OP_deref)), !dbg !2377
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2378
  ret i32 %call, !dbg !2379
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2421, metadata !DIExpression()), !dbg !2422
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2423
  ret i32 %call, !dbg !2424
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2425 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2432, metadata !DIExpression()), !dbg !2433
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_pass_return_slot() #5 !dbg !2436 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2437
  %cmp = icmp sgt i32 %0, 0, !dbg !2438
  %conv1 = zext i1 %cmp to i8, !dbg !2437
  ret i8 %conv1, !dbg !2439
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_nrv() #5 !dbg !2440 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %data = alloca %struct.nrv_data, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp178 = alloca %struct.gimple_stmt_iterator, align 8
  %wi = alloca %struct.walk_stmt_info, align 8
  %0 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !2473
  %result1 = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %0, i64 0, i32 3, !dbg !2473
  %1 = load %union.tree_node*, %union.tree_node** %result1, align 8, !dbg !2473
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2442, metadata !DIExpression()), !dbg !2474
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2475
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2475
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2443, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2444, metadata !DIExpression()), !dbg !2474
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2476
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2476
  %4 = bitcast %struct.nrv_data* %data to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2477
  %5 = bitcast %struct.tree_decl_non_common* %0 to %union.tree_node*, !dbg !2478
  %call = tail call i32 @aggregate_value_p(%union.tree_node* %1, %union.tree_node* %5) #6, !dbg !2480
  %tobool = icmp eq i32 %call, 0, !dbg !2480
  br i1 %tobool, label %cleanup213, label %if.end, !dbg !2481

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i8 @is_gimple_reg_type(%union.tree_node* %2) #6, !dbg !2482
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2482
  br i1 %tobool3, label %if.end5, label %cleanup213, !dbg !2484

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2485
  %6 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2485
  %tobool6 = icmp eq %union.tree_node* %6, null, !dbg !2485
  br i1 %tobool6, label %if.end8, label %cleanup213, !dbg !2487

if.end8:                                          ; preds = %if.end5
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2488
  %bf.load = load i64, i64* %7, align 8, !dbg !2488
  %bf.cast6 = and i64 %bf.load, 262144, !dbg !2488
  %tobool9 = icmp eq i64 %bf.cast6, 0, !dbg !2488
  br i1 %tobool9, label %if.end11, label %cleanup213, !dbg !2490

if.end11:                                         ; preds = %if.end8
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2491
  %cfg = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2491
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2491
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2491
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2491
  %11 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2492
  %align79 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2493
  br label %for.cond, !dbg !2491

for.cond:                                         ; preds = %for.inc111, %if.end11
  %12 = phi %struct.control_flow_graph* [ %9, %if.end11 ], [ %.pre21, %for.inc111 ], !dbg !2495
  %found.0 = phi %union.tree_node* [ null, %if.end11 ], [ %found.1.lcssa, %for.inc111 ], !dbg !2496
  %.pn = phi %struct.basic_block_def* [ %10, %if.end11 ], [ %bb.0, %for.inc111 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2497
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2445, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.0, metadata !2444, metadata !DIExpression()), !dbg !2474
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2495
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2495
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !2495
  br i1 %cmp, label %for.end113, label %for.body, !dbg !2491

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !2498
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !2498
  br label %for.cond14, !dbg !2499

for.cond14:                                       ; preds = %for.inc, %for.body
  %found.1 = phi %union.tree_node* [ %found.0, %for.body ], [ %found.6, %for.inc ], !dbg !2496
  call void @llvm.dbg.value(metadata %union.tree_node* %found.1, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  %call15 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2500
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2501
  br i1 %tobool16, label %for.body17, label %for.inc111, !dbg !2502

for.body17:                                       ; preds = %for.cond14
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  %call18 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2503
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call18, metadata !2448, metadata !DIExpression()), !dbg !2504
  %call19 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call18) #8, !dbg !2505
  %cmp20 = icmp eq i32 %call19, 9, !dbg !2506
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !2507

if.then21:                                        ; preds = %for.body17
  %call22 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call18) #8, !dbg !2508
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !2455, metadata !DIExpression()), !dbg !2504
  %tobool23 = icmp eq %union.tree_node* %call22, null, !dbg !2510
  %cmp25 = icmp eq %union.tree_node* %call22, %1, !dbg !2512
  %or.cond4 = or i1 %tobool23, %cmp25, !dbg !2513
  br i1 %or.cond4, label %if.end106, label %cond.true, !dbg !2513

cond.true:                                        ; preds = %if.then21
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2512
  br label %if.end106, !dbg !2512

if.else:                                          ; preds = %for.body17
  %call27 = call fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %call18) #8, !dbg !2514
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2514
  br i1 %tobool28, label %if.else89, label %land.lhs.true, !dbg !2515

land.lhs.true:                                    ; preds = %if.else
  %call29 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call18) #6, !dbg !2516
  %cmp30 = icmp eq %union.tree_node* %call29, %1, !dbg !2517
  br i1 %cmp30, label %if.then32, label %if.else89, !dbg !2518

if.then32:                                        ; preds = %land.lhs.true
  %call33 = call zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d* %call18) #6, !dbg !2519
  %tobool34 = icmp eq i8 %call33, 0, !dbg !2519
  br i1 %tobool34, label %cleanup, label %if.end36, !dbg !2521

if.end36:                                         ; preds = %if.then32
  %call37 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call18) #8, !dbg !2522
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !2456, metadata !DIExpression()), !dbg !2523
  %cmp38 = icmp eq %union.tree_node* %found.1, null, !dbg !2524
  br i1 %cmp38, label %if.end46, label %if.then40, !dbg !2526

if.then40:                                        ; preds = %if.end36
  %cmp41 = icmp eq %union.tree_node* %found.1, %call37, !dbg !2527
  br i1 %cmp41, label %if.end46, label %cleanup, !dbg !2530

if.end46:                                         ; preds = %if.then40, %if.end36
  %found.2 = phi %union.tree_node* [ %found.1, %if.then40 ], [ %call37, %if.end36 ], !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.2, metadata !2444, metadata !DIExpression()), !dbg !2474
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %found.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2531
  %bf.load48 = load i64, i64* %14, align 8, !dbg !2531
  %bf.cast5011 = and i64 %bf.load48, 65535, !dbg !2532
  %cmp51 = icmp eq i64 %bf.cast5011, 32, !dbg !2532
  br i1 %cmp51, label %lor.lhs.false, label %cleanup, !dbg !2533

lor.lhs.false:                                    ; preds = %if.end46
  %bf.cast5712 = and i64 %bf.load48, 524288, !dbg !2534
  %tobool58 = icmp eq i64 %bf.cast5712, 0, !dbg !2534
  br i1 %tobool58, label %lor.lhs.false59, label %cleanup, !dbg !2535

lor.lhs.false59:                                  ; preds = %lor.lhs.false
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %found.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2536
  %15 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !2536
  %16 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2537
  %cmp61 = icmp eq %union.tree_node* %15, %16, !dbg !2538
  br i1 %cmp61, label %lor.lhs.false63, label %cleanup, !dbg !2539

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %bf.cast6813 = and i64 %bf.load48, 67108864, !dbg !2540
  %tobool69 = icmp eq i64 %bf.cast6813, 0, !dbg !2540
  br i1 %tobool69, label %lor.lhs.false70, label %cleanup, !dbg !2541

lor.lhs.false70:                                  ; preds = %lor.lhs.false63
  %bf.cast7514 = and i64 %bf.load48, 262144, !dbg !2542
  %tobool76 = icmp eq i64 %bf.cast7514, 0, !dbg !2542
  br i1 %tobool76, label %lor.lhs.false77, label %cleanup, !dbg !2543

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %align = getelementptr inbounds %union.tree_node, %union.tree_node* %found.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2544
  %17 = load i32, i32* %align, align 8, !dbg !2544
  %18 = load i32, i32* %align79, align 8, !dbg !2545
  %cmp80 = icmp ugt i32 %17, %18, !dbg !2546
  br i1 %cmp80, label %cleanup, label %lor.lhs.false82, !dbg !2547

lor.lhs.false82:                                  ; preds = %lor.lhs.false77
  %type84 = getelementptr inbounds %union.tree_node, %union.tree_node* %found.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2548
  %19 = load %union.tree_node*, %union.tree_node** %type84, align 8, !dbg !2548
  %call85 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %2, %union.tree_node* %19) #6, !dbg !2549
  %tobool86 = icmp eq i8 %call85, 0, !dbg !2549
  %spec.select = zext i1 %tobool86 to i32, !dbg !2550
  br label %cleanup, !dbg !2550

cleanup:                                          ; preds = %if.then40, %lor.lhs.false70, %lor.lhs.false63, %lor.lhs.false59, %lor.lhs.false, %if.end46, %if.then32, %lor.lhs.false82, %lor.lhs.false77
  %found.3 = phi %union.tree_node* [ %found.1, %if.then32 ], [ %found.1, %if.then40 ], [ %found.2, %lor.lhs.false77 ], [ %found.2, %lor.lhs.false70 ], [ %found.2, %lor.lhs.false63 ], [ %found.2, %lor.lhs.false59 ], [ %found.2, %lor.lhs.false ], [ %found.2, %if.end46 ], [ %found.2, %lor.lhs.false82 ], !dbg !2496
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then32 ], [ 1, %if.then40 ], [ 1, %lor.lhs.false77 ], [ 1, %lor.lhs.false70 ], [ 1, %lor.lhs.false63 ], [ 1, %lor.lhs.false59 ], [ 1, %lor.lhs.false ], [ 1, %if.end46 ], [ %spec.select, %lor.lhs.false82 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %found.3, metadata !2444, metadata !DIExpression()), !dbg !2474
  %cond3 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond3, label %if.end106, label %cleanup107

if.else89:                                        ; preds = %if.else, %land.lhs.true
  %call90 = call fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %call18) #8, !dbg !2551
  %tobool91 = icmp eq i8 %call90, 0, !dbg !2551
  br i1 %tobool91, label %if.end106, label %if.then92, !dbg !2552

if.then92:                                        ; preds = %if.else89
  %call93 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call18) #6, !dbg !2553
  %call94 = call %union.tree_node* @get_base_address(%union.tree_node* %call93) #6, !dbg !2554
  call void @llvm.dbg.value(metadata %union.tree_node* %call94, metadata !2460, metadata !DIExpression()), !dbg !2555
  %tobool95 = icmp ne %union.tree_node* %call94, null, !dbg !2556
  %cmp97 = icmp eq %union.tree_node* %call94, %1, !dbg !2558
  %or.cond = and i1 %tobool95, %cmp97, !dbg !2559
  %cleanup.dest.slot.1 = zext i1 %or.cond to i32, !dbg !2559
  br i1 %or.cond, label %cleanup107, label %if.end106

if.end106:                                        ; preds = %if.then92, %if.else89, %if.then21, %cleanup, %cond.true
  %found.5 = phi %union.tree_node* [ %found.1, %cond.true ], [ %found.1, %if.then21 ], [ %found.3, %cleanup ], [ %found.1, %if.then92 ], [ %found.1, %if.else89 ], !dbg !2496
  call void @llvm.dbg.value(metadata %union.tree_node* %found.5, metadata !2444, metadata !DIExpression()), !dbg !2474
  br label %cleanup107, !dbg !2560

cleanup107:                                       ; preds = %if.then92, %cleanup, %if.end106
  %found.6 = phi %union.tree_node* [ %found.5, %if.end106 ], [ %found.3, %cleanup ], [ %found.1, %if.then92 ], !dbg !2496
  %cleanup.dest.slot.2 = phi i32 [ 0, %if.end106 ], [ %cleanup.dest.slot.0, %cleanup ], [ %cleanup.dest.slot.1, %if.then92 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %found.6, metadata !2444, metadata !DIExpression()), !dbg !2474
  %cond1 = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond1, label %for.inc, label %cleanup213.loopexit

for.inc:                                          ; preds = %cleanup107
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2561
  br label %for.cond14, !dbg !2562, !llvm.loop !2563

for.inc111:                                       ; preds = %for.cond14
  %found.1.lcssa = phi %union.tree_node* [ %found.1, %for.cond14 ], !dbg !2496
  call void @llvm.dbg.value(metadata %union.tree_node* %found.1.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.1.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.1.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2495
  %cfg13.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2565
  %.pre21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13.phi.trans.insert, align 8, !dbg !2495
  br label %for.cond, !dbg !2495, !llvm.loop !2566

for.end113:                                       ; preds = %for.cond
  %found.0.lcssa = phi %union.tree_node* [ %found.0, %for.cond ], !dbg !2496
  call void @llvm.dbg.value(metadata %union.tree_node* %found.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %union.tree_node* %found.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2474
  %tobool114 = icmp eq %union.tree_node* %found.0.lcssa, null, !dbg !2568
  br i1 %tobool114, label %cleanup213, label %if.end116, !dbg !2570

if.end116:                                        ; preds = %for.end113
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2571
  %tobool117 = icmp eq %struct._IO_FILE* %20, null, !dbg !2571
  br i1 %tobool117, label %if.end124, label %land.lhs.true118, !dbg !2573

land.lhs.true118:                                 ; preds = %if.end116
  %21 = load i32, i32* @dump_flags, align 4, !dbg !2574
  %and = and i32 %21, 8, !dbg !2575
  %tobool119 = icmp eq i32 %and, 0, !dbg !2575
  br i1 %tobool119, label %if.end124, label %if.then120, !dbg !2576

if.then120:                                       ; preds = %land.lhs.true118
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2577
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2579
  %23 = load i32, i32* @dump_flags, align 4, !dbg !2580
  call void @print_generic_expr(%struct._IO_FILE* %22, %union.tree_node* nonnull %found.0.lcssa, i32 %23) #6, !dbg !2581
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2582
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2583
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2584
  %26 = load i32, i32* @dump_flags, align 4, !dbg !2585
  call void @print_generic_expr(%struct._IO_FILE* %25, %union.tree_node* %1, i32 %26) #6, !dbg !2586
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2587
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2588
  br label %if.end124, !dbg !2589

if.end124:                                        ; preds = %land.lhs.true118, %if.end116, %if.then120
  %ignored_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %found.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2590
  %28 = bitcast i40* %ignored_flag to i64*, !dbg !2590
  %bf.load126 = load i64, i64* %28, align 8, !dbg !2590
  %bf.cast1297 = and i64 %bf.load126, 1024, !dbg !2590
  %tobool130 = icmp eq i64 %bf.cast1297, 0, !dbg !2590
  br i1 %tobool130, label %land.lhs.true131, label %if.end153, !dbg !2592

land.lhs.true131:                                 ; preds = %if.end124
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %found.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2593
  %29 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8, !dbg !2593
  %tobool133 = icmp eq %union.tree_node* %29, null, !dbg !2593
  br i1 %tobool133, label %if.then141, label %land.lhs.true134, !dbg !2594

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %context138 = getelementptr inbounds %union.tree_node, %union.tree_node* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2595
  %30 = load %union.tree_node*, %union.tree_node** %context138, align 8, !dbg !2595
  %31 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2596
  %cmp139 = icmp eq %union.tree_node* %30, %31, !dbg !2597
  br i1 %cmp139, label %if.then141, label %if.end153, !dbg !2598

if.then141:                                       ; preds = %land.lhs.true134, %land.lhs.true131
  %name143 = getelementptr inbounds %union.tree_node, %union.tree_node* %found.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2599
  %32 = bitcast %union.tree_node** %name143 to i64*, !dbg !2599
  %33 = load i64, i64* %32, align 8, !dbg !2599
  %34 = bitcast %union.tree_node** %name to i64*, !dbg !2601
  store i64 %33, i64* %34, align 8, !dbg !2601
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %found.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2602
  %35 = load i32, i32* %locus, align 8, !dbg !2602
  %locus148 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2603
  store i32 %35, i32* %locus148, align 8, !dbg !2604
  %36 = bitcast %union.tree_node** %abstract_origin to i64*, !dbg !2605
  %37 = load i64, i64* %36, align 8, !dbg !2605
  %abstract_origin152 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2606
  %38 = bitcast %union.tree_node** %abstract_origin152 to i64*, !dbg !2607
  store i64 %37, i64* %38, align 8, !dbg !2607
  br label %if.end153, !dbg !2608

if.end153:                                        ; preds = %land.lhs.true134, %if.end124, %if.then141
  %39 = getelementptr inbounds %union.tree_node, %union.tree_node* %found.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2609
  %bf.load155 = load i64, i64* %39, align 8, !dbg !2609
  %bf.load160 = load i64, i64* %7, align 8, !dbg !2610
  %40 = and i64 %bf.load155, 262144, !dbg !2610
  %bf.set = or i64 %40, %bf.load160, !dbg !2610
  store i64 %bf.set, i64* %7, align 8, !dbg !2610
  %var = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %data, i64 0, i32 0, !dbg !2611
  store %union.tree_node* %found.0.lcssa, %union.tree_node** %var, align 8, !dbg !2612
  %result166 = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %data, i64 0, i32 1, !dbg !2613
  store %union.tree_node* %1, %union.tree_node** %result166, align 8, !dbg !2614
  %41 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2615
  %cfg168 = getelementptr inbounds %struct.function, %struct.function* %41, i64 0, i32 1, !dbg !2615
  %42 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg168, align 8, !dbg !2615
  %x_entry_block_ptr169 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %42, i64 0, i32 0, !dbg !2615
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr169, align 8, !dbg !2615
  %44 = bitcast %struct.gimple_stmt_iterator* %tmp178 to i8*, !dbg !2616
  %45 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !2617
  %info = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 1, !dbg !2617
  %46 = bitcast i8** %info to %struct.nrv_data**, !dbg !2617
  %modified = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %data, i64 0, i32 2, !dbg !2617
  br label %for.cond171, !dbg !2615

for.cond171:                                      ; preds = %for.inc207, %if.end153
  %47 = phi %struct.control_flow_graph* [ %42, %if.end153 ], [ %.pre23, %for.inc207 ], !dbg !2618
  %.pn15 = phi %struct.basic_block_def* [ %43, %if.end153 ], [ %bb.1, %for.inc207 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn15, i64 0, i32 6, !dbg !2619
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2445, metadata !DIExpression()), !dbg !2474
  %x_exit_block_ptr174 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %47, i64 0, i32 1, !dbg !2618
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr174, align 8, !dbg !2618
  %cmp175 = icmp eq %struct.basic_block_def* %bb.1, %48, !dbg !2618
  br i1 %cmp175, label %for.end209, label %for.body177, !dbg !2615

for.body177:                                      ; preds = %for.cond171
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44) #7, !dbg !2620
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp178, %struct.basic_block_def* %bb.1) #8, !dbg !2620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %44, i64 24, i1 false), !dbg !2620
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44) #7, !dbg !2620
  br label %for.cond179, !dbg !2621

for.cond179:                                      ; preds = %if.end205, %for.body177
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  %call180 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2622
  %tobool181 = icmp eq i8 %call180, 0, !dbg !2623
  br i1 %tobool181, label %for.body183, label %for.inc207, !dbg !2624

for.body183:                                      ; preds = %for.cond179
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  %call185 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2625
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call185, metadata !2463, metadata !DIExpression()), !dbg !2626
  %call186 = call zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d* %call185) #6, !dbg !2627
  %tobool188 = icmp eq i8 %call186, 0, !dbg !2627
  br i1 %tobool188, label %if.else198, label %land.lhs.true189, !dbg !2628

land.lhs.true189:                                 ; preds = %for.body183
  %call190 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call185) #8, !dbg !2629
  %cmp191 = icmp eq %union.tree_node* %call190, %1, !dbg !2630
  br i1 %cmp191, label %land.lhs.true193, label %if.else198, !dbg !2631

land.lhs.true193:                                 ; preds = %land.lhs.true189
  %call194 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call185) #8, !dbg !2632
  %cmp195 = icmp eq %union.tree_node* %call194, %found.0.lcssa, !dbg !2633
  br i1 %cmp195, label %if.then197, label %if.else198, !dbg !2634

if.then197:                                       ; preds = %land.lhs.true193
  call void @unlink_stmt_vdef(%union.gimple_statement_d* %call185) #6, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2637
  br label %if.end205, !dbg !2638

if.else198:                                       ; preds = %for.body183, %land.lhs.true193, %land.lhs.true189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %45) #7, !dbg !2639
  %call199 = call i8* @memset(i8* nonnull %45, i32 0, i64 56) #6, !dbg !2640
  store %struct.nrv_data* %data, %struct.nrv_data** %46, align 8, !dbg !2641
  store i32 0, i32* %modified, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.walk_stmt_info* %wi, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2617
  %call200 = call %union.tree_node* @walk_gimple_op(%union.gimple_statement_d* %call185, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @finalize_nrv_r, %struct.walk_stmt_info* nonnull %wi) #6, !dbg !2643
  %49 = load i32, i32* %modified, align 8, !dbg !2644
  %tobool202 = icmp eq i32 %49, 0, !dbg !2646
  br i1 %tobool202, label %if.end204, label %if.then203, !dbg !2647

if.then203:                                       ; preds = %if.else198
  call fastcc void @update_stmt(%union.gimple_statement_d* %call185) #8, !dbg !2648
  br label %if.end204, !dbg !2648

if.end204:                                        ; preds = %if.else198, %if.then203
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %45) #7, !dbg !2650
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.then197
  br label %for.cond179, !dbg !2651, !llvm.loop !2652

for.inc207:                                       ; preds = %for.cond179
  %.pre22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2618
  %cfg173.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre22, i64 0, i32 1, !dbg !2654
  %.pre23 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg173.phi.trans.insert, align 8, !dbg !2618
  br label %for.cond171, !dbg !2618, !llvm.loop !2655

for.end209:                                       ; preds = %for.cond171
  %call210 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* nonnull %found.0.lcssa) #8, !dbg !2657
  %50 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call210, i64 0, i32 0, !dbg !2658
  %bf.load211 = load i8, i8* %50, align 8, !dbg !2659
  %bf.clear212 = and i8 %bf.load211, -3, !dbg !2659
  store i8 %bf.clear212, i8* %50, align 8, !dbg !2659
  br label %cleanup213, !dbg !2660

cleanup213.loopexit:                              ; preds = %cleanup107
  br label %cleanup213, !dbg !2661

cleanup213:                                       ; preds = %cleanup213.loopexit, %for.end113, %if.end8, %if.end5, %if.end, %entry, %for.end209
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2661
  ret i32 0, !dbg !2661
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_return_slot_opt() #5 !dbg !2662 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2674
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2674
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2674
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2674
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2674
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2675
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2676
  br label %for.cond, !dbg !2674

for.cond:                                         ; preds = %for.end, %entry
  %5 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.end ], !dbg !2677
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2678
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2664, metadata !DIExpression()), !dbg !2679
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2677
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2677
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2677
  br i1 %cmp, label %for.end22, label %for.body, !dbg !2674

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2681
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2681
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2681
  br label %for.cond3, !dbg !2682

for.cond3:                                        ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2683
  %tobool = icmp eq i8 %call, 0, !dbg !2684
  br i1 %tobool, label %for.body4, label %for.end, !dbg !2685

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2686
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2669, metadata !DIExpression()), !dbg !2687
  %call6 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call5) #8, !dbg !2688
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2688
  br i1 %tobool7, label %for.inc, label %land.lhs.true, !dbg !2690

land.lhs.true:                                    ; preds = %for.body4
  %call8 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call5) #8, !dbg !2691
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !2691
  br i1 %tobool9, label %for.inc, label %land.lhs.true10, !dbg !2692

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = call fastcc zeroext i8 @gimple_call_return_slot_opt_p(%union.gimple_statement_d* %call5) #8, !dbg !2693
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2693
  br i1 %tobool12, label %land.lhs.true13, label %for.inc, !dbg !2694

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call5) #8, !dbg !2695
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2695
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2695
  %call15 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call5) #8, !dbg !2696
  %call16 = call i32 @aggregate_value_p(%union.tree_node* %7, %union.tree_node* %call15) #6, !dbg !2697
  %tobool17 = icmp eq i32 %call16, 0, !dbg !2697
  br i1 %tobool17, label %for.inc, label %if.then, !dbg !2698

if.then:                                          ; preds = %land.lhs.true13
  %call18 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call5) #8, !dbg !2699
  %call19 = call fastcc zeroext i8 @dest_safe_for_nrv_p(%union.tree_node* %call18) #8, !dbg !2701
  call void @llvm.dbg.value(metadata i8 %call19, metadata !2673, metadata !DIExpression()), !dbg !2687
  call fastcc void @gimple_call_set_return_slot_opt(%union.gimple_statement_d* %call5, i8 zeroext %call19) #8, !dbg !2702
  br label %for.inc, !dbg !2703

for.inc:                                          ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true, %for.body4, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2704
  br label %for.cond3, !dbg !2705, !llvm.loop !2706

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2708
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2677
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2709
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2677
  br label %for.cond, !dbg !2677, !llvm.loop !2710

for.end22:                                        ; preds = %for.cond
  ret i32 0, !dbg !2712
}

declare dso_local i32 @aggregate_value_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg_type(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2713 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2718, metadata !DIExpression()), !dbg !2721
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2719, metadata !DIExpression()), !dbg !2720
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2723
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2724
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2725
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2726
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2727
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2728
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2729
  ret void, !dbg !2730
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2731 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2735, metadata !DIExpression()), !dbg !2736
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2737
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2737
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2738
  %conv1 = zext i1 %cmp to i8, !dbg !2739
  ret i8 %conv1, !dbg !2740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2741 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2745, metadata !DIExpression()), !dbg !2746
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2747
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2747
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2748
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2748
  ret %union.gimple_statement_d* %1, !dbg !2749
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2750 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2755, metadata !DIExpression()), !dbg !2756
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2757
  %bf.load = load i32, i32* %0, align 8, !dbg !2757
  %bf.clear = and i32 %bf.load, 255, !dbg !2757
  ret i32 %bf.clear, !dbg !2758
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2763, metadata !DIExpression()), !dbg !2764
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2765
  ret %union.tree_node* %call, !dbg !2766
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2767 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2771, metadata !DIExpression()), !dbg !2772
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #8, !dbg !2773
  %tobool = icmp eq i8 %call, 0, !dbg !2773
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2774

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #8, !dbg !2775
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2775
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !2776

land.rhs:                                         ; preds = %lor.rhs
  %call4 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !2777
  %cmp = icmp ne %union.tree_node* %call4, null, !dbg !2778
  %phitmp = zext i1 %cmp to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %0 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2779
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2780 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2782, metadata !DIExpression()), !dbg !2783
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2784
  ret %union.tree_node* %call, !dbg !2785
}

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2791, metadata !DIExpression()), !dbg !2792
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2793
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2793
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2794
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2794
  %2 = load i64, i64* %1, align 8, !dbg !2794
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2795
  store i64 %2, i64* %3, align 8, !dbg !2795
  ret void, !dbg !2796
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2797 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2799, metadata !DIExpression()), !dbg !2800
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2801
  ret %union.tree_node* %call, !dbg !2802
}

declare dso_local void @unlink_stmt_vdef(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @walk_gimple_op(%union.gimple_statement_d*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, %struct.walk_stmt_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @finalize_nrv_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !2808, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %data, metadata !2810, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %data, metadata !2811, metadata !DIExpression()), !dbg !2813
  %info = getelementptr inbounds i8, i8* %data, i64 24, !dbg !2814
  %0 = bitcast i8* %info to %struct.nrv_data**, !dbg !2814
  %1 = load %struct.nrv_data*, %struct.nrv_data** %0, align 8, !dbg !2814
  call void @llvm.dbg.value(metadata %struct.nrv_data* %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  %2 = bitcast %union.tree_node** %tp to i64**, !dbg !2815
  %3 = load i64*, i64** %2, align 8, !dbg !2815
  %bf.load = load i64, i64* %3, align 8, !dbg !2815
  %bf.cast = and i64 %bf.load, 65535, !dbg !2815
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2815
  %4 = load i32, i32* %arrayidx, align 4, !dbg !2815
  %cmp = icmp eq i32 %4, 2, !dbg !2815
  br i1 %cmp, label %if.then, label %if.else, !dbg !2817

if.then:                                          ; preds = %entry
  store i32 0, i32* %walk_subtrees, align 4, !dbg !2818
  br label %if.end3, !dbg !2819

if.else:                                          ; preds = %entry
  %5 = bitcast i64* %3 to %union.tree_node*, !dbg !2817
  %var = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %1, i64 0, i32 0, !dbg !2820
  %6 = load %union.tree_node*, %union.tree_node** %var, align 8, !dbg !2820
  %cmp1 = icmp eq %union.tree_node* %6, %5, !dbg !2822
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2823

if.then2:                                         ; preds = %if.else
  %result = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %1, i64 0, i32 1, !dbg !2824
  %7 = bitcast %union.tree_node** %result to i64*, !dbg !2824
  %8 = load i64, i64* %7, align 8, !dbg !2824
  %9 = bitcast %union.tree_node** %tp to i64*, !dbg !2826
  store i64 %8, i64* %9, align 8, !dbg !2826
  %modified = getelementptr inbounds %struct.nrv_data, %struct.nrv_data* %1, i64 0, i32 2, !dbg !2827
  store i32 1, i32* %modified, align 8, !dbg !2828
  br label %if.end3, !dbg !2829

if.end3:                                          ; preds = %if.else, %if.then2, %if.then
  ret %union.tree_node* null, !dbg !2830
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2831 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2835, metadata !DIExpression()), !dbg !2836
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !2837
  %tobool = icmp eq i8 %call, 0, !dbg !2837
  br i1 %tobool, label %if.end, label %if.then, !dbg !2839

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !2840
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2842
  br label %if.end, !dbg !2843

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2844
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t) unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2854, metadata !DIExpression()), !dbg !2858
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2859
  %bf.load = load i64, i64* %0, align 8, !dbg !2859
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2859
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2859
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2859

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !2859
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !2859
  br label %cond.end19, !dbg !2859

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !2859
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !2859

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2859
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !2859
  br label %cond.end19, !dbg !2859

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !2859
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2859
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !2859
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !2859
  br label %cond.end19, !dbg !2859

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !2859
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !2855, metadata !DIExpression()), !dbg !2858
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !2860
  br i1 %tobool, label %cond.end23, label %cond.true21, !dbg !2860

cond.true21:                                      ; preds = %cond.end19
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !2861
  br label %cond.end23, !dbg !2860

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %cond24 = phi %struct.var_ann_d* [ %4, %cond.true21 ], [ null, %cond.end19 ], !dbg !2860
  ret %struct.var_ann_d* %cond24, !dbg !2862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2863 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2870, metadata !DIExpression()), !dbg !2871
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2872
  %0 = load i32, i32* %flags, align 8, !dbg !2872
  %and = and i32 %0, 512, !dbg !2873
  %tobool = icmp eq i32 %and, 0, !dbg !2873
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2874

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2875
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2875
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2876
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2877

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2878
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2878
  br label %cond.end, !dbg !2877

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2877
  ret %struct.gimple_seq_d* %cond, !dbg !2879
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2880 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2887, metadata !DIExpression()), !dbg !2888
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2889
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2889

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2890
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2890
  br label %cond.end, !dbg !2889

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2889
  ret %struct.gimple_seq_node_d* %cond, !dbg !2891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2892 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2896, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %i, metadata !2897, metadata !DIExpression()), !dbg !2898
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !2899
  %tobool = icmp eq i8 %call, 0, !dbg !2899
  br i1 %tobool, label %return, label %if.then, !dbg !2901

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !2902
  %idxprom = zext i32 %i to i64, !dbg !2902
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !2902
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2902
  br label %return, !dbg !2904

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !2905
  ret %union.tree_node* %retval.0, !dbg !2906
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2907 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2911, metadata !DIExpression()), !dbg !2912
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2913
  %cmp = icmp eq i32 %call, 0, !dbg !2914
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2915

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2916
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2917
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2918
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2919 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2923, metadata !DIExpression()), !dbg !2925
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !2926
  %idxprom = zext i32 %call to i64, !dbg !2927
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !2927
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %0, metadata !2924, metadata !DIExpression()), !dbg !2925
  %cmp = icmp eq i64 %0, 0, !dbg !2928
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2928

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2928
  br label %cond.end, !dbg !2928

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !2929
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !2930
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !2931
  ret %union.tree_node** %2, !dbg !2932
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2933 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2937, metadata !DIExpression()), !dbg !2938
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2939
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !2940
  ret i32 %call1, !dbg !2941
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !2942 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !2946, metadata !DIExpression()), !dbg !2947
  %idxprom = zext i32 %code to i64, !dbg !2948
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !2948
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2948
  ret i32 %0, !dbg !2949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2950 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2952, metadata !DIExpression()), !dbg !2953
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2954
  %cmp = icmp eq i32 %call, 6, !dbg !2955
  %conv1 = zext i1 %cmp to i8, !dbg !2954
  ret i8 %conv1, !dbg !2956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2959, metadata !DIExpression()), !dbg !2960
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2961
  %cmp = icmp eq i32 %call, 8, !dbg !2962
  %conv1 = zext i1 %cmp to i8, !dbg !2961
  ret i8 %conv1, !dbg !2963
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2964 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2966, metadata !DIExpression()), !dbg !2967
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2968
  ret %union.tree_node* %call, !dbg !2969
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2970 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2972, metadata !DIExpression()), !dbg !2973
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !2974
  %bf.load = load i32, i32* %0, align 8, !dbg !2974
  %and = lshr i32 %bf.load, 18, !dbg !2975
  %1 = trunc i32 %and to i8, !dbg !2975
  %2 = and i8 %1, 1, !dbg !2975
  ret i8 %2, !dbg !2976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2977 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2979, metadata !DIExpression()), !dbg !2981
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !2982
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2980, metadata !DIExpression()), !dbg !2981
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2983
  %bf.load = load i64, i64* %0, align 8, !dbg !2983
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2985
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2985
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2986

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2987
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2987
  br label %cleanup, !dbg !2988

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2981
  ret %union.tree_node* %retval.0, !dbg !2989
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @dest_safe_for_nrv_p(%union.tree_node* %dest) unnamed_addr #5 !dbg !2990 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %dest, metadata !2994, metadata !DIExpression()), !dbg !2995
  br label %while.cond, !dbg !2996

while.cond:                                       ; preds = %while.body, %entry
  %dest.addr.0 = phi %union.tree_node* [ %dest, %entry ], [ %0, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %dest.addr.0, metadata !2994, metadata !DIExpression()), !dbg !2995
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %dest.addr.0) #8, !dbg !2997
  %tobool = icmp eq i8 %call, 0, !dbg !2996
  br i1 %tobool, label %while.end, label %while.body, !dbg !2996

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %dest.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2998
  %0 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2998
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2994, metadata !DIExpression()), !dbg !2995
  br label %while.cond, !dbg !2996, !llvm.loop !2999

while.end:                                        ; preds = %while.cond
  %dest.addr.0.lcssa = phi %union.tree_node* [ %dest.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %dest.addr.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %union.tree_node* %dest.addr.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %union.tree_node* %dest.addr.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !2995
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %dest.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3000
  %bf.load = load i64, i64* %1, align 8, !dbg !3000
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3000
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3000
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !3000

lor.lhs.false:                                    ; preds = %while.end
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3000
  br i1 %cmp5, label %if.end, label %lor.lhs.false6, !dbg !3000

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !3000
  br i1 %cmp11, label %if.end, label %lor.lhs.false12, !dbg !3000

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !3000
  br i1 %cmp17, label %land.lhs.true, label %return, !dbg !3000

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %dest.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3000
  %2 = bitcast i32* %var to i64**, !dbg !3000
  %3 = load i64*, i64** %2, align 8, !dbg !3000
  %bf.load19 = load i64, i64* %3, align 8, !dbg !3000
  %bf.cast216 = and i64 %bf.load19, 65535, !dbg !3000
  %cmp22 = icmp eq i64 %bf.cast216, 32, !dbg !3000
  br i1 %cmp22, label %if.end, label %lor.lhs.false23, !dbg !3000

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %cmp30 = icmp eq i64 %bf.cast216, 34, !dbg !3000
  br i1 %cmp30, label %if.end, label %lor.lhs.false31, !dbg !3000

lor.lhs.false31:                                  ; preds = %lor.lhs.false23
  %cmp38 = icmp eq i64 %bf.cast216, 36, !dbg !3000
  br i1 %cmp38, label %if.end, label %return, !dbg !3002

if.end:                                           ; preds = %lor.lhs.false31, %lor.lhs.false23, %land.lhs.true, %lor.lhs.false6, %lor.lhs.false, %while.end
  %cmp43 = icmp eq i64 %bf.cast1, 141, !dbg !3003
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !3005

if.then44:                                        ; preds = %if.end
  %var46 = getelementptr inbounds %union.tree_node, %union.tree_node* %dest.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3006
  %4 = bitcast i32* %var46 to %union.tree_node**, !dbg !3006
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2994, metadata !DIExpression()), !dbg !2995
  br label %if.end47, !dbg !3007

if.end47:                                         ; preds = %if.then44, %if.end
  %dest.addr.1 = phi %union.tree_node* [ %5, %if.then44 ], [ %dest.addr.0.lcssa, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %dest.addr.1, metadata !2994, metadata !DIExpression()), !dbg !2995
  %call48 = tail call fastcc zeroext i8 @is_call_used(%union.tree_node* %dest.addr.1) #8, !dbg !3008
  %tobool49 = icmp eq i8 %call48, 0, !dbg !3008
  %. = zext i1 %tobool49 to i8, !dbg !2995
  br label %return, !dbg !2995

return:                                           ; preds = %if.end47, %lor.lhs.false12, %lor.lhs.false31
  %retval.0 = phi i8 [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false12 ], [ %., %if.end47 ], !dbg !2995
  ret i8 %retval.0, !dbg !3010
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_return_slot_opt(%union.gimple_statement_d* %s, i8 zeroext %return_slot_opt_p) unnamed_addr #0 !dbg !3011 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %return_slot_opt_p, metadata !3016, metadata !DIExpression()), !dbg !3017
  %tobool = icmp eq i8 %return_slot_opt_p, 0, !dbg !3018
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !3020
  %bf.load = load i32, i32* %0, align 8, !dbg !3020
  br i1 %tobool, label %if.else, label %if.then, !dbg !3021

if.then:                                          ; preds = %entry
  %bf.lshr = and i32 %bf.load, -327680, !dbg !3022
  %or = or i32 %bf.lshr, 262144, !dbg !3022
  %bf.clear = and i32 %bf.load, 65535, !dbg !3022
  %bf.set = or i32 %bf.clear, %or, !dbg !3022
  br label %if.end, !dbg !3023

if.else:                                          ; preds = %entry
  %bf.set9 = and i32 %bf.load, -262145, !dbg !3024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %bf.set9, %if.else ], [ %bf.set, %if.then ], !dbg !3020
  store i32 %storemerge, i32* %0, align 8, !dbg !3020
  ret void, !dbg !3025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3028, metadata !DIExpression()), !dbg !3029
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3030
  ret %union.tree_node* %call, !dbg !3031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !3032 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3036, metadata !DIExpression()), !dbg !3037
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3038
  %bf.load = load i64, i64* %0, align 8, !dbg !3038
  %1 = trunc i64 %bf.load to i16, !dbg !3038
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !3039

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3040

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3042
  ret i8 %retval.0, !dbg !3043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_used(%union.tree_node* %var) unnamed_addr #0 !dbg !3044 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3046, metadata !DIExpression()), !dbg !3047
  %call = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) #8, !dbg !3048
  %tobool = icmp eq i8 %call, 0, !dbg !3048
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3049

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !3050
  %tobool3 = icmp eq i8 %call1, 0, !dbg !3050
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !3051

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3052
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3053
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3053
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 5, !dbg !3054
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %callused, %union.tree_node* %var) #6, !dbg !3055
  %tobool6 = icmp ne i8 %call4, 0, !dbg !3051
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) unnamed_addr #0 !dbg !3057 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3059, metadata !DIExpression()), !dbg !3060
  %call = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %var) #8, !dbg !3061
  %tobool = icmp eq i8 %call, 0, !dbg !3061
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3062

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !3063
  %tobool3 = icmp eq i8 %call1, 0, !dbg !3063
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !3064

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3065
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3066
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3066
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 4, !dbg !3067
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %escaped, %union.tree_node* %var) #6, !dbg !3068
  %tobool6 = icmp ne i8 %call4, 0, !dbg !3064
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3069
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) unnamed_addr #0 !dbg !3070 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3072, metadata !DIExpression()), !dbg !3073
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3074
  %bf.load = load i64, i64* %0, align 8, !dbg !3074
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3075
  %cmp = icmp eq i64 %bf.cast1, 33, !dbg !3075
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !3076

land.lhs.true:                                    ; preds = %entry
  %bf.cast43 = and i64 %bf.load, 67108864, !dbg !3077
  %tobool = icmp eq i64 %bf.cast43, 0, !dbg !3077
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true17, !dbg !3078

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.cast94 = and i64 %bf.load, 134217728, !dbg !3079
  %tobool10 = icmp eq i64 %bf.cast94, 0, !dbg !3079
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true17, !dbg !3080

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3081
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3081
  %bf.load12 = load i64, i64* %1, align 8, !dbg !3081
  %bf.cast155 = and i64 %bf.load12, 33554432, !dbg !3081
  %tobool16 = icmp eq i64 %bf.cast155, 0, !dbg !3081
  br i1 %tobool16, label %land.rhs, label %land.lhs.true17, !dbg !3082

land.lhs.true17:                                  ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %bf.cast228 = and i64 %bf.load, 1048576, !dbg !3083
  %tobool23 = icmp eq i64 %bf.cast228, 0, !dbg !3083
  br i1 %tobool23, label %land.rhs, label %land.lhs.true24, !dbg !3084

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3085
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3085
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !3085
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !3085
  %bf.load26 = load i32, i32* %needs_constructing_flag, align 4, !dbg !3085
  %bf.clear28 = and i32 %bf.load26, 2048, !dbg !3085
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !3085
  br i1 %tobool29, label %land.end, label %land.rhs, !dbg !3086

land.rhs:                                         ; preds = %land.lhs.true24, %land.lhs.true17, %lor.lhs.false11
  %bf.cast346 = and i64 %bf.load, 134217728, !dbg !3087
  %tobool35 = icmp eq i64 %bf.cast346, 0, !dbg !3087
  br i1 %tobool35, label %lor.lhs.false36, label %land.end, !dbg !3088

lor.lhs.false36:                                  ; preds = %land.rhs
  %decl_flag_138 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3089
  %4 = bitcast i40* %decl_flag_138 to i64*, !dbg !3089
  %bf.load39 = load i64, i64* %4, align 8, !dbg !3089
  %bf.cast427 = and i64 %bf.load39, 33554432, !dbg !3089
  %tobool43 = icmp eq i64 %bf.cast427, 0, !dbg !3089
  br i1 %tobool43, label %lor.rhs, label %land.end, !dbg !3090

lor.rhs:                                          ; preds = %lor.lhs.false36
  %bf.lshr46 = lshr i64 %bf.load, 18, !dbg !3091
  %5 = trunc i64 %bf.lshr46 to i8, !dbg !3090
  %6 = and i8 %5, 1, !dbg !3090
  br label %land.end, !dbg !3090

land.end:                                         ; preds = %land.lhs.true24, %lor.lhs.false36, %land.rhs, %entry, %lor.rhs
  %7 = phi i8 [ 0, %land.lhs.true24 ], [ 0, %entry ], [ 1, %lor.lhs.false36 ], [ 1, %land.rhs ], [ %6, %lor.rhs ]
  ret i8 %7, !dbg !3092
}

declare dso_local zeroext i8 @pt_solution_includes(%struct.pt_solution*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !3093 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3095, metadata !DIExpression()), !dbg !3096
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3097
  %bf.load = load i64, i64* %0, align 8, !dbg !3097
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !3097
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !3097
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3098

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3099
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3099
  %bf.load1 = load i64, i64* %1, align 8, !dbg !3099
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !3098
  %2 = trunc i64 %bf.cast42 to i8, !dbg !3098
  %3 = and i8 %2, 1, !dbg !3098
  br label %lor.end, !dbg !3098

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !3100
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
!llvm.module.flags = !{!1986, !1987, !1988}
!llvm.ident = !{!1989}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_nrv", scope: !2, file: !3, line: 271, type: !1960, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !625, globals: !1957, nameTableKind: None)
!3 = !DIFile(filename: "tree-nrv.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !512, !518, !523, !528, !546, !553, !560, !599}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !318, line: 39, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!320 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!324 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!325 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!326 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!327 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!328 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!329 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!330 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!331 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!332 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!333 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!334 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!335 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!336 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!337 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!338 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!339 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!340 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!341 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!342 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!343 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!344 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!345 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!346 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!347 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!348 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!349 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!350 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!351 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!352 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!353 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!354 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!355 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!356 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!357 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!358 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!359 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!360 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!361 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!362 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!363 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!364 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!365 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!366 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!367 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!368 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!369 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!370 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!371 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!372 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!373 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!374 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!375 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!376 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!378 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!379 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!380 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!381 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!382 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!383 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!384 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!385 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!386 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!387 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!388 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!389 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!390 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!391 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!392 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!393 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!394 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!395 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!396 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!397 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!398 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!399 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!400 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!401 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!402 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!403 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!404 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!405 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!406 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!407 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!408 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!409 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!411 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!412 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!413 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!414 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!415 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!416 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!417 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!418 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!419 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!420 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!421 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!422 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!423 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!424 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!425 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!426 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!427 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!428 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!429 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!430 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!431 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!432 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!433 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!434 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!435 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!436 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!437 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!438 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!439 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!440 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!441 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!442 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!443 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!444 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!445 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!446 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!447 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!448 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!449 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!450 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!451 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!452 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!453 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!454 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!455 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!456 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!457 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!458 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!459 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!460 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!461 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!462 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!463 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!464 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!465 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!466 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!467 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!468 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!469 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!470 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!471 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!472 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!473 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!474 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!475 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!476 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!477 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!478 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!479 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!480 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!481 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!482 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!483 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!484 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!485 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!486 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!487 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!488 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!489 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!490 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!491 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!492 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!493 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!494 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!495 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!496 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!497 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!498 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!499 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!500 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!501 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!502 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!505 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!506 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!507 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!508 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!509 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!510 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!511 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!512 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !513, line: 363, baseType: !7, size: 32, elements: !514)
!513 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = !{!515, !516, !517}
!515 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!516 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!517 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!518 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !513, line: 355, baseType: !7, size: 32, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!521 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!522 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!523 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !524, line: 474, baseType: !7, size: 32, elements: !525)
!524 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!525 = !{!526, !527}
!526 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!527 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !318, line: 280, baseType: !7, size: 32, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!530 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!539 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!540 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!541 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!542 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!543 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!545 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!546 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !318, line: 1817, baseType: !7, size: 32, elements: !547)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!549 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!550 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!551 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!552 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !318, line: 1805, baseType: !7, size: 32, elements: !554)
!554 = !{!555, !556, !557, !558, !559}
!555 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!556 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!557 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!558 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!559 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
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
!625 = !{!626, !627, !628, !629, !632, !633, !317, !635, !1930, !817, !1229, !630, !1932, !1951}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!628 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !637)
!637 = !{!638, !1777, !1787, !1793, !1798, !1803, !1810, !1816, !1822, !1827, !1841, !1846, !1852, !1857, !1867, !1872, !1888, !1895, !1902, !1908, !1913, !1919, !1925}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !636, file: !561, line: 738, baseType: !639, size: 256)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !656, !657, !1776}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !639, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !639, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !639, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !639, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !639, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !639, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !639, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !639, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !639, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !639, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !639, file: !561, line: 316, baseType: !652, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !653, line: 58, baseType: !654)
!653 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !655, line: 44, baseType: !7)
!655 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !639, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !639, file: !561, line: 323, baseType: !658, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !513, line: 217, size: 832, elements: !660)
!660 = !{!661, !1741, !1742, !1743, !1746, !1750, !1751, !1752, !1770, !1771, !1772, !1773, !1774, !1775}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !659, file: !513, line: 219, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !513, line: 151, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !513, line: 151, size: 128, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !664, file: !513, line: 151, baseType: !667, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !513, line: 150, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !513, line: 150, size: 128, elements: !669)
!669 = !{!670, !671, !672}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !668, file: !513, line: 150, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !668, file: !513, line: 150, baseType: !7, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !668, file: !513, line: 150, baseType: !673, size: 64, offset: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 64, elements: !736)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !675, line: 108, baseType: !676)
!675 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !513, line: 122, size: 512, elements: !678)
!678 = !{!679, !680, !681, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !677, file: !513, line: 124, baseType: !658, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !677, file: !513, line: 125, baseType: !658, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !677, file: !513, line: 131, baseType: !682, size: 64, offset: 128)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !513, line: 128, size: 64, elements: !683)
!683 = !{!684, !700}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !682, file: !513, line: 129, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !675, line: 66, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !688)
!688 = !{!689, !698, !699}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !561, line: 145, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !675, line: 69, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !693)
!693 = !{!694, !696, !697}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !692, file: !561, line: 137, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !675, line: 58, baseType: !635)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !692, file: !561, line: 138, baseType: !691, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !561, line: 139, baseType: !691, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !687, file: !561, line: 146, baseType: !690, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !687, file: !561, line: 152, baseType: !685, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !682, file: !513, line: 130, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !675, line: 50, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !704, line: 240, size: 384, elements: !705)
!704 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !703, file: !704, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !703, file: !704, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !703, file: !704, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !703, file: !704, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !703, file: !704, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !703, file: !704, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !703, file: !704, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !703, file: !704, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !703, file: !704, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !703, file: !704, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !703, file: !704, line: 321, baseType: !717, size: 320, offset: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !704, line: 315, size: 320, elements: !718)
!718 = !{!719, !1700, !1702, !1731, !1732}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !717, file: !704, line: 316, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 64, elements: !736)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !704, line: 183, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !704, line: 166, size: 64, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !738, !739, !751, !754, !816, !1678, !1679, !1690, !1697}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !722, file: !704, line: 168, baseType: !628, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !722, file: !704, line: 169, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !722, file: !704, line: 170, baseType: !633, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !722, file: !704, line: 171, baseType: !701, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !722, file: !704, line: 172, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !675, line: 53, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !704, line: 359, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !731, file: !704, line: 360, baseType: !628, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !731, file: !704, line: 361, baseType: !735, size: 64, offset: 64)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 64, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 1)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !722, file: !704, line: 173, baseType: !189, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !722, file: !704, line: 174, baseType: !740, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !704, line: 133, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 115, size: 32, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !741, file: !704, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !741, file: !704, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !741, file: !704, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !741, file: !704, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !741, file: !704, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !741, file: !704, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !741, file: !704, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !741, file: !704, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !722, file: !704, line: 175, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !704, line: 175, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !722, file: !704, line: 176, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !757, line: 75, size: 256, elements: !758)
!757 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!758 = !{!759, !774, !775, !776}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !756, file: !757, line: 76, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !757, line: 68, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !757, line: 63, size: 320, elements: !763)
!763 = !{!764, !766, !767, !768}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !757, line: 64, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !762, file: !757, line: 65, baseType: !765, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !762, file: !757, line: 66, baseType: !7, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !762, file: !757, line: 67, baseType: !769, size: 128, offset: 192)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 128, elements: !772)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !757, line: 29, baseType: !771)
!771 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!772 = !{!773}
!773 = !DISubrange(count: 2)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !756, file: !757, line: 77, baseType: !760, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !756, file: !757, line: 78, baseType: !7, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !756, file: !757, line: 79, baseType: !777, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !757, line: 49, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !757, line: 45, size: 832, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !779, file: !757, line: 46, baseType: !765, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !779, file: !757, line: 47, baseType: !755, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !779, file: !757, line: 48, baseType: !784, size: 704, offset: 128)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !785, line: 164, size: 704, elements: !786)
!785 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!786 = !{!787, !789, !799, !800, !801, !802, !803, !804, !808, !812, !813, !814, !815}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !784, file: !785, line: 166, baseType: !788, size: 64)
!788 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !784, file: !785, line: 167, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !785, line: 157, size: 192, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !791, file: !785, line: 159, baseType: !630, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !791, file: !785, line: 160, baseType: !790, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !791, file: !785, line: 161, baseType: !796, size: 32, offset: 128)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 32, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 4)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !784, file: !785, line: 168, baseType: !630, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !784, file: !785, line: 169, baseType: !630, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !784, file: !785, line: 170, baseType: !630, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !784, file: !785, line: 171, baseType: !788, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !784, file: !785, line: 172, baseType: !628, size: 32, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !784, file: !785, line: 176, baseType: !805, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!790, !632, !788}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !784, file: !785, line: 177, baseType: !809, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !632, !790}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !784, file: !785, line: 178, baseType: !632, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !784, file: !785, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !784, file: !785, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !784, file: !785, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !722, file: !704, line: 177, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !675, line: 56, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !318, line: 3371, size: 1792, elements: !820)
!820 = !{!821, !854, !860, !871, !890, !901, !906, !913, !919, !932, !940, !978, !983, !1011, !1028, !1029, !1034, !1043, !1049, !1054, !1058, !1062, !1327, !1376, !1382, !1388, !1395, !1408, !1422, !1439, !1451, !1473, !1488, !1660}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !819, file: !318, line: 3372, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !318, line: 360, size: 64, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !822, file: !318, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !822, file: !318, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !822, file: !318, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !822, file: !318, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !822, file: !318, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !822, file: !318, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !822, file: !318, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !822, file: !318, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !822, file: !318, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !822, file: !318, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !822, file: !318, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !822, file: !318, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !822, file: !318, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !822, file: !318, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !822, file: !318, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !822, file: !318, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !822, file: !318, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !822, file: !318, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !822, file: !318, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !822, file: !318, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !822, file: !318, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !822, file: !318, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !822, file: !318, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !822, file: !318, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !822, file: !318, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !822, file: !318, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !822, file: !318, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !822, file: !318, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !822, file: !318, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !822, file: !318, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !318, line: 3373, baseType: !855, size: 192)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !318, line: 402, size: 192, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !855, file: !318, line: 403, baseType: !822, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !855, file: !318, line: 404, baseType: !817, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !318, line: 405, baseType: !817, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !819, file: !318, line: 3374, baseType: !861, size: 320)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !318, line: 1384, size: 320, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !861, file: !318, line: 1385, baseType: !855, size: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !861, file: !318, line: 1386, baseType: !865, size: 128, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !866, line: 58, baseType: !867)
!866 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !866, line: 54, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !867, file: !866, line: 56, baseType: !771, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !867, file: !866, line: 57, baseType: !788, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !819, file: !318, line: 3375, baseType: !872, size: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !318, line: 1397, size: 256, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !872, file: !318, line: 1398, baseType: !855, size: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !872, file: !318, line: 1399, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !878, line: 52, size: 256, elements: !879)
!878 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!879 = !{!880, !881, !882, !883, !884, !885, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !877, file: !878, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !877, file: !878, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !877, file: !878, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !877, file: !878, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !877, file: !878, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !877, file: !878, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !877, file: !878, line: 62, baseType: !887, size: 192, offset: 64)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 3)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !819, file: !318, line: 3376, baseType: !891, size: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !318, line: 1408, size: 256, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !318, line: 1409, baseType: !855, size: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !891, file: !318, line: 1410, baseType: !895, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !897, line: 27, size: 192, elements: !898)
!897 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !896, file: !897, line: 29, baseType: !865, size: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !896, file: !897, line: 30, baseType: !189, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !819, file: !318, line: 3377, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !318, line: 1437, size: 256, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !318, line: 1438, baseType: !855, size: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !902, file: !318, line: 1439, baseType: !817, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !819, file: !318, line: 3378, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !318, line: 1418, size: 256, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !907, file: !318, line: 1419, baseType: !855, size: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !907, file: !318, line: 1420, baseType: !628, size: 32, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !907, file: !318, line: 1421, baseType: !912, size: 8, offset: 224)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 8, elements: !736)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !819, file: !318, line: 3379, baseType: !914, size: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !318, line: 1428, size: 320, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !914, file: !318, line: 1429, baseType: !855, size: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !914, file: !318, line: 1430, baseType: !817, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !914, file: !318, line: 1431, baseType: !817, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !819, file: !318, line: 3380, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !318, line: 1460, size: 320, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !920, file: !318, line: 1461, baseType: !855, size: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !920, file: !318, line: 1462, baseType: !924, size: 128, offset: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !925, line: 31, size: 128, elements: !926)
!925 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!926 = !{!927, !930, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !924, file: !925, line: 32, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !924, file: !925, line: 33, baseType: !7, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !924, file: !925, line: 34, baseType: !7, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !819, file: !318, line: 3381, baseType: !933, size: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !318, line: 2507, size: 384, elements: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !318, line: 2508, baseType: !855, size: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !933, file: !318, line: 2509, baseType: !652, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !933, file: !318, line: 2510, baseType: !7, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !318, line: 2511, baseType: !817, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !933, file: !318, line: 2512, baseType: !817, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !819, file: !318, line: 3382, baseType: !941, size: 896)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !318, line: 2652, size: 896, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !941, file: !318, line: 2653, baseType: !933, size: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !941, file: !318, line: 2654, baseType: !817, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !941, file: !318, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !941, file: !318, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !941, file: !318, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !941, file: !318, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !941, file: !318, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !941, file: !318, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !941, file: !318, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !941, file: !318, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !941, file: !318, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !941, file: !318, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !941, file: !318, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !941, file: !318, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !941, file: !318, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !941, file: !318, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !941, file: !318, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !941, file: !318, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !941, file: !318, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !941, file: !318, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !941, file: !318, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !941, file: !318, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !941, file: !318, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !941, file: !318, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !941, file: !318, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !941, file: !318, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !941, file: !318, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !941, file: !318, line: 2703, baseType: !7, size: 32, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !941, file: !318, line: 2705, baseType: !817, size: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !941, file: !318, line: 2706, baseType: !817, size: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !941, file: !318, line: 2707, baseType: !817, size: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !941, file: !318, line: 2708, baseType: !817, size: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !941, file: !318, line: 2711, baseType: !976, size: 64, offset: 832)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !318, line: 2711, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !819, file: !318, line: 3383, baseType: !979, size: 960)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !318, line: 2756, size: 960, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !979, file: !318, line: 2757, baseType: !941, size: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !979, file: !318, line: 2758, baseType: !701, size: 64, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !819, file: !318, line: 3384, baseType: !984, size: 1472)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !318, line: 3114, size: 1472, elements: !985)
!985 = !{!986, !1007, !1008, !1009, !1010}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !984, file: !318, line: 3115, baseType: !987, size: 1216)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !318, line: 2984, size: 1216, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !318, line: 2985, baseType: !979, size: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !987, file: !318, line: 2986, baseType: !817, size: 64, offset: 960)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !987, file: !318, line: 2987, baseType: !817, size: 64, offset: 1024)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !987, file: !318, line: 2988, baseType: !817, size: 64, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !987, file: !318, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !987, file: !318, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !987, file: !318, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !987, file: !318, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !987, file: !318, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !987, file: !318, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !987, file: !318, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !987, file: !318, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !987, file: !318, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !987, file: !318, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !987, file: !318, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !987, file: !318, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !987, file: !318, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !987, file: !318, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !984, file: !318, line: 3117, baseType: !817, size: 64, offset: 1216)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !984, file: !318, line: 3119, baseType: !817, size: 64, offset: 1280)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !984, file: !318, line: 3121, baseType: !817, size: 64, offset: 1344)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !984, file: !318, line: 3123, baseType: !817, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !819, file: !318, line: 3385, baseType: !1012, size: 1088)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !318, line: 2874, size: 1088, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1012, file: !318, line: 2875, baseType: !979, size: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1012, file: !318, line: 2876, baseType: !701, size: 64, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1012, file: !318, line: 2877, baseType: !1017, size: 64, offset: 1024)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1019, line: 172, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1018, file: !1019, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1018, file: !1019, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1018, file: !1019, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1018, file: !1019, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1018, file: !1019, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1018, file: !1019, line: 195, baseType: !7, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1018, file: !1019, line: 199, baseType: !817, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !819, file: !318, line: 3386, baseType: !987, size: 1216)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !819, file: !318, line: 3387, baseType: !1030, size: 1280)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !318, line: 3093, size: 1280, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1030, file: !318, line: 3094, baseType: !987, size: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1030, file: !318, line: 3095, baseType: !1017, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !819, file: !318, line: 3388, baseType: !1035, size: 1216)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !318, line: 2824, size: 1216, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1035, file: !318, line: 2825, baseType: !941, size: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1035, file: !318, line: 2827, baseType: !817, size: 64, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1035, file: !318, line: 2828, baseType: !817, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1035, file: !318, line: 2829, baseType: !817, size: 64, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1035, file: !318, line: 2830, baseType: !817, size: 64, offset: 1088)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1035, file: !318, line: 2831, baseType: !817, size: 64, offset: 1152)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !819, file: !318, line: 3389, baseType: !1044, size: 1024)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !318, line: 2850, size: 1024, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !318, line: 2851, baseType: !979, size: 960)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1044, file: !318, line: 2852, baseType: !628, size: 32, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1044, file: !318, line: 2853, baseType: !628, size: 32, offset: 992)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !819, file: !318, line: 3390, baseType: !1050, size: 1024)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !318, line: 2857, size: 1024, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1050, file: !318, line: 2858, baseType: !979, size: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1050, file: !318, line: 2859, baseType: !1017, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !819, file: !318, line: 3391, baseType: !1055, size: 960)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !318, line: 2862, size: 960, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1055, file: !318, line: 2863, baseType: !979, size: 960)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !819, file: !318, line: 3392, baseType: !1059, size: 1472)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !318, line: 3304, size: 1472, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1059, file: !318, line: 3305, baseType: !984, size: 1472)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !819, file: !318, line: 3393, baseType: !1063, size: 1792)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !318, line: 3248, size: 1792, elements: !1064)
!1064 = !{!1065, !1066, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1063, file: !318, line: 3249, baseType: !984, size: 1472)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1063, file: !318, line: 3251, baseType: !1067, size: 64, offset: 1472)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1069, line: 463, size: 1152, elements: !1070)
!1069 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1070 = !{!1071, !1074, !1105, !1106, !1247, !1250, !1251, !1252, !1253, !1254, !1255, !1279, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1068, file: !1069, line: 464, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1069, line: 464, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1068, file: !1069, line: 467, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !513, line: 374, size: 640, elements: !1077)
!1077 = !{!1078, !1080, !1081, !1094, !1095, !1096, !1097, !1098, !1099, !1101, !1103, !1104}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1076, file: !513, line: 377, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !675, line: 111, baseType: !658)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1076, file: !513, line: 378, baseType: !1079, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1076, file: !513, line: 381, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !513, line: 282, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !513, line: 282, size: 128, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1084, file: !513, line: 282, baseType: !1087, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !513, line: 281, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !513, line: 281, size: 128, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1088, file: !513, line: 281, baseType: !7, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1088, file: !513, line: 281, baseType: !7, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1088, file: !513, line: 281, baseType: !1093, size: 64, offset: 64)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 64, elements: !736)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1076, file: !513, line: 384, baseType: !628, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1076, file: !513, line: 387, baseType: !628, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1076, file: !513, line: 390, baseType: !628, size: 32, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1076, file: !513, line: 394, baseType: !1082, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1076, file: !513, line: 396, baseType: !512, size: 32, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1076, file: !513, line: 399, baseType: !1100, size: 64, offset: 416)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 64, elements: !772)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1076, file: !513, line: 402, baseType: !1102, size: 64, offset: 480)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !772)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1076, file: !513, line: 406, baseType: !628, size: 32, offset: 544)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1076, file: !513, line: 409, baseType: !628, size: 32, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1068, file: !1069, line: 470, baseType: !686, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1068, file: !1069, line: 473, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1019, line: 39, size: 1152, elements: !1109)
!1109 = !{!1110, !1162, !1175, !1188, !1189, !1201, !1202, !1206, !1207, !1208, !1209, !1210}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1108, file: !1019, line: 41, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1112, line: 144, baseType: !1113)
!1112 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1112, line: 100, size: 896, elements: !1115)
!1115 = !{!1116, !1124, !1129, !1134, !1136, !1139, !1140, !1141, !1142, !1143, !1148, !1150, !1151, !1156, !1161}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1114, file: !1112, line: 102, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1112, line: 52, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1112, line: 47, baseType: !7)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1114, file: !1112, line: 105, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1112, line: 59, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!628, !1122, !1122}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1114, file: !1112, line: 108, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1112, line: 63, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !632}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1114, file: !1112, line: 111, baseType: !1135, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !1112, line: 114, baseType: !1137, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1138, line: 46, baseType: !771)
!1138 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1114, file: !1112, line: 117, baseType: !1137, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1114, file: !1112, line: 120, baseType: !1137, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1114, file: !1112, line: 124, baseType: !7, size: 32, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1114, file: !1112, line: 128, baseType: !7, size: 32, offset: 480)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1114, file: !1112, line: 131, baseType: !1144, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1112, line: 75, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!632, !1137, !1137}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1114, file: !1112, line: 132, baseType: !1149, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1112, line: 78, baseType: !1131)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1114, file: !1112, line: 135, baseType: !632, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1114, file: !1112, line: 136, baseType: !1152, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1112, line: 82, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!632, !632, !1137, !1137}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1114, file: !1112, line: 137, baseType: !1157, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1112, line: 83, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !632, !632}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1114, file: !1112, line: 141, baseType: !7, size: 32, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1108, file: !1019, line: 48, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1165, file: !561, line: 35, baseType: !1168, size: 128)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1169, file: !561, line: 33, baseType: !7, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1169, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1169, file: !561, line: 33, baseType: !1174, size: 64, offset: 64)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 64, elements: !736)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1108, file: !1019, line: 51, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !318, line: 183, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !318, line: 183, size: 128, elements: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1178, file: !318, line: 183, baseType: !1181, size: 128)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !318, line: 182, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !318, line: 182, size: 128, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1182, file: !318, line: 182, baseType: !7, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1182, file: !318, line: 182, baseType: !7, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1182, file: !318, line: 182, baseType: !1187, size: 64, offset: 64)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 64, elements: !736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1108, file: !1019, line: 54, baseType: !817, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1108, file: !1019, line: 57, baseType: !1190, size: 128, offset: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1191, line: 31, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1190, file: !1191, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1190, file: !1191, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1190, file: !1191, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1190, file: !1191, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1190, file: !1191, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1190, file: !1191, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1190, file: !1191, line: 56, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !675, line: 47, baseType: !755)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1108, file: !1019, line: 60, baseType: !1190, size: 128, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1108, file: !1019, line: 64, baseType: !1203, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1205, line: 33, flags: DIFlagFwdDecl)
!1205 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1108, file: !1019, line: 67, baseType: !817, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1108, file: !1019, line: 73, baseType: !1111, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1108, file: !1019, line: 77, baseType: !1200, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1108, file: !1019, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1108, file: !1019, line: 82, baseType: !1211, size: 320, offset: 832)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1212, line: 62, size: 320, elements: !1213)
!1212 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1213 = !{!1214, !1220, !1221, !1222, !1223, !1230}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1211, file: !1212, line: 63, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1212, line: 56, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1216, file: !1212, line: 57, baseType: !1215, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1216, file: !1212, line: 58, baseType: !912, size: 8, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1211, file: !1212, line: 64, baseType: !7, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1211, file: !1212, line: 66, baseType: !7, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1211, file: !1212, line: 68, baseType: !627, size: 8, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1211, file: !1212, line: 70, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1212, line: 37, size: 128, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !1212, line: 39, baseType: !1224, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1225, file: !1212, line: 40, baseType: !1229, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1211, file: !1212, line: 71, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1212, line: 45, size: 320, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1232, file: !1212, line: 47, baseType: !1231, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1232, file: !1212, line: 48, baseType: !1236, size: 256, offset: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !318, line: 1883, size: 256, elements: !1237)
!1237 = !{!1238, !1240, !1241, !1246}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1236, file: !318, line: 1884, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1236, file: !318, line: 1885, baseType: !1239, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1236, file: !318, line: 1891, baseType: !1242, size: 64, offset: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !318, line: 1891, size: 64, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1242, file: !318, line: 1891, baseType: !695, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1242, file: !318, line: 1891, baseType: !817, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1236, file: !318, line: 1892, baseType: !1229, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1068, file: !1069, line: 476, baseType: !1248, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1069, line: 476, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1068, file: !1069, line: 479, baseType: !1111, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1068, file: !1069, line: 484, baseType: !817, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1068, file: !1069, line: 488, baseType: !817, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1068, file: !1069, line: 493, baseType: !817, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1068, file: !1069, line: 496, baseType: !817, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1068, file: !1069, line: 501, baseType: !1256, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !524, line: 2355, size: 576, elements: !1258)
!1258 = !{!1259, !1262, !1263, !1264, !1265, !1267, !1268, !1273, !1274, !1275, !1276, !1277, !1278}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1257, file: !524, line: 2356, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !524, line: 2356, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1257, file: !524, line: 2357, baseType: !633, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1257, file: !524, line: 2358, baseType: !628, size: 32, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1257, file: !524, line: 2359, baseType: !628, size: 32, offset: 160)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1257, file: !524, line: 2360, baseType: !1266, size: 128, offset: 192)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 128, elements: !797)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1257, file: !524, line: 2364, baseType: !628, size: 32, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1257, file: !524, line: 2367, baseType: !1269, size: 128, offset: 384)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !524, line: 2349, size: 128, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1269, file: !524, line: 2351, baseType: !701, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1269, file: !524, line: 2352, baseType: !788, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1257, file: !524, line: 2371, baseType: !523, size: 32, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1257, file: !524, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1257, file: !524, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1257, file: !524, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1257, file: !524, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1257, file: !524, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1068, file: !1069, line: 504, baseType: !1280, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1069, line: 504, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1068, file: !1069, line: 507, baseType: !1111, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1068, file: !1069, line: 510, baseType: !628, size: 32, offset: 832)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1068, file: !1069, line: 513, baseType: !628, size: 32, offset: 864)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1068, file: !1069, line: 516, baseType: !652, size: 32, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1068, file: !1069, line: 519, baseType: !652, size: 32, offset: 928)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1068, file: !1069, line: 522, baseType: !7, size: 32, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1068, file: !1069, line: 523, baseType: !7, size: 32, offset: 992)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1068, file: !1069, line: 528, baseType: !633, size: 64, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1068, file: !1069, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1068, file: !1069, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1068, file: !1069, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1068, file: !1069, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1068, file: !1069, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1068, file: !1069, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1068, file: !1069, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1068, file: !1069, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1068, file: !1069, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1068, file: !1069, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1068, file: !1069, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1068, file: !1069, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1068, file: !1069, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1068, file: !1069, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1068, file: !1069, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1068, file: !1069, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1063, file: !318, line: 3254, baseType: !817, size: 64, offset: 1536)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1063, file: !318, line: 3257, baseType: !817, size: 64, offset: 1600)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1063, file: !318, line: 3258, baseType: !817, size: 64, offset: 1664)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1063, file: !318, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1063, file: !318, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1063, file: !318, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1063, file: !318, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1063, file: !318, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1063, file: !318, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1063, file: !318, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1063, file: !318, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1063, file: !318, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1063, file: !318, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1063, file: !318, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1063, file: !318, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1063, file: !318, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1063, file: !318, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1063, file: !318, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1063, file: !318, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1063, file: !318, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1063, file: !318, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !318, line: 3394, baseType: !1328, size: 1344)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !318, line: 2279, size: 1344, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1355, !1356, !1357, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1328, file: !318, line: 2280, baseType: !855, size: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1328, file: !318, line: 2281, baseType: !817, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1328, file: !318, line: 2282, baseType: !817, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1328, file: !318, line: 2283, baseType: !817, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1328, file: !318, line: 2284, baseType: !817, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1328, file: !318, line: 2285, baseType: !7, size: 32, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1328, file: !318, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1328, file: !318, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1328, file: !318, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1328, file: !318, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1328, file: !318, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1328, file: !318, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1328, file: !318, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1328, file: !318, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1328, file: !318, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1328, file: !318, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1328, file: !318, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1328, file: !318, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1328, file: !318, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1328, file: !318, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1328, file: !318, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1328, file: !318, line: 2305, baseType: !7, size: 32, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1328, file: !318, line: 2306, baseType: !1353, size: 32, offset: 544)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1354, line: 31, baseType: !628)
!1354 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1328, file: !318, line: 2307, baseType: !817, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1328, file: !318, line: 2308, baseType: !817, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1328, file: !318, line: 2314, baseType: !1358, size: 64, offset: 704)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !318, line: 2309, size: 64, elements: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1358, file: !318, line: 2310, baseType: !628, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1358, file: !318, line: 2311, baseType: !633, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1358, file: !318, line: 2312, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !318, line: 2277, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1328, file: !318, line: 2315, baseType: !817, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1328, file: !318, line: 2316, baseType: !817, size: 64, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1328, file: !318, line: 2317, baseType: !817, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1328, file: !318, line: 2318, baseType: !817, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1328, file: !318, line: 2319, baseType: !817, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1328, file: !318, line: 2320, baseType: !817, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1328, file: !318, line: 2321, baseType: !817, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1328, file: !318, line: 2322, baseType: !817, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1328, file: !318, line: 2324, baseType: !1374, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !318, line: 2324, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !819, file: !318, line: 3395, baseType: !1377, size: 320)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !318, line: 1469, size: 320, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !318, line: 1470, baseType: !855, size: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1377, file: !318, line: 1471, baseType: !817, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1377, file: !318, line: 1472, baseType: !817, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !819, file: !318, line: 3396, baseType: !1383, size: 320)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !318, line: 1482, size: 320, elements: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1383, file: !318, line: 1483, baseType: !855, size: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1383, file: !318, line: 1484, baseType: !628, size: 32, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1383, file: !318, line: 1485, baseType: !1187, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !819, file: !318, line: 3397, baseType: !1389, size: 384)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !318, line: 1829, size: 384, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1389, file: !318, line: 1830, baseType: !855, size: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1389, file: !318, line: 1831, baseType: !652, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1389, file: !318, line: 1832, baseType: !817, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1389, file: !318, line: 1835, baseType: !1187, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !819, file: !318, line: 3398, baseType: !1396, size: 704)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !318, line: 1898, size: 704, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1407}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1396, file: !318, line: 1899, baseType: !855, size: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1396, file: !318, line: 1902, baseType: !817, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1396, file: !318, line: 1905, baseType: !695, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1396, file: !318, line: 1908, baseType: !7, size: 32, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1396, file: !318, line: 1911, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1019, line: 117, size: 128, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1404, file: !1019, line: 120, baseType: !1190, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1396, file: !318, line: 1914, baseType: !1236, size: 256, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !819, file: !318, line: 3399, baseType: !1409, size: 704)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !318, line: 2008, size: 704, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1409, file: !318, line: 2009, baseType: !855, size: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1409, file: !318, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1409, file: !318, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1409, file: !318, line: 2014, baseType: !652, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1409, file: !318, line: 2016, baseType: !817, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1409, file: !318, line: 2017, baseType: !1176, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1409, file: !318, line: 2019, baseType: !817, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1409, file: !318, line: 2020, baseType: !817, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1409, file: !318, line: 2021, baseType: !817, size: 64, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1409, file: !318, line: 2022, baseType: !817, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1409, file: !318, line: 2023, baseType: !817, size: 64, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !819, file: !318, line: 3400, baseType: !1423, size: 832)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !318, line: 2430, size: 832, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1423, file: !318, line: 2431, baseType: !855, size: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1423, file: !318, line: 2433, baseType: !817, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1423, file: !318, line: 2434, baseType: !817, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1423, file: !318, line: 2435, baseType: !817, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1423, file: !318, line: 2436, baseType: !817, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1423, file: !318, line: 2437, baseType: !1176, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1423, file: !318, line: 2438, baseType: !817, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1423, file: !318, line: 2440, baseType: !817, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1423, file: !318, line: 2441, baseType: !817, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1423, file: !318, line: 2443, baseType: !1435, size: 128, offset: 704)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !318, line: 182, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !318, line: 182, size: 128, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1436, file: !318, line: 182, baseType: !1181, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !819, file: !318, line: 3401, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !318, line: 3327, size: 320, elements: !1441)
!1441 = !{!1442, !1443, !1450}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1440, file: !318, line: 3329, baseType: !855, size: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1440, file: !318, line: 3330, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !318, line: 3320, size: 192, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1445, file: !318, line: 3322, baseType: !1444, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1445, file: !318, line: 3323, baseType: !1444, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1445, file: !318, line: 3324, baseType: !817, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1440, file: !318, line: 3331, baseType: !1444, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !819, file: !318, line: 3402, baseType: !1452, size: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !318, line: 1540, size: 256, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1452, file: !318, line: 1541, baseType: !855, size: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1452, file: !318, line: 1542, baseType: !1456, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !318, line: 1538, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !318, line: 1538, size: 192, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1458, file: !318, line: 1538, baseType: !1461, size: 192)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !318, line: 1537, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !318, line: 1537, size: 192, elements: !1463)
!1463 = !{!1464, !1465, !1466}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1462, file: !318, line: 1537, baseType: !7, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1462, file: !318, line: 1537, baseType: !7, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1462, file: !318, line: 1537, baseType: !1467, size: 128, offset: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 128, elements: !736)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !318, line: 1535, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !318, line: 1532, size: 128, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1469, file: !318, line: 1533, baseType: !817, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1469, file: !318, line: 1534, baseType: !817, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !819, file: !318, line: 3403, baseType: !1474, size: 512)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !318, line: 1938, size: 512, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1485, !1486, !1487}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1474, file: !318, line: 1939, baseType: !855, size: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1474, file: !318, line: 1940, baseType: !652, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1474, file: !318, line: 1941, baseType: !528, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1474, file: !318, line: 1946, baseType: !1480, size: 32, offset: 256)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !318, line: 1942, size: 32, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1480, file: !318, line: 1943, baseType: !546, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1480, file: !318, line: 1944, baseType: !553, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1480, file: !318, line: 1945, baseType: !317, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1474, file: !318, line: 1950, baseType: !685, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1474, file: !318, line: 1951, baseType: !685, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1474, file: !318, line: 1953, baseType: !1187, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !819, file: !318, line: 3404, baseType: !1489, size: 1664)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !318, line: 3337, size: 1664, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1489, file: !318, line: 3338, baseType: !855, size: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1489, file: !318, line: 3341, baseType: !1493, size: 1472, offset: 192)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1494, line: 410, size: 1472, elements: !1495)
!1494 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1493, file: !1494, line: 412, baseType: !628, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1493, file: !1494, line: 413, baseType: !628, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1493, file: !1494, line: 414, baseType: !628, size: 32, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1493, file: !1494, line: 415, baseType: !628, size: 32, offset: 96)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1493, file: !1494, line: 416, baseType: !628, size: 32, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1493, file: !1494, line: 417, baseType: !628, size: 32, offset: 160)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1493, file: !1494, line: 418, baseType: !627, size: 8, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1493, file: !1494, line: 419, baseType: !627, size: 8, offset: 200)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1493, file: !1494, line: 420, baseType: !1505, size: 8, offset: 208)
!1505 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1493, file: !1494, line: 421, baseType: !1505, size: 8, offset: 216)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1493, file: !1494, line: 422, baseType: !1505, size: 8, offset: 224)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1493, file: !1494, line: 423, baseType: !1505, size: 8, offset: 232)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1493, file: !1494, line: 424, baseType: !1505, size: 8, offset: 240)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1493, file: !1494, line: 425, baseType: !1505, size: 8, offset: 248)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1493, file: !1494, line: 426, baseType: !1505, size: 8, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1493, file: !1494, line: 427, baseType: !1505, size: 8, offset: 264)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1493, file: !1494, line: 428, baseType: !1505, size: 8, offset: 272)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1493, file: !1494, line: 429, baseType: !1505, size: 8, offset: 280)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1493, file: !1494, line: 430, baseType: !1505, size: 8, offset: 288)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1493, file: !1494, line: 431, baseType: !1505, size: 8, offset: 296)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1493, file: !1494, line: 432, baseType: !1505, size: 8, offset: 304)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1493, file: !1494, line: 433, baseType: !1505, size: 8, offset: 312)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1493, file: !1494, line: 434, baseType: !1505, size: 8, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1493, file: !1494, line: 435, baseType: !1505, size: 8, offset: 328)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1493, file: !1494, line: 436, baseType: !1505, size: 8, offset: 336)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1493, file: !1494, line: 437, baseType: !1505, size: 8, offset: 344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1493, file: !1494, line: 438, baseType: !1505, size: 8, offset: 352)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1493, file: !1494, line: 439, baseType: !1505, size: 8, offset: 360)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1493, file: !1494, line: 440, baseType: !1505, size: 8, offset: 368)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1493, file: !1494, line: 441, baseType: !1505, size: 8, offset: 376)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1493, file: !1494, line: 442, baseType: !1505, size: 8, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1493, file: !1494, line: 443, baseType: !1505, size: 8, offset: 392)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1493, file: !1494, line: 444, baseType: !1505, size: 8, offset: 400)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1493, file: !1494, line: 445, baseType: !1505, size: 8, offset: 408)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1493, file: !1494, line: 446, baseType: !1505, size: 8, offset: 416)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1493, file: !1494, line: 447, baseType: !1505, size: 8, offset: 424)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1493, file: !1494, line: 448, baseType: !1505, size: 8, offset: 432)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1493, file: !1494, line: 449, baseType: !1505, size: 8, offset: 440)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1493, file: !1494, line: 450, baseType: !1505, size: 8, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1493, file: !1494, line: 451, baseType: !1505, size: 8, offset: 456)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1493, file: !1494, line: 452, baseType: !1505, size: 8, offset: 464)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1493, file: !1494, line: 453, baseType: !1505, size: 8, offset: 472)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1493, file: !1494, line: 454, baseType: !1505, size: 8, offset: 480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1493, file: !1494, line: 455, baseType: !1505, size: 8, offset: 488)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1493, file: !1494, line: 456, baseType: !1505, size: 8, offset: 496)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1493, file: !1494, line: 457, baseType: !1505, size: 8, offset: 504)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1493, file: !1494, line: 458, baseType: !1505, size: 8, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1493, file: !1494, line: 459, baseType: !1505, size: 8, offset: 520)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1493, file: !1494, line: 460, baseType: !1505, size: 8, offset: 528)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1493, file: !1494, line: 461, baseType: !1505, size: 8, offset: 536)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1493, file: !1494, line: 462, baseType: !1505, size: 8, offset: 544)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1493, file: !1494, line: 463, baseType: !1505, size: 8, offset: 552)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1493, file: !1494, line: 464, baseType: !1505, size: 8, offset: 560)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1493, file: !1494, line: 465, baseType: !1505, size: 8, offset: 568)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1493, file: !1494, line: 466, baseType: !1505, size: 8, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1493, file: !1494, line: 467, baseType: !1505, size: 8, offset: 584)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1493, file: !1494, line: 468, baseType: !1505, size: 8, offset: 592)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1493, file: !1494, line: 469, baseType: !1505, size: 8, offset: 600)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1493, file: !1494, line: 470, baseType: !1505, size: 8, offset: 608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1493, file: !1494, line: 471, baseType: !1505, size: 8, offset: 616)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1493, file: !1494, line: 472, baseType: !1505, size: 8, offset: 624)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1493, file: !1494, line: 473, baseType: !1505, size: 8, offset: 632)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1493, file: !1494, line: 474, baseType: !1505, size: 8, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1493, file: !1494, line: 475, baseType: !1505, size: 8, offset: 648)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1493, file: !1494, line: 476, baseType: !1505, size: 8, offset: 656)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1493, file: !1494, line: 477, baseType: !1505, size: 8, offset: 664)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1493, file: !1494, line: 478, baseType: !1505, size: 8, offset: 672)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1493, file: !1494, line: 479, baseType: !1505, size: 8, offset: 680)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1493, file: !1494, line: 480, baseType: !1505, size: 8, offset: 688)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1493, file: !1494, line: 481, baseType: !1505, size: 8, offset: 696)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1493, file: !1494, line: 482, baseType: !1505, size: 8, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1493, file: !1494, line: 483, baseType: !1505, size: 8, offset: 712)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1493, file: !1494, line: 484, baseType: !1505, size: 8, offset: 720)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1493, file: !1494, line: 485, baseType: !1505, size: 8, offset: 728)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1493, file: !1494, line: 486, baseType: !1505, size: 8, offset: 736)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1493, file: !1494, line: 487, baseType: !1505, size: 8, offset: 744)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1493, file: !1494, line: 488, baseType: !1505, size: 8, offset: 752)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1493, file: !1494, line: 489, baseType: !1505, size: 8, offset: 760)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1493, file: !1494, line: 490, baseType: !1505, size: 8, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1493, file: !1494, line: 491, baseType: !1505, size: 8, offset: 776)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1493, file: !1494, line: 492, baseType: !1505, size: 8, offset: 784)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1493, file: !1494, line: 493, baseType: !1505, size: 8, offset: 792)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1493, file: !1494, line: 494, baseType: !1505, size: 8, offset: 800)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1493, file: !1494, line: 495, baseType: !1505, size: 8, offset: 808)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1493, file: !1494, line: 496, baseType: !1505, size: 8, offset: 816)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1493, file: !1494, line: 497, baseType: !1505, size: 8, offset: 824)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1493, file: !1494, line: 498, baseType: !1505, size: 8, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1493, file: !1494, line: 499, baseType: !1505, size: 8, offset: 840)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1493, file: !1494, line: 500, baseType: !1505, size: 8, offset: 848)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1493, file: !1494, line: 501, baseType: !1505, size: 8, offset: 856)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1493, file: !1494, line: 502, baseType: !1505, size: 8, offset: 864)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1493, file: !1494, line: 503, baseType: !1505, size: 8, offset: 872)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1493, file: !1494, line: 504, baseType: !1505, size: 8, offset: 880)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1493, file: !1494, line: 505, baseType: !1505, size: 8, offset: 888)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1493, file: !1494, line: 506, baseType: !1505, size: 8, offset: 896)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1493, file: !1494, line: 507, baseType: !1505, size: 8, offset: 904)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1493, file: !1494, line: 508, baseType: !1505, size: 8, offset: 912)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1493, file: !1494, line: 509, baseType: !1505, size: 8, offset: 920)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1493, file: !1494, line: 510, baseType: !1505, size: 8, offset: 928)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1493, file: !1494, line: 511, baseType: !1505, size: 8, offset: 936)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1493, file: !1494, line: 512, baseType: !1505, size: 8, offset: 944)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1493, file: !1494, line: 513, baseType: !1505, size: 8, offset: 952)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1493, file: !1494, line: 514, baseType: !1505, size: 8, offset: 960)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1493, file: !1494, line: 515, baseType: !1505, size: 8, offset: 968)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1493, file: !1494, line: 516, baseType: !1505, size: 8, offset: 976)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1493, file: !1494, line: 517, baseType: !1505, size: 8, offset: 984)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1493, file: !1494, line: 518, baseType: !1505, size: 8, offset: 992)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1493, file: !1494, line: 519, baseType: !1505, size: 8, offset: 1000)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1493, file: !1494, line: 520, baseType: !1505, size: 8, offset: 1008)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1493, file: !1494, line: 521, baseType: !1505, size: 8, offset: 1016)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1493, file: !1494, line: 522, baseType: !1505, size: 8, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1493, file: !1494, line: 523, baseType: !1505, size: 8, offset: 1032)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1493, file: !1494, line: 524, baseType: !1505, size: 8, offset: 1040)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1493, file: !1494, line: 525, baseType: !1505, size: 8, offset: 1048)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1493, file: !1494, line: 526, baseType: !1505, size: 8, offset: 1056)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1493, file: !1494, line: 527, baseType: !1505, size: 8, offset: 1064)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1493, file: !1494, line: 528, baseType: !1505, size: 8, offset: 1072)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1493, file: !1494, line: 529, baseType: !1505, size: 8, offset: 1080)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1493, file: !1494, line: 530, baseType: !1505, size: 8, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1493, file: !1494, line: 531, baseType: !1505, size: 8, offset: 1096)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1493, file: !1494, line: 532, baseType: !1505, size: 8, offset: 1104)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1493, file: !1494, line: 533, baseType: !1505, size: 8, offset: 1112)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1493, file: !1494, line: 534, baseType: !1505, size: 8, offset: 1120)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1493, file: !1494, line: 535, baseType: !1505, size: 8, offset: 1128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1493, file: !1494, line: 536, baseType: !1505, size: 8, offset: 1136)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1493, file: !1494, line: 537, baseType: !1505, size: 8, offset: 1144)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1493, file: !1494, line: 538, baseType: !1505, size: 8, offset: 1152)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1493, file: !1494, line: 539, baseType: !1505, size: 8, offset: 1160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1493, file: !1494, line: 540, baseType: !1505, size: 8, offset: 1168)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1493, file: !1494, line: 541, baseType: !1505, size: 8, offset: 1176)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1493, file: !1494, line: 542, baseType: !1505, size: 8, offset: 1184)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1493, file: !1494, line: 543, baseType: !1505, size: 8, offset: 1192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1493, file: !1494, line: 544, baseType: !1505, size: 8, offset: 1200)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1493, file: !1494, line: 545, baseType: !1505, size: 8, offset: 1208)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1493, file: !1494, line: 546, baseType: !1505, size: 8, offset: 1216)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1493, file: !1494, line: 547, baseType: !1505, size: 8, offset: 1224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1493, file: !1494, line: 548, baseType: !1505, size: 8, offset: 1232)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1493, file: !1494, line: 549, baseType: !1505, size: 8, offset: 1240)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1493, file: !1494, line: 550, baseType: !1505, size: 8, offset: 1248)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1493, file: !1494, line: 551, baseType: !1505, size: 8, offset: 1256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1493, file: !1494, line: 552, baseType: !1505, size: 8, offset: 1264)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1493, file: !1494, line: 553, baseType: !1505, size: 8, offset: 1272)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1493, file: !1494, line: 554, baseType: !1505, size: 8, offset: 1280)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1493, file: !1494, line: 555, baseType: !1505, size: 8, offset: 1288)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1493, file: !1494, line: 556, baseType: !1505, size: 8, offset: 1296)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1493, file: !1494, line: 557, baseType: !1505, size: 8, offset: 1304)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1493, file: !1494, line: 558, baseType: !1505, size: 8, offset: 1312)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1493, file: !1494, line: 559, baseType: !1505, size: 8, offset: 1320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1493, file: !1494, line: 560, baseType: !1505, size: 8, offset: 1328)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1493, file: !1494, line: 561, baseType: !1505, size: 8, offset: 1336)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1493, file: !1494, line: 562, baseType: !1505, size: 8, offset: 1344)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1493, file: !1494, line: 563, baseType: !1505, size: 8, offset: 1352)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1493, file: !1494, line: 564, baseType: !1505, size: 8, offset: 1360)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1493, file: !1494, line: 565, baseType: !1505, size: 8, offset: 1368)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1493, file: !1494, line: 566, baseType: !1505, size: 8, offset: 1376)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1493, file: !1494, line: 567, baseType: !1505, size: 8, offset: 1384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1493, file: !1494, line: 568, baseType: !1505, size: 8, offset: 1392)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1493, file: !1494, line: 569, baseType: !1505, size: 8, offset: 1400)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1493, file: !1494, line: 570, baseType: !1505, size: 8, offset: 1408)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1493, file: !1494, line: 571, baseType: !1505, size: 8, offset: 1416)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1493, file: !1494, line: 572, baseType: !1505, size: 8, offset: 1424)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1493, file: !1494, line: 573, baseType: !1505, size: 8, offset: 1432)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1493, file: !1494, line: 574, baseType: !1505, size: 8, offset: 1440)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !819, file: !318, line: 3405, baseType: !1661, size: 384)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !318, line: 3352, size: 384, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1661, file: !318, line: 3353, baseType: !855, size: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1661, file: !318, line: 3356, baseType: !1665, size: 192, offset: 192)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1494, line: 578, size: 192, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1665, file: !1494, line: 580, baseType: !628, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1665, file: !1494, line: 581, baseType: !628, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1665, file: !1494, line: 582, baseType: !628, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1665, file: !1494, line: 583, baseType: !628, size: 32, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1665, file: !1494, line: 584, baseType: !627, size: 8, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1665, file: !1494, line: 585, baseType: !627, size: 8, offset: 136)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1665, file: !1494, line: 586, baseType: !627, size: 8, offset: 144)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1665, file: !1494, line: 587, baseType: !627, size: 8, offset: 152)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1665, file: !1494, line: 588, baseType: !627, size: 8, offset: 160)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1665, file: !1494, line: 589, baseType: !627, size: 8, offset: 168)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1665, file: !1494, line: 590, baseType: !627, size: 8, offset: 176)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !722, file: !704, line: 178, baseType: !658, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !722, file: !704, line: 179, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !704, line: 150, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !704, line: 142, size: 320, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1689}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1682, file: !704, line: 144, baseType: !817, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1682, file: !704, line: 145, baseType: !701, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1682, file: !704, line: 146, baseType: !701, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1682, file: !704, line: 147, baseType: !1353, size: 32, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1682, file: !704, line: 148, baseType: !7, size: 32, offset: 224)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1682, file: !704, line: 149, baseType: !627, size: 8, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !722, file: !704, line: 180, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !704, line: 162, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !704, line: 159, size: 128, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1693, file: !704, line: 160, baseType: !817, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1693, file: !704, line: 161, baseType: !788, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !722, file: !704, line: 181, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !704, line: 181, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !717, file: !704, line: 317, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 64, elements: !736)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !717, file: !704, line: 318, baseType: !1703, size: 320)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !704, line: 188, size: 320, elements: !1704)
!1704 = !{!1705, !1707, !1730}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1703, file: !704, line: 190, baseType: !1706, size: 192)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 192, elements: !888)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1703, file: !704, line: 193, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !704, line: 206, size: 320, elements: !1710)
!1710 = !{!1711, !1715, !1716, !1717, !1729}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1709, file: !704, line: 208, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !675, line: 62, baseType: !1714)
!1714 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !675, line: 61, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1709, file: !704, line: 211, baseType: !7, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1709, file: !704, line: 214, baseType: !788, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1709, file: !704, line: 224, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !704, line: 202, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !704, line: 202, size: 128, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1720, file: !704, line: 202, baseType: !1723, size: 128)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !704, line: 200, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !704, line: 200, size: 128, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1724, file: !704, line: 200, baseType: !7, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1724, file: !704, line: 200, baseType: !7, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1724, file: !704, line: 200, baseType: !735, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1709, file: !704, line: 234, baseType: !1718, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1703, file: !704, line: 197, baseType: !788, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !717, file: !704, line: 319, baseType: !877, size: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !717, file: !704, line: 320, baseType: !896, size: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !677, file: !513, line: 134, baseType: !632, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !677, file: !513, line: 137, baseType: !817, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !677, file: !513, line: 138, baseType: !652, size: 32, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !677, file: !513, line: 142, baseType: !7, size: 32, offset: 352)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !513, line: 144, baseType: !628, size: 32, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !677, file: !513, line: 145, baseType: !628, size: 32, offset: 416)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !513, line: 146, baseType: !1740, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !513, line: 119, baseType: !788)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !659, file: !513, line: 220, baseType: !662, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !659, file: !513, line: 223, baseType: !632, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !659, file: !513, line: 226, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !513, line: 185, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !659, file: !513, line: 229, baseType: !1747, size: 128, offset: 256)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 128, elements: !772)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !513, line: 229, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !659, file: !513, line: 232, baseType: !658, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !659, file: !513, line: 233, baseType: !658, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !659, file: !513, line: 238, baseType: !1753, size: 64, offset: 512)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !513, line: 235, size: 64, elements: !1754)
!1754 = !{!1755, !1761}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1753, file: !513, line: 236, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !513, line: 273, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1757, file: !513, line: 275, baseType: !685, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1757, file: !513, line: 278, baseType: !685, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1753, file: !513, line: 237, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !513, line: 259, size: 320, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1768, !1769}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1763, file: !513, line: 261, baseType: !701, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1763, file: !513, line: 262, baseType: !701, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1763, file: !513, line: 266, baseType: !701, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1763, file: !513, line: 267, baseType: !701, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1763, file: !513, line: 270, baseType: !628, size: 32, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !659, file: !513, line: 241, baseType: !1740, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !659, file: !513, line: 244, baseType: !628, size: 32, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !659, file: !513, line: 247, baseType: !628, size: 32, offset: 672)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !659, file: !513, line: 250, baseType: !628, size: 32, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !659, file: !513, line: 253, baseType: !628, size: 32, offset: 736)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !513, line: 256, baseType: !628, size: 32, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !639, file: !561, line: 327, baseType: !817, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !636, file: !561, line: 739, baseType: !1778, size: 448)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !1779)
!1779 = !{!1780, !1786}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1778, file: !561, line: 353, baseType: !1781, size: 384)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1781, file: !561, line: 336, baseType: !639, size: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1781, file: !561, line: 343, baseType: !1224, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1781, file: !561, line: 344, baseType: !1231, size: 64, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1778, file: !561, line: 359, baseType: !1187, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !636, file: !561, line: 740, baseType: !1788, size: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1788, file: !561, line: 368, baseType: !1781, size: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1788, file: !561, line: 373, baseType: !817, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1788, file: !561, line: 374, baseType: !817, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !636, file: !561, line: 741, baseType: !1794, size: 576)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1794, file: !561, line: 383, baseType: !1788, size: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1794, file: !561, line: 389, baseType: !1187, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !636, file: !561, line: 742, baseType: !1799, size: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1799, file: !561, line: 397, baseType: !639, size: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1799, file: !561, line: 400, baseType: !685, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !636, file: !561, line: 743, baseType: !1804, size: 448)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1804, file: !561, line: 408, baseType: !639, size: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1804, file: !561, line: 412, baseType: !817, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1804, file: !561, line: 420, baseType: !817, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1804, file: !561, line: 423, baseType: !685, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !636, file: !561, line: 744, baseType: !1811, size: 384)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !1812)
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1811, file: !561, line: 431, baseType: !639, size: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1811, file: !561, line: 434, baseType: !817, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1811, file: !561, line: 437, baseType: !685, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !636, file: !561, line: 745, baseType: !1817, size: 384)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1817, file: !561, line: 445, baseType: !639, size: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1817, file: !561, line: 449, baseType: !817, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1817, file: !561, line: 453, baseType: !685, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !636, file: !561, line: 746, baseType: !1823, size: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1823, file: !561, line: 461, baseType: !639, size: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1823, file: !561, line: 464, baseType: !817, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !636, file: !561, line: 747, baseType: !1828, size: 768)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1828, file: !561, line: 471, baseType: !639, size: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1828, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1828, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1828, file: !561, line: 478, baseType: !817, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1828, file: !561, line: 481, baseType: !1835, size: 384, offset: 384)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1836, size: 384, elements: !736)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !318, line: 1917, size: 384, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1836, file: !318, line: 1920, baseType: !1236, size: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1836, file: !318, line: 1921, baseType: !817, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1836, file: !318, line: 1922, baseType: !652, size: 32, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !636, file: !561, line: 748, baseType: !1842, size: 320)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1842, file: !561, line: 490, baseType: !639, size: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1842, file: !561, line: 494, baseType: !628, size: 32, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !636, file: !561, line: 749, baseType: !1847, size: 384)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1847, file: !561, line: 502, baseType: !639, size: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1847, file: !561, line: 506, baseType: !685, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1847, file: !561, line: 510, baseType: !685, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !636, file: !561, line: 750, baseType: !1853, size: 320)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1853, file: !561, line: 531, baseType: !639, size: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1853, file: !561, line: 540, baseType: !685, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !636, file: !561, line: 751, baseType: !1858, size: 704)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1858, file: !561, line: 549, baseType: !1788, size: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1858, file: !561, line: 553, baseType: !633, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1858, file: !561, line: 557, baseType: !627, size: 8, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1858, file: !561, line: 558, baseType: !627, size: 8, offset: 584)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1858, file: !561, line: 559, baseType: !627, size: 8, offset: 592)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1858, file: !561, line: 560, baseType: !627, size: 8, offset: 600)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1858, file: !561, line: 566, baseType: !1187, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !636, file: !561, line: 752, baseType: !1868, size: 384)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1868, file: !561, line: 573, baseType: !1799, size: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !561, line: 577, baseType: !817, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !636, file: !561, line: 753, baseType: !1873, size: 576)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1887}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1873, file: !561, line: 602, baseType: !1799, size: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1873, file: !561, line: 605, baseType: !817, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1873, file: !561, line: 609, baseType: !1137, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1873, file: !561, line: 612, baseType: !1879, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1880, file: !561, line: 583, baseType: !317, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1880, file: !561, line: 586, baseType: !817, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1880, file: !561, line: 589, baseType: !817, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1880, file: !561, line: 592, baseType: !817, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1880, file: !561, line: 595, baseType: !817, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1873, file: !561, line: 616, baseType: !685, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !636, file: !561, line: 754, baseType: !1889, size: 512)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1889, file: !561, line: 624, baseType: !1799, size: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1889, file: !561, line: 628, baseType: !817, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1889, file: !561, line: 632, baseType: !817, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1889, file: !561, line: 636, baseType: !817, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !636, file: !561, line: 755, baseType: !1896, size: 704)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1896, file: !561, line: 644, baseType: !1889, size: 512)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1896, file: !561, line: 648, baseType: !817, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1896, file: !561, line: 652, baseType: !817, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1896, file: !561, line: 653, baseType: !817, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !636, file: !561, line: 756, baseType: !1903, size: 448)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1903, file: !561, line: 665, baseType: !1799, size: 320)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1903, file: !561, line: 668, baseType: !817, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1903, file: !561, line: 673, baseType: !817, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !636, file: !561, line: 757, baseType: !1909, size: 384)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1909, file: !561, line: 696, baseType: !1799, size: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1909, file: !561, line: 699, baseType: !817, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !636, file: !561, line: 758, baseType: !1914, size: 384)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1914, file: !561, line: 683, baseType: !639, size: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1914, file: !561, line: 686, baseType: !817, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1914, file: !561, line: 689, baseType: !817, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !636, file: !561, line: 759, baseType: !1920, size: 384)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1920, file: !561, line: 709, baseType: !639, size: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1920, file: !561, line: 712, baseType: !817, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1920, file: !561, line: 712, baseType: !817, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !636, file: !561, line: 760, baseType: !1926, size: 320)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1926, file: !561, line: 720, baseType: !639, size: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1926, file: !561, line: 723, baseType: !817, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !561, line: 4652, size: 448, elements: !1934)
!1934 = !{!1935, !1942, !1943, !1946, !1947, !1948, !1949, !1950}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !1933, file: !561, line: 4655, baseType: !1936, size: 192)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1937, file: !561, line: 257, baseType: !690, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1937, file: !561, line: 263, baseType: !685, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1937, file: !561, line: 264, baseType: !1079, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1933, file: !561, line: 4659, baseType: !632, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !1933, file: !561, line: 4664, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !318, line: 5199, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !1933, file: !561, line: 4678, baseType: !627, size: 8, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !1933, file: !561, line: 4681, baseType: !627, size: 8, offset: 328)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1933, file: !561, line: 4685, baseType: !627, size: 8, offset: 336)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !1933, file: !561, line: 4688, baseType: !627, size: 8, offset: 344)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !1933, file: !561, line: 4694, baseType: !817, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nrv_data", file: !3, line: 50, size: 192, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1952, file: !3, line: 54, baseType: !817, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1952, file: !3, line: 58, baseType: !817, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1952, file: !3, line: 59, baseType: !628, size: 32, offset: 128)
!1957 = !{!0, !1958}
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(name: "pass_return_slot", scope: !2, file: !3, line: 358, type: !1960, isLocal: false, isDefinition: true)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1960, file: !6, line: 158, baseType: !1963, size: 640)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1971, !1975, !1977, !1978, !1979, !1981, !1982, !1983, !1984, !1985}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1963, file: !6, line: 117, baseType: !5, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !6, line: 121, baseType: !633, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1963, file: !6, line: 125, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!627}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1963, file: !6, line: 130, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!7}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1963, file: !6, line: 133, baseType: !1976, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1963, file: !6, line: 136, baseType: !1976, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1963, file: !6, line: 139, baseType: !628, size: 32, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1963, file: !6, line: 143, baseType: !1980, size: 32, offset: 416)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1963, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1963, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1963, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1963, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1963, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1986 = !{i32 2, !"Dwarf Version", i32 4}
!1987 = !{i32 2, !"Debug Info Version", i32 3}
!1988 = !{i32 1, !"wchar_size", i32 4}
!1989 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1990 = distinct !DISubprogram(name: "vprintf", scope: !1991, file: !1991, line: 39, type: !1992, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!1991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!628, !1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !633)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1996, file: !3, baseType: !7, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1996, file: !3, baseType: !7, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1996, file: !3, baseType: !632, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1996, file: !3, baseType: !632, size: 64, offset: 128)
!2002 = !{!2003, !2004}
!2003 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1990, file: !1991, line: 39, type: !1994)
!2004 = !DILocalVariable(name: "__arg", arg: 2, scope: !1990, file: !1991, line: 39, type: !1995)
!2005 = !DILocation(line: 0, scope: !1990)
!2006 = !DILocation(line: 41, column: 20, scope: !1990)
!2007 = !DILocation(line: 41, column: 10, scope: !1990)
!2008 = !DILocation(line: 41, column: 3, scope: !1990)
!2009 = distinct !DISubprogram(name: "getchar", scope: !1991, file: !1991, line: 47, type: !2010, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!628}
!2012 = !{}
!2013 = !DILocation(line: 49, column: 16, scope: !2009)
!2014 = !DILocation(line: 49, column: 10, scope: !2009)
!2015 = !DILocation(line: 49, column: 3, scope: !2009)
!2016 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1991, file: !1991, line: 56, type: !2017, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!628, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2021, line: 7, baseType: !2022)
!2021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2023, line: 49, size: 1728, elements: !2024)
!2023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2040, !2042, !2043, !2044, !2047, !2049, !2050, !2051, !2054, !2056, !2059, !2062, !2063, !2064, !2065, !2066}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2022, file: !2023, line: 51, baseType: !628, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2022, file: !2023, line: 54, baseType: !630, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2022, file: !2023, line: 55, baseType: !630, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2022, file: !2023, line: 56, baseType: !630, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2022, file: !2023, line: 57, baseType: !630, size: 64, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2022, file: !2023, line: 58, baseType: !630, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2022, file: !2023, line: 59, baseType: !630, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2022, file: !2023, line: 60, baseType: !630, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2022, file: !2023, line: 61, baseType: !630, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2022, file: !2023, line: 64, baseType: !630, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2022, file: !2023, line: 65, baseType: !630, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2022, file: !2023, line: 66, baseType: !630, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2022, file: !2023, line: 68, baseType: !2038, size: 64, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2023, line: 36, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2022, file: !2023, line: 70, baseType: !2041, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2022, file: !2023, line: 72, baseType: !628, size: 32, offset: 896)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2022, file: !2023, line: 73, baseType: !628, size: 32, offset: 928)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2022, file: !2023, line: 74, baseType: !2045, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2046, line: 152, baseType: !788)
!2046 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2022, file: !2023, line: 77, baseType: !2048, size: 16, offset: 1024)
!2048 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2022, file: !2023, line: 78, baseType: !1505, size: 8, offset: 1040)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2022, file: !2023, line: 79, baseType: !912, size: 8, offset: 1048)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2022, file: !2023, line: 81, baseType: !2052, size: 64, offset: 1088)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2023, line: 43, baseType: null)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2022, file: !2023, line: 89, baseType: !2055, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2046, line: 153, baseType: !788)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2022, file: !2023, line: 91, baseType: !2057, size: 64, offset: 1216)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2023, line: 37, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2022, file: !2023, line: 92, baseType: !2060, size: 64, offset: 1280)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2023, line: 38, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2022, file: !2023, line: 93, baseType: !2041, size: 64, offset: 1344)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2022, file: !2023, line: 94, baseType: !632, size: 64, offset: 1408)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2022, file: !2023, line: 95, baseType: !1137, size: 64, offset: 1472)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2022, file: !2023, line: 96, baseType: !628, size: 32, offset: 1536)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2022, file: !2023, line: 98, baseType: !2067, size: 160, offset: 1568)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 160, elements: !2068)
!2068 = !{!2069}
!2069 = !DISubrange(count: 20)
!2070 = !{!2071}
!2071 = !DILocalVariable(name: "__fp", arg: 1, scope: !2016, file: !1991, line: 56, type: !2019)
!2072 = !DILocation(line: 0, scope: !2016)
!2073 = !DILocation(line: 58, column: 10, scope: !2016)
!2074 = !DILocation(line: 58, column: 3, scope: !2016)
!2075 = distinct !DISubprogram(name: "getc_unlocked", scope: !1991, file: !1991, line: 66, type: !2017, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "__fp", arg: 1, scope: !2075, file: !1991, line: 66, type: !2019)
!2078 = !DILocation(line: 0, scope: !2075)
!2079 = !DILocation(line: 68, column: 10, scope: !2075)
!2080 = !DILocation(line: 68, column: 3, scope: !2075)
!2081 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1991, file: !1991, line: 73, type: !2010, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2082 = !DILocation(line: 75, column: 10, scope: !2081)
!2083 = !DILocation(line: 75, column: 3, scope: !2081)
!2084 = distinct !DISubprogram(name: "putchar", scope: !1991, file: !1991, line: 82, type: !2085, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!628, !628}
!2087 = !{!2088}
!2088 = !DILocalVariable(name: "__c", arg: 1, scope: !2084, file: !1991, line: 82, type: !628)
!2089 = !DILocation(line: 0, scope: !2084)
!2090 = !DILocation(line: 84, column: 21, scope: !2084)
!2091 = !DILocation(line: 84, column: 10, scope: !2084)
!2092 = !DILocation(line: 84, column: 3, scope: !2084)
!2093 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1991, file: !1991, line: 91, type: !2094, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!628, !628, !2019}
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "__c", arg: 1, scope: !2093, file: !1991, line: 91, type: !628)
!2098 = !DILocalVariable(name: "__stream", arg: 2, scope: !2093, file: !1991, line: 91, type: !2019)
!2099 = !DILocation(line: 0, scope: !2093)
!2100 = !DILocation(line: 93, column: 10, scope: !2093)
!2101 = !DILocation(line: 93, column: 3, scope: !2093)
!2102 = distinct !DISubprogram(name: "putc_unlocked", scope: !1991, file: !1991, line: 101, type: !2094, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2103 = !{!2104, !2105}
!2104 = !DILocalVariable(name: "__c", arg: 1, scope: !2102, file: !1991, line: 101, type: !628)
!2105 = !DILocalVariable(name: "__stream", arg: 2, scope: !2102, file: !1991, line: 101, type: !2019)
!2106 = !DILocation(line: 0, scope: !2102)
!2107 = !DILocation(line: 103, column: 10, scope: !2102)
!2108 = !DILocation(line: 103, column: 3, scope: !2102)
!2109 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1991, file: !1991, line: 108, type: !2085, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2110)
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "__c", arg: 1, scope: !2109, file: !1991, line: 108, type: !628)
!2112 = !DILocation(line: 0, scope: !2109)
!2113 = !DILocation(line: 110, column: 10, scope: !2109)
!2114 = !DILocation(line: 110, column: 3, scope: !2109)
!2115 = distinct !DISubprogram(name: "getline", scope: !1991, file: !1991, line: 118, type: !2116, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2118, !629, !2119, !2019}
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2046, line: 193, baseType: !788)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2115, file: !1991, line: 118, type: !629)
!2122 = !DILocalVariable(name: "__n", arg: 2, scope: !2115, file: !1991, line: 118, type: !2119)
!2123 = !DILocalVariable(name: "__stream", arg: 3, scope: !2115, file: !1991, line: 118, type: !2019)
!2124 = !DILocation(line: 0, scope: !2115)
!2125 = !DILocation(line: 120, column: 10, scope: !2115)
!2126 = !DILocation(line: 120, column: 3, scope: !2115)
!2127 = distinct !DISubprogram(name: "feof_unlocked", scope: !1991, file: !1991, line: 128, type: !2017, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "__stream", arg: 1, scope: !2127, file: !1991, line: 128, type: !2019)
!2130 = !DILocation(line: 0, scope: !2127)
!2131 = !DILocation(line: 130, column: 10, scope: !2127)
!2132 = !DILocation(line: 130, column: 3, scope: !2127)
!2133 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1991, file: !1991, line: 135, type: !2017, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "__stream", arg: 1, scope: !2133, file: !1991, line: 135, type: !2019)
!2136 = !DILocation(line: 0, scope: !2133)
!2137 = !DILocation(line: 137, column: 10, scope: !2133)
!2138 = !DILocation(line: 137, column: 3, scope: !2133)
!2139 = distinct !DISubprogram(name: "tolower", scope: !2140, file: !2140, line: 207, type: !2085, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2140 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "__c", arg: 1, scope: !2139, file: !2140, line: 207, type: !628)
!2143 = !DILocation(line: 0, scope: !2139)
!2144 = !DILocation(line: 209, column: 22, scope: !2139)
!2145 = !DILocation(line: 209, column: 39, scope: !2139)
!2146 = !DILocation(line: 209, column: 38, scope: !2139)
!2147 = !DILocation(line: 209, column: 37, scope: !2139)
!2148 = !DILocation(line: 209, column: 10, scope: !2139)
!2149 = !DILocation(line: 209, column: 3, scope: !2139)
!2150 = distinct !DISubprogram(name: "toupper", scope: !2140, file: !2140, line: 213, type: !2085, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "__c", arg: 1, scope: !2150, file: !2140, line: 213, type: !628)
!2153 = !DILocation(line: 0, scope: !2150)
!2154 = !DILocation(line: 215, column: 22, scope: !2150)
!2155 = !DILocation(line: 215, column: 39, scope: !2150)
!2156 = !DILocation(line: 215, column: 38, scope: !2150)
!2157 = !DILocation(line: 215, column: 37, scope: !2150)
!2158 = !DILocation(line: 215, column: 10, scope: !2150)
!2159 = !DILocation(line: 215, column: 3, scope: !2150)
!2160 = distinct !DISubprogram(name: "atoi", scope: !2161, file: !2161, line: 361, type: !2162, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2161 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!628, !633}
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2160, file: !2161, line: 361, type: !633)
!2166 = !DILocation(line: 0, scope: !2160)
!2167 = !DILocation(line: 363, column: 16, scope: !2160)
!2168 = !DILocation(line: 363, column: 10, scope: !2160)
!2169 = !DILocation(line: 363, column: 3, scope: !2160)
!2170 = distinct !DISubprogram(name: "atol", scope: !2161, file: !2161, line: 366, type: !2171, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!788, !633}
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2170, file: !2161, line: 366, type: !633)
!2175 = !DILocation(line: 0, scope: !2170)
!2176 = !DILocation(line: 368, column: 10, scope: !2170)
!2177 = !DILocation(line: 368, column: 3, scope: !2170)
!2178 = distinct !DISubprogram(name: "atoll", scope: !2161, file: !2161, line: 373, type: !2179, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2181, !633}
!2181 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2178, file: !2161, line: 373, type: !633)
!2184 = !DILocation(line: 0, scope: !2178)
!2185 = !DILocation(line: 375, column: 10, scope: !2178)
!2186 = !DILocation(line: 375, column: 3, scope: !2178)
!2187 = distinct !DISubprogram(name: "bsearch", scope: !2188, file: !2188, line: 20, type: !2189, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!632, !1122, !1122, !1137, !1137, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2161, line: 808, baseType: !1126)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2193 = !DILocalVariable(name: "__key", arg: 1, scope: !2187, file: !2188, line: 20, type: !1122)
!2194 = !DILocalVariable(name: "__base", arg: 2, scope: !2187, file: !2188, line: 20, type: !1122)
!2195 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2187, file: !2188, line: 20, type: !1137)
!2196 = !DILocalVariable(name: "__size", arg: 4, scope: !2187, file: !2188, line: 20, type: !1137)
!2197 = !DILocalVariable(name: "__compar", arg: 5, scope: !2187, file: !2188, line: 21, type: !2191)
!2198 = !DILocalVariable(name: "__l", scope: !2187, file: !2188, line: 23, type: !1137)
!2199 = !DILocalVariable(name: "__u", scope: !2187, file: !2188, line: 23, type: !1137)
!2200 = !DILocalVariable(name: "__idx", scope: !2187, file: !2188, line: 23, type: !1137)
!2201 = !DILocalVariable(name: "__p", scope: !2187, file: !2188, line: 24, type: !1122)
!2202 = !DILocalVariable(name: "__comparison", scope: !2187, file: !2188, line: 25, type: !628)
!2203 = !DILocation(line: 0, scope: !2187)
!2204 = !DILocation(line: 29, column: 3, scope: !2187)
!2205 = !DILocation(line: 27, column: 7, scope: !2187)
!2206 = !DILocation(line: 29, column: 14, scope: !2187)
!2207 = !DILocation(line: 31, column: 20, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2187, file: !2188, line: 30, column: 5)
!2209 = !DILocation(line: 31, column: 27, scope: !2208)
!2210 = !DILocation(line: 32, column: 56, scope: !2208)
!2211 = !DILocation(line: 32, column: 47, scope: !2208)
!2212 = !DILocation(line: 33, column: 22, scope: !2208)
!2213 = !DILocation(line: 34, column: 24, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !2188, line: 34, column: 11)
!2215 = !DILocation(line: 34, column: 11, scope: !2208)
!2216 = !DILocation(line: 36, column: 29, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !2188, line: 36, column: 16)
!2218 = !DILocation(line: 36, column: 16, scope: !2214)
!2219 = !DILocation(line: 37, column: 14, scope: !2217)
!2220 = distinct !{!2220, !2204, !2221}
!2221 = !DILocation(line: 40, column: 5, scope: !2187)
!2222 = !DILocation(line: 43, column: 1, scope: !2187)
!2223 = distinct !DISubprogram(name: "atof", scope: !2224, file: !2224, line: 25, type: !2225, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227, !633}
!2227 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2223, file: !2224, line: 25, type: !633)
!2230 = !DILocation(line: 0, scope: !2223)
!2231 = !DILocation(line: 27, column: 10, scope: !2223)
!2232 = !DILocation(line: 27, column: 3, scope: !2223)
!2233 = distinct !DISubprogram(name: "strtoimax", scope: !2234, file: !2234, line: 324, type: !2235, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2234 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!2237, !1994, !2240, !628}
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2238, line: 101, baseType: !2239)
!2238 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2046, line: 72, baseType: !788)
!2240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !629)
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "nptr", arg: 1, scope: !2233, file: !2234, line: 324, type: !1994)
!2243 = !DILocalVariable(name: "endptr", arg: 2, scope: !2233, file: !2234, line: 324, type: !2240)
!2244 = !DILocalVariable(name: "base", arg: 3, scope: !2233, file: !2234, line: 324, type: !628)
!2245 = !DILocation(line: 0, scope: !2233)
!2246 = !DILocation(line: 327, column: 10, scope: !2233)
!2247 = !DILocation(line: 327, column: 3, scope: !2233)
!2248 = distinct !DISubprogram(name: "strtoumax", scope: !2234, file: !2234, line: 336, type: !2249, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!2251, !1994, !2240, !628}
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2238, line: 102, baseType: !2252)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2046, line: 73, baseType: !771)
!2253 = !{!2254, !2255, !2256}
!2254 = !DILocalVariable(name: "nptr", arg: 1, scope: !2248, file: !2234, line: 336, type: !1994)
!2255 = !DILocalVariable(name: "endptr", arg: 2, scope: !2248, file: !2234, line: 336, type: !2240)
!2256 = !DILocalVariable(name: "base", arg: 3, scope: !2248, file: !2234, line: 336, type: !628)
!2257 = !DILocation(line: 0, scope: !2248)
!2258 = !DILocation(line: 339, column: 10, scope: !2248)
!2259 = !DILocation(line: 339, column: 3, scope: !2248)
!2260 = distinct !DISubprogram(name: "wcstoimax", scope: !2234, file: !2234, line: 348, type: !2261, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2237, !2263, !2267, !628}
!2263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2234, line: 34, baseType: !628)
!2267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "nptr", arg: 1, scope: !2260, file: !2234, line: 348, type: !2263)
!2272 = !DILocalVariable(name: "endptr", arg: 2, scope: !2260, file: !2234, line: 348, type: !2267)
!2273 = !DILocalVariable(name: "base", arg: 3, scope: !2260, file: !2234, line: 348, type: !628)
!2274 = !DILocation(line: 0, scope: !2260)
!2275 = !DILocation(line: 351, column: 10, scope: !2260)
!2276 = !DILocation(line: 351, column: 3, scope: !2260)
!2277 = distinct !DISubprogram(name: "wcstoumax", scope: !2234, file: !2234, line: 362, type: !2278, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2251, !2263, !2267, !628}
!2280 = !{!2281, !2282, !2283}
!2281 = !DILocalVariable(name: "nptr", arg: 1, scope: !2277, file: !2234, line: 362, type: !2263)
!2282 = !DILocalVariable(name: "endptr", arg: 2, scope: !2277, file: !2234, line: 362, type: !2267)
!2283 = !DILocalVariable(name: "base", arg: 3, scope: !2277, file: !2234, line: 362, type: !628)
!2284 = !DILocation(line: 0, scope: !2277)
!2285 = !DILocation(line: 365, column: 10, scope: !2277)
!2286 = !DILocation(line: 365, column: 3, scope: !2277)
!2287 = distinct !DISubprogram(name: "stat", scope: !2288, file: !2288, line: 453, type: !2289, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!628, !633, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2293, line: 46, size: 1152, elements: !2294)
!2293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2294 = !{!2295, !2297, !2299, !2301, !2303, !2305, !2307, !2308, !2309, !2310, !2312, !2314, !2322, !2323, !2324}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2292, file: !2293, line: 48, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2046, line: 145, baseType: !771)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2292, file: !2293, line: 53, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2046, line: 148, baseType: !771)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2292, file: !2293, line: 61, baseType: !2300, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2046, line: 151, baseType: !771)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2292, file: !2293, line: 62, baseType: !2302, size: 32, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2046, line: 150, baseType: !7)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2292, file: !2293, line: 64, baseType: !2304, size: 32, offset: 224)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2046, line: 146, baseType: !7)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2292, file: !2293, line: 65, baseType: !2306, size: 32, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2046, line: 147, baseType: !7)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2292, file: !2293, line: 67, baseType: !628, size: 32, offset: 288)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2292, file: !2293, line: 69, baseType: !2296, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2292, file: !2293, line: 74, baseType: !2045, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2292, file: !2293, line: 78, baseType: !2311, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2046, line: 174, baseType: !788)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2292, file: !2293, line: 80, baseType: !2313, size: 64, offset: 512)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2046, line: 179, baseType: !788)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2292, file: !2293, line: 91, baseType: !2315, size: 128, offset: 576)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2316, line: 10, size: 128, elements: !2317)
!2316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2317 = !{!2318, !2320}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2315, file: !2316, line: 12, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2046, line: 160, baseType: !788)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2315, file: !2316, line: 16, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2046, line: 196, baseType: !788)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2292, file: !2293, line: 92, baseType: !2315, size: 128, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2292, file: !2293, line: 93, baseType: !2315, size: 128, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2292, file: !2293, line: 106, baseType: !2325, size: 192, offset: 960)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 192, elements: !888)
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "__path", arg: 1, scope: !2287, file: !2288, line: 453, type: !633)
!2328 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2287, file: !2288, line: 453, type: !2291)
!2329 = !DILocation(line: 0, scope: !2287)
!2330 = !DILocation(line: 455, column: 10, scope: !2287)
!2331 = !DILocation(line: 455, column: 3, scope: !2287)
!2332 = distinct !DISubprogram(name: "lstat", scope: !2288, file: !2288, line: 460, type: !2289, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "__path", arg: 1, scope: !2332, file: !2288, line: 460, type: !633)
!2335 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2332, file: !2288, line: 460, type: !2291)
!2336 = !DILocation(line: 0, scope: !2332)
!2337 = !DILocation(line: 462, column: 10, scope: !2332)
!2338 = !DILocation(line: 462, column: 3, scope: !2332)
!2339 = distinct !DISubprogram(name: "fstat", scope: !2288, file: !2288, line: 467, type: !2340, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!628, !628, !2291}
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "__fd", arg: 1, scope: !2339, file: !2288, line: 467, type: !628)
!2344 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2339, file: !2288, line: 467, type: !2291)
!2345 = !DILocation(line: 0, scope: !2339)
!2346 = !DILocation(line: 469, column: 10, scope: !2339)
!2347 = !DILocation(line: 469, column: 3, scope: !2339)
!2348 = distinct !DISubprogram(name: "fstatat", scope: !2288, file: !2288, line: 474, type: !2349, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!628, !628, !633, !2291, !628}
!2351 = !{!2352, !2353, !2354, !2355}
!2352 = !DILocalVariable(name: "__fd", arg: 1, scope: !2348, file: !2288, line: 474, type: !628)
!2353 = !DILocalVariable(name: "__filename", arg: 2, scope: !2348, file: !2288, line: 474, type: !633)
!2354 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2348, file: !2288, line: 474, type: !2291)
!2355 = !DILocalVariable(name: "__flag", arg: 4, scope: !2348, file: !2288, line: 474, type: !628)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocation(line: 477, column: 10, scope: !2348)
!2358 = !DILocation(line: 477, column: 3, scope: !2348)
!2359 = distinct !DISubprogram(name: "mknod", scope: !2288, file: !2288, line: 483, type: !2360, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!628, !633, !2302, !2296}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "__path", arg: 1, scope: !2359, file: !2288, line: 483, type: !633)
!2364 = !DILocalVariable(name: "__mode", arg: 2, scope: !2359, file: !2288, line: 483, type: !2302)
!2365 = !DILocalVariable(name: "__dev", arg: 3, scope: !2359, file: !2288, line: 483, type: !2296)
!2366 = !DILocation(line: 0, scope: !2359)
!2367 = !DILocation(line: 485, column: 10, scope: !2359)
!2368 = !DILocation(line: 485, column: 3, scope: !2359)
!2369 = distinct !DISubprogram(name: "mknodat", scope: !2288, file: !2288, line: 491, type: !2370, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!628, !628, !633, !2302, !2296}
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DILocalVariable(name: "__fd", arg: 1, scope: !2369, file: !2288, line: 491, type: !628)
!2374 = !DILocalVariable(name: "__path", arg: 2, scope: !2369, file: !2288, line: 491, type: !633)
!2375 = !DILocalVariable(name: "__mode", arg: 3, scope: !2369, file: !2288, line: 491, type: !2302)
!2376 = !DILocalVariable(name: "__dev", arg: 4, scope: !2369, file: !2288, line: 491, type: !2296)
!2377 = !DILocation(line: 0, scope: !2369)
!2378 = !DILocation(line: 494, column: 10, scope: !2369)
!2379 = !DILocation(line: 494, column: 3, scope: !2369)
!2380 = distinct !DISubprogram(name: "stat64", scope: !2288, file: !2288, line: 502, type: !2381, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!628, !633, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2293, line: 119, size: 1152, elements: !2385)
!2385 = !{!2386, !2387, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2399, !2400, !2401, !2402}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2384, file: !2293, line: 121, baseType: !2296, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2384, file: !2293, line: 123, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2046, line: 149, baseType: !771)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2384, file: !2293, line: 124, baseType: !2300, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2384, file: !2293, line: 125, baseType: !2302, size: 32, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2384, file: !2293, line: 132, baseType: !2304, size: 32, offset: 224)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2384, file: !2293, line: 133, baseType: !2306, size: 32, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2384, file: !2293, line: 135, baseType: !628, size: 32, offset: 288)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2384, file: !2293, line: 136, baseType: !2296, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2384, file: !2293, line: 137, baseType: !2045, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2384, file: !2293, line: 143, baseType: !2311, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2384, file: !2293, line: 144, baseType: !2398, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2046, line: 180, baseType: !788)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2384, file: !2293, line: 152, baseType: !2315, size: 128, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2384, file: !2293, line: 153, baseType: !2315, size: 128, offset: 704)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2384, file: !2293, line: 154, baseType: !2315, size: 128, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2384, file: !2293, line: 164, baseType: !2325, size: 192, offset: 960)
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "__path", arg: 1, scope: !2380, file: !2288, line: 502, type: !633)
!2405 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2380, file: !2288, line: 502, type: !2383)
!2406 = !DILocation(line: 0, scope: !2380)
!2407 = !DILocation(line: 504, column: 10, scope: !2380)
!2408 = !DILocation(line: 504, column: 3, scope: !2380)
!2409 = distinct !DISubprogram(name: "lstat64", scope: !2288, file: !2288, line: 509, type: !2381, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "__path", arg: 1, scope: !2409, file: !2288, line: 509, type: !633)
!2412 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2409, file: !2288, line: 509, type: !2383)
!2413 = !DILocation(line: 0, scope: !2409)
!2414 = !DILocation(line: 511, column: 10, scope: !2409)
!2415 = !DILocation(line: 511, column: 3, scope: !2409)
!2416 = distinct !DISubprogram(name: "fstat64", scope: !2288, file: !2288, line: 516, type: !2417, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!628, !628, !2383}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "__fd", arg: 1, scope: !2416, file: !2288, line: 516, type: !628)
!2421 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2416, file: !2288, line: 516, type: !2383)
!2422 = !DILocation(line: 0, scope: !2416)
!2423 = !DILocation(line: 518, column: 10, scope: !2416)
!2424 = !DILocation(line: 518, column: 3, scope: !2416)
!2425 = distinct !DISubprogram(name: "fstatat64", scope: !2288, file: !2288, line: 523, type: !2426, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!628, !628, !633, !2383, !628}
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "__fd", arg: 1, scope: !2425, file: !2288, line: 523, type: !628)
!2430 = !DILocalVariable(name: "__filename", arg: 2, scope: !2425, file: !2288, line: 523, type: !633)
!2431 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2425, file: !2288, line: 523, type: !2383)
!2432 = !DILocalVariable(name: "__flag", arg: 4, scope: !2425, file: !2288, line: 523, type: !628)
!2433 = !DILocation(line: 0, scope: !2425)
!2434 = !DILocation(line: 526, column: 10, scope: !2425)
!2435 = !DILocation(line: 526, column: 3, scope: !2425)
!2436 = distinct !DISubprogram(name: "gate_pass_return_slot", scope: !3, file: !3, line: 266, type: !1969, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2437 = !DILocation(line: 268, column: 10, scope: !2436)
!2438 = !DILocation(line: 268, column: 19, scope: !2436)
!2439 = !DILocation(line: 268, column: 3, scope: !2436)
!2440 = distinct !DISubprogram(name: "tree_nrv", scope: !3, file: !3, line: 109, type: !1973, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2455, !2456, !2460, !2463, !2470}
!2442 = !DILocalVariable(name: "result", scope: !2440, file: !3, line: 111, type: !817)
!2443 = !DILocalVariable(name: "result_type", scope: !2440, file: !3, line: 112, type: !817)
!2444 = !DILocalVariable(name: "found", scope: !2440, file: !3, line: 113, type: !817)
!2445 = !DILocalVariable(name: "bb", scope: !2440, file: !3, line: 114, type: !1079)
!2446 = !DILocalVariable(name: "gsi", scope: !2440, file: !3, line: 115, type: !1936)
!2447 = !DILocalVariable(name: "data", scope: !2440, file: !3, line: 116, type: !1952)
!2448 = !DILocalVariable(name: "stmt", scope: !2449, file: !3, line: 143, type: !695)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 142, column: 2)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 141, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 141, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 140, column: 5)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 139, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 139, column: 3)
!2455 = !DILocalVariable(name: "ret_val", scope: !2449, file: !3, line: 144, type: !817)
!2456 = !DILocalVariable(name: "rhs", scope: !2457, file: !3, line: 158, type: !817)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 157, column: 6)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 155, column: 13)
!2459 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 146, column: 8)
!2460 = !DILocalVariable(name: "addr", scope: !2461, file: !3, line: 192, type: !817)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 191, column: 6)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 190, column: 13)
!2463 = !DILocalVariable(name: "stmt", scope: !2464, file: !3, line: 237, type: !695)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 236, column: 2)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 235, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 235, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 234, column: 5)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 233, column: 3)
!2469 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 233, column: 3)
!2470 = !DILocalVariable(name: "wi", scope: !2471, file: !3, line: 248, type: !1933)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 247, column: 6)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 239, column: 8)
!2473 = !DILocation(line: 111, column: 17, scope: !2440)
!2474 = !DILocation(line: 0, scope: !2440)
!2475 = !DILocation(line: 112, column: 22, scope: !2440)
!2476 = !DILocation(line: 115, column: 3, scope: !2440)
!2477 = !DILocation(line: 116, column: 3, scope: !2440)
!2478 = !DILocation(line: 120, column: 35, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 120, column: 7)
!2480 = !DILocation(line: 120, column: 8, scope: !2479)
!2481 = !DILocation(line: 120, column: 7, scope: !2440)
!2482 = !DILocation(line: 125, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 125, column: 7)
!2484 = !DILocation(line: 125, column: 7, scope: !2440)
!2485 = !DILocation(line: 129, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 129, column: 7)
!2487 = !DILocation(line: 129, column: 7, scope: !2440)
!2488 = !DILocation(line: 135, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 135, column: 7)
!2490 = !DILocation(line: 135, column: 7, scope: !2440)
!2491 = !DILocation(line: 139, column: 3, scope: !2454)
!2492 = !DILocation(line: 0, scope: !2451)
!2493 = !DILocation(line: 0, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 180, column: 12)
!2495 = !DILocation(line: 139, column: 3, scope: !2453)
!2496 = !DILocation(line: 113, column: 8, scope: !2440)
!2497 = !DILocation(line: 0, scope: !2454)
!2498 = !DILocation(line: 141, column: 18, scope: !2451)
!2499 = !DILocation(line: 141, column: 12, scope: !2451)
!2500 = !DILocation(line: 141, column: 38, scope: !2450)
!2501 = !DILocation(line: 141, column: 37, scope: !2450)
!2502 = !DILocation(line: 141, column: 7, scope: !2451)
!2503 = !DILocation(line: 143, column: 18, scope: !2449)
!2504 = !DILocation(line: 0, scope: !2449)
!2505 = !DILocation(line: 146, column: 8, scope: !2459)
!2506 = !DILocation(line: 146, column: 27, scope: !2459)
!2507 = !DILocation(line: 146, column: 8, scope: !2449)
!2508 = !DILocation(line: 151, column: 18, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 147, column: 6)
!2510 = !DILocation(line: 152, column: 12, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 152, column: 12)
!2512 = !DILocation(line: 153, column: 3, scope: !2511)
!2513 = !DILocation(line: 152, column: 12, scope: !2509)
!2514 = !DILocation(line: 155, column: 13, scope: !2458)
!2515 = !DILocation(line: 156, column: 6, scope: !2458)
!2516 = !DILocation(line: 156, column: 9, scope: !2458)
!2517 = !DILocation(line: 156, column: 31, scope: !2458)
!2518 = !DILocation(line: 155, column: 13, scope: !2459)
!2519 = !DILocation(line: 160, column: 13, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 160, column: 12)
!2521 = !DILocation(line: 160, column: 12, scope: !2457)
!2522 = !DILocation(line: 163, column: 14, scope: !2457)
!2523 = !DILocation(line: 0, scope: !2457)
!2524 = !DILocation(line: 167, column: 18, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 167, column: 12)
!2526 = !DILocation(line: 167, column: 12, scope: !2457)
!2527 = !DILocation(line: 172, column: 15, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 172, column: 9)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 168, column: 3)
!2530 = !DILocation(line: 172, column: 9, scope: !2529)
!2531 = !DILocation(line: 180, column: 12, scope: !2494)
!2532 = !DILocation(line: 180, column: 30, scope: !2494)
!2533 = !DILocation(line: 181, column: 5, scope: !2494)
!2534 = !DILocation(line: 181, column: 8, scope: !2494)
!2535 = !DILocation(line: 182, column: 5, scope: !2494)
!2536 = !DILocation(line: 182, column: 8, scope: !2494)
!2537 = !DILocation(line: 182, column: 32, scope: !2494)
!2538 = !DILocation(line: 182, column: 29, scope: !2494)
!2539 = !DILocation(line: 183, column: 5, scope: !2494)
!2540 = !DILocation(line: 183, column: 8, scope: !2494)
!2541 = !DILocation(line: 184, column: 5, scope: !2494)
!2542 = !DILocation(line: 184, column: 8, scope: !2494)
!2543 = !DILocation(line: 185, column: 5, scope: !2494)
!2544 = !DILocation(line: 185, column: 8, scope: !2494)
!2545 = !DILocation(line: 185, column: 29, scope: !2494)
!2546 = !DILocation(line: 185, column: 27, scope: !2494)
!2547 = !DILocation(line: 186, column: 5, scope: !2494)
!2548 = !DILocation(line: 187, column: 8, scope: !2494)
!2549 = !DILocation(line: 186, column: 9, scope: !2494)
!2550 = !DILocation(line: 180, column: 12, scope: !2457)
!2551 = !DILocation(line: 190, column: 13, scope: !2462)
!2552 = !DILocation(line: 190, column: 13, scope: !2458)
!2553 = !DILocation(line: 192, column: 38, scope: !2461)
!2554 = !DILocation(line: 192, column: 20, scope: !2461)
!2555 = !DILocation(line: 0, scope: !2461)
!2556 = !DILocation(line: 195, column: 12, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 195, column: 12)
!2558 = !DILocation(line: 195, column: 25, scope: !2557)
!2559 = !DILocation(line: 195, column: 17, scope: !2557)
!2560 = !DILocation(line: 198, column: 2, scope: !2450)
!2561 = !DILocation(line: 141, column: 55, scope: !2450)
!2562 = !DILocation(line: 141, column: 7, scope: !2450)
!2563 = distinct !{!2563, !2502, !2564}
!2564 = !DILocation(line: 198, column: 2, scope: !2451)
!2565 = !DILocation(line: 0, scope: !2453)
!2566 = distinct !{!2566, !2491, !2567}
!2567 = !DILocation(line: 199, column: 5, scope: !2454)
!2568 = !DILocation(line: 201, column: 8, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 201, column: 7)
!2570 = !DILocation(line: 201, column: 7, scope: !2440)
!2571 = !DILocation(line: 205, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 205, column: 7)
!2573 = !DILocation(line: 205, column: 17, scope: !2572)
!2574 = !DILocation(line: 205, column: 21, scope: !2572)
!2575 = !DILocation(line: 205, column: 32, scope: !2572)
!2576 = !DILocation(line: 205, column: 7, scope: !2440)
!2577 = !DILocation(line: 207, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 206, column: 5)
!2579 = !DILocation(line: 208, column: 27, scope: !2578)
!2580 = !DILocation(line: 208, column: 45, scope: !2578)
!2581 = !DILocation(line: 208, column: 7, scope: !2578)
!2582 = !DILocation(line: 209, column: 16, scope: !2578)
!2583 = !DILocation(line: 209, column: 7, scope: !2578)
!2584 = !DILocation(line: 210, column: 27, scope: !2578)
!2585 = !DILocation(line: 210, column: 46, scope: !2578)
!2586 = !DILocation(line: 210, column: 7, scope: !2578)
!2587 = !DILocation(line: 211, column: 16, scope: !2578)
!2588 = !DILocation(line: 211, column: 7, scope: !2578)
!2589 = !DILocation(line: 212, column: 5, scope: !2578)
!2590 = !DILocation(line: 218, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 218, column: 7)
!2592 = !DILocation(line: 219, column: 7, scope: !2591)
!2593 = !DILocation(line: 219, column: 12, scope: !2591)
!2594 = !DILocation(line: 220, column: 5, scope: !2591)
!2595 = !DILocation(line: 220, column: 8, scope: !2591)
!2596 = !DILocation(line: 220, column: 55, scope: !2591)
!2597 = !DILocation(line: 220, column: 52, scope: !2591)
!2598 = !DILocation(line: 218, column: 7, scope: !2440)
!2599 = !DILocation(line: 222, column: 28, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 221, column: 5)
!2601 = !DILocation(line: 222, column: 26, scope: !2600)
!2602 = !DILocation(line: 223, column: 39, scope: !2600)
!2603 = !DILocation(line: 223, column: 7, scope: !2600)
!2604 = !DILocation(line: 223, column: 37, scope: !2600)
!2605 = !DILocation(line: 224, column: 39, scope: !2600)
!2606 = !DILocation(line: 224, column: 7, scope: !2600)
!2607 = !DILocation(line: 224, column: 37, scope: !2600)
!2608 = !DILocation(line: 225, column: 5, scope: !2600)
!2609 = !DILocation(line: 227, column: 32, scope: !2440)
!2610 = !DILocation(line: 227, column: 29, scope: !2440)
!2611 = !DILocation(line: 231, column: 8, scope: !2440)
!2612 = !DILocation(line: 231, column: 12, scope: !2440)
!2613 = !DILocation(line: 232, column: 8, scope: !2440)
!2614 = !DILocation(line: 232, column: 15, scope: !2440)
!2615 = !DILocation(line: 233, column: 3, scope: !2469)
!2616 = !DILocation(line: 0, scope: !2466)
!2617 = !DILocation(line: 0, scope: !2471)
!2618 = !DILocation(line: 233, column: 3, scope: !2468)
!2619 = !DILocation(line: 0, scope: !2469)
!2620 = !DILocation(line: 235, column: 18, scope: !2466)
!2621 = !DILocation(line: 235, column: 12, scope: !2466)
!2622 = !DILocation(line: 235, column: 38, scope: !2465)
!2623 = !DILocation(line: 235, column: 37, scope: !2465)
!2624 = !DILocation(line: 235, column: 7, scope: !2466)
!2625 = !DILocation(line: 237, column: 18, scope: !2464)
!2626 = !DILocation(line: 0, scope: !2464)
!2627 = !DILocation(line: 239, column: 8, scope: !2472)
!2628 = !DILocation(line: 240, column: 8, scope: !2472)
!2629 = !DILocation(line: 240, column: 11, scope: !2472)
!2630 = !DILocation(line: 240, column: 36, scope: !2472)
!2631 = !DILocation(line: 241, column: 8, scope: !2472)
!2632 = !DILocation(line: 241, column: 11, scope: !2472)
!2633 = !DILocation(line: 241, column: 37, scope: !2472)
!2634 = !DILocation(line: 239, column: 8, scope: !2464)
!2635 = !DILocation(line: 243, column: 8, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 242, column: 6)
!2637 = !DILocation(line: 244, column: 8, scope: !2636)
!2638 = !DILocation(line: 245, column: 6, scope: !2636)
!2639 = !DILocation(line: 248, column: 8, scope: !2471)
!2640 = !DILocation(line: 249, column: 8, scope: !2471)
!2641 = !DILocation(line: 250, column: 16, scope: !2471)
!2642 = !DILocation(line: 251, column: 22, scope: !2471)
!2643 = !DILocation(line: 252, column: 8, scope: !2471)
!2644 = !DILocation(line: 253, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 253, column: 12)
!2646 = !DILocation(line: 253, column: 12, scope: !2645)
!2647 = !DILocation(line: 253, column: 12, scope: !2471)
!2648 = !DILocation(line: 254, column: 3, scope: !2645)
!2649 = !DILocation(line: 255, column: 8, scope: !2471)
!2650 = !DILocation(line: 256, column: 6, scope: !2472)
!2651 = !DILocation(line: 235, column: 7, scope: !2465)
!2652 = distinct !{!2652, !2624, !2653}
!2653 = !DILocation(line: 257, column: 2, scope: !2466)
!2654 = !DILocation(line: 0, scope: !2468)
!2655 = distinct !{!2655, !2615, !2656}
!2656 = !DILocation(line: 258, column: 5, scope: !2469)
!2657 = !DILocation(line: 261, column: 3, scope: !2440)
!2658 = !DILocation(line: 261, column: 20, scope: !2440)
!2659 = !DILocation(line: 261, column: 25, scope: !2440)
!2660 = !DILocation(line: 262, column: 3, scope: !2440)
!2661 = !DILocation(line: 263, column: 1, scope: !2440)
!2662 = distinct !DISubprogram(name: "execute_return_slot_opt", scope: !3, file: !3, line: 329, type: !1973, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2663 = !{!2664, !2665, !2669, !2673}
!2664 = !DILocalVariable(name: "bb", scope: !2662, file: !3, line: 331, type: !1079)
!2665 = !DILocalVariable(name: "gsi", scope: !2666, file: !3, line: 335, type: !1936)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 334, column: 5)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 333, column: 3)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 333, column: 3)
!2669 = !DILocalVariable(name: "stmt", scope: !2670, file: !3, line: 338, type: !695)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 337, column: 2)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 336, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 336, column: 7)
!2673 = !DILocalVariable(name: "slot_opt_p", scope: !2670, file: !3, line: 339, type: !627)
!2674 = !DILocation(line: 333, column: 3, scope: !2668)
!2675 = !DILocation(line: 0, scope: !2666)
!2676 = !DILocation(line: 0, scope: !2672)
!2677 = !DILocation(line: 333, column: 3, scope: !2667)
!2678 = !DILocation(line: 0, scope: !2668)
!2679 = !DILocation(line: 0, scope: !2662)
!2680 = !DILocation(line: 335, column: 7, scope: !2666)
!2681 = !DILocation(line: 336, column: 18, scope: !2672)
!2682 = !DILocation(line: 336, column: 12, scope: !2672)
!2683 = !DILocation(line: 336, column: 38, scope: !2671)
!2684 = !DILocation(line: 336, column: 37, scope: !2671)
!2685 = !DILocation(line: 336, column: 7, scope: !2672)
!2686 = !DILocation(line: 338, column: 18, scope: !2670)
!2687 = !DILocation(line: 0, scope: !2670)
!2688 = !DILocation(line: 341, column: 8, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 341, column: 8)
!2690 = !DILocation(line: 342, column: 8, scope: !2689)
!2691 = !DILocation(line: 342, column: 11, scope: !2689)
!2692 = !DILocation(line: 343, column: 8, scope: !2689)
!2693 = !DILocation(line: 343, column: 12, scope: !2689)
!2694 = !DILocation(line: 344, column: 8, scope: !2689)
!2695 = !DILocation(line: 344, column: 30, scope: !2689)
!2696 = !DILocation(line: 345, column: 9, scope: !2689)
!2697 = !DILocation(line: 344, column: 11, scope: !2689)
!2698 = !DILocation(line: 341, column: 8, scope: !2670)
!2699 = !DILocation(line: 350, column: 42, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 347, column: 6)
!2701 = !DILocation(line: 350, column: 21, scope: !2700)
!2702 = !DILocation(line: 351, column: 8, scope: !2700)
!2703 = !DILocation(line: 352, column: 6, scope: !2700)
!2704 = !DILocation(line: 336, column: 55, scope: !2671)
!2705 = !DILocation(line: 336, column: 7, scope: !2671)
!2706 = distinct !{!2706, !2685, !2707}
!2707 = !DILocation(line: 353, column: 2, scope: !2672)
!2708 = !DILocation(line: 354, column: 5, scope: !2667)
!2709 = !DILocation(line: 0, scope: !2667)
!2710 = distinct !{!2710, !2674, !2711}
!2711 = !DILocation(line: 354, column: 5, scope: !2668)
!2712 = !DILocation(line: 355, column: 3, scope: !2662)
!2713 = distinct !DISubprogram(name: "gsi_start_bb", scope: !561, file: !561, line: 4418, type: !2714, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!1936, !1079}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "bb", arg: 1, scope: !2713, file: !561, line: 4418, type: !1079)
!2718 = !DILocalVariable(name: "i", scope: !2713, file: !561, line: 4420, type: !1936)
!2719 = !DILocalVariable(name: "seq", scope: !2713, file: !561, line: 4421, type: !685)
!2720 = !DILocation(line: 0, scope: !2713)
!2721 = !DILocation(line: 4420, column: 24, scope: !2713)
!2722 = !DILocation(line: 4423, column: 9, scope: !2713)
!2723 = !DILocation(line: 4424, column: 11, scope: !2713)
!2724 = !DILocation(line: 4424, column: 5, scope: !2713)
!2725 = !DILocation(line: 4424, column: 9, scope: !2713)
!2726 = !DILocation(line: 4425, column: 5, scope: !2713)
!2727 = !DILocation(line: 4425, column: 9, scope: !2713)
!2728 = !DILocation(line: 4426, column: 5, scope: !2713)
!2729 = !DILocation(line: 4426, column: 8, scope: !2713)
!2730 = !DILocation(line: 4429, column: 1, scope: !2713)
!2731 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !2732, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!627, !1936}
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "i", arg: 1, scope: !2731, file: !561, line: 4467, type: !1936)
!2736 = !DILocation(line: 4467, column: 33, scope: !2731)
!2737 = !DILocation(line: 4469, column: 12, scope: !2731)
!2738 = !DILocation(line: 4469, column: 16, scope: !2731)
!2739 = !DILocation(line: 4469, column: 10, scope: !2731)
!2740 = !DILocation(line: 4469, column: 3, scope: !2731)
!2741 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !2742, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!695, !1936}
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "i", arg: 1, scope: !2741, file: !561, line: 4501, type: !1936)
!2746 = !DILocation(line: 4501, column: 32, scope: !2741)
!2747 = !DILocation(line: 4503, column: 12, scope: !2741)
!2748 = !DILocation(line: 4503, column: 17, scope: !2741)
!2749 = !DILocation(line: 4503, column: 3, scope: !2741)
!2750 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !2751, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2754)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!560, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !675, line: 60, baseType: !1930)
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "g", arg: 1, scope: !2750, file: !561, line: 1052, type: !2753)
!2756 = !DILocation(line: 0, scope: !2750)
!2757 = !DILocation(line: 1054, column: 20, scope: !2750)
!2758 = !DILocation(line: 1054, column: 3, scope: !2750)
!2759 = distinct !DISubprogram(name: "gimple_return_retval", scope: !561, file: !561, line: 4253, type: !2760, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!817, !2753}
!2762 = !{!2763}
!2763 = !DILocalVariable(name: "gs", arg: 1, scope: !2759, file: !561, line: 4253, type: !2753)
!2764 = !DILocation(line: 0, scope: !2759)
!2765 = !DILocation(line: 4256, column: 10, scope: !2759)
!2766 = !DILocation(line: 4256, column: 3, scope: !2759)
!2767 = distinct !DISubprogram(name: "gimple_has_lhs", scope: !561, file: !561, line: 2210, type: !2768, scopeLine: 2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!627, !695}
!2770 = !{!2771}
!2771 = !DILocalVariable(name: "stmt", arg: 1, scope: !2767, file: !561, line: 2210, type: !695)
!2772 = !DILocation(line: 0, scope: !2767)
!2773 = !DILocation(line: 2212, column: 11, scope: !2767)
!2774 = !DILocation(line: 2213, column: 4, scope: !2767)
!2775 = !DILocation(line: 2213, column: 8, scope: !2767)
!2776 = !DILocation(line: 2214, column: 8, scope: !2767)
!2777 = !DILocation(line: 2214, column: 11, scope: !2767)
!2778 = !DILocation(line: 2214, column: 34, scope: !2767)
!2779 = !DILocation(line: 2212, column: 3, scope: !2767)
!2780 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !2760, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "gs", arg: 1, scope: !2780, file: !561, line: 1727, type: !2753)
!2783 = !DILocation(line: 0, scope: !2780)
!2784 = !DILocation(line: 1730, column: 10, scope: !2780)
!2785 = !DILocation(line: 1730, column: 3, scope: !2780)
!2786 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !2787, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2790)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!2790 = !{!2791}
!2791 = !DILocalVariable(name: "i", arg: 1, scope: !2786, file: !561, line: 4485, type: !2789)
!2792 = !DILocation(line: 0, scope: !2786)
!2793 = !DILocation(line: 4487, column: 15, scope: !2786)
!2794 = !DILocation(line: 4487, column: 20, scope: !2786)
!2795 = !DILocation(line: 4487, column: 10, scope: !2786)
!2796 = !DILocation(line: 4488, column: 1, scope: !2786)
!2797 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !561, file: !561, line: 1694, type: !2760, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2798)
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "gs", arg: 1, scope: !2797, file: !561, line: 1694, type: !2753)
!2800 = !DILocation(line: 0, scope: !2797)
!2801 = !DILocation(line: 1697, column: 10, scope: !2797)
!2802 = !DILocation(line: 1697, column: 3, scope: !2797)
!2803 = distinct !DISubprogram(name: "finalize_nrv_r", scope: !3, file: !3, line: 76, type: !2804, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!817, !1229, !2806, !632}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!2807 = !{!2808, !2809, !2810, !2811, !2812}
!2808 = !DILocalVariable(name: "tp", arg: 1, scope: !2803, file: !3, line: 76, type: !1229)
!2809 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !2803, file: !3, line: 76, type: !2806)
!2810 = !DILocalVariable(name: "data", arg: 3, scope: !2803, file: !3, line: 76, type: !632)
!2811 = !DILocalVariable(name: "wi", scope: !2803, file: !3, line: 78, type: !1932)
!2812 = !DILocalVariable(name: "dp", scope: !2803, file: !3, line: 79, type: !1951)
!2813 = !DILocation(line: 0, scope: !2803)
!2814 = !DILocation(line: 79, column: 49, scope: !2803)
!2815 = !DILocation(line: 82, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 82, column: 7)
!2817 = !DILocation(line: 82, column: 7, scope: !2803)
!2818 = !DILocation(line: 83, column: 20, scope: !2816)
!2819 = !DILocation(line: 83, column: 5, scope: !2816)
!2820 = !DILocation(line: 86, column: 23, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 86, column: 12)
!2822 = !DILocation(line: 86, column: 16, scope: !2821)
!2823 = !DILocation(line: 86, column: 12, scope: !2816)
!2824 = !DILocation(line: 88, column: 17, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 87, column: 5)
!2826 = !DILocation(line: 88, column: 11, scope: !2825)
!2827 = !DILocation(line: 89, column: 11, scope: !2825)
!2828 = !DILocation(line: 89, column: 20, scope: !2825)
!2829 = !DILocation(line: 90, column: 5, scope: !2825)
!2830 = !DILocation(line: 93, column: 3, scope: !2803)
!2831 = distinct !DISubprogram(name: "update_stmt", scope: !561, file: !561, line: 1456, type: !2832, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !695}
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "s", arg: 1, scope: !2831, file: !561, line: 1456, type: !695)
!2836 = !DILocation(line: 0, scope: !2831)
!2837 = !DILocation(line: 1458, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2831, file: !561, line: 1458, column: 7)
!2839 = !DILocation(line: 1458, column: 7, scope: !2831)
!2840 = !DILocation(line: 1460, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2838, file: !561, line: 1459, column: 5)
!2842 = !DILocation(line: 1461, column: 7, scope: !2841)
!2843 = !DILocation(line: 1462, column: 5, scope: !2841)
!2844 = !DILocation(line: 1463, column: 1, scope: !2831)
!2845 = distinct !DISubprogram(name: "var_ann", scope: !2846, file: !2846, line: 132, type: !2847, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2846 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !1019, line: 297, baseType: !1017)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !675, line: 59, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "t", arg: 1, scope: !2845, file: !2846, line: 132, type: !2850)
!2855 = !DILocalVariable(name: "p", scope: !2845, file: !2846, line: 134, type: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2849)
!2858 = !DILocation(line: 0, scope: !2845)
!2859 = !DILocation(line: 134, column: 24, scope: !2845)
!2860 = !DILocation(line: 135, column: 10, scope: !2845)
!2861 = !DILocation(line: 135, column: 14, scope: !2845)
!2862 = !DILocation(line: 135, column: 3, scope: !2845)
!2863 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !2864, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!685, !2866}
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !675, line: 112, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "bb", arg: 1, scope: !2863, file: !561, line: 237, type: !2866)
!2871 = !DILocation(line: 0, scope: !2863)
!2872 = !DILocation(line: 239, column: 17, scope: !2863)
!2873 = !DILocation(line: 239, column: 23, scope: !2863)
!2874 = !DILocation(line: 239, column: 33, scope: !2863)
!2875 = !DILocation(line: 239, column: 43, scope: !2863)
!2876 = !DILocation(line: 239, column: 36, scope: !2863)
!2877 = !DILocation(line: 239, column: 10, scope: !2863)
!2878 = !DILocation(line: 239, column: 68, scope: !2863)
!2879 = !DILocation(line: 239, column: 3, scope: !2863)
!2880 = distinct !DISubprogram(name: "gimple_seq_first", scope: !561, file: !561, line: 159, type: !2881, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2886)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!690, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !675, line: 67, baseType: !2884)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!2886 = !{!2887}
!2887 = !DILocalVariable(name: "s", arg: 1, scope: !2880, file: !561, line: 159, type: !2883)
!2888 = !DILocation(line: 0, scope: !2880)
!2889 = !DILocation(line: 161, column: 10, scope: !2880)
!2890 = !DILocation(line: 161, column: 17, scope: !2880)
!2891 = !DILocation(line: 161, column: 3, scope: !2880)
!2892 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !2893, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!817, !2753, !7}
!2895 = !{!2896, !2897}
!2896 = !DILocalVariable(name: "gs", arg: 1, scope: !2892, file: !561, line: 1631, type: !2753)
!2897 = !DILocalVariable(name: "i", arg: 2, scope: !2892, file: !561, line: 1631, type: !7)
!2898 = !DILocation(line: 0, scope: !2892)
!2899 = !DILocation(line: 1633, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2892, file: !561, line: 1633, column: 7)
!2901 = !DILocation(line: 1633, column: 7, scope: !2892)
!2902 = !DILocation(line: 1638, column: 14, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !561, line: 1634, column: 5)
!2904 = !DILocation(line: 1638, column: 7, scope: !2903)
!2905 = !DILocation(line: 0, scope: !2900)
!2906 = !DILocation(line: 1642, column: 1, scope: !2892)
!2907 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !2908, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!627, !2753}
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "g", arg: 1, scope: !2907, file: !561, line: 1274, type: !2753)
!2912 = !DILocation(line: 0, scope: !2907)
!2913 = !DILocation(line: 1276, column: 10, scope: !2907)
!2914 = !DILocation(line: 1276, column: 26, scope: !2907)
!2915 = !DILocation(line: 1276, column: 41, scope: !2907)
!2916 = !DILocation(line: 1276, column: 44, scope: !2907)
!2917 = !DILocation(line: 1276, column: 60, scope: !2907)
!2918 = !DILocation(line: 1276, column: 3, scope: !2907)
!2919 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !2920, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!1229, !695}
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "gs", arg: 1, scope: !2919, file: !561, line: 1614, type: !695)
!2924 = !DILocalVariable(name: "off", scope: !2919, file: !561, line: 1616, type: !1137)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocation(line: 1621, column: 28, scope: !2919)
!2927 = !DILocation(line: 1621, column: 9, scope: !2919)
!2928 = !DILocation(line: 1622, column: 3, scope: !2919)
!2929 = !DILocation(line: 1624, column: 20, scope: !2919)
!2930 = !DILocation(line: 1624, column: 32, scope: !2919)
!2931 = !DILocation(line: 1624, column: 10, scope: !2919)
!2932 = !DILocation(line: 1624, column: 3, scope: !2919)
!2933 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !2934, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!599, !695}
!2936 = !{!2937}
!2937 = !DILocalVariable(name: "gs", arg: 1, scope: !2933, file: !561, line: 1073, type: !695)
!2938 = !DILocation(line: 0, scope: !2933)
!2939 = !DILocation(line: 1075, column: 24, scope: !2933)
!2940 = !DILocation(line: 1075, column: 10, scope: !2933)
!2941 = !DILocation(line: 1075, column: 3, scope: !2933)
!2942 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !2943, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!599, !560}
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "code", arg: 1, scope: !2942, file: !561, line: 1061, type: !560)
!2947 = !DILocation(line: 0, scope: !2942)
!2948 = !DILocation(line: 1066, column: 10, scope: !2942)
!2949 = !DILocation(line: 1066, column: 3, scope: !2942)
!2950 = distinct !DISubprogram(name: "is_gimple_assign", scope: !561, file: !561, line: 1677, type: !2908, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "gs", arg: 1, scope: !2950, file: !561, line: 1677, type: !2753)
!2953 = !DILocation(line: 0, scope: !2950)
!2954 = !DILocation(line: 1679, column: 10, scope: !2950)
!2955 = !DILocation(line: 1679, column: 27, scope: !2950)
!2956 = !DILocation(line: 1679, column: 3, scope: !2950)
!2957 = distinct !DISubprogram(name: "is_gimple_call", scope: !561, file: !561, line: 1870, type: !2908, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2958 = !{!2959}
!2959 = !DILocalVariable(name: "gs", arg: 1, scope: !2957, file: !561, line: 1870, type: !2753)
!2960 = !DILocation(line: 0, scope: !2957)
!2961 = !DILocation(line: 1872, column: 10, scope: !2957)
!2962 = !DILocation(line: 1872, column: 27, scope: !2957)
!2963 = !DILocation(line: 1872, column: 3, scope: !2957)
!2964 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !561, file: !561, line: 1878, type: !2760, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2965)
!2965 = !{!2966}
!2966 = !DILocalVariable(name: "gs", arg: 1, scope: !2964, file: !561, line: 1878, type: !2753)
!2967 = !DILocation(line: 0, scope: !2964)
!2968 = !DILocation(line: 1881, column: 10, scope: !2964)
!2969 = !DILocation(line: 1881, column: 3, scope: !2964)
!2970 = distinct !DISubprogram(name: "gimple_call_return_slot_opt_p", scope: !561, file: !561, line: 2119, type: !2768, scopeLine: 2120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2971)
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "s", arg: 1, scope: !2970, file: !561, line: 2119, type: !695)
!2973 = !DILocation(line: 0, scope: !2970)
!2974 = !DILocation(line: 2122, column: 21, scope: !2970)
!2975 = !DILocation(line: 2122, column: 10, scope: !2970)
!2976 = !DILocation(line: 2122, column: 3, scope: !2970)
!2977 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !561, file: !561, line: 1954, type: !2760, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "gs", arg: 1, scope: !2977, file: !561, line: 1954, type: !2753)
!2980 = !DILocalVariable(name: "addr", scope: !2977, file: !561, line: 1956, type: !817)
!2981 = !DILocation(line: 0, scope: !2977)
!2982 = !DILocation(line: 1956, column: 15, scope: !2977)
!2983 = !DILocation(line: 1957, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2977, file: !561, line: 1957, column: 7)
!2985 = !DILocation(line: 1957, column: 24, scope: !2984)
!2986 = !DILocation(line: 1957, column: 7, scope: !2977)
!2987 = !DILocation(line: 1958, column: 12, scope: !2984)
!2988 = !DILocation(line: 1958, column: 5, scope: !2984)
!2989 = !DILocation(line: 1960, column: 1, scope: !2977)
!2990 = distinct !DISubprogram(name: "dest_safe_for_nrv_p", scope: !3, file: !3, line: 299, type: !2991, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!627, !817}
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "dest", arg: 1, scope: !2990, file: !3, line: 299, type: !817)
!2995 = !DILocation(line: 0, scope: !2990)
!2996 = !DILocation(line: 301, column: 3, scope: !2990)
!2997 = !DILocation(line: 301, column: 10, scope: !2990)
!2998 = !DILocation(line: 302, column: 12, scope: !2990)
!2999 = distinct !{!2999, !2996, !2998}
!3000 = !DILocation(line: 304, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 304, column: 7)
!3002 = !DILocation(line: 304, column: 7, scope: !2990)
!3003 = !DILocation(line: 307, column: 24, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 307, column: 7)
!3005 = !DILocation(line: 307, column: 7, scope: !2990)
!3006 = !DILocation(line: 308, column: 12, scope: !3004)
!3007 = !DILocation(line: 308, column: 5, scope: !3004)
!3008 = !DILocation(line: 310, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 310, column: 7)
!3010 = !DILocation(line: 314, column: 1, scope: !2990)
!3011 = distinct !DISubprogram(name: "gimple_call_set_return_slot_opt", scope: !561, file: !561, line: 2106, type: !3012, scopeLine: 2107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !695, !627}
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "s", arg: 1, scope: !3011, file: !561, line: 2106, type: !695)
!3016 = !DILocalVariable(name: "return_slot_opt_p", arg: 2, scope: !3011, file: !561, line: 2106, type: !627)
!3017 = !DILocation(line: 0, scope: !3011)
!3018 = !DILocation(line: 2109, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3011, file: !561, line: 2109, column: 7)
!3020 = !DILocation(line: 0, scope: !3019)
!3021 = !DILocation(line: 2109, column: 7, scope: !3011)
!3022 = !DILocation(line: 2110, column: 23, scope: !3019)
!3023 = !DILocation(line: 2110, column: 5, scope: !3019)
!3024 = !DILocation(line: 2112, column: 23, scope: !3019)
!3025 = !DILocation(line: 2113, column: 1, scope: !3011)
!3026 = distinct !DISubprogram(name: "gimple_call_fn", scope: !561, file: !561, line: 1911, type: !2760, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3027)
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "gs", arg: 1, scope: !3026, file: !561, line: 1911, type: !2753)
!3029 = !DILocation(line: 0, scope: !3026)
!3030 = !DILocation(line: 1914, column: 10, scope: !3026)
!3031 = !DILocation(line: 1914, column: 3, scope: !3026)
!3032 = distinct !DISubprogram(name: "handled_component_p", scope: !318, file: !318, line: 4551, type: !3033, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!627, !2850}
!3035 = !{!3036}
!3036 = !DILocalVariable(name: "t", arg: 1, scope: !3032, file: !318, line: 4551, type: !2850)
!3037 = !DILocation(line: 0, scope: !3032)
!3038 = !DILocation(line: 4553, column: 11, scope: !3032)
!3039 = !DILocation(line: 4553, column: 3, scope: !3032)
!3040 = !DILocation(line: 4565, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3032, file: !318, line: 4554, column: 5)
!3042 = !DILocation(line: 0, scope: !3041)
!3043 = !DILocation(line: 4567, column: 1, scope: !3032)
!3044 = distinct !DISubprogram(name: "is_call_used", scope: !2846, file: !2846, line: 638, type: !3033, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3045)
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "var", arg: 1, scope: !3044, file: !2846, line: 638, type: !2850)
!3047 = !DILocation(line: 0, scope: !3044)
!3048 = !DILocation(line: 640, column: 11, scope: !3044)
!3049 = !DILocation(line: 641, column: 4, scope: !3044)
!3050 = !DILocation(line: 641, column: 8, scope: !3044)
!3051 = !DILocation(line: 642, column: 8, scope: !3044)
!3052 = !DILocation(line: 642, column: 34, scope: !3044)
!3053 = !DILocation(line: 642, column: 40, scope: !3044)
!3054 = !DILocation(line: 642, column: 51, scope: !3044)
!3055 = !DILocation(line: 642, column: 11, scope: !3044)
!3056 = !DILocation(line: 640, column: 3, scope: !3044)
!3057 = distinct !DISubprogram(name: "is_call_clobbered", scope: !2846, file: !2846, line: 629, type: !3033, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3058)
!3058 = !{!3059}
!3059 = !DILocalVariable(name: "var", arg: 1, scope: !3057, file: !2846, line: 629, type: !2850)
!3060 = !DILocation(line: 0, scope: !3057)
!3061 = !DILocation(line: 631, column: 11, scope: !3057)
!3062 = !DILocation(line: 632, column: 4, scope: !3057)
!3063 = !DILocation(line: 632, column: 8, scope: !3057)
!3064 = !DILocation(line: 633, column: 8, scope: !3057)
!3065 = !DILocation(line: 633, column: 34, scope: !3057)
!3066 = !DILocation(line: 633, column: 40, scope: !3057)
!3067 = !DILocation(line: 633, column: 51, scope: !3057)
!3068 = !DILocation(line: 633, column: 11, scope: !3057)
!3069 = !DILocation(line: 631, column: 3, scope: !3057)
!3070 = distinct !DISubprogram(name: "may_be_aliased", scope: !2846, file: !2846, line: 586, type: !3033, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3071)
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "var", arg: 1, scope: !3070, file: !2846, line: 586, type: !2850)
!3073 = !DILocation(line: 0, scope: !3070)
!3074 = !DILocation(line: 588, column: 11, scope: !3070)
!3075 = !DILocation(line: 588, column: 27, scope: !3070)
!3076 = !DILocation(line: 589, column: 4, scope: !3070)
!3077 = !DILocation(line: 589, column: 10, scope: !3070)
!3078 = !DILocation(line: 589, column: 28, scope: !3070)
!3079 = !DILocation(line: 589, column: 31, scope: !3070)
!3080 = !DILocation(line: 589, column: 49, scope: !3070)
!3081 = !DILocation(line: 589, column: 52, scope: !3070)
!3082 = !DILocation(line: 590, column: 9, scope: !3070)
!3083 = !DILocation(line: 590, column: 12, scope: !3070)
!3084 = !DILocation(line: 591, column: 9, scope: !3070)
!3085 = !DILocation(line: 591, column: 13, scope: !3070)
!3086 = !DILocation(line: 592, column: 4, scope: !3070)
!3087 = !DILocation(line: 592, column: 8, scope: !3070)
!3088 = !DILocation(line: 593, column: 8, scope: !3070)
!3089 = !DILocation(line: 593, column: 11, scope: !3070)
!3090 = !DILocation(line: 594, column: 8, scope: !3070)
!3091 = !DILocation(line: 594, column: 11, scope: !3070)
!3092 = !DILocation(line: 588, column: 3, scope: !3070)
!3093 = distinct !DISubprogram(name: "is_global_var", scope: !2846, file: !2846, line: 575, type: !3033, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "t", arg: 1, scope: !3093, file: !2846, line: 575, type: !2850)
!3096 = !DILocation(line: 0, scope: !3093)
!3097 = !DILocation(line: 577, column: 11, scope: !3093)
!3098 = !DILocation(line: 577, column: 27, scope: !3093)
!3099 = !DILocation(line: 577, column: 30, scope: !3093)
!3100 = !DILocation(line: 577, column: 3, scope: !3093)
