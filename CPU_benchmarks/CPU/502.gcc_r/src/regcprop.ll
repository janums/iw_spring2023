; ModuleID = 'regcprop.bc'
source_filename = "regcprop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
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
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { i8*, i8*, i8*, i8*, i8* }
%struct.rtl_eh = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.VEC_uchar_gc*, [2 x %struct.VEC_call_site_record_gc*] }
%struct.VEC_uchar_gc = type { %struct.VEC_uchar_base }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.VEC_call_site_record_gc = type { %struct.VEC_call_site_record_base }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x %struct.call_site_record_d*] }
%struct.call_site_record_d = type opaque
%struct.initial_value_struct = type opaque
%struct.VEC_temp_slot_p_gc = type { %struct.VEC_temp_slot_p_base }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x %struct.temp_slot*] }
%struct.temp_slot = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.value_data = type { [53 x %struct.value_data_entry], i32, i32 }
%struct.value_data_entry = type { i32, i32, i32, %struct.queued_debug_insn_change* }
%struct.queued_debug_insn_change = type { %struct.queued_debug_insn_change*, %struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [42 x i8] c"[%u] Bad next_regno for empty chain (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[%u %s] \00", align 1
@mode_name = external dso_local local_unnamed_addr constant [87 x i8*], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"[%u] Loop in regno chain\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[%u] Bad oldest_regno (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[%u] Non-empty reg in chain (%s %u %i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cprop_hardreg\00", align 1
@pass_cprop_hardreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_handle_cprop, i32 ()* @copyprop_hardreg_forward, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 158, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_cprop_registers = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"debug insn changes pool\00", align 1
@debug_insn_changes_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !1840
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"regcprop.c\00", align 1
@which_alternative = external dso_local local_unnamed_addr global i32, align 4
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"insn %u: replaced reg %u with %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"insn %u: reg replacements not verified\0A\00", align 1
@regs_invalidated_by_call = external dso_local local_unnamed_addr global i64, align 8
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@.str.12 = private unnamed_addr constant [48 x i8] c"debug_insn %u: queued replacing reg %u with %u\0A\00", align 1
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@global_regs = external dso_local local_unnamed_addr global [53 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1906, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1907, metadata !DIExpression()), !dbg !1908
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1909
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1910
  ret i32 %call, !dbg !1911
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1912 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1916
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1917
  ret i32 %call, !dbg !1918
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1973, metadata !DIExpression()), !dbg !1974
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1975
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1975
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1975
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1975
  %cmp = icmp uge i8* %0, %1, !dbg !1975
  %conv1 = zext i1 %cmp to i64, !dbg !1975
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1975
  %tobool = icmp eq i64 %expval, 0, !dbg !1975
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1975

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1975
  br label %cond.end, !dbg !1975

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1975
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1975
  %2 = load i8, i8* %0, align 1, !dbg !1975
  %conv3 = zext i8 %2 to i32, !dbg !1975
  br label %cond.end, !dbg !1975

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1975
  ret i32 %cond, !dbg !1976
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1979, metadata !DIExpression()), !dbg !1980
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1981
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1981
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1981
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1981
  %cmp = icmp uge i8* %0, %1, !dbg !1981
  %conv1 = zext i1 %cmp to i64, !dbg !1981
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1981
  %tobool = icmp eq i64 %expval, 0, !dbg !1981
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1981

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1981
  br label %cond.end, !dbg !1981

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1981
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1981
  %2 = load i8, i8* %0, align 1, !dbg !1981
  %conv3 = zext i8 %2 to i32, !dbg !1981
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1981
  ret i32 %cond, !dbg !1982
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1983 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1984
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1984
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1984
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1984
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1984
  %cmp = icmp uge i8* %1, %2, !dbg !1984
  %conv1 = zext i1 %cmp to i64, !dbg !1984
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1984
  %tobool = icmp eq i64 %expval, 0, !dbg !1984
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1984

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1984
  br label %cond.end, !dbg !1984

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1984
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1984
  %3 = load i8, i8* %1, align 1, !dbg !1984
  %conv3 = zext i8 %3 to i32, !dbg !1984
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1984
  ret i32 %cond, !dbg !1985
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1986 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1992
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1993
  ret i32 %call, !dbg !1994
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2000, metadata !DIExpression()), !dbg !2001
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2002
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2002
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2002
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2002
  %cmp = icmp uge i8* %0, %1, !dbg !2002
  %conv1 = zext i1 %cmp to i64, !dbg !2002
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2002
  %tobool = icmp eq i64 %expval, 0, !dbg !2002
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2002

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2002
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2002
  br label %cond.end, !dbg !2002

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2002
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2002
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2002
  store i8 %conv2, i8* %0, align 1, !dbg !2002
  %conv6 = and i32 %__c, 255, !dbg !2002
  br label %cond.end, !dbg !2002

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2002
  ret i32 %cond, !dbg !2003
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2007, metadata !DIExpression()), !dbg !2008
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2009
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2009
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2009
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2009
  %cmp = icmp uge i8* %0, %1, !dbg !2009
  %conv1 = zext i1 %cmp to i64, !dbg !2009
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2009
  %tobool = icmp eq i64 %expval, 0, !dbg !2009
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2009

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2009
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2009
  br label %cond.end, !dbg !2009

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2009
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2009
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2009
  store i8 %conv2, i8* %0, align 1, !dbg !2009
  %conv6 = and i32 %__c, 255, !dbg !2009
  br label %cond.end, !dbg !2009

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2009
  ret i32 %cond, !dbg !2010
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2015
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2015
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2015
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2015
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2015
  %cmp = icmp uge i8* %1, %2, !dbg !2015
  %conv1 = zext i1 %cmp to i64, !dbg !2015
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2015
  %tobool = icmp eq i64 %expval, 0, !dbg !2015
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2015

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2015
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2015
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2015
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2015
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2015
  store i8 %conv4, i8* %1, align 1, !dbg !2015
  %conv6 = and i32 %__c, 255, !dbg !2015
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2015
  ret i32 %cond, !dbg !2016
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2025, metadata !DIExpression()), !dbg !2026
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2027
  ret i64 %call, !dbg !2028
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2031, metadata !DIExpression()), !dbg !2032
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2033
  %0 = load i32, i32* %_flags, align 8, !dbg !2033
  %and = lshr i32 %0, 4, !dbg !2033
  %and.lobit = and i32 %and, 1, !dbg !2033
  ret i32 %and.lobit, !dbg !2034
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2037, metadata !DIExpression()), !dbg !2038
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2039
  %0 = load i32, i32* %_flags, align 8, !dbg !2039
  %and = lshr i32 %0, 5, !dbg !2039
  %and.lobit = and i32 %and, 1, !dbg !2039
  ret i32 %and.lobit, !dbg !2040
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2044, metadata !DIExpression()), !dbg !2045
  %__c.off = add i32 %__c, 128, !dbg !2046
  %0 = icmp ult i32 %__c.off, 384, !dbg !2046
  br i1 %0, label %cond.true, label %cond.end, !dbg !2046

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2047
  %1 = load i32*, i32** %call, align 8, !dbg !2048
  %idxprom = sext i32 %__c to i64, !dbg !2049
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2049
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2049
  br label %cond.end, !dbg !2050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2050
  ret i32 %cond, !dbg !2051
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2052 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2054, metadata !DIExpression()), !dbg !2055
  %__c.off = add i32 %__c, 128, !dbg !2056
  %0 = icmp ult i32 %__c.off, 384, !dbg !2056
  br i1 %0, label %cond.true, label %cond.end, !dbg !2056

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2057
  %1 = load i32*, i32** %call, align 8, !dbg !2058
  %idxprom = sext i32 %__c to i64, !dbg !2059
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2059
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2059
  br label %cond.end, !dbg !2060

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2060
  ret i32 %cond, !dbg !2061
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2062 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2067, metadata !DIExpression()), !dbg !2068
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2069
  %conv = trunc i64 %call to i32, !dbg !2070
  ret i32 %conv, !dbg !2071
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2076, metadata !DIExpression()), !dbg !2077
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2078
  ret i64 %call, !dbg !2079
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2087
  ret i64 %call, !dbg !2088
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2095, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2099, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 0, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2101, metadata !DIExpression()), !dbg !2105
  br label %while.cond, !dbg !2106

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2107
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2100, metadata !DIExpression()), !dbg !2105
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2108
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2106

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2109
  %div = lshr i64 %add, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %div, metadata !2102, metadata !DIExpression()), !dbg !2105
  %mul = mul i64 %div, %__size, !dbg !2112
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2103, metadata !DIExpression()), !dbg !2105
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %call, metadata !2104, metadata !DIExpression()), !dbg !2105
  %cmp1 = icmp slt i32 %call, 0, !dbg !2115
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2117

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2118
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2120

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2100, metadata !DIExpression()), !dbg !2105
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2105
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2100, metadata !DIExpression()), !dbg !2105
  br label %while.cond, !dbg !2106, !llvm.loop !2122

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2105
  ret i8* %retval.0, !dbg !2124
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2131, metadata !DIExpression()), !dbg !2132
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2133
  ret double %call, !dbg !2134
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %base, metadata !2146, metadata !DIExpression()), !dbg !2147
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2148
  ret i64 %call, !dbg !2149
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %base, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2160
  ret i64 %call, !dbg !2161
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %base, metadata !2175, metadata !DIExpression()), !dbg !2176
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2177
  ret i64 %call, !dbg !2178
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %base, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2187
  ret i64 %call, !dbg !2188
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2230, metadata !DIExpression()), !dbg !2231
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2232
  ret i32 %call, !dbg !2233
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2234 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2237, metadata !DIExpression()), !dbg !2238
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2239
  ret i32 %call, !dbg !2240
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2246, metadata !DIExpression()), !dbg !2247
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2248
  ret i32 %call, !dbg !2249
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2254, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2255, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2256, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2257, metadata !DIExpression()), !dbg !2258
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2259
  ret i32 %call, !dbg !2260
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2261 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2265, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2266, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2267, metadata !DIExpression(DW_OP_deref)), !dbg !2268
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2269
  ret i32 %call, !dbg !2270
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2271 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2275, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2276, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2277, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2278, metadata !DIExpression(DW_OP_deref)), !dbg !2279
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2280
  ret i32 %call, !dbg !2281
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2307, metadata !DIExpression()), !dbg !2308
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2309
  ret i32 %call, !dbg !2310
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2314, metadata !DIExpression()), !dbg !2315
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2316
  ret i32 %call, !dbg !2317
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2318 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2323, metadata !DIExpression()), !dbg !2324
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2325
  ret i32 %call, !dbg !2326
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2327 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2331, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2334, metadata !DIExpression()), !dbg !2335
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2336
  ret i32 %call, !dbg !2337
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_value_data(%struct.value_data* %vd) local_unnamed_addr #5 !dbg !2338 {
entry:
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !2342, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2346
  br label %for.cond, !dbg !2347

for.cond:                                         ; preds = %for.inc64, %entry
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc64 ], [ 0, %entry ], !dbg !2349
  %set.0 = phi i64 [ %set.3, %for.inc64 ], [ 0, %entry ], !dbg !2350
  call void @llvm.dbg.value(metadata i64 %set.0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !2344, metadata !DIExpression()), !dbg !2346
  %exitcond15 = icmp eq i64 %indvars.iv13, 53, !dbg !2351
  br i1 %exitcond15, label %for.cond66.preheader, label %for.body, !dbg !2353

for.cond66.preheader:                             ; preds = %for.cond
  %set.0.lcssa = phi i64 [ %set.0, %for.cond ], !dbg !2350
  call void @llvm.dbg.value(metadata i64 %set.0.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %set.0.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %set.0.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  br label %for.cond66, !dbg !2354

for.body:                                         ; preds = %for.cond
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv13, i32 1, !dbg !2356
  %0 = load i32, i32* %oldest_regno, align 4, !dbg !2356
  %1 = zext i32 %0 to i64, !dbg !2358
  %cmp1 = icmp eq i64 %indvars.iv13, %1, !dbg !2358
  br i1 %cmp1, label %if.then, label %for.inc64, !dbg !2359

if.then:                                          ; preds = %for.body
  %mode = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv13, i32 0, !dbg !2360
  %2 = load i32, i32* %mode, align 8, !dbg !2360
  %cmp5 = icmp eq i32 %2, 0, !dbg !2363
  br i1 %cmp5, label %if.then6, label %if.end16, !dbg !2364

if.then6:                                         ; preds = %if.then
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv13, i32 2, !dbg !2365
  %3 = load i32, i32* %next_regno, align 8, !dbg !2365
  %cmp10 = icmp eq i32 %3, -1, !dbg !2368
  br i1 %cmp10, label %for.inc64, label %if.then11, !dbg !2369

if.then11:                                        ; preds = %if.then6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2370
  %5 = trunc i64 %indvars.iv13 to i32, !dbg !2371
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %3) #6, !dbg !2371
  br label %for.inc64, !dbg !2371

if.end16:                                         ; preds = %if.then
  %shl = shl i64 1, %indvars.iv13, !dbg !2372
  %or = or i64 %set.0, %shl, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %or, metadata !2343, metadata !DIExpression()), !dbg !2346
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2373
  %idxprom21 = zext i32 %2 to i64, !dbg !2374
  %arrayidx22 = getelementptr inbounds [87 x i8*], [87 x i8*]* @mode_name, i64 0, i64 %idxprom21, !dbg !2374
  %7 = load i8*, i8** %arrayidx22, align 8, !dbg !2374
  %8 = trunc i64 %indvars.iv13 to i32, !dbg !2375
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %8, i8* %7) #6, !dbg !2375
  %9 = trunc i64 %indvars.iv13 to i32, !dbg !2376
  br label %for.cond28, !dbg !2376

for.cond28:                                       ; preds = %if.end47, %if.end16
  %idxprom25.pn.in = phi i32 [ %9, %if.end16 ], [ %j.0, %if.end47 ]
  %set.1 = phi i64 [ %or, %if.end16 ], [ %or50, %if.end47 ], !dbg !2378
  %idxprom25.pn = zext i32 %idxprom25.pn.in to i64, !dbg !2379
  %j.0.in = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom25.pn, i32 2, !dbg !2379
  %j.0 = load i32, i32* %j.0.in, align 8, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %set.1, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %cmp29 = icmp eq i32 %j.0, -1, !dbg !2380
  br i1 %cmp29, label %for.end, label %for.body30, !dbg !2382

for.body30:                                       ; preds = %for.cond28
  %sh_prom31 = zext i32 %j.0 to i64, !dbg !2383
  %shl32 = shl i64 1, %sh_prom31, !dbg !2383
  %and = and i64 %set.1, %shl32, !dbg !2383
  %tobool = icmp eq i64 %and, 0, !dbg !2383
  br i1 %tobool, label %if.end35, label %if.then33, !dbg !2386

if.then33:                                        ; preds = %for.body30
  %j.0.lcssa16 = phi i32 [ %j.0, %for.body30 ], !dbg !2379
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2387
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %j.0.lcssa16) #6, !dbg !2389
  br label %cleanup.cont, !dbg !2390

if.end35:                                         ; preds = %for.body30
  %oldest_regno39 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %sh_prom31, i32 1, !dbg !2391
  %11 = load i32, i32* %oldest_regno39, align 4, !dbg !2391
  %12 = zext i32 %11 to i64, !dbg !2393
  %cmp40 = icmp eq i64 %indvars.iv13, %12, !dbg !2393
  br i1 %cmp40, label %if.end47, label %if.then41, !dbg !2394

if.then41:                                        ; preds = %if.end35
  %.lcssa = phi i32 [ %11, %if.end35 ], !dbg !2391
  %j.0.lcssa17 = phi i32 [ %j.0, %if.end35 ], !dbg !2379
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2395
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %j.0.lcssa17, i32 %.lcssa) #6, !dbg !2397
  br label %cleanup.cont, !dbg !2398

if.end47:                                         ; preds = %if.end35
  %or50 = or i64 %set.1, %shl32, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %or50, metadata !2343, metadata !DIExpression()), !dbg !2346
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2400
  %mode54 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %sh_prom31, i32 0, !dbg !2401
  %15 = load i32, i32* %mode54, align 8, !dbg !2401
  %idxprom55 = zext i32 %15 to i64, !dbg !2401
  %arrayidx56 = getelementptr inbounds [87 x i8*], [87 x i8*]* @mode_name, i64 0, i64 %idxprom55, !dbg !2401
  %16 = load i8*, i8** %arrayidx56, align 8, !dbg !2401
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %j.0, i8* %16) #6, !dbg !2402
  br label %for.cond28, !dbg !2403, !llvm.loop !2404

for.end:                                          ; preds = %for.cond28
  %set.1.lcssa = phi i64 [ %set.1, %for.cond28 ], !dbg !2378
  call void @llvm.dbg.value(metadata i64 %set.1.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %set.1.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %set.1.lcssa, metadata !2343, metadata !DIExpression()), !dbg !2346
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2406
  %call62 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %17) #6, !dbg !2407
  br label %for.inc64, !dbg !2408

for.inc64:                                        ; preds = %if.then6, %for.body, %for.end, %if.then11
  %set.3 = phi i64 [ %set.0, %if.then11 ], [ %set.0, %if.then6 ], [ %set.1.lcssa, %for.end ], [ %set.0, %for.body ], !dbg !2346
  call void @llvm.dbg.value(metadata i64 %set.3, metadata !2343, metadata !DIExpression()), !dbg !2346
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i32 undef, metadata !2344, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2346
  br label %for.cond, !dbg !2410, !llvm.loop !2411

for.cond66:                                       ; preds = %for.cond66.preheader, %for.inc106
  %indvars.iv = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next, %for.inc106 ], !dbg !2413
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2344, metadata !DIExpression()), !dbg !2346
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2414
  br i1 %exitcond, label %cleanup.cont.loopexit, label %for.body68, !dbg !2354

for.body68:                                       ; preds = %for.cond66
  %shl70 = shl i64 1, %indvars.iv, !dbg !2416
  %and71 = and i64 %set.0.lcssa, %shl70, !dbg !2416
  %tobool72 = icmp eq i64 %and71, 0, !dbg !2416
  br i1 %tobool72, label %land.lhs.true, label %for.inc106, !dbg !2418

land.lhs.true:                                    ; preds = %for.body68
  %mode76 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !2419
  %18 = load i32, i32* %mode76, align 8, !dbg !2419
  %cmp77 = icmp eq i32 %18, 0, !dbg !2420
  br i1 %cmp77, label %lor.lhs.false, label %land.lhs.true.if.then89_crit_edge, !dbg !2421

land.lhs.true.if.then89_crit_edge:                ; preds = %land.lhs.true
  %oldest_regno99.phi.trans.insert = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2422
  %.pre = load i32, i32* %oldest_regno99.phi.trans.insert, align 4, !dbg !2423
  br label %if.then89, !dbg !2421

lor.lhs.false:                                    ; preds = %land.lhs.true
  %oldest_regno81 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2424
  %19 = load i32, i32* %oldest_regno81, align 4, !dbg !2424
  %20 = zext i32 %19 to i64, !dbg !2425
  %cmp82 = icmp eq i64 %indvars.iv, %20, !dbg !2425
  br i1 %cmp82, label %lor.lhs.false83, label %if.then89, !dbg !2426

lor.lhs.false83:                                  ; preds = %lor.lhs.false
  %next_regno87 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 2, !dbg !2427
  %21 = load i32, i32* %next_regno87, align 8, !dbg !2427
  %cmp88 = icmp eq i32 %21, -1, !dbg !2428
  %22 = trunc i64 %indvars.iv to i32, !dbg !2429
  br i1 %cmp88, label %for.inc106, label %if.then89, !dbg !2429

if.then89:                                        ; preds = %land.lhs.true.if.then89_crit_edge, %lor.lhs.false83, %lor.lhs.false
  %23 = phi i32 [ %.pre, %land.lhs.true.if.then89_crit_edge ], [ %22, %lor.lhs.false83 ], [ %19, %lor.lhs.false ], !dbg !2423
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2430
  %idxprom94 = zext i32 %18 to i64, !dbg !2431
  %arrayidx95 = getelementptr inbounds [87 x i8*], [87 x i8*]* @mode_name, i64 0, i64 %idxprom94, !dbg !2431
  %25 = load i8*, i8** %arrayidx95, align 8, !dbg !2431
  %next_regno103 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 2, !dbg !2432
  %26 = load i32, i32* %next_regno103, align 8, !dbg !2432
  %27 = trunc i64 %indvars.iv to i32, !dbg !2433
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %27, i8* %25, i32 %23, i32 %26) #6, !dbg !2433
  br label %for.inc106, !dbg !2433

for.inc106:                                       ; preds = %lor.lhs.false83, %for.body68, %if.then89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i32 undef, metadata !2344, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2346
  br label %for.cond66, !dbg !2435, !llvm.loop !2436

cleanup.cont.loopexit:                            ; preds = %for.cond66
  br label %cleanup.cont, !dbg !2438

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then33, %if.then41
  ret void, !dbg !2438
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_cprop() #5 !dbg !2439 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2440
  %cmp = icmp sgt i32 %0, 0, !dbg !2441
  %1 = load i32, i32* @flag_cprop_registers, align 4, !dbg !2442
  %tobool = icmp ne i32 %1, 0, !dbg !2442
  %2 = and i1 %cmp, %tobool, !dbg !2442
  %conv = zext i1 %2 to i8, !dbg !2443
  ret i8 %conv, !dbg !2444
}

; Function Attrs: nounwind uwtable
define internal i32 @copyprop_hardreg_forward() #5 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2478
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2479
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2479
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2479
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2479
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !2479
  %conv = sext i32 %2 to i64, !dbg !2479
  %mul = mul nsw i64 %conv, 1280, !dbg !2479
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2479
  %3 = bitcast i8* %call to %struct.value_data*, !dbg !2479
  call void @llvm.dbg.value(metadata %struct.value_data* %3, metadata !2447, metadata !DIExpression()), !dbg !2478
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2480
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2480
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2480
  %x_last_basic_block3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2480
  %6 = load i32, i32* %x_last_basic_block3, align 8, !dbg !2480
  %call4 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !2481
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call4, metadata !2449, metadata !DIExpression()), !dbg !2478
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call4) #6, !dbg !2482
  %7 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2483
  %tobool = icmp eq i32 %7, 0, !dbg !2483
  br i1 %tobool, label %if.end, label %if.then, !dbg !2485

if.then:                                          ; preds = %entry
  %call5 = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 32, i64 256) #6, !dbg !2486
  store %struct.alloc_pool_def* %call5, %struct.alloc_pool_def** @debug_insn_changes_pool, align 8, !dbg !2487
  br label %if.end, !dbg !2488

if.end:                                           ; preds = %entry, %if.then
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2489
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2489
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2489
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2489
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2489
  br label %for.cond, !dbg !2489

for.cond:                                         ; preds = %if.end66, %if.end
  %11 = phi %struct.control_flow_graph* [ %9, %if.end ], [ %.pre2, %if.end66 ], !dbg !2490
  %.pn = phi %struct.basic_block_def* [ %10, %if.end ], [ %bb.0, %if.end66 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2491
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2448, metadata !DIExpression()), !dbg !2478
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !2490
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2490
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !2490
  br i1 %cmp, label %for.end73, label %for.body, !dbg !2489

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2492
  %13 = load i32, i32* %index, align 8, !dbg !2492
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call4, i32 %13) #7, !dbg !2493
  %call11 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb.0) #7, !dbg !2494
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2494
  br i1 %tobool13, label %if.else, label %land.lhs.true, !dbg !2495

land.lhs.true:                                    ; preds = %for.body
  %call14 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb.0) #7, !dbg !2496
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call14, i64 0, i32 9, !dbg !2496
  %14 = load i32, i32* %index15, align 8, !dbg !2496
  %div = lshr i32 %14, 6, !dbg !2496
  %idxprom = zext i32 %div to i64, !dbg !2496
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call4, i64 0, i32 3, i64 %idxprom, !dbg !2496
  %15 = load i64, i64* %arrayidx, align 8, !dbg !2496
  %call16 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb.0) #7, !dbg !2496
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call16, i64 0, i32 9, !dbg !2496
  %16 = load i32, i32* %index17, align 8, !dbg !2496
  %rem = and i32 %16, 63, !dbg !2496
  %sh_prom = zext i32 %rem to i64, !dbg !2496
  %17 = shl i64 1, %sh_prom, !dbg !2496
  %18 = and i64 %15, %17, !dbg !2496
  %tobool18 = icmp eq i64 %18, 0, !dbg !2496
  br i1 %tobool18, label %if.else, label %land.lhs.true19, !dbg !2497

land.lhs.true19:                                  ; preds = %land.lhs.true
  %call20 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb.0) #7, !dbg !2498
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 7, !dbg !2499
  %19 = load i32, i32* %flags, align 8, !dbg !2499
  %and21 = and i32 %19, 12, !dbg !2500
  %tobool22 = icmp eq i32 %and21, 0, !dbg !2500
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !2501

if.then23:                                        ; preds = %land.lhs.true19
  %20 = load i32, i32* %index, align 8, !dbg !2502
  %idxprom25 = sext i32 %20 to i64, !dbg !2503
  %arrayidx26 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom25, !dbg !2503
  %call27 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb.0) #7, !dbg !2504
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call27, i64 0, i32 9, !dbg !2505
  %21 = load i32, i32* %index28, align 8, !dbg !2505
  %idxprom29 = sext i32 %21 to i64, !dbg !2506
  %arrayidx30 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom29, !dbg !2506
  %22 = bitcast %struct.value_data* %arrayidx26 to i8*, !dbg !2506
  %23 = bitcast %struct.value_data* %arrayidx30 to i8*, !dbg !2506
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 1280, i1 false), !dbg !2506
  %24 = load i32, i32* %index, align 8, !dbg !2507
  %idxprom32 = sext i32 %24 to i64, !dbg !2508
  %n_debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom32, i32 2, !dbg !2509
  %25 = load i32, i32* %n_debug_insn_changes, align 4, !dbg !2509
  %tobool34 = icmp eq i32 %25, 0, !dbg !2508
  br i1 %tobool34, label %if.end66, label %for.cond36.preheader, !dbg !2510

for.cond36.preheader:                             ; preds = %if.then23
  br label %for.cond36, !dbg !2511

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc
  %indvars.iv6 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next7, %for.inc ], !dbg !2513
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2461, metadata !DIExpression()), !dbg !2514
  %exitcond8 = icmp eq i64 %indvars.iv6, 53, !dbg !2515
  br i1 %exitcond8, label %if.end66.loopexit, label %for.body39, !dbg !2511

for.body39:                                       ; preds = %for.cond36
  %26 = load i32, i32* %index, align 8, !dbg !2517
  %idxprom41 = sext i32 %26 to i64, !dbg !2520
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom41, i32 0, i64 %indvars.iv6, i32 3, !dbg !2521
  %27 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !2521
  %tobool45 = icmp eq %struct.queued_debug_insn_change* %27, null, !dbg !2520
  br i1 %tobool45, label %for.inc, label %if.then46, !dbg !2522

if.then46:                                        ; preds = %for.body39
  store %struct.queued_debug_insn_change* null, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !2523
  %28 = load i32, i32* %index, align 8, !dbg !2525
  %idxprom55 = sext i32 %28 to i64, !dbg !2527
  %n_debug_insn_changes57 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom55, i32 2, !dbg !2528
  %29 = load i32, i32* %n_debug_insn_changes57, align 4, !dbg !2529
  %dec = add i32 %29, -1, !dbg !2529
  store i32 %dec, i32* %n_debug_insn_changes57, align 4, !dbg !2529
  %cmp58 = icmp eq i32 %dec, 0, !dbg !2530
  br i1 %cmp58, label %if.end66.loopexit, label %for.inc, !dbg !2531

for.inc:                                          ; preds = %for.body39, %if.then46
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i32 undef, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %for.cond36, !dbg !2533, !llvm.loop !2534

if.else:                                          ; preds = %land.lhs.true19, %land.lhs.true, %for.body
  %30 = load i32, i32* %index, align 8, !dbg !2536
  %idx.ext = sext i32 %30 to i64, !dbg !2537
  %add.ptr65 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idx.ext, !dbg !2537
  tail call fastcc void @init_value_data(%struct.value_data* %add.ptr65) #7, !dbg !2538
  br label %if.end66

if.end66.loopexit:                                ; preds = %for.cond36, %if.then46
  br label %if.end66, !dbg !2539

if.end66:                                         ; preds = %if.end66.loopexit, %if.then23, %if.else
  %31 = load i32, i32* %index, align 8, !dbg !2539
  %idx.ext68 = sext i32 %31 to i64, !dbg !2540
  %add.ptr69 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idx.ext68, !dbg !2540
  %call70 = tail call fastcc zeroext i8 @copyprop_hardreg_forward_1(%struct.basic_block_def* %bb.0, %struct.value_data* %add.ptr69) #7, !dbg !2541
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2490
  %cfg9.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2542
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9.phi.trans.insert, align 8, !dbg !2490
  br label %for.cond, !dbg !2490, !llvm.loop !2543

for.end73:                                        ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %11, %for.cond ], !dbg !2490
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !2491
  %32 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2545
  %tobool74 = icmp eq i32 %32, 0, !dbg !2545
  br i1 %tobool74, label %if.end146, label %if.then75, !dbg !2546

if.then75:                                        ; preds = %for.end73
  %x_entry_block_ptr78 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2547
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr78, align 8, !dbg !2547
  br label %for.cond80, !dbg !2547

for.cond80:                                       ; preds = %for.inc143, %if.then75
  %34 = phi %struct.basic_block_def* [ %bb.0.lcssa, %if.then75 ], [ %.pre5, %for.inc143 ], !dbg !2548
  %analyze_called.0 = phi i8 [ 0, %if.then75 ], [ %analyze_called.2, %for.inc143 ], !dbg !2549
  %.pn1 = phi %struct.basic_block_def* [ %33, %if.then75 ], [ %bb.1, %for.inc143 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !2550
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2448, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 %analyze_called.0, metadata !2460, metadata !DIExpression()), !dbg !2478
  %cmp84 = icmp eq %struct.basic_block_def* %bb.1, %34, !dbg !2548
  br i1 %cmp84, label %for.end145, label %for.body86, !dbg !2547

for.body86:                                       ; preds = %for.cond80
  %index88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2551
  %35 = load i32, i32* %index88, align 8, !dbg !2551
  %div89 = lshr i32 %35, 6, !dbg !2551
  %idxprom90 = zext i32 %div89 to i64, !dbg !2551
  %arrayidx91 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call4, i64 0, i32 3, i64 %idxprom90, !dbg !2551
  %36 = load i64, i64* %arrayidx91, align 8, !dbg !2551
  %rem93 = and i32 %35, 63, !dbg !2551
  %sh_prom94 = zext i32 %rem93 to i64, !dbg !2551
  %37 = shl i64 1, %sh_prom94, !dbg !2551
  %38 = and i64 %36, %37, !dbg !2551
  %tobool97 = icmp eq i64 %38, 0, !dbg !2551
  br i1 %tobool97, label %for.inc143, label %land.lhs.true98, !dbg !2552

land.lhs.true98:                                  ; preds = %for.body86
  %idxprom100 = sext i32 %35 to i64, !dbg !2553
  %n_debug_insn_changes102 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom100, i32 2, !dbg !2554
  %39 = load i32, i32* %n_debug_insn_changes102, align 4, !dbg !2554
  %tobool103 = icmp eq i32 %39, 0, !dbg !2553
  br i1 %tobool103, label %for.inc143, label %if.then104, !dbg !2555

if.then104:                                       ; preds = %land.lhs.true98
  %tobool106 = icmp eq i8 %analyze_called.0, 0, !dbg !2556
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !2558

if.then107:                                       ; preds = %if.then104
  tail call void @df_analyze() #6, !dbg !2559
  call void @llvm.dbg.value(metadata i8 1, metadata !2460, metadata !DIExpression()), !dbg !2478
  br label %if.end108, !dbg !2561

if.end108:                                        ; preds = %if.then104, %if.then107
  %analyze_called.1 = phi i8 [ %analyze_called.0, %if.then104 ], [ 1, %if.then107 ], !dbg !2478
  call void @llvm.dbg.value(metadata i8 %analyze_called.1, metadata !2460, metadata !DIExpression()), !dbg !2478
  %call109 = tail call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %bb.1) #6, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call109, metadata !2476, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()), !dbg !2563
  br label %for.cond110, !dbg !2564

for.cond110:                                      ; preds = %for.inc139, %if.end108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc139 ], [ 0, %if.end108 ], !dbg !2566
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2469, metadata !DIExpression()), !dbg !2563
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2567
  br i1 %exitcond, label %for.inc143.loopexit, label %for.body113, !dbg !2569

for.body113:                                      ; preds = %for.cond110
  %40 = load i32, i32* %index88, align 8, !dbg !2570
  %idxprom115 = sext i32 %40 to i64, !dbg !2572
  %debug_insn_changes120 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom115, i32 0, i64 %indvars.iv, i32 3, !dbg !2573
  %41 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes120, align 8, !dbg !2573
  %tobool121 = icmp eq %struct.queued_debug_insn_change* %41, null, !dbg !2572
  br i1 %tobool121, label %for.inc139, label %if.then122, !dbg !2574

if.then122:                                       ; preds = %for.body113
  %42 = trunc i64 %indvars.iv to i32, !dbg !2575
  %call123 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call109, i32 %42) #6, !dbg !2575
  %tobool124 = icmp eq i32 %call123, 0, !dbg !2575
  br i1 %tobool124, label %if.end129, label %if.then125, !dbg !2578

if.then125:                                       ; preds = %if.then122
  %43 = load i32, i32* %index88, align 8, !dbg !2579
  %idx.ext127 = sext i32 %43 to i64, !dbg !2580
  %add.ptr128 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idx.ext127, !dbg !2580
  %44 = trunc i64 %indvars.iv to i32, !dbg !2581
  tail call fastcc void @apply_debug_insn_changes(%struct.value_data* %add.ptr128, i32 %44) #7, !dbg !2581
  br label %if.end129, !dbg !2581

if.end129:                                        ; preds = %if.then122, %if.then125
  %45 = load i32, i32* %index88, align 8, !dbg !2582
  %idxprom131 = sext i32 %45 to i64, !dbg !2584
  %n_debug_insn_changes133 = getelementptr inbounds %struct.value_data, %struct.value_data* %3, i64 %idxprom131, i32 2, !dbg !2585
  %46 = load i32, i32* %n_debug_insn_changes133, align 4, !dbg !2585
  %cmp134 = icmp eq i32 %46, 0, !dbg !2586
  br i1 %cmp134, label %for.inc143.loopexit, label %for.inc139, !dbg !2587

for.inc139:                                       ; preds = %for.body113, %if.end129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i32 undef, metadata !2469, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2563
  br label %for.cond110, !dbg !2589, !llvm.loop !2590

for.inc143.loopexit:                              ; preds = %for.cond110, %if.end129
  br label %for.inc143, !dbg !2548

for.inc143:                                       ; preds = %for.inc143.loopexit, %land.lhs.true98, %for.body86
  %analyze_called.2 = phi i8 [ %analyze_called.0, %land.lhs.true98 ], [ %analyze_called.0, %for.body86 ], [ %analyze_called.1, %for.inc143.loopexit ], !dbg !2549
  call void @llvm.dbg.value(metadata i8 %analyze_called.2, metadata !2460, metadata !DIExpression()), !dbg !2478
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2548
  %cfg82.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !2592
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg82.phi.trans.insert, align 8, !dbg !2548
  %x_exit_block_ptr83.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 1, !dbg !2592
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr83.phi.trans.insert, align 8, !dbg !2548
  br label %for.cond80, !dbg !2548, !llvm.loop !2593

for.end145:                                       ; preds = %for.cond80
  %47 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @debug_insn_changes_pool, align 8, !dbg !2595
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %47) #6, !dbg !2596
  br label %if.end146, !dbg !2597

if.end146:                                        ; preds = %for.end73, %for.end145
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call4, i64 0, i32 0, !dbg !2598
  %48 = load i8*, i8** %popcount, align 8, !dbg !2598
  tail call void @free(i8* %48) #6, !dbg !2598
  %49 = bitcast %struct.simple_bitmap_def* %call4 to i8*, !dbg !2598
  tail call void @free(i8* %49) #6, !dbg !2598
  tail call void @free(i8* %call) #6, !dbg !2599
  ret i32 0, !dbg !2600
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local %struct.alloc_pool_def* @create_alloc_pool(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2601 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2606, metadata !DIExpression()), !dbg !2610
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2611
  %0 = load i8*, i8** %popcount, align 8, !dbg !2611
  %tobool = icmp eq i8* %0, null, !dbg !2612
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2613

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2614
  %.pre2 = zext i32 %.pre to i64, !dbg !2615
  %.pre3 = shl i64 1, %.pre2, !dbg !2615
  %.pre4 = lshr i32 %bitno, 6, !dbg !2616
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2617
  br label %if.end7, !dbg !2613

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2618
  %idxprom = zext i32 %div to i64, !dbg !2618
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2618
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2618
  %rem = and i32 %bitno, 63, !dbg !2618
  %sh_prom = zext i32 %rem to i64, !dbg !2618
  %2 = shl i64 1, %sh_prom, !dbg !2619
  %3 = and i64 %1, %2, !dbg !2619
  %tobool1 = icmp eq i64 %3, 0, !dbg !2619
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2621

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2622
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2623
  %inc = add i8 %4, 1, !dbg !2623
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2623
  br label %if.end7, !dbg !2622

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2617
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2615
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2617
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2624
  %or = or i64 %5, %shl.pre-phi, !dbg !2624
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2624
  ret void, !dbg !2625
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2626 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2633, metadata !DIExpression()), !dbg !2634
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2635
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2635
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2635
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2635

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2635
  br label %cond.end, !dbg !2635

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2635
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2635
  %cmp = icmp eq i32 %call, 1, !dbg !2636
  %conv2 = zext i1 %cmp to i8, !dbg !2635
  ret i8 %conv2, !dbg !2637
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2638 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2642, metadata !DIExpression()), !dbg !2643
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !2644
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2645
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2645
  ret %struct.basic_block_def* %0, !dbg !2646
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2647 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2651, metadata !DIExpression()), !dbg !2652
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !2653
  %tobool = icmp eq i8 %call, 0, !dbg !2653
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2653

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2653
  br label %cond.end, !dbg !2653

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2654
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2654
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2654
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2654

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2654
  br label %cond.end5, !dbg !2654

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2654
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !2654
  ret %struct.edge_def* %call7, !dbg !2655
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @init_value_data(%struct.value_data* %vd) unnamed_addr #5 !dbg !2656 {
entry:
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 0, metadata !2659, metadata !DIExpression()), !dbg !2660
  br label %for.cond, !dbg !2661

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2663
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2659, metadata !DIExpression()), !dbg !2660
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2664
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2666

for.body:                                         ; preds = %for.cond
  %mode = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !2667
  store i32 0, i32* %mode, align 8, !dbg !2669
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2670
  %0 = trunc i64 %indvars.iv to i32, !dbg !2671
  store i32 %0, i32* %oldest_regno, align 4, !dbg !2671
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 2, !dbg !2672
  store i32 -1, i32* %next_regno, align 8, !dbg !2673
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 3, !dbg !2674
  store %struct.queued_debug_insn_change* null, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !2675
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i32 undef, metadata !2659, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2660
  br label %for.cond, !dbg !2677, !llvm.loop !2678

for.end:                                          ; preds = %for.cond
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 1, !dbg !2680
  store i32 0, i32* %max_value_regs, align 8, !dbg !2681
  %n_debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 2, !dbg !2682
  store i32 0, i32* %n_debug_insn_changes, align 4, !dbg !2683
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @copyprop_hardreg_forward_1(%struct.basic_block_def* %bb, %struct.value_data* %vd) unnamed_addr #5 !dbg !2685 {
entry:
  %replaced = alloca [30 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2689, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !2690, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2742
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2743
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2743
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2743
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !2743
  %1 = getelementptr inbounds [30 x i8], [30 x i8]* %replaced, i64 0, i64 0, !dbg !2744
  %n_debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 2, !dbg !2745
  %2 = bitcast %struct.value_data* %vd to i8*, !dbg !2745
  br label %for.cond, !dbg !2747

for.cond:                                         ; preds = %for.inc584, %entry
  %insn.0.in = phi %struct.rtx_def** [ %head_, %entry ], [ %rt_rtx588, %for.inc584 ]
  %anything_changed.0 = phi i8 [ 0, %entry ], [ %anything_changed.2, %for.inc584 ], !dbg !2748
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %anything_changed.0, metadata !2691, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2692, metadata !DIExpression()), !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %1) #8, !dbg !2750
  call void @llvm.dbg.declare(metadata [30 x i8]* %replaced, metadata !2703, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2744
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2752
  %bf.load = load i32, i32* %3, align 8, !dbg !2752
  %bf.clear = and i32 %bf.load, 65535, !dbg !2752
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2752
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2752

lor.lhs.false:                                    ; preds = %for.cond
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !2752
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !2752

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !2752
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !2752

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !2752
  br i1 %cmp11, label %land.lhs.true, label %if.then, !dbg !2752

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %for.cond
  %cmp14 = icmp eq i32 %bf.clear, 7, !dbg !2752
  br i1 %cmp14, label %if.then, label %if.end48, !dbg !2753

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false8
  %cmp17 = icmp eq i32 %bf.clear, 7, !dbg !2754
  br i1 %cmp17, label %if.then18, label %if.end43, !dbg !2755

if.then18:                                        ; preds = %if.then
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2756
  %4 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2756
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2756
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2756
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2756
  %rt_rtx22 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !2756
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx22, align 8, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !2708, metadata !DIExpression()), !dbg !2757
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !2758
  %bf.load23 = load i32, i32* %8, align 8, !dbg !2758
  %bf.clear24 = and i32 %bf.load23, 65535, !dbg !2758
  %cmp25 = icmp eq i32 %bf.clear24, 25, !dbg !2758
  br i1 %cmp25, label %land.lhs.true26, label %if.then32, !dbg !2758

land.lhs.true26:                                  ; preds = %if.then18
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2758
  %rt_rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**, !dbg !2758
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !2758
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2758
  %cmp31 = icmp eq %struct.rtx_def* %9, %10, !dbg !2758
  br i1 %cmp31, label %if.end43, label %if.then32, !dbg !2760

if.then32:                                        ; preds = %land.lhs.true26, %if.then18
  %bf.lshr = lshr i32 %bf.load23, 16, !dbg !2761
  %bf.clear42 = and i32 %bf.lshr, 255, !dbg !2761
  %call = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %rt_rtx22, i32 26, i32 %bf.clear42, %struct.rtx_def* %insn.0, %struct.value_data* %vd) #7, !dbg !2762
  br label %if.end43, !dbg !2762

if.end43:                                         ; preds = %land.lhs.true26, %if.then32, %if.then
  %11 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2763
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 1, !dbg !2763
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2763
  %cmp46 = icmp eq %struct.rtx_def* %insn.0, %12, !dbg !2765
  %. = select i1 %cmp46, i32 2, i32 4, !dbg !2766
  br label %cleanup573, !dbg !2766

if.end48:                                         ; preds = %land.lhs.true
  br i1 %cmp, label %cond.true, label %lor.lhs.false52, !dbg !2767

lor.lhs.false52:                                  ; preds = %if.end48
  br i1 false, label %lor.lhs.false52.cond.true_crit_edge, label %lor.lhs.false56, !dbg !2767

lor.lhs.false52.cond.true_crit_edge:              ; preds = %lor.lhs.false52
  br label %cond.true, !dbg !2767

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %cmp59 = icmp eq i32 %bf.clear, 9, !dbg !2767
  br i1 %cmp59, label %cond.true, label %lor.lhs.false60, !dbg !2767

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %cmp63 = icmp eq i32 %bf.clear, 10, !dbg !2767
  br i1 %cmp63, label %cond.true, label %cond.end82, !dbg !2767

cond.true:                                        ; preds = %lor.lhs.false52.cond.true_crit_edge, %lor.lhs.false60, %lor.lhs.false56, %if.end48
  %u64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2767
  %13 = getelementptr inbounds %union.u, %union.u* %u64, i64 1, i32 0, i32 0, i64 0, !dbg !2767
  %14 = bitcast %union.rtunion_def* %13 to i32**, !dbg !2767
  %15 = load i32*, i32** %14, align 8, !dbg !2767
  %bf.load68 = load i32, i32* %15, align 8, !dbg !2767
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !2767
  %cmp70 = icmp eq i32 %bf.clear69, 23, !dbg !2767
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !2767
  br i1 %cmp70, label %cond.end82, label %cond.false, !dbg !2767

cond.false:                                       ; preds = %cond.true
  %call80 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn.0, %struct.rtx_def* %16) #6, !dbg !2767
  br label %cond.end82, !dbg !2767

cond.end82:                                       ; preds = %lor.lhs.false60, %cond.false, %cond.true
  %cond83 = phi %struct.rtx_def* [ %call80, %cond.false ], [ %16, %cond.true ], [ null, %lor.lhs.false60 ], !dbg !2767
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond83, metadata !2702, metadata !DIExpression()), !dbg !2744
  tail call void @extract_insn(%struct.rtx_def* %insn.0) #6, !dbg !2768
  %call84 = tail call i32 @constrain_operands(i32 1) #6, !dbg !2769
  %tobool = icmp eq i32 %call84, 0, !dbg !2769
  br i1 %tobool, label %if.then85, label %if.end86, !dbg !2771

if.then85:                                        ; preds = %cond.end82
  tail call void @_fatal_insn_not_found(%struct.rtx_def* %insn.0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 767, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2772
  br label %if.end86, !dbg !2772

if.end86:                                         ; preds = %cond.end82, %if.then85
  tail call void @preprocess_constraints() #6, !dbg !2773
  %17 = load i32, i32* @which_alternative, align 4, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %17, metadata !2698, metadata !DIExpression()), !dbg !2744
  %18 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2775
  call void @llvm.dbg.value(metadata i32 undef, metadata !2693, metadata !DIExpression()), !dbg !2744
  %u87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2776
  %19 = getelementptr inbounds %union.u, %union.u* %u87, i64 1, i32 0, i32 0, i64 0, !dbg !2776
  %rt_rtx90 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !2776
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx90, align 8, !dbg !2776
  %call91 = tail call i32 @asm_noperands(%struct.rtx_def* %20) #6, !dbg !2777
  %21 = bitcast %union.rtunion_def* %19 to i32**, !dbg !2778
  %22 = load i32*, i32** %21, align 8, !dbg !2778
  %bf.load99 = load i32, i32* %22, align 8, !dbg !2778
  %bf.clear100 = and i32 %bf.load99, 65535, !dbg !2778
  %cmp101 = icmp eq i32 %bf.clear100, 14, !dbg !2779
  call void @llvm.dbg.value(metadata i1 %cmp101, metadata !2699, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2744
  %idxprom107 = sext i32 %17 to i64, !dbg !2780
  br i1 %cmp101, label %if.end86.split.us, label %if.end86.if.end86.split_crit_edge, !dbg !2781

if.end86.if.end86.split_crit_edge:                ; preds = %if.end86
  %23 = sext i8 %18 to i64, !dbg !2781
  br label %for.cond103, !dbg !2781

if.end86.split.us:                                ; preds = %if.end86
  %24 = sext i8 %18 to i64, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %24, metadata !2693, metadata !DIExpression()), !dbg !2744
  br label %for.cond103.us, !dbg !2781

for.cond103.us:                                   ; preds = %for.inc.us, %if.end86.split.us
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc.us ], [ 0, %if.end86.split.us ], !dbg !2782
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2697, metadata !DIExpression()), !dbg !2744
  %cmp104.us = icmp slt i64 %indvars.iv3, %24, !dbg !2783
  br i1 %cmp104.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !2784

for.body.us:                                      ; preds = %for.cond103.us
  %matches109.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv3, i64 %idxprom107, i32 3, !dbg !2785
  %25 = load i32, i32* %matches109.us, align 16, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %25, metadata !2713, metadata !DIExpression()), !dbg !2780
  %cmp110.us = icmp sgt i32 %25, -1, !dbg !2786
  br i1 %cmp110.us, label %if.then112.us, label %if.end122.us, !dbg !2788

if.then112.us:                                    ; preds = %for.body.us
  %idxprom113.us = sext i32 %25 to i64, !dbg !2789
  %cl.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom113.us, i64 %idxprom107, i32 1, !dbg !2790
  %26 = load i32, i32* %cl.us, align 8, !dbg !2790
  %cl121.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv3, i64 %idxprom107, i32 1, !dbg !2791
  store i32 %26, i32* %cl121.us, align 8, !dbg !2792
  br label %if.end122.us, !dbg !2793

if.end122.us:                                     ; preds = %if.then112.us, %for.body.us
  br i1 %cmp110.us, label %if.then139.us, label %lor.lhs.false125.us, !dbg !2794

lor.lhs.false125.us:                              ; preds = %if.end122.us
  %matched.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv3, i64 %idxprom107, i32 4, !dbg !2796
  %27 = load i32, i32* %matched.us, align 4, !dbg !2796
  %cmp130.us = icmp sgt i32 %27, -1, !dbg !2797
  br i1 %cmp130.us, label %if.then139.us, label %lor.lhs.false132.us, !dbg !2798

lor.lhs.false132.us:                              ; preds = %lor.lhs.false125.us
  %arrayidx136.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv3, !dbg !2799
  %28 = load i32, i32* %arrayidx136.us, align 4, !dbg !2799
  %cmp137.us = icmp eq i32 %28, 1, !dbg !2800
  br i1 %cmp137.us, label %if.then139.us, label %for.inc.us, !dbg !2801

if.then139.us:                                    ; preds = %lor.lhs.false132.us, %lor.lhs.false125.us, %if.end122.us
  %arrayidx141.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv3, !dbg !2802
  store i32 2, i32* %arrayidx141.us, align 4, !dbg !2803
  br label %for.inc.us, !dbg !2802

for.inc.us:                                       ; preds = %if.then139.us, %lor.lhs.false132.us
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond103.us, !dbg !2805, !llvm.loop !2806

for.end.us-lcssa.us:                              ; preds = %for.cond103.us
  br label %for.end, !dbg !2808

for.cond103:                                      ; preds = %for.inc, %if.end86.if.end86.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end86.if.end86.split_crit_edge ], !dbg !2782
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2697, metadata !DIExpression()), !dbg !2744
  %cmp104 = icmp slt i64 %indvars.iv, %23, !dbg !2783
  br i1 %cmp104, label %for.body, label %for.end.us-lcssa, !dbg !2784

for.body:                                         ; preds = %for.cond103
  %matches109 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom107, i32 3, !dbg !2785
  %29 = load i32, i32* %matches109, align 16, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %29, metadata !2713, metadata !DIExpression()), !dbg !2780
  %cmp110 = icmp sgt i32 %29, -1, !dbg !2786
  br i1 %cmp110, label %if.then112, label %if.end122, !dbg !2788

if.then112:                                       ; preds = %for.body
  %idxprom113 = sext i32 %29 to i64, !dbg !2789
  %cl = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom113, i64 %idxprom107, i32 1, !dbg !2790
  %30 = load i32, i32* %cl, align 8, !dbg !2790
  %cl121 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom107, i32 1, !dbg !2791
  store i32 %30, i32* %cl121, align 8, !dbg !2792
  br label %if.end122, !dbg !2793

if.end122:                                        ; preds = %if.then112, %for.body
  br i1 %cmp110, label %if.then139, label %lor.lhs.false125, !dbg !2794

lor.lhs.false125:                                 ; preds = %if.end122
  %matched = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom107, i32 4, !dbg !2796
  %31 = load i32, i32* %matched, align 4, !dbg !2796
  %cmp130 = icmp sgt i32 %31, -1, !dbg !2797
  br i1 %cmp130, label %if.then139, label %lor.lhs.false132, !dbg !2798

lor.lhs.false132:                                 ; preds = %lor.lhs.false125
  br label %for.inc, !dbg !2809

if.then139:                                       ; preds = %lor.lhs.false125, %if.end122
  %arrayidx141 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv, !dbg !2802
  store i32 2, i32* %arrayidx141, align 4, !dbg !2803
  br label %for.inc, !dbg !2802

for.inc:                                          ; preds = %lor.lhs.false132, %if.then139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond103, !dbg !2805, !llvm.loop !2806

for.end.us-lcssa:                                 ; preds = %for.cond103
  br label %for.end, !dbg !2808

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %32 = load i32, i32* %n_debug_insn_changes, align 4, !dbg !2808
  %tobool143 = icmp eq i32 %32, 0, !dbg !2810
  br i1 %tobool143, label %if.end149, label %if.then144, !dbg !2811

if.then144:                                       ; preds = %for.end
  tail call void @note_uses(%struct.rtx_def** nonnull %rt_rtx90, void (%struct.rtx_def**, i8*)* nonnull @cprop_find_used_regs, i8* %2) #6, !dbg !2812
  br label %if.end149, !dbg !2812

if.end149:                                        ; preds = %for.end, %if.then144
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2744
  %33 = sext i8 %18 to i64, !dbg !2813
  br label %for.cond150, !dbg !2813

for.cond150:                                      ; preds = %for.inc165, %if.end149
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc165 ], [ 0, %if.end149 ], !dbg !2815
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2697, metadata !DIExpression()), !dbg !2744
  %cmp151 = icmp slt i64 %indvars.iv5, %33, !dbg !2816
  br i1 %cmp151, label %for.body153, label %for.end167, !dbg !2818

for.body153:                                      ; preds = %for.cond150
  %earlyclobber = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv5, i64 %idxprom107, i32 5, !dbg !2819
  %bf.load158 = load i8, i8* %earlyclobber, align 8, !dbg !2819
  %bf.clear159 = and i8 %bf.load158, 1, !dbg !2819
  %tobool160 = icmp eq i8 %bf.clear159, 0, !dbg !2821
  br i1 %tobool160, label %for.inc165, label %if.then161, !dbg !2822

if.then161:                                       ; preds = %for.body153
  %arrayidx163 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv5, !dbg !2823
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx163, align 8, !dbg !2823
  tail call fastcc void @kill_value(%struct.rtx_def* %34, %struct.value_data* %vd) #7, !dbg !2824
  br label %for.inc165, !dbg !2824

for.inc165:                                       ; preds = %for.body153, %if.then161
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond150, !dbg !2826, !llvm.loop !2827

for.end167:                                       ; preds = %for.cond150
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx90, align 8, !dbg !2829
  tail call void @note_stores(%struct.rtx_def* %35, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @kill_clobbered_value, i8* %2) #6, !dbg !2830
  %call176 = tail call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx90, i32 (%struct.rtx_def**, i8*)* nonnull @kill_autoinc_value, i8* %2) #6, !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2744
  %36 = sext i8 %18 to i64, !dbg !2832
  br label %for.cond177, !dbg !2832

for.cond177:                                      ; preds = %for.inc194, %for.end167
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc194 ], [ 0, %for.end167 ], !dbg !2834
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2697, metadata !DIExpression()), !dbg !2744
  %cmp178 = icmp slt i64 %indvars.iv7, %36, !dbg !2835
  br i1 %cmp178, label %for.body180, label %for.end196, !dbg !2837

for.body180:                                      ; preds = %for.cond177
  %earlyclobber185 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv7, i64 %idxprom107, i32 5, !dbg !2838
  %bf.load186 = load i8, i8* %earlyclobber185, align 8, !dbg !2838
  %bf.clear187 = and i8 %bf.load186, 1, !dbg !2838
  %tobool189 = icmp eq i8 %bf.clear187, 0, !dbg !2840
  br i1 %tobool189, label %for.inc194, label %if.then190, !dbg !2841

if.then190:                                       ; preds = %for.body180
  %arrayidx192 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv7, !dbg !2842
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx192, align 8, !dbg !2842
  tail call fastcc void @kill_value(%struct.rtx_def* %37, %struct.value_data* %vd) #7, !dbg !2843
  br label %for.inc194, !dbg !2843

for.inc194:                                       ; preds = %for.body180, %if.then190
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond177, !dbg !2845, !llvm.loop !2846

for.end196:                                       ; preds = %for.cond177
  %tobool197 = icmp eq %struct.rtx_def* %cond83, null, !dbg !2848
  br i1 %tobool197, label %no_move_special_case, label %land.lhs.true198, !dbg !2849

land.lhs.true198:                                 ; preds = %for.end196
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond83, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2850
  %39 = bitcast %union.rtunion_def* %38 to i32**, !dbg !2850
  %40 = load i32*, i32** %39, align 8, !dbg !2850
  %bf.load203 = load i32, i32* %40, align 8, !dbg !2850
  %bf.clear204 = and i32 %bf.load203, 65535, !dbg !2850
  %cmp205 = icmp eq i32 %bf.clear204, 37, !dbg !2850
  %41 = bitcast i32* %40 to %struct.rtx_def*, !dbg !2851
  br i1 %cmp205, label %if.then207, label %no_move_special_case, !dbg !2851

if.then207:                                       ; preds = %land.lhs.true198
  %rt_rtx211 = bitcast %union.rtunion_def* %38 to %struct.rtx_def**, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.rtx_def* %41, metadata !2717, metadata !DIExpression()), !dbg !2853
  %call212 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %41) #7, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %call212, metadata !2720, metadata !DIExpression()), !dbg !2853
  %bf.load213 = load i32, i32* %40, align 8, !dbg !2855
  %bf.lshr214 = lshr i32 %bf.load213, 16, !dbg !2855
  %bf.clear215 = and i32 %bf.lshr214, 255, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %bf.clear215, metadata !2721, metadata !DIExpression()), !dbg !2853
  %idxprom217 = zext i32 %call212 to i64, !dbg !2856
  %mode219 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom217, i32 0, !dbg !2858
  %42 = load i32, i32* %mode219, align 8, !dbg !2858
  %cmp220 = icmp eq i32 %bf.clear215, %42, !dbg !2859
  br i1 %cmp220, label %if.end241, label %if.then222, !dbg !2860

if.then222:                                       ; preds = %if.then207
  %idxprom225 = zext i32 %bf.clear215 to i64, !dbg !2861
  %arrayidx226 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom217, i64 %idxprom225, !dbg !2861
  %43 = load i8, i8* %arrayidx226, align 1, !dbg !2861
  %idxprom234 = zext i32 %42 to i64, !dbg !2864
  %arrayidx235 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom217, i64 %idxprom234, !dbg !2864
  %44 = load i8, i8* %arrayidx235, align 1, !dbg !2864
  %cmp237 = icmp ugt i8 %43, %44, !dbg !2865
  br i1 %cmp237, label %cleanup, label %if.end241, !dbg !2866

if.end241:                                        ; preds = %if.then207, %if.then222
  %arrayidx244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond83, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2867
  %45 = bitcast %union.rtunion_def* %arrayidx244 to i32**, !dbg !2867
  %46 = load i32*, i32** %45, align 8, !dbg !2867
  %bf.load246 = load i32, i32* %46, align 8, !dbg !2867
  %bf.clear247 = and i32 %bf.load246, 65535, !dbg !2867
  %cmp248 = icmp eq i32 %bf.clear247, 37, !dbg !2867
  br i1 %cmp248, label %if.then250, label %if.end273, !dbg !2869

if.then250:                                       ; preds = %if.end241
  %arrayidx252 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom217, !dbg !2870
  %47 = load i32, i32* %arrayidx252, align 4, !dbg !2870
  %call253 = tail call fastcc %struct.rtx_def* @find_oldest_value_reg(i32 %47, %struct.rtx_def* %41, %struct.value_data* %vd) #7, !dbg !2872
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call253, metadata !2723, metadata !DIExpression()), !dbg !2853
  %tobool254 = icmp eq %struct.rtx_def* %call253, null, !dbg !2873
  br i1 %tobool254, label %if.end273, label %land.lhs.true255, !dbg !2875

land.lhs.true255:                                 ; preds = %if.then250
  %call260 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx211, %struct.rtx_def* nonnull %call253, i8 zeroext 0) #6, !dbg !2876
  %tobool262 = icmp eq i8 %call260, 0, !dbg !2876
  br i1 %tobool262, label %if.end273, label %if.then263, !dbg !2877

if.then263:                                       ; preds = %land.lhs.true255
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2878
  %tobool264 = icmp eq %struct._IO_FILE* %48, null, !dbg !2878
  br i1 %tobool264, label %cleanup, label %if.then265, !dbg !2881

if.then265:                                       ; preds = %if.then263
  %arrayidx268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2882
  %rt_int = bitcast %union.rtunion_def* %arrayidx268 to i32*, !dbg !2882
  %49 = load i32, i32* %rt_int, align 8, !dbg !2882
  %call269 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call253) #7, !dbg !2883
  %call270 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %49, i32 %call212, i32 %call269) #6, !dbg !2884
  br label %cleanup, !dbg !2884

if.end273:                                        ; preds = %land.lhs.true255, %if.then250, %if.end241
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom217, i32 1, !dbg !2885
  br label %for.cond277, !dbg !2887

for.cond277:                                      ; preds = %for.inc330, %if.end273
  %i216.0.in = phi i32* [ %oldest_regno, %if.end273 ], [ %next_regno, %for.inc330 ]
  %i216.0 = load i32, i32* %i216.0.in, align 4, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %i216.0, metadata !2722, metadata !DIExpression()), !dbg !2853
  %cmp278 = icmp eq i32 %i216.0, %call212, !dbg !2889
  br i1 %cmp278, label %cleanup.loopexit, label %for.body280, !dbg !2891

for.body280:                                      ; preds = %for.cond277
  %idxprom282 = zext i32 %i216.0 to i64, !dbg !2892
  %mode284 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom282, i32 0, !dbg !2894
  %50 = load i32, i32* %mode284, align 8, !dbg !2894
  %51 = load i32, i32* %mode219, align 8, !dbg !2895
  %call289 = tail call fastcc %struct.rtx_def* @maybe_mode_change(i32 %50, i32 %51, i32 %bf.clear215, i32 %i216.0, i32 %call212) #7, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call289, metadata !2723, metadata !DIExpression()), !dbg !2853
  %cmp290 = icmp eq %struct.rtx_def* %call289, null, !dbg !2897
  br i1 %cmp290, label %for.inc330, label %if.then292, !dbg !2899

if.then292:                                       ; preds = %for.body280
  %call297 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx211, %struct.rtx_def* nonnull %call289, i8 zeroext 0) #6, !dbg !2900
  %tobool298 = icmp eq i8 %call297, 0, !dbg !2900
  br i1 %tobool298, label %for.inc330, label %if.then299, !dbg !2903

if.then299:                                       ; preds = %if.then292
  %call289.lcssa = phi %struct.rtx_def* [ %call289, %if.then292 ], !dbg !2896
  %52 = getelementptr inbounds i32, i32* %40, i64 4, !dbg !2904
  %53 = load i32, i32* %52, align 8, !dbg !2904
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call289.lcssa, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2906
  %rt_uint306 = bitcast %union.rtunion_def* %54 to i32*, !dbg !2906
  store i32 %53, i32* %rt_uint306, align 8, !dbg !2907
  %55 = getelementptr inbounds i32, i32* %40, i64 6, !dbg !2908
  %56 = bitcast i32* %55 to i64*, !dbg !2908
  %57 = load i64, i64* %56, align 8, !dbg !2908
  %58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call289.lcssa, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2909
  %59 = bitcast %union.rtunion_def* %58 to i64*, !dbg !2910
  store i64 %57, i64* %59, align 8, !dbg !2910
  %bf.load314 = load i32, i32* %40, align 8, !dbg !2911
  %bf.clear316 = and i32 %bf.load314, 1073741824, !dbg !2911
  %60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call289.lcssa, i64 0, i32 0, !dbg !2912
  %bf.load317 = load i32, i32* %60, align 8, !dbg !2913
  %bf.clear318 = and i32 %bf.load317, -1073741825, !dbg !2913
  %bf.set = or i32 %bf.clear318, %bf.clear316, !dbg !2913
  store i32 %bf.set, i32* %60, align 8, !dbg !2913
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2914
  %tobool319 = icmp eq %struct._IO_FILE* %61, null, !dbg !2914
  br i1 %tobool319, label %cleanup, label %if.then320, !dbg !2916

if.then320:                                       ; preds = %if.then299
  %arrayidx323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2917
  %rt_int324 = bitcast %union.rtunion_def* %arrayidx323 to i32*, !dbg !2917
  %62 = load i32, i32* %rt_int324, align 8, !dbg !2917
  %call325 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call289.lcssa) #7, !dbg !2918
  %call326 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %62, i32 %call212, i32 %call325) #6, !dbg !2919
  br label %cleanup, !dbg !2919

for.inc330:                                       ; preds = %if.then292, %for.body280
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom282, i32 2, !dbg !2920
  br label %for.cond277, !dbg !2921, !llvm.loop !2922

cleanup.loopexit:                                 ; preds = %for.cond277
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then263, %if.then299, %if.then320, %if.then265, %if.then222
  %changed.0 = phi i8 [ 0, %if.then222 ], [ 1, %if.then265 ], [ 1, %if.then263 ], [ 1, %if.then320 ], [ 1, %if.then299 ], [ 0, %cleanup.loopexit ], !dbg !2744
  %cleanup.dest.slot.0 = phi i32 [ 14, %if.then222 ], [ 15, %if.then265 ], [ 15, %if.then263 ], [ 15, %if.then320 ], [ 15, %if.then299 ], [ 0, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2707, metadata !DIExpression()), !dbg !2744
  switch i32 %cleanup.dest.slot.0, label %cleanup573 [
    i32 0, label %no_move_special_case
    i32 14, label %no_move_special_case
    i32 15, label %did_replacement
  ]

no_move_special_case:                             ; preds = %for.end196, %land.lhs.true198, %cleanup, %cleanup
  %changed.2 = phi i8 [ %changed.0, %cleanup ], [ 0, %land.lhs.true198 ], [ 0, %for.end196 ], [ %changed.0, %cleanup ], !dbg !2924
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !2707, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.label(metadata !2740), !dbg !2925
  call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2744
  %tobool355 = icmp sgt i32 %call91, -1, !dbg !2926
  %63 = sext i8 %18 to i64, !dbg !2928
  br label %for.cond340, !dbg !2928

for.cond340:                                      ; preds = %for.inc479, %no_move_special_case
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc479 ], [ 0, %no_move_special_case ], !dbg !2929
  %any_replacements.0 = phi i8 [ %any_replacements.2, %for.inc479 ], [ 0, %no_move_special_case ], !dbg !2929
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2697, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 %any_replacements.0, metadata !2701, metadata !DIExpression()), !dbg !2744
  %cmp341 = icmp slt i64 %indvars.iv11, %63, !dbg !2930
  br i1 %cmp341, label %for.body343, label %for.end481, !dbg !2931

for.body343:                                      ; preds = %for.cond340
  %arrayidx345 = getelementptr inbounds [30 x i8], [30 x i8]* %replaced, i64 0, i64 %indvars.iv11, !dbg !2932
  store i8 0, i8* %arrayidx345, align 1, !dbg !2933
  %arrayidx347 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv11, !dbg !2934
  %64 = load i8*, i8** %arrayidx347, align 8, !dbg !2934
  %65 = load i8, i8* %64, align 1, !dbg !2934
  %cmp350 = icmp eq i8 %65, 0, !dbg !2936
  br i1 %cmp350, label %for.inc479, label %if.end353, !dbg !2937

if.end353:                                        ; preds = %for.body343
  br i1 %tobool355, label %land.lhs.true356, label %if.end376, !dbg !2938

land.lhs.true356:                                 ; preds = %if.end353
  %arrayidx358 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv11, !dbg !2939
  %66 = bitcast %struct.rtx_def** %arrayidx358 to i32**, !dbg !2939
  %67 = load i32*, i32** %66, align 8, !dbg !2939
  %bf.load359 = load i32, i32* %67, align 8, !dbg !2939
  %bf.clear360 = and i32 %bf.load359, 65535, !dbg !2939
  %cmp361 = icmp eq i32 %bf.clear360, 37, !dbg !2939
  br i1 %cmp361, label %land.lhs.true363, label %if.end376, !dbg !2940

land.lhs.true363:                                 ; preds = %land.lhs.true356
  %68 = bitcast i32* %67 to %struct.rtx_def*, !dbg !2940
  %call366 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %68) #7, !dbg !2941
  %69 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx358, align 8, !dbg !2942
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2942
  %rt_uint372 = bitcast %union.rtunion_def* %70 to i32*, !dbg !2942
  %71 = load i32, i32* %rt_uint372, align 8, !dbg !2942
  %cmp373 = icmp eq i32 %call366, %71, !dbg !2943
  br i1 %cmp373, label %for.inc479, label %if.end376, !dbg !2944

if.end376:                                        ; preds = %land.lhs.true363, %land.lhs.true356, %if.end353
  %arrayidx378 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv11, !dbg !2945
  %72 = load i32, i32* %arrayidx378, align 4, !dbg !2945
  %cmp379 = icmp eq i32 %72, 0, !dbg !2947
  br i1 %cmp379, label %if.then381, label %if.else436, !dbg !2948

if.then381:                                       ; preds = %if.end376
  %is_address = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv11, i64 %idxprom107, i32 5, !dbg !2949
  %bf.load386 = load i8, i8* %is_address, align 8, !dbg !2949
  %bf.clear388 = and i8 %bf.load386, 64, !dbg !2949
  %tobool390 = icmp eq i8 %bf.clear388, 0, !dbg !2952
  br i1 %tobool390, label %if.else402, label %if.then391, !dbg !2953

if.then391:                                       ; preds = %if.then381
  %arrayidx393 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv11, !dbg !2954
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx393, align 8, !dbg !2954
  %cl398 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv11, i64 %idxprom107, i32 1, !dbg !2955
  %74 = load i32, i32* %cl398, align 8, !dbg !2955
  %call399 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** %73, i32 %74, i32 0, %struct.rtx_def* %insn.0, %struct.value_data* %vd) #7, !dbg !2956
  store i8 %call399, i8* %arrayidx345, align 1, !dbg !2957
  br label %if.end450, !dbg !2958

if.else402:                                       ; preds = %if.then381
  %arrayidx404 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv11, !dbg !2959
  %75 = bitcast %struct.rtx_def** %arrayidx404 to i32**, !dbg !2959
  %76 = load i32*, i32** %75, align 8, !dbg !2959
  %bf.load405 = load i32, i32* %76, align 8, !dbg !2959
  %bf.clear406 = and i32 %bf.load405, 65535, !dbg !2959
  %cmp407 = icmp eq i32 %bf.clear406, 37, !dbg !2959
  %77 = bitcast i32* %76 to %struct.rtx_def*, !dbg !2961
  br i1 %cmp407, label %if.then409, label %if.else420, !dbg !2961

if.then409:                                       ; preds = %if.else402
  %arrayidx411 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv11, !dbg !2962
  %78 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx411, align 8, !dbg !2962
  %cl416 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv11, i64 %idxprom107, i32 1, !dbg !2963
  %79 = load i32, i32* %cl416, align 8, !dbg !2963
  %call417 = tail call fastcc zeroext i8 @replace_oldest_value_reg(%struct.rtx_def** %78, i32 %79, %struct.rtx_def* %insn.0, %struct.value_data* %vd) #7, !dbg !2964
  store i8 %call417, i8* %arrayidx345, align 1, !dbg !2965
  br label %if.end450, !dbg !2966

if.else420:                                       ; preds = %if.else402
  %cmp425 = icmp eq i32 %bf.clear406, 43, !dbg !2967
  br i1 %cmp425, label %if.then427, label %if.end450, !dbg !2969

if.then427:                                       ; preds = %if.else420
  %call430 = tail call fastcc zeroext i8 @replace_oldest_value_mem(%struct.rtx_def* %77, %struct.rtx_def* %insn.0, %struct.value_data* %vd) #7, !dbg !2970
  store i8 %call430, i8* %arrayidx345, align 1, !dbg !2971
  br label %if.end450, !dbg !2972

if.else436:                                       ; preds = %if.end376
  %arrayidx438 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv11, !dbg !2973
  %80 = bitcast %struct.rtx_def** %arrayidx438 to i32**, !dbg !2973
  %81 = load i32*, i32** %80, align 8, !dbg !2973
  %bf.load439 = load i32, i32* %81, align 8, !dbg !2973
  %bf.clear440 = and i32 %bf.load439, 65535, !dbg !2973
  %cmp441 = icmp eq i32 %bf.clear440, 43, !dbg !2973
  br i1 %cmp441, label %if.then443, label %if.end450, !dbg !2975

if.then443:                                       ; preds = %if.else436
  %82 = bitcast i32* %81 to %struct.rtx_def*, !dbg !2975
  %call446 = tail call fastcc zeroext i8 @replace_oldest_value_mem(%struct.rtx_def* %82, %struct.rtx_def* %insn.0, %struct.value_data* %vd) #7, !dbg !2976
  store i8 %call446, i8* %arrayidx345, align 1, !dbg !2977
  br label %if.end450, !dbg !2978

if.end450:                                        ; preds = %if.else436, %if.then443, %if.then391, %if.else420, %if.then427, %if.then409
  %83 = phi i8 [ 0, %if.else436 ], [ %call446, %if.then443 ], [ %call399, %if.then391 ], [ 0, %if.else420 ], [ %call430, %if.then427 ], [ %call417, %if.then409 ], !dbg !2979
  %tobool453 = icmp eq i8 %83, 0, !dbg !2979
  br i1 %tobool453, label %for.inc479, label %if.then454, !dbg !2980

if.then454:                                       ; preds = %if.end450
  %arrayidx457 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv11, !dbg !2981
  %84 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx457, align 8, !dbg !2981
  %85 = load %struct.rtx_def*, %struct.rtx_def** %84, align 8, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.rtx_def* %85, metadata !2730, metadata !DIExpression()), !dbg !2983
  %arrayidx459 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv11, !dbg !2984
  store %struct.rtx_def* %85, %struct.rtx_def** %arrayidx459, align 8, !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2983
  br label %for.cond460, !dbg !2986

for.cond460:                                      ; preds = %for.inc475, %if.then454
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc475 ], [ 0, %if.then454 ], !dbg !2988
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !2724, metadata !DIExpression()), !dbg !2983
  %86 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !2989
  %87 = sext i8 %86 to i64, !dbg !2991
  %cmp462 = icmp slt i64 %indvars.iv9, %87, !dbg !2991
  br i1 %cmp462, label %for.body464, label %for.inc479.loopexit, !dbg !2992

for.body464:                                      ; preds = %for.cond460
  %arrayidx466 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %indvars.iv9, !dbg !2993
  %88 = load i8, i8* %arrayidx466, align 1, !dbg !2993
  %conv467 = sext i8 %88 to i64, !dbg !2993
  %89 = and i64 %conv467, 4294967295, !dbg !2995
  %cmp468 = icmp eq i64 %indvars.iv11, %89, !dbg !2995
  br i1 %cmp468, label %if.then470, label %for.inc475, !dbg !2996

if.then470:                                       ; preds = %for.body464
  %arrayidx472 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv9, !dbg !2997
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx472, align 8, !dbg !2997
  %call473 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %insn.0, %struct.rtx_def** %90, %struct.rtx_def* %85, i8 zeroext 1) #6, !dbg !2998
  br label %for.inc475, !dbg !2998

for.inc475:                                       ; preds = %for.body464, %if.then470
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i32 undef, metadata !2724, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2983
  br label %for.cond460, !dbg !3000, !llvm.loop !3001

for.inc479.loopexit:                              ; preds = %for.cond460
  br label %for.inc479, !dbg !3003

for.inc479:                                       ; preds = %for.inc479.loopexit, %if.end450, %land.lhs.true363, %for.body343
  %any_replacements.2 = phi i8 [ %any_replacements.0, %for.body343 ], [ %any_replacements.0, %land.lhs.true363 ], [ %any_replacements.0, %if.end450 ], [ 1, %for.inc479.loopexit ], !dbg !2744
  call void @llvm.dbg.value(metadata i8 %any_replacements.2, metadata !2701, metadata !DIExpression()), !dbg !2744
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond340, !dbg !3004, !llvm.loop !3005

for.end481:                                       ; preds = %for.cond340
  %any_replacements.0.lcssa = phi i8 [ %any_replacements.0, %for.cond340 ], !dbg !2929
  call void @llvm.dbg.value(metadata i8 %any_replacements.0.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 %any_replacements.0.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 %any_replacements.0.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2744
  %tobool482 = icmp eq i8 %any_replacements.0.lcssa, 0, !dbg !3007
  br i1 %tobool482, label %did_replacement, label %if.then483, !dbg !3008

if.then483:                                       ; preds = %for.end481
  %call484 = tail call i32 @apply_change_group() #6, !dbg !3009
  %tobool485 = icmp eq i32 %call484, 0, !dbg !3009
  br i1 %tobool485, label %for.cond487.preheader, label %did_replacement, !dbg !3010

for.cond487.preheader:                            ; preds = %if.then483
  %91 = sext i8 %18 to i64, !dbg !3011
  br label %for.cond487, !dbg !3011

for.cond487:                                      ; preds = %for.cond487.preheader, %for.inc500
  %indvars.iv13 = phi i64 [ 0, %for.cond487.preheader ], [ %indvars.iv.next14, %for.inc500 ], !dbg !3012
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !2697, metadata !DIExpression()), !dbg !2744
  %cmp488 = icmp slt i64 %indvars.iv13, %91, !dbg !3013
  br i1 %cmp488, label %for.body490, label %for.end502, !dbg !3011

for.body490:                                      ; preds = %for.cond487
  %arrayidx492 = getelementptr inbounds [30 x i8], [30 x i8]* %replaced, i64 0, i64 %indvars.iv13, !dbg !3014
  %92 = load i8, i8* %arrayidx492, align 1, !dbg !3014
  %tobool493 = icmp eq i8 %92, 0, !dbg !3014
  br i1 %tobool493, label %for.inc500, label %if.then494, !dbg !3015

if.then494:                                       ; preds = %for.body490
  %arrayidx496 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv13, !dbg !3016
  %93 = bitcast %struct.rtx_def*** %arrayidx496 to i64**, !dbg !3016
  %94 = load i64*, i64** %93, align 8, !dbg !3016
  %95 = load i64, i64* %94, align 8, !dbg !3017
  %arrayidx498 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv13, !dbg !3018
  %96 = bitcast %struct.rtx_def** %arrayidx498 to i64*, !dbg !3019
  store i64 %95, i64* %96, align 8, !dbg !3019
  br label %for.inc500, !dbg !3020

for.inc500:                                       ; preds = %for.body490, %if.then494
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !3021
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond487, !dbg !3022, !llvm.loop !3023

for.end502:                                       ; preds = %for.cond487
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3025
  %tobool503 = icmp eq %struct._IO_FILE* %97, null, !dbg !3025
  br i1 %tobool503, label %did_replacement, label %if.then504, !dbg !3027

if.then504:                                       ; preds = %for.end502
  %arrayidx507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3028
  %rt_int508 = bitcast %union.rtunion_def* %arrayidx507 to i32*, !dbg !3028
  %98 = load i32, i32* %rt_int508, align 8, !dbg !3028
  %call509 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %98) #6, !dbg !3029
  br label %did_replacement, !dbg !3029

did_replacement:                                  ; preds = %for.end502, %if.then483, %for.end481, %if.then504, %cleanup
  %changed.5 = phi i8 [ %changed.0, %cleanup ], [ %changed.2, %for.end481 ], [ %changed.2, %if.then504 ], [ %changed.2, %for.end502 ], [ 1, %if.then483 ], !dbg !2744
  call void @llvm.dbg.value(metadata i8 %changed.5, metadata !2707, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.label(metadata !2741), !dbg !3030
  %tobool514 = icmp eq i8 %changed.5, 0, !dbg !3031
  %spec.select = select i1 %tobool514, i8 %anything_changed.0, i8 1, !dbg !3033
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2691, metadata !DIExpression()), !dbg !2742
  %bf.load517 = load i32, i32* %3, align 8, !dbg !3034
  %bf.clear518 = and i32 %bf.load517, 65535, !dbg !3034
  %cmp519 = icmp eq i32 %bf.clear518, 10, !dbg !3034
  br i1 %cmp519, label %for.cond522.preheader, label %if.end532, !dbg !3036

for.cond522.preheader:                            ; preds = %did_replacement
  br label %for.cond522, !dbg !3037

for.cond522:                                      ; preds = %for.cond522.preheader, %for.inc529
  %indvars.iv15 = phi i64 [ 0, %for.cond522.preheader ], [ %indvars.iv.next16, %for.inc529 ], !dbg !3039
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !2697, metadata !DIExpression()), !dbg !2744
  %exitcond = icmp eq i64 %indvars.iv15, 53, !dbg !3040
  br i1 %exitcond, label %if.end532.loopexit, label %for.body525, !dbg !3037

for.body525:                                      ; preds = %for.cond522
  %99 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !3042
  %shl = shl i64 1, %indvars.iv15, !dbg !3042
  %and = and i64 %99, %shl, !dbg !3042
  %tobool526 = icmp eq i64 %and, 0, !dbg !3042
  br i1 %tobool526, label %for.inc529, label %if.then527, !dbg !3044

if.then527:                                       ; preds = %for.body525
  %100 = trunc i64 %indvars.iv15 to i32, !dbg !3045
  tail call fastcc void @kill_value_regno(i32 %100, i32 1, %struct.value_data* %vd) #7, !dbg !3045
  br label %for.inc529, !dbg !3045

for.inc529:                                       ; preds = %for.body525, %if.then527
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2744
  br label %for.cond522, !dbg !3047, !llvm.loop !3048

if.end532.loopexit:                               ; preds = %for.cond522
  br label %if.end532, !dbg !3050

if.end532:                                        ; preds = %if.end532.loopexit, %did_replacement
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx90, align 8, !dbg !3050
  tail call void @note_stores(%struct.rtx_def* %101, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @kill_set_value, i8* %2) #6, !dbg !3051
  br i1 %tobool197, label %if.end565, label %land.lhs.true538, !dbg !3052

land.lhs.true538:                                 ; preds = %if.end532
  %arrayidx541 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond83, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3054
  %102 = bitcast %union.rtunion_def* %arrayidx541 to i32**, !dbg !3054
  %103 = load i32*, i32** %102, align 8, !dbg !3054
  %bf.load543 = load i32, i32* %103, align 8, !dbg !3054
  %bf.clear544 = and i32 %bf.load543, 65535, !dbg !3054
  %cmp545 = icmp eq i32 %bf.clear544, 37, !dbg !3054
  %104 = bitcast i32* %103 to %struct.rtx_def*, !dbg !3055
  br i1 %cmp545, label %land.lhs.true547, label %if.end565, !dbg !3055

land.lhs.true547:                                 ; preds = %land.lhs.true538
  %105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond83, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3056
  %106 = bitcast %union.rtunion_def* %105 to i32**, !dbg !3056
  %107 = load i32*, i32** %106, align 8, !dbg !3056
  %bf.load552 = load i32, i32* %107, align 8, !dbg !3056
  %bf.clear553 = and i32 %bf.load552, 65535, !dbg !3056
  %cmp554 = icmp eq i32 %bf.clear553, 37, !dbg !3056
  br i1 %cmp554, label %if.then556, label %if.end565, !dbg !3057

if.then556:                                       ; preds = %land.lhs.true547
  %108 = bitcast i32* %107 to %struct.rtx_def*, !dbg !3057
  tail call fastcc void @copy_value(%struct.rtx_def* %104, %struct.rtx_def* %108, %struct.value_data* %vd) #7, !dbg !3058
  br label %if.end565, !dbg !3058

if.end565:                                        ; preds = %if.end532, %if.then556, %land.lhs.true547, %land.lhs.true538
  %109 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3059
  %end_568 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %109, i64 0, i32 1, !dbg !3059
  %110 = load %struct.rtx_def*, %struct.rtx_def** %end_568, align 8, !dbg !3059
  %cmp569 = icmp eq %struct.rtx_def* %insn.0, %110, !dbg !3061
  %.1 = select i1 %cmp569, i32 2, i32 0, !dbg !3062
  br label %cleanup573, !dbg !3062

cleanup573:                                       ; preds = %if.end565, %if.end43, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ %., %if.end43 ], [ %.1, %if.end565 ]
  %anything_changed.2 = phi i8 [ %anything_changed.0, %cleanup ], [ %anything_changed.0, %if.end43 ], [ %spec.select, %if.end565 ], !dbg !2742
  call void @llvm.dbg.value(metadata i8 %anything_changed.2, metadata !2691, metadata !DIExpression()), !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %1) #8, !dbg !3063
  %switch = icmp eq i32 %cleanup.dest.slot.1, 2
  br i1 %switch, label %for.end589, label %for.inc584

for.inc584:                                       ; preds = %cleanup573
  %111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3064
  %rt_rtx588 = bitcast %union.rtunion_def* %111 to %struct.rtx_def**, !dbg !3064
  br label %for.cond, !dbg !3065, !llvm.loop !3066

for.end589:                                       ; preds = %cleanup573
  %anything_changed.2.lcssa = phi i8 [ %anything_changed.2, %cleanup573 ], !dbg !2742
  call void @llvm.dbg.value(metadata i8 %anything_changed.2.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 %anything_changed.2.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 %anything_changed.2.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2742
  ret i8 %anything_changed.2.lcssa, !dbg !3069
}

declare dso_local void @df_analyze() local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_debug_insn_changes(%struct.value_data* %vd, i32 %regno) unnamed_addr #5 !dbg !3070 {
entry:
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3075, metadata !DIExpression()), !dbg !3078
  %idxprom = zext i32 %regno to i64, !dbg !3079
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 3, !dbg !3080
  %0 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !3080
  %insn = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %0, i64 0, i32 1, !dbg !3081
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3077, metadata !DIExpression()), !dbg !3078
  br label %for.cond, !dbg !3082

for.cond:                                         ; preds = %if.end, %entry
  %change.0 = phi %struct.queued_debug_insn_change* [ %0, %entry ], [ %change.0.pre, %if.end ], !dbg !3084
  %last_insn.0 = phi %struct.rtx_def* [ %1, %entry ], [ %last_insn.1, %if.end ], !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_insn.0, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.queued_debug_insn_change* %change.0, metadata !3076, metadata !DIExpression()), !dbg !3078
  %tobool = icmp eq %struct.queued_debug_insn_change* %change.0, null, !dbg !3085
  br i1 %tobool, label %for.end, label %for.body, !dbg !3085

for.body:                                         ; preds = %for.cond
  %insn5 = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %change.0, i64 0, i32 1, !dbg !3086
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn5, align 8, !dbg !3086
  %cmp = icmp eq %struct.rtx_def* %last_insn.0, %2, !dbg !3090
  br i1 %cmp, label %if.end, label %if.then, !dbg !3091

if.then:                                          ; preds = %for.body
  %call = tail call i32 @apply_change_group() #6, !dbg !3092
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn5, align 8, !dbg !3094
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3077, metadata !DIExpression()), !dbg !3078
  br label %if.end, !dbg !3095

if.end:                                           ; preds = %for.body, %if.then
  %4 = phi %struct.rtx_def* [ %3, %if.then ], [ %last_insn.0, %for.body ], !dbg !3096
  %last_insn.1 = phi %struct.rtx_def* [ %3, %if.then ], [ %last_insn.0, %for.body ], !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_insn.1, metadata !3077, metadata !DIExpression()), !dbg !3078
  %loc = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %change.0, i64 0, i32 2, !dbg !3097
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3097
  %new_rtx = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %change.0, i64 0, i32 3, !dbg !3098
  %6 = load %struct.rtx_def*, %struct.rtx_def** %new_rtx, align 8, !dbg !3098
  %call8 = tail call zeroext i8 @validate_change(%struct.rtx_def* %4, %struct.rtx_def** %5, %struct.rtx_def* %6, i8 zeroext 1) #6, !dbg !3099
  %next = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %change.0, i64 0, i32 0, !dbg !3100
  %change.0.pre = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %next, align 8, !dbg !3084
  br label %for.cond, !dbg !3101, !llvm.loop !3102

for.end:                                          ; preds = %for.cond
  %call9 = tail call i32 @apply_change_group() #6, !dbg !3104
  ret void, !dbg !3105
}

declare dso_local void @free_alloc_pool(%struct.alloc_pool_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3112, metadata !DIExpression()), !dbg !3113
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3114
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3114

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3114
  %0 = load i32, i32* %num, align 8, !dbg !3114
  br label %cond.end, !dbg !3114

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3114
  ret i32 %cond, !dbg !3114
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3115 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3120, metadata !DIExpression()), !dbg !3121
  br label %land.end, !dbg !3122

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 0, !dbg !3122
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3122
  ret %struct.edge_def* %0, !dbg !3122
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** %loc, i32 %cl, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) unnamed_addr #5 !dbg !3123 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3127, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3128, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3129, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3130, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3131, metadata !DIExpression()), !dbg !3158
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3132, metadata !DIExpression()), !dbg !3158
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3160
  %bf.load = load i32, i32* %1, align 8, !dbg !3160
  %bf.clear = and i32 %bf.load, 65535, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3133, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 0, metadata !3137, metadata !DIExpression()), !dbg !3158
  %trunc = trunc i32 %bf.load to i16, !dbg !3161
  switch i16 %trunc, label %sw.epilog [
    i16 49, label %sw.bb
    i16 77, label %cleanup
    i16 76, label %cleanup
    i16 79, label %cleanup
    i16 75, label %cleanup
    i16 74, label %cleanup
    i16 78, label %cleanup
    i16 43, label %sw.bb264
    i16 37, label %sw.bb266
  ], !dbg !3161

sw.bb:                                            ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3162
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3162
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3162
  %cmp = icmp eq i32 %bf.clear2, 7, !dbg !3162
  br i1 %cmp, label %sw.epilog, label %if.end, !dbg !3164

if.end:                                           ; preds = %sw.bb
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3165
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3165
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3138, metadata !DIExpression()), !dbg !3166
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3167
  %rt_rtx6 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3167
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx6, align 8, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3141, metadata !DIExpression()), !dbg !3166
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3168
  %bf.load7 = load i32, i32* %6, align 8, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %bf.load7, metadata !3142, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3166
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3169
  %bf.load9 = load i32, i32* %7, align 8, !dbg !3169
  call void @llvm.dbg.value(metadata i32 %bf.load9, metadata !3143, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3144, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3145, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** null, metadata !3146, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** null, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 38, metadata !3148, metadata !DIExpression()), !dbg !3166
  %bf.clear12 = and i32 %bf.load7, 65535, !dbg !3170
  %cmp13 = icmp eq i32 %bf.clear12, 39, !dbg !3172
  br i1 %cmp13, label %if.then14, label %if.end21, !dbg !3173

if.then14:                                        ; preds = %if.end
  %arrayidx17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3174
  %rt_rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**, !dbg !3174
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx18, align 8, !dbg !3174
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3144, metadata !DIExpression()), !dbg !3166
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !3176
  %bf.load19 = load i32, i32* %9, align 8, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %bf.load19, metadata !3142, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3166
  br label %if.end21, !dbg !3177

if.end21:                                         ; preds = %if.then14, %if.end
  %code0.0.in = phi i32 [ %bf.load19, %if.then14 ], [ %bf.load7, %if.end ]
  %op0.0 = phi %struct.rtx_def* [ %8, %if.then14 ], [ %3, %if.end ], !dbg !3166
  %code0.0 = and i32 %code0.0.in, 65535, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op0.0, metadata !3144, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %code0.0, metadata !3142, metadata !DIExpression()), !dbg !3166
  %bf.clear23 = and i32 %bf.load9, 65535, !dbg !3178
  %cmp24 = icmp eq i32 %bf.clear23, 39, !dbg !3180
  br i1 %cmp24, label %if.then25, label %if.end32, !dbg !3181

if.then25:                                        ; preds = %if.end21
  %arrayidx28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3182
  %rt_rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**, !dbg !3182
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx29, align 8, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3145, metadata !DIExpression()), !dbg !3166
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !3184
  %bf.load30 = load i32, i32* %11, align 8, !dbg !3184
  call void @llvm.dbg.value(metadata i32 %bf.load30, metadata !3143, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3166
  br label %if.end32, !dbg !3185

if.end32:                                         ; preds = %if.then25, %if.end21
  %code1.0.in = phi i32 [ %bf.load30, %if.then25 ], [ %bf.load9, %if.end21 ]
  %op1.0 = phi %struct.rtx_def* [ %10, %if.then25 ], [ %5, %if.end21 ], !dbg !3166
  %code1.0 = and i32 %code1.0.in, 65535, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op1.0, metadata !3145, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %code1.0, metadata !3143, metadata !DIExpression()), !dbg !3166
  %trunc2 = trunc i32 %code0.0.in to i16, !dbg !3186
  switch i16 %trunc2, label %lor.lhs.false39 [
    i16 52, label %if.then41
    i16 98, label %if.then41
    i16 100, label %if.then41
    i16 99, label %if.then41
  ], !dbg !3186

lor.lhs.false39:                                  ; preds = %if.end32
  %trunc4 = trunc i32 %code1.0.in to i16, !dbg !3187
  switch i16 %trunc4, label %lor.lhs.false59 [
    i16 43, label %if.then41
    i16 52, label %if.then61
    i16 98, label %if.then61
    i16 100, label %if.then61
    i16 99, label %if.then61
  ], !dbg !3187

if.then41:                                        ; preds = %lor.lhs.false39, %if.end32, %if.end32, %if.end32, %if.end32
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3146, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx6, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear12, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3188

lor.lhs.false59:                                  ; preds = %lor.lhs.false39
  switch i16 %trunc2, label %if.else91 [
    i16 43, label %if.then61
    i16 30, label %if.then80
    i16 35, label %if.then80
    i16 45, label %if.then80
    i16 44, label %if.then80
  ], !dbg !3190

if.then61:                                        ; preds = %lor.lhs.false59, %lor.lhs.false39, %lor.lhs.false39, %lor.lhs.false39, %lor.lhs.false39
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx6, metadata !3146, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear23, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3191

if.then80:                                        ; preds = %lor.lhs.false59, %lor.lhs.false59, %lor.lhs.false59, %lor.lhs.false59
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx6, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear12, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3193

if.else91:                                        ; preds = %lor.lhs.false59
  switch i16 %trunc4, label %if.else110 [
    i16 30, label %if.then99
    i16 35, label %if.then99
    i16 45, label %if.then99
    i16 44, label %if.then99
  ], !dbg !3195

if.then99:                                        ; preds = %if.else91, %if.else91, %if.else91, %if.else91
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear23, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3196

if.else110:                                       ; preds = %if.else91
  %cmp111 = icmp eq i32 %code0.0, 37, !dbg !3198
  %cmp112 = icmp eq i32 %code1.0, 37, !dbg !3199
  %or.cond = and i1 %cmp111, %cmp112, !dbg !3200
  br i1 %or.cond, label %if.then113, label %if.else212, !dbg !3200

if.then113:                                       ; preds = %if.else110
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op0.0) #7, !dbg !3201
  call void @llvm.dbg.value(metadata i32 %call, metadata !3156, metadata !DIExpression()), !dbg !3202
  %call114 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op1.0) #7, !dbg !3203
  call void @llvm.dbg.value(metadata i32 %call114, metadata !3157, metadata !DIExpression()), !dbg !3202
  %cmp115 = icmp ult i32 %call114, 7, !dbg !3204
  br i1 %cmp115, label %land.lhs.true132, label %lor.lhs.false116, !dbg !3204

lor.lhs.false116:                                 ; preds = %if.then113
  %conv = zext i32 %call114 to i64, !dbg !3204
  %sub = add nsw i64 %conv, -37, !dbg !3204
  %cmp117 = icmp ult i64 %sub, 8, !dbg !3204
  br i1 %cmp117, label %land.lhs.true132, label %lor.lhs.false119, !dbg !3204

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %12 = load i16*, i16** @reg_renumber, align 8, !dbg !3204
  %arrayidx120 = getelementptr inbounds i16, i16* %12, i64 %conv, !dbg !3204
  %13 = load i16, i16* %arrayidx120, align 2, !dbg !3204
  %cmp122 = icmp ult i16 %13, 7, !dbg !3204
  br i1 %cmp122, label %land.lhs.true132, label %lor.lhs.false124, !dbg !3204

lor.lhs.false124:                                 ; preds = %lor.lhs.false119
  %conv127 = sext i16 %13 to i64, !dbg !3204
  %conv128 = and i64 %conv127, 4294967295, !dbg !3204
  %sub129 = add nsw i64 %conv128, -37, !dbg !3204
  %cmp130 = icmp ult i64 %sub129, 8, !dbg !3204
  br i1 %cmp130, label %land.lhs.true132, label %if.else136, !dbg !3206

land.lhs.true132:                                 ; preds = %lor.lhs.false124, %lor.lhs.false119, %lor.lhs.false116, %if.then113
  %call133 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call, i32 %mode, i32 49, i32 37) #7, !dbg !3207
  %tobool = icmp eq i8 %call133, 0, !dbg !3207
  br i1 %tobool, label %if.else136, label %if.end198, !dbg !3208

if.else136:                                       ; preds = %land.lhs.true132, %lor.lhs.false124
  %cmp137 = icmp ult i32 %call, 7, !dbg !3209
  br i1 %cmp137, label %land.lhs.true158, label %lor.lhs.false139, !dbg !3209

lor.lhs.false139:                                 ; preds = %if.else136
  %conv140 = zext i32 %call to i64, !dbg !3209
  %sub141 = add nsw i64 %conv140, -37, !dbg !3209
  %cmp142 = icmp ult i64 %sub141, 8, !dbg !3209
  br i1 %cmp142, label %land.lhs.true158, label %lor.lhs.false144, !dbg !3209

lor.lhs.false144:                                 ; preds = %lor.lhs.false139
  %14 = load i16*, i16** @reg_renumber, align 8, !dbg !3209
  %arrayidx146 = getelementptr inbounds i16, i16* %14, i64 %conv140, !dbg !3209
  %15 = load i16, i16* %arrayidx146, align 2, !dbg !3209
  %cmp148 = icmp ult i16 %15, 7, !dbg !3209
  br i1 %cmp148, label %land.lhs.true158, label %lor.lhs.false150, !dbg !3209

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %conv153 = sext i16 %15 to i64, !dbg !3209
  %conv154 = and i64 %conv153, 4294967295, !dbg !3209
  %sub155 = add nsw i64 %conv154, -37, !dbg !3209
  %cmp156 = icmp ult i64 %sub155, 8, !dbg !3209
  br i1 %cmp156, label %land.lhs.true158, label %if.else163, !dbg !3211

land.lhs.true158:                                 ; preds = %lor.lhs.false150, %lor.lhs.false144, %lor.lhs.false139, %if.else136
  %call159 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call114, i32 %mode, i32 49, i32 37) #7, !dbg !3212
  %tobool161 = icmp eq i8 %call159, 0, !dbg !3212
  br i1 %tobool161, label %if.else163, label %if.end198, !dbg !3213

if.else163:                                       ; preds = %land.lhs.true158, %lor.lhs.false150
  %call164 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call, i32 %mode, i32 49, i32 37) #7, !dbg !3214
  %tobool166 = icmp ne i8 %call164, 0, !dbg !3214
  %or.cond1 = or i1 %tobool166, %cmp115, !dbg !3216
  br i1 %or.cond1, label %if.end198, label %lor.lhs.false170, !dbg !3216

lor.lhs.false170:                                 ; preds = %if.else163
  %conv171 = zext i32 %call114 to i64, !dbg !3217
  %sub172 = add nsw i64 %conv171, -37, !dbg !3217
  %cmp173 = icmp ult i64 %sub172, 8, !dbg !3217
  br i1 %cmp173, label %if.end198, label %lor.lhs.false175, !dbg !3217

lor.lhs.false175:                                 ; preds = %lor.lhs.false170
  %16 = load i16*, i16** @reg_renumber, align 8, !dbg !3217
  %arrayidx177 = getelementptr inbounds i16, i16* %16, i64 %conv171, !dbg !3217
  %17 = load i16, i16* %arrayidx177, align 2, !dbg !3217
  %cmp179 = icmp ult i16 %17, 7, !dbg !3217
  br i1 %cmp179, label %if.end198, label %lor.lhs.false181, !dbg !3217

lor.lhs.false181:                                 ; preds = %lor.lhs.false175
  %conv184 = sext i16 %17 to i64, !dbg !3217
  %conv185 = and i64 %conv184, 4294967295, !dbg !3217
  %sub186 = add nsw i64 %conv185, -37, !dbg !3217
  %cmp187 = icmp ult i64 %sub186, 8, !dbg !3217
  br i1 %cmp187, label %if.end198, label %if.else190, !dbg !3218

if.else190:                                       ; preds = %lor.lhs.false181
  %call191 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call114, i32 %mode, i32 49, i32 37) #7, !dbg !3219
  %tobool192 = icmp eq i8 %call191, 0, !dbg !3219
  %. = zext i1 %tobool192 to i32
  call void @llvm.dbg.value(metadata i32 %., metadata !3149, metadata !DIExpression()), !dbg !3202
  br label %if.end198

if.end198:                                        ; preds = %land.lhs.true132, %land.lhs.true158, %if.else163, %lor.lhs.false170, %lor.lhs.false175, %lor.lhs.false181, %if.else190
  %index_op.3 = phi i32 [ 1, %land.lhs.true132 ], [ 0, %land.lhs.true158 ], [ %., %if.else190 ], [ 1, %lor.lhs.false181 ], [ 1, %lor.lhs.false175 ], [ 1, %lor.lhs.false170 ], [ 1, %if.else163 ], !dbg !3221
  call void @llvm.dbg.value(metadata i32 %index_op.3, metadata !3149, metadata !DIExpression()), !dbg !3202
  %u199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, !dbg !3222
  %fld200 = bitcast %union.u* %u199 to [1 x %union.rtunion_def]*, !dbg !3222
  %idxprom201 = zext i32 %index_op.3 to i64, !dbg !3222
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i64 0, i64 %idxprom201, !dbg !3222
  %rt_rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx203, metadata !3146, metadata !DIExpression()), !dbg !3166
  %18 = xor i32 %index_op.3, 1, !dbg !3223
  %idxprom207 = zext i32 %18 to i64, !dbg !3223
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i64 0, i64 %idxprom207, !dbg !3223
  %rt_rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx209, metadata !3147, metadata !DIExpression()), !dbg !3166
  %19 = bitcast %union.rtunion_def* %arrayidx202 to i32**, !dbg !3224
  %20 = load i32*, i32** %19, align 8, !dbg !3224
  %bf.load210 = load i32, i32* %20, align 8, !dbg !3224
  %bf.clear211 = and i32 %bf.load210, 65535, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %bf.clear211, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3225

if.else212:                                       ; preds = %if.else110
  br i1 %cmp111, label %if.then215, label %if.else226, !dbg !3226

if.then215:                                       ; preds = %if.else212
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3146, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx6, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear12, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3227

if.else226:                                       ; preds = %if.else212
  br i1 %cmp112, label %if.then229, label %if.end246, !dbg !3230

if.then229:                                       ; preds = %if.else226
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx6, metadata !3146, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %bf.clear23, metadata !3148, metadata !DIExpression()), !dbg !3166
  br label %if.end246, !dbg !3231

if.end246:                                        ; preds = %if.then61, %if.then99, %if.then215, %if.then229, %if.else226, %if.end198, %if.then80, %if.then41
  %locI.6 = phi %struct.rtx_def** [ %rt_rtx, %if.then41 ], [ %rt_rtx6, %if.then61 ], [ null, %if.then80 ], [ null, %if.then99 ], [ %rt_rtx203, %if.end198 ], [ %rt_rtx, %if.then215 ], [ %rt_rtx6, %if.then229 ], [ null, %if.else226 ], !dbg !3234
  %locB.6 = phi %struct.rtx_def** [ %rt_rtx6, %if.then41 ], [ %rt_rtx, %if.then61 ], [ %rt_rtx6, %if.then80 ], [ %rt_rtx, %if.then99 ], [ %rt_rtx209, %if.end198 ], [ %rt_rtx6, %if.then215 ], [ %rt_rtx, %if.then229 ], [ null, %if.else226 ], !dbg !3234
  %index_code.6 = phi i32 [ %bf.clear12, %if.then41 ], [ %bf.clear23, %if.then61 ], [ %bf.clear12, %if.then80 ], [ %bf.clear23, %if.then99 ], [ %bf.clear211, %if.end198 ], [ %bf.clear12, %if.then215 ], [ %bf.clear23, %if.then229 ], [ 38, %if.else226 ], !dbg !3234
  call void @llvm.dbg.value(metadata i32 %index_code.6, metadata !3148, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %locB.6, metadata !3147, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.rtx_def** %locI.6, metadata !3146, metadata !DIExpression()), !dbg !3166
  %tobool247 = icmp eq %struct.rtx_def** %locI.6, null, !dbg !3235
  br i1 %tobool247, label %if.end253, label %if.then248, !dbg !3237

if.then248:                                       ; preds = %if.end246
  %call249 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %locI.6, i32 11, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3238
  call void @llvm.dbg.value(metadata i8 %call249, metadata !3137, metadata !DIExpression()), !dbg !3158
  br label %if.end253, !dbg !3239

if.end253:                                        ; preds = %if.end246, %if.then248
  %changed.0 = phi i8 [ %call249, %if.then248 ], [ 0, %if.end246 ], !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !3137, metadata !DIExpression()), !dbg !3158
  %tobool254 = icmp eq %struct.rtx_def** %locB.6, null, !dbg !3240
  br i1 %tobool254, label %cleanup, label %if.then255, !dbg !3242

if.then255:                                       ; preds = %if.end253
  %call256 = tail call fastcc i32 @base_reg_class(i32 %mode, i32 49, i32 %index_code.6) #7, !dbg !3243
  %call257 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %locB.6, i32 13, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3244
  %or2603 = or i8 %changed.0, %call257, !dbg !3245
  call void @llvm.dbg.value(metadata i8 %or2603, metadata !3137, metadata !DIExpression()), !dbg !3158
  ret i8 %or2603, !dbg !3246

sw.bb264:                                         ; preds = %entry
  %call265 = tail call fastcc zeroext i8 @replace_oldest_value_mem(%struct.rtx_def* %0, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3247
  br label %cleanup, !dbg !3248

sw.bb266:                                         ; preds = %entry
  %call267 = tail call fastcc zeroext i8 @replace_oldest_value_reg(%struct.rtx_def** %loc, i32 %cl, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3249
  br label %cleanup, !dbg !3250

sw.epilog:                                        ; preds = %entry, %sw.bb
  %idxprom268 = zext i32 %bf.clear to i64, !dbg !3251
  %arrayidx269 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom268, !dbg !3251
  %21 = load i8*, i8** %arrayidx269, align 8, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %21, metadata !3134, metadata !DIExpression()), !dbg !3158
  %arrayidx271 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom268, !dbg !3252
  %22 = load i8, i8* %arrayidx271, align 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8 %22, metadata !3135, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  %u299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, !dbg !3254
  %fld300 = bitcast %union.u* %u299 to [1 x %union.rtunion_def]*, !dbg !3254
  %23 = zext i8 %22 to i64, !dbg !3260
  br label %for.cond, !dbg !3260

for.cond:                                         ; preds = %for.inc322, %sw.epilog
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc322 ], [ %23, %sw.epilog ], !dbg !3158
  %changed.2 = phi i8 [ %changed.5, %for.inc322 ], [ 0, %sw.epilog ], !dbg !3158
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, -1, !dbg !3261
  call void @llvm.dbg.value(metadata i32 undef, metadata !3135, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !3137, metadata !DIExpression()), !dbg !3158
  %cmp274 = icmp sgt i64 %indvars.iv9, 0, !dbg !3262
  br i1 %cmp274, label %for.body, label %cleanup.loopexit, !dbg !3263

for.body:                                         ; preds = %for.cond
  %arrayidx277 = getelementptr inbounds i8, i8* %21, i64 %indvars.iv.next10, !dbg !3264
  %24 = load i8, i8* %arrayidx277, align 1, !dbg !3264
  %cmp279 = icmp eq i8 %24, 101, !dbg !3265
  br i1 %cmp279, label %if.then281, label %if.else292, !dbg !3266

if.then281:                                       ; preds = %for.body
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i64 0, i64 %indvars.iv.next10, !dbg !3267
  %rt_rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**, !dbg !3267
  %call287 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %rt_rtx286, i32 %cl, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3268
  %or2908 = or i8 %changed.2, %call287, !dbg !3269
  call void @llvm.dbg.value(metadata i8 %or2908, metadata !3137, metadata !DIExpression()), !dbg !3158
  br label %for.inc322, !dbg !3270

if.else292:                                       ; preds = %for.body
  %cmp296 = icmp eq i8 %24, 69, !dbg !3271
  br i1 %cmp296, label %if.then298, label %for.inc322, !dbg !3272

if.then298:                                       ; preds = %if.else292
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i64 0, i64 %indvars.iv.next10, !dbg !3273
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtvec_def**, !dbg !3273
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3273
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i64 0, i32 0, !dbg !3273
  %26 = load i32, i32* %num_elem, align 8, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %26, metadata !3136, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  %27 = sext i32 %26 to i64, !dbg !3274
  br label %for.cond304, !dbg !3274

for.cond304:                                      ; preds = %for.body307, %if.then298
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body307 ], [ %27, %if.then298 ], !dbg !3158
  %changed.3 = phi i8 [ %or3187, %for.body307 ], [ %changed.2, %if.then298 ], !dbg !3158
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 undef, metadata !3136, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.3, metadata !3137, metadata !DIExpression()), !dbg !3158
  %cmp305 = icmp sgt i64 %indvars.iv, 0, !dbg !3275
  br i1 %cmp305, label %for.body307, label %for.inc322.loopexit, !dbg !3277

for.body307:                                      ; preds = %for.cond304
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3278
  %arrayidx314 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3278
  %call315 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %arrayidx314, i32 %cl, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3279
  %or3187 = or i8 %changed.3, %call315, !dbg !3280
  call void @llvm.dbg.value(metadata i8 %or3187, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 undef, metadata !3136, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  br label %for.cond304, !dbg !3281, !llvm.loop !3282

for.inc322.loopexit:                              ; preds = %for.cond304
  %changed.3.lcssa = phi i8 [ %changed.3, %for.cond304 ], !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  br label %for.inc322, !dbg !3284

for.inc322:                                       ; preds = %for.inc322.loopexit, %if.then281, %if.else292
  %changed.5 = phi i8 [ %or2908, %if.then281 ], [ %changed.2, %if.else292 ], [ %changed.3.lcssa, %for.inc322.loopexit ], !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.5, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 undef, metadata !3135, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3158
  br label %for.cond, !dbg !3284, !llvm.loop !3285

cleanup.loopexit:                                 ; preds = %for.cond
  %changed.2.lcssa = phi i8 [ %changed.2, %for.cond ], !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.2.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.2.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %changed.2.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3158
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %cleanup.loopexit, %if.end253, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb266, %sw.bb264
  %retval.0 = phi i8 [ %call267, %sw.bb266 ], [ %call265, %sw.bb264 ], [ %changed.0, %if.end253 ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ %changed.2.lcssa, %cleanup.loopexit ], !dbg !3158
  ret i8 %retval.0, !dbg !3246
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #2

declare dso_local void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @preprocess_constraints() local_unnamed_addr #2

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @note_uses(%struct.rtx_def**, void (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cprop_find_used_regs(%struct.rtx_def** %loc, i8* %vd) #5 !dbg !3287 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %vd, metadata !3292, metadata !DIExpression()), !dbg !3293
  %call = tail call i32 @for_each_rtx(%struct.rtx_def** %loc, i32 (%struct.rtx_def**, i8*)* nonnull @cprop_find_used_regs_1, i8* %vd) #6, !dbg !3294
  ret void, !dbg !3295
}

; Function Attrs: nounwind uwtable
define internal fastcc void @kill_value(%struct.rtx_def* %x, %struct.value_data* %vd) unnamed_addr #5 !dbg !3296 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3300, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3301, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3302, metadata !DIExpression()), !dbg !3307
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3308
  %bf.load = load i32, i32* %0, align 8, !dbg !3308
  %bf.clear = and i32 %bf.load, 65535, !dbg !3308
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3310
  br i1 %cmp, label %if.then, label %if.end19, !dbg !3311

if.then:                                          ; preds = %entry
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3312
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3312
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3314
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3314
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3314
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3315
  %bf.load7 = load i32, i32* %.cast, align 8, !dbg !3315
  %bf.lshr8 = lshr i32 %bf.load7, 16, !dbg !3315
  %bf.clear9 = and i32 %bf.lshr8, 255, !dbg !3315
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3316
  %rt_uint = bitcast %union.rtunion_def* %2 to i32*, !dbg !3316
  %3 = load i32, i32* %rt_uint, align 8, !dbg !3316
  %call = tail call %struct.rtx_def* @simplify_subreg(i32 %bf.clear2, %struct.rtx_def* %1, i32 %bf.clear9, i32 %3) #6, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3300, metadata !DIExpression()), !dbg !3307
  %cmp13 = icmp eq %struct.rtx_def* %call, null, !dbg !3318
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !3320

if.then14:                                        ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3321
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3300, metadata !DIExpression()), !dbg !3307
  br label %if.end19, !dbg !3322

if.end19:                                         ; preds = %if.then, %if.then14, %entry
  %x.addr.1 = phi %struct.rtx_def* [ %x, %entry ], [ %4, %if.then14 ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.1, metadata !3300, metadata !DIExpression()), !dbg !3307
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 0, !dbg !3323
  %bf.load20 = load i32, i32* %5, align 8, !dbg !3323
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !3323
  %cmp22 = icmp eq i32 %bf.clear21, 37, !dbg !3323
  br i1 %cmp22, label %if.then23, label %if.end31, !dbg !3324

if.then23:                                        ; preds = %if.end19
  %call24 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.1) #7, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3303, metadata !DIExpression()), !dbg !3326
  %idxprom = zext i32 %call24 to i64, !dbg !3327
  %bf.load26 = load i32, i32* %5, align 8, !dbg !3328
  %bf.lshr27 = lshr i32 %bf.load26, 16, !dbg !3328
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !3328
  %idxprom29 = zext i32 %bf.clear28 to i64, !dbg !3327
  %arrayidx30 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom29, !dbg !3327
  %6 = load i8, i8* %arrayidx30, align 1, !dbg !3327
  %conv = zext i8 %6 to i32, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3306, metadata !DIExpression()), !dbg !3326
  tail call fastcc void @kill_value_regno(i32 %call24, i32 %conv, %struct.value_data* %vd) #7, !dbg !3329
  br label %if.end31, !dbg !3330

if.end31:                                         ; preds = %if.then23, %if.end19
  ret void, !dbg !3331
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @kill_clobbered_value(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #5 !dbg !3332 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3339, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3340, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %data, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %data, metadata !3342, metadata !DIExpression()), !dbg !3344
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 0, !dbg !3345
  %bf.load = load i32, i32* %0, align 8, !dbg !3345
  %bf.clear = and i32 %bf.load, 65535, !dbg !3345
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !3347
  br i1 %cmp, label %if.then, label %if.end, !dbg !3348

if.then:                                          ; preds = %entry
  %1 = bitcast i8* %data to %struct.value_data*, !dbg !3349
  call void @llvm.dbg.value(metadata %struct.value_data* %1, metadata !3342, metadata !DIExpression()), !dbg !3344
  tail call fastcc void @kill_value(%struct.rtx_def* %x, %struct.value_data* %1) #7, !dbg !3350
  br label %if.end, !dbg !3350

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3351
}

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @kill_autoinc_value(%struct.rtx_def** %px, i8* %data) #5 !dbg !3352 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !3356, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %data, metadata !3357, metadata !DIExpression()), !dbg !3360
  %0 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3358, metadata !DIExpression()), !dbg !3360
  %1 = bitcast i8* %data to %struct.value_data*, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.value_data* %1, metadata !3359, metadata !DIExpression()), !dbg !3360
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3363
  %bf.load = load i32, i32* %2, align 8, !dbg !3363
  %bf.clear = and i32 %bf.load, 65535, !dbg !3363
  %idxprom = zext i32 %bf.clear to i64, !dbg !3363
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3363
  %3 = load i32, i32* %arrayidx, align 4, !dbg !3363
  %cmp = icmp eq i32 %3, 12, !dbg !3365
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3366

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3367
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**, !dbg !3367
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3358, metadata !DIExpression()), !dbg !3360
  tail call fastcc void @kill_value(%struct.rtx_def* %4, %struct.value_data* %1) #7, !dbg !3369
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !3370
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !3371
  %bf.load2 = load i32, i32* %5, align 8, !dbg !3371
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !3371
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3371
  tail call fastcc void @set_value_regno(i32 %call, i32 %bf.clear3, %struct.value_data* %1) #7, !dbg !3372
  br label %cleanup, !dbg !3373

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !3360
  ret i32 %retval.0, !dbg !3374
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3375 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3379, metadata !DIExpression()), !dbg !3380
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3381
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3381
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3381
  ret i32 %0, !dbg !3382
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @find_oldest_value_reg(i32 %cl, %struct.rtx_def* %reg, %struct.value_data* %vd) unnamed_addr #5 !dbg !3383 {
entry:
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3387, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3388, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3389, metadata !DIExpression()), !dbg !3398
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %call, metadata !3390, metadata !DIExpression()), !dbg !3398
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !3400
  %bf.load = load i32, i32* %0, align 8, !dbg !3400
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3400
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3391, metadata !DIExpression()), !dbg !3398
  %idxprom = zext i32 %call to i64, !dbg !3401
  %mode1 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 0, !dbg !3403
  %1 = load i32, i32* %mode1, align 8, !dbg !3403
  %cmp = icmp eq i32 %bf.clear, %1, !dbg !3404
  br i1 %cmp, label %if.end18, label %if.then, !dbg !3405

if.then:                                          ; preds = %entry
  %idxprom4 = zext i32 %bf.clear to i64, !dbg !3406
  %arrayidx5 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom4, !dbg !3406
  %2 = load i8, i8* %arrayidx5, align 1, !dbg !3406
  %idxprom12 = zext i32 %1 to i64, !dbg !3409
  %arrayidx13 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom12, !dbg !3409
  %3 = load i8, i8* %arrayidx13, align 1, !dbg !3409
  %cmp15 = icmp ugt i8 %2, %3, !dbg !3410
  br i1 %cmp15, label %cleanup62, label %if.end18, !dbg !3411

if.end18:                                         ; preds = %entry, %if.then
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 1, !dbg !3412
  %idxprom28 = zext i32 %cl to i64, !dbg !3413
  %arrayidx29 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom28, !dbg !3413
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3415
  %rt_uint = bitcast %union.rtunion_def* %4 to i32*, !dbg !3415
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3415
  %6 = bitcast %union.rtunion_def* %5 to i64*, !dbg !3415
  br label %for.cond, !dbg !3418

for.cond:                                         ; preds = %for.inc, %if.end18
  %i.0.in = phi i32* [ %oldest_regno, %if.end18 ], [ %next_regno, %for.inc ]
  %retval.0 = phi %struct.rtx_def* [ undef, %if.end18 ], [ %retval.1, %for.inc ]
  %i.0 = load i32, i32* %i.0.in, align 4, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3392, metadata !DIExpression()), !dbg !3398
  %cmp22 = icmp eq i32 %i.0, %call, !dbg !3420
  br i1 %cmp22, label %cleanup62.loopexit, label %for.body, !dbg !3421

for.body:                                         ; preds = %for.cond
  %idxprom25 = zext i32 %i.0 to i64, !dbg !3422
  %mode27 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom25, i32 0, !dbg !3423
  %7 = load i32, i32* %mode27, align 8, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %7, metadata !3393, metadata !DIExpression()), !dbg !3424
  %8 = load i64, i64* %arrayidx29, align 8, !dbg !3425
  %call30 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 %8, i32 %bf.clear, i32 %i.0) #7, !dbg !3426
  %tobool = icmp eq i8 %call30, 0, !dbg !3426
  br i1 %tobool, label %cleanup, label %if.end32, !dbg !3427

if.end32:                                         ; preds = %for.body
  %9 = load i32, i32* %mode1, align 8, !dbg !3428
  %call37 = tail call fastcc %struct.rtx_def* @maybe_mode_change(i32 %7, i32 %9, i32 %bf.clear, i32 %i.0, i32 %call) #7, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call37, metadata !3397, metadata !DIExpression()), !dbg !3424
  %tobool38 = icmp eq %struct.rtx_def* %call37, null, !dbg !3430
  br i1 %tobool38, label %cleanup, label %if.then39, !dbg !3431

if.then39:                                        ; preds = %if.end32
  %10 = load i32, i32* %rt_uint, align 8, !dbg !3432
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3433
  %rt_uint44 = bitcast %union.rtunion_def* %11 to i32*, !dbg !3433
  store i32 %10, i32* %rt_uint44, align 8, !dbg !3434
  %12 = load i64, i64* %6, align 8, !dbg !3435
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3436
  %14 = bitcast %union.rtunion_def* %13 to i64*, !dbg !3437
  store i64 %12, i64* %14, align 8, !dbg !3437
  %bf.load52 = load i32, i32* %0, align 8, !dbg !3438
  %bf.clear54 = and i32 %bf.load52, 1073741824, !dbg !3438
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 0, !dbg !3439
  %bf.load55 = load i32, i32* %15, align 8, !dbg !3440
  %bf.clear56 = and i32 %bf.load55, -1073741825, !dbg !3440
  %bf.set = or i32 %bf.clear56, %bf.clear54, !dbg !3440
  store i32 %bf.set, i32* %15, align 8, !dbg !3440
  br label %cleanup, !dbg !3441

cleanup:                                          ; preds = %if.end32, %for.body, %if.then39
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then39 ], [ false, %for.body ], [ true, %if.end32 ]
  %retval.1 = phi %struct.rtx_def* [ %call37, %if.then39 ], [ null, %for.body ], [ %retval.0, %if.end32 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup62.loopexit

for.inc:                                          ; preds = %cleanup
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom25, i32 2, !dbg !3442
  br label %for.cond, !dbg !3443, !llvm.loop !3444

cleanup62.loopexit:                               ; preds = %cleanup, %for.cond
  %retval.2.ph = phi %struct.rtx_def* [ null, %for.cond ], [ %retval.1, %cleanup ]
  br label %cleanup62, !dbg !3446

cleanup62:                                        ; preds = %cleanup62.loopexit, %if.then
  %retval.2 = phi %struct.rtx_def* [ null, %if.then ], [ %retval.2.ph, %cleanup62.loopexit ], !dbg !3398
  ret %struct.rtx_def* %retval.2, !dbg !3446
}

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @maybe_mode_change(i32 %orig_mode, i32 %copy_mode, i32 %new_mode, i32 %regno, i32 %copy_regno) unnamed_addr #5 !dbg !3447 {
entry:
  call void @llvm.dbg.value(metadata i32 %orig_mode, metadata !3451, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %copy_mode, metadata !3452, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %new_mode, metadata !3453, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3454, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %copy_regno, metadata !3455, metadata !DIExpression()), !dbg !3465
  %idxprom = zext i32 %copy_mode to i64, !dbg !3466
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3466
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3466
  %idxprom2 = zext i32 %orig_mode to i64, !dbg !3468
  %arrayidx3 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom2, !dbg !3468
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !3468
  %cmp = icmp ult i8 %0, %1, !dbg !3469
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3470

land.lhs.true:                                    ; preds = %entry
  %idxprom11 = zext i32 %new_mode to i64, !dbg !3471
  %arrayidx12 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom11, !dbg !3471
  %2 = load i8, i8* %arrayidx12, align 1, !dbg !3471
  %cmp15 = icmp ult i8 %0, %2, !dbg !3472
  br i1 %cmp15, label %return, label %if.end, !dbg !3473

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp17 = icmp eq i32 %orig_mode, %new_mode, !dbg !3474
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !3475

if.then19:                                        ; preds = %if.end
  %call = tail call %struct.rtx_def* @gen_rtx_fmt_i00_stat(i32 37, i32 %orig_mode, i32 %regno) #6, !dbg !3476
  br label %return, !dbg !3477

if.else:                                          ; preds = %if.end
  %call20 = tail call fastcc zeroext i8 @mode_change_ok(i32 %orig_mode, i32 %new_mode, i32 %regno) #7, !dbg !3478
  %tobool = icmp eq i8 %call20, 0, !dbg !3478
  br i1 %tobool, label %return, label %if.then21, !dbg !3479

if.then21:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3464, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3480
  %call47 = tail call i32 @subreg_regno_offset(i32 %regno, i32 %orig_mode, i32 0, i32 %new_mode) #6, !dbg !3481
  %add = add i32 %call47, %regno, !dbg !3481
  %call48 = tail call %struct.rtx_def* @gen_rtx_fmt_i00_stat(i32 37, i32 %new_mode, i32 %add) #6, !dbg !3481
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true, %if.then21, %if.then19
  %retval.0 = phi %struct.rtx_def* [ %call, %if.then19 ], [ %call48, %if.then21 ], [ null, %land.lhs.true ], [ null, %if.else ], !dbg !3465
  ret %struct.rtx_def* %retval.0, !dbg !3482
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @replace_oldest_value_reg(%struct.rtx_def** %loc, i32 %cl, %struct.rtx_def* %insn, %struct.value_data* %vd) unnamed_addr #5 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3487, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3488, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3489, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3490, metadata !DIExpression()), !dbg !3497
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3498
  %call = tail call fastcc %struct.rtx_def* @find_oldest_value_reg(i32 %cl, %struct.rtx_def* %0, %struct.value_data* %vd) #7, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3491, metadata !DIExpression()), !dbg !3497
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3500
  br i1 %tobool, label %cleanup, label %if.then, !dbg !3501

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3502
  %bf.load = load i32, i32* %1, align 8, !dbg !3502
  %bf.clear = and i32 %bf.load, 65535, !dbg !3502
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !3502
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3503
  %tobool2 = icmp ne %struct._IO_FILE* %2, null, !dbg !3503
  br i1 %cmp, label %if.then1, label %if.end18, !dbg !3504

if.then1:                                         ; preds = %if.then
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3505

if.then3:                                         ; preds = %if.then1
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3506
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3506
  %3 = load i32, i32* %rt_int, align 8, !dbg !3506
  %4 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3508
  %call4 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !3508
  %call5 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call) #7, !dbg !3509
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %3, i32 %call4, i32 %call5) #6, !dbg !3510
  br label %if.end, !dbg !3510

if.end:                                           ; preds = %if.then3, %if.then1
  %5 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @debug_insn_changes_pool, align 8, !dbg !3511
  %call7 = tail call i8* @pool_alloc(%struct.alloc_pool_def* %5) #6, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %call7, metadata !3492, metadata !DIExpression()), !dbg !3513
  %call8 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call) #7, !dbg !3514
  %idxprom = zext i32 %call8 to i64, !dbg !3515
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 3, !dbg !3516
  %6 = bitcast %struct.queued_debug_insn_change** %debug_insn_changes to i64*, !dbg !3516
  %7 = load i64, i64* %6, align 8, !dbg !3516
  %8 = bitcast i8* %call7 to i64*, !dbg !3517
  store i64 %7, i64* %8, align 8, !dbg !3517
  %insn10 = getelementptr inbounds i8, i8* %call7, i64 8, !dbg !3518
  %9 = bitcast i8* %insn10 to %struct.rtx_def**, !dbg !3518
  store %struct.rtx_def* %insn, %struct.rtx_def** %9, align 8, !dbg !3519
  %loc11 = getelementptr inbounds i8, i8* %call7, i64 16, !dbg !3520
  %10 = bitcast i8* %loc11 to %struct.rtx_def***, !dbg !3520
  store %struct.rtx_def** %loc, %struct.rtx_def*** %10, align 8, !dbg !3521
  %new_rtx12 = getelementptr inbounds i8, i8* %call7, i64 24, !dbg !3522
  %11 = bitcast i8* %new_rtx12 to %struct.rtx_def**, !dbg !3522
  store %struct.rtx_def* %call, %struct.rtx_def** %11, align 8, !dbg !3523
  %call14 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call) #7, !dbg !3524
  %idxprom15 = zext i32 %call14 to i64, !dbg !3525
  %debug_insn_changes17 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom15, i32 3, !dbg !3526
  %12 = bitcast %struct.queued_debug_insn_change** %debug_insn_changes17 to i8**, !dbg !3527
  store i8* %call7, i8** %12, align 8, !dbg !3527
  %n_debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 2, !dbg !3528
  %13 = load i32, i32* %n_debug_insn_changes, align 4, !dbg !3529
  %inc = add i32 %13, 1, !dbg !3529
  store i32 %inc, i32* %n_debug_insn_changes, align 4, !dbg !3529
  br label %cleanup

if.end18:                                         ; preds = %if.then
  br i1 %tobool2, label %if.then20, label %if.end28, !dbg !3530

if.then20:                                        ; preds = %if.end18
  %arrayidx23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3531
  %rt_int24 = bitcast %union.rtunion_def* %arrayidx23 to i32*, !dbg !3531
  %14 = load i32, i32* %rt_int24, align 8, !dbg !3531
  %15 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3533
  %call25 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %15) #7, !dbg !3533
  %call26 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call) #7, !dbg !3534
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %14, i32 %call25, i32 %call26) #6, !dbg !3535
  br label %if.end28, !dbg !3535

if.end28:                                         ; preds = %if.then20, %if.end18
  %call29 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** %loc, %struct.rtx_def* nonnull %call, i8 zeroext 1) #6, !dbg !3536
  br label %cleanup, !dbg !3537

cleanup:                                          ; preds = %entry, %if.end28, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 1, %if.end28 ], [ 0, %entry ], !dbg !3497
  ret i8 %retval.0, !dbg !3538
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @replace_oldest_value_mem(%struct.rtx_def* %x, %struct.rtx_def* %insn, %struct.value_data* %vd) unnamed_addr #5 !dbg !3539 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3545, metadata !DIExpression()), !dbg !3547
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3548
  %bf.load = load i32, i32* %0, align 8, !dbg !3548
  %bf.clear = and i32 %bf.load, 65535, !dbg !3548
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !3548
  br i1 %cmp, label %if.end, label %if.else, !dbg !3550

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3551
  %bf.load1 = load i32, i32* %1, align 8, !dbg !3551
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !3551
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3551
  %call = tail call fastcc i32 @base_reg_class(i32 %bf.clear2, i32 43, i32 38) #7, !dbg !3552
  call void @llvm.dbg.value(metadata i32 13, metadata !3546, metadata !DIExpression()), !dbg !3547
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %cl.0 = phi i32 [ 13, %if.else ], [ 26, %entry ], !dbg !3553
  call void @llvm.dbg.value(metadata i32 %cl.0, metadata !3546, metadata !DIExpression()), !dbg !3547
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3554
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3554
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3555
  %bf.load3 = load i32, i32* %2, align 8, !dbg !3555
  %bf.lshr4 = lshr i32 %bf.load3, 16, !dbg !3555
  %bf.clear5 = and i32 %bf.lshr4, 255, !dbg !3555
  %call6 = tail call fastcc zeroext i8 @replace_oldest_value_addr(%struct.rtx_def** nonnull %rt_rtx, i32 %cl.0, i32 %bf.clear5, %struct.rtx_def* %insn, %struct.value_data* %vd) #7, !dbg !3556
  ret i8 %call6, !dbg !3557
}

declare dso_local zeroext i8 @validate_unshare_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @kill_value_regno(i32 %regno, i32 %nregs, %struct.value_data* %vd) unnamed_addr #5 !dbg !3558 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3562, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 %nregs, metadata !3563, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3564, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 0, metadata !3565, metadata !DIExpression()), !dbg !3571
  br label %for.cond, !dbg !3572

for.cond:                                         ; preds = %for.body, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3574
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3565, metadata !DIExpression()), !dbg !3571
  %exitcond1 = icmp eq i32 %j.0, %nregs, !dbg !3575
  br i1 %exitcond1, label %for.end, label %for.body, !dbg !3577

for.body:                                         ; preds = %for.cond
  %add = add i32 %j.0, %regno, !dbg !3578
  tail call fastcc void @kill_value_one_regno(i32 %add, %struct.value_data* %vd) #7, !dbg !3579
  %inc = add i32 %j.0, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3565, metadata !DIExpression()), !dbg !3571
  br label %for.cond, !dbg !3581, !llvm.loop !3582

for.end:                                          ; preds = %for.cond
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 1, !dbg !3584
  %0 = load i32, i32* %max_value_regs, align 8, !dbg !3584
  %cmp1 = icmp ugt i32 %0, %regno, !dbg !3586
  br i1 %cmp1, label %if.end, label %if.else, !dbg !3587

if.else:                                          ; preds = %for.end
  %sub = sub i32 %regno, %0, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3565, metadata !DIExpression()), !dbg !3571
  %phitmp = zext i32 %sub to i64
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  %j.1 = phi i64 [ %phitmp, %if.else ], [ 0, %for.end ]
  %1 = zext i32 %regno to i64, !dbg !3589
  br label %for.cond3, !dbg !3589

for.cond3:                                        ; preds = %cleanup, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ %j.1, %if.end ], !dbg !3571
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3565, metadata !DIExpression()), !dbg !3571
  %cmp4 = icmp ult i64 %indvars.iv, %1, !dbg !3590
  br i1 %cmp4, label %for.body5, label %for.end33, !dbg !3591

for.body5:                                        ; preds = %for.cond3
  %mode = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !3592
  %2 = load i32, i32* %mode, align 8, !dbg !3592
  %cmp6 = icmp eq i32 %2, 0, !dbg !3594
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !3595

if.end8:                                          ; preds = %for.body5
  %idxprom15 = zext i32 %2 to i64, !dbg !3596
  %arrayidx16 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv, i64 %idxprom15, !dbg !3596
  %3 = load i8, i8* %arrayidx16, align 1, !dbg !3596
  %conv = zext i8 %3 to i32, !dbg !3596
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3570, metadata !DIExpression()), !dbg !3597
  %4 = trunc i64 %indvars.iv to i32, !dbg !3598
  %add17 = add i32 %4, %conv, !dbg !3598
  %cmp18 = icmp ugt i32 %add17, %regno, !dbg !3600
  br i1 %cmp18, label %for.cond21.preheader, label %cleanup, !dbg !3601

for.cond21.preheader:                             ; preds = %if.end8
  br label %for.cond21, !dbg !3602

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body24
  %i.0 = phi i32 [ %inc27, %for.body24 ], [ 0, %for.cond21.preheader ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3566, metadata !DIExpression()), !dbg !3597
  %exitcond = icmp eq i32 %i.0, %conv, !dbg !3605
  br i1 %exitcond, label %cleanup.loopexit, label %for.body24, !dbg !3602

for.body24:                                       ; preds = %for.cond21
  %5 = trunc i64 %indvars.iv to i32, !dbg !3607
  %add25 = add i32 %i.0, %5, !dbg !3607
  tail call fastcc void @kill_value_one_regno(i32 %add25, %struct.value_data* %vd) #7, !dbg !3608
  %inc27 = add nuw nsw i32 %i.0, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i32 %inc27, metadata !3566, metadata !DIExpression()), !dbg !3597
  br label %for.cond21, !dbg !3610, !llvm.loop !3611

cleanup.loopexit:                                 ; preds = %for.cond21
  br label %cleanup, !dbg !3613

cleanup:                                          ; preds = %cleanup.loopexit, %if.end8, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3613
  br label %for.cond3, !dbg !3614, !llvm.loop !3615

for.end33:                                        ; preds = %for.cond3
  ret void, !dbg !3617
}

; Function Attrs: nounwind uwtable
define internal void @kill_set_value(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #5 !dbg !3618 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8* %data, metadata !3622, metadata !DIExpression()), !dbg !3624
  %0 = bitcast i8* %data to %struct.value_data*, !dbg !3625
  call void @llvm.dbg.value(metadata %struct.value_data* %0, metadata !3623, metadata !DIExpression()), !dbg !3624
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 0, !dbg !3626
  %bf.load = load i32, i32* %1, align 8, !dbg !3626
  %bf.clear = and i32 %bf.load, 65535, !dbg !3626
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !3628
  br i1 %cmp, label %if.end7, label %if.then, !dbg !3629

if.then:                                          ; preds = %entry
  tail call fastcc void @kill_value(%struct.rtx_def* %x, %struct.value_data* %0) #7, !dbg !3630
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3632
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3632
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3632
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3632
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !3634

if.then4:                                         ; preds = %if.then
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !3635
  %bf.load5 = load i32, i32* %2, align 8, !dbg !3636
  %bf.lshr = lshr i32 %bf.load5, 16, !dbg !3636
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !3636
  tail call fastcc void @set_value_regno(i32 %call, i32 %bf.clear6, %struct.value_data* %0) #7, !dbg !3637
  br label %if.end7, !dbg !3637

if.end7:                                          ; preds = %entry, %if.then, %if.then4
  ret void, !dbg !3638
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_value(%struct.rtx_def* %dest, %struct.rtx_def* %src, %struct.value_data* %vd) unnamed_addr #5 !dbg !3639 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3643, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3644, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3645, metadata !DIExpression()), !dbg !3651
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3652
  call void @llvm.dbg.value(metadata i32 %call, metadata !3646, metadata !DIExpression()), !dbg !3651
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3647, metadata !DIExpression()), !dbg !3651
  %cmp = icmp eq i32 %call1, %call, !dbg !3654
  %cmp2 = icmp eq i32 %call, 7, !dbg !3656
  %or.cond3 = or i1 %cmp, %cmp2, !dbg !3658
  br i1 %or.cond3, label %cleanup.cont, label %if.end4, !dbg !3658

if.end4:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 41), align 1, !dbg !3659
  %tobool = icmp ne i8 %0, 0, !dbg !3659
  %cmp5 = icmp eq i32 %call, 6, !dbg !3661
  %or.cond = and i1 %tobool, %cmp5, !dbg !3662
  br i1 %or.cond, label %cleanup.cont, label %if.end8, !dbg !3662

if.end8:                                          ; preds = %if.end4
  %idxprom = zext i32 %call to i64, !dbg !3663
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %idxprom, !dbg !3663
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3663
  %tobool10 = icmp eq i8 %1, 0, !dbg !3663
  br i1 %tobool10, label %lor.lhs.false, label %cleanup.cont, !dbg !3665

lor.lhs.false:                                    ; preds = %if.end8
  %arrayidx12 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %idxprom, !dbg !3666
  %2 = load i8, i8* %arrayidx12, align 1, !dbg !3666
  %tobool14 = icmp eq i8 %2, 0, !dbg !3666
  br i1 %tobool14, label %if.end16, label %cleanup.cont, !dbg !3667

if.end16:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i8 undef, metadata !3648, metadata !DIExpression()), !dbg !3651
  %idxprom22 = zext i32 %call1 to i64, !dbg !3668
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3669
  %bf.load24 = load i32, i32* %3, align 8, !dbg !3669
  %bf.lshr25 = lshr i32 %bf.load24, 16, !dbg !3669
  %bf.clear26 = and i32 %bf.lshr25, 255, !dbg !3669
  %idxprom27 = zext i32 %bf.clear26 to i64, !dbg !3668
  %arrayidx28 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom22, i64 %idxprom27, !dbg !3668
  %4 = load i8, i8* %arrayidx28, align 1, !dbg !3668
  %conv29 = zext i8 %4 to i32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %conv29, metadata !3649, metadata !DIExpression()), !dbg !3651
  %cmp30 = icmp ugt i32 %call, %call1, !dbg !3670
  %add = add i32 %call1, %conv29, !dbg !3672
  %cmp33 = icmp ult i32 %call, %add, !dbg !3673
  %or.cond1 = and i1 %cmp30, %cmp33, !dbg !3674
  br i1 %or.cond1, label %cleanup.cont, label %lor.lhs.false35, !dbg !3674

lor.lhs.false35:                                  ; preds = %if.end16
  %arrayidx20 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom27, !dbg !3675
  %5 = load i8, i8* %arrayidx20, align 1, !dbg !3675
  call void @llvm.dbg.value(metadata i8 %5, metadata !3648, metadata !DIExpression()), !dbg !3651
  %conv21 = zext i8 %5 to i32, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %conv21, metadata !3648, metadata !DIExpression()), !dbg !3651
  %cmp36 = icmp ugt i32 %call1, %call, !dbg !3676
  %add39 = add i32 %call, %conv21, !dbg !3677
  %cmp40 = icmp ult i32 %call1, %add39, !dbg !3678
  %or.cond2 = and i1 %cmp36, %cmp40, !dbg !3679
  br i1 %or.cond2, label %cleanup.cont, label %if.end43, !dbg !3679

if.end43:                                         ; preds = %lor.lhs.false35
  %mode = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom22, i32 0, !dbg !3680
  %6 = load i32, i32* %mode, align 8, !dbg !3680
  %cmp46 = icmp eq i32 %6, 0, !dbg !3682
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !3683

if.then48:                                        ; preds = %if.end43
  %mode52 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 0, !dbg !3684
  %7 = load i32, i32* %mode52, align 8, !dbg !3684
  tail call fastcc void @set_value_regno(i32 %call1, i32 %7, %struct.value_data* %vd) #7, !dbg !3685
  br label %if.end91, !dbg !3685

if.else:                                          ; preds = %if.end43
  %idxprom83 = zext i32 %6 to i64, !dbg !3686
  %arrayidx84 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom22, i64 %idxprom83, !dbg !3686
  %8 = load i8, i8* %arrayidx84, align 1, !dbg !3686
  %cmp86 = icmp ugt i8 %4, %8, !dbg !3689
  br i1 %cmp86, label %cleanup.cont, label %if.end91, !dbg !3690

if.end91:                                         ; preds = %if.else, %if.then48
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom22, i32 1, !dbg !3691
  %9 = load i32, i32* %oldest_regno, align 4, !dbg !3691
  %oldest_regno98 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 1, !dbg !3692
  store i32 %9, i32* %oldest_regno98, align 4, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3650, metadata !DIExpression()), !dbg !3651
  br label %for.cond, !dbg !3694

for.cond:                                         ; preds = %for.inc, %if.end91
  %i.0 = phi i32 [ %call1, %if.end91 ], [ %10, %for.inc ], !dbg !3696
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3650, metadata !DIExpression()), !dbg !3651
  %idxprom100 = zext i32 %i.0 to i64, !dbg !3697
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom100, i32 2, !dbg !3699
  %10 = load i32, i32* %next_regno, align 8, !dbg !3699
  %cmp102 = icmp eq i32 %10, -1, !dbg !3700
  br i1 %cmp102, label %for.end, label %for.inc, !dbg !3701

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %10, metadata !3650, metadata !DIExpression()), !dbg !3651
  br label %for.cond, !dbg !3702, !llvm.loop !3703

for.end:                                          ; preds = %for.cond
  %next_regno.lcssa = phi i32* [ %next_regno, %for.cond ], !dbg !3699
  store i32 %call, i32* %next_regno.lcssa, align 8, !dbg !3705
  br label %cleanup.cont, !dbg !3706

cleanup.cont:                                     ; preds = %lor.lhs.false, %if.end8, %for.end, %entry, %if.end4, %lor.lhs.false35, %if.end16, %if.else
  ret void, !dbg !3706
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 %regno, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3707 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3712, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3713, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 49, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 37, metadata !3715, metadata !DIExpression()), !dbg !3716
  %cmp = icmp ugt i32 %regno, 52, !dbg !3717
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3719

land.lhs.true:                                    ; preds = %entry
  %0 = load i16*, i16** @reg_renumber, align 8, !dbg !3720
  %idxprom = zext i32 %regno to i64, !dbg !3720
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom, !dbg !3720
  %1 = load i16, i16* %arrayidx, align 2, !dbg !3720
  %cmp1 = icmp sgt i16 %1, -1, !dbg !3721
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3722

if.then:                                          ; preds = %land.lhs.true
  %conv5 = sext i16 %1 to i32, !dbg !3723
  call void @llvm.dbg.value(metadata i32 %conv5, metadata !3712, metadata !DIExpression()), !dbg !3716
  br label %if.end, !dbg !3724

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %regno.addr.0 = phi i32 [ %conv5, %if.then ], [ %regno, %land.lhs.true ], [ %regno, %entry ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3712, metadata !DIExpression()), !dbg !3716
  %call = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 %regno.addr.0, i32 %mode, i32 49, i32 37) #7, !dbg !3725
  ret i8 %call, !dbg !3726
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3727 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3731, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !3732, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !3733, metadata !DIExpression()), !dbg !3734
  ret i32 undef, !dbg !3735
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 %regno, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3736 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !3741, metadata !DIExpression()), !dbg !3742
  %cmp = icmp ult i32 %regno, 8, !dbg !3743
  br i1 %cmp, label %lor.end20, label %lor.lhs.false, !dbg !3743

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %regno to i64, !dbg !3743
  %sub = add nsw i64 %conv, -37, !dbg !3743
  %cmp1 = icmp ult i64 %sub, 8, !dbg !3743
  %0 = or i32 %regno, 4, !dbg !3743
  %1 = icmp eq i32 %0, 20, !dbg !3743
  %2 = or i1 %1, %cmp1, !dbg !3743
  br i1 %2, label %lor.end20, label %lor.rhs, !dbg !3743

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i16*, i16** @reg_renumber, align 8, !dbg !3743
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %conv, !dbg !3743
  %4 = load i16, i16* %arrayidx, align 2, !dbg !3743
  %cmp10 = icmp ult i16 %4, 8, !dbg !3743
  br i1 %cmp10, label %lor.end20, label %lor.rhs12, !dbg !3743

lor.rhs12:                                        ; preds = %lor.rhs
  %conv15 = sext i16 %4 to i64, !dbg !3743
  %conv16 = and i64 %conv15, 4294967295, !dbg !3743
  %sub17 = add nsw i64 %conv16, -37, !dbg !3743
  %cmp18 = icmp ult i64 %sub17, 8, !dbg !3743
  %phitmp = zext i1 %cmp18 to i8, !dbg !3743
  br label %lor.end20, !dbg !3743

lor.end20:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %5 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs12 ]
  ret i8 %5, !dbg !3744
}

; Function Attrs: nounwind uwtable
define internal i32 @cprop_find_used_regs_1(%struct.rtx_def** %loc, i8* %data) #5 !dbg !3745 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3747, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %data, metadata !3748, metadata !DIExpression()), !dbg !3752
  %0 = bitcast %struct.rtx_def** %loc to i32**, !dbg !3753
  %1 = load i32*, i32** %0, align 8, !dbg !3753
  %bf.load = load i32, i32* %1, align 8, !dbg !3753
  %bf.clear = and i32 %bf.load, 65535, !dbg !3753
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3753
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3754

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !3754
  %3 = bitcast i8* %data to %struct.value_data*, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.value_data* %3, metadata !3749, metadata !DIExpression()), !dbg !3756
  %e = bitcast i8* %data to [53 x %struct.value_data_entry]*, !dbg !3757
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %2) #7, !dbg !3759
  %idxprom = zext i32 %call to i64, !dbg !3760
  %debug_insn_changes = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i64 0, i64 %idxprom, i32 3, !dbg !3761
  %4 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !3761
  %tobool = icmp eq %struct.queued_debug_insn_change* %4, null, !dbg !3760
  br i1 %tobool, label %if.end4, label %if.then1, !dbg !3762

if.then1:                                         ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3763
  %call2 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #7, !dbg !3763
  tail call fastcc void @apply_debug_insn_changes(%struct.value_data* %3, i32 %call2) #7, !dbg !3765
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3766
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %6) #7, !dbg !3766
  tail call fastcc void @free_debug_insn_changes(%struct.value_data* %3, i32 %call3) #7, !dbg !3767
  br label %if.end4, !dbg !3768

if.end4:                                          ; preds = %if.then, %if.then1, %entry
  ret i32 0, !dbg !3769
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_debug_insn_changes(%struct.value_data* %vd, i32 %regno) unnamed_addr #5 !dbg !3770 {
entry:
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3773, metadata !DIExpression()), !dbg !3776
  %idxprom = zext i32 %regno to i64, !dbg !3777
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 3, !dbg !3779
  %0 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.queued_debug_insn_change* %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  %n_debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 2, !dbg !3780
  br label %for.cond, !dbg !3783

for.cond:                                         ; preds = %for.body, %entry
  %.in = phi %struct.queued_debug_insn_change* [ %0, %entry ], [ %2, %for.body ]
  %cur.0 = phi %struct.queued_debug_insn_change* [ %0, %entry ], [ %2, %for.body ], !dbg !3784
  call void @llvm.dbg.value(metadata %struct.queued_debug_insn_change* %cur.0, metadata !3774, metadata !DIExpression()), !dbg !3776
  %tobool = icmp eq %struct.queued_debug_insn_change* %cur.0, null, !dbg !3785
  br i1 %tobool, label %for.end, label %for.body, !dbg !3785

for.body:                                         ; preds = %for.cond
  %1 = bitcast %struct.queued_debug_insn_change* %.in to i8*, !dbg !3784
  %next1 = getelementptr inbounds %struct.queued_debug_insn_change, %struct.queued_debug_insn_change* %cur.0, i64 0, i32 0, !dbg !3786
  %2 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %next1, align 8, !dbg !3786
  call void @llvm.dbg.value(metadata %struct.queued_debug_insn_change* %2, metadata !3775, metadata !DIExpression()), !dbg !3776
  %3 = load i32, i32* %n_debug_insn_changes, align 4, !dbg !3787
  %dec = add i32 %3, -1, !dbg !3787
  store i32 %dec, i32* %n_debug_insn_changes, align 4, !dbg !3787
  %4 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @debug_insn_changes_pool, align 8, !dbg !3788
  tail call void @pool_free(%struct.alloc_pool_def* %4, i8* %1) #6, !dbg !3789
  call void @llvm.dbg.value(metadata %struct.queued_debug_insn_change* %2, metadata !3774, metadata !DIExpression()), !dbg !3776
  br label %for.cond, !dbg !3790, !llvm.loop !3791

for.end:                                          ; preds = %for.cond
  store %struct.queued_debug_insn_change* null, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !3793
  ret void, !dbg !3794
}

declare dso_local void @pool_free(%struct.alloc_pool_def*, i8*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_value_regno(i32 %regno, i32 %mode, %struct.value_data* %vd) unnamed_addr #5 !dbg !3795 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3800, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3801, metadata !DIExpression()), !dbg !3803
  %idxprom = zext i32 %regno to i64, !dbg !3804
  %mode1 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 0, !dbg !3805
  store i32 %mode, i32* %mode1, align 8, !dbg !3806
  %idxprom4 = zext i32 %mode to i64, !dbg !3807
  %arrayidx5 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom4, !dbg !3807
  %0 = load i8, i8* %arrayidx5, align 1, !dbg !3807
  %conv = zext i8 %0 to i32, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3802, metadata !DIExpression()), !dbg !3803
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 1, !dbg !3808
  %1 = load i32, i32* %max_value_regs, align 8, !dbg !3808
  %cmp = icmp ult i32 %1, %conv, !dbg !3810
  br i1 %cmp, label %if.then, label %if.end, !dbg !3811

if.then:                                          ; preds = %entry
  store i32 %conv, i32* %max_value_regs, align 8, !dbg !3812
  br label %if.end, !dbg !3813

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3814
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @in_hard_reg_set_p(i64 %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3815 {
entry:
  call void @llvm.dbg.value(metadata i64 %regs, metadata !3821, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3822, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3823, metadata !DIExpression()), !dbg !3825
  %sh_prom = zext i32 %regno to i64, !dbg !3826
  %shl = shl i64 1, %sh_prom, !dbg !3826
  %and = and i64 %shl, %regs, !dbg !3826
  %tobool = icmp eq i64 %and, 0, !dbg !3826
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3828

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %call, metadata !3824, metadata !DIExpression()), !dbg !3825
  br label %while.cond, !dbg !3830

while.cond:                                       ; preds = %while.body, %if.end
  %regno.addr.0 = phi i32 [ %regno, %if.end ], [ %inc, %while.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3823, metadata !DIExpression()), !dbg !3825
  %inc = add i32 %regno.addr.0, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3823, metadata !DIExpression()), !dbg !3825
  %cmp = icmp ult i32 %inc, %call, !dbg !3832
  br i1 %cmp, label %while.body, label %cleanup.loopexit, !dbg !3830

while.body:                                       ; preds = %while.cond
  %sh_prom1 = zext i32 %inc to i64, !dbg !3833
  %shl2 = shl i64 1, %sh_prom1, !dbg !3833
  %and3 = and i64 %shl2, %regs, !dbg !3833
  %tobool4 = icmp eq i64 %and3, 0, !dbg !3833
  br i1 %tobool4, label %cleanup.loopexit, label %while.cond, !dbg !3835, !llvm.loop !3836

cleanup.loopexit:                                 ; preds = %while.cond, %while.body
  %retval.0.ph = phi i8 [ 1, %while.cond ], [ 0, %while.body ]
  br label %cleanup, !dbg !3838

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3825
  ret i8 %retval.0, !dbg !3838
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3839 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3844, metadata !DIExpression()), !dbg !3845
  %idxprom = zext i32 %regno to i64, !dbg !3846
  %idxprom1 = sext i32 %mode to i64, !dbg !3846
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3846
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3846
  %conv = zext i8 %0 to i32, !dbg !3846
  %add = add i32 %conv, %regno, !dbg !3847
  ret i32 %add, !dbg !3848
}

declare dso_local %struct.rtx_def* @gen_rtx_fmt_i00_stat(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mode_change_ok(i32 %orig_mode, i32 %new_mode, i32 %regno) unnamed_addr #5 !dbg !3849 {
entry:
  call void @llvm.dbg.value(metadata i32 %orig_mode, metadata !3853, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %new_mode, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3855, metadata !DIExpression()), !dbg !3856
  %idxprom = zext i32 %orig_mode to i64, !dbg !3857
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3857
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3857
  %idxprom2 = zext i32 %new_mode to i64, !dbg !3859
  %arrayidx3 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom2, !dbg !3859
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !3859
  %cmp = icmp ult i8 %0, %1, !dbg !3860
  br i1 %cmp, label %return, label %if.end, !dbg !3861

if.end:                                           ; preds = %entry
  %idxprom7 = zext i32 %regno to i64, !dbg !3862
  %arrayidx8 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom7, !dbg !3862
  %2 = load i32, i32* %arrayidx8, align 4, !dbg !3862
  %call = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 %orig_mode, i32 %new_mode, i32 %2) #6, !dbg !3862
  %tobool = icmp eq i8 %call, 0, !dbg !3863
  %conv9 = zext i1 %tobool to i8, !dbg !3863
  br label %return, !dbg !3864

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv9, %if.end ], [ 0, %entry ], !dbg !3856
  ret i8 %retval.0, !dbg !3865
}

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @ix86_cannot_change_mode_class(i32, i32, i32) local_unnamed_addr #2

declare dso_local i8* @pool_alloc(%struct.alloc_pool_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @kill_value_one_regno(i32 %regno, %struct.value_data* %vd) unnamed_addr #5 !dbg !3866 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3870, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata %struct.value_data* %vd, metadata !3871, metadata !DIExpression()), !dbg !3874
  %idxprom = zext i32 %regno to i64, !dbg !3875
  %oldest_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 1, !dbg !3877
  %0 = load i32, i32* %oldest_regno, align 4, !dbg !3877
  %cmp = icmp eq i32 %0, %regno, !dbg !3878
  br i1 %cmp, label %if.else, label %if.then, !dbg !3879

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !3880

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ %0, %if.then ], [ %1, %for.inc ], !dbg !3883
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3872, metadata !DIExpression()), !dbg !3874
  %idxprom6 = zext i32 %i.0 to i64, !dbg !3884
  %next_regno = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom6, i32 2, !dbg !3886
  %1 = load i32, i32* %next_regno, align 8, !dbg !3886
  %cmp8 = icmp eq i32 %1, %regno, !dbg !3887
  br i1 %cmp8, label %for.end, label %for.inc, !dbg !3888

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !dbg !3889, !llvm.loop !3890

for.end:                                          ; preds = %for.cond
  %next_regno.lcssa = phi i32* [ %next_regno, %for.cond ], !dbg !3886
  %next_regno16 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 2, !dbg !3892
  %2 = load i32, i32* %next_regno16, align 8, !dbg !3892
  store i32 %2, i32* %next_regno.lcssa, align 8, !dbg !3893
  br label %if.end40, !dbg !3894

if.else:                                          ; preds = %entry
  %next_regno24 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 2, !dbg !3895
  %3 = load i32, i32* %next_regno24, align 8, !dbg !3895
  call void @llvm.dbg.value(metadata i32 %3, metadata !3873, metadata !DIExpression()), !dbg !3874
  %cmp25 = icmp eq i32 %3, -1, !dbg !3897
  br i1 %cmp25, label %if.end40, label %for.cond27.preheader, !dbg !3898

for.cond27.preheader:                             ; preds = %if.else
  br label %for.cond27, !dbg !3899

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body29
  %i.1 = phi i32 [ %4, %for.body29 ], [ %3, %for.cond27.preheader ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3872, metadata !DIExpression()), !dbg !3874
  %cmp28 = icmp eq i32 %i.1, -1, !dbg !3903
  br i1 %cmp28, label %if.end40.loopexit, label %for.body29, !dbg !3899

for.body29:                                       ; preds = %for.cond27
  %idxprom31 = zext i32 %i.1 to i64, !dbg !3905
  %oldest_regno33 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom31, i32 1, !dbg !3906
  store i32 %3, i32* %oldest_regno33, align 4, !dbg !3907
  %next_regno38 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom31, i32 2, !dbg !3908
  %4 = load i32, i32* %next_regno38, align 8, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %4, metadata !3872, metadata !DIExpression()), !dbg !3874
  br label %for.cond27, !dbg !3909, !llvm.loop !3910

if.end40.loopexit:                                ; preds = %for.cond27
  br label %if.end40, !dbg !3912

if.end40:                                         ; preds = %if.end40.loopexit, %if.else, %for.end
  %mode = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 0, !dbg !3913
  store i32 0, i32* %mode, align 8, !dbg !3914
  store i32 %regno, i32* %oldest_regno, align 4, !dbg !3915
  %next_regno51 = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 2, !dbg !3916
  store i32 -1, i32* %next_regno51, align 8, !dbg !3917
  %debug_insn_changes = getelementptr inbounds %struct.value_data, %struct.value_data* %vd, i64 0, i32 0, i64 %idxprom, i32 3, !dbg !3918
  %5 = load %struct.queued_debug_insn_change*, %struct.queued_debug_insn_change** %debug_insn_changes, align 8, !dbg !3918
  %tobool = icmp eq %struct.queued_debug_insn_change* %5, null, !dbg !3920
  br i1 %tobool, label %if.end56, label %if.then55, !dbg !3921

if.then55:                                        ; preds = %if.end40
  tail call fastcc void @free_debug_insn_changes(%struct.value_data* %vd, i32 %regno) #7, !dbg !3922
  br label %if.end56, !dbg !3922

if.end56:                                         ; preds = %if.end40, %if.then55
  ret void, !dbg !3923
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
!llvm.module.flags = !{!1889, !1890, !1891}
!llvm.ident = !{!1892}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_cprop_hardreg", scope: !2, file: !3, line: 1169, type: !1863, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !733, globals: !1839, nameTableKind: None)
!3 = !DIFile(filename: "regcprop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !384, !560, !703}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !561, line: 45, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!563 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!587 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!588 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!589 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!590 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!591 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!592 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!593 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!594 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!595 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!596 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!597 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!598 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!599 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!600 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!601 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!602 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!603 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!604 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!605 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!606 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!607 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!608 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!609 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!610 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!611 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!612 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!613 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!614 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!615 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!616 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!617 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!618 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!619 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!620 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!621 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!622 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!623 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!624 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!625 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!626 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!627 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!628 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!629 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!630 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!631 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!632 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!633 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!634 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!635 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!636 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!637 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!638 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!639 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!640 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!641 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!642 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!643 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!644 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!645 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!646 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!647 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!648 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!649 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!650 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!651 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!652 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!653 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!654 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!655 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!656 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!657 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!658 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!659 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!660 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!661 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!662 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!663 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!664 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!665 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!666 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!667 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!668 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!669 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!670 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!671 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!672 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!673 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!674 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!675 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!676 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!677 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!678 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!679 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!680 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!681 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!682 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!683 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!684 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!685 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!686 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!687 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!688 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!689 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!690 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!691 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!692 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!693 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!694 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!695 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!696 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!697 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!698 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!700 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!701 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!702 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !146, line: 1188, baseType: !7, size: 32, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!705 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!706 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!707 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!708 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!709 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!710 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!711 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!712 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!713 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!714 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!715 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!716 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!717 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!718 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!719 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!720 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!721 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!722 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!723 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!724 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!725 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!726 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!727 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!728 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!729 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!730 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!731 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!732 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!733 = !{!734, !735, !736, !737, !740, !741, !743, !7, !746, !745, !560, !5, !762, !1838, !757}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!736 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !744, line: 42, baseType: !745)
!744 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!745 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "value_data", file: !3, line: 75, size: 10240, elements: !748)
!748 = !{!749, !1836, !1837}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !747, file: !3, line: 77, baseType: !750, size: 10176)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 10176, elements: !1834)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "value_data_entry", file: !3, line: 67, size: 192, elements: !752)
!752 = !{!753, !754, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !751, file: !3, line: 69, baseType: !5, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_regno", scope: !751, file: !3, line: 70, baseType: !7, size: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno", scope: !751, file: !3, line: 71, baseType: !7, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "debug_insn_changes", scope: !751, file: !3, line: 72, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queued_debug_insn_change", file: !3, line: 53, size: 256, elements: !759)
!759 = !{!760, !761, !1831, !1833}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !3, line: 55, baseType: !757, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !758, file: !3, line: 56, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !763, line: 50, baseType: !764)
!763 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !561, line: 240, size: 384, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !765, file: !561, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !765, file: !561, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !765, file: !561, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !765, file: !561, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !765, file: !561, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !765, file: !561, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !765, file: !561, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !765, file: !561, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !765, file: !561, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !765, file: !561, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !765, file: !561, line: 321, baseType: !778, size: 320, offset: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !561, line: 315, size: 320, elements: !779)
!779 = !{!780, !1766, !1768, !1829, !1830}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !778, file: !561, line: 316, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 64, elements: !797)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !561, line: 183, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !561, line: 166, size: 64, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !799, !800, !812, !815, !876, !1744, !1745, !1756, !1763}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !783, file: !561, line: 168, baseType: !736, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !783, file: !561, line: 169, baseType: !7, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !783, file: !561, line: 170, baseType: !741, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !783, file: !561, line: 171, baseType: !762, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !783, file: !561, line: 172, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !763, line: 53, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !561, line: 359, size: 128, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !792, file: !561, line: 360, baseType: !736, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !792, file: !561, line: 361, baseType: !796, size: 64, offset: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 64, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 1)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !783, file: !561, line: 173, baseType: !5, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !783, file: !561, line: 174, baseType: !801, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !561, line: 133, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 115, size: 32, elements: !803)
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !802, file: !561, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !802, file: !561, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !802, file: !561, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !802, file: !561, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !802, file: !561, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !802, file: !561, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !802, file: !561, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !802, file: !561, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !783, file: !561, line: 175, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !561, line: 175, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !783, file: !561, line: 176, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !818, line: 75, size: 256, elements: !819)
!818 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!819 = !{!820, !834, !835, !836}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !817, file: !818, line: 76, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !818, line: 68, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !818, line: 63, size: 320, elements: !824)
!824 = !{!825, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !823, file: !818, line: 64, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !823, file: !818, line: 65, baseType: !826, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !823, file: !818, line: 66, baseType: !7, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !823, file: !818, line: 67, baseType: !830, size: 128, offset: 192)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 128, elements: !832)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !818, line: 29, baseType: !745)
!832 = !{!833}
!833 = !DISubrange(count: 2)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !817, file: !818, line: 77, baseType: !821, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !817, file: !818, line: 78, baseType: !7, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !817, file: !818, line: 79, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !818, line: 49, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !818, line: 45, size: 832, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !839, file: !818, line: 46, baseType: !826, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !839, file: !818, line: 47, baseType: !816, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !839, file: !818, line: 48, baseType: !844, size: 704, offset: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !845, line: 164, size: 704, elements: !846)
!845 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!846 = !{!847, !849, !859, !860, !861, !862, !863, !864, !868, !872, !873, !874, !875}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !844, file: !845, line: 166, baseType: !848, size: 64)
!848 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !844, file: !845, line: 167, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !845, line: 157, size: 192, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !851, file: !845, line: 159, baseType: !738, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !851, file: !845, line: 160, baseType: !850, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !851, file: !845, line: 161, baseType: !856, size: 32, offset: 128)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 32, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 4)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !844, file: !845, line: 168, baseType: !738, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !844, file: !845, line: 169, baseType: !738, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !844, file: !845, line: 170, baseType: !738, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !844, file: !845, line: 171, baseType: !848, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !844, file: !845, line: 172, baseType: !736, size: 32, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !844, file: !845, line: 176, baseType: !865, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!850, !740, !848}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !844, file: !845, line: 177, baseType: !869, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !740, !850}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !844, file: !845, line: 178, baseType: !740, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !844, file: !845, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !844, file: !845, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !844, file: !845, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !783, file: !561, line: 177, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !763, line: 56, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !880)
!880 = !{!881, !914, !920, !931, !950, !961, !966, !973, !979, !992, !1004, !1042, !1047, !1075, !1083, !1084, !1089, !1098, !1104, !1109, !1113, !1117, !1368, !1417, !1423, !1430, !1437, !1463, !1488, !1505, !1517, !1539, !1554, !1726}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !879, file: !151, line: 3372, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !882, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !882, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !882, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !882, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !882, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !882, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !882, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !882, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !882, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !882, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !882, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !882, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !882, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !882, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !882, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !882, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !882, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !882, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !882, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !882, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !882, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !882, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !882, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !882, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !882, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !882, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !882, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !882, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !882, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !882, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !879, file: !151, line: 3373, baseType: !915, size: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !915, file: !151, line: 403, baseType: !882, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !915, file: !151, line: 404, baseType: !877, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !915, file: !151, line: 405, baseType: !877, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !879, file: !151, line: 3374, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !921, file: !151, line: 1385, baseType: !915, size: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !921, file: !151, line: 1386, baseType: !925, size: 128, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !926, line: 58, baseType: !927)
!926 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 54, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !927, file: !926, line: 56, baseType: !745, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !927, file: !926, line: 57, baseType: !848, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !879, file: !151, line: 3375, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !932, file: !151, line: 1398, baseType: !915, size: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !932, file: !151, line: 1399, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !938, line: 52, size: 256, elements: !939)
!938 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!939 = !{!940, !941, !942, !943, !944, !945, !946}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !937, file: !938, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !937, file: !938, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !937, file: !938, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !937, file: !938, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !937, file: !938, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !937, file: !938, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !937, file: !938, line: 62, baseType: !947, size: 192, offset: 64)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 192, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 3)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !879, file: !151, line: 3376, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !151, line: 1409, baseType: !915, size: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !951, file: !151, line: 1410, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !957, line: 27, size: 192, elements: !958)
!957 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !956, file: !957, line: 29, baseType: !925, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !956, file: !957, line: 30, baseType: !5, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !879, file: !151, line: 3377, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !151, line: 1438, baseType: !915, size: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !962, file: !151, line: 1439, baseType: !877, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !879, file: !151, line: 3378, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !151, line: 1419, baseType: !915, size: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !967, file: !151, line: 1420, baseType: !736, size: 32, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !967, file: !151, line: 1421, baseType: !972, size: 8, offset: 224)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 8, elements: !797)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !879, file: !151, line: 3379, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !974, file: !151, line: 1429, baseType: !915, size: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !974, file: !151, line: 1430, baseType: !877, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !974, file: !151, line: 1431, baseType: !877, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !879, file: !151, line: 3380, baseType: !980, size: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !980, file: !151, line: 1461, baseType: !915, size: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !980, file: !151, line: 1462, baseType: !984, size: 128, offset: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !985, line: 31, size: 128, elements: !986)
!985 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!986 = !{!987, !990, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !984, file: !985, line: 32, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !984, file: !985, line: 33, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !984, file: !985, line: 34, baseType: !7, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !879, file: !151, line: 3381, baseType: !993, size: 384)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !994)
!994 = !{!995, !996, !1001, !1002, !1003}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !993, file: !151, line: 2508, baseType: !915, size: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !993, file: !151, line: 2509, baseType: !997, size: 32, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !998, line: 58, baseType: !999)
!998 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1000, line: 44, baseType: !7)
!1000 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !993, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !993, file: !151, line: 2511, baseType: !877, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !993, file: !151, line: 2512, baseType: !877, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !879, file: !151, line: 3382, baseType: !1005, size: 896)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !151, line: 2653, baseType: !993, size: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !151, line: 2654, baseType: !877, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1005, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1005, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1005, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1005, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1005, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1005, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1005, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1005, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1005, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1005, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1005, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1005, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1005, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1005, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1005, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1005, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1005, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1005, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1005, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1005, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1005, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1005, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1005, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1005, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1005, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1005, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1005, file: !151, line: 2705, baseType: !877, size: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1005, file: !151, line: 2706, baseType: !877, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1005, file: !151, line: 2707, baseType: !877, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1005, file: !151, line: 2708, baseType: !877, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1005, file: !151, line: 2711, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !879, file: !151, line: 3383, baseType: !1043, size: 960)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1043, file: !151, line: 2757, baseType: !1005, size: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1043, file: !151, line: 2758, baseType: !762, size: 64, offset: 896)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !879, file: !151, line: 3384, baseType: !1048, size: 1472)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !1049)
!1049 = !{!1050, !1071, !1072, !1073, !1074}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1048, file: !151, line: 3115, baseType: !1051, size: 1216)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1051, file: !151, line: 2985, baseType: !1043, size: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1051, file: !151, line: 2986, baseType: !877, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1051, file: !151, line: 2987, baseType: !877, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1051, file: !151, line: 2988, baseType: !877, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1051, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1051, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1051, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1051, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1051, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1051, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1051, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1051, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1051, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1051, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1051, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1051, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1051, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1051, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1048, file: !151, line: 3117, baseType: !877, size: 64, offset: 1216)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1048, file: !151, line: 3119, baseType: !877, size: 64, offset: 1280)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1048, file: !151, line: 3121, baseType: !877, size: 64, offset: 1344)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1048, file: !151, line: 3123, baseType: !877, size: 64, offset: 1408)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !879, file: !151, line: 3385, baseType: !1076, size: 1088)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1076, file: !151, line: 2875, baseType: !1043, size: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1076, file: !151, line: 2876, baseType: !762, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1076, file: !151, line: 2877, baseType: !1081, size: 64, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !879, file: !151, line: 3386, baseType: !1051, size: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !879, file: !151, line: 3387, baseType: !1085, size: 1280)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !151, line: 3094, baseType: !1051, size: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1085, file: !151, line: 3095, baseType: !1081, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !879, file: !151, line: 3388, baseType: !1090, size: 1216)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1090, file: !151, line: 2825, baseType: !1005, size: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1090, file: !151, line: 2827, baseType: !877, size: 64, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1090, file: !151, line: 2828, baseType: !877, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1090, file: !151, line: 2829, baseType: !877, size: 64, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1090, file: !151, line: 2830, baseType: !877, size: 64, offset: 1088)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1090, file: !151, line: 2831, baseType: !877, size: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !879, file: !151, line: 3389, baseType: !1099, size: 1024)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1099, file: !151, line: 2851, baseType: !1043, size: 960)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1099, file: !151, line: 2852, baseType: !736, size: 32, offset: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1099, file: !151, line: 2853, baseType: !736, size: 32, offset: 992)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !879, file: !151, line: 3390, baseType: !1105, size: 1024)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1105, file: !151, line: 2858, baseType: !1043, size: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1105, file: !151, line: 2859, baseType: !1081, size: 64, offset: 960)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !879, file: !151, line: 3391, baseType: !1110, size: 960)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !151, line: 2863, baseType: !1043, size: 960)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !879, file: !151, line: 3392, baseType: !1114, size: 1472)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !151, line: 3305, baseType: !1048, size: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !879, file: !151, line: 3393, baseType: !1118, size: 1792)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !1119)
!1119 = !{!1120, !1121, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1118, file: !151, line: 3249, baseType: !1048, size: 1472)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1118, file: !151, line: 3251, baseType: !1122, size: 64, offset: 1472)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1124, line: 463, size: 1152, elements: !1125)
!1124 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1125 = !{!1126, !1129, !1233, !1234, !1237, !1240, !1292, !1293, !1294, !1295, !1296, !1320, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1123, file: !1124, line: 464, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1124, line: 464, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1123, file: !1124, line: 467, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1132)
!1132 = !{!1133, !1208, !1209, !1222, !1223, !1224, !1225, !1226, !1227, !1229, !1231, !1232}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1131, file: !135, line: 377, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !763, line: 111, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !1137)
!1137 = !{!1138, !1173, !1174, !1175, !1178, !1182, !1183, !1184, !1202, !1203, !1204, !1205, !1206, !1207}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1136, file: !135, line: 219, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1141, file: !135, line: 151, baseType: !1144, size: 128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1145, file: !135, line: 150, baseType: !7, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1145, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1145, file: !135, line: 150, baseType: !1150, size: 64, offset: 64)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1151, size: 64, elements: !797)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !763, line: 108, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1153, file: !135, line: 124, baseType: !1135, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1153, file: !135, line: 125, baseType: !1135, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1153, file: !135, line: 131, baseType: !1158, size: 64, offset: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !1159)
!1159 = !{!1160, !1164}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1158, file: !135, line: 129, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !763, line: 66, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !763, line: 65, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1158, file: !135, line: 130, baseType: !762, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1153, file: !135, line: 134, baseType: !740, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1153, file: !135, line: 137, baseType: !877, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1153, file: !135, line: 138, baseType: !997, size: 32, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1153, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !135, line: 144, baseType: !736, size: 32, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1153, file: !135, line: 145, baseType: !736, size: 32, offset: 416)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !135, line: 146, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !848)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1136, file: !135, line: 220, baseType: !1139, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1136, file: !135, line: 223, baseType: !740, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1136, file: !135, line: 226, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1136, file: !135, line: 229, baseType: !1179, size: 128, offset: 256)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 128, elements: !832)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1136, file: !135, line: 232, baseType: !1135, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1136, file: !135, line: 233, baseType: !1135, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1136, file: !135, line: 238, baseType: !1185, size: 64, offset: 512)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1186)
!1186 = !{!1187, !1193}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1185, file: !135, line: 236, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1189, file: !135, line: 275, baseType: !1161, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1189, file: !135, line: 278, baseType: !1161, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1185, file: !135, line: 237, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1195, file: !135, line: 261, baseType: !762, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1195, file: !135, line: 262, baseType: !762, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1195, file: !135, line: 266, baseType: !762, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1195, file: !135, line: 267, baseType: !762, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1195, file: !135, line: 270, baseType: !736, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1136, file: !135, line: 241, baseType: !1172, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1136, file: !135, line: 244, baseType: !736, size: 32, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1136, file: !135, line: 247, baseType: !736, size: 32, offset: 672)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1136, file: !135, line: 250, baseType: !736, size: 32, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1136, file: !135, line: 253, baseType: !736, size: 32, offset: 736)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !135, line: 256, baseType: !736, size: 32, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1131, file: !135, line: 378, baseType: !1134, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1131, file: !135, line: 381, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1212, file: !135, line: 282, baseType: !1215, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1216, file: !135, line: 281, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1216, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1216, file: !135, line: 281, baseType: !1221, size: 64, offset: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 64, elements: !797)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1131, file: !135, line: 384, baseType: !736, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1131, file: !135, line: 387, baseType: !736, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1131, file: !135, line: 390, baseType: !736, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1131, file: !135, line: 394, baseType: !1210, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1131, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1131, file: !135, line: 399, baseType: !1228, size: 64, offset: 416)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1131, file: !135, line: 402, baseType: !1230, size: 64, offset: 480)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1131, file: !135, line: 406, baseType: !736, size: 32, offset: 544)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1131, file: !135, line: 409, baseType: !736, size: 32, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1123, file: !1124, line: 470, baseType: !1162, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1123, file: !1124, line: 473, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1124, line: 166, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1123, file: !1124, line: 476, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1124, line: 476, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1123, file: !1124, line: 479, baseType: !1241, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1242, line: 144, baseType: !1243)
!1242 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1242, line: 100, size: 896, elements: !1245)
!1245 = !{!1246, !1254, !1259, !1264, !1266, !1269, !1270, !1271, !1272, !1273, !1278, !1280, !1281, !1286, !1291}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1244, file: !1242, line: 102, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1242, line: 52, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1242, line: 47, baseType: !7)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1244, file: !1242, line: 105, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1242, line: 59, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!736, !1252, !1252}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1244, file: !1242, line: 108, baseType: !1260, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1242, line: 63, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !740}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1244, file: !1242, line: 111, baseType: !1265, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1244, file: !1242, line: 114, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1268, line: 46, baseType: !745)
!1268 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1244, file: !1242, line: 117, baseType: !1267, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1244, file: !1242, line: 120, baseType: !1267, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1244, file: !1242, line: 124, baseType: !7, size: 32, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1244, file: !1242, line: 128, baseType: !7, size: 32, offset: 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1244, file: !1242, line: 131, baseType: !1274, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1242, line: 75, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!740, !1267, !1267}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1244, file: !1242, line: 132, baseType: !1279, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1242, line: 78, baseType: !1261)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1244, file: !1242, line: 135, baseType: !740, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1244, file: !1242, line: 136, baseType: !1282, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1242, line: 82, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!740, !740, !1267, !1267}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1244, file: !1242, line: 137, baseType: !1287, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1242, line: 83, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !740, !740}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1244, file: !1242, line: 141, baseType: !7, size: 32, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1123, file: !1124, line: 484, baseType: !877, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1123, file: !1124, line: 488, baseType: !877, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1123, file: !1124, line: 493, baseType: !877, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1123, file: !1124, line: 496, baseType: !877, size: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1123, file: !1124, line: 501, baseType: !1297, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1299)
!1299 = !{!1300, !1303, !1304, !1305, !1306, !1308, !1309, !1314, !1315, !1316, !1317, !1318, !1319}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1298, file: !146, line: 2356, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1298, file: !146, line: 2357, baseType: !741, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1298, file: !146, line: 2358, baseType: !736, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1298, file: !146, line: 2359, baseType: !736, size: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1298, file: !146, line: 2360, baseType: !1307, size: 128, offset: 192)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 128, elements: !857)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1298, file: !146, line: 2364, baseType: !736, size: 32, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1298, file: !146, line: 2367, baseType: !1310, size: 128, offset: 384)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1310, file: !146, line: 2351, baseType: !762, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1310, file: !146, line: 2352, baseType: !848, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1298, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1298, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1298, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1298, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1298, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1298, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1123, file: !1124, line: 504, baseType: !1321, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1124, line: 504, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1123, file: !1124, line: 507, baseType: !1241, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1123, file: !1124, line: 510, baseType: !736, size: 32, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1123, file: !1124, line: 513, baseType: !736, size: 32, offset: 864)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1123, file: !1124, line: 516, baseType: !997, size: 32, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1123, file: !1124, line: 519, baseType: !997, size: 32, offset: 928)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1123, file: !1124, line: 522, baseType: !7, size: 32, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1123, file: !1124, line: 523, baseType: !7, size: 32, offset: 992)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1123, file: !1124, line: 528, baseType: !741, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1123, file: !1124, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1123, file: !1124, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1123, file: !1124, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1123, file: !1124, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1123, file: !1124, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1123, file: !1124, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1123, file: !1124, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1123, file: !1124, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1123, file: !1124, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1123, file: !1124, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1123, file: !1124, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1123, file: !1124, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1123, file: !1124, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1123, file: !1124, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1123, file: !1124, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1123, file: !1124, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1118, file: !151, line: 3254, baseType: !877, size: 64, offset: 1536)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1118, file: !151, line: 3257, baseType: !877, size: 64, offset: 1600)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1118, file: !151, line: 3258, baseType: !877, size: 64, offset: 1664)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1118, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1118, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1118, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1118, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1118, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1118, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1118, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1118, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1118, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1118, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1118, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1118, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1118, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1118, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1118, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1118, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1118, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1118, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !151, line: 3394, baseType: !1369, size: 1344)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1396, !1397, !1398, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1369, file: !151, line: 2280, baseType: !915, size: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1369, file: !151, line: 2281, baseType: !877, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1369, file: !151, line: 2282, baseType: !877, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1369, file: !151, line: 2283, baseType: !877, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1369, file: !151, line: 2284, baseType: !877, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1369, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1369, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1369, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1369, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1369, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1369, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1369, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1369, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1369, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1369, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1369, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1369, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1369, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1369, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1369, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1369, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1369, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1369, file: !151, line: 2306, baseType: !1394, size: 32, offset: 544)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1395, line: 31, baseType: !736)
!1395 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1369, file: !151, line: 2307, baseType: !877, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1369, file: !151, line: 2308, baseType: !877, size: 64, offset: 640)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1369, file: !151, line: 2314, baseType: !1399, size: 64, offset: 704)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1399, file: !151, line: 2310, baseType: !736, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1399, file: !151, line: 2311, baseType: !741, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1399, file: !151, line: 2312, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1369, file: !151, line: 2315, baseType: !877, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1369, file: !151, line: 2316, baseType: !877, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1369, file: !151, line: 2317, baseType: !877, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1369, file: !151, line: 2318, baseType: !877, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1369, file: !151, line: 2319, baseType: !877, size: 64, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1369, file: !151, line: 2320, baseType: !877, size: 64, offset: 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1369, file: !151, line: 2321, baseType: !877, size: 64, offset: 1152)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1369, file: !151, line: 2322, baseType: !877, size: 64, offset: 1216)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1369, file: !151, line: 2324, baseType: !1415, size: 64, offset: 1280)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !879, file: !151, line: 3395, baseType: !1418, size: 320)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !151, line: 1470, baseType: !915, size: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1418, file: !151, line: 1471, baseType: !877, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1418, file: !151, line: 1472, baseType: !877, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !879, file: !151, line: 3396, baseType: !1424, size: 320)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !151, line: 1483, baseType: !915, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1424, file: !151, line: 1484, baseType: !736, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1424, file: !151, line: 1485, baseType: !1429, size: 64, offset: 256)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 64, elements: !797)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !879, file: !151, line: 3397, baseType: !1431, size: 384)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1431, file: !151, line: 1830, baseType: !915, size: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1431, file: !151, line: 1831, baseType: !997, size: 32, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1431, file: !151, line: 1832, baseType: !877, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1431, file: !151, line: 1835, baseType: !1429, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !879, file: !151, line: 3398, baseType: !1438, size: 704)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1446, !1447, !1450}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !151, line: 1899, baseType: !915, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1438, file: !151, line: 1902, baseType: !877, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1438, file: !151, line: 1905, baseType: !1443, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !763, line: 58, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !763, line: 57, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1438, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1438, file: !151, line: 1911, baseType: !1448, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1438, file: !151, line: 1914, baseType: !1451, size: 256, offset: 448)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1452)
!1452 = !{!1453, !1455, !1456, !1461}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1451, file: !151, line: 1884, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1451, file: !151, line: 1885, baseType: !1454, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1451, file: !151, line: 1891, baseType: !1457, size: 64, offset: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !151, line: 1891, size: 64, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1457, file: !151, line: 1891, baseType: !1443, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1457, file: !151, line: 1891, baseType: !877, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1451, file: !151, line: 1892, baseType: !1462, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !879, file: !151, line: 3399, baseType: !1464, size: 704)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1483, !1484, !1485, !1486, !1487}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1464, file: !151, line: 2009, baseType: !915, size: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1464, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1464, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1464, file: !151, line: 2014, baseType: !997, size: 32, offset: 224)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1464, file: !151, line: 2016, baseType: !877, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1464, file: !151, line: 2017, baseType: !1472, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1474, file: !151, line: 183, baseType: !1477, size: 128)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1478, file: !151, line: 182, baseType: !7, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1478, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1478, file: !151, line: 182, baseType: !1429, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1464, file: !151, line: 2019, baseType: !877, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1464, file: !151, line: 2020, baseType: !877, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1464, file: !151, line: 2021, baseType: !877, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1464, file: !151, line: 2022, baseType: !877, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1464, file: !151, line: 2023, baseType: !877, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !879, file: !151, line: 3400, baseType: !1489, size: 832)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1489, file: !151, line: 2431, baseType: !915, size: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1489, file: !151, line: 2433, baseType: !877, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1489, file: !151, line: 2434, baseType: !877, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1489, file: !151, line: 2435, baseType: !877, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1489, file: !151, line: 2436, baseType: !877, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1489, file: !151, line: 2437, baseType: !1472, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1489, file: !151, line: 2438, baseType: !877, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1489, file: !151, line: 2440, baseType: !877, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1489, file: !151, line: 2441, baseType: !877, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1489, file: !151, line: 2443, baseType: !1501, size: 128, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1503)
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1502, file: !151, line: 182, baseType: !1477, size: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !879, file: !151, line: 3401, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1507)
!1507 = !{!1508, !1509, !1516}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !151, line: 3329, baseType: !915, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1506, file: !151, line: 3330, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1512)
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1511, file: !151, line: 3322, baseType: !1510, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1511, file: !151, line: 3323, baseType: !1510, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1511, file: !151, line: 3324, baseType: !877, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1506, file: !151, line: 3331, baseType: !1510, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !879, file: !151, line: 3402, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1518, file: !151, line: 1541, baseType: !915, size: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1518, file: !151, line: 1542, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1524, file: !151, line: 1538, baseType: !1527, size: 192)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1528, file: !151, line: 1537, baseType: !7, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1528, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1528, file: !151, line: 1537, baseType: !1533, size: 128, offset: 64)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1534, size: 128, elements: !797)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1535, file: !151, line: 1533, baseType: !877, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1535, file: !151, line: 1534, baseType: !877, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !879, file: !151, line: 3403, baseType: !1540, size: 512)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1551, !1552, !1553}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1540, file: !151, line: 1939, baseType: !915, size: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1540, file: !151, line: 1940, baseType: !997, size: 32, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1540, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1540, file: !151, line: 1946, baseType: !1546, size: 32, offset: 256)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1546, file: !151, line: 1943, baseType: !169, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1546, file: !151, line: 1944, baseType: !176, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1546, file: !151, line: 1945, baseType: !183, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1540, file: !151, line: 1950, baseType: !1161, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1540, file: !151, line: 1951, baseType: !1161, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1540, file: !151, line: 1953, baseType: !1429, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !879, file: !151, line: 3404, baseType: !1555, size: 1664)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1555, file: !151, line: 3338, baseType: !915, size: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1555, file: !151, line: 3341, baseType: !1559, size: 1472, offset: 192)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1560, line: 410, size: 1472, elements: !1561)
!1560 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1559, file: !1560, line: 412, baseType: !736, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1559, file: !1560, line: 413, baseType: !736, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1559, file: !1560, line: 414, baseType: !736, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1559, file: !1560, line: 415, baseType: !736, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1559, file: !1560, line: 416, baseType: !736, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1559, file: !1560, line: 417, baseType: !736, size: 32, offset: 160)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1559, file: !1560, line: 418, baseType: !735, size: 8, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1559, file: !1560, line: 419, baseType: !735, size: 8, offset: 200)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1559, file: !1560, line: 420, baseType: !1571, size: 8, offset: 208)
!1571 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1559, file: !1560, line: 421, baseType: !1571, size: 8, offset: 216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1559, file: !1560, line: 422, baseType: !1571, size: 8, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1559, file: !1560, line: 423, baseType: !1571, size: 8, offset: 232)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1559, file: !1560, line: 424, baseType: !1571, size: 8, offset: 240)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1559, file: !1560, line: 425, baseType: !1571, size: 8, offset: 248)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1559, file: !1560, line: 426, baseType: !1571, size: 8, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1559, file: !1560, line: 427, baseType: !1571, size: 8, offset: 264)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1559, file: !1560, line: 428, baseType: !1571, size: 8, offset: 272)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1559, file: !1560, line: 429, baseType: !1571, size: 8, offset: 280)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1559, file: !1560, line: 430, baseType: !1571, size: 8, offset: 288)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1559, file: !1560, line: 431, baseType: !1571, size: 8, offset: 296)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1559, file: !1560, line: 432, baseType: !1571, size: 8, offset: 304)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1559, file: !1560, line: 433, baseType: !1571, size: 8, offset: 312)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1559, file: !1560, line: 434, baseType: !1571, size: 8, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1559, file: !1560, line: 435, baseType: !1571, size: 8, offset: 328)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1559, file: !1560, line: 436, baseType: !1571, size: 8, offset: 336)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1559, file: !1560, line: 437, baseType: !1571, size: 8, offset: 344)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1559, file: !1560, line: 438, baseType: !1571, size: 8, offset: 352)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1559, file: !1560, line: 439, baseType: !1571, size: 8, offset: 360)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1559, file: !1560, line: 440, baseType: !1571, size: 8, offset: 368)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1559, file: !1560, line: 441, baseType: !1571, size: 8, offset: 376)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1559, file: !1560, line: 442, baseType: !1571, size: 8, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1559, file: !1560, line: 443, baseType: !1571, size: 8, offset: 392)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1559, file: !1560, line: 444, baseType: !1571, size: 8, offset: 400)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1559, file: !1560, line: 445, baseType: !1571, size: 8, offset: 408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1559, file: !1560, line: 446, baseType: !1571, size: 8, offset: 416)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1559, file: !1560, line: 447, baseType: !1571, size: 8, offset: 424)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1559, file: !1560, line: 448, baseType: !1571, size: 8, offset: 432)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1559, file: !1560, line: 449, baseType: !1571, size: 8, offset: 440)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1559, file: !1560, line: 450, baseType: !1571, size: 8, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1559, file: !1560, line: 451, baseType: !1571, size: 8, offset: 456)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1559, file: !1560, line: 452, baseType: !1571, size: 8, offset: 464)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1559, file: !1560, line: 453, baseType: !1571, size: 8, offset: 472)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1559, file: !1560, line: 454, baseType: !1571, size: 8, offset: 480)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1559, file: !1560, line: 455, baseType: !1571, size: 8, offset: 488)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1559, file: !1560, line: 456, baseType: !1571, size: 8, offset: 496)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1559, file: !1560, line: 457, baseType: !1571, size: 8, offset: 504)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1559, file: !1560, line: 458, baseType: !1571, size: 8, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1559, file: !1560, line: 459, baseType: !1571, size: 8, offset: 520)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1559, file: !1560, line: 460, baseType: !1571, size: 8, offset: 528)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1559, file: !1560, line: 461, baseType: !1571, size: 8, offset: 536)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1559, file: !1560, line: 462, baseType: !1571, size: 8, offset: 544)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1559, file: !1560, line: 463, baseType: !1571, size: 8, offset: 552)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1559, file: !1560, line: 464, baseType: !1571, size: 8, offset: 560)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1559, file: !1560, line: 465, baseType: !1571, size: 8, offset: 568)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1559, file: !1560, line: 466, baseType: !1571, size: 8, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1559, file: !1560, line: 467, baseType: !1571, size: 8, offset: 584)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1559, file: !1560, line: 468, baseType: !1571, size: 8, offset: 592)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1559, file: !1560, line: 469, baseType: !1571, size: 8, offset: 600)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1559, file: !1560, line: 470, baseType: !1571, size: 8, offset: 608)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1559, file: !1560, line: 471, baseType: !1571, size: 8, offset: 616)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1559, file: !1560, line: 472, baseType: !1571, size: 8, offset: 624)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1559, file: !1560, line: 473, baseType: !1571, size: 8, offset: 632)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1559, file: !1560, line: 474, baseType: !1571, size: 8, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1559, file: !1560, line: 475, baseType: !1571, size: 8, offset: 648)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1559, file: !1560, line: 476, baseType: !1571, size: 8, offset: 656)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1559, file: !1560, line: 477, baseType: !1571, size: 8, offset: 664)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1559, file: !1560, line: 478, baseType: !1571, size: 8, offset: 672)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1559, file: !1560, line: 479, baseType: !1571, size: 8, offset: 680)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1559, file: !1560, line: 480, baseType: !1571, size: 8, offset: 688)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1559, file: !1560, line: 481, baseType: !1571, size: 8, offset: 696)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1559, file: !1560, line: 482, baseType: !1571, size: 8, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1559, file: !1560, line: 483, baseType: !1571, size: 8, offset: 712)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1559, file: !1560, line: 484, baseType: !1571, size: 8, offset: 720)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1559, file: !1560, line: 485, baseType: !1571, size: 8, offset: 728)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1559, file: !1560, line: 486, baseType: !1571, size: 8, offset: 736)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1559, file: !1560, line: 487, baseType: !1571, size: 8, offset: 744)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1559, file: !1560, line: 488, baseType: !1571, size: 8, offset: 752)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1559, file: !1560, line: 489, baseType: !1571, size: 8, offset: 760)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1559, file: !1560, line: 490, baseType: !1571, size: 8, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1559, file: !1560, line: 491, baseType: !1571, size: 8, offset: 776)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1559, file: !1560, line: 492, baseType: !1571, size: 8, offset: 784)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1559, file: !1560, line: 493, baseType: !1571, size: 8, offset: 792)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1559, file: !1560, line: 494, baseType: !1571, size: 8, offset: 800)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1559, file: !1560, line: 495, baseType: !1571, size: 8, offset: 808)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1559, file: !1560, line: 496, baseType: !1571, size: 8, offset: 816)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1559, file: !1560, line: 497, baseType: !1571, size: 8, offset: 824)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1559, file: !1560, line: 498, baseType: !1571, size: 8, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1559, file: !1560, line: 499, baseType: !1571, size: 8, offset: 840)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1559, file: !1560, line: 500, baseType: !1571, size: 8, offset: 848)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1559, file: !1560, line: 501, baseType: !1571, size: 8, offset: 856)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1559, file: !1560, line: 502, baseType: !1571, size: 8, offset: 864)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1559, file: !1560, line: 503, baseType: !1571, size: 8, offset: 872)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1559, file: !1560, line: 504, baseType: !1571, size: 8, offset: 880)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1559, file: !1560, line: 505, baseType: !1571, size: 8, offset: 888)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1559, file: !1560, line: 506, baseType: !1571, size: 8, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1559, file: !1560, line: 507, baseType: !1571, size: 8, offset: 904)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1559, file: !1560, line: 508, baseType: !1571, size: 8, offset: 912)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1559, file: !1560, line: 509, baseType: !1571, size: 8, offset: 920)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1559, file: !1560, line: 510, baseType: !1571, size: 8, offset: 928)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1559, file: !1560, line: 511, baseType: !1571, size: 8, offset: 936)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1559, file: !1560, line: 512, baseType: !1571, size: 8, offset: 944)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1559, file: !1560, line: 513, baseType: !1571, size: 8, offset: 952)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1559, file: !1560, line: 514, baseType: !1571, size: 8, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1559, file: !1560, line: 515, baseType: !1571, size: 8, offset: 968)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1559, file: !1560, line: 516, baseType: !1571, size: 8, offset: 976)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1559, file: !1560, line: 517, baseType: !1571, size: 8, offset: 984)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1559, file: !1560, line: 518, baseType: !1571, size: 8, offset: 992)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1559, file: !1560, line: 519, baseType: !1571, size: 8, offset: 1000)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1559, file: !1560, line: 520, baseType: !1571, size: 8, offset: 1008)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1559, file: !1560, line: 521, baseType: !1571, size: 8, offset: 1016)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1559, file: !1560, line: 522, baseType: !1571, size: 8, offset: 1024)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1559, file: !1560, line: 523, baseType: !1571, size: 8, offset: 1032)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1559, file: !1560, line: 524, baseType: !1571, size: 8, offset: 1040)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1559, file: !1560, line: 525, baseType: !1571, size: 8, offset: 1048)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1559, file: !1560, line: 526, baseType: !1571, size: 8, offset: 1056)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1559, file: !1560, line: 527, baseType: !1571, size: 8, offset: 1064)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1559, file: !1560, line: 528, baseType: !1571, size: 8, offset: 1072)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1559, file: !1560, line: 529, baseType: !1571, size: 8, offset: 1080)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1559, file: !1560, line: 530, baseType: !1571, size: 8, offset: 1088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1559, file: !1560, line: 531, baseType: !1571, size: 8, offset: 1096)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1559, file: !1560, line: 532, baseType: !1571, size: 8, offset: 1104)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1559, file: !1560, line: 533, baseType: !1571, size: 8, offset: 1112)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1559, file: !1560, line: 534, baseType: !1571, size: 8, offset: 1120)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1559, file: !1560, line: 535, baseType: !1571, size: 8, offset: 1128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1559, file: !1560, line: 536, baseType: !1571, size: 8, offset: 1136)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1559, file: !1560, line: 537, baseType: !1571, size: 8, offset: 1144)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1559, file: !1560, line: 538, baseType: !1571, size: 8, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1559, file: !1560, line: 539, baseType: !1571, size: 8, offset: 1160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1559, file: !1560, line: 540, baseType: !1571, size: 8, offset: 1168)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1559, file: !1560, line: 541, baseType: !1571, size: 8, offset: 1176)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1559, file: !1560, line: 542, baseType: !1571, size: 8, offset: 1184)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1559, file: !1560, line: 543, baseType: !1571, size: 8, offset: 1192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1559, file: !1560, line: 544, baseType: !1571, size: 8, offset: 1200)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1559, file: !1560, line: 545, baseType: !1571, size: 8, offset: 1208)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1559, file: !1560, line: 546, baseType: !1571, size: 8, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1559, file: !1560, line: 547, baseType: !1571, size: 8, offset: 1224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1559, file: !1560, line: 548, baseType: !1571, size: 8, offset: 1232)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1559, file: !1560, line: 549, baseType: !1571, size: 8, offset: 1240)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1559, file: !1560, line: 550, baseType: !1571, size: 8, offset: 1248)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1559, file: !1560, line: 551, baseType: !1571, size: 8, offset: 1256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1559, file: !1560, line: 552, baseType: !1571, size: 8, offset: 1264)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1559, file: !1560, line: 553, baseType: !1571, size: 8, offset: 1272)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1559, file: !1560, line: 554, baseType: !1571, size: 8, offset: 1280)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1559, file: !1560, line: 555, baseType: !1571, size: 8, offset: 1288)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1559, file: !1560, line: 556, baseType: !1571, size: 8, offset: 1296)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1559, file: !1560, line: 557, baseType: !1571, size: 8, offset: 1304)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1559, file: !1560, line: 558, baseType: !1571, size: 8, offset: 1312)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1559, file: !1560, line: 559, baseType: !1571, size: 8, offset: 1320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1559, file: !1560, line: 560, baseType: !1571, size: 8, offset: 1328)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1559, file: !1560, line: 561, baseType: !1571, size: 8, offset: 1336)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1559, file: !1560, line: 562, baseType: !1571, size: 8, offset: 1344)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1559, file: !1560, line: 563, baseType: !1571, size: 8, offset: 1352)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1559, file: !1560, line: 564, baseType: !1571, size: 8, offset: 1360)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1559, file: !1560, line: 565, baseType: !1571, size: 8, offset: 1368)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1559, file: !1560, line: 566, baseType: !1571, size: 8, offset: 1376)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1559, file: !1560, line: 567, baseType: !1571, size: 8, offset: 1384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1559, file: !1560, line: 568, baseType: !1571, size: 8, offset: 1392)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1559, file: !1560, line: 569, baseType: !1571, size: 8, offset: 1400)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1559, file: !1560, line: 570, baseType: !1571, size: 8, offset: 1408)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1559, file: !1560, line: 571, baseType: !1571, size: 8, offset: 1416)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1559, file: !1560, line: 572, baseType: !1571, size: 8, offset: 1424)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1559, file: !1560, line: 573, baseType: !1571, size: 8, offset: 1432)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1559, file: !1560, line: 574, baseType: !1571, size: 8, offset: 1440)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !879, file: !151, line: 3405, baseType: !1727, size: 384)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1727, file: !151, line: 3353, baseType: !915, size: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1727, file: !151, line: 3356, baseType: !1731, size: 192, offset: 192)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1560, line: 578, size: 192, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1731, file: !1560, line: 580, baseType: !736, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1731, file: !1560, line: 581, baseType: !736, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1731, file: !1560, line: 582, baseType: !736, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1731, file: !1560, line: 583, baseType: !736, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1731, file: !1560, line: 584, baseType: !735, size: 8, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1731, file: !1560, line: 585, baseType: !735, size: 8, offset: 136)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1731, file: !1560, line: 586, baseType: !735, size: 8, offset: 144)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1731, file: !1560, line: 587, baseType: !735, size: 8, offset: 152)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1731, file: !1560, line: 588, baseType: !735, size: 8, offset: 160)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1731, file: !1560, line: 589, baseType: !735, size: 8, offset: 168)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1731, file: !1560, line: 590, baseType: !735, size: 8, offset: 176)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !783, file: !561, line: 178, baseType: !1135, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !783, file: !561, line: 179, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !561, line: 150, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !561, line: 142, size: 320, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1748, file: !561, line: 144, baseType: !877, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1748, file: !561, line: 145, baseType: !762, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1748, file: !561, line: 146, baseType: !762, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1748, file: !561, line: 147, baseType: !1394, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1748, file: !561, line: 148, baseType: !7, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1748, file: !561, line: 149, baseType: !735, size: 8, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !783, file: !561, line: 180, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !561, line: 162, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !561, line: 159, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1759, file: !561, line: 160, baseType: !877, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1759, file: !561, line: 161, baseType: !848, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !783, file: !561, line: 181, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !561, line: 181, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !778, file: !561, line: 317, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 64, elements: !797)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !778, file: !561, line: 318, baseType: !1769, size: 320)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !561, line: 188, size: 320, elements: !1770)
!1770 = !{!1771, !1773, !1828}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1769, file: !561, line: 190, baseType: !1772, size: 192)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 192, elements: !948)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1769, file: !561, line: 193, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !561, line: 206, size: 320, elements: !1776)
!1776 = !{!1777, !1813, !1814, !1815, !1827}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1775, file: !561, line: 208, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !763, line: 62, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1781, line: 538, size: 256, elements: !1782)
!1781 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1782 = !{!1783, !1787, !1793, !1804}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1780, file: !1781, line: 539, baseType: !1784, size: 32)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1781, line: 482, size: 32, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !1781, line: 484, baseType: !7, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1780, file: !1781, line: 540, baseType: !1788, size: 192)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1781, line: 488, size: 192, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1788, file: !1781, line: 489, baseType: !1784, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1788, file: !1781, line: 492, baseType: !741, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1788, file: !1781, line: 496, baseType: !877, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1780, file: !1781, line: 541, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1781, line: 504, size: 256, elements: !1795)
!1795 = !{!1796, !1797, !1802, !1803}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1794, file: !1781, line: 505, baseType: !1784, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1794, file: !1781, line: 509, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1781, line: 501, baseType: !1799)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1252}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1794, file: !1781, line: 510, baseType: !1252, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1794, file: !1781, line: 513, baseType: !1778, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1780, file: !1781, line: 542, baseType: !1805, size: 128)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1781, line: 530, size: 128, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1805, file: !1781, line: 531, baseType: !1784, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1805, file: !1781, line: 534, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1781, line: 525, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!735, !877, !741, !745, !745}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1775, file: !561, line: 211, baseType: !7, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1775, file: !561, line: 214, baseType: !848, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1775, file: !561, line: 224, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !561, line: 202, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !561, line: 202, size: 128, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1818, file: !561, line: 202, baseType: !1821, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !561, line: 200, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !561, line: 200, size: 128, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1822, file: !561, line: 200, baseType: !7, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1822, file: !561, line: 200, baseType: !7, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1822, file: !561, line: 200, baseType: !796, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1775, file: !561, line: 234, baseType: !1816, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1769, file: !561, line: 197, baseType: !848, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !778, file: !561, line: 319, baseType: !937, size: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !778, file: !561, line: 320, baseType: !956, size: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !758, file: !3, line: 57, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "new_rtx", scope: !758, file: !3, line: 58, baseType: !762, size: 64, offset: 192)
!1834 = !{!1835}
!1835 = !DISubrange(count: 53)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_regs", scope: !747, file: !3, line: 78, baseType: !7, size: 32, offset: 10176)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "n_debug_insn_changes", scope: !747, file: !3, line: 79, baseType: !7, size: 32, offset: 10208)
!1838 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1839 = !{!0, !1840}
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(name: "debug_insn_changes_pool", scope: !2, file: !3, line: 82, type: !1842, isLocal: true, isDefinition: true)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !1843, line: 58, baseType: !1844)
!1843 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !1843, line: 32, size: 704, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1845, file: !1843, line: 34, baseType: !741, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !1845, file: !1843, line: 38, baseType: !1267, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !1845, file: !1843, line: 41, baseType: !1850, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !1843, line: 30, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !1843, line: 26, size: 64, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1852, file: !1843, line: 28, baseType: !1851, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !1845, file: !1843, line: 45, baseType: !738, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !1845, file: !1843, line: 49, baseType: !1267, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !1845, file: !1843, line: 51, baseType: !1267, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !1845, file: !1843, line: 52, baseType: !1267, size: 64, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !1845, file: !1843, line: 53, baseType: !1267, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !1845, file: !1843, line: 54, baseType: !1850, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1845, file: !1843, line: 55, baseType: !1267, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !1845, file: !1843, line: 56, baseType: !1267, size: 64, offset: 640)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !378, line: 162, size: 640, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1863, file: !378, line: 164, baseType: !1866, size: 640)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !378, line: 114, size: 640, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1874, !1878, !1880, !1881, !1882, !1884, !1885, !1886, !1887, !1888}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1866, file: !378, line: 117, baseType: !377, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1866, file: !378, line: 121, baseType: !741, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1866, file: !378, line: 125, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!735}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1866, file: !378, line: 130, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!7}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1866, file: !378, line: 133, baseType: !1879, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1866, file: !378, line: 136, baseType: !1879, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1866, file: !378, line: 139, baseType: !736, size: 32, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1866, file: !378, line: 143, baseType: !1883, size: 32, offset: 416)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !385, line: 80, baseType: !384)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1866, file: !378, line: 146, baseType: !7, size: 32, offset: 448)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1866, file: !378, line: 147, baseType: !7, size: 32, offset: 480)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1866, file: !378, line: 148, baseType: !7, size: 32, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1866, file: !378, line: 151, baseType: !7, size: 32, offset: 544)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1866, file: !378, line: 152, baseType: !7, size: 32, offset: 576)
!1889 = !{i32 2, !"Dwarf Version", i32 4}
!1890 = !{i32 2, !"Debug Info Version", i32 3}
!1891 = !{i32 1, !"wchar_size", i32 4}
!1892 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1893 = distinct !DISubprogram(name: "vprintf", scope: !1894, file: !1894, line: 39, type: !1895, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1905)
!1894 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!736, !1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !741)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1899, file: !3, baseType: !7, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1899, file: !3, baseType: !7, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1899, file: !3, baseType: !740, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1899, file: !3, baseType: !740, size: 64, offset: 128)
!1905 = !{!1906, !1907}
!1906 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1893, file: !1894, line: 39, type: !1897)
!1907 = !DILocalVariable(name: "__arg", arg: 2, scope: !1893, file: !1894, line: 39, type: !1898)
!1908 = !DILocation(line: 0, scope: !1893)
!1909 = !DILocation(line: 41, column: 20, scope: !1893)
!1910 = !DILocation(line: 41, column: 10, scope: !1893)
!1911 = !DILocation(line: 41, column: 3, scope: !1893)
!1912 = distinct !DISubprogram(name: "getchar", scope: !1894, file: !1894, line: 47, type: !1913, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!736}
!1915 = !{}
!1916 = !DILocation(line: 49, column: 16, scope: !1912)
!1917 = !DILocation(line: 49, column: 10, scope: !1912)
!1918 = !DILocation(line: 49, column: 3, scope: !1912)
!1919 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1894, file: !1894, line: 56, type: !1920, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!736, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1924, line: 7, baseType: !1925)
!1924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1926, line: 49, size: 1728, elements: !1927)
!1926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1943, !1945, !1946, !1947, !1950, !1951, !1952, !1953, !1956, !1958, !1961, !1964, !1965, !1966, !1967, !1968}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1925, file: !1926, line: 51, baseType: !736, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1925, file: !1926, line: 54, baseType: !738, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1925, file: !1926, line: 55, baseType: !738, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1925, file: !1926, line: 56, baseType: !738, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1925, file: !1926, line: 57, baseType: !738, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1925, file: !1926, line: 58, baseType: !738, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1925, file: !1926, line: 59, baseType: !738, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1925, file: !1926, line: 60, baseType: !738, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1925, file: !1926, line: 61, baseType: !738, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1925, file: !1926, line: 64, baseType: !738, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1925, file: !1926, line: 65, baseType: !738, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1925, file: !1926, line: 66, baseType: !738, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1925, file: !1926, line: 68, baseType: !1941, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1926, line: 36, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1925, file: !1926, line: 70, baseType: !1944, size: 64, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1925, file: !1926, line: 72, baseType: !736, size: 32, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1925, file: !1926, line: 73, baseType: !736, size: 32, offset: 928)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1925, file: !1926, line: 74, baseType: !1948, size: 64, offset: 960)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1949, line: 152, baseType: !848)
!1949 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1925, file: !1926, line: 77, baseType: !1838, size: 16, offset: 1024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1925, file: !1926, line: 78, baseType: !1571, size: 8, offset: 1040)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1925, file: !1926, line: 79, baseType: !972, size: 8, offset: 1048)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1925, file: !1926, line: 81, baseType: !1954, size: 64, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1926, line: 43, baseType: null)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1925, file: !1926, line: 89, baseType: !1957, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1949, line: 153, baseType: !848)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1925, file: !1926, line: 91, baseType: !1959, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1926, line: 37, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1925, file: !1926, line: 92, baseType: !1962, size: 64, offset: 1280)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1926, line: 38, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1925, file: !1926, line: 93, baseType: !1944, size: 64, offset: 1344)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1925, file: !1926, line: 94, baseType: !740, size: 64, offset: 1408)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1925, file: !1926, line: 95, baseType: !1267, size: 64, offset: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1925, file: !1926, line: 96, baseType: !736, size: 32, offset: 1536)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1925, file: !1926, line: 98, baseType: !1969, size: 160, offset: 1568)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 160, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 20)
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "__fp", arg: 1, scope: !1919, file: !1894, line: 56, type: !1922)
!1974 = !DILocation(line: 0, scope: !1919)
!1975 = !DILocation(line: 58, column: 10, scope: !1919)
!1976 = !DILocation(line: 58, column: 3, scope: !1919)
!1977 = distinct !DISubprogram(name: "getc_unlocked", scope: !1894, file: !1894, line: 66, type: !1920, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "__fp", arg: 1, scope: !1977, file: !1894, line: 66, type: !1922)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocation(line: 68, column: 10, scope: !1977)
!1982 = !DILocation(line: 68, column: 3, scope: !1977)
!1983 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1894, file: !1894, line: 73, type: !1913, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1984 = !DILocation(line: 75, column: 10, scope: !1983)
!1985 = !DILocation(line: 75, column: 3, scope: !1983)
!1986 = distinct !DISubprogram(name: "putchar", scope: !1894, file: !1894, line: 82, type: !1987, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!736, !736}
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "__c", arg: 1, scope: !1986, file: !1894, line: 82, type: !736)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 84, column: 21, scope: !1986)
!1993 = !DILocation(line: 84, column: 10, scope: !1986)
!1994 = !DILocation(line: 84, column: 3, scope: !1986)
!1995 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1894, file: !1894, line: 91, type: !1996, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!736, !736, !1922}
!1998 = !{!1999, !2000}
!1999 = !DILocalVariable(name: "__c", arg: 1, scope: !1995, file: !1894, line: 91, type: !736)
!2000 = !DILocalVariable(name: "__stream", arg: 2, scope: !1995, file: !1894, line: 91, type: !1922)
!2001 = !DILocation(line: 0, scope: !1995)
!2002 = !DILocation(line: 93, column: 10, scope: !1995)
!2003 = !DILocation(line: 93, column: 3, scope: !1995)
!2004 = distinct !DISubprogram(name: "putc_unlocked", scope: !1894, file: !1894, line: 101, type: !1996, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2005 = !{!2006, !2007}
!2006 = !DILocalVariable(name: "__c", arg: 1, scope: !2004, file: !1894, line: 101, type: !736)
!2007 = !DILocalVariable(name: "__stream", arg: 2, scope: !2004, file: !1894, line: 101, type: !1922)
!2008 = !DILocation(line: 0, scope: !2004)
!2009 = !DILocation(line: 103, column: 10, scope: !2004)
!2010 = !DILocation(line: 103, column: 3, scope: !2004)
!2011 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1894, file: !1894, line: 108, type: !1987, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "__c", arg: 1, scope: !2011, file: !1894, line: 108, type: !736)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocation(line: 110, column: 10, scope: !2011)
!2016 = !DILocation(line: 110, column: 3, scope: !2011)
!2017 = distinct !DISubprogram(name: "getline", scope: !1894, file: !1894, line: 118, type: !2018, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2022)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!2020, !737, !2021, !1922}
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1949, line: 193, baseType: !848)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2017, file: !1894, line: 118, type: !737)
!2024 = !DILocalVariable(name: "__n", arg: 2, scope: !2017, file: !1894, line: 118, type: !2021)
!2025 = !DILocalVariable(name: "__stream", arg: 3, scope: !2017, file: !1894, line: 118, type: !1922)
!2026 = !DILocation(line: 0, scope: !2017)
!2027 = !DILocation(line: 120, column: 10, scope: !2017)
!2028 = !DILocation(line: 120, column: 3, scope: !2017)
!2029 = distinct !DISubprogram(name: "feof_unlocked", scope: !1894, file: !1894, line: 128, type: !1920, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "__stream", arg: 1, scope: !2029, file: !1894, line: 128, type: !1922)
!2032 = !DILocation(line: 0, scope: !2029)
!2033 = !DILocation(line: 130, column: 10, scope: !2029)
!2034 = !DILocation(line: 130, column: 3, scope: !2029)
!2035 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1894, file: !1894, line: 135, type: !1920, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "__stream", arg: 1, scope: !2035, file: !1894, line: 135, type: !1922)
!2038 = !DILocation(line: 0, scope: !2035)
!2039 = !DILocation(line: 137, column: 10, scope: !2035)
!2040 = !DILocation(line: 137, column: 3, scope: !2035)
!2041 = distinct !DISubprogram(name: "tolower", scope: !2042, file: !2042, line: 207, type: !1987, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2042 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "__c", arg: 1, scope: !2041, file: !2042, line: 207, type: !736)
!2045 = !DILocation(line: 0, scope: !2041)
!2046 = !DILocation(line: 209, column: 22, scope: !2041)
!2047 = !DILocation(line: 209, column: 39, scope: !2041)
!2048 = !DILocation(line: 209, column: 38, scope: !2041)
!2049 = !DILocation(line: 209, column: 37, scope: !2041)
!2050 = !DILocation(line: 209, column: 10, scope: !2041)
!2051 = !DILocation(line: 209, column: 3, scope: !2041)
!2052 = distinct !DISubprogram(name: "toupper", scope: !2042, file: !2042, line: 213, type: !1987, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__c", arg: 1, scope: !2052, file: !2042, line: 213, type: !736)
!2055 = !DILocation(line: 0, scope: !2052)
!2056 = !DILocation(line: 215, column: 22, scope: !2052)
!2057 = !DILocation(line: 215, column: 39, scope: !2052)
!2058 = !DILocation(line: 215, column: 38, scope: !2052)
!2059 = !DILocation(line: 215, column: 37, scope: !2052)
!2060 = !DILocation(line: 215, column: 10, scope: !2052)
!2061 = !DILocation(line: 215, column: 3, scope: !2052)
!2062 = distinct !DISubprogram(name: "atoi", scope: !2063, file: !2063, line: 361, type: !2064, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2063 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!736, !741}
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2062, file: !2063, line: 361, type: !741)
!2068 = !DILocation(line: 0, scope: !2062)
!2069 = !DILocation(line: 363, column: 16, scope: !2062)
!2070 = !DILocation(line: 363, column: 10, scope: !2062)
!2071 = !DILocation(line: 363, column: 3, scope: !2062)
!2072 = distinct !DISubprogram(name: "atol", scope: !2063, file: !2063, line: 366, type: !2073, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!848, !741}
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2072, file: !2063, line: 366, type: !741)
!2077 = !DILocation(line: 0, scope: !2072)
!2078 = !DILocation(line: 368, column: 10, scope: !2072)
!2079 = !DILocation(line: 368, column: 3, scope: !2072)
!2080 = distinct !DISubprogram(name: "atoll", scope: !2063, file: !2063, line: 373, type: !2081, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2084)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !741}
!2083 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2080, file: !2063, line: 373, type: !741)
!2086 = !DILocation(line: 0, scope: !2080)
!2087 = !DILocation(line: 375, column: 10, scope: !2080)
!2088 = !DILocation(line: 375, column: 3, scope: !2080)
!2089 = distinct !DISubprogram(name: "bsearch", scope: !2090, file: !2090, line: 20, type: !2091, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2090 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!740, !1252, !1252, !1267, !1267, !2093}
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2063, line: 808, baseType: !1256)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2095 = !DILocalVariable(name: "__key", arg: 1, scope: !2089, file: !2090, line: 20, type: !1252)
!2096 = !DILocalVariable(name: "__base", arg: 2, scope: !2089, file: !2090, line: 20, type: !1252)
!2097 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2089, file: !2090, line: 20, type: !1267)
!2098 = !DILocalVariable(name: "__size", arg: 4, scope: !2089, file: !2090, line: 20, type: !1267)
!2099 = !DILocalVariable(name: "__compar", arg: 5, scope: !2089, file: !2090, line: 21, type: !2093)
!2100 = !DILocalVariable(name: "__l", scope: !2089, file: !2090, line: 23, type: !1267)
!2101 = !DILocalVariable(name: "__u", scope: !2089, file: !2090, line: 23, type: !1267)
!2102 = !DILocalVariable(name: "__idx", scope: !2089, file: !2090, line: 23, type: !1267)
!2103 = !DILocalVariable(name: "__p", scope: !2089, file: !2090, line: 24, type: !1252)
!2104 = !DILocalVariable(name: "__comparison", scope: !2089, file: !2090, line: 25, type: !736)
!2105 = !DILocation(line: 0, scope: !2089)
!2106 = !DILocation(line: 29, column: 3, scope: !2089)
!2107 = !DILocation(line: 27, column: 7, scope: !2089)
!2108 = !DILocation(line: 29, column: 14, scope: !2089)
!2109 = !DILocation(line: 31, column: 20, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2089, file: !2090, line: 30, column: 5)
!2111 = !DILocation(line: 31, column: 27, scope: !2110)
!2112 = !DILocation(line: 32, column: 56, scope: !2110)
!2113 = !DILocation(line: 32, column: 47, scope: !2110)
!2114 = !DILocation(line: 33, column: 22, scope: !2110)
!2115 = !DILocation(line: 34, column: 24, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !2090, line: 34, column: 11)
!2117 = !DILocation(line: 34, column: 11, scope: !2110)
!2118 = !DILocation(line: 36, column: 29, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !2090, line: 36, column: 16)
!2120 = !DILocation(line: 36, column: 16, scope: !2116)
!2121 = !DILocation(line: 37, column: 14, scope: !2119)
!2122 = distinct !{!2122, !2106, !2123}
!2123 = !DILocation(line: 40, column: 5, scope: !2089)
!2124 = !DILocation(line: 43, column: 1, scope: !2089)
!2125 = distinct !DISubprogram(name: "atof", scope: !2126, file: !2126, line: 25, type: !2127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2129, !741}
!2129 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2125, file: !2126, line: 25, type: !741)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 27, column: 10, scope: !2125)
!2134 = !DILocation(line: 27, column: 3, scope: !2125)
!2135 = distinct !DISubprogram(name: "strtoimax", scope: !2136, file: !2136, line: 324, type: !2137, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2136 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!2139, !1897, !2142, !736}
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2140, line: 101, baseType: !2141)
!2140 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1949, line: 72, baseType: !848)
!2142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !737)
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "nptr", arg: 1, scope: !2135, file: !2136, line: 324, type: !1897)
!2145 = !DILocalVariable(name: "endptr", arg: 2, scope: !2135, file: !2136, line: 324, type: !2142)
!2146 = !DILocalVariable(name: "base", arg: 3, scope: !2135, file: !2136, line: 324, type: !736)
!2147 = !DILocation(line: 0, scope: !2135)
!2148 = !DILocation(line: 327, column: 10, scope: !2135)
!2149 = !DILocation(line: 327, column: 3, scope: !2135)
!2150 = distinct !DISubprogram(name: "strtoumax", scope: !2136, file: !2136, line: 336, type: !2151, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !1897, !2142, !736}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2140, line: 102, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1949, line: 73, baseType: !745)
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "nptr", arg: 1, scope: !2150, file: !2136, line: 336, type: !1897)
!2157 = !DILocalVariable(name: "endptr", arg: 2, scope: !2150, file: !2136, line: 336, type: !2142)
!2158 = !DILocalVariable(name: "base", arg: 3, scope: !2150, file: !2136, line: 336, type: !736)
!2159 = !DILocation(line: 0, scope: !2150)
!2160 = !DILocation(line: 339, column: 10, scope: !2150)
!2161 = !DILocation(line: 339, column: 3, scope: !2150)
!2162 = distinct !DISubprogram(name: "wcstoimax", scope: !2136, file: !2136, line: 348, type: !2163, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2139, !2165, !2169, !736}
!2165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2166)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2136, line: 34, baseType: !736)
!2169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2172 = !{!2173, !2174, !2175}
!2173 = !DILocalVariable(name: "nptr", arg: 1, scope: !2162, file: !2136, line: 348, type: !2165)
!2174 = !DILocalVariable(name: "endptr", arg: 2, scope: !2162, file: !2136, line: 348, type: !2169)
!2175 = !DILocalVariable(name: "base", arg: 3, scope: !2162, file: !2136, line: 348, type: !736)
!2176 = !DILocation(line: 0, scope: !2162)
!2177 = !DILocation(line: 351, column: 10, scope: !2162)
!2178 = !DILocation(line: 351, column: 3, scope: !2162)
!2179 = distinct !DISubprogram(name: "wcstoumax", scope: !2136, file: !2136, line: 362, type: !2180, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2153, !2165, !2169, !736}
!2182 = !{!2183, !2184, !2185}
!2183 = !DILocalVariable(name: "nptr", arg: 1, scope: !2179, file: !2136, line: 362, type: !2165)
!2184 = !DILocalVariable(name: "endptr", arg: 2, scope: !2179, file: !2136, line: 362, type: !2169)
!2185 = !DILocalVariable(name: "base", arg: 3, scope: !2179, file: !2136, line: 362, type: !736)
!2186 = !DILocation(line: 0, scope: !2179)
!2187 = !DILocation(line: 365, column: 10, scope: !2179)
!2188 = !DILocation(line: 365, column: 3, scope: !2179)
!2189 = distinct !DISubprogram(name: "stat", scope: !2190, file: !2190, line: 453, type: !2191, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!736, !741, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2195, line: 46, size: 1152, elements: !2196)
!2195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2196 = !{!2197, !2199, !2201, !2203, !2205, !2207, !2209, !2210, !2211, !2212, !2214, !2216, !2224, !2225, !2226}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2194, file: !2195, line: 48, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1949, line: 145, baseType: !745)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2194, file: !2195, line: 53, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1949, line: 148, baseType: !745)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2194, file: !2195, line: 61, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1949, line: 151, baseType: !745)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2194, file: !2195, line: 62, baseType: !2204, size: 32, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1949, line: 150, baseType: !7)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2194, file: !2195, line: 64, baseType: !2206, size: 32, offset: 224)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1949, line: 146, baseType: !7)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2194, file: !2195, line: 65, baseType: !2208, size: 32, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1949, line: 147, baseType: !7)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2194, file: !2195, line: 67, baseType: !736, size: 32, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2194, file: !2195, line: 69, baseType: !2198, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2194, file: !2195, line: 74, baseType: !1948, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2194, file: !2195, line: 78, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1949, line: 174, baseType: !848)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2194, file: !2195, line: 80, baseType: !2215, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1949, line: 179, baseType: !848)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2194, file: !2195, line: 91, baseType: !2217, size: 128, offset: 576)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2218, line: 10, size: 128, elements: !2219)
!2218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2219 = !{!2220, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2217, file: !2218, line: 12, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1949, line: 160, baseType: !848)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2217, file: !2218, line: 16, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1949, line: 196, baseType: !848)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2194, file: !2195, line: 92, baseType: !2217, size: 128, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2194, file: !2195, line: 93, baseType: !2217, size: 128, offset: 832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2194, file: !2195, line: 106, baseType: !2227, size: 192, offset: 960)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 192, elements: !948)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "__path", arg: 1, scope: !2189, file: !2190, line: 453, type: !741)
!2230 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2189, file: !2190, line: 453, type: !2193)
!2231 = !DILocation(line: 0, scope: !2189)
!2232 = !DILocation(line: 455, column: 10, scope: !2189)
!2233 = !DILocation(line: 455, column: 3, scope: !2189)
!2234 = distinct !DISubprogram(name: "lstat", scope: !2190, file: !2190, line: 460, type: !2191, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "__path", arg: 1, scope: !2234, file: !2190, line: 460, type: !741)
!2237 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2234, file: !2190, line: 460, type: !2193)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !DILocation(line: 462, column: 10, scope: !2234)
!2240 = !DILocation(line: 462, column: 3, scope: !2234)
!2241 = distinct !DISubprogram(name: "fstat", scope: !2190, file: !2190, line: 467, type: !2242, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!736, !736, !2193}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "__fd", arg: 1, scope: !2241, file: !2190, line: 467, type: !736)
!2246 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2241, file: !2190, line: 467, type: !2193)
!2247 = !DILocation(line: 0, scope: !2241)
!2248 = !DILocation(line: 469, column: 10, scope: !2241)
!2249 = !DILocation(line: 469, column: 3, scope: !2241)
!2250 = distinct !DISubprogram(name: "fstatat", scope: !2190, file: !2190, line: 474, type: !2251, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!736, !736, !741, !2193, !736}
!2253 = !{!2254, !2255, !2256, !2257}
!2254 = !DILocalVariable(name: "__fd", arg: 1, scope: !2250, file: !2190, line: 474, type: !736)
!2255 = !DILocalVariable(name: "__filename", arg: 2, scope: !2250, file: !2190, line: 474, type: !741)
!2256 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2250, file: !2190, line: 474, type: !2193)
!2257 = !DILocalVariable(name: "__flag", arg: 4, scope: !2250, file: !2190, line: 474, type: !736)
!2258 = !DILocation(line: 0, scope: !2250)
!2259 = !DILocation(line: 477, column: 10, scope: !2250)
!2260 = !DILocation(line: 477, column: 3, scope: !2250)
!2261 = distinct !DISubprogram(name: "mknod", scope: !2190, file: !2190, line: 483, type: !2262, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!736, !741, !2204, !2198}
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "__path", arg: 1, scope: !2261, file: !2190, line: 483, type: !741)
!2266 = !DILocalVariable(name: "__mode", arg: 2, scope: !2261, file: !2190, line: 483, type: !2204)
!2267 = !DILocalVariable(name: "__dev", arg: 3, scope: !2261, file: !2190, line: 483, type: !2198)
!2268 = !DILocation(line: 0, scope: !2261)
!2269 = !DILocation(line: 485, column: 10, scope: !2261)
!2270 = !DILocation(line: 485, column: 3, scope: !2261)
!2271 = distinct !DISubprogram(name: "mknodat", scope: !2190, file: !2190, line: 491, type: !2272, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!736, !736, !741, !2204, !2198}
!2274 = !{!2275, !2276, !2277, !2278}
!2275 = !DILocalVariable(name: "__fd", arg: 1, scope: !2271, file: !2190, line: 491, type: !736)
!2276 = !DILocalVariable(name: "__path", arg: 2, scope: !2271, file: !2190, line: 491, type: !741)
!2277 = !DILocalVariable(name: "__mode", arg: 3, scope: !2271, file: !2190, line: 491, type: !2204)
!2278 = !DILocalVariable(name: "__dev", arg: 4, scope: !2271, file: !2190, line: 491, type: !2198)
!2279 = !DILocation(line: 0, scope: !2271)
!2280 = !DILocation(line: 494, column: 10, scope: !2271)
!2281 = !DILocation(line: 494, column: 3, scope: !2271)
!2282 = distinct !DISubprogram(name: "stat64", scope: !2190, file: !2190, line: 502, type: !2283, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!736, !741, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2195, line: 119, size: 1152, elements: !2287)
!2287 = !{!2288, !2289, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2301, !2302, !2303, !2304}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2286, file: !2195, line: 121, baseType: !2198, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2286, file: !2195, line: 123, baseType: !2290, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1949, line: 149, baseType: !745)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2286, file: !2195, line: 124, baseType: !2202, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2286, file: !2195, line: 125, baseType: !2204, size: 32, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2286, file: !2195, line: 132, baseType: !2206, size: 32, offset: 224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2286, file: !2195, line: 133, baseType: !2208, size: 32, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2286, file: !2195, line: 135, baseType: !736, size: 32, offset: 288)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2286, file: !2195, line: 136, baseType: !2198, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2286, file: !2195, line: 137, baseType: !1948, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2286, file: !2195, line: 143, baseType: !2213, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2286, file: !2195, line: 144, baseType: !2300, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1949, line: 180, baseType: !848)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2286, file: !2195, line: 152, baseType: !2217, size: 128, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2286, file: !2195, line: 153, baseType: !2217, size: 128, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2286, file: !2195, line: 154, baseType: !2217, size: 128, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2286, file: !2195, line: 164, baseType: !2227, size: 192, offset: 960)
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "__path", arg: 1, scope: !2282, file: !2190, line: 502, type: !741)
!2307 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2282, file: !2190, line: 502, type: !2285)
!2308 = !DILocation(line: 0, scope: !2282)
!2309 = !DILocation(line: 504, column: 10, scope: !2282)
!2310 = !DILocation(line: 504, column: 3, scope: !2282)
!2311 = distinct !DISubprogram(name: "lstat64", scope: !2190, file: !2190, line: 509, type: !2283, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "__path", arg: 1, scope: !2311, file: !2190, line: 509, type: !741)
!2314 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2311, file: !2190, line: 509, type: !2285)
!2315 = !DILocation(line: 0, scope: !2311)
!2316 = !DILocation(line: 511, column: 10, scope: !2311)
!2317 = !DILocation(line: 511, column: 3, scope: !2311)
!2318 = distinct !DISubprogram(name: "fstat64", scope: !2190, file: !2190, line: 516, type: !2319, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!736, !736, !2285}
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "__fd", arg: 1, scope: !2318, file: !2190, line: 516, type: !736)
!2323 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2318, file: !2190, line: 516, type: !2285)
!2324 = !DILocation(line: 0, scope: !2318)
!2325 = !DILocation(line: 518, column: 10, scope: !2318)
!2326 = !DILocation(line: 518, column: 3, scope: !2318)
!2327 = distinct !DISubprogram(name: "fstatat64", scope: !2190, file: !2190, line: 523, type: !2328, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!736, !736, !741, !2285, !736}
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DILocalVariable(name: "__fd", arg: 1, scope: !2327, file: !2190, line: 523, type: !736)
!2332 = !DILocalVariable(name: "__filename", arg: 2, scope: !2327, file: !2190, line: 523, type: !741)
!2333 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2327, file: !2190, line: 523, type: !2285)
!2334 = !DILocalVariable(name: "__flag", arg: 4, scope: !2327, file: !2190, line: 523, type: !736)
!2335 = !DILocation(line: 0, scope: !2327)
!2336 = !DILocation(line: 526, column: 10, scope: !2327)
!2337 = !DILocation(line: 526, column: 3, scope: !2327)
!2338 = distinct !DISubprogram(name: "debug_value_data", scope: !3, file: !3, line: 1061, type: !2339, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !746}
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DILocalVariable(name: "vd", arg: 1, scope: !2338, file: !3, line: 1061, type: !746)
!2343 = !DILocalVariable(name: "set", scope: !2338, file: !3, line: 1063, type: !743)
!2344 = !DILocalVariable(name: "i", scope: !2338, file: !3, line: 1064, type: !7)
!2345 = !DILocalVariable(name: "j", scope: !2338, file: !3, line: 1064, type: !7)
!2346 = !DILocation(line: 0, scope: !2338)
!2347 = !DILocation(line: 1068, column: 8, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1068, column: 3)
!2349 = !DILocation(line: 0, scope: !2348)
!2350 = !DILocation(line: 1066, column: 3, scope: !2338)
!2351 = !DILocation(line: 1068, column: 17, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1068, column: 3)
!2353 = !DILocation(line: 1068, column: 3, scope: !2348)
!2354 = !DILocation(line: 1104, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1104, column: 3)
!2356 = !DILocation(line: 1069, column: 18, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 1069, column: 9)
!2358 = !DILocation(line: 1069, column: 31, scope: !2357)
!2359 = !DILocation(line: 1069, column: 9, scope: !2352)
!2360 = !DILocation(line: 1071, column: 15, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 1071, column: 6)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1070, column: 7)
!2363 = !DILocation(line: 1071, column: 20, scope: !2361)
!2364 = !DILocation(line: 1071, column: 6, scope: !2362)
!2365 = !DILocation(line: 1073, column: 19, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 1073, column: 10)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 1072, column: 4)
!2368 = !DILocation(line: 1073, column: 30, scope: !2366)
!2369 = !DILocation(line: 1073, column: 10, scope: !2367)
!2370 = !DILocation(line: 1074, column: 17, scope: !2366)
!2371 = !DILocation(line: 1074, column: 8, scope: !2366)
!2372 = !DILocation(line: 1079, column: 2, scope: !2362)
!2373 = !DILocation(line: 1080, column: 11, scope: !2362)
!2374 = !DILocation(line: 1080, column: 34, scope: !2362)
!2375 = !DILocation(line: 1080, column: 2, scope: !2362)
!2376 = !DILocation(line: 1082, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 1082, column: 2)
!2378 = !DILocation(line: 0, scope: !2362)
!2379 = !DILocation(line: 0, scope: !2377)
!2380 = !DILocation(line: 1083, column: 9, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1082, column: 2)
!2382 = !DILocation(line: 1082, column: 2, scope: !2377)
!2383 = !DILocation(line: 1086, column: 10, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1086, column: 10)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1085, column: 4)
!2386 = !DILocation(line: 1086, column: 10, scope: !2385)
!2387 = !DILocation(line: 1088, column: 12, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1087, column: 8)
!2389 = !DILocation(line: 1088, column: 3, scope: !2388)
!2390 = !DILocation(line: 1089, column: 3, scope: !2388)
!2391 = !DILocation(line: 1092, column: 19, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1092, column: 10)
!2393 = !DILocation(line: 1092, column: 32, scope: !2392)
!2394 = !DILocation(line: 1092, column: 10, scope: !2385)
!2395 = !DILocation(line: 1094, column: 12, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1093, column: 8)
!2397 = !DILocation(line: 1094, column: 3, scope: !2396)
!2398 = !DILocation(line: 1096, column: 3, scope: !2396)
!2399 = !DILocation(line: 1098, column: 6, scope: !2385)
!2400 = !DILocation(line: 1099, column: 15, scope: !2385)
!2401 = !DILocation(line: 1099, column: 38, scope: !2385)
!2402 = !DILocation(line: 1099, column: 6, scope: !2385)
!2403 = !DILocation(line: 1082, column: 2, scope: !2381)
!2404 = distinct !{!2404, !2382, !2405}
!2405 = !DILocation(line: 1100, column: 4, scope: !2377)
!2406 = !DILocation(line: 1101, column: 15, scope: !2362)
!2407 = !DILocation(line: 1101, column: 2, scope: !2362)
!2408 = !DILocation(line: 1102, column: 7, scope: !2362)
!2409 = !DILocation(line: 1068, column: 42, scope: !2352)
!2410 = !DILocation(line: 1068, column: 3, scope: !2352)
!2411 = distinct !{!2411, !2353, !2412}
!2412 = !DILocation(line: 1102, column: 7, scope: !2348)
!2413 = !DILocation(line: 0, scope: !2355)
!2414 = !DILocation(line: 1104, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 1104, column: 3)
!2416 = !DILocation(line: 1105, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1105, column: 9)
!2418 = !DILocation(line: 1106, column: 2, scope: !2417)
!2419 = !DILocation(line: 1106, column: 15, scope: !2417)
!2420 = !DILocation(line: 1106, column: 20, scope: !2417)
!2421 = !DILocation(line: 1107, column: 6, scope: !2417)
!2422 = !DILocation(line: 0, scope: !2417)
!2423 = !DILocation(line: 1110, column: 52, scope: !2417)
!2424 = !DILocation(line: 1107, column: 18, scope: !2417)
!2425 = !DILocation(line: 1107, column: 31, scope: !2417)
!2426 = !DILocation(line: 1108, column: 6, scope: !2417)
!2427 = !DILocation(line: 1108, column: 18, scope: !2417)
!2428 = !DILocation(line: 1108, column: 29, scope: !2417)
!2429 = !DILocation(line: 1105, column: 9, scope: !2415)
!2430 = !DILocation(line: 1109, column: 16, scope: !2417)
!2431 = !DILocation(line: 1110, column: 12, scope: !2417)
!2432 = !DILocation(line: 1111, column: 18, scope: !2417)
!2433 = !DILocation(line: 1109, column: 7, scope: !2417)
!2434 = !DILocation(line: 1104, column: 42, scope: !2415)
!2435 = !DILocation(line: 1104, column: 3, scope: !2415)
!2436 = distinct !{!2436, !2354, !2437}
!2437 = !DILocation(line: 1111, column: 28, scope: !2355)
!2438 = !DILocation(line: 1112, column: 1, scope: !2338)
!2439 = distinct !DISubprogram(name: "gate_handle_cprop", scope: !3, file: !3, line: 1163, type: !1872, scopeLine: 1164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!2440 = !DILocation(line: 1165, column: 11, scope: !2439)
!2441 = !DILocation(line: 1165, column: 20, scope: !2439)
!2442 = !DILocation(line: 1165, column: 24, scope: !2439)
!2443 = !DILocation(line: 1165, column: 10, scope: !2439)
!2444 = !DILocation(line: 1165, column: 3, scope: !2439)
!2445 = distinct !DISubprogram(name: "copyprop_hardreg_forward", scope: !3, file: !3, line: 974, type: !1876, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2446 = !{!2447, !2448, !2449, !2460, !2461, !2469, !2476}
!2447 = !DILocalVariable(name: "all_vd", scope: !2445, file: !3, line: 976, type: !746)
!2448 = !DILocalVariable(name: "bb", scope: !2445, file: !3, line: 977, type: !1134)
!2449 = !DILocalVariable(name: "visited", scope: !2445, file: !3, line: 978, type: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2451, line: 45, baseType: !2452)
!2451 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2451, line: 39, size: 192, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2453, file: !2451, line: 41, baseType: !734, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2453, file: !2451, line: 42, baseType: !7, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2453, file: !2451, line: 43, baseType: !7, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2453, file: !2451, line: 44, baseType: !2459, size: 64, offset: 128)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 64, elements: !797)
!2460 = !DILocalVariable(name: "analyze_called", scope: !2445, file: !3, line: 979, type: !735)
!2461 = !DILocalVariable(name: "regno", scope: !2462, file: !3, line: 1006, type: !7)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1005, column: 6)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1004, column: 8)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1002, column: 2)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 999, column: 11)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 992, column: 5)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 991, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 991, column: 3)
!2469 = !DILocalVariable(name: "regno", scope: !2470, file: !3, line: 1031, type: !7)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1030, column: 4)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1028, column: 6)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1027, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1027, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1026, column: 5)
!2475 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1025, column: 7)
!2476 = !DILocalVariable(name: "live", scope: !2470, file: !3, line: 1032, type: !2477)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !763, line: 47, baseType: !816)
!2478 = !DILocation(line: 0, scope: !2445)
!2479 = !DILocation(line: 981, column: 12, scope: !2445)
!2480 = !DILocation(line: 983, column: 28, scope: !2445)
!2481 = !DILocation(line: 983, column: 13, scope: !2445)
!2482 = !DILocation(line: 984, column: 3, scope: !2445)
!2483 = !DILocation(line: 986, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 986, column: 7)
!2485 = !DILocation(line: 986, column: 7, scope: !2445)
!2486 = !DILocation(line: 988, column: 9, scope: !2484)
!2487 = !DILocation(line: 988, column: 7, scope: !2484)
!2488 = !DILocation(line: 987, column: 5, scope: !2484)
!2489 = !DILocation(line: 991, column: 3, scope: !2468)
!2490 = !DILocation(line: 991, column: 3, scope: !2467)
!2491 = !DILocation(line: 0, scope: !2468)
!2492 = !DILocation(line: 993, column: 29, scope: !2466)
!2493 = !DILocation(line: 993, column: 7, scope: !2466)
!2494 = !DILocation(line: 999, column: 11, scope: !2465)
!2495 = !DILocation(line: 1000, column: 4, scope: !2465)
!2496 = !DILocation(line: 1000, column: 7, scope: !2465)
!2497 = !DILocation(line: 1001, column: 4, scope: !2465)
!2498 = !DILocation(line: 1001, column: 10, scope: !2465)
!2499 = !DILocation(line: 1001, column: 33, scope: !2465)
!2500 = !DILocation(line: 1001, column: 39, scope: !2465)
!2501 = !DILocation(line: 999, column: 11, scope: !2466)
!2502 = !DILocation(line: 1003, column: 15, scope: !2464)
!2503 = !DILocation(line: 1003, column: 4, scope: !2464)
!2504 = !DILocation(line: 1003, column: 31, scope: !2464)
!2505 = !DILocation(line: 1003, column: 49, scope: !2464)
!2506 = !DILocation(line: 1003, column: 24, scope: !2464)
!2507 = !DILocation(line: 1004, column: 19, scope: !2463)
!2508 = !DILocation(line: 1004, column: 8, scope: !2463)
!2509 = !DILocation(line: 1004, column: 26, scope: !2463)
!2510 = !DILocation(line: 1004, column: 8, scope: !2464)
!2511 = !DILocation(line: 1008, column: 8, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1008, column: 8)
!2513 = !DILocation(line: 0, scope: !2512)
!2514 = !DILocation(line: 0, scope: !2462)
!2515 = !DILocation(line: 1008, column: 30, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1008, column: 8)
!2517 = !DILocation(line: 1010, column: 20, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1010, column: 9)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 1009, column: 3)
!2520 = !DILocation(line: 1010, column: 9, scope: !2518)
!2521 = !DILocation(line: 1010, column: 36, scope: !2518)
!2522 = !DILocation(line: 1010, column: 9, scope: !2519)
!2523 = !DILocation(line: 1012, column: 55, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1011, column: 7)
!2525 = !DILocation(line: 1013, column: 26, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1013, column: 13)
!2527 = !DILocation(line: 1013, column: 15, scope: !2526)
!2528 = !DILocation(line: 1013, column: 33, scope: !2526)
!2529 = !DILocation(line: 1013, column: 13, scope: !2526)
!2530 = !DILocation(line: 1013, column: 54, scope: !2526)
!2531 = !DILocation(line: 1013, column: 13, scope: !2524)
!2532 = !DILocation(line: 1008, column: 60, scope: !2516)
!2533 = !DILocation(line: 1008, column: 8, scope: !2516)
!2534 = distinct !{!2534, !2511, !2535}
!2535 = !DILocation(line: 1016, column: 3, scope: !2512)
!2536 = !DILocation(line: 1020, column: 32, scope: !2465)
!2537 = !DILocation(line: 1020, column: 26, scope: !2465)
!2538 = !DILocation(line: 1020, column: 2, scope: !2465)
!2539 = !DILocation(line: 1022, column: 52, scope: !2466)
!2540 = !DILocation(line: 1022, column: 46, scope: !2466)
!2541 = !DILocation(line: 1022, column: 7, scope: !2466)
!2542 = !DILocation(line: 0, scope: !2467)
!2543 = distinct !{!2543, !2489, !2544}
!2544 = !DILocation(line: 1023, column: 5, scope: !2468)
!2545 = !DILocation(line: 1025, column: 7, scope: !2475)
!2546 = !DILocation(line: 1025, column: 7, scope: !2445)
!2547 = !DILocation(line: 1027, column: 7, scope: !2473)
!2548 = !DILocation(line: 1027, column: 7, scope: !2472)
!2549 = !DILocation(line: 979, column: 8, scope: !2445)
!2550 = !DILocation(line: 0, scope: !2473)
!2551 = !DILocation(line: 1028, column: 6, scope: !2471)
!2552 = !DILocation(line: 1029, column: 6, scope: !2471)
!2553 = !DILocation(line: 1029, column: 9, scope: !2471)
!2554 = !DILocation(line: 1029, column: 27, scope: !2471)
!2555 = !DILocation(line: 1028, column: 6, scope: !2472)
!2556 = !DILocation(line: 1034, column: 11, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1034, column: 10)
!2558 = !DILocation(line: 1034, column: 10, scope: !2470)
!2559 = !DILocation(line: 1036, column: 3, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1035, column: 8)
!2561 = !DILocation(line: 1038, column: 8, scope: !2560)
!2562 = !DILocation(line: 1039, column: 13, scope: !2470)
!2563 = !DILocation(line: 0, scope: !2470)
!2564 = !DILocation(line: 1040, column: 11, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1040, column: 6)
!2566 = !DILocation(line: 0, scope: !2565)
!2567 = !DILocation(line: 1040, column: 28, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1040, column: 6)
!2569 = !DILocation(line: 1040, column: 6, scope: !2565)
!2570 = !DILocation(line: 1041, column: 23, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1041, column: 12)
!2572 = !DILocation(line: 1041, column: 12, scope: !2571)
!2573 = !DILocation(line: 1041, column: 39, scope: !2571)
!2574 = !DILocation(line: 1041, column: 12, scope: !2568)
!2575 = !DILocation(line: 1043, column: 9, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1043, column: 9)
!2577 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1042, column: 3)
!2578 = !DILocation(line: 1043, column: 9, scope: !2577)
!2579 = !DILocation(line: 1044, column: 46, scope: !2576)
!2580 = !DILocation(line: 1044, column: 40, scope: !2576)
!2581 = !DILocation(line: 1044, column: 7, scope: !2576)
!2582 = !DILocation(line: 1045, column: 20, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1045, column: 9)
!2584 = !DILocation(line: 1045, column: 9, scope: !2583)
!2585 = !DILocation(line: 1045, column: 27, scope: !2583)
!2586 = !DILocation(line: 1045, column: 48, scope: !2583)
!2587 = !DILocation(line: 1045, column: 9, scope: !2577)
!2588 = !DILocation(line: 1040, column: 58, scope: !2568)
!2589 = !DILocation(line: 1040, column: 6, scope: !2568)
!2590 = distinct !{!2590, !2569, !2591}
!2591 = !DILocation(line: 1047, column: 3, scope: !2565)
!2592 = !DILocation(line: 0, scope: !2472)
!2593 = distinct !{!2593, !2547, !2594}
!2594 = !DILocation(line: 1048, column: 4, scope: !2473)
!2595 = !DILocation(line: 1050, column: 24, scope: !2474)
!2596 = !DILocation(line: 1050, column: 7, scope: !2474)
!2597 = !DILocation(line: 1051, column: 5, scope: !2474)
!2598 = !DILocation(line: 1053, column: 3, scope: !2445)
!2599 = !DILocation(line: 1054, column: 3, scope: !2445)
!2600 = !DILocation(line: 1055, column: 3, scope: !2445)
!2601 = distinct !DISubprogram(name: "SET_BIT", scope: !2451, file: !2451, line: 63, type: !2602, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !2450, !7}
!2604 = !{!2605, !2606, !2607}
!2605 = !DILocalVariable(name: "map", arg: 1, scope: !2601, file: !2451, line: 63, type: !2450)
!2606 = !DILocalVariable(name: "bitno", arg: 2, scope: !2601, file: !2451, line: 63, type: !7)
!2607 = !DILocalVariable(name: "oldbit", scope: !2608, file: !2451, line: 67, type: !735)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !2451, line: 66, column: 5)
!2609 = distinct !DILexicalBlock(scope: !2601, file: !2451, line: 65, column: 7)
!2610 = !DILocation(line: 0, scope: !2601)
!2611 = !DILocation(line: 65, column: 12, scope: !2609)
!2612 = !DILocation(line: 65, column: 7, scope: !2609)
!2613 = !DILocation(line: 65, column: 7, scope: !2601)
!2614 = !DILocation(line: 73, column: 40, scope: !2601)
!2615 = !DILocation(line: 73, column: 29, scope: !2601)
!2616 = !DILocation(line: 72, column: 19, scope: !2601)
!2617 = !DILocation(line: 72, column: 3, scope: !2601)
!2618 = !DILocation(line: 68, column: 16, scope: !2608)
!2619 = !DILocation(line: 69, column: 12, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2608, file: !2451, line: 69, column: 11)
!2621 = !DILocation(line: 69, column: 11, scope: !2608)
!2622 = !DILocation(line: 70, column: 2, scope: !2620)
!2623 = !DILocation(line: 70, column: 41, scope: !2620)
!2624 = !DILocation(line: 73, column: 5, scope: !2601)
!2625 = !DILocation(line: 74, column: 1, scope: !2601)
!2626 = distinct !DISubprogram(name: "single_pred_p", scope: !135, file: !135, line: 634, type: !2627, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2632)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!735, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !763, line: 112, baseType: !2630)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!2632 = !{!2633}
!2633 = !DILocalVariable(name: "bb", arg: 1, scope: !2626, file: !135, line: 634, type: !2629)
!2634 = !DILocation(line: 0, scope: !2626)
!2635 = !DILocation(line: 636, column: 10, scope: !2626)
!2636 = !DILocation(line: 636, column: 33, scope: !2626)
!2637 = !DILocation(line: 636, column: 3, scope: !2626)
!2638 = distinct !DISubprogram(name: "single_pred", scope: !135, file: !135, line: 672, type: !2639, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!1134, !2629}
!2641 = !{!2642}
!2642 = !DILocalVariable(name: "bb", arg: 1, scope: !2638, file: !135, line: 672, type: !2629)
!2643 = !DILocation(line: 0, scope: !2638)
!2644 = !DILocation(line: 674, column: 10, scope: !2638)
!2645 = !DILocation(line: 674, column: 33, scope: !2638)
!2646 = !DILocation(line: 674, column: 3, scope: !2638)
!2647 = distinct !DISubprogram(name: "single_pred_edge", scope: !135, file: !135, line: 653, type: !2648, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!1151, !2629}
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "bb", arg: 1, scope: !2647, file: !135, line: 653, type: !2629)
!2652 = !DILocation(line: 0, scope: !2647)
!2653 = !DILocation(line: 655, column: 3, scope: !2647)
!2654 = !DILocation(line: 656, column: 10, scope: !2647)
!2655 = !DILocation(line: 656, column: 3, scope: !2647)
!2656 = distinct !DISubprogram(name: "init_value_data", scope: !3, file: !3, line: 233, type: !2339, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2657)
!2657 = !{!2658, !2659}
!2658 = !DILocalVariable(name: "vd", arg: 1, scope: !2656, file: !3, line: 233, type: !746)
!2659 = !DILocalVariable(name: "i", scope: !2656, file: !3, line: 235, type: !736)
!2660 = !DILocation(line: 0, scope: !2656)
!2661 = !DILocation(line: 236, column: 8, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 236, column: 3)
!2663 = !DILocation(line: 0, scope: !2662)
!2664 = !DILocation(line: 236, column: 17, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 236, column: 3)
!2666 = !DILocation(line: 236, column: 3, scope: !2662)
!2667 = !DILocation(line: 238, column: 16, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 237, column: 5)
!2669 = !DILocation(line: 238, column: 21, scope: !2668)
!2670 = !DILocation(line: 239, column: 16, scope: !2668)
!2671 = !DILocation(line: 239, column: 29, scope: !2668)
!2672 = !DILocation(line: 240, column: 16, scope: !2668)
!2673 = !DILocation(line: 240, column: 27, scope: !2668)
!2674 = !DILocation(line: 241, column: 16, scope: !2668)
!2675 = !DILocation(line: 241, column: 35, scope: !2668)
!2676 = !DILocation(line: 236, column: 42, scope: !2665)
!2677 = !DILocation(line: 236, column: 3, scope: !2665)
!2678 = distinct !{!2678, !2666, !2679}
!2679 = !DILocation(line: 242, column: 5, scope: !2662)
!2680 = !DILocation(line: 243, column: 7, scope: !2656)
!2681 = !DILocation(line: 243, column: 22, scope: !2656)
!2682 = !DILocation(line: 244, column: 7, scope: !2656)
!2683 = !DILocation(line: 244, column: 28, scope: !2656)
!2684 = !DILocation(line: 245, column: 1, scope: !2656)
!2685 = distinct !DISubprogram(name: "copyprop_hardreg_forward_1", scope: !3, file: !3, line: 734, type: !2686, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!735, !1134, !746}
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2707, !2708, !2713, !2717, !2720, !2721, !2722, !2723, !2724, !2730, !2731, !2740, !2741}
!2689 = !DILocalVariable(name: "bb", arg: 1, scope: !2685, file: !3, line: 734, type: !1134)
!2690 = !DILocalVariable(name: "vd", arg: 2, scope: !2685, file: !3, line: 734, type: !746)
!2691 = !DILocalVariable(name: "anything_changed", scope: !2685, file: !3, line: 736, type: !735)
!2692 = !DILocalVariable(name: "insn", scope: !2685, file: !3, line: 737, type: !762)
!2693 = !DILocalVariable(name: "n_ops", scope: !2694, file: !3, line: 741, type: !736)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 740, column: 5)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 739, column: 3)
!2696 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 739, column: 3)
!2697 = !DILocalVariable(name: "i", scope: !2694, file: !3, line: 741, type: !736)
!2698 = !DILocalVariable(name: "alt", scope: !2694, file: !3, line: 741, type: !736)
!2699 = !DILocalVariable(name: "predicated", scope: !2694, file: !3, line: 741, type: !736)
!2700 = !DILocalVariable(name: "is_asm", scope: !2694, file: !3, line: 742, type: !735)
!2701 = !DILocalVariable(name: "any_replacements", scope: !2694, file: !3, line: 742, type: !735)
!2702 = !DILocalVariable(name: "set", scope: !2694, file: !3, line: 743, type: !762)
!2703 = !DILocalVariable(name: "replaced", scope: !2694, file: !3, line: 744, type: !2704)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 240, elements: !2705)
!2705 = !{!2706}
!2706 = !DISubrange(count: 30)
!2707 = !DILocalVariable(name: "changed", scope: !2694, file: !3, line: 745, type: !735)
!2708 = !DILocalVariable(name: "loc", scope: !2709, file: !3, line: 751, type: !762)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 750, column: 6)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 749, column: 8)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 748, column: 2)
!2712 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 747, column: 11)
!2713 = !DILocalVariable(name: "matches", scope: !2714, file: !3, line: 780, type: !736)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 779, column: 2)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 778, column: 7)
!2716 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 778, column: 7)
!2717 = !DILocalVariable(name: "src", scope: !2718, file: !3, line: 815, type: !762)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 814, column: 2)
!2719 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 813, column: 11)
!2720 = !DILocalVariable(name: "regno", scope: !2718, file: !3, line: 816, type: !7)
!2721 = !DILocalVariable(name: "mode", scope: !2718, file: !3, line: 817, type: !5)
!2722 = !DILocalVariable(name: "i", scope: !2718, file: !3, line: 818, type: !7)
!2723 = !DILocalVariable(name: "new_rtx", scope: !2718, file: !3, line: 819, type: !762)
!2724 = !DILocalVariable(name: "j", scope: !2725, file: !3, line: 914, type: !736)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 913, column: 6)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 912, column: 8)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 876, column: 2)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 875, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 875, column: 7)
!2730 = !DILocalVariable(name: "new_rtx", scope: !2725, file: !3, line: 915, type: !762)
!2731 = !DILocalVariable(name: "old", scope: !2732, file: !3, line: 934, type: !762)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 933, column: 5)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 932, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 931, column: 8)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 931, column: 8)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 930, column: 6)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 929, column: 8)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 928, column: 2)
!2739 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 927, column: 11)
!2740 = !DILabel(scope: !2694, name: "no_move_special_case", file: !3, line: 869)
!2741 = !DILabel(scope: !2694, name: "did_replacement", file: !3, line: 947)
!2742 = !DILocation(line: 0, scope: !2685)
!2743 = !DILocation(line: 739, column: 15, scope: !2696)
!2744 = !DILocation(line: 0, scope: !2694)
!2745 = !DILocation(line: 0, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 789, column: 11)
!2747 = !DILocation(line: 739, column: 8, scope: !2696)
!2748 = !DILocation(line: 736, column: 8, scope: !2685)
!2749 = !DILocation(line: 0, scope: !2696)
!2750 = !DILocation(line: 744, column: 7, scope: !2694)
!2751 = !DILocation(line: 744, column: 12, scope: !2694)
!2752 = !DILocation(line: 747, column: 12, scope: !2712)
!2753 = !DILocation(line: 747, column: 11, scope: !2694)
!2754 = !DILocation(line: 749, column: 8, scope: !2710)
!2755 = !DILocation(line: 749, column: 8, scope: !2711)
!2756 = !DILocation(line: 751, column: 18, scope: !2709)
!2757 = !DILocation(line: 0, scope: !2709)
!2758 = !DILocation(line: 752, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 752, column: 12)
!2760 = !DILocation(line: 752, column: 12, scope: !2709)
!2761 = !DILocation(line: 754, column: 19, scope: !2759)
!2762 = !DILocation(line: 753, column: 3, scope: !2759)
!2763 = !DILocation(line: 758, column: 16, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 758, column: 8)
!2765 = !DILocation(line: 758, column: 13, scope: !2764)
!2766 = !DILocation(line: 0, scope: !2764)
!2767 = !DILocation(line: 764, column: 13, scope: !2694)
!2768 = !DILocation(line: 765, column: 7, scope: !2694)
!2769 = !DILocation(line: 766, column: 13, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 766, column: 11)
!2771 = !DILocation(line: 766, column: 11, scope: !2694)
!2772 = !DILocation(line: 767, column: 2, scope: !2770)
!2773 = !DILocation(line: 768, column: 7, scope: !2694)
!2774 = !DILocation(line: 769, column: 13, scope: !2694)
!2775 = !DILocation(line: 770, column: 26, scope: !2694)
!2776 = !DILocation(line: 771, column: 31, scope: !2694)
!2777 = !DILocation(line: 771, column: 16, scope: !2694)
!2778 = !DILocation(line: 777, column: 20, scope: !2694)
!2779 = !DILocation(line: 777, column: 46, scope: !2694)
!2780 = !DILocation(line: 0, scope: !2714)
!2781 = !DILocation(line: 778, column: 12, scope: !2716)
!2782 = !DILocation(line: 0, scope: !2716)
!2783 = !DILocation(line: 778, column: 21, scope: !2715)
!2784 = !DILocation(line: 778, column: 7, scope: !2716)
!2785 = !DILocation(line: 780, column: 39, scope: !2714)
!2786 = !DILocation(line: 781, column: 16, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 781, column: 8)
!2788 = !DILocation(line: 781, column: 8, scope: !2714)
!2789 = !DILocation(line: 782, column: 32, scope: !2787)
!2790 = !DILocation(line: 782, column: 59, scope: !2787)
!2791 = !DILocation(line: 782, column: 27, scope: !2787)
!2792 = !DILocation(line: 782, column: 30, scope: !2787)
!2793 = !DILocation(line: 782, column: 6, scope: !2787)
!2794 = !DILocation(line: 783, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 783, column: 8)
!2796 = !DILocation(line: 783, column: 45, scope: !2795)
!2797 = !DILocation(line: 783, column: 53, scope: !2795)
!2798 = !DILocation(line: 784, column: 8, scope: !2795)
!2799 = !DILocation(line: 784, column: 26, scope: !2795)
!2800 = !DILocation(line: 784, column: 53, scope: !2795)
!2801 = !DILocation(line: 783, column: 8, scope: !2714)
!2802 = !DILocation(line: 785, column: 6, scope: !2795)
!2803 = !DILocation(line: 785, column: 33, scope: !2795)
!2804 = !DILocation(line: 778, column: 30, scope: !2715)
!2805 = !DILocation(line: 778, column: 7, scope: !2715)
!2806 = distinct !{!2806, !2784, !2807}
!2807 = !DILocation(line: 786, column: 2, scope: !2716)
!2808 = !DILocation(line: 789, column: 15, scope: !2746)
!2809 = !DILocation(line: 784, column: 23, scope: !2795)
!2810 = !DILocation(line: 789, column: 11, scope: !2746)
!2811 = !DILocation(line: 789, column: 11, scope: !2694)
!2812 = !DILocation(line: 790, column: 2, scope: !2746)
!2813 = !DILocation(line: 793, column: 12, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 793, column: 7)
!2815 = !DILocation(line: 0, scope: !2814)
!2816 = !DILocation(line: 793, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 793, column: 7)
!2818 = !DILocation(line: 793, column: 7, scope: !2814)
!2819 = !DILocation(line: 794, column: 27, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 794, column: 6)
!2821 = !DILocation(line: 794, column: 6, scope: !2820)
!2822 = !DILocation(line: 794, column: 6, scope: !2817)
!2823 = !DILocation(line: 795, column: 16, scope: !2820)
!2824 = !DILocation(line: 795, column: 4, scope: !2820)
!2825 = !DILocation(line: 793, column: 31, scope: !2817)
!2826 = !DILocation(line: 793, column: 7, scope: !2817)
!2827 = distinct !{!2827, !2818, !2828}
!2828 = !DILocation(line: 795, column: 41, scope: !2814)
!2829 = !DILocation(line: 800, column: 20, scope: !2694)
!2830 = !DILocation(line: 800, column: 7, scope: !2694)
!2831 = !DILocation(line: 804, column: 7, scope: !2694)
!2832 = !DILocation(line: 807, column: 12, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 807, column: 7)
!2834 = !DILocation(line: 0, scope: !2833)
!2835 = !DILocation(line: 807, column: 21, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 807, column: 7)
!2837 = !DILocation(line: 807, column: 7, scope: !2833)
!2838 = !DILocation(line: 808, column: 27, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 808, column: 6)
!2840 = !DILocation(line: 808, column: 6, scope: !2839)
!2841 = !DILocation(line: 808, column: 6, scope: !2836)
!2842 = !DILocation(line: 809, column: 16, scope: !2839)
!2843 = !DILocation(line: 809, column: 4, scope: !2839)
!2844 = !DILocation(line: 807, column: 31, scope: !2836)
!2845 = !DILocation(line: 807, column: 7, scope: !2836)
!2846 = distinct !{!2846, !2837, !2847}
!2847 = !DILocation(line: 809, column: 41, scope: !2833)
!2848 = !DILocation(line: 813, column: 11, scope: !2719)
!2849 = !DILocation(line: 813, column: 15, scope: !2719)
!2850 = !DILocation(line: 813, column: 18, scope: !2719)
!2851 = !DILocation(line: 813, column: 11, scope: !2694)
!2852 = !DILocation(line: 815, column: 14, scope: !2718)
!2853 = !DILocation(line: 0, scope: !2718)
!2854 = !DILocation(line: 816, column: 25, scope: !2718)
!2855 = !DILocation(line: 817, column: 29, scope: !2718)
!2856 = !DILocation(line: 823, column: 16, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 823, column: 8)
!2858 = !DILocation(line: 823, column: 29, scope: !2857)
!2859 = !DILocation(line: 823, column: 13, scope: !2857)
!2860 = !DILocation(line: 823, column: 8, scope: !2718)
!2861 = !DILocation(line: 825, column: 12, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 825, column: 12)
!2863 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 824, column: 6)
!2864 = !DILocation(line: 826, column: 7, scope: !2862)
!2865 = !DILocation(line: 826, column: 5, scope: !2862)
!2866 = !DILocation(line: 825, column: 12, scope: !2863)
!2867 = !DILocation(line: 832, column: 8, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 832, column: 8)
!2869 = !DILocation(line: 832, column: 8, scope: !2718)
!2870 = !DILocation(line: 834, column: 41, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 833, column: 6)
!2872 = !DILocation(line: 834, column: 18, scope: !2871)
!2873 = !DILocation(line: 835, column: 12, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 835, column: 12)
!2875 = !DILocation(line: 835, column: 20, scope: !2874)
!2876 = !DILocation(line: 835, column: 23, scope: !2874)
!2877 = !DILocation(line: 835, column: 12, scope: !2871)
!2878 = !DILocation(line: 837, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 837, column: 9)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 836, column: 3)
!2881 = !DILocation(line: 837, column: 9, scope: !2880)
!2882 = !DILocation(line: 840, column: 9, scope: !2879)
!2883 = !DILocation(line: 840, column: 33, scope: !2879)
!2884 = !DILocation(line: 838, column: 7, scope: !2879)
!2885 = !DILocation(line: 847, column: 26, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 847, column: 4)
!2887 = !DILocation(line: 847, column: 9, scope: !2886)
!2888 = !DILocation(line: 0, scope: !2886)
!2889 = !DILocation(line: 847, column: 42, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 847, column: 4)
!2891 = !DILocation(line: 847, column: 4, scope: !2886)
!2892 = !DILocation(line: 850, column: 37, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 849, column: 6)
!2894 = !DILocation(line: 850, column: 46, scope: !2893)
!2895 = !DILocation(line: 850, column: 65, scope: !2893)
!2896 = !DILocation(line: 850, column: 18, scope: !2893)
!2897 = !DILocation(line: 852, column: 20, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 852, column: 12)
!2899 = !DILocation(line: 852, column: 12, scope: !2893)
!2900 = !DILocation(line: 854, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 854, column: 9)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 853, column: 3)
!2903 = !DILocation(line: 854, column: 9, scope: !2902)
!2904 = !DILocation(line: 856, column: 36, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 855, column: 7)
!2906 = !DILocation(line: 856, column: 9, scope: !2905)
!2907 = !DILocation(line: 856, column: 34, scope: !2905)
!2908 = !DILocation(line: 857, column: 31, scope: !2905)
!2909 = !DILocation(line: 857, column: 9, scope: !2905)
!2910 = !DILocation(line: 857, column: 29, scope: !2905)
!2911 = !DILocation(line: 858, column: 33, scope: !2905)
!2912 = !DILocation(line: 858, column: 9, scope: !2905)
!2913 = !DILocation(line: 858, column: 31, scope: !2905)
!2914 = !DILocation(line: 859, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 859, column: 13)
!2916 = !DILocation(line: 859, column: 13, scope: !2905)
!2917 = !DILocation(line: 862, column: 6, scope: !2915)
!2918 = !DILocation(line: 862, column: 30, scope: !2915)
!2919 = !DILocation(line: 860, column: 4, scope: !2915)
!2920 = !DILocation(line: 848, column: 22, scope: !2890)
!2921 = !DILocation(line: 847, column: 4, scope: !2890)
!2922 = distinct !{!2922, !2891, !2923}
!2923 = !DILocation(line: 867, column: 6, scope: !2886)
!2924 = !DILocation(line: 745, column: 12, scope: !2694)
!2925 = !DILocation(line: 869, column: 7, scope: !2694)
!2926 = !DILocation(line: 0, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 886, column: 8)
!2928 = !DILocation(line: 875, column: 12, scope: !2729)
!2929 = !DILocation(line: 871, column: 24, scope: !2694)
!2930 = !DILocation(line: 875, column: 21, scope: !2728)
!2931 = !DILocation(line: 875, column: 7, scope: !2729)
!2932 = !DILocation(line: 877, column: 4, scope: !2727)
!2933 = !DILocation(line: 877, column: 16, scope: !2727)
!2934 = !DILocation(line: 882, column: 8, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 882, column: 8)
!2936 = !DILocation(line: 882, column: 37, scope: !2935)
!2937 = !DILocation(line: 882, column: 8, scope: !2727)
!2938 = !DILocation(line: 886, column: 15, scope: !2927)
!2939 = !DILocation(line: 886, column: 18, scope: !2927)
!2940 = !DILocation(line: 887, column: 8, scope: !2927)
!2941 = !DILocation(line: 887, column: 12, scope: !2927)
!2942 = !DILocation(line: 888, column: 8, scope: !2927)
!2943 = !DILocation(line: 888, column: 5, scope: !2927)
!2944 = !DILocation(line: 886, column: 8, scope: !2727)
!2945 = !DILocation(line: 891, column: 8, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 891, column: 8)
!2947 = !DILocation(line: 891, column: 35, scope: !2946)
!2948 = !DILocation(line: 891, column: 8, scope: !2727)
!2949 = !DILocation(line: 893, column: 33, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 893, column: 12)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 892, column: 6)
!2952 = !DILocation(line: 893, column: 12, scope: !2950)
!2953 = !DILocation(line: 893, column: 12, scope: !2951)
!2954 = !DILocation(line: 895, column: 34, scope: !2950)
!2955 = !DILocation(line: 896, column: 34, scope: !2950)
!2956 = !DILocation(line: 895, column: 7, scope: !2950)
!2957 = !DILocation(line: 895, column: 5, scope: !2950)
!2958 = !DILocation(line: 894, column: 3, scope: !2950)
!2959 = !DILocation(line: 898, column: 17, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 898, column: 17)
!2961 = !DILocation(line: 898, column: 17, scope: !2950)
!2962 = !DILocation(line: 900, column: 33, scope: !2960)
!2963 = !DILocation(line: 901, column: 33, scope: !2960)
!2964 = !DILocation(line: 900, column: 7, scope: !2960)
!2965 = !DILocation(line: 900, column: 5, scope: !2960)
!2966 = !DILocation(line: 899, column: 3, scope: !2960)
!2967 = !DILocation(line: 903, column: 17, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 903, column: 17)
!2969 = !DILocation(line: 903, column: 17, scope: !2960)
!2970 = !DILocation(line: 904, column: 17, scope: !2968)
!2971 = !DILocation(line: 904, column: 15, scope: !2968)
!2972 = !DILocation(line: 904, column: 3, scope: !2968)
!2973 = !DILocation(line: 907, column: 13, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 907, column: 13)
!2975 = !DILocation(line: 907, column: 13, scope: !2946)
!2976 = !DILocation(line: 908, column: 20, scope: !2974)
!2977 = !DILocation(line: 908, column: 18, scope: !2974)
!2978 = !DILocation(line: 908, column: 6, scope: !2974)
!2979 = !DILocation(line: 912, column: 8, scope: !2726)
!2980 = !DILocation(line: 912, column: 8, scope: !2727)
!2981 = !DILocation(line: 917, column: 19, scope: !2725)
!2982 = !DILocation(line: 917, column: 18, scope: !2725)
!2983 = !DILocation(line: 0, scope: !2725)
!2984 = !DILocation(line: 918, column: 8, scope: !2725)
!2985 = !DILocation(line: 918, column: 30, scope: !2725)
!2986 = !DILocation(line: 919, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 919, column: 8)
!2988 = !DILocation(line: 0, scope: !2987)
!2989 = !DILocation(line: 919, column: 35, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 919, column: 8)
!2991 = !DILocation(line: 919, column: 22, scope: !2990)
!2992 = !DILocation(line: 919, column: 8, scope: !2987)
!2993 = !DILocation(line: 920, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 920, column: 7)
!2995 = !DILocation(line: 920, column: 29, scope: !2994)
!2996 = !DILocation(line: 920, column: 7, scope: !2990)
!2997 = !DILocation(line: 921, column: 36, scope: !2994)
!2998 = !DILocation(line: 921, column: 5, scope: !2994)
!2999 = !DILocation(line: 919, column: 44, scope: !2990)
!3000 = !DILocation(line: 919, column: 8, scope: !2990)
!3001 = distinct !{!3001, !2992, !3002}
!3002 = !DILocation(line: 921, column: 69, scope: !2987)
!3003 = !DILocation(line: 875, column: 31, scope: !2728)
!3004 = !DILocation(line: 875, column: 7, scope: !2728)
!3005 = distinct !{!3005, !2931, !3006}
!3006 = !DILocation(line: 925, column: 2, scope: !2729)
!3007 = !DILocation(line: 927, column: 11, scope: !2739)
!3008 = !DILocation(line: 927, column: 11, scope: !2694)
!3009 = !DILocation(line: 929, column: 10, scope: !2737)
!3010 = !DILocation(line: 929, column: 8, scope: !2738)
!3011 = !DILocation(line: 931, column: 8, scope: !2735)
!3012 = !DILocation(line: 0, scope: !2735)
!3013 = !DILocation(line: 931, column: 22, scope: !2734)
!3014 = !DILocation(line: 932, column: 7, scope: !2733)
!3015 = !DILocation(line: 932, column: 7, scope: !2734)
!3016 = !DILocation(line: 934, column: 18, scope: !2732)
!3017 = !DILocation(line: 934, column: 17, scope: !2732)
!3018 = !DILocation(line: 935, column: 7, scope: !2732)
!3019 = !DILocation(line: 935, column: 29, scope: !2732)
!3020 = !DILocation(line: 936, column: 5, scope: !2732)
!3021 = !DILocation(line: 931, column: 32, scope: !2734)
!3022 = !DILocation(line: 931, column: 8, scope: !2734)
!3023 = distinct !{!3023, !3011, !3024}
!3024 = !DILocation(line: 936, column: 5, scope: !2735)
!3025 = !DILocation(line: 938, column: 12, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 938, column: 12)
!3027 = !DILocation(line: 938, column: 12, scope: !2736)
!3028 = !DILocation(line: 941, column: 5, scope: !3026)
!3029 = !DILocation(line: 939, column: 3, scope: !3026)
!3030 = !DILocation(line: 947, column: 5, scope: !2694)
!3031 = !DILocation(line: 948, column: 11, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 948, column: 11)
!3033 = !DILocation(line: 948, column: 11, scope: !2694)
!3034 = !DILocation(line: 952, column: 11, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 952, column: 11)
!3036 = !DILocation(line: 952, column: 11, scope: !2694)
!3037 = !DILocation(line: 953, column: 2, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 953, column: 2)
!3039 = !DILocation(line: 0, scope: !3038)
!3040 = !DILocation(line: 953, column: 16, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 953, column: 2)
!3042 = !DILocation(line: 954, column: 8, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 954, column: 8)
!3044 = !DILocation(line: 954, column: 8, scope: !3041)
!3045 = !DILocation(line: 955, column: 6, scope: !3043)
!3046 = !DILocation(line: 953, column: 42, scope: !3041)
!3047 = !DILocation(line: 953, column: 2, scope: !3041)
!3048 = distinct !{!3048, !3037, !3049}
!3049 = !DILocation(line: 955, column: 32, scope: !3038)
!3050 = !DILocation(line: 958, column: 20, scope: !2694)
!3051 = !DILocation(line: 958, column: 7, scope: !2694)
!3052 = !DILocation(line: 961, column: 15, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 961, column: 11)
!3054 = !DILocation(line: 961, column: 18, scope: !3053)
!3055 = !DILocation(line: 961, column: 41, scope: !3053)
!3056 = !DILocation(line: 961, column: 44, scope: !3053)
!3057 = !DILocation(line: 961, column: 11, scope: !2694)
!3058 = !DILocation(line: 962, column: 2, scope: !3053)
!3059 = !DILocation(line: 964, column: 19, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 964, column: 11)
!3061 = !DILocation(line: 964, column: 16, scope: !3060)
!3062 = !DILocation(line: 0, scope: !2695)
!3063 = !DILocation(line: 966, column: 5, scope: !2695)
!3064 = !DILocation(line: 739, column: 38, scope: !2695)
!3065 = !DILocation(line: 739, column: 3, scope: !2695)
!3066 = distinct !{!3066, !3067, !3068}
!3067 = !DILocation(line: 739, column: 3, scope: !2696)
!3068 = !DILocation(line: 966, column: 5, scope: !2696)
!3069 = !DILocation(line: 968, column: 3, scope: !2685)
!3070 = distinct !DISubprogram(name: "apply_debug_insn_changes", scope: !3, file: !3, line: 683, type: !3071, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !746, !7}
!3073 = !{!3074, !3075, !3076, !3077}
!3074 = !DILocalVariable(name: "vd", arg: 1, scope: !3070, file: !3, line: 683, type: !746)
!3075 = !DILocalVariable(name: "regno", arg: 2, scope: !3070, file: !3, line: 683, type: !7)
!3076 = !DILocalVariable(name: "change", scope: !3070, file: !3, line: 685, type: !757)
!3077 = !DILocalVariable(name: "last_insn", scope: !3070, file: !3, line: 686, type: !762)
!3078 = !DILocation(line: 0, scope: !3070)
!3079 = !DILocation(line: 686, column: 19, scope: !3070)
!3080 = !DILocation(line: 686, column: 32, scope: !3070)
!3081 = !DILocation(line: 686, column: 52, scope: !3070)
!3082 = !DILocation(line: 688, column: 8, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 688, column: 3)
!3084 = !DILocation(line: 0, scope: !3083)
!3085 = !DILocation(line: 688, column: 3, scope: !3083)
!3086 = !DILocation(line: 692, column: 32, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 692, column: 11)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 691, column: 5)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 688, column: 3)
!3090 = !DILocation(line: 692, column: 21, scope: !3087)
!3091 = !DILocation(line: 692, column: 11, scope: !3088)
!3092 = !DILocation(line: 694, column: 4, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 693, column: 2)
!3094 = !DILocation(line: 695, column: 24, scope: !3093)
!3095 = !DILocation(line: 696, column: 2, scope: !3093)
!3096 = !DILocation(line: 697, column: 32, scope: !3088)
!3097 = !DILocation(line: 697, column: 46, scope: !3088)
!3098 = !DILocation(line: 697, column: 59, scope: !3088)
!3099 = !DILocation(line: 697, column: 7, scope: !3088)
!3100 = !DILocation(line: 690, column: 25, scope: !3089)
!3101 = !DILocation(line: 688, column: 3, scope: !3089)
!3102 = distinct !{!3102, !3085, !3103}
!3103 = !DILocation(line: 698, column: 5, scope: !3083)
!3104 = !DILocation(line: 699, column: 3, scope: !3070)
!3105 = !DILocation(line: 700, column: 1, scope: !3070)
!3106 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !3107, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3111)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!7, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!3111 = !{!3112}
!3112 = !DILocalVariable(name: "vec_", arg: 1, scope: !3106, file: !135, line: 150, type: !3109)
!3113 = !DILocation(line: 0, scope: !3106)
!3114 = !DILocation(line: 150, column: 1, scope: !3106)
!3115 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !3116, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!1151, !3109, !7}
!3118 = !{!3119, !3120}
!3119 = !DILocalVariable(name: "vec_", arg: 1, scope: !3115, file: !135, line: 150, type: !3109)
!3120 = !DILocalVariable(name: "ix_", arg: 2, scope: !3115, file: !135, line: 150, type: !7)
!3121 = !DILocation(line: 0, scope: !3115)
!3122 = !DILocation(line: 150, column: 1, scope: !3115)
!3123 = distinct !DISubprogram(name: "replace_oldest_value_addr", scope: !3, file: !3, line: 518, type: !3124, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!735, !1832, !703, !5, !762, !746}
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3156, !3157}
!3127 = !DILocalVariable(name: "loc", arg: 1, scope: !3123, file: !3, line: 518, type: !1832)
!3128 = !DILocalVariable(name: "cl", arg: 2, scope: !3123, file: !3, line: 518, type: !703)
!3129 = !DILocalVariable(name: "mode", arg: 3, scope: !3123, file: !3, line: 519, type: !5)
!3130 = !DILocalVariable(name: "insn", arg: 4, scope: !3123, file: !3, line: 519, type: !762)
!3131 = !DILocalVariable(name: "vd", arg: 5, scope: !3123, file: !3, line: 520, type: !746)
!3132 = !DILocalVariable(name: "x", scope: !3123, file: !3, line: 522, type: !762)
!3133 = !DILocalVariable(name: "code", scope: !3123, file: !3, line: 523, type: !560)
!3134 = !DILocalVariable(name: "fmt", scope: !3123, file: !3, line: 524, type: !741)
!3135 = !DILocalVariable(name: "i", scope: !3123, file: !3, line: 525, type: !736)
!3136 = !DILocalVariable(name: "j", scope: !3123, file: !3, line: 525, type: !736)
!3137 = !DILocalVariable(name: "changed", scope: !3123, file: !3, line: 526, type: !735)
!3138 = !DILocalVariable(name: "orig_op0", scope: !3139, file: !3, line: 535, type: !762)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 534, column: 7)
!3140 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 529, column: 5)
!3141 = !DILocalVariable(name: "orig_op1", scope: !3139, file: !3, line: 536, type: !762)
!3142 = !DILocalVariable(name: "code0", scope: !3139, file: !3, line: 537, type: !560)
!3143 = !DILocalVariable(name: "code1", scope: !3139, file: !3, line: 538, type: !560)
!3144 = !DILocalVariable(name: "op0", scope: !3139, file: !3, line: 539, type: !762)
!3145 = !DILocalVariable(name: "op1", scope: !3139, file: !3, line: 540, type: !762)
!3146 = !DILocalVariable(name: "locI", scope: !3139, file: !3, line: 541, type: !1832)
!3147 = !DILocalVariable(name: "locB", scope: !3139, file: !3, line: 542, type: !1832)
!3148 = !DILocalVariable(name: "index_code", scope: !3139, file: !3, line: 543, type: !560)
!3149 = !DILocalVariable(name: "index_op", scope: !3150, file: !3, line: 585, type: !736)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 584, column: 4)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 583, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 577, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 571, column: 11)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 564, column: 11)
!3155 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 557, column: 6)
!3156 = !DILocalVariable(name: "regno0", scope: !3150, file: !3, line: 586, type: !7)
!3157 = !DILocalVariable(name: "regno1", scope: !3150, file: !3, line: 586, type: !7)
!3158 = !DILocation(line: 0, scope: !3123)
!3159 = !DILocation(line: 522, column: 11, scope: !3123)
!3160 = !DILocation(line: 523, column: 19, scope: !3123)
!3161 = !DILocation(line: 528, column: 3, scope: !3123)
!3162 = !DILocation(line: 531, column: 11, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 531, column: 11)
!3164 = !DILocation(line: 531, column: 11, scope: !3140)
!3165 = !DILocation(line: 535, column: 17, scope: !3139)
!3166 = !DILocation(line: 0, scope: !3139)
!3167 = !DILocation(line: 536, column: 17, scope: !3139)
!3168 = !DILocation(line: 537, column: 19, scope: !3139)
!3169 = !DILocation(line: 538, column: 19, scope: !3139)
!3170 = !DILocation(line: 545, column: 6, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 545, column: 6)
!3172 = !DILocation(line: 545, column: 21, scope: !3171)
!3173 = !DILocation(line: 545, column: 6, scope: !3139)
!3174 = !DILocation(line: 547, column: 12, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 546, column: 4)
!3176 = !DILocation(line: 548, column: 14, scope: !3175)
!3177 = !DILocation(line: 549, column: 4, scope: !3175)
!3178 = !DILocation(line: 551, column: 6, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 551, column: 6)
!3180 = !DILocation(line: 551, column: 21, scope: !3179)
!3181 = !DILocation(line: 551, column: 6, scope: !3139)
!3182 = !DILocation(line: 553, column: 12, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 552, column: 4)
!3184 = !DILocation(line: 554, column: 14, scope: !3183)
!3185 = !DILocation(line: 555, column: 4, scope: !3183)
!3186 = !DILocation(line: 557, column: 20, scope: !3155)
!3187 = !DILocation(line: 557, column: 6, scope: !3139)
!3188 = !DILocation(line: 563, column: 4, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 559, column: 4)
!3190 = !DILocation(line: 564, column: 11, scope: !3155)
!3191 = !DILocation(line: 570, column: 4, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 566, column: 4)
!3193 = !DILocation(line: 576, column: 4, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 573, column: 4)
!3195 = !DILocation(line: 577, column: 30, scope: !3152)
!3196 = !DILocation(line: 582, column: 4, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 579, column: 4)
!3198 = !DILocation(line: 583, column: 17, scope: !3151)
!3199 = !DILocation(line: 583, column: 33, scope: !3151)
!3200 = !DILocation(line: 583, column: 24, scope: !3151)
!3201 = !DILocation(line: 586, column: 24, scope: !3150)
!3202 = !DILocation(line: 0, scope: !3150)
!3203 = !DILocation(line: 586, column: 46, scope: !3150)
!3204 = !DILocation(line: 588, column: 10, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 588, column: 10)
!3206 = !DILocation(line: 589, column: 3, scope: !3205)
!3207 = !DILocation(line: 589, column: 6, scope: !3205)
!3208 = !DILocation(line: 588, column: 10, scope: !3150)
!3209 = !DILocation(line: 591, column: 15, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 591, column: 15)
!3211 = !DILocation(line: 592, column: 8, scope: !3210)
!3212 = !DILocation(line: 592, column: 11, scope: !3210)
!3213 = !DILocation(line: 591, column: 15, scope: !3205)
!3214 = !DILocation(line: 594, column: 15, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 594, column: 15)
!3216 = !DILocation(line: 595, column: 8, scope: !3215)
!3217 = !DILocation(line: 595, column: 11, scope: !3215)
!3218 = !DILocation(line: 594, column: 15, scope: !3210)
!3219 = !DILocation(line: 597, column: 15, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 597, column: 15)
!3221 = !DILocation(line: 0, scope: !3205)
!3222 = !DILocation(line: 602, column: 14, scope: !3150)
!3223 = !DILocation(line: 603, column: 14, scope: !3150)
!3224 = !DILocation(line: 604, column: 19, scope: !3150)
!3225 = !DILocation(line: 605, column: 4, scope: !3150)
!3226 = !DILocation(line: 606, column: 11, scope: !3151)
!3227 = !DILocation(line: 611, column: 4, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 607, column: 4)
!3229 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 606, column: 11)
!3230 = !DILocation(line: 612, column: 11, scope: !3229)
!3231 = !DILocation(line: 617, column: 4, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 613, column: 4)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 612, column: 11)
!3234 = !DILocation(line: 0, scope: !3155)
!3235 = !DILocation(line: 619, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 619, column: 6)
!3237 = !DILocation(line: 619, column: 6, scope: !3139)
!3238 = !DILocation(line: 620, column: 15, scope: !3236)
!3239 = !DILocation(line: 620, column: 4, scope: !3236)
!3240 = !DILocation(line: 622, column: 6, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 622, column: 6)
!3242 = !DILocation(line: 622, column: 6, scope: !3139)
!3243 = !DILocation(line: 624, column: 7, scope: !3241)
!3244 = !DILocation(line: 623, column: 15, scope: !3241)
!3245 = !DILocation(line: 623, column: 12, scope: !3241)
!3246 = !DILocation(line: 661, column: 1, scope: !3123)
!3247 = !DILocation(line: 639, column: 14, scope: !3140)
!3248 = !DILocation(line: 639, column: 7, scope: !3140)
!3249 = !DILocation(line: 642, column: 14, scope: !3140)
!3250 = !DILocation(line: 642, column: 7, scope: !3140)
!3251 = !DILocation(line: 648, column: 9, scope: !3123)
!3252 = !DILocation(line: 649, column: 12, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 649, column: 3)
!3254 = !DILocation(line: 0, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 655, column: 2)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 654, column: 16)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 651, column: 11)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 650, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 649, column: 3)
!3260 = !DILocation(line: 649, column: 8, scope: !3253)
!3261 = !DILocation(line: 0, scope: !3253)
!3262 = !DILocation(line: 649, column: 41, scope: !3259)
!3263 = !DILocation(line: 649, column: 3, scope: !3253)
!3264 = !DILocation(line: 651, column: 11, scope: !3257)
!3265 = !DILocation(line: 651, column: 18, scope: !3257)
!3266 = !DILocation(line: 651, column: 11, scope: !3258)
!3267 = !DILocation(line: 652, column: 41, scope: !3257)
!3268 = !DILocation(line: 652, column: 13, scope: !3257)
!3269 = !DILocation(line: 652, column: 10, scope: !3257)
!3270 = !DILocation(line: 652, column: 2, scope: !3257)
!3271 = !DILocation(line: 654, column: 23, scope: !3256)
!3272 = !DILocation(line: 654, column: 16, scope: !3257)
!3273 = !DILocation(line: 655, column: 11, scope: !3255)
!3274 = !DILocation(line: 655, column: 7, scope: !3255)
!3275 = !DILocation(line: 655, column: 33, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 655, column: 2)
!3277 = !DILocation(line: 655, column: 2, scope: !3255)
!3278 = !DILocation(line: 656, column: 43, scope: !3276)
!3279 = !DILocation(line: 656, column: 15, scope: !3276)
!3280 = !DILocation(line: 656, column: 12, scope: !3276)
!3281 = !DILocation(line: 655, column: 2, scope: !3276)
!3282 = distinct !{!3282, !3277, !3283}
!3283 = !DILocation(line: 657, column: 21, scope: !3255)
!3284 = !DILocation(line: 649, column: 3, scope: !3259)
!3285 = distinct !{!3285, !3263, !3286}
!3286 = !DILocation(line: 658, column: 5, scope: !3253)
!3287 = distinct !DISubprogram(name: "cprop_find_used_regs", scope: !3, file: !3, line: 726, type: !3288, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !1832, !740}
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "loc", arg: 1, scope: !3287, file: !3, line: 726, type: !1832)
!3292 = !DILocalVariable(name: "vd", arg: 2, scope: !3287, file: !3, line: 726, type: !740)
!3293 = !DILocation(line: 0, scope: !3287)
!3294 = !DILocation(line: 728, column: 3, scope: !3287)
!3295 = !DILocation(line: 729, column: 1, scope: !3287)
!3296 = distinct !DISubprogram(name: "kill_value", scope: !3, file: !3, line: 195, type: !3297, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !762, !746}
!3299 = !{!3300, !3301, !3302, !3303, !3306}
!3300 = !DILocalVariable(name: "x", arg: 1, scope: !3296, file: !3, line: 195, type: !762)
!3301 = !DILocalVariable(name: "vd", arg: 2, scope: !3296, file: !3, line: 195, type: !746)
!3302 = !DILocalVariable(name: "orig_rtx", scope: !3296, file: !3, line: 197, type: !762)
!3303 = !DILocalVariable(name: "regno", scope: !3304, file: !3, line: 208, type: !7)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 207, column: 5)
!3305 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 206, column: 7)
!3306 = !DILocalVariable(name: "n", scope: !3304, file: !3, line: 209, type: !7)
!3307 = !DILocation(line: 0, scope: !3296)
!3308 = !DILocation(line: 199, column: 7, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 199, column: 7)
!3310 = !DILocation(line: 199, column: 20, scope: !3309)
!3311 = !DILocation(line: 199, column: 7, scope: !3296)
!3312 = !DILocation(line: 201, column: 28, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 200, column: 5)
!3314 = !DILocation(line: 201, column: 42, scope: !3313)
!3315 = !DILocation(line: 202, column: 7, scope: !3313)
!3316 = !DILocation(line: 202, column: 34, scope: !3313)
!3317 = !DILocation(line: 201, column: 11, scope: !3313)
!3318 = !DILocation(line: 203, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 203, column: 11)
!3320 = !DILocation(line: 203, column: 11, scope: !3313)
!3321 = !DILocation(line: 204, column: 6, scope: !3319)
!3322 = !DILocation(line: 204, column: 2, scope: !3319)
!3323 = !DILocation(line: 206, column: 7, scope: !3305)
!3324 = !DILocation(line: 206, column: 7, scope: !3296)
!3325 = !DILocation(line: 208, column: 28, scope: !3304)
!3326 = !DILocation(line: 0, scope: !3304)
!3327 = !DILocation(line: 209, column: 24, scope: !3304)
!3328 = !DILocation(line: 209, column: 48, scope: !3304)
!3329 = !DILocation(line: 211, column: 7, scope: !3304)
!3330 = !DILocation(line: 212, column: 5, scope: !3304)
!3331 = !DILocation(line: 213, column: 1, scope: !3296)
!3332 = distinct !DISubprogram(name: "kill_clobbered_value", scope: !3, file: !3, line: 250, type: !3333, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3338)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !762, !3335, !740}
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !763, line: 51, baseType: !3336)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!3338 = !{!3339, !3340, !3341, !3342}
!3339 = !DILocalVariable(name: "x", arg: 1, scope: !3332, file: !3, line: 250, type: !762)
!3340 = !DILocalVariable(name: "set", arg: 2, scope: !3332, file: !3, line: 250, type: !3335)
!3341 = !DILocalVariable(name: "data", arg: 3, scope: !3332, file: !3, line: 250, type: !740)
!3342 = !DILocalVariable(name: "vd", scope: !3332, file: !3, line: 252, type: !3343)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!3344 = !DILocation(line: 0, scope: !3332)
!3345 = !DILocation(line: 253, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 253, column: 7)
!3347 = !DILocation(line: 253, column: 22, scope: !3346)
!3348 = !DILocation(line: 253, column: 7, scope: !3332)
!3349 = !DILocation(line: 252, column: 33, scope: !3332)
!3350 = !DILocation(line: 254, column: 5, scope: !3346)
!3351 = !DILocation(line: 255, column: 1, scope: !3332)
!3352 = distinct !DISubprogram(name: "kill_autoinc_value", scope: !3, file: !3, line: 277, type: !3353, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!736, !1832, !740}
!3355 = !{!3356, !3357, !3358, !3359}
!3356 = !DILocalVariable(name: "px", arg: 1, scope: !3352, file: !3, line: 277, type: !1832)
!3357 = !DILocalVariable(name: "data", arg: 2, scope: !3352, file: !3, line: 277, type: !740)
!3358 = !DILocalVariable(name: "x", scope: !3352, file: !3, line: 279, type: !762)
!3359 = !DILocalVariable(name: "vd", scope: !3352, file: !3, line: 280, type: !3343)
!3360 = !DILocation(line: 0, scope: !3352)
!3361 = !DILocation(line: 279, column: 11, scope: !3352)
!3362 = !DILocation(line: 280, column: 33, scope: !3352)
!3363 = !DILocation(line: 282, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 282, column: 7)
!3365 = !DILocation(line: 282, column: 36, scope: !3364)
!3366 = !DILocation(line: 282, column: 7, scope: !3352)
!3367 = !DILocation(line: 284, column: 11, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 283, column: 5)
!3369 = !DILocation(line: 285, column: 7, scope: !3368)
!3370 = !DILocation(line: 286, column: 24, scope: !3368)
!3371 = !DILocation(line: 286, column: 35, scope: !3368)
!3372 = !DILocation(line: 286, column: 7, scope: !3368)
!3373 = !DILocation(line: 287, column: 7, scope: !3368)
!3374 = !DILocation(line: 291, column: 1, scope: !3352)
!3375 = distinct !DISubprogram(name: "rhs_regno", scope: !561, file: !561, line: 1051, type: !3376, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!7, !3335}
!3378 = !{!3379}
!3379 = !DILocalVariable(name: "x", arg: 1, scope: !3375, file: !561, line: 1051, type: !3335)
!3380 = !DILocation(line: 0, scope: !3375)
!3381 = !DILocation(line: 1053, column: 10, scope: !3375)
!3382 = !DILocation(line: 1053, column: 3, scope: !3375)
!3383 = distinct !DISubprogram(name: "find_oldest_value_reg", scope: !3, file: !3, line: 434, type: !3384, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!762, !703, !762, !746}
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392, !3393, !3397}
!3387 = !DILocalVariable(name: "cl", arg: 1, scope: !3383, file: !3, line: 434, type: !703)
!3388 = !DILocalVariable(name: "reg", arg: 2, scope: !3383, file: !3, line: 434, type: !762)
!3389 = !DILocalVariable(name: "vd", arg: 3, scope: !3383, file: !3, line: 434, type: !746)
!3390 = !DILocalVariable(name: "regno", scope: !3383, file: !3, line: 436, type: !7)
!3391 = !DILocalVariable(name: "mode", scope: !3383, file: !3, line: 437, type: !5)
!3392 = !DILocalVariable(name: "i", scope: !3383, file: !3, line: 438, type: !7)
!3393 = !DILocalVariable(name: "oldmode", scope: !3394, file: !3, line: 456, type: !5)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 455, column: 5)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 454, column: 3)
!3396 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 454, column: 3)
!3397 = !DILocalVariable(name: "new_rtx", scope: !3394, file: !3, line: 457, type: !762)
!3398 = !DILocation(line: 0, scope: !3383)
!3399 = !DILocation(line: 436, column: 24, scope: !3383)
!3400 = !DILocation(line: 437, column: 28, scope: !3383)
!3401 = !DILocation(line: 447, column: 15, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 447, column: 7)
!3403 = !DILocation(line: 447, column: 28, scope: !3402)
!3404 = !DILocation(line: 447, column: 12, scope: !3402)
!3405 = !DILocation(line: 447, column: 7, scope: !3383)
!3406 = !DILocation(line: 449, column: 11, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 449, column: 11)
!3408 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 448, column: 5)
!3409 = !DILocation(line: 450, column: 6, scope: !3407)
!3410 = !DILocation(line: 450, column: 4, scope: !3407)
!3411 = !DILocation(line: 449, column: 11, scope: !3408)
!3412 = !DILocation(line: 454, column: 25, scope: !3396)
!3413 = !DILocation(line: 0, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 459, column: 11)
!3415 = !DILocation(line: 0, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 464, column: 2)
!3417 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 463, column: 11)
!3418 = !DILocation(line: 454, column: 8, scope: !3396)
!3419 = !DILocation(line: 0, scope: !3396)
!3420 = !DILocation(line: 454, column: 41, scope: !3395)
!3421 = !DILocation(line: 454, column: 3, scope: !3396)
!3422 = !DILocation(line: 456, column: 35, scope: !3394)
!3423 = !DILocation(line: 456, column: 44, scope: !3394)
!3424 = !DILocation(line: 0, scope: !3394)
!3425 = !DILocation(line: 459, column: 31, scope: !3414)
!3426 = !DILocation(line: 459, column: 12, scope: !3414)
!3427 = !DILocation(line: 459, column: 11, scope: !3394)
!3428 = !DILocation(line: 462, column: 58, scope: !3394)
!3429 = !DILocation(line: 462, column: 17, scope: !3394)
!3430 = !DILocation(line: 463, column: 11, scope: !3417)
!3431 = !DILocation(line: 463, column: 11, scope: !3394)
!3432 = !DILocation(line: 465, column: 31, scope: !3416)
!3433 = !DILocation(line: 465, column: 4, scope: !3416)
!3434 = !DILocation(line: 465, column: 29, scope: !3416)
!3435 = !DILocation(line: 466, column: 26, scope: !3416)
!3436 = !DILocation(line: 466, column: 4, scope: !3416)
!3437 = !DILocation(line: 466, column: 24, scope: !3416)
!3438 = !DILocation(line: 467, column: 28, scope: !3416)
!3439 = !DILocation(line: 467, column: 4, scope: !3416)
!3440 = !DILocation(line: 467, column: 26, scope: !3416)
!3441 = !DILocation(line: 468, column: 4, scope: !3416)
!3442 = !DILocation(line: 454, column: 64, scope: !3395)
!3443 = !DILocation(line: 454, column: 3, scope: !3395)
!3444 = distinct !{!3444, !3421, !3445}
!3445 = !DILocation(line: 470, column: 5, scope: !3396)
!3446 = !DILocation(line: 473, column: 1, scope: !3383)
!3447 = distinct !DISubprogram(name: "maybe_mode_change", scope: !3, file: !3, line: 398, type: !3448, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!762, !5, !5, !5, !7, !7}
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3460, !3461, !3462, !3463, !3464}
!3451 = !DILocalVariable(name: "orig_mode", arg: 1, scope: !3447, file: !3, line: 398, type: !5)
!3452 = !DILocalVariable(name: "copy_mode", arg: 2, scope: !3447, file: !3, line: 398, type: !5)
!3453 = !DILocalVariable(name: "new_mode", arg: 3, scope: !3447, file: !3, line: 399, type: !5)
!3454 = !DILocalVariable(name: "regno", arg: 4, scope: !3447, file: !3, line: 399, type: !7)
!3455 = !DILocalVariable(name: "copy_regno", arg: 5, scope: !3447, file: !3, line: 400, type: !7)
!3456 = !DILocalVariable(name: "copy_nregs", scope: !3457, file: !3, line: 410, type: !736)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 409, column: 5)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 408, column: 12)
!3459 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 406, column: 7)
!3460 = !DILocalVariable(name: "use_nregs", scope: !3457, file: !3, line: 411, type: !736)
!3461 = !DILocalVariable(name: "copy_offset", scope: !3457, file: !3, line: 412, type: !736)
!3462 = !DILocalVariable(name: "offset", scope: !3457, file: !3, line: 414, type: !736)
!3463 = !DILocalVariable(name: "byteoffset", scope: !3457, file: !3, line: 416, type: !736)
!3464 = !DILocalVariable(name: "wordoffset", scope: !3457, file: !3, line: 417, type: !736)
!3465 = !DILocation(line: 0, scope: !3447)
!3466 = !DILocation(line: 402, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 402, column: 7)
!3468 = !DILocation(line: 402, column: 35, scope: !3467)
!3469 = !DILocation(line: 402, column: 33, scope: !3467)
!3470 = !DILocation(line: 403, column: 7, scope: !3467)
!3471 = !DILocation(line: 403, column: 38, scope: !3467)
!3472 = !DILocation(line: 403, column: 36, scope: !3467)
!3473 = !DILocation(line: 402, column: 7, scope: !3447)
!3474 = !DILocation(line: 406, column: 17, scope: !3459)
!3475 = !DILocation(line: 406, column: 7, scope: !3447)
!3476 = !DILocation(line: 407, column: 12, scope: !3459)
!3477 = !DILocation(line: 407, column: 5, scope: !3459)
!3478 = !DILocation(line: 408, column: 12, scope: !3458)
!3479 = !DILocation(line: 408, column: 12, scope: !3459)
!3480 = !DILocation(line: 0, scope: !3457)
!3481 = !DILocation(line: 421, column: 14, scope: !3457)
!3482 = !DILocation(line: 427, column: 1, scope: !3447)
!3483 = distinct !DISubprogram(name: "replace_oldest_value_reg", scope: !3, file: !3, line: 479, type: !3484, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!735, !1832, !703, !762, !746}
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DILocalVariable(name: "loc", arg: 1, scope: !3483, file: !3, line: 479, type: !1832)
!3488 = !DILocalVariable(name: "cl", arg: 2, scope: !3483, file: !3, line: 479, type: !703)
!3489 = !DILocalVariable(name: "insn", arg: 3, scope: !3483, file: !3, line: 479, type: !762)
!3490 = !DILocalVariable(name: "vd", arg: 4, scope: !3483, file: !3, line: 480, type: !746)
!3491 = !DILocalVariable(name: "new_rtx", scope: !3483, file: !3, line: 482, type: !762)
!3492 = !DILocalVariable(name: "change", scope: !3493, file: !3, line: 487, type: !757)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 486, column: 2)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 485, column: 11)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 484, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 483, column: 7)
!3497 = !DILocation(line: 0, scope: !3483)
!3498 = !DILocation(line: 482, column: 44, scope: !3483)
!3499 = !DILocation(line: 482, column: 17, scope: !3483)
!3500 = !DILocation(line: 483, column: 7, scope: !3496)
!3501 = !DILocation(line: 483, column: 7, scope: !3483)
!3502 = !DILocation(line: 485, column: 11, scope: !3494)
!3503 = !DILocation(line: 0, scope: !3495)
!3504 = !DILocation(line: 485, column: 11, scope: !3495)
!3505 = !DILocation(line: 489, column: 8, scope: !3493)
!3506 = !DILocation(line: 491, column: 8, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 489, column: 8)
!3508 = !DILocation(line: 491, column: 25, scope: !3507)
!3509 = !DILocation(line: 491, column: 39, scope: !3507)
!3510 = !DILocation(line: 490, column: 6, scope: !3507)
!3511 = !DILocation(line: 494, column: 18, scope: !3493)
!3512 = !DILocation(line: 494, column: 6, scope: !3493)
!3513 = !DILocation(line: 0, scope: !3493)
!3514 = !DILocation(line: 495, column: 25, scope: !3493)
!3515 = !DILocation(line: 495, column: 19, scope: !3493)
!3516 = !DILocation(line: 495, column: 42, scope: !3493)
!3517 = !DILocation(line: 495, column: 17, scope: !3493)
!3518 = !DILocation(line: 496, column: 12, scope: !3493)
!3519 = !DILocation(line: 496, column: 17, scope: !3493)
!3520 = !DILocation(line: 497, column: 12, scope: !3493)
!3521 = !DILocation(line: 497, column: 16, scope: !3493)
!3522 = !DILocation(line: 498, column: 12, scope: !3493)
!3523 = !DILocation(line: 498, column: 20, scope: !3493)
!3524 = !DILocation(line: 499, column: 10, scope: !3493)
!3525 = !DILocation(line: 499, column: 4, scope: !3493)
!3526 = !DILocation(line: 499, column: 27, scope: !3493)
!3527 = !DILocation(line: 499, column: 46, scope: !3493)
!3528 = !DILocation(line: 500, column: 10, scope: !3493)
!3529 = !DILocation(line: 500, column: 4, scope: !3493)
!3530 = !DILocation(line: 503, column: 11, scope: !3495)
!3531 = !DILocation(line: 505, column: 4, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 503, column: 11)
!3533 = !DILocation(line: 505, column: 21, scope: !3532)
!3534 = !DILocation(line: 505, column: 35, scope: !3532)
!3535 = !DILocation(line: 504, column: 2, scope: !3532)
!3536 = !DILocation(line: 507, column: 7, scope: !3495)
!3537 = !DILocation(line: 508, column: 7, scope: !3495)
!3538 = !DILocation(line: 511, column: 1, scope: !3483)
!3539 = distinct !DISubprogram(name: "replace_oldest_value_mem", scope: !3, file: !3, line: 666, type: !3540, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!735, !762, !762, !746}
!3542 = !{!3543, !3544, !3545, !3546}
!3543 = !DILocalVariable(name: "x", arg: 1, scope: !3539, file: !3, line: 666, type: !762)
!3544 = !DILocalVariable(name: "insn", arg: 2, scope: !3539, file: !3, line: 666, type: !762)
!3545 = !DILocalVariable(name: "vd", arg: 3, scope: !3539, file: !3, line: 666, type: !746)
!3546 = !DILocalVariable(name: "cl", scope: !3539, file: !3, line: 668, type: !703)
!3547 = !DILocation(line: 0, scope: !3539)
!3548 = !DILocation(line: 670, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 670, column: 7)
!3550 = !DILocation(line: 670, column: 7, scope: !3539)
!3551 = !DILocation(line: 673, column: 26, scope: !3549)
!3552 = !DILocation(line: 673, column: 10, scope: !3549)
!3553 = !DILocation(line: 0, scope: !3549)
!3554 = !DILocation(line: 675, column: 38, scope: !3539)
!3555 = !DILocation(line: 676, column: 9, scope: !3539)
!3556 = !DILocation(line: 675, column: 10, scope: !3539)
!3557 = !DILocation(line: 675, column: 3, scope: !3539)
!3558 = distinct !DISubprogram(name: "kill_value_regno", scope: !3, file: !3, line: 165, type: !3559, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !7, !7, !746}
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3570}
!3562 = !DILocalVariable(name: "regno", arg: 1, scope: !3558, file: !3, line: 165, type: !7)
!3563 = !DILocalVariable(name: "nregs", arg: 2, scope: !3558, file: !3, line: 165, type: !7)
!3564 = !DILocalVariable(name: "vd", arg: 3, scope: !3558, file: !3, line: 166, type: !746)
!3565 = !DILocalVariable(name: "j", scope: !3558, file: !3, line: 168, type: !7)
!3566 = !DILocalVariable(name: "i", scope: !3567, file: !3, line: 181, type: !7)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 180, column: 5)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 179, column: 3)
!3569 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 179, column: 3)
!3570 = !DILocalVariable(name: "n", scope: !3567, file: !3, line: 181, type: !7)
!3571 = !DILocation(line: 0, scope: !3558)
!3572 = !DILocation(line: 171, column: 8, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 171, column: 3)
!3574 = !DILocation(line: 0, scope: !3573)
!3575 = !DILocation(line: 171, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 171, column: 3)
!3577 = !DILocation(line: 171, column: 3, scope: !3573)
!3578 = !DILocation(line: 172, column: 33, scope: !3576)
!3579 = !DILocation(line: 172, column: 5, scope: !3576)
!3580 = !DILocation(line: 171, column: 26, scope: !3576)
!3581 = !DILocation(line: 171, column: 3, scope: !3576)
!3582 = distinct !{!3582, !3577, !3583}
!3583 = !DILocation(line: 172, column: 40, scope: !3573)
!3584 = !DILocation(line: 175, column: 19, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 175, column: 7)
!3586 = !DILocation(line: 175, column: 13, scope: !3585)
!3587 = !DILocation(line: 175, column: 7, scope: !3558)
!3588 = !DILocation(line: 178, column: 15, scope: !3585)
!3589 = !DILocation(line: 179, column: 3, scope: !3558)
!3590 = !DILocation(line: 179, column: 12, scope: !3568)
!3591 = !DILocation(line: 179, column: 3, scope: !3569)
!3592 = !DILocation(line: 182, column: 20, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 182, column: 11)
!3594 = !DILocation(line: 182, column: 25, scope: !3593)
!3595 = !DILocation(line: 182, column: 11, scope: !3567)
!3596 = !DILocation(line: 184, column: 11, scope: !3567)
!3597 = !DILocation(line: 0, scope: !3567)
!3598 = !DILocation(line: 185, column: 13, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 185, column: 11)
!3600 = !DILocation(line: 185, column: 17, scope: !3599)
!3601 = !DILocation(line: 185, column: 11, scope: !3567)
!3602 = !DILocation(line: 186, column: 2, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 186, column: 2)
!3604 = !DILocation(line: 0, scope: !3603)
!3605 = !DILocation(line: 186, column: 16, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 186, column: 2)
!3607 = !DILocation(line: 187, column: 28, scope: !3606)
!3608 = !DILocation(line: 187, column: 4, scope: !3606)
!3609 = !DILocation(line: 186, column: 21, scope: !3606)
!3610 = !DILocation(line: 186, column: 2, scope: !3606)
!3611 = distinct !{!3611, !3602, !3612}
!3612 = !DILocation(line: 187, column: 35, scope: !3603)
!3613 = !DILocation(line: 179, column: 21, scope: !3568)
!3614 = !DILocation(line: 179, column: 3, scope: !3568)
!3615 = distinct !{!3615, !3591, !3616}
!3616 = !DILocation(line: 188, column: 5, scope: !3569)
!3617 = !DILocation(line: 189, column: 1, scope: !3558)
!3618 = distinct !DISubprogram(name: "kill_set_value", scope: !3, file: !3, line: 261, type: !3333, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DILocalVariable(name: "x", arg: 1, scope: !3618, file: !3, line: 261, type: !762)
!3621 = !DILocalVariable(name: "set", arg: 2, scope: !3618, file: !3, line: 261, type: !3335)
!3622 = !DILocalVariable(name: "data", arg: 3, scope: !3618, file: !3, line: 261, type: !740)
!3623 = !DILocalVariable(name: "vd", scope: !3618, file: !3, line: 263, type: !3343)
!3624 = !DILocation(line: 0, scope: !3618)
!3625 = !DILocation(line: 263, column: 33, scope: !3618)
!3626 = !DILocation(line: 264, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 264, column: 7)
!3628 = !DILocation(line: 264, column: 22, scope: !3627)
!3629 = !DILocation(line: 264, column: 7, scope: !3618)
!3630 = !DILocation(line: 266, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 265, column: 5)
!3632 = !DILocation(line: 267, column: 11, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 267, column: 11)
!3634 = !DILocation(line: 267, column: 11, scope: !3631)
!3635 = !DILocation(line: 268, column: 19, scope: !3633)
!3636 = !DILocation(line: 268, column: 30, scope: !3633)
!3637 = !DILocation(line: 268, column: 2, scope: !3633)
!3638 = !DILocation(line: 270, column: 1, scope: !3618)
!3639 = distinct !DISubprogram(name: "copy_value", scope: !3, file: !3, line: 297, type: !3640, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !762, !762, !746}
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3643 = !DILocalVariable(name: "dest", arg: 1, scope: !3639, file: !3, line: 297, type: !762)
!3644 = !DILocalVariable(name: "src", arg: 2, scope: !3639, file: !3, line: 297, type: !762)
!3645 = !DILocalVariable(name: "vd", arg: 3, scope: !3639, file: !3, line: 297, type: !746)
!3646 = !DILocalVariable(name: "dr", scope: !3639, file: !3, line: 299, type: !7)
!3647 = !DILocalVariable(name: "sr", scope: !3639, file: !3, line: 300, type: !7)
!3648 = !DILocalVariable(name: "dn", scope: !3639, file: !3, line: 301, type: !7)
!3649 = !DILocalVariable(name: "sn", scope: !3639, file: !3, line: 301, type: !7)
!3650 = !DILocalVariable(name: "i", scope: !3639, file: !3, line: 302, type: !7)
!3651 = !DILocation(line: 0, scope: !3639)
!3652 = !DILocation(line: 299, column: 21, scope: !3639)
!3653 = !DILocation(line: 300, column: 21, scope: !3639)
!3654 = !DILocation(line: 306, column: 10, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 306, column: 7)
!3656 = !DILocation(line: 311, column: 10, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 311, column: 7)
!3658 = !DILocation(line: 306, column: 7, scope: !3639)
!3659 = !DILocation(line: 315, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 315, column: 7)
!3661 = !DILocation(line: 315, column: 34, scope: !3660)
!3662 = !DILocation(line: 315, column: 28, scope: !3660)
!3663 = !DILocation(line: 321, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 321, column: 7)
!3665 = !DILocation(line: 321, column: 22, scope: !3664)
!3666 = !DILocation(line: 321, column: 25, scope: !3664)
!3667 = !DILocation(line: 321, column: 7, scope: !3639)
!3668 = !DILocation(line: 326, column: 8, scope: !3639)
!3669 = !DILocation(line: 326, column: 29, scope: !3639)
!3670 = !DILocation(line: 327, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 327, column: 7)
!3672 = !DILocation(line: 327, column: 27, scope: !3671)
!3673 = !DILocation(line: 327, column: 22, scope: !3671)
!3674 = !DILocation(line: 327, column: 16, scope: !3671)
!3675 = !DILocation(line: 325, column: 8, scope: !3639)
!3676 = !DILocation(line: 328, column: 14, scope: !3671)
!3677 = !DILocation(line: 328, column: 30, scope: !3671)
!3678 = !DILocation(line: 328, column: 25, scope: !3671)
!3679 = !DILocation(line: 328, column: 19, scope: !3671)
!3680 = !DILocation(line: 334, column: 17, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 334, column: 7)
!3682 = !DILocation(line: 334, column: 22, scope: !3681)
!3683 = !DILocation(line: 334, column: 7, scope: !3639)
!3684 = !DILocation(line: 335, column: 36, scope: !3681)
!3685 = !DILocation(line: 335, column: 5, scope: !3681)
!3686 = !DILocation(line: 360, column: 32, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 360, column: 12)
!3688 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 352, column: 12)
!3689 = !DILocation(line: 360, column: 15, scope: !3687)
!3690 = !DILocation(line: 360, column: 12, scope: !3688)
!3691 = !DILocation(line: 365, column: 38, scope: !3639)
!3692 = !DILocation(line: 365, column: 13, scope: !3639)
!3693 = !DILocation(line: 365, column: 26, scope: !3639)
!3694 = !DILocation(line: 367, column: 8, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 367, column: 3)
!3696 = !DILocation(line: 0, scope: !3695)
!3697 = !DILocation(line: 367, column: 16, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 367, column: 3)
!3699 = !DILocation(line: 367, column: 25, scope: !3698)
!3700 = !DILocation(line: 367, column: 36, scope: !3698)
!3701 = !DILocation(line: 367, column: 3, scope: !3695)
!3702 = !DILocation(line: 367, column: 3, scope: !3698)
!3703 = distinct !{!3703, !3701, !3704}
!3704 = !DILocation(line: 368, column: 5, scope: !3695)
!3705 = !DILocation(line: 369, column: 23, scope: !3639)
!3706 = !DILocation(line: 374, column: 1, scope: !3639)
!3707 = distinct !DISubprogram(name: "regno_ok_for_base_p", scope: !3708, file: !3708, line: 73, type: !3709, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3711)
!3708 = !DIFile(filename: "./addresses.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!735, !7, !5, !560, !560}
!3711 = !{!3712, !3713, !3714, !3715}
!3712 = !DILocalVariable(name: "regno", arg: 1, scope: !3707, file: !3708, line: 73, type: !7)
!3713 = !DILocalVariable(name: "mode", arg: 2, scope: !3707, file: !3708, line: 73, type: !5)
!3714 = !DILocalVariable(name: "outer_code", arg: 3, scope: !3707, file: !3708, line: 74, type: !560)
!3715 = !DILocalVariable(name: "index_code", arg: 4, scope: !3707, file: !3708, line: 74, type: !560)
!3716 = !DILocation(line: 0, scope: !3707)
!3717 = !DILocation(line: 76, column: 13, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 76, column: 7)
!3719 = !DILocation(line: 76, column: 38, scope: !3718)
!3720 = !DILocation(line: 76, column: 41, scope: !3718)
!3721 = !DILocation(line: 76, column: 61, scope: !3718)
!3722 = !DILocation(line: 76, column: 7, scope: !3707)
!3723 = !DILocation(line: 77, column: 13, scope: !3718)
!3724 = !DILocation(line: 77, column: 5, scope: !3718)
!3725 = !DILocation(line: 79, column: 10, scope: !3707)
!3726 = !DILocation(line: 79, column: 3, scope: !3707)
!3727 = distinct !DISubprogram(name: "base_reg_class", scope: !3708, file: !3708, line: 25, type: !3728, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!703, !5, !560, !560}
!3730 = !{!3731, !3732, !3733}
!3731 = !DILocalVariable(name: "mode", arg: 1, scope: !3727, file: !3708, line: 25, type: !5)
!3732 = !DILocalVariable(name: "outer_code", arg: 2, scope: !3727, file: !3708, line: 26, type: !560)
!3733 = !DILocalVariable(name: "index_code", arg: 3, scope: !3727, file: !3708, line: 27, type: !560)
!3734 = !DILocation(line: 0, scope: !3727)
!3735 = !DILocation(line: 39, column: 3, scope: !3727)
!3736 = distinct !DISubprogram(name: "ok_for_base_p_1", scope: !3708, file: !3708, line: 50, type: !3709, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3737)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "regno", arg: 1, scope: !3736, file: !3708, line: 50, type: !7)
!3739 = !DILocalVariable(name: "mode", arg: 2, scope: !3736, file: !3708, line: 50, type: !5)
!3740 = !DILocalVariable(name: "outer_code", arg: 3, scope: !3736, file: !3708, line: 51, type: !560)
!3741 = !DILocalVariable(name: "index_code", arg: 4, scope: !3736, file: !3708, line: 52, type: !560)
!3742 = !DILocation(line: 0, scope: !3736)
!3743 = !DILocation(line: 64, column: 10, scope: !3736)
!3744 = !DILocation(line: 64, column: 3, scope: !3736)
!3745 = distinct !DISubprogram(name: "cprop_find_used_regs_1", scope: !3, file: !3, line: 707, type: !3353, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DILocalVariable(name: "loc", arg: 1, scope: !3745, file: !3, line: 707, type: !1832)
!3748 = !DILocalVariable(name: "data", arg: 2, scope: !3745, file: !3, line: 707, type: !740)
!3749 = !DILocalVariable(name: "vd", scope: !3750, file: !3, line: 711, type: !746)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 710, column: 5)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 709, column: 7)
!3752 = !DILocation(line: 0, scope: !3745)
!3753 = !DILocation(line: 709, column: 7, scope: !3751)
!3754 = !DILocation(line: 709, column: 7, scope: !3745)
!3755 = !DILocation(line: 711, column: 31, scope: !3750)
!3756 = !DILocation(line: 0, scope: !3750)
!3757 = !DILocation(line: 712, column: 15, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 712, column: 11)
!3759 = !DILocation(line: 712, column: 17, scope: !3758)
!3760 = !DILocation(line: 712, column: 11, scope: !3758)
!3761 = !DILocation(line: 712, column: 31, scope: !3758)
!3762 = !DILocation(line: 712, column: 11, scope: !3750)
!3763 = !DILocation(line: 714, column: 34, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 713, column: 2)
!3765 = !DILocation(line: 714, column: 4, scope: !3764)
!3766 = !DILocation(line: 715, column: 33, scope: !3764)
!3767 = !DILocation(line: 715, column: 4, scope: !3764)
!3768 = !DILocation(line: 716, column: 2, scope: !3764)
!3769 = !DILocation(line: 718, column: 3, scope: !3745)
!3770 = distinct !DISubprogram(name: "free_debug_insn_changes", scope: !3, file: !3, line: 114, type: !3071, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "vd", arg: 1, scope: !3770, file: !3, line: 114, type: !746)
!3773 = !DILocalVariable(name: "regno", arg: 2, scope: !3770, file: !3, line: 114, type: !7)
!3774 = !DILocalVariable(name: "cur", scope: !3770, file: !3, line: 116, type: !757)
!3775 = !DILocalVariable(name: "next", scope: !3770, file: !3, line: 116, type: !757)
!3776 = !DILocation(line: 0, scope: !3770)
!3777 = !DILocation(line: 117, column: 14, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 117, column: 3)
!3779 = !DILocation(line: 117, column: 27, scope: !3778)
!3780 = !DILocation(line: 0, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 118, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 117, column: 3)
!3783 = !DILocation(line: 117, column: 8, scope: !3778)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 117, column: 3, scope: !3778)
!3786 = !DILocation(line: 119, column: 19, scope: !3781)
!3787 = !DILocation(line: 120, column: 7, scope: !3781)
!3788 = !DILocation(line: 121, column: 18, scope: !3781)
!3789 = !DILocation(line: 121, column: 7, scope: !3781)
!3790 = !DILocation(line: 117, column: 3, scope: !3782)
!3791 = distinct !{!3791, !3785, !3792}
!3792 = !DILocation(line: 122, column: 5, scope: !3778)
!3793 = !DILocation(line: 123, column: 35, scope: !3770)
!3794 = !DILocation(line: 124, column: 1, scope: !3770)
!3795 = distinct !DISubprogram(name: "set_value_regno", scope: !3, file: !3, line: 218, type: !3796, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !7, !5, !746}
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "regno", arg: 1, scope: !3795, file: !3, line: 218, type: !7)
!3800 = !DILocalVariable(name: "mode", arg: 2, scope: !3795, file: !3, line: 218, type: !5)
!3801 = !DILocalVariable(name: "vd", arg: 3, scope: !3795, file: !3, line: 219, type: !746)
!3802 = !DILocalVariable(name: "nregs", scope: !3795, file: !3, line: 221, type: !7)
!3803 = !DILocation(line: 0, scope: !3795)
!3804 = !DILocation(line: 223, column: 3, scope: !3795)
!3805 = !DILocation(line: 223, column: 16, scope: !3795)
!3806 = !DILocation(line: 223, column: 21, scope: !3795)
!3807 = !DILocation(line: 225, column: 11, scope: !3795)
!3808 = !DILocation(line: 226, column: 19, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 226, column: 7)
!3810 = !DILocation(line: 226, column: 13, scope: !3809)
!3811 = !DILocation(line: 226, column: 7, scope: !3795)
!3812 = !DILocation(line: 227, column: 24, scope: !3809)
!3813 = !DILocation(line: 227, column: 5, scope: !3809)
!3814 = !DILocation(line: 228, column: 1, scope: !3795)
!3815 = distinct !DISubprogram(name: "in_hard_reg_set_p", scope: !3816, file: !3816, line: 335, type: !3817, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3816 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!735, !3819, !5, !7}
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!3820 = !{!3821, !3822, !3823, !3824}
!3821 = !DILocalVariable(name: "regs", arg: 1, scope: !3815, file: !3816, line: 335, type: !3819)
!3822 = !DILocalVariable(name: "mode", arg: 2, scope: !3815, file: !3816, line: 335, type: !5)
!3823 = !DILocalVariable(name: "regno", arg: 3, scope: !3815, file: !3816, line: 336, type: !7)
!3824 = !DILocalVariable(name: "end_regno", scope: !3815, file: !3816, line: 338, type: !7)
!3825 = !DILocation(line: 0, scope: !3815)
!3826 = !DILocation(line: 340, column: 8, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 340, column: 7)
!3828 = !DILocation(line: 340, column: 7, scope: !3815)
!3829 = !DILocation(line: 343, column: 15, scope: !3815)
!3830 = !DILocation(line: 344, column: 3, scope: !3815)
!3831 = !DILocation(line: 344, column: 10, scope: !3815)
!3832 = !DILocation(line: 344, column: 18, scope: !3815)
!3833 = !DILocation(line: 345, column: 10, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 345, column: 9)
!3835 = !DILocation(line: 345, column: 9, scope: !3815)
!3836 = distinct !{!3836, !3830, !3837}
!3837 = !DILocation(line: 346, column: 14, scope: !3815)
!3838 = !DILocation(line: 349, column: 1, scope: !3815)
!3839 = distinct !DISubprogram(name: "end_hard_regno", scope: !3816, file: !3816, line: 290, type: !3840, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!7, !5, !7}
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "mode", arg: 1, scope: !3839, file: !3816, line: 290, type: !5)
!3844 = !DILocalVariable(name: "regno", arg: 2, scope: !3839, file: !3816, line: 290, type: !7)
!3845 = !DILocation(line: 0, scope: !3839)
!3846 = !DILocation(line: 292, column: 18, scope: !3839)
!3847 = !DILocation(line: 292, column: 16, scope: !3839)
!3848 = !DILocation(line: 292, column: 3, scope: !3839)
!3849 = distinct !DISubprogram(name: "mode_change_ok", scope: !3, file: !3, line: 379, type: !3850, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!735, !5, !5, !7}
!3852 = !{!3853, !3854, !3855}
!3853 = !DILocalVariable(name: "orig_mode", arg: 1, scope: !3849, file: !3, line: 379, type: !5)
!3854 = !DILocalVariable(name: "new_mode", arg: 2, scope: !3849, file: !3, line: 379, type: !5)
!3855 = !DILocalVariable(name: "regno", arg: 3, scope: !3849, file: !3, line: 380, type: !7)
!3856 = !DILocation(line: 0, scope: !3849)
!3857 = !DILocation(line: 382, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 382, column: 7)
!3859 = !DILocation(line: 382, column: 35, scope: !3858)
!3860 = !DILocation(line: 382, column: 33, scope: !3858)
!3861 = !DILocation(line: 382, column: 7, scope: !3849)
!3862 = !DILocation(line: 386, column: 11, scope: !3849)
!3863 = !DILocation(line: 386, column: 10, scope: !3849)
!3864 = !DILocation(line: 386, column: 3, scope: !3849)
!3865 = !DILocation(line: 390, column: 1, scope: !3849)
!3866 = distinct !DISubprogram(name: "kill_value_one_regno", scope: !3, file: !3, line: 132, type: !3867, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !7, !746}
!3869 = !{!3870, !3871, !3872, !3873}
!3870 = !DILocalVariable(name: "regno", arg: 1, scope: !3866, file: !3, line: 132, type: !7)
!3871 = !DILocalVariable(name: "vd", arg: 2, scope: !3866, file: !3, line: 132, type: !746)
!3872 = !DILocalVariable(name: "i", scope: !3866, file: !3, line: 134, type: !7)
!3873 = !DILocalVariable(name: "next", scope: !3866, file: !3, line: 134, type: !7)
!3874 = !DILocation(line: 0, scope: !3866)
!3875 = !DILocation(line: 136, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 136, column: 7)
!3877 = !DILocation(line: 136, column: 20, scope: !3876)
!3878 = !DILocation(line: 136, column: 33, scope: !3876)
!3879 = !DILocation(line: 136, column: 7, scope: !3866)
!3880 = !DILocation(line: 138, column: 12, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 138, column: 7)
!3882 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 137, column: 5)
!3883 = !DILocation(line: 0, scope: !3881)
!3884 = !DILocation(line: 139, column: 5, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 138, column: 7)
!3886 = !DILocation(line: 139, column: 14, scope: !3885)
!3887 = !DILocation(line: 139, column: 25, scope: !3885)
!3888 = !DILocation(line: 138, column: 7, scope: !3881)
!3889 = !DILocation(line: 138, column: 7, scope: !3885)
!3890 = distinct !{!3890, !3888, !3891}
!3891 = !DILocation(line: 141, column: 2, scope: !3881)
!3892 = !DILocation(line: 142, column: 42, scope: !3882)
!3893 = !DILocation(line: 142, column: 27, scope: !3882)
!3894 = !DILocation(line: 143, column: 5, scope: !3882)
!3895 = !DILocation(line: 144, column: 33, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 144, column: 12)
!3897 = !DILocation(line: 144, column: 45, scope: !3896)
!3898 = !DILocation(line: 144, column: 12, scope: !3876)
!3899 = !DILocation(line: 146, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 146, column: 7)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 145, column: 5)
!3902 = !DILocation(line: 0, scope: !3900)
!3903 = !DILocation(line: 146, column: 24, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 146, column: 7)
!3905 = !DILocation(line: 147, column: 2, scope: !3904)
!3906 = !DILocation(line: 147, column: 11, scope: !3904)
!3907 = !DILocation(line: 147, column: 24, scope: !3904)
!3908 = !DILocation(line: 146, column: 56, scope: !3904)
!3909 = !DILocation(line: 146, column: 7, scope: !3904)
!3910 = distinct !{!3910, !3899, !3911}
!3911 = !DILocation(line: 147, column: 26, scope: !3900)
!3912 = !DILocation(line: 150, column: 3, scope: !3866)
!3913 = !DILocation(line: 150, column: 16, scope: !3866)
!3914 = !DILocation(line: 150, column: 21, scope: !3866)
!3915 = !DILocation(line: 151, column: 29, scope: !3866)
!3916 = !DILocation(line: 152, column: 16, scope: !3866)
!3917 = !DILocation(line: 152, column: 27, scope: !3866)
!3918 = !DILocation(line: 153, column: 20, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 153, column: 7)
!3920 = !DILocation(line: 153, column: 7, scope: !3919)
!3921 = !DILocation(line: 153, column: 7, scope: !3866)
!3922 = !DILocation(line: 154, column: 5, scope: !3919)
!3923 = !DILocation(line: 159, column: 1, scope: !3866)
