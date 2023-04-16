; ModuleID = 'regmove.bc'
source_filename = "regmove.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type opaque
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
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
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
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.match = type { [30 x i32], [30 x i32], [30 x i32], [30 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@pass_regmove = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_regmove, i32 ()* @regmove_optimize, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 142, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_regmove = external dso_local local_unnamed_addr global i32, align 4
@flag_ira_loop_pressure = external dso_local local_unnamed_addr global i32, align 4
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@regno_src_regno = internal unnamed_addr global i32* null, align 8, !dbg !1927
@reg_set_in_bb = internal unnamed_addr global %struct.basic_block_def** null, align 8, !dbg !1931
@flag_expensive_optimizations = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Starting forward pass...\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@reg_info_p = external dso_local local_unnamed_addr global %struct.reg_info_t*, align 8
@regstat_n_sets_and_refs = external dso_local local_unnamed_addr global %struct.regstat_n_sets_and_refs_t*, align 8
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Starting backward pass...\0A\00", align 1
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Could fix operand %d of insn %d matching operand %d.\0A\00", align 1
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@.str.4 = private unnamed_addr constant [50 x i8] c"Fixed operand %d of insn %d matching operand %d.\0A\00", align 1
@which_alternative = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Fixed operand of insn %d.\0A\00", align 1
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@max_reg_computed = internal unnamed_addr global i32 0, align 4, !dbg !1929
@.str.6 = private unnamed_addr constant [10 x i8] c"regmove.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1977, metadata !DIExpression()), !dbg !1978
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1979
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1980
  ret i32 %call, !dbg !1981
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1982 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1986
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1987
  ret i32 %call, !dbg !1988
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2043, metadata !DIExpression()), !dbg !2044
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2045
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2045
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2045
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2045
  %cmp = icmp uge i8* %0, %1, !dbg !2045
  %conv1 = zext i1 %cmp to i64, !dbg !2045
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2045
  %tobool = icmp eq i64 %expval, 0, !dbg !2045
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2045

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2045
  br label %cond.end, !dbg !2045

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2045
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2045
  %2 = load i8, i8* %0, align 1, !dbg !2045
  %conv3 = zext i8 %2 to i32, !dbg !2045
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2045
  ret i32 %cond, !dbg !2046
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2049, metadata !DIExpression()), !dbg !2050
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2051
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2051
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2051
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2051
  %cmp = icmp uge i8* %0, %1, !dbg !2051
  %conv1 = zext i1 %cmp to i64, !dbg !2051
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2051
  %tobool = icmp eq i64 %expval, 0, !dbg !2051
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2051

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2051
  br label %cond.end, !dbg !2051

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2051
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2051
  %2 = load i8, i8* %0, align 1, !dbg !2051
  %conv3 = zext i8 %2 to i32, !dbg !2051
  br label %cond.end, !dbg !2051

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2051
  ret i32 %cond, !dbg !2052
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2053 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2054
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2054
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2054
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2054
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2054
  %cmp = icmp uge i8* %1, %2, !dbg !2054
  %conv1 = zext i1 %cmp to i64, !dbg !2054
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2054
  %tobool = icmp eq i64 %expval, 0, !dbg !2054
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2054

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2054
  br label %cond.end, !dbg !2054

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2054
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2054
  %3 = load i8, i8* %1, align 1, !dbg !2054
  %conv3 = zext i8 %3 to i32, !dbg !2054
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2054
  ret i32 %cond, !dbg !2055
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2060, metadata !DIExpression()), !dbg !2061
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2062
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2063
  ret i32 %call, !dbg !2064
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2065 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2070, metadata !DIExpression()), !dbg !2071
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2072
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2072
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2072
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2072
  %cmp = icmp uge i8* %0, %1, !dbg !2072
  %conv1 = zext i1 %cmp to i64, !dbg !2072
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2072
  %tobool = icmp eq i64 %expval, 0, !dbg !2072
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2072

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2072
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2072
  br label %cond.end, !dbg !2072

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2072
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2072
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2072
  store i8 %conv2, i8* %0, align 1, !dbg !2072
  %conv6 = and i32 %__c, 255, !dbg !2072
  br label %cond.end, !dbg !2072

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2072
  ret i32 %cond, !dbg !2073
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2077, metadata !DIExpression()), !dbg !2078
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2079
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2079
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2079
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2079
  %cmp = icmp uge i8* %0, %1, !dbg !2079
  %conv1 = zext i1 %cmp to i64, !dbg !2079
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2079
  %tobool = icmp eq i64 %expval, 0, !dbg !2079
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2079

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2079
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2079
  br label %cond.end, !dbg !2079

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2079
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2079
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2079
  store i8 %conv2, i8* %0, align 1, !dbg !2079
  %conv6 = and i32 %__c, 255, !dbg !2079
  br label %cond.end, !dbg !2079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2079
  ret i32 %cond, !dbg !2080
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2081 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2083, metadata !DIExpression()), !dbg !2084
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2085
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2085
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2085
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2085
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2085
  %cmp = icmp uge i8* %1, %2, !dbg !2085
  %conv1 = zext i1 %cmp to i64, !dbg !2085
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2085
  %tobool = icmp eq i64 %expval, 0, !dbg !2085
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2085

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2085
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2085
  br label %cond.end, !dbg !2085

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2085
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2085
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2085
  store i8 %conv4, i8* %1, align 1, !dbg !2085
  %conv6 = and i32 %__c, 255, !dbg !2085
  br label %cond.end, !dbg !2085

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2085
  ret i32 %cond, !dbg !2086
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2087 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2095, metadata !DIExpression()), !dbg !2096
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2097
  ret i64 %call, !dbg !2098
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2101, metadata !DIExpression()), !dbg !2102
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2103
  %0 = load i32, i32* %_flags, align 8, !dbg !2103
  %and = lshr i32 %0, 4, !dbg !2103
  %and.lobit = and i32 %and, 1, !dbg !2103
  ret i32 %and.lobit, !dbg !2104
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2107, metadata !DIExpression()), !dbg !2108
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2109
  %0 = load i32, i32* %_flags, align 8, !dbg !2109
  %and = lshr i32 %0, 5, !dbg !2109
  %and.lobit = and i32 %and, 1, !dbg !2109
  ret i32 %and.lobit, !dbg !2110
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2114, metadata !DIExpression()), !dbg !2115
  %__c.off = add i32 %__c, 128, !dbg !2116
  %0 = icmp ult i32 %__c.off, 384, !dbg !2116
  br i1 %0, label %cond.true, label %cond.end, !dbg !2116

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2117
  %1 = load i32*, i32** %call, align 8, !dbg !2118
  %idxprom = sext i32 %__c to i64, !dbg !2119
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2119
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2119
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2124, metadata !DIExpression()), !dbg !2125
  %__c.off = add i32 %__c, 128, !dbg !2126
  %0 = icmp ult i32 %__c.off, 384, !dbg !2126
  br i1 %0, label %cond.true, label %cond.end, !dbg !2126

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2127
  %1 = load i32*, i32** %call, align 8, !dbg !2128
  %idxprom = sext i32 %__c to i64, !dbg !2129
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2129
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2129
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2137, metadata !DIExpression()), !dbg !2138
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2139
  %conv = trunc i64 %call to i32, !dbg !2140
  ret i32 %conv, !dbg !2141
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2146, metadata !DIExpression()), !dbg !2147
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2148
  ret i64 %call, !dbg !2149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2155, metadata !DIExpression()), !dbg !2156
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2157
  ret i64 %call, !dbg !2158
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2165, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2166, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2167, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2168, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2169, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2171, metadata !DIExpression()), !dbg !2175
  br label %while.cond, !dbg !2176

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2177
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2171, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2170, metadata !DIExpression()), !dbg !2175
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2178
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2176

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2179
  %div = lshr i64 %add, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %div, metadata !2172, metadata !DIExpression()), !dbg !2175
  %mul = mul i64 %div, %__size, !dbg !2182
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2183
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2173, metadata !DIExpression()), !dbg !2175
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %call, metadata !2174, metadata !DIExpression()), !dbg !2175
  %cmp1 = icmp slt i32 %call, 0, !dbg !2185
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2187

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2188
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2190

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2170, metadata !DIExpression()), !dbg !2175
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2175
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2171, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2170, metadata !DIExpression()), !dbg !2175
  br label %while.cond, !dbg !2176, !llvm.loop !2192

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2175
  ret i8* %retval.0, !dbg !2194
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2201, metadata !DIExpression()), !dbg !2202
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2203
  ret double %call, !dbg !2204
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %base, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2218
  ret i64 %call, !dbg !2219
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %base, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2230
  ret i64 %call, !dbg !2231
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %base, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2247
  ret i64 %call, !dbg !2248
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %base, metadata !2255, metadata !DIExpression()), !dbg !2256
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2257
  ret i64 %call, !dbg !2258
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2307, metadata !DIExpression()), !dbg !2308
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2309
  ret i32 %call, !dbg !2310
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2317
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2318
  ret i32 %call, !dbg !2319
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2327, metadata !DIExpression()), !dbg !2328
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2329
  ret i32 %call, !dbg !2330
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2331 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2335, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2337, metadata !DIExpression()), !dbg !2338
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2337, metadata !DIExpression(DW_OP_deref)), !dbg !2338
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2339
  ret i32 %call, !dbg !2340
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2341 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2348, metadata !DIExpression()), !dbg !2349
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2348, metadata !DIExpression(DW_OP_deref)), !dbg !2349
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2377, metadata !DIExpression()), !dbg !2378
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2379
  ret i32 %call, !dbg !2380
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2384, metadata !DIExpression()), !dbg !2385
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2386
  ret i32 %call, !dbg !2387
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2388 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2393, metadata !DIExpression()), !dbg !2394
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2395
  ret i32 %call, !dbg !2396
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2404, metadata !DIExpression()), !dbg !2405
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2406
  ret i32 %call, !dbg !2407
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_regmove() #5 !dbg !2408 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2409
  %cmp = icmp sgt i32 %0, 0, !dbg !2410
  %1 = load i32, i32* @flag_regmove, align 4, !dbg !2411
  %tobool = icmp ne i32 %1, 0, !dbg !2411
  %2 = and i1 %cmp, %tobool, !dbg !2411
  %conv = zext i1 %2 to i8, !dbg !2412
  ret i8 %conv, !dbg !2413
}

; Function Attrs: nounwind uwtable
define internal i32 @regmove_optimize() #5 !dbg !2414 {
entry:
  %call = tail call i32 @max_reg_num() #6, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %call, metadata !2417, metadata !DIExpression()), !dbg !2419
  tail call void @df_note_add_problem() #6, !dbg !2420
  tail call void @df_analyze() #6, !dbg !2421
  %0 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !2422
  %tobool = icmp eq i32 %0, 0, !dbg !2422
  br i1 %tobool, label %if.end, label %if.then, !dbg !2424

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2425
  tail call void @ira_set_pseudo_classes(%struct._IO_FILE* %1) #6, !dbg !2426
  br label %if.end, !dbg !2426

if.end:                                           ; preds = %entry, %if.then
  tail call void @regstat_init_n_sets_and_refs() #6, !dbg !2427
  tail call void @regstat_compute_ri() #6, !dbg !2428
  %conv = sext i32 %call to i64, !dbg !2429
  %mul = shl nsw i64 %conv, 2, !dbg !2429
  %call1 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2429
  store i8* %call1, i8** bitcast (i32** @regno_src_regno to i8**), align 8, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %call, metadata !2416, metadata !DIExpression()), !dbg !2419
  %2 = sext i32 %call to i64, !dbg !2431
  br label %for.cond, !dbg !2431

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %2, %if.end ], !dbg !2433
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2416, metadata !DIExpression()), !dbg !2419
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2434
  call void @llvm.dbg.value(metadata i32 undef, metadata !2416, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2419
  %cmp = icmp sgt i64 %indvars.iv, 0, !dbg !2436
  br i1 %cmp, label %for.body, label %for.end, !dbg !2437

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** @regno_src_regno, align 8, !dbg !2438
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %indvars.iv.next, !dbg !2438
  store i32 -1, i32* %arrayidx, align 4, !dbg !2439
  br label %for.cond, !dbg !2440, !llvm.loop !2441

for.end:                                          ; preds = %for.cond
  tail call fastcc void @regmove_forward_pass() #7, !dbg !2443
  tail call fastcc void @regmove_backward_pass() #7, !dbg !2444
  %4 = load i8*, i8** bitcast (i32** @regno_src_regno to i8**), align 8, !dbg !2445
  tail call void @free(i8* %4) #6, !dbg !2446
  %5 = load %struct.basic_block_def**, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !2447
  %tobool3 = icmp eq %struct.basic_block_def** %5, null, !dbg !2447
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2449

if.then4:                                         ; preds = %for.end
  %6 = bitcast %struct.basic_block_def** %5 to i8*, !dbg !2449
  tail call void @free(i8* nonnull %6) #6, !dbg !2450
  store %struct.basic_block_def** null, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !2452
  br label %if.end5, !dbg !2453

if.end5:                                          ; preds = %for.end, %if.then4
  tail call void @regstat_free_n_sets_and_refs() #6, !dbg !2454
  tail call void @regstat_free_ri() #6, !dbg !2455
  %7 = load i32, i32* @flag_ira_loop_pressure, align 4, !dbg !2456
  %tobool6 = icmp eq i32 %7, 0, !dbg !2456
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2458

if.then7:                                         ; preds = %if.end5
  tail call void @free_reg_info() #6, !dbg !2459
  br label %if.end8, !dbg !2459

if.end8:                                          ; preds = %if.end5, %if.then7
  ret i32 0, !dbg !2460
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #2

declare dso_local void @df_note_add_problem() local_unnamed_addr #2

declare dso_local void @df_analyze() local_unnamed_addr #2

declare dso_local void @ira_set_pseudo_classes(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @regstat_init_n_sets_and_refs() local_unnamed_addr #2

declare dso_local void @regstat_compute_ri() local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @regmove_forward_pass() unnamed_addr #5 !dbg !2461 {
entry:
  %0 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2481
  %tobool = icmp eq i32 %0, 0, !dbg !2481
  br i1 %tobool, label %cleanup.cont198, label %if.end, !dbg !2483

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2484
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !2484
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2486

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2487
  br label %if.end3, !dbg !2487

if.end3:                                          ; preds = %if.end, %if.then2
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2488
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2488
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2488
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2488
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2488
  br label %for.cond, !dbg !2488

for.cond:                                         ; preds = %for.inc192, %if.end3
  %5 = phi %struct.control_flow_graph* [ %3, %if.end3 ], [ %.pre1, %for.inc192 ], !dbg !2489
  %.pn = phi %struct.basic_block_def* [ %4, %if.end3 ], [ %bb.0, %for.inc192 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2490
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2465, metadata !DIExpression()), !dbg !2491
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2489
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2489
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2489
  br i1 %cmp, label %cleanup.cont198.loopexit, label %for.body, !dbg !2488

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2492
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2492
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2492
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 0, !dbg !2492
  br label %for.cond6, !dbg !2492

for.cond6:                                        ; preds = %cleanup, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx191, %cleanup ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2466, metadata !DIExpression()), !dbg !2491
  %tobool7 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2494
  br i1 %tobool7, label %for.inc192, label %land.rhs, !dbg !2494

land.rhs:                                         ; preds = %for.cond6
  %8 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2494
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %8, i64 0, i32 1, !dbg !2494
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2494
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2494
  %rt_rtx = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !2494
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2494
  %cmp10 = icmp eq %struct.rtx_def* %insn.0, %11, !dbg !2494
  br i1 %cmp10, label %for.inc192, label %for.body11, !dbg !2492

for.body11:                                       ; preds = %land.rhs
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2495
  %bf.load = load i32, i32* %12, align 8, !dbg !2495
  %bf.clear = and i32 %bf.load, 65535, !dbg !2495
  %cmp12 = icmp eq i32 %bf.clear, 8, !dbg !2495
  br i1 %cmp12, label %cond.true, label %lor.lhs.false, !dbg !2495

lor.lhs.false:                                    ; preds = %for.body11
  %cmp15 = icmp eq i32 %bf.clear, 7, !dbg !2495
  br i1 %cmp15, label %cond.true, label %lor.lhs.false16, !dbg !2495

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %cmp19 = icmp eq i32 %bf.clear, 9, !dbg !2495
  br i1 %cmp19, label %cond.true, label %lor.lhs.false20, !dbg !2495

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %cmp23 = icmp eq i32 %bf.clear, 10, !dbg !2495
  br i1 %cmp23, label %cond.true, label %cond.end42, !dbg !2495

cond.true:                                        ; preds = %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false, %for.body11
  %u24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2495
  %13 = getelementptr inbounds %union.u, %union.u* %u24, i64 1, i32 0, i32 0, i64 0, !dbg !2495
  %14 = bitcast %union.rtunion_def* %13 to i32**, !dbg !2495
  %15 = load i32*, i32** %14, align 8, !dbg !2495
  %bf.load28 = load i32, i32* %15, align 8, !dbg !2495
  %bf.clear29 = and i32 %bf.load28, 65535, !dbg !2495
  %cmp30 = icmp eq i32 %bf.clear29, 23, !dbg !2495
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !2495
  br i1 %cmp30, label %cond.end42, label %cond.false, !dbg !2495

cond.false:                                       ; preds = %cond.true
  %call40 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %16) #6, !dbg !2495
  br label %cond.end42, !dbg !2495

cond.end42:                                       ; preds = %lor.lhs.false20, %cond.false, %cond.true
  %cond43 = phi %struct.rtx_def* [ %call40, %cond.false ], [ %16, %cond.true ], [ null, %lor.lhs.false20 ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond43, metadata !2467, metadata !DIExpression()), !dbg !2496
  %tobool44 = icmp eq %struct.rtx_def* %cond43, null, !dbg !2497
  br i1 %tobool44, label %cleanup, label %if.end46, !dbg !2499

if.end46:                                         ; preds = %cond.end42
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond43, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2500
  %18 = bitcast %union.rtunion_def* %17 to i32**, !dbg !2500
  %19 = load i32*, i32** %18, align 8, !dbg !2500
  %bf.load51 = load i32, i32* %19, align 8, !dbg !2500
  %bf.clear52 = and i32 %bf.load51, 65535, !dbg !2500
  %cmp53 = icmp eq i32 %bf.clear52, 98, !dbg !2502
  %20 = bitcast i32* %19 to %struct.rtx_def*, !dbg !2503
  br i1 %cmp53, label %land.lhs.true, label %lor.lhs.false54, !dbg !2503

lor.lhs.false54:                                  ; preds = %if.end46
  %cmp61 = icmp eq i32 %bf.clear52, 99, !dbg !2504
  br i1 %cmp61, label %land.lhs.true, label %if.end90, !dbg !2505

land.lhs.true:                                    ; preds = %lor.lhs.false54, %if.end46
  %arrayidx68 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !2506
  %21 = bitcast i32* %arrayidx68 to i32**, !dbg !2506
  %22 = load i32*, i32** %21, align 8, !dbg !2506
  %bf.load70 = load i32, i32* %22, align 8, !dbg !2506
  %bf.clear71 = and i32 %bf.load70, 65535, !dbg !2506
  %cmp72 = icmp eq i32 %bf.clear71, 37, !dbg !2506
  br i1 %cmp72, label %land.lhs.true73, label %if.end90, !dbg !2507

land.lhs.true73:                                  ; preds = %land.lhs.true
  %arrayidx76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond43, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2508
  %23 = bitcast %union.rtunion_def* %arrayidx76 to i32**, !dbg !2508
  %24 = load i32*, i32** %23, align 8, !dbg !2508
  %bf.load78 = load i32, i32* %24, align 8, !dbg !2508
  %bf.clear79 = and i32 %bf.load78, 65535, !dbg !2508
  %cmp80 = icmp eq i32 %bf.clear79, 37, !dbg !2508
  br i1 %cmp80, label %if.then81, label %if.end90, !dbg !2509

if.then81:                                        ; preds = %land.lhs.true73
  %25 = bitcast i32* %24 to %struct.rtx_def*, !dbg !2509
  tail call fastcc void @optimize_reg_copy_3(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %25, %struct.rtx_def* %20) #7, !dbg !2510
  %.pre2 = load i32*, i32** %18, align 8, !dbg !2511
  %bf.load95.pre = load i32, i32* %.pre2, align 8, !dbg !2511
  %26 = bitcast i32* %.pre2 to %struct.rtx_def*, !dbg !2510
  br label %if.end90, !dbg !2510

if.end90:                                         ; preds = %if.then81, %land.lhs.true73, %land.lhs.true, %lor.lhs.false54
  %27 = phi %struct.rtx_def* [ %26, %if.then81 ], [ %20, %land.lhs.true73 ], [ %20, %land.lhs.true ], [ %20, %lor.lhs.false54 ]
  %bf.load95 = phi i32 [ %bf.load95.pre, %if.then81 ], [ %bf.load51, %land.lhs.true73 ], [ %bf.load51, %land.lhs.true ], [ %bf.load51, %lor.lhs.false54 ], !dbg !2511
  %bf.clear96 = and i32 %bf.load95, 65535, !dbg !2511
  %cmp97 = icmp eq i32 %bf.clear96, 37, !dbg !2511
  br i1 %cmp97, label %land.lhs.true98, label %cleanup, !dbg !2512

land.lhs.true98:                                  ; preds = %if.end90
  %arrayidx101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond43, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2513
  %28 = bitcast %union.rtunion_def* %arrayidx101 to i32**, !dbg !2513
  %29 = load i32*, i32** %28, align 8, !dbg !2513
  %bf.load103 = load i32, i32* %29, align 8, !dbg !2513
  %bf.clear104 = and i32 %bf.load103, 65535, !dbg !2513
  %cmp105 = icmp eq i32 %bf.clear104, 37, !dbg !2513
  br i1 %cmp105, label %if.then106, label %cleanup, !dbg !2514

if.then106:                                       ; preds = %land.lhs.true98
  %rt_rtx110 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !2515
  %call111 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %insn.0, i32 1, %struct.rtx_def* %27) #6, !dbg !2516
  %tobool112 = icmp eq %struct.rtx_def* %call111, null, !dbg !2516
  br i1 %tobool112, label %lor.lhs.false113, label %if.then106.land.lhs.true124_crit_edge, !dbg !2517

if.then106.land.lhs.true124_crit_edge:            ; preds = %if.then106
  %.pre4 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**, !dbg !2518
  br label %land.lhs.true124, !dbg !2517

lor.lhs.false113:                                 ; preds = %if.then106
  %rt_rtx117 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**, !dbg !2519
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx117, align 8, !dbg !2519
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx110, align 8, !dbg !2520
  %call122 = tail call fastcc i32 @optimize_reg_copy_1(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %30, %struct.rtx_def* %31) #7, !dbg !2521
  %tobool123 = icmp eq i32 %call122, 0, !dbg !2521
  br i1 %tobool123, label %cleanup, label %land.lhs.true124, !dbg !2522

land.lhs.true124:                                 ; preds = %if.then106.land.lhs.true124_crit_edge, %lor.lhs.false113
  %rt_rtx128.pre-phi = phi %struct.rtx_def** [ %.pre4, %if.then106.land.lhs.true124_crit_edge ], [ %rt_rtx117, %lor.lhs.false113 ], !dbg !2518
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx128.pre-phi, align 8, !dbg !2518
  %call129 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %32) #7, !dbg !2518
  %cmp130 = icmp ugt i32 %call129, 52, !dbg !2523
  br i1 %cmp130, label %if.then131, label %cleanup, !dbg !2524

if.then131:                                       ; preds = %land.lhs.true124
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx110, align 8, !dbg !2525
  %call136 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %33) #7, !dbg !2525
  %cmp137 = icmp ugt i32 %call136, 52, !dbg !2527
  br i1 %cmp137, label %if.then138, label %if.end147, !dbg !2528

if.then138:                                       ; preds = %if.then131
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx128.pre-phi, align 8, !dbg !2529
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx110, align 8, !dbg !2530
  tail call fastcc void @optimize_reg_copy_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %34, %struct.rtx_def* %35) #7, !dbg !2531
  br label %if.end147, !dbg !2531

if.end147:                                        ; preds = %if.then138, %if.then131
  %36 = load i32*, i32** @regno_src_regno, align 8, !dbg !2532
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx128.pre-phi, align 8, !dbg !2533
  %call152 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %37) #7, !dbg !2533
  %idxprom = zext i32 %call152 to i64, !dbg !2532
  %arrayidx153 = getelementptr inbounds i32, i32* %36, i64 %idxprom, !dbg !2532
  %38 = load i32, i32* %arrayidx153, align 4, !dbg !2532
  %cmp154 = icmp slt i32 %38, 0, !dbg !2534
  br i1 %cmp154, label %land.lhs.true155, label %cleanup, !dbg !2535

land.lhs.true155:                                 ; preds = %if.end147
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx110, align 8, !dbg !2536
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx128.pre-phi, align 8, !dbg !2537
  %cmp164 = icmp eq %struct.rtx_def* %39, %40, !dbg !2538
  br i1 %cmp164, label %cleanup, label %if.then165, !dbg !2539

if.then165:                                       ; preds = %land.lhs.true155
  %call170 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %39) #7, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %call170, metadata !2474, metadata !DIExpression()), !dbg !2541
  %41 = load i32*, i32** @regno_src_regno, align 8, !dbg !2542
  %idxprom171 = sext i32 %call170 to i64, !dbg !2542
  %arrayidx172 = getelementptr inbounds i32, i32* %41, i64 %idxprom171, !dbg !2542
  %42 = load i32, i32* %arrayidx172, align 4, !dbg !2542
  %cmp173 = icmp sgt i32 %42, -1, !dbg !2544
  br i1 %cmp173, label %if.then174, label %if.end177, !dbg !2545

if.then174:                                       ; preds = %if.then165
  call void @llvm.dbg.value(metadata i32 %42, metadata !2474, metadata !DIExpression()), !dbg !2541
  br label %if.end177, !dbg !2546

if.end177:                                        ; preds = %if.then174, %if.then165
  %srcregno.0 = phi i32 [ %42, %if.then174 ], [ %call170, %if.then165 ], !dbg !2541
  call void @llvm.dbg.value(metadata i32 %srcregno.0, metadata !2474, metadata !DIExpression()), !dbg !2541
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx128.pre-phi, align 8, !dbg !2547
  %call182 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %43) #7, !dbg !2547
  %idxprom183 = zext i32 %call182 to i64, !dbg !2548
  %arrayidx184 = getelementptr inbounds i32, i32* %41, i64 %idxprom183, !dbg !2548
  store i32 %srcregno.0, i32* %arrayidx184, align 4, !dbg !2549
  br label %cleanup, !dbg !2550

cleanup:                                          ; preds = %land.lhs.true155, %lor.lhs.false113, %cond.end42, %if.end90, %land.lhs.true98, %if.end147, %if.end177, %land.lhs.true124
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2494
  %rt_rtx191 = bitcast %union.rtunion_def* %44 to %struct.rtx_def**, !dbg !2494
  br label %for.cond6, !dbg !2494, !llvm.loop !2551

for.inc192:                                       ; preds = %land.rhs, %for.cond6
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2489
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2553
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !2489
  br label %for.cond, !dbg !2489, !llvm.loop !2554

cleanup.cont198.loopexit:                         ; preds = %for.cond
  br label %cleanup.cont198, !dbg !2556

cleanup.cont198:                                  ; preds = %cleanup.cont198.loopexit, %entry
  ret void, !dbg !2556
}

; Function Attrs: nounwind uwtable
define internal fastcc void @regmove_backward_pass() unnamed_addr #5 !dbg !2557 {
entry:
  %match = alloca %struct.match, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2609
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2609
  br i1 %tobool, label %if.end, label %if.then, !dbg !2611

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2612
  br label %if.end, !dbg !2612

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2613
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2613
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2613
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !2613
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2613
  %4 = bitcast %struct.match* %match to i8*, !dbg !2614
  br label %for.cond, !dbg !2613

for.cond:                                         ; preds = %for.inc593, %if.end
  %5 = phi %struct.control_flow_graph* [ %2, %if.end ], [ %.pre14, %for.inc593 ], !dbg !2615
  %.pn = phi %struct.basic_block_def* [ %3, %if.end ], [ %bb.0, %for.inc593 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2616
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2559, metadata !DIExpression()), !dbg !2617
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2615
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2615
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2615
  br i1 %cmp, label %for.end595, label %for.body, !dbg !2613

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2618
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2618
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2618
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !2618
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !2560, metadata !DIExpression()), !dbg !2617
  %tobool3 = icmp eq %struct.rtx_def* %8, null, !dbg !2618
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2618

cond.true:                                        ; preds = %for.body
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2618
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2618
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2618
  br label %cond.end, !dbg !2618

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.rtx_def* [ %10, %cond.true ], [ null, %for.body ], !dbg !2618
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2561, metadata !DIExpression()), !dbg !2617
  br label %for.cond4, !dbg !2618

for.cond4:                                        ; preds = %cond.end590, %cond.end
  %prev.0 = phi %struct.rtx_def* [ %cond, %cond.end ], [ %cond591, %cond.end590 ], !dbg !2619
  %insn.0 = phi %struct.rtx_def* [ %8, %cond.end ], [ %prev.0, %cond.end590 ], !dbg !2619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0, metadata !2561, metadata !DIExpression()), !dbg !2617
  %tobool5 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2620
  br i1 %tobool5, label %for.inc593, label %land.rhs, !dbg !2620

land.rhs:                                         ; preds = %for.cond4
  %11 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2620
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 0, !dbg !2620
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2620
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2620
  %rt_rtx11 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !2620
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx11, align 8, !dbg !2620
  %cmp12 = icmp eq %struct.rtx_def* %insn.0, %14, !dbg !2620
  br i1 %cmp12, label %for.inc593, label %for.body13, !dbg !2618

for.body13:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %4) #8, !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2583, metadata !DIExpression()), !dbg !2614
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2622
  %bf.load = load i32, i32* %15, align 8, !dbg !2622
  %bf.clear = and i32 %bf.load, 65535, !dbg !2622
  %cmp14 = icmp eq i32 %bf.clear, 8, !dbg !2622
  br i1 %cmp14, label %if.end27, label %lor.lhs.false, !dbg !2622

lor.lhs.false:                                    ; preds = %for.body13
  %cmp17 = icmp eq i32 %bf.clear, 7, !dbg !2622
  br i1 %cmp17, label %if.end27, label %lor.lhs.false18, !dbg !2622

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %cmp21 = icmp eq i32 %bf.clear, 9, !dbg !2622
  br i1 %cmp21, label %if.end27, label %lor.lhs.false22, !dbg !2622

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %cmp25 = icmp eq i32 %bf.clear, 10, !dbg !2622
  br i1 %cmp25, label %if.end27, label %cleanup574, !dbg !2624

if.end27:                                         ; preds = %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false, %for.body13
  call void @llvm.dbg.value(metadata %struct.match* %match, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2614
  %call28 = call fastcc i32 @find_matches(%struct.rtx_def* nonnull %insn.0, %struct.match* nonnull %match) #7, !dbg !2625
  %tobool29 = icmp eq i32 %call28, 0, !dbg !2625
  br i1 %tobool29, label %cleanup574, label %for.cond32.preheader, !dbg !2627

for.cond32.preheader:                             ; preds = %if.end27
  %u114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2628
  %16 = getelementptr inbounds %union.u, %union.u* %u114, i64 1, i32 0, i32 0, i64 0, !dbg !2628
  %17 = bitcast %union.rtunion_def* %16 to i32**, !dbg !2628
  %rt_rtx126 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !2628
  %arrayidx266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2629
  %rt_int = bitcast %union.rtunion_def* %arrayidx266 to i32*, !dbg !2629
  br label %for.cond32, !dbg !2631

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc565
  %indvars.iv = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next, %for.inc565 ], !dbg !2632
  %success.0 = phi i32 [ 0, %for.cond32.preheader ], [ %success.5, %for.inc565 ], !dbg !2632
  %copy_dst.0 = phi %struct.rtx_def* [ null, %for.cond32.preheader ], [ %copy_dst.4, %for.inc565 ], !dbg !2633
  %copy_src.0 = phi %struct.rtx_def* [ null, %for.cond32.preheader ], [ %copy_src.4, %for.inc565 ], !dbg !2634
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_src.0, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_dst.0, metadata !2580, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2581, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %success.0, metadata !2583, metadata !DIExpression()), !dbg !2614
  %18 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2635
  %19 = sext i8 %18 to i64, !dbg !2636
  %cmp33 = icmp slt i64 %indvars.iv, %19, !dbg !2636
  br i1 %cmp33, label %for.body35, label %for.end567, !dbg !2631

for.body35:                                       ; preds = %for.cond32
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2594, metadata !DIExpression()), !dbg !2628
  %arrayidx36 = getelementptr inbounds %struct.match, %struct.match* %match, i64 0, i32 0, i64 %indvars.iv, !dbg !2637
  %20 = load i32, i32* %arrayidx36, align 4, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %20, metadata !2582, metadata !DIExpression()), !dbg !2614
  %cmp37 = icmp slt i32 %20, 0, !dbg !2638
  br i1 %cmp37, label %cleanup552, label %if.end40, !dbg !2640

if.end40:                                         ; preds = %for.body35
  %idxprom41 = sext i32 %20 to i64, !dbg !2641
  %arrayidx42 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom41, !dbg !2641
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !2590, metadata !DIExpression()), !dbg !2628
  %arrayidx44 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv, !dbg !2642
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx44, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !2589, metadata !DIExpression()), !dbg !2628
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 0, !dbg !2643
  %bf.load45 = load i32, i32* %23, align 8, !dbg !2643
  %bf.clear46 = and i32 %bf.load45, 65535, !dbg !2643
  %cmp47 = icmp eq i32 %bf.clear46, 37, !dbg !2643
  br i1 %cmp47, label %if.end50, label %cleanup552, !dbg !2645

if.end50:                                         ; preds = %if.end40
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 0, !dbg !2646
  %bf.load51 = load i32, i32* %24, align 8, !dbg !2646
  %bf.clear52 = and i32 %bf.load51, 65535, !dbg !2646
  %cmp53 = icmp eq i32 %bf.clear52, 37, !dbg !2646
  br i1 %cmp53, label %lor.lhs.false55, label %cleanup552, !dbg !2648

lor.lhs.false55:                                  ; preds = %if.end50
  %call56 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2649
  %cmp57 = icmp ult i32 %call56, 53, !dbg !2650
  br i1 %cmp57, label %cleanup552, label %lor.lhs.false59, !dbg !2651

lor.lhs.false59:                                  ; preds = %lor.lhs.false55
  %25 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2652
  %call60 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2652
  %idxprom61 = zext i32 %call60 to i64, !dbg !2652
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %25, i64 %idxprom61, i32 2, !dbg !2652
  %26 = load i32, i32* %live_length, align 4, !dbg !2652
  %cmp63 = icmp slt i32 %26, 0, !dbg !2653
  br i1 %cmp63, label %cleanup552, label %lor.lhs.false65, !dbg !2654

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %bf.load66 = load i32, i32* %23, align 8, !dbg !2655
  %bf.load68 = load i32, i32* %24, align 8, !dbg !2656
  %bf.lshr11 = xor i32 %bf.load66, %bf.load68, !dbg !2657
  %27 = and i32 %bf.lshr11, 16711680, !dbg !2657
  %cmp71 = icmp eq i32 %27, 0, !dbg !2657
  br i1 %cmp71, label %if.end74, label %cleanup552, !dbg !2658

if.end74:                                         ; preds = %lor.lhs.false65
  %call75 = call i32 @operands_match_p(%struct.rtx_def* %22, %struct.rtx_def* %21) #6, !dbg !2659
  %tobool76 = icmp eq i32 %call75, 0, !dbg !2659
  br i1 %tobool76, label %if.end78, label %cleanup552, !dbg !2661

if.end78:                                         ; preds = %if.end74
  %arrayidx80 = getelementptr inbounds %struct.match, %struct.match* %match, i64 0, i32 2, i64 %indvars.iv, !dbg !2662
  %28 = load i32, i32* %arrayidx80, align 4, !dbg !2662
  %cmp81 = icmp sgt i32 %28, -1, !dbg !2663
  br i1 %cmp81, label %if.then83, label %if.end93, !dbg !2664

if.then83:                                        ; preds = %if.end78
  %idxprom87 = sext i32 %28 to i64, !dbg !2665
  %arrayidx88 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom87, !dbg !2665
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.rtx_def* %29, metadata !2598, metadata !DIExpression()), !dbg !2666
  %call89 = call i32 @operands_match_p(%struct.rtx_def* %29, %struct.rtx_def* %21) #6, !dbg !2667
  %tobool90 = icmp eq i32 %call89, 0, !dbg !2667
  %. = select i1 %tobool90, i32 0, i32 10, !dbg !2669
  br i1 %tobool90, label %if.end93, label %cleanup552

if.end93:                                         ; preds = %if.then83, %if.end78
  %bf.load94 = load i32, i32* %15, align 8, !dbg !2670
  %bf.clear95 = and i32 %bf.load94, 65535, !dbg !2670
  %cmp96 = icmp eq i32 %bf.clear95, 8, !dbg !2670
  br i1 %cmp96, label %cond.true113, label %lor.lhs.false98, !dbg !2670

lor.lhs.false98:                                  ; preds = %if.end93
  %cmp101 = icmp eq i32 %bf.clear95, 7, !dbg !2670
  br i1 %cmp101, label %cond.true113, label %lor.lhs.false103, !dbg !2670

lor.lhs.false103:                                 ; preds = %lor.lhs.false98
  %cmp106 = icmp eq i32 %bf.clear95, 9, !dbg !2670
  br i1 %cmp106, label %cond.true113, label %lor.lhs.false108, !dbg !2670

lor.lhs.false108:                                 ; preds = %lor.lhs.false103
  %cmp111 = icmp eq i32 %bf.clear95, 10, !dbg !2670
  br i1 %cmp111, label %cond.true113, label %cond.end136, !dbg !2670

cond.true113:                                     ; preds = %lor.lhs.false108, %lor.lhs.false103, %lor.lhs.false98, %if.end93
  %30 = load i32*, i32** %17, align 8, !dbg !2670
  %bf.load118 = load i32, i32* %30, align 8, !dbg !2670
  %bf.clear119 = and i32 %bf.load118, 65535, !dbg !2670
  %cmp120 = icmp eq i32 %bf.clear119, 23, !dbg !2670
  %31 = bitcast i32* %30 to %struct.rtx_def*, !dbg !2670
  br i1 %cmp120, label %cond.end136, label %cond.false127, !dbg !2670

cond.false127:                                    ; preds = %cond.true113
  %call132 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %31) #6, !dbg !2670
  br label %cond.end136, !dbg !2670

cond.end136:                                      ; preds = %lor.lhs.false108, %cond.false127, %cond.true113
  %cond137 = phi %struct.rtx_def* [ %call132, %cond.false127 ], [ %31, %cond.true113 ], [ null, %lor.lhs.false108 ], !dbg !2670
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond137, metadata !2584, metadata !DIExpression()), !dbg !2628
  %tobool138 = icmp eq %struct.rtx_def* %cond137, null, !dbg !2671
  br i1 %tobool138, label %cleanup552, label %if.end140, !dbg !2673

if.end140:                                        ; preds = %cond.end136
  %call141 = call i32 @reg_set_p(%struct.rtx_def* %22, %struct.rtx_def* nonnull %insn.0) #6, !dbg !2674
  %tobool142 = icmp eq i32 %call141, 0, !dbg !2674
  br i1 %tobool142, label %if.end144, label %cleanup552, !dbg !2676

if.end144:                                        ; preds = %if.end140
  %arrayidx146 = getelementptr inbounds %struct.match, %struct.match* %match, i64 0, i32 1, i64 %indvars.iv, !dbg !2677
  %32 = load i32, i32* %arrayidx146, align 4, !dbg !2677
  %cmp147 = icmp eq i32 %32, 0, !dbg !2679
  br i1 %cmp147, label %lor.lhs.false149, label %cleanup552, !dbg !2680

lor.lhs.false149:                                 ; preds = %if.end144
  %arrayidx152 = getelementptr inbounds %struct.match, %struct.match* %match, i64 0, i32 1, i64 %idxprom41, !dbg !2681
  %33 = load i32, i32* %arrayidx152, align 4, !dbg !2681
  %cmp153 = icmp eq i32 %33, 1, !dbg !2682
  br i1 %cmp153, label %if.end156, label %cleanup552, !dbg !2683

if.end156:                                        ; preds = %lor.lhs.false149
  %arrayidx158 = getelementptr inbounds %struct.match, %struct.match* %match, i64 0, i32 3, i64 %idxprom41, !dbg !2684
  %34 = load i32, i32* %arrayidx158, align 4, !dbg !2684
  %tobool159 = icmp eq i32 %34, 0, !dbg !2684
  br i1 %tobool159, label %if.end168, label %land.lhs.true, !dbg !2686

land.lhs.true:                                    ; preds = %if.end156
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx126, align 8, !dbg !2687
  %call164 = call i32 @count_occurrences(%struct.rtx_def* %35, %struct.rtx_def* %22, i32 0) #6, !dbg !2688
  %cmp165 = icmp sgt i32 %call164, 1, !dbg !2689
  br i1 %cmp165, label %cleanup552, label %if.end168, !dbg !2690

if.end168:                                        ; preds = %if.end156, %land.lhs.true
  %36 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8, !dbg !2691
  %arrayidx173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond137, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2693
  %rt_rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**, !dbg !2693
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx174, align 8, !dbg !2693
  %cmp175 = icmp eq %struct.rtx_def* %36, %37, !dbg !2694
  br i1 %cmp175, label %if.end178, label %cleanup552, !dbg !2695

if.end178:                                        ; preds = %if.end168
  %call179 = call fastcc i32 @rhs_regno(%struct.rtx_def* %22) #7, !dbg !2696
  %cmp180 = icmp ult i32 %call179, 53, !dbg !2698
  br i1 %cmp180, label %if.then182, label %if.end228, !dbg !2699

if.then182:                                       ; preds = %if.end178
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond137, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2700
  %39 = bitcast %union.rtunion_def* %38 to i32**, !dbg !2700
  %40 = load i32*, i32** %39, align 8, !dbg !2700
  %bf.load187 = load i32, i32* %40, align 8, !dbg !2700
  %bf.clear188 = and i32 %bf.load187, 65535, !dbg !2700
  %cmp189 = icmp eq i32 %bf.clear188, 49, !dbg !2703
  br i1 %cmp189, label %land.lhs.true191, label %if.end227, !dbg !2704

land.lhs.true191:                                 ; preds = %if.then182
  %41 = getelementptr inbounds i32, i32* %40, i64 4, !dbg !2705
  %42 = bitcast i32* %41 to i32**, !dbg !2705
  %43 = load i32*, i32** %42, align 8, !dbg !2705
  %bf.load200 = load i32, i32* %43, align 8, !dbg !2705
  %bf.clear201 = and i32 %bf.load200, 65535, !dbg !2705
  %cmp202 = icmp eq i32 %bf.clear201, 30, !dbg !2705
  %44 = bitcast i32* %43 to %struct.rtx_def*, !dbg !2706
  br i1 %cmp202, label %land.lhs.true204, label %if.end227, !dbg !2706

land.lhs.true204:                                 ; preds = %land.lhs.true191
  %arrayidx211 = getelementptr inbounds i32, i32* %40, i64 2, !dbg !2707
  %rt_rtx212 = bitcast i32* %arrayidx211 to %struct.rtx_def**, !dbg !2707
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx212, align 8, !dbg !2707
  %cmp213 = icmp eq %struct.rtx_def* %45, %22, !dbg !2708
  br i1 %cmp213, label %land.lhs.true215, label %if.end227, !dbg !2709

land.lhs.true215:                                 ; preds = %land.lhs.true204
  %call224 = call fastcc i32 @fixup_match_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %21, %struct.rtx_def* %22, %struct.rtx_def* %44) #7, !dbg !2710
  %tobool225 = icmp eq i32 %call224, 0, !dbg !2710
  br i1 %tobool225, label %if.end227, label %cleanup552, !dbg !2711

if.end227:                                        ; preds = %land.lhs.true215, %land.lhs.true204, %land.lhs.true191, %if.then182
  br label %cleanup552, !dbg !2712

if.end228:                                        ; preds = %if.end178
  %call229 = call fastcc i32 @rhs_regno(%struct.rtx_def* %22) #7, !dbg !2713
  %call230 = call i32 @reg_preferred_class(i32 %call229) #6, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %call230, metadata !2595, metadata !DIExpression()), !dbg !2628
  %call231 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2715
  %call232 = call i32 @reg_preferred_class(i32 %call231) #6, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %call232, metadata !2596, metadata !DIExpression()), !dbg !2628
  %call233 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %insn.0, i32 1, %struct.rtx_def* %22) #6, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call233, metadata !2591, metadata !DIExpression()), !dbg !2628
  %tobool234 = icmp eq %struct.rtx_def* %call233, null, !dbg !2719
  br i1 %tobool234, label %cleanup552, label %if.end236, !dbg !2720

if.end236:                                        ; preds = %if.end228
  %call237 = call fastcc i32 @regclass_compatible_p(i32 %call230, i32 %call232) #7, !dbg !2721
  %tobool238 = icmp eq i32 %call237, 0, !dbg !2721
  br i1 %tobool238, label %if.then239, label %if.end243, !dbg !2723

if.then239:                                       ; preds = %if.end236
  %tobool240 = icmp ne %struct.rtx_def* %copy_src.0, null, !dbg !2724
  %spec.select = select i1 %tobool240, %struct.rtx_def* %copy_dst.0, %struct.rtx_def* %21, !dbg !2727
  %spec.select2 = select i1 %tobool240, %struct.rtx_def* %copy_src.0, %struct.rtx_def* %22, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select2, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select, metadata !2580, metadata !DIExpression()), !dbg !2614
  br label %cleanup552, !dbg !2728

if.end243:                                        ; preds = %if.end236
  %46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond137, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2729
  %rt_rtx247 = bitcast %union.rtunion_def* %46 to %struct.rtx_def**, !dbg !2729
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx247, align 8, !dbg !2729
  %call248 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %21, %struct.rtx_def* %47) #6, !dbg !2731
  %tobool249 = icmp eq i32 %call248, 0, !dbg !2731
  br i1 %tobool249, label %if.end254, label %if.then250, !dbg !2732

if.then250:                                       ; preds = %if.end243
  %tobool251 = icmp ne %struct.rtx_def* %copy_src.0, null, !dbg !2733
  %spec.select3 = select i1 %tobool251, %struct.rtx_def* %copy_dst.0, %struct.rtx_def* %21, !dbg !2736
  %spec.select4 = select i1 %tobool251, %struct.rtx_def* %copy_src.0, %struct.rtx_def* %22, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select4, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select3, metadata !2580, metadata !DIExpression()), !dbg !2614
  br label %cleanup552, !dbg !2737

if.end254:                                        ; preds = %if.end243
  %call255 = call fastcc zeroext i8 @reg_is_remote_constant_p(%struct.rtx_def* %22, %struct.rtx_def* nonnull %insn.0) #7, !dbg !2738
  %tobool256 = icmp eq i8 %call255, 0, !dbg !2738
  br i1 %tobool256, label %if.end261, label %if.then257, !dbg !2740

if.then257:                                       ; preds = %if.end254
  %tobool258 = icmp ne %struct.rtx_def* %copy_src.0, null, !dbg !2741
  %spec.select5 = select i1 %tobool258, %struct.rtx_def* %copy_dst.0, %struct.rtx_def* %21, !dbg !2744
  %spec.select6 = select i1 %tobool258, %struct.rtx_def* %copy_src.0, %struct.rtx_def* %22, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select6, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select5, metadata !2580, metadata !DIExpression()), !dbg !2614
  br label %cleanup552, !dbg !2745

if.end261:                                        ; preds = %if.end254
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2746
  %tobool262 = icmp eq %struct._IO_FILE* %48, null, !dbg !2746
  br i1 %tobool262, label %if.end268, label %if.then263, !dbg !2747

if.then263:                                       ; preds = %if.end261
  %49 = load i32, i32* %rt_int, align 8, !dbg !2748
  %50 = trunc i64 %indvars.iv to i32, !dbg !2749
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %49, i32 %20) #6, !dbg !2749
  br label %if.end268, !dbg !2749

if.end268:                                        ; preds = %if.end261, %if.then263
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2628
  br label %for.cond273, !dbg !2750

for.cond273:                                      ; preds = %for.inc, %if.end268
  %num_calls.0 = phi i32 [ 0, %if.end268 ], [ %num_calls.2, %for.inc ], !dbg !2751
  %insn.0.pn = phi %struct.rtx_def* [ %insn.0, %if.end268 ], [ %p.0, %for.inc ]
  %freq_calls.0 = phi i32 [ 0, %if.end268 ], [ %freq_calls.2, %for.inc ], !dbg !2752
  %success.1 = phi i32 [ %success.0, %if.end268 ], [ %success.3, %for.inc ], !dbg !2632
  %length.0 = phi i32 [ 0, %if.end268 ], [ %length.2, %for.inc ], !dbg !2753
  %p.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0.pn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2754
  %p.0.in = bitcast %union.rtunion_def* %p.0.in.in to %struct.rtx_def**, !dbg !2754
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %length.0, metadata !2597, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %success.1, metadata !2583, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %freq_calls.0, metadata !2594, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !2588, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %num_calls.0, metadata !2593, metadata !DIExpression()), !dbg !2628
  %tobool274 = icmp eq %struct.rtx_def* %p.0, null, !dbg !2755
  br i1 %tobool274, label %for.end, label %for.body275, !dbg !2755

for.body275:                                      ; preds = %for.cond273
  %51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !2756
  %bf.load276 = load i32, i32* %51, align 8, !dbg !2756
  %bf.clear277 = and i32 %bf.load276, 65535, !dbg !2756
  %cmp278 = icmp eq i32 %bf.clear277, 8, !dbg !2756
  br i1 %cmp278, label %if.end296, label %lor.lhs.false280, !dbg !2756

lor.lhs.false280:                                 ; preds = %for.body275
  %cmp283 = icmp eq i32 %bf.clear277, 7, !dbg !2756
  br i1 %cmp283, label %if.end296, label %lor.lhs.false285, !dbg !2756

lor.lhs.false285:                                 ; preds = %lor.lhs.false280
  %cmp288 = icmp eq i32 %bf.clear277, 9, !dbg !2756
  br i1 %cmp288, label %if.end296, label %lor.lhs.false290, !dbg !2756

lor.lhs.false290:                                 ; preds = %lor.lhs.false285
  %cmp293 = icmp eq i32 %bf.clear277, 10, !dbg !2756
  br i1 %cmp293, label %if.end296, label %cleanup454, !dbg !2758

if.end296:                                        ; preds = %lor.lhs.false290, %lor.lhs.false285, %lor.lhs.false280, %for.body275
  %arrayidx299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 1, !dbg !2759
  %rt_bb = bitcast %struct.object_block** %arrayidx299 to %struct.basic_block_def**, !dbg !2759
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2759
  %cmp300 = icmp eq %struct.basic_block_def* %52, %bb.0, !dbg !2761
  br i1 %cmp300, label %if.end303, label %cleanup454, !dbg !2762

if.end303:                                        ; preds = %if.end296
  %cmp306 = icmp ne i32 %bf.clear277, 7, !dbg !2763
  %inc = zext i1 %cmp306 to i32, !dbg !2765
  %spec.select7 = add nsw i32 %length.0, %inc, !dbg !2765
  call void @llvm.dbg.value(metadata i32 %spec.select7, metadata !2597, metadata !DIExpression()), !dbg !2628
  br i1 %cmp278, label %cond.true329, label %lor.lhs.false314, !dbg !2766

lor.lhs.false314:                                 ; preds = %if.end303
  %cmp317 = icmp eq i32 %bf.clear277, 7, !dbg !2766
  br i1 %cmp317, label %cond.true329, label %lor.lhs.false319, !dbg !2766

lor.lhs.false319:                                 ; preds = %lor.lhs.false314
  %cmp322 = icmp eq i32 %bf.clear277, 9, !dbg !2766
  br i1 %cmp322, label %cond.true329, label %lor.lhs.false324, !dbg !2766

lor.lhs.false324:                                 ; preds = %lor.lhs.false319
  %cmp327 = icmp eq i32 %bf.clear277, 10, !dbg !2766
  br i1 %cmp327, label %cond.true329, label %cond.end352, !dbg !2766

cond.true329:                                     ; preds = %lor.lhs.false324, %lor.lhs.false319, %lor.lhs.false314, %if.end303
  %u330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !2766
  %53 = getelementptr inbounds %union.u, %union.u* %u330, i64 1, i32 0, i32 0, i64 0, !dbg !2766
  %54 = bitcast %union.rtunion_def* %53 to i32**, !dbg !2766
  %55 = load i32*, i32** %54, align 8, !dbg !2766
  %bf.load334 = load i32, i32* %55, align 8, !dbg !2766
  %bf.clear335 = and i32 %bf.load334, 65535, !dbg !2766
  %cmp336 = icmp eq i32 %bf.clear335, 23, !dbg !2766
  %56 = bitcast i32* %55 to %struct.rtx_def*, !dbg !2766
  br i1 %cmp336, label %cond.end352, label %cond.false343, !dbg !2766

cond.false343:                                    ; preds = %cond.true329
  %call348 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %p.0, %struct.rtx_def* %56) #6, !dbg !2766
  br label %cond.end352, !dbg !2766

cond.end352:                                      ; preds = %lor.lhs.false324, %cond.false343, %cond.true329
  %cond353 = phi %struct.rtx_def* [ %call348, %cond.false343 ], [ %56, %cond.true329 ], [ null, %lor.lhs.false324 ], !dbg !2766
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond353, metadata !2601, metadata !DIExpression()), !dbg !2767
  %tobool354 = icmp eq %struct.rtx_def* %cond353, null, !dbg !2768
  br i1 %tobool354, label %if.end372, label %land.lhs.true355, !dbg !2770

land.lhs.true355:                                 ; preds = %cond.end352
  %arrayidx358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond353, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2771
  %rt_rtx359 = bitcast %union.rtunion_def* %arrayidx358 to %struct.rtx_def**, !dbg !2771
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx359, align 8, !dbg !2771
  %cmp360 = icmp eq %struct.rtx_def* %57, %22, !dbg !2772
  br i1 %cmp360, label %if.then362, label %if.end372, !dbg !2773

if.then362:                                       ; preds = %land.lhs.true355
  %call367 = call zeroext i8 @validate_change(%struct.rtx_def* nonnull %p.0, %struct.rtx_def** nonnull %rt_rtx359, %struct.rtx_def* %21, i8 zeroext 1) #6, !dbg !2774
  %call368 = call i32 @validate_replace_rtx(%struct.rtx_def* %22, %struct.rtx_def* %21, %struct.rtx_def* nonnull %insn.0) #6, !dbg !2776
  %tobool369 = icmp eq i32 %call368, 0, !dbg !2776
  %spec.select8 = select i1 %tobool369, i32 %success.1, i32 1, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %spec.select8, metadata !2583, metadata !DIExpression()), !dbg !2614
  br label %cleanup454, !dbg !2779

if.end372:                                        ; preds = %cond.end352, %land.lhs.true355
  %u373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !2780
  %58 = getelementptr inbounds %union.u, %union.u* %u373, i64 1, i32 0, i32 0, i64 0, !dbg !2780
  %rt_rtx376 = bitcast %union.rtunion_def* %58 to %struct.rtx_def**, !dbg !2780
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx376, align 8, !dbg !2780
  %call377 = call i32 @reg_mentioned_p(%struct.rtx_def* %21, %struct.rtx_def* %59) #6, !dbg !2782
  %tobool378 = icmp eq i32 %call377, 0, !dbg !2782
  br i1 %tobool378, label %if.end396, label %if.then379, !dbg !2783

if.then379:                                       ; preds = %if.end372
  %bf.load380 = load i32, i32* %51, align 8, !dbg !2784
  %bf.clear381 = and i32 %bf.load380, 65535, !dbg !2784
  %cmp382 = icmp eq i32 %bf.clear381, 7, !dbg !2784
  br i1 %cmp382, label %if.then384, label %cleanup454, !dbg !2787

if.then384:                                       ; preds = %if.then379
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx376, align 8, !dbg !2788
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2788
  %rt_rtx392 = bitcast %union.rtunion_def* %61 to %struct.rtx_def**, !dbg !2788
  %62 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2789
  %call393 = call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 25, i32 0, %struct.rtx_def* %62) #6, !dbg !2789
  %call394 = call zeroext i8 @validate_change(%struct.rtx_def* nonnull %p.0, %struct.rtx_def** nonnull %rt_rtx392, %struct.rtx_def* %call393, i8 zeroext 1) #6, !dbg !2790
  br label %if.end396, !dbg !2791

if.end396:                                        ; preds = %if.end372, %if.then384
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx376, align 8, !dbg !2792
  %call401 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %22, %struct.rtx_def* %63) #6, !dbg !2794
  %tobool402 = icmp eq i32 %call401, 0, !dbg !2794
  br i1 %tobool402, label %if.end411, label %if.then403, !dbg !2795

if.then403:                                       ; preds = %if.end396
  %bf.load404 = load i32, i32* %51, align 8, !dbg !2796
  %bf.clear405 = and i32 %bf.load404, 65535, !dbg !2796
  %cmp406 = icmp eq i32 %bf.clear405, 7, !dbg !2796
  br i1 %cmp406, label %if.then408, label %cleanup454, !dbg !2799

if.then408:                                       ; preds = %if.then403
  call void @validate_replace_rtx_group(%struct.rtx_def* %22, %struct.rtx_def* %21, %struct.rtx_def* nonnull %p.0) #6, !dbg !2800
  br label %if.end411, !dbg !2801

if.end411:                                        ; preds = %if.end396, %if.then408
  %bf.load412 = load i32, i32* %51, align 8, !dbg !2802
  %bf.clear413 = and i32 %bf.load412, 65535, !dbg !2802
  %cmp414 = icmp eq i32 %bf.clear413, 10, !dbg !2802
  br i1 %cmp414, label %if.then416, label %if.end453, !dbg !2804

if.then416:                                       ; preds = %if.end411
  %inc417 = add nsw i32 %num_calls.0, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %inc417, metadata !2593, metadata !DIExpression()), !dbg !2628
  %64 = load i32, i32* @optimize_size, align 4, !dbg !2807
  %tobool418 = icmp eq i32 %64, 0, !dbg !2807
  br i1 %tobool418, label %lor.lhs.false419, label %cond.end444, !dbg !2807

lor.lhs.false419:                                 ; preds = %if.then416
  %65 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2807
  %tobool420 = icmp eq i32 %65, 0, !dbg !2807
  br i1 %tobool420, label %cond.false427, label %land.lhs.true421, !dbg !2807

land.lhs.true421:                                 ; preds = %lor.lhs.false419
  %66 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2807
  %cfg423 = getelementptr inbounds %struct.function, %struct.function* %66, i64 0, i32 1, !dbg !2807
  %67 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg423, align 8, !dbg !2807
  %x_entry_block_ptr424 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %67, i64 0, i32 0, !dbg !2807
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr424, align 8, !dbg !2807
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i64 0, i32 8, !dbg !2807
  %69 = load i64, i64* %count, align 8, !dbg !2807
  %tobool425 = icmp eq i64 %69, 0, !dbg !2807
  br i1 %tobool425, label %cond.end444, label %cond.false427, !dbg !2807

cond.false427:                                    ; preds = %land.lhs.true421, %lor.lhs.false419
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2807
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i64 0, i32 11, !dbg !2807
  %71 = load i32, i32* %frequency, align 8, !dbg !2807
  %.off = add i32 %71, 9, !dbg !2807
  %72 = icmp ugt i32 %.off, 18, !dbg !2807
  br i1 %72, label %cond.true433, label %cond.end444, !dbg !2807

cond.true433:                                     ; preds = %cond.false427
  %div440 = sdiv i32 %71, 10, !dbg !2807
  br label %cond.end444, !dbg !2807

cond.end444:                                      ; preds = %land.lhs.true421, %if.then416, %cond.true433, %cond.false427
  %cond445 = phi i32 [ 1000, %land.lhs.true421 ], [ 1000, %if.then416 ], [ %div440, %cond.true433 ], [ 1, %cond.false427 ], !dbg !2807
  %add = add nsw i32 %freq_calls.0, %cond445, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %add, metadata !2594, metadata !DIExpression()), !dbg !2628
  %73 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2809
  %call446 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2809
  %idxprom447 = zext i32 %call446 to i64, !dbg !2809
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %73, i64 %idxprom447, i32 3, !dbg !2809
  %74 = load i32, i32* %calls_crossed, align 4, !dbg !2809
  %cmp449 = icmp eq i32 %74, 0, !dbg !2811
  br i1 %cmp449, label %cleanup454, label %if.end453, !dbg !2812

if.end453:                                        ; preds = %cond.end444, %if.end411
  %num_calls.1 = phi i32 [ %num_calls.0, %if.end411 ], [ %inc417, %cond.end444 ], !dbg !2628
  %freq_calls.1 = phi i32 [ %freq_calls.0, %if.end411 ], [ %add, %cond.end444 ], !dbg !2628
  call void @llvm.dbg.value(metadata i32 %freq_calls.1, metadata !2594, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %num_calls.1, metadata !2593, metadata !DIExpression()), !dbg !2628
  br label %cleanup454, !dbg !2813

cleanup454:                                       ; preds = %if.end296, %cond.end444, %if.then403, %if.then379, %lor.lhs.false290, %if.end453, %if.then362
  %num_calls.2 = phi i32 [ %num_calls.0, %if.then362 ], [ %num_calls.1, %if.end453 ], [ %num_calls.0, %lor.lhs.false290 ], [ %num_calls.0, %if.end296 ], [ %num_calls.0, %if.then379 ], [ %num_calls.0, %if.then403 ], [ %inc417, %cond.end444 ], !dbg !2628
  %freq_calls.2 = phi i32 [ %freq_calls.0, %if.then362 ], [ %freq_calls.1, %if.end453 ], [ %freq_calls.0, %lor.lhs.false290 ], [ %freq_calls.0, %if.end296 ], [ %freq_calls.0, %if.then379 ], [ %freq_calls.0, %if.then403 ], [ %add, %cond.end444 ], !dbg !2628
  %cleanup.dest.slot.1 = phi i1 [ true, %if.then362 ], [ false, %if.end453 ], [ false, %lor.lhs.false290 ], [ true, %if.end296 ], [ true, %if.then379 ], [ true, %if.then403 ], [ true, %cond.end444 ]
  %success.3 = phi i32 [ %spec.select8, %if.then362 ], [ %success.1, %if.end453 ], [ %success.1, %lor.lhs.false290 ], [ %success.1, %if.end296 ], [ %success.1, %if.then379 ], [ %success.1, %if.then403 ], [ %success.1, %cond.end444 ], !dbg !2614
  %length.2 = phi i32 [ %spec.select7, %if.then362 ], [ %spec.select7, %if.end453 ], [ %length.0, %lor.lhs.false290 ], [ %length.0, %if.end296 ], [ %spec.select7, %if.then379 ], [ %spec.select7, %if.then403 ], [ %spec.select7, %cond.end444 ], !dbg !2753
  call void @llvm.dbg.value(metadata i32 %length.2, metadata !2597, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %success.3, metadata !2583, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %freq_calls.2, metadata !2594, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %num_calls.2, metadata !2593, metadata !DIExpression()), !dbg !2628
  br i1 %cleanup.dest.slot.1, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup454
  br label %for.cond273, !dbg !2814, !llvm.loop !2815

for.end:                                          ; preds = %for.cond273, %cleanup454
  %p.0.lcssa = phi %struct.rtx_def* [ %p.0, %for.cond273 ], [ %p.0, %cleanup454 ], !dbg !2754
  %num_calls.3 = phi i32 [ %num_calls.2, %cleanup454 ], [ %num_calls.0, %for.cond273 ], !dbg !2751
  %freq_calls.3 = phi i32 [ %freq_calls.2, %cleanup454 ], [ %freq_calls.0, %for.cond273 ], !dbg !2752
  %success.4 = phi i32 [ %success.3, %cleanup454 ], [ %success.1, %for.cond273 ], !dbg !2632
  %length.3 = phi i32 [ %length.2, %cleanup454 ], [ %length.0, %for.cond273 ], !dbg !2753
  call void @llvm.dbg.value(metadata i32 %length.3, metadata !2597, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %success.4, metadata !2583, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %freq_calls.3, metadata !2594, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %num_calls.3, metadata !2593, metadata !DIExpression()), !dbg !2628
  %tobool461 = icmp eq i32 %success.4, 0, !dbg !2817
  br i1 %tobool461, label %if.else545, label %if.then462, !dbg !2818

if.then462:                                       ; preds = %for.end
  call void @remove_note(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* nonnull %call233) #6, !dbg !2819
  %u463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0.lcssa, i64 0, i32 1, !dbg !2820
  %75 = getelementptr inbounds %union.u, %union.u* %u463, i64 1, i32 0, i32 0, i64 0, !dbg !2820
  %rt_rtx466 = bitcast %union.rtunion_def* %75 to %struct.rtx_def**, !dbg !2820
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx466, align 8, !dbg !2820
  %call467 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %22, %struct.rtx_def* %76) #6, !dbg !2822
  %tobool468 = icmp eq i32 %call467, 0, !dbg !2822
  br i1 %tobool468, label %if.end482, label %if.then469, !dbg !2823

if.then469:                                       ; preds = %if.then462
  %77 = getelementptr inbounds %union.u, %union.u* %u463, i64 1, i32 0, i32 0, i64 2, !dbg !2824
  %78 = bitcast %union.rtunion_def* %77 to i64*, !dbg !2824
  %79 = load i64, i64* %78, align 8, !dbg !2824
  %80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call233, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2826
  %81 = bitcast %union.rtunion_def* %80 to i64*, !dbg !2827
  store i64 %79, i64* %81, align 8, !dbg !2827
  %rt_rtx481 = bitcast %union.rtunion_def* %77 to %struct.rtx_def**, !dbg !2828
  store %struct.rtx_def* %call233, %struct.rtx_def** %rt_rtx481, align 8, !dbg !2829
  br label %if.end482, !dbg !2830

if.end482:                                        ; preds = %if.then462, %if.then469
  %call483 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %p.0.lcssa, i32 1, %struct.rtx_def* %21) #6, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call483, metadata !2592, metadata !DIExpression()), !dbg !2628
  %tobool484 = icmp eq %struct.rtx_def* %call483, null, !dbg !2833
  br i1 %tobool484, label %if.end486, label %if.then485, !dbg !2834

if.then485:                                       ; preds = %if.end482
  call void @remove_note(%struct.rtx_def* %p.0.lcssa, %struct.rtx_def* nonnull %call483) #6, !dbg !2835
  br label %if.end486, !dbg !2835

if.end486:                                        ; preds = %if.end482, %if.then485
  %call487 = call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %call487, metadata !2605, metadata !DIExpression()), !dbg !2837
  %call488 = call fastcc i32 @rhs_regno(%struct.rtx_def* %22) #7, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %call488, metadata !2608, metadata !DIExpression()), !dbg !2837
  %82 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2839
  %idxprom489 = sext i32 %call487 to i64, !dbg !2839
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %82, i64 %idxprom489, i32 0, !dbg !2839
  %83 = load i32, i32* %sets, align 4, !dbg !2839
  %add491 = add nsw i32 %83, 1, !dbg !2839
  store i32 %add491, i32* %sets, align 4, !dbg !2839
  %84 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2840
  %idxprom492 = sext i32 %call488 to i64, !dbg !2840
  %sets494 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %84, i64 %idxprom492, i32 0, !dbg !2840
  %85 = load i32, i32* %sets494, align 4, !dbg !2840
  %add495 = add nsw i32 %85, -1, !dbg !2840
  store i32 %add495, i32* %sets494, align 4, !dbg !2840
  %86 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2841
  %calls_crossed498 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %86, i64 %idxprom489, i32 3, !dbg !2841
  %87 = load i32, i32* %calls_crossed498, align 4, !dbg !2842
  %add499 = add nsw i32 %87, %num_calls.3, !dbg !2842
  store i32 %add499, i32* %calls_crossed498, align 4, !dbg !2842
  %88 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2843
  %calls_crossed502 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %88, i64 %idxprom492, i32 3, !dbg !2843
  %89 = load i32, i32* %calls_crossed502, align 4, !dbg !2844
  %sub = sub nsw i32 %89, %num_calls.3, !dbg !2844
  store i32 %sub, i32* %calls_crossed502, align 4, !dbg !2844
  %90 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2845
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %90, i64 %idxprom489, i32 4, !dbg !2845
  %91 = load i32, i32* %freq_calls_crossed, align 4, !dbg !2846
  %add505 = add nsw i32 %91, %freq_calls.3, !dbg !2846
  store i32 %add505, i32* %freq_calls_crossed, align 4, !dbg !2846
  %92 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2847
  %freq_calls_crossed508 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %92, i64 %idxprom492, i32 4, !dbg !2847
  %93 = load i32, i32* %freq_calls_crossed508, align 4, !dbg !2848
  %sub509 = sub nsw i32 %93, %freq_calls.3, !dbg !2848
  store i32 %sub509, i32* %freq_calls_crossed508, align 4, !dbg !2848
  %94 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2849
  %live_length512 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %94, i64 %idxprom489, i32 2, !dbg !2849
  %95 = load i32, i32* %live_length512, align 4, !dbg !2850
  %add513 = add nsw i32 %95, %length.3, !dbg !2850
  store i32 %add513, i32* %live_length512, align 4, !dbg !2850
  %96 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2851
  %live_length516 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %96, i64 %idxprom492, i32 2, !dbg !2851
  %97 = load i32, i32* %live_length516, align 4, !dbg !2851
  %cmp517 = icmp sgt i32 %97, -1, !dbg !2853
  br i1 %cmp517, label %if.then519, label %if.end534, !dbg !2854

if.then519:                                       ; preds = %if.end486
  %sub523 = sub nsw i32 %97, %length.3, !dbg !2855
  store i32 %sub523, i32* %live_length516, align 4, !dbg !2855
  %98 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2857
  %live_length526 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %98, i64 %idxprom492, i32 2, !dbg !2857
  %99 = load i32, i32* %live_length526, align 4, !dbg !2857
  %cmp527 = icmp slt i32 %99, 2, !dbg !2859
  br i1 %cmp527, label %if.then529, label %if.end534, !dbg !2860

if.then529:                                       ; preds = %if.then519
  store i32 2, i32* %live_length526, align 4, !dbg !2861
  br label %if.end534, !dbg !2862

if.end534:                                        ; preds = %if.then519, %if.then529, %if.end486
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2863
  %tobool535 = icmp eq %struct._IO_FILE* %100, null, !dbg !2863
  br i1 %tobool535, label %cleanup552, label %if.then536, !dbg !2865

if.then536:                                       ; preds = %if.end534
  %101 = load i32, i32* %rt_int, align 8, !dbg !2866
  %102 = trunc i64 %indvars.iv to i32, !dbg !2867
  %call541 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %101, i32 %20) #6, !dbg !2867
  br label %cleanup552, !dbg !2867

if.else545:                                       ; preds = %for.end
  %call546 = call i32 @num_changes_pending() #6, !dbg !2868
  %cmp547 = icmp sgt i32 %call546, 0, !dbg !2870
  br i1 %cmp547, label %if.then549, label %cleanup552, !dbg !2871

if.then549:                                       ; preds = %if.else545
  call void @cancel_changes(i32 0) #6, !dbg !2872
  br label %cleanup552, !dbg !2872

cleanup552:                                       ; preds = %land.lhs.true215, %if.end534, %if.end228, %if.end168, %lor.lhs.false149, %if.end144, %if.end140, %cond.end136, %if.end74, %lor.lhs.false65, %if.then549, %if.else545, %if.then536, %land.lhs.true, %if.end50, %lor.lhs.false55, %lor.lhs.false59, %if.end40, %for.body35, %if.then83, %if.then257, %if.then250, %if.then239, %if.end227
  %cleanup.dest.slot.2 = phi i32 [ %., %if.then83 ], [ 10, %if.end227 ], [ 10, %if.then250 ], [ 10, %if.then257 ], [ 10, %if.then239 ], [ 10, %for.body35 ], [ 10, %if.end40 ], [ 10, %lor.lhs.false65 ], [ 10, %lor.lhs.false59 ], [ 10, %lor.lhs.false55 ], [ 10, %if.end50 ], [ 10, %if.end74 ], [ 10, %cond.end136 ], [ 10, %if.end140 ], [ 10, %lor.lhs.false149 ], [ 10, %if.end144 ], [ 10, %land.lhs.true ], [ 10, %if.end168 ], [ 8, %land.lhs.true215 ], [ 10, %if.end228 ], [ 8, %if.then536 ], [ 8, %if.end534 ], [ 0, %if.else545 ], [ 0, %if.then549 ]
  %success.5 = phi i32 [ %success.0, %if.then83 ], [ %success.0, %if.end227 ], [ %success.0, %if.then250 ], [ %success.0, %if.then257 ], [ %success.0, %if.then239 ], [ %success.0, %for.body35 ], [ %success.0, %if.end40 ], [ %success.0, %lor.lhs.false65 ], [ %success.0, %lor.lhs.false59 ], [ %success.0, %lor.lhs.false55 ], [ %success.0, %if.end50 ], [ %success.0, %if.end74 ], [ %success.0, %cond.end136 ], [ %success.0, %if.end140 ], [ %success.0, %lor.lhs.false149 ], [ %success.0, %if.end144 ], [ %success.0, %land.lhs.true ], [ %success.0, %if.end168 ], [ %success.0, %land.lhs.true215 ], [ %success.0, %if.end228 ], [ %success.4, %if.then536 ], [ %success.4, %if.end534 ], [ 0, %if.else545 ], [ 0, %if.then549 ], !dbg !2632
  %copy_dst.4 = phi %struct.rtx_def* [ %copy_dst.0, %if.then83 ], [ %copy_dst.0, %if.end227 ], [ %spec.select3, %if.then250 ], [ %spec.select5, %if.then257 ], [ %spec.select, %if.then239 ], [ %copy_dst.0, %for.body35 ], [ %copy_dst.0, %if.end40 ], [ %copy_dst.0, %lor.lhs.false65 ], [ %copy_dst.0, %lor.lhs.false59 ], [ %copy_dst.0, %lor.lhs.false55 ], [ %copy_dst.0, %if.end50 ], [ %copy_dst.0, %if.end74 ], [ %copy_dst.0, %cond.end136 ], [ %copy_dst.0, %if.end140 ], [ %copy_dst.0, %lor.lhs.false149 ], [ %copy_dst.0, %if.end144 ], [ %copy_dst.0, %land.lhs.true ], [ %copy_dst.0, %if.end168 ], [ %copy_dst.0, %land.lhs.true215 ], [ %copy_dst.0, %if.end228 ], [ %copy_dst.0, %if.then536 ], [ %copy_dst.0, %if.end534 ], [ %copy_dst.0, %if.else545 ], [ %copy_dst.0, %if.then549 ], !dbg !2633
  %copy_src.4 = phi %struct.rtx_def* [ %copy_src.0, %if.then83 ], [ %copy_src.0, %if.end227 ], [ %spec.select4, %if.then250 ], [ %spec.select6, %if.then257 ], [ %spec.select2, %if.then239 ], [ %copy_src.0, %for.body35 ], [ %copy_src.0, %if.end40 ], [ %copy_src.0, %lor.lhs.false65 ], [ %copy_src.0, %lor.lhs.false59 ], [ %copy_src.0, %lor.lhs.false55 ], [ %copy_src.0, %if.end50 ], [ %copy_src.0, %if.end74 ], [ %copy_src.0, %cond.end136 ], [ %copy_src.0, %if.end140 ], [ %copy_src.0, %lor.lhs.false149 ], [ %copy_src.0, %if.end144 ], [ %copy_src.0, %land.lhs.true ], [ %copy_src.0, %if.end168 ], [ %copy_src.0, %land.lhs.true215 ], [ %copy_src.0, %if.end228 ], [ %copy_src.0, %if.then536 ], [ %copy_src.0, %if.end534 ], [ %copy_src.0, %if.else545 ], [ %copy_src.0, %if.then549 ], !dbg !2634
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_src.4, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_dst.4, metadata !2580, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %success.5, metadata !2583, metadata !DIExpression()), !dbg !2614
  %switch10 = icmp eq i32 %cleanup.dest.slot.2, 8
  br i1 %switch10, label %for.end567, label %for.inc565

for.inc565:                                       ; preds = %cleanup552
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2873
  call void @llvm.dbg.value(metadata i32 undef, metadata !2581, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2614
  br label %for.cond32, !dbg !2874, !llvm.loop !2875

for.end567:                                       ; preds = %cleanup552, %for.cond32
  %success.6 = phi i32 [ %success.5, %cleanup552 ], [ %success.0, %for.cond32 ], !dbg !2632
  %copy_dst.5 = phi %struct.rtx_def* [ %copy_dst.4, %cleanup552 ], [ %copy_dst.0, %for.cond32 ], !dbg !2633
  %copy_src.5 = phi %struct.rtx_def* [ %copy_src.4, %cleanup552 ], [ %copy_src.0, %for.cond32 ], !dbg !2634
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_src.5, metadata !2579, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy_dst.5, metadata !2580, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %success.6, metadata !2583, metadata !DIExpression()), !dbg !2614
  %tobool568 = icmp eq i32 %success.6, 0, !dbg !2877
  %cmp570 = icmp ne %struct.rtx_def* %copy_src.5, null, !dbg !2879
  %or.cond = and i1 %tobool568, %cmp570, !dbg !2880
  br i1 %or.cond, label %if.then572, label %cleanup574, !dbg !2880

if.then572:                                       ; preds = %for.end567
  call fastcc void @copy_src_to_dest(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* nonnull %copy_src.5, %struct.rtx_def* %copy_dst.5) #7, !dbg !2881
  br label %cleanup574, !dbg !2881

cleanup574:                                       ; preds = %if.end27, %if.then572, %for.end567, %lor.lhs.false22
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %4) #8, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0, metadata !2560, metadata !DIExpression()), !dbg !2617
  %tobool583 = icmp eq %struct.rtx_def* %prev.0, null, !dbg !2620
  br i1 %tobool583, label %cond.end590, label %cond.true584, !dbg !2620

cond.true584:                                     ; preds = %cleanup574
  %103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %prev.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2620
  %rt_rtx588 = bitcast %union.rtunion_def* %103 to %struct.rtx_def**, !dbg !2620
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx588, align 8, !dbg !2620
  br label %cond.end590, !dbg !2620

cond.end590:                                      ; preds = %cleanup574, %cond.true584
  %cond591 = phi %struct.rtx_def* [ %104, %cond.true584 ], [ null, %cleanup574 ], !dbg !2620
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond591, metadata !2561, metadata !DIExpression()), !dbg !2617
  br label %for.cond4, !dbg !2620, !llvm.loop !2883

for.inc593:                                       ; preds = %land.rhs, %for.cond4
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2615
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2885
  %.pre14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2615
  br label %for.cond, !dbg !2615, !llvm.loop !2886

for.end595:                                       ; preds = %for.cond
  ret void, !dbg !2888
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @regstat_free_n_sets_and_refs() local_unnamed_addr #2

declare dso_local void @regstat_free_ri() local_unnamed_addr #2

declare dso_local void @free_reg_info() local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @optimize_reg_copy_3(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) unnamed_addr #5 !dbg !2889 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2893, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !2894, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !2895, metadata !DIExpression()), !dbg !2906
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2907
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2907
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2896, metadata !DIExpression()), !dbg !2906
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %0) #7, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %call, metadata !2897, metadata !DIExpression()), !dbg !2906
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2898, metadata !DIExpression()), !dbg !2906
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !2910
  %rt_bb = bitcast %struct.object_block** %arrayidx4 to %struct.basic_block_def**, !dbg !2910
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2910
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !2902, metadata !DIExpression()), !dbg !2906
  %cmp = icmp slt i32 %call, 53, !dbg !2911
  %cmp5 = icmp slt i32 %call1, 53, !dbg !2913
  %or.cond = or i1 %cmp, %cmp5, !dbg !2914
  br i1 %or.cond, label %cleanup.cont, label %lor.lhs.false6, !dbg !2914

lor.lhs.false6:                                   ; preds = %entry
  %call7 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %0) #6, !dbg !2915
  %tobool = icmp eq %struct.rtx_def* %call7, null, !dbg !2915
  br i1 %tobool, label %cleanup.cont, label %lor.lhs.false8, !dbg !2916

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %2 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2917
  %idxprom = sext i32 %call to i64, !dbg !2917
  %deaths = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %2, i64 %idxprom, i32 1, !dbg !2917
  %3 = load i32, i32* %deaths, align 4, !dbg !2917
  %cmp10 = icmp eq i32 %3, 1, !dbg !2918
  br i1 %cmp10, label %lor.lhs.false11, label %cleanup.cont, !dbg !2919

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call fastcc i32 @REG_N_SETS(i32 %call) #7, !dbg !2920
  %cmp13 = icmp eq i32 %call12, 1, !dbg !2921
  br i1 %cmp13, label %if.end, label %cleanup.cont, !dbg !2922

if.end:                                           ; preds = %lor.lhs.false11
  br label %for.cond, !dbg !2923

for.cond:                                         ; preds = %for.inc, %if.end
  %insn.pn = phi %struct.rtx_def* [ %insn, %if.end ], [ %p.0, %for.inc ]
  %p.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.pn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2925
  %p.0.in = bitcast %union.rtunion_def* %p.0.in.in to %struct.rtx_def**, !dbg !2925
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !2899, metadata !DIExpression()), !dbg !2906
  %cond = icmp eq %struct.rtx_def* %p.0, null, !dbg !2926
  br i1 %cond, label %cleanup.cont.loopexit, label %land.rhs, !dbg !2926

land.rhs:                                         ; preds = %for.cond
  %call19 = tail call i32 @reg_set_p(%struct.rtx_def* %0, %struct.rtx_def* nonnull %p.0) #6, !dbg !2928
  %tobool20 = icmp eq i32 %call19, 0, !dbg !2929
  br i1 %tobool20, label %for.body, label %land.rhs.for.end_crit_edge, !dbg !2930

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  %p.0.lcssa9 = phi %struct.rtx_def* [ %p.0, %land.rhs ], !dbg !2925
  %arrayidx49.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0.lcssa9, i64 0, i32 1, i32 0, i32 1, !dbg !2931
  %rt_bb50.phi.trans.insert = bitcast %struct.object_block** %arrayidx49.phi.trans.insert to %struct.basic_block_def**, !dbg !2931
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb50.phi.trans.insert, align 8, !dbg !2933
  br label %for.end, !dbg !2930

for.body:                                         ; preds = %land.rhs
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !2934
  %bf.load = load i32, i32* %4, align 8, !dbg !2934
  %bf.clear = and i32 %bf.load, 65535, !dbg !2934
  %cmp21 = icmp eq i32 %bf.clear, 8, !dbg !2934
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false22, !dbg !2934

lor.lhs.false22:                                  ; preds = %for.body
  %cmp25 = icmp eq i32 %bf.clear, 7, !dbg !2934
  br i1 %cmp25, label %land.lhs.true, label %lor.lhs.false26, !dbg !2934

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %cmp29 = icmp eq i32 %bf.clear, 9, !dbg !2934
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false30, !dbg !2934

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %cmp33 = icmp eq i32 %bf.clear, 10, !dbg !2934
  br i1 %cmp33, label %land.lhs.true, label %for.inc, !dbg !2936

land.lhs.true:                                    ; preds = %lor.lhs.false30, %lor.lhs.false26, %lor.lhs.false22, %for.body
  %arrayidx36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 1, !dbg !2937
  %rt_bb37 = bitcast %struct.object_block** %arrayidx36 to %struct.basic_block_def**, !dbg !2937
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb37, align 8, !dbg !2937
  %cmp38 = icmp eq %struct.basic_block_def* %5, %1, !dbg !2938
  br i1 %cmp38, label %for.inc, label %for.end.loopexit, !dbg !2939

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false30
  br label %for.cond, !dbg !2940, !llvm.loop !2941

for.end.loopexit:                                 ; preds = %land.lhs.true
  %.lcssa = phi %struct.basic_block_def* [ %5, %land.lhs.true ], !dbg !2937
  %p.0.lcssa10 = phi %struct.rtx_def* [ %p.0, %land.lhs.true ], !dbg !2925
  br label %for.end, !dbg !2943

for.end:                                          ; preds = %for.end.loopexit, %land.rhs.for.end_crit_edge
  %p.011 = phi %struct.rtx_def* [ %p.0.lcssa9, %land.rhs.for.end_crit_edge ], [ %p.0.lcssa10, %for.end.loopexit ]
  %6 = phi %struct.basic_block_def* [ %.pre, %land.rhs.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2933
  %cmp51 = icmp eq %struct.basic_block_def* %6, %1, !dbg !2943
  br i1 %cmp51, label %if.end53, label %cleanup.cont, !dbg !2944

if.end53:                                         ; preds = %for.end
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.011, i64 0, i32 0, !dbg !2945
  %bf.load54 = load i32, i32* %7, align 8, !dbg !2945
  %bf.clear55 = and i32 %bf.load54, 65535, !dbg !2945
  %cmp56 = icmp eq i32 %bf.clear55, 8, !dbg !2945
  br i1 %cmp56, label %cond.true, label %lor.lhs.false57, !dbg !2945

lor.lhs.false57:                                  ; preds = %if.end53
  %cmp60 = icmp eq i32 %bf.clear55, 7, !dbg !2945
  br i1 %cmp60, label %cond.true, label %lor.lhs.false61, !dbg !2945

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %cmp64 = icmp eq i32 %bf.clear55, 9, !dbg !2945
  br i1 %cmp64, label %cond.true, label %lor.lhs.false65, !dbg !2945

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %cmp68 = icmp eq i32 %bf.clear55, 10, !dbg !2945
  br i1 %cmp68, label %cond.true, label %cond.end87, !dbg !2945

cond.true:                                        ; preds = %lor.lhs.false65, %lor.lhs.false61, %lor.lhs.false57, %if.end53
  %u69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.011, i64 0, i32 1, !dbg !2945
  %8 = getelementptr inbounds %union.u, %union.u* %u69, i64 1, i32 0, i32 0, i64 0, !dbg !2945
  %9 = bitcast %union.rtunion_def* %8 to i32**, !dbg !2945
  %10 = load i32*, i32** %9, align 8, !dbg !2945
  %bf.load73 = load i32, i32* %10, align 8, !dbg !2945
  %bf.clear74 = and i32 %bf.load73, 65535, !dbg !2945
  %cmp75 = icmp eq i32 %bf.clear74, 23, !dbg !2945
  %11 = bitcast i32* %10 to %struct.rtx_def*, !dbg !2945
  br i1 %cmp75, label %cond.end87, label %cond.false, !dbg !2945

cond.false:                                       ; preds = %cond.true
  %call85 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %p.011, %struct.rtx_def* %11) #6, !dbg !2945
  br label %cond.end87, !dbg !2945

cond.end87:                                       ; preds = %lor.lhs.false65, %cond.false, %cond.true
  %cond88 = phi %struct.rtx_def* [ %call85, %cond.false ], [ %11, %cond.true ], [ null, %lor.lhs.false65 ], !dbg !2945
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond88, metadata !2900, metadata !DIExpression()), !dbg !2906
  %tobool89 = icmp eq %struct.rtx_def* %cond88, null, !dbg !2947
  br i1 %tobool89, label %cleanup.cont, label %lor.lhs.false90, !dbg !2948

lor.lhs.false90:                                  ; preds = %cond.end87
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond88, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2949
  %13 = bitcast %union.rtunion_def* %12 to i32**, !dbg !2949
  %14 = load i32*, i32** %13, align 8, !dbg !2949
  %bf.load95 = load i32, i32* %14, align 8, !dbg !2949
  %bf.clear96 = and i32 %bf.load95, 65535, !dbg !2949
  %cmp97 = icmp eq i32 %bf.clear96, 43, !dbg !2949
  br i1 %cmp97, label %lor.lhs.false98, label %cleanup.cont, !dbg !2950

lor.lhs.false98:                                  ; preds = %lor.lhs.false90
  %call99 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %p.011, i32 3, %struct.rtx_def* null) #6, !dbg !2951
  %tobool100 = icmp eq %struct.rtx_def* %call99, null, !dbg !2951
  br i1 %tobool100, label %lor.lhs.false101, label %cleanup.cont, !dbg !2952

lor.lhs.false101:                                 ; preds = %lor.lhs.false98
  %arrayidx104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond88, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2953
  %rt_rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**, !dbg !2953
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx105, align 8, !dbg !2953
  %cmp106 = icmp eq %struct.rtx_def* %15, %0, !dbg !2954
  br i1 %cmp106, label %if.end108, label %cleanup.cont, !dbg !2955

if.end108:                                        ; preds = %lor.lhs.false101
  %16 = load i32*, i32** %13, align 8, !dbg !2956
  %bf.load113 = load i32, i32* %16, align 8, !dbg !2956
  %bf.clear114 = and i32 %bf.load113, 134217728, !dbg !2956
  %tobool115 = icmp eq i32 %bf.clear114, 0, !dbg !2956
  br i1 %tobool115, label %if.end117, label %cleanup.cont, !dbg !2958

if.end117:                                        ; preds = %if.end108
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !2959
  %bf.load141 = load i32, i32* %17, align 8, !dbg !2959
  %bf.lshr142 = lshr i32 %bf.load141, 16, !dbg !2959
  %bf.clear143 = and i32 %bf.lshr142, 255, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %bf.clear143, metadata !2901, metadata !DIExpression()), !dbg !2906
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 0, !dbg !2960
  %bf.load144 = load i32, i32* %18, align 8, !dbg !2960
  %bf.clear146 = and i32 %bf.load144, 16711680, !dbg !2960
  %bf.clear148 = and i32 %bf.load141, -16711681, !dbg !2960
  %bf.set = or i32 %bf.clear148, %bf.clear146, !dbg !2960
  store i32 %bf.set, i32* %17, align 8, !dbg !2960
  %19 = bitcast %union.rtunion_def* %12 to i64*, !dbg !2961
  %20 = load i64, i64* %19, align 8, !dbg !2961
  %u153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 1, !dbg !2962
  %21 = bitcast %union.u* %u153 to i64*, !dbg !2963
  store i64 %20, i64* %21, align 8, !dbg !2963
  %rt_rtx160 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !2964
  %call161 = tail call zeroext i8 @validate_change(%struct.rtx_def* nonnull %p.011, %struct.rtx_def** nonnull %rt_rtx160, %struct.rtx_def* %src, i8 zeroext 1) #6, !dbg !2965
  br label %while.cond, !dbg !2966

while.cond:                                       ; preds = %while.cond.backedge, %if.end117
  %p.1 = phi %struct.rtx_def* [ %p.011, %if.end117 ], [ %23, %while.cond.backedge ], !dbg !2906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.1, metadata !2899, metadata !DIExpression()), !dbg !2906
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2967
  %rt_rtx165 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !2967
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx165, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !2899, metadata !DIExpression()), !dbg !2906
  %cmp166 = icmp eq %struct.rtx_def* %23, %insn, !dbg !2968
  br i1 %cmp166, label %while.end, label %while.body, !dbg !2966

while.body:                                       ; preds = %while.cond
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i64 0, i32 0, !dbg !2969
  %bf.load168 = load i32, i32* %24, align 8, !dbg !2969
  %bf.clear169 = and i32 %bf.load168, 65535, !dbg !2969
  %cmp170 = icmp eq i32 %bf.clear169, 8, !dbg !2969
  br i1 %cmp170, label %if.end188, label %lor.lhs.false172, !dbg !2969

lor.lhs.false172:                                 ; preds = %while.body
  %cmp175 = icmp eq i32 %bf.clear169, 7, !dbg !2969
  br i1 %cmp175, label %if.end188, label %lor.lhs.false177, !dbg !2969

lor.lhs.false177:                                 ; preds = %lor.lhs.false172
  %cmp180 = icmp eq i32 %bf.clear169, 9, !dbg !2969
  br i1 %cmp180, label %if.end188, label %lor.lhs.false182, !dbg !2969

lor.lhs.false182:                                 ; preds = %lor.lhs.false177
  %cmp185 = icmp eq i32 %bf.clear169, 10, !dbg !2969
  br i1 %cmp185, label %if.end188, label %while.cond.backedge, !dbg !2972

if.end188:                                        ; preds = %lor.lhs.false182, %lor.lhs.false177, %lor.lhs.false172, %while.body
  %call189 = tail call %struct.rtx_def* @gen_lowpart_SUBREG(i32 %bf.clear143, %struct.rtx_def* %0) #6, !dbg !2973
  tail call void @validate_replace_rtx_group(%struct.rtx_def* %0, %struct.rtx_def* %call189, %struct.rtx_def* %23) #6, !dbg !2974
  br label %while.cond.backedge, !dbg !2966

while.cond.backedge:                              ; preds = %if.end188, %lor.lhs.false182
  br label %while.cond, !dbg !2906, !llvm.loop !2975

while.end:                                        ; preds = %while.cond
  tail call void @validate_replace_rtx_group(%struct.rtx_def* %src, %struct.rtx_def* %0, %struct.rtx_def* %insn) #6, !dbg !2977
  %call190 = tail call i32 @apply_change_group() #6, !dbg !2978
  %tobool191 = icmp eq i32 %call190, 0, !dbg !2978
  br i1 %tobool191, label %if.then192, label %if.else, !dbg !2979

if.then192:                                       ; preds = %while.end
  %bf.load193 = load i32, i32* %17, align 8, !dbg !2980
  %bf.shl195 = shl nuw nsw i32 %bf.clear143, 16, !dbg !2980
  %bf.clear196 = and i32 %bf.load193, -16711681, !dbg !2980
  %bf.set197 = or i32 %bf.clear196, %bf.shl195, !dbg !2980
  store i32 %bf.set197, i32* %17, align 8, !dbg !2980
  store %struct.rtx_def* %0, %struct.rtx_def** %rt_rtx, align 8, !dbg !2982
  br label %cleanup.cont, !dbg !2983

if.else:                                          ; preds = %while.end
  %call202 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 4, %struct.rtx_def* null) #6, !dbg !2984
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call202, metadata !2903, metadata !DIExpression()), !dbg !2985
  %tobool203 = icmp eq %struct.rtx_def* %call202, null, !dbg !2986
  br i1 %tobool203, label %cleanup.cont, label %if.then204, !dbg !2988

if.then204:                                       ; preds = %if.else
  tail call void @remove_note(%struct.rtx_def* %insn, %struct.rtx_def* nonnull %call202) #6, !dbg !2989
  br label %cleanup.cont, !dbg !2989

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2990

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.else, %if.end108, %lor.lhs.false101, %lor.lhs.false98, %cond.end87, %for.end, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false6, %entry, %lor.lhs.false90, %if.then204, %if.then192
  ret void, !dbg !2990
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @optimize_reg_copy_1(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) unnamed_addr #5 !dbg !2991 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2995, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !2996, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !2997, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3001, metadata !DIExpression()), !dbg !3017
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %call, metadata !3002, metadata !DIExpression()), !dbg !3017
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3019
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3003, metadata !DIExpression()), !dbg !3017
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3020
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3020
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3004, metadata !DIExpression()), !dbg !3017
  %cmp = icmp eq i32 %call, %call1, !dbg !3021
  %cmp2 = icmp slt i32 %call, 53, !dbg !3023
  %or.cond = or i1 %cmp, %cmp2, !dbg !3024
  %cmp4 = icmp slt i32 %call1, 53, !dbg !3025
  %or.cond1 = or i1 %or.cond, %cmp4, !dbg !3024
  br i1 %or.cond1, label %cleanup, label %if.end, !dbg !3024

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 0, !dbg !3026
  br label %for.cond, !dbg !3027

for.cond:                                         ; preds = %for.inc326, %if.end
  %insn.pn = phi %struct.rtx_def* [ %insn, %if.end ], [ %p.0, %for.inc326 ]
  %p.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.pn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3028
  %p.0.in = bitcast %union.rtunion_def* %p.0.in.in to %struct.rtx_def**, !dbg !3028
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !2998, metadata !DIExpression()), !dbg !3017
  %tobool = icmp eq %struct.rtx_def* %p.0, null, !dbg !3029
  br i1 %tobool, label %cleanup.loopexit.us-lcssa, label %for.body, !dbg !3029

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !3030
  %bf.load = load i32, i32* %2, align 8, !dbg !3030
  %bf.clear = and i32 %bf.load, 65535, !dbg !3030
  %cmp12 = icmp eq i32 %bf.clear, 8, !dbg !3030
  br i1 %cmp12, label %if.end26, label %lor.lhs.false13, !dbg !3030

lor.lhs.false13:                                  ; preds = %for.body
  %cmp16 = icmp eq i32 %bf.clear, 7, !dbg !3030
  br i1 %cmp16, label %if.end26, label %lor.lhs.false17, !dbg !3030

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cmp20 = icmp eq i32 %bf.clear, 9, !dbg !3030
  br i1 %cmp20, label %if.end26, label %lor.lhs.false21, !dbg !3030

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %cmp24 = icmp eq i32 %bf.clear, 10, !dbg !3030
  br i1 %cmp24, label %if.end26, label %for.inc326, !dbg !3032

if.end26:                                         ; preds = %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false13, %for.body
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 1, !dbg !3033
  %rt_bb30 = bitcast %struct.object_block** %arrayidx29 to %struct.basic_block_def**, !dbg !3033
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb30, align 8, !dbg !3033
  %cmp31 = icmp eq %struct.basic_block_def* %3, %0, !dbg !3035
  br i1 %cmp31, label %if.end33, label %cleanup.loopexit.us-lcssa, !dbg !3036

if.end33:                                         ; preds = %if.end26
  %call34 = tail call i32 @reg_set_p(%struct.rtx_def* %src, %struct.rtx_def* nonnull %p.0) #6, !dbg !3037
  %tobool35 = icmp eq i32 %call34, 0, !dbg !3037
  br i1 %tobool35, label %lor.lhs.false36, label %cleanup.loopexit.us-lcssa, !dbg !3039

lor.lhs.false36:                                  ; preds = %if.end33
  %call37 = tail call i32 @reg_set_p(%struct.rtx_def* %dest, %struct.rtx_def* nonnull %p.0) #6, !dbg !3040
  %tobool38 = icmp eq i32 %call37, 0, !dbg !3040
  br i1 %tobool38, label %lor.lhs.false39, label %cleanup.loopexit.us-lcssa, !dbg !3041

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %u64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !3042
  %4 = getelementptr inbounds %union.u, %union.u* %u64, i64 1, i32 0, i32 0, i64 0, !dbg !3042
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !3042
  %6 = load i32*, i32** %5, align 8, !dbg !3042
  %bf.load68 = load i32, i32* %6, align 8, !dbg !3042
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !3042
  %cmp70 = icmp eq i32 %bf.clear69, 24, !dbg !3043
  br i1 %cmp70, label %land.lhs.true71, label %if.end83, !dbg !3044

land.lhs.true71:                                  ; preds = %lor.lhs.false39
  %arrayidx78 = getelementptr inbounds i32, i32* %6, i64 2, !dbg !3045
  %rt_rtx79 = bitcast i32* %arrayidx78 to %struct.rtx_def**, !dbg !3045
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx79, align 8, !dbg !3045
  %call80 = tail call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %src, %struct.rtx_def* %7) #6, !dbg !3046
  %tobool81 = icmp eq i32 %call80, 0, !dbg !3046
  br i1 %tobool81, label %if.end83, label %cleanup.loopexit.us-lcssa, !dbg !3047

if.end83:                                         ; preds = %land.lhs.true71, %lor.lhs.false39
  %call84 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* nonnull %p.0, i32 1, i32 %call) #6, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call84, metadata !3000, metadata !DIExpression()), !dbg !3017
  %cmp85 = icmp eq %struct.rtx_def* %call84, null, !dbg !3049
  br i1 %cmp85, label %if.else318, label %land.lhs.true86, !dbg !3050

land.lhs.true86:                                  ; preds = %if.end83
  %arrayidx89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call84, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3051
  %8 = bitcast %union.rtunion_def* %arrayidx89 to i32**, !dbg !3051
  %9 = load i32*, i32** %8, align 8, !dbg !3051
  %bf.load91 = load i32, i32* %9, align 8, !dbg !3051
  %bf.load93 = load i32, i32* %1, align 8, !dbg !3052
  %bf.lshr4 = xor i32 %bf.load91, %bf.load93, !dbg !3053
  %10 = and i32 %bf.lshr4, 16711680, !dbg !3053
  %cmp96 = icmp eq i32 %10, 0, !dbg !3053
  br i1 %cmp96, label %if.then97.us-lcssa, label %if.else318, !dbg !3054

if.then97.us-lcssa:                               ; preds = %land.lhs.true86
  %call84.lcssa = phi %struct.rtx_def* [ %call84, %land.lhs.true86 ], !dbg !3048
  %u64.lcssa = phi %union.u* [ %u64, %land.lhs.true86 ], !dbg !3042
  %.lcssa = phi i32* [ %2, %land.lhs.true86 ], !dbg !3030
  %p.0.lcssa9 = phi %struct.rtx_def* [ %p.0, %land.lhs.true86 ], !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3055
  %call98 = tail call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %insn) #6, !dbg !3056
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call98, metadata !2999, metadata !DIExpression()), !dbg !3017
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3058
  br label %for.cond99, !dbg !3064

for.cond99:                                       ; preds = %for.inc, %if.then97.us-lcssa
  %failed.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %failed.6, %for.inc ], !dbg !3055
  %d_length.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %d_length.2, %for.inc ], !dbg !3065
  %s_length.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %s_length.1, %for.inc ], !dbg !3066
  %dest_death.0 = phi %struct.rtx_def* [ null, %if.then97.us-lcssa ], [ %dest_death.2, %for.inc ], !dbg !3017
  %d_n_calls.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %d_n_calls.2, %for.inc ], !dbg !3055
  %q.0 = phi %struct.rtx_def* [ %call98, %if.then97.us-lcssa ], [ %call232, %for.inc ], !dbg !3067
  %s_n_calls.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %s_n_calls.1, %for.inc ], !dbg !3055
  %s_freq_calls.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %s_freq_calls.1, %for.inc ], !dbg !3055
  %d_freq_calls.0 = phi i32 [ 0, %if.then97.us-lcssa ], [ %d_freq_calls.2, %for.inc ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_freq_calls.0, metadata !3016, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_freq_calls.0, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_n_calls.0, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.rtx_def* %q.0, metadata !2999, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %d_n_calls.0, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.0, metadata !3001, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %s_length.0, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_length.0, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %failed.0, metadata !3005, metadata !DIExpression()), !dbg !3055
  %call100 = tail call %struct.rtx_def* @next_real_insn(%struct.rtx_def* nonnull %p.0.lcssa9) #6, !dbg !3068
  %cmp101 = icmp eq %struct.rtx_def* %q.0, %call100, !dbg !3069
  br i1 %cmp101, label %for.end, label %for.body102, !dbg !3070

for.body102:                                      ; preds = %for.cond99
  %u103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, !dbg !3071
  %12 = getelementptr inbounds %union.u, %union.u* %u103, i64 1, i32 0, i32 0, i64 0, !dbg !3071
  %rt_rtx106 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !3071
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx106, align 8, !dbg !3071
  %call107 = tail call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %src, %struct.rtx_def* %13) #6, !dbg !3073
  %tobool108 = icmp eq i32 %call107, 0, !dbg !3073
  br i1 %tobool108, label %if.end136, label %if.then109, !dbg !3074

if.then109:                                       ; preds = %for.body102
  br i1 false, label %land.lhs.true111, label %if.else, !dbg !3075

land.lhs.true111:                                 ; preds = %if.then109
  br i1 undef, label %land.lhs.true111.if.else_crit_edge, label %land.lhs.true111.if.end136_crit_edge, !dbg !3078

land.lhs.true111.if.end136_crit_edge:             ; preds = %land.lhs.true111
  br label %if.end136, !dbg !3078

land.lhs.true111.if.else_crit_edge:               ; preds = %land.lhs.true111
  br label %if.else, !dbg !3078

if.else:                                          ; preds = %land.lhs.true111.if.else_crit_edge, %if.then109
  %call119 = tail call i32 @validate_replace_rtx(%struct.rtx_def* %src, %struct.rtx_def* %dest, %struct.rtx_def* %q.0) #6, !dbg !3079
  %tobool120 = icmp eq i32 %call119, 0, !dbg !3079
  br i1 %tobool120, label %if.end136, label %if.else122, !dbg !3081

if.else122:                                       ; preds = %if.else
  br i1 false, label %land.lhs.true124, label %if.end136, !dbg !3082

land.lhs.true124:                                 ; preds = %if.else122
  br i1 undef, label %land.lhs.true124.if.end136_crit_edge, label %if.then131, !dbg !3084

land.lhs.true124.if.end136_crit_edge:             ; preds = %land.lhs.true124
  br label %if.end136, !dbg !3084

if.then131:                                       ; preds = %land.lhs.true124
  br label %if.end136, !dbg !3085

if.end136:                                        ; preds = %land.lhs.true124.if.end136_crit_edge, %land.lhs.true111.if.end136_crit_edge, %if.else, %for.body102, %if.else122, %if.then131
  %failed.4 = phi i32 [ %failed.0, %for.body102 ], [ undef, %land.lhs.true111.if.end136_crit_edge ], [ 1, %if.else ], [ undef, %if.then131 ], [ undef, %land.lhs.true124.if.end136_crit_edge ], [ %failed.0, %if.else122 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %failed.4, metadata !3005, metadata !DIExpression()), !dbg !3055
  %bf.load137 = load i32, i32* %.lcssa, align 8, !dbg !3087
  %bf.clear138 = and i32 %bf.load137, 65535, !dbg !3087
  %cmp139 = icmp eq i32 %bf.clear138, 7, !dbg !3087
  br i1 %cmp139, label %if.end145, label %if.then140, !dbg !3089

if.then140:                                       ; preds = %if.end136
  %inc = add nsw i32 %s_length.0, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3012, metadata !DIExpression()), !dbg !3055
  %tobool141 = icmp ne %struct.rtx_def* %dest_death.0, null, !dbg !3092
  %inc143 = zext i1 %tobool141 to i32, !dbg !3094
  %spec.select = add nsw i32 %d_length.0, %inc143, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3011, metadata !DIExpression()), !dbg !3055
  br label %if.end145, !dbg !3095

if.end145:                                        ; preds = %if.then140, %if.end136
  %d_length.2 = phi i32 [ %d_length.0, %if.end136 ], [ %spec.select, %if.then140 ], !dbg !3055
  %s_length.1 = phi i32 [ %s_length.0, %if.end136 ], [ %inc, %if.then140 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_length.1, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_length.2, metadata !3011, metadata !DIExpression()), !dbg !3055
  %cmp146 = icmp eq %struct.rtx_def* %q.0, %p.0.lcssa9, !dbg !3096
  br i1 %cmp146, label %if.end211, label %land.lhs.true147, !dbg !3098

land.lhs.true147:                                 ; preds = %if.end145
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 0, !dbg !3099
  %bf.load148 = load i32, i32* %14, align 8, !dbg !3099
  %bf.clear149 = and i32 %bf.load148, 65535, !dbg !3099
  %cmp150 = icmp eq i32 %bf.clear149, 10, !dbg !3099
  br i1 %cmp150, label %if.then151, label %if.end211, !dbg !3100

if.then151:                                       ; preds = %land.lhs.true147
  %inc152 = add nsw i32 %s_n_calls.0, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %inc152, metadata !3014, metadata !DIExpression()), !dbg !3055
  %15 = load i32, i32* @optimize_size, align 4, !dbg !3103
  %tobool153 = icmp eq i32 %15, 0, !dbg !3103
  br i1 %tobool153, label %lor.lhs.false154, label %cond.end172, !dbg !3103

lor.lhs.false154:                                 ; preds = %if.then151
  %16 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3103
  %tobool155 = icmp eq i32 %16, 0, !dbg !3103
  br i1 %tobool155, label %cond.false, label %land.lhs.true156, !dbg !3103

land.lhs.true156:                                 ; preds = %lor.lhs.false154
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3103
  %cfg = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !3103
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3103
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 0, !dbg !3103
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3103
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 8, !dbg !3103
  %20 = load i64, i64* %count, align 8, !dbg !3103
  %tobool157 = icmp eq i64 %20, 0, !dbg !3103
  br i1 %tobool157, label %cond.end172, label %cond.false, !dbg !3103

cond.false:                                       ; preds = %land.lhs.true156, %lor.lhs.false154
  %arrayidx160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, i32 0, i32 1, !dbg !3103
  %rt_bb161 = bitcast %struct.object_block** %arrayidx160 to %struct.basic_block_def**, !dbg !3103
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb161, align 8, !dbg !3103
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !3103
  %22 = load i32, i32* %frequency, align 8, !dbg !3103
  %.off = add i32 %22, 9, !dbg !3103
  %23 = icmp ugt i32 %.off, 18, !dbg !3103
  br i1 %23, label %cond.true163, label %cond.end172, !dbg !3103

cond.true163:                                     ; preds = %cond.false
  %div170 = sdiv i32 %22, 10, !dbg !3103
  br label %cond.end172, !dbg !3103

cond.end172:                                      ; preds = %land.lhs.true156, %if.then151, %cond.true163, %cond.false
  %cond173 = phi i32 [ 1000, %land.lhs.true156 ], [ 1000, %if.then151 ], [ %div170, %cond.true163 ], [ 1, %cond.false ], !dbg !3103
  %add = add nsw i32 %s_freq_calls.0, %cond173, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %add, metadata !3015, metadata !DIExpression()), !dbg !3055
  %tobool174 = icmp eq %struct.rtx_def* %dest_death.0, null, !dbg !3105
  br i1 %tobool174, label %if.end211, label %if.then175, !dbg !3107

if.then175:                                       ; preds = %cond.end172
  %inc176 = add nsw i32 %d_n_calls.0, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %inc176, metadata !3013, metadata !DIExpression()), !dbg !3055
  br i1 %tobool153, label %lor.lhs.false178, label %cond.end207, !dbg !3110

lor.lhs.false178:                                 ; preds = %if.then175
  %24 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3110
  %tobool179 = icmp eq i32 %24, 0, !dbg !3110
  br i1 %tobool179, label %cond.false187, label %land.lhs.true180, !dbg !3110

land.lhs.true180:                                 ; preds = %lor.lhs.false178
  %25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3110
  %cfg182 = getelementptr inbounds %struct.function, %struct.function* %25, i64 0, i32 1, !dbg !3110
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg182, align 8, !dbg !3110
  %x_entry_block_ptr183 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 0, !dbg !3110
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr183, align 8, !dbg !3110
  %count184 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 8, !dbg !3110
  %28 = load i64, i64* %count184, align 8, !dbg !3110
  %tobool185 = icmp eq i64 %28, 0, !dbg !3110
  br i1 %tobool185, label %cond.end207, label %cond.false187, !dbg !3110

cond.false187:                                    ; preds = %land.lhs.true180, %lor.lhs.false178
  %arrayidx190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, i32 0, i32 1, !dbg !3110
  %rt_bb191 = bitcast %struct.object_block** %arrayidx190 to %struct.basic_block_def**, !dbg !3110
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb191, align 8, !dbg !3110
  %frequency192 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 11, !dbg !3110
  %30 = load i32, i32* %frequency192, align 8, !dbg !3110
  %.off3 = add i32 %30, 9, !dbg !3110
  %31 = icmp ugt i32 %.off3, 18, !dbg !3110
  br i1 %31, label %cond.true196, label %cond.end207, !dbg !3110

cond.true196:                                     ; preds = %cond.false187
  %div203 = sdiv i32 %30, 10, !dbg !3110
  br label %cond.end207, !dbg !3110

cond.end207:                                      ; preds = %land.lhs.true180, %if.then175, %cond.true196, %cond.false187
  %cond208 = phi i32 [ 1000, %land.lhs.true180 ], [ 1000, %if.then175 ], [ %div203, %cond.true196 ], [ 1, %cond.false187 ], !dbg !3110
  %add209 = add nsw i32 %d_freq_calls.0, %cond208, !dbg !3111
  call void @llvm.dbg.value(metadata i32 %add209, metadata !3016, metadata !DIExpression()), !dbg !3055
  br label %if.end211, !dbg !3112

if.end211:                                        ; preds = %cond.end172, %if.end145, %cond.end207, %land.lhs.true147
  %d_n_calls.2 = phi i32 [ %d_n_calls.0, %land.lhs.true147 ], [ %d_n_calls.0, %if.end145 ], [ %inc176, %cond.end207 ], [ %d_n_calls.0, %cond.end172 ], !dbg !3055
  %s_n_calls.1 = phi i32 [ %s_n_calls.0, %land.lhs.true147 ], [ %s_n_calls.0, %if.end145 ], [ %inc152, %cond.end207 ], [ %inc152, %cond.end172 ], !dbg !3055
  %s_freq_calls.1 = phi i32 [ %s_freq_calls.0, %land.lhs.true147 ], [ %s_freq_calls.0, %if.end145 ], [ %add, %cond.end207 ], [ %add, %cond.end172 ], !dbg !3055
  %d_freq_calls.2 = phi i32 [ %d_freq_calls.0, %land.lhs.true147 ], [ %d_freq_calls.0, %if.end145 ], [ %add209, %cond.end207 ], [ %d_freq_calls.0, %cond.end172 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_freq_calls.2, metadata !3016, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_freq_calls.1, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_n_calls.1, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_n_calls.2, metadata !3013, metadata !DIExpression()), !dbg !3055
  %cmp212 = icmp eq %struct.rtx_def* %dest_death.0, null, !dbg !3113
  br i1 %cmp212, label %land.lhs.true213, label %for.inc, !dbg !3114

land.lhs.true213:                                 ; preds = %if.end211
  %call214 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %q.0, i32 1, i32 %call1) #6, !dbg !3115
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call214, metadata !3001, metadata !DIExpression()), !dbg !3017
  %cmp215 = icmp eq %struct.rtx_def* %call214, null, !dbg !3116
  br i1 %cmp215, label %for.inc, label %if.then216, !dbg !3117

if.then216:                                       ; preds = %land.lhs.true213
  %arrayidx219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call214, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3118
  %32 = bitcast %union.rtunion_def* %arrayidx219 to i32**, !dbg !3118
  %33 = load i32*, i32** %32, align 8, !dbg !3118
  %bf.load221 = load i32, i32* %33, align 8, !dbg !3118
  %bf.load224 = load i32, i32* %11, align 8, !dbg !3119
  %bf.lshr2225 = xor i32 %bf.load221, %bf.load224, !dbg !3120
  %34 = and i32 %bf.lshr2225, 16711680, !dbg !3120
  %cmp227 = icmp eq i32 %34, 0, !dbg !3120
  br i1 %cmp227, label %if.else229, label %for.inc, !dbg !3121

if.else229:                                       ; preds = %if.then216
  tail call void @remove_note(%struct.rtx_def* %q.0, %struct.rtx_def* nonnull %call214) #6, !dbg !3122
  br label %for.inc

for.inc:                                          ; preds = %if.then216, %land.lhs.true213, %if.end211, %if.else229
  %failed.6 = phi i32 [ %failed.4, %land.lhs.true213 ], [ %failed.4, %if.end211 ], [ %failed.4, %if.else229 ], [ 1, %if.then216 ], !dbg !3123
  %dest_death.2 = phi %struct.rtx_def* [ null, %land.lhs.true213 ], [ %dest_death.0, %if.end211 ], [ %call214, %if.else229 ], [ null, %if.then216 ], !dbg !3017
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.2, metadata !3001, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %failed.6, metadata !3005, metadata !DIExpression()), !dbg !3055
  %call232 = tail call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %q.0) #6, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call232, metadata !2999, metadata !DIExpression()), !dbg !3017
  br label %for.cond99, !dbg !3125, !llvm.loop !3126

for.end:                                          ; preds = %for.cond99
  %failed.0.lcssa = phi i32 [ %failed.0, %for.cond99 ], !dbg !3055
  %d_length.0.lcssa = phi i32 [ %d_length.0, %for.cond99 ], !dbg !3065
  %s_length.0.lcssa = phi i32 [ %s_length.0, %for.cond99 ], !dbg !3066
  %dest_death.0.lcssa = phi %struct.rtx_def* [ %dest_death.0, %for.cond99 ], !dbg !3017
  %d_n_calls.0.lcssa = phi i32 [ %d_n_calls.0, %for.cond99 ], !dbg !3055
  %s_n_calls.0.lcssa = phi i32 [ %s_n_calls.0, %for.cond99 ], !dbg !3055
  %s_freq_calls.0.lcssa = phi i32 [ %s_freq_calls.0, %for.cond99 ], !dbg !3055
  %d_freq_calls.0.lcssa = phi i32 [ %d_freq_calls.0, %for.cond99 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %failed.0.lcssa, metadata !3005, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_length.0.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_length.0.lcssa, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.0.lcssa, metadata !3001, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %d_n_calls.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_n_calls.0.lcssa, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_freq_calls.0.lcssa, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_freq_calls.0.lcssa, metadata !3016, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %failed.0.lcssa, metadata !3005, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_length.0.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_length.0.lcssa, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.0.lcssa, metadata !3001, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %d_n_calls.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_n_calls.0.lcssa, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_freq_calls.0.lcssa, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_freq_calls.0.lcssa, metadata !3016, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %failed.0.lcssa, metadata !3005, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_length.0.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_length.0.lcssa, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.0.lcssa, metadata !3001, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %d_n_calls.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_n_calls.0.lcssa, metadata !3014, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %s_freq_calls.0.lcssa, metadata !3015, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %d_freq_calls.0.lcssa, metadata !3016, metadata !DIExpression()), !dbg !3055
  %tobool233 = icmp eq i32 %failed.0.lcssa, 0, !dbg !3128
  br i1 %tobool233, label %if.then234, label %if.end272, !dbg !3130

if.then234:                                       ; preds = %for.end
  %cmp235 = icmp sgt i32 %call, 52, !dbg !3131
  br i1 %cmp235, label %if.then236, label %if.end259, !dbg !3134

if.then236:                                       ; preds = %if.then234
  %35 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3135
  %idxprom = sext i32 %call to i64, !dbg !3135
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %35, i64 %idxprom, i32 2, !dbg !3135
  %36 = load i32, i32* %live_length, align 4, !dbg !3135
  %cmp238 = icmp sgt i32 %36, -1, !dbg !3138
  br i1 %cmp238, label %if.then239, label %if.end252, !dbg !3139

if.then239:                                       ; preds = %if.then236
  %sub = sub nsw i32 %36, %s_length.0.lcssa, !dbg !3140
  store i32 %sub, i32* %live_length, align 4, !dbg !3140
  %37 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3142
  %live_length245 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %37, i64 %idxprom, i32 2, !dbg !3142
  %38 = load i32, i32* %live_length245, align 4, !dbg !3142
  %cmp246 = icmp slt i32 %38, 2, !dbg !3144
  br i1 %cmp246, label %if.then247, label %if.end252, !dbg !3145

if.then247:                                       ; preds = %if.then239
  store i32 2, i32* %live_length245, align 4, !dbg !3146
  %.pre = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3147
  br label %if.end252, !dbg !3148

if.end252:                                        ; preds = %if.then239, %if.then247, %if.then236
  %39 = phi %struct.reg_info_t* [ %37, %if.then239 ], [ %.pre, %if.then247 ], [ %35, %if.then236 ], !dbg !3147
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %39, i64 %idxprom, i32 3, !dbg !3147
  %40 = load i32, i32* %calls_crossed, align 4, !dbg !3149
  %sub255 = sub nsw i32 %40, %s_n_calls.0.lcssa, !dbg !3149
  store i32 %sub255, i32* %calls_crossed, align 4, !dbg !3149
  %41 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3150
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %41, i64 %idxprom, i32 4, !dbg !3150
  %42 = load i32, i32* %freq_calls_crossed, align 4, !dbg !3151
  %sub258 = sub nsw i32 %42, %s_freq_calls.0.lcssa, !dbg !3151
  store i32 %sub258, i32* %freq_calls_crossed, align 4, !dbg !3151
  br label %if.end259, !dbg !3152

if.end259:                                        ; preds = %if.end252, %if.then234
  tail call void @remove_note(%struct.rtx_def* nonnull %p.0.lcssa9, %struct.rtx_def* nonnull %call84.lcssa) #6, !dbg !3153
  %u260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3154
  %43 = getelementptr inbounds %union.u, %union.u* %u260, i64 1, i32 0, i32 0, i64 2, !dbg !3154
  %44 = bitcast %union.rtunion_def* %43 to i64*, !dbg !3154
  %45 = load i64, i64* %44, align 8, !dbg !3154
  %46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call84.lcssa, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3155
  %47 = bitcast %union.rtunion_def* %46 to i64*, !dbg !3156
  store i64 %45, i64* %47, align 8, !dbg !3156
  %rt_rtx271 = bitcast %union.rtunion_def* %43 to %struct.rtx_def**, !dbg !3157
  store %struct.rtx_def* %call84.lcssa, %struct.rtx_def** %rt_rtx271, align 8, !dbg !3158
  br label %if.end272, !dbg !3159

if.end272:                                        ; preds = %for.end, %if.end259
  %tobool273 = icmp eq %struct.rtx_def* %dest_death.0.lcssa, null, !dbg !3160
  br i1 %tobool273, label %land.lhs.true274, label %if.end280, !dbg !3162

land.lhs.true274:                                 ; preds = %if.end272
  %call275 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %insn, i32 6, i32 %call1) #6, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call275, metadata !3001, metadata !DIExpression()), !dbg !3017
  %tobool276 = icmp eq %struct.rtx_def* %call275, null, !dbg !3164
  br i1 %tobool276, label %if.end280, label %if.then277, !dbg !3165

if.then277:                                       ; preds = %land.lhs.true274
  %48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call275, i64 0, i32 0, !dbg !3166
  %bf.load278 = load i32, i32* %48, align 8, !dbg !3166
  %bf.clear279 = and i32 %bf.load278, -16711681, !dbg !3166
  %bf.set = or i32 %bf.clear279, 65536, !dbg !3166
  store i32 %bf.set, i32* %48, align 8, !dbg !3166
  tail call void @remove_note(%struct.rtx_def* %insn, %struct.rtx_def* nonnull %call275) #6, !dbg !3168
  br label %if.end280, !dbg !3169

if.end280:                                        ; preds = %land.lhs.true274, %if.end272, %if.then277
  %dest_death.3 = phi %struct.rtx_def* [ %dest_death.0.lcssa, %if.end272 ], [ %call275, %if.then277 ], [ null, %land.lhs.true274 ], !dbg !3017
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest_death.3, metadata !3001, metadata !DIExpression()), !dbg !3017
  %tobool281 = icmp eq %struct.rtx_def* %dest_death.3, null, !dbg !3170
  br i1 %tobool281, label %if.end316, label %if.then282, !dbg !3172

if.then282:                                       ; preds = %if.end280
  %49 = getelementptr inbounds %union.u, %union.u* %u64.lcssa, i64 1, i32 0, i32 0, i64 2, !dbg !3173
  %50 = bitcast %union.rtunion_def* %49 to i64*, !dbg !3173
  %51 = load i64, i64* %50, align 8, !dbg !3173
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest_death.3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3175
  %53 = bitcast %union.rtunion_def* %52 to i64*, !dbg !3176
  store i64 %51, i64* %53, align 8, !dbg !3176
  %rt_rtx294 = bitcast %union.rtunion_def* %49 to %struct.rtx_def**, !dbg !3177
  store %struct.rtx_def* %dest_death.3, %struct.rtx_def** %rt_rtx294, align 8, !dbg !3178
  %cmp295 = icmp sgt i32 %call1, 52, !dbg !3179
  br i1 %cmp295, label %if.then296, label %if.end316, !dbg !3181

if.then296:                                       ; preds = %if.then282
  %54 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3182
  %idxprom297 = sext i32 %call1 to i64, !dbg !3182
  %live_length299 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %54, i64 %idxprom297, i32 2, !dbg !3182
  %55 = load i32, i32* %live_length299, align 4, !dbg !3182
  %cmp300 = icmp sgt i32 %55, -1, !dbg !3185
  br i1 %cmp300, label %if.then301, label %if.end306, !dbg !3186

if.then301:                                       ; preds = %if.then296
  %add305 = add nsw i32 %55, %d_length.0.lcssa, !dbg !3187
  store i32 %add305, i32* %live_length299, align 4, !dbg !3187
  %.pre7 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3188
  br label %if.end306, !dbg !3189

if.end306:                                        ; preds = %if.then301, %if.then296
  %56 = phi %struct.reg_info_t* [ %.pre7, %if.then301 ], [ %54, %if.then296 ], !dbg !3188
  %calls_crossed309 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %56, i64 %idxprom297, i32 3, !dbg !3188
  %57 = load i32, i32* %calls_crossed309, align 4, !dbg !3190
  %add310 = add nsw i32 %57, %d_n_calls.0.lcssa, !dbg !3190
  store i32 %add310, i32* %calls_crossed309, align 4, !dbg !3190
  %58 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3191
  %freq_calls_crossed313 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %58, i64 %idxprom297, i32 4, !dbg !3191
  %59 = load i32, i32* %freq_calls_crossed313, align 4, !dbg !3192
  %add314 = add nsw i32 %59, %d_freq_calls.0.lcssa, !dbg !3192
  store i32 %add314, i32* %freq_calls_crossed313, align 4, !dbg !3192
  br label %if.end316, !dbg !3193

if.end316:                                        ; preds = %if.end280, %if.then282, %if.end306
  %lnot.ext = zext i1 %tobool233 to i32, !dbg !3194
  br label %cleanup

if.else318:                                       ; preds = %if.end83, %land.lhs.true86
  br label %for.inc326, !dbg !3195

for.inc326:                                       ; preds = %if.else318, %lor.lhs.false21
  br label %for.cond, !dbg !3197, !llvm.loop !3198

cleanup.loopexit.us-lcssa:                        ; preds = %land.lhs.true71, %lor.lhs.false36, %if.end33, %if.end26, %for.cond
  br label %cleanup, !dbg !3200

cleanup:                                          ; preds = %cleanup.loopexit.us-lcssa, %entry, %if.end316
  %retval.0 = phi i32 [ %lnot.ext, %if.end316 ], [ 0, %entry ], [ 0, %cleanup.loopexit.us-lcssa ], !dbg !3017
  ret i32 %retval.0, !dbg !3200
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3201 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3208, metadata !DIExpression()), !dbg !3209
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3210
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3210
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3210
  ret i32 %0, !dbg !3211
}

; Function Attrs: nounwind uwtable
define internal fastcc void @optimize_reg_copy_2(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) unnamed_addr #5 !dbg !3212 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3214, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3215, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3216, metadata !DIExpression()), !dbg !3238
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %call, metadata !3220, metadata !DIExpression()), !dbg !3238
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3221, metadata !DIExpression()), !dbg !3238
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3241
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3241
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3222, metadata !DIExpression()), !dbg !3238
  %idxprom182 = sext i32 %call to i64, !dbg !3242
  br label %for.cond, !dbg !3244

for.cond:                                         ; preds = %for.inc188, %entry
  %insn.pn = phi %struct.rtx_def* [ %insn, %entry ], [ %p.0, %for.inc188 ]
  %p.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.pn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3245
  %p.0.in = bitcast %union.rtunion_def* %p.0.in.in to %struct.rtx_def**, !dbg !3245
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !3245
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !3217, metadata !DIExpression()), !dbg !3238
  %tobool = icmp eq %struct.rtx_def* %p.0, null, !dbg !3246
  br i1 %tobool, label %cleanup.cont.loopexit, label %for.body, !dbg !3246

for.body:                                         ; preds = %for.cond
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !3247
  %bf.load = load i32, i32* %1, align 8, !dbg !3247
  %bf.clear = and i32 %bf.load, 65535, !dbg !3247
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3247
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !3247

lor.lhs.false:                                    ; preds = %for.body
  %cmp7 = icmp eq i32 %bf.clear, 7, !dbg !3247
  br i1 %cmp7, label %if.end, label %lor.lhs.false8, !dbg !3247

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i32 %bf.clear, 9, !dbg !3247
  br i1 %cmp11, label %if.end, label %lor.lhs.false12, !dbg !3247

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %cmp15 = icmp eq i32 %bf.clear, 10, !dbg !3247
  br i1 %cmp15, label %if.end, label %for.inc188, !dbg !3249

if.end:                                           ; preds = %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false, %for.body
  %arrayidx18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 1, !dbg !3250
  %rt_bb19 = bitcast %struct.object_block** %arrayidx18 to %struct.basic_block_def**, !dbg !3250
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb19, align 8, !dbg !3250
  %cmp20 = icmp eq %struct.basic_block_def* %2, %0, !dbg !3252
  br i1 %cmp20, label %if.end22, label %cleanup.cont.loopexit, !dbg !3253

if.end22:                                         ; preds = %if.end
  br i1 %cmp, label %cond.true, label %lor.lhs.false26, !dbg !3254

lor.lhs.false26:                                  ; preds = %if.end22
  %cmp29 = icmp eq i32 %bf.clear, 7, !dbg !3254
  br i1 %cmp29, label %cond.true, label %lor.lhs.false30, !dbg !3254

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %cmp33 = icmp eq i32 %bf.clear, 9, !dbg !3254
  br i1 %cmp33, label %cond.true, label %lor.lhs.false34, !dbg !3254

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %cmp37 = icmp eq i32 %bf.clear, 10, !dbg !3254
  br i1 %cmp37, label %cond.true, label %cond.end56, !dbg !3254

cond.true:                                        ; preds = %lor.lhs.false34, %lor.lhs.false30, %lor.lhs.false26, %if.end22
  %u38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !3254
  %3 = getelementptr inbounds %union.u, %union.u* %u38, i64 1, i32 0, i32 0, i64 0, !dbg !3254
  %4 = bitcast %union.rtunion_def* %3 to i32**, !dbg !3254
  %5 = load i32*, i32** %4, align 8, !dbg !3254
  %bf.load42 = load i32, i32* %5, align 8, !dbg !3254
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !3254
  %cmp44 = icmp eq i32 %bf.clear43, 23, !dbg !3254
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !3254
  br i1 %cmp44, label %cond.end56, label %cond.false, !dbg !3254

cond.false:                                       ; preds = %cond.true
  %call54 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %p.0, %struct.rtx_def* %6) #6, !dbg !3254
  br label %cond.end56, !dbg !3254

cond.end56:                                       ; preds = %lor.lhs.false34, %cond.false, %cond.true
  %cond57 = phi %struct.rtx_def* [ %call54, %cond.false ], [ %6, %cond.true ], [ null, %lor.lhs.false34 ], !dbg !3254
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond57, metadata !3219, metadata !DIExpression()), !dbg !3238
  %tobool58 = icmp eq %struct.rtx_def* %cond57, null, !dbg !3255
  br i1 %tobool58, label %if.end171, label %land.lhs.true, !dbg !3256

land.lhs.true:                                    ; preds = %cond.end56
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond57, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3257
  %rt_rtx62 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !3257
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx62, align 8, !dbg !3257
  %cmp63 = icmp eq %struct.rtx_def* %8, %dest, !dbg !3258
  br i1 %cmp63, label %land.lhs.true64, label %if.end171, !dbg !3259

land.lhs.true64:                                  ; preds = %land.lhs.true
  %arrayidx67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond57, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3260
  %rt_rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**, !dbg !3260
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx68, align 8, !dbg !3260
  %cmp69 = icmp eq %struct.rtx_def* %9, %src, !dbg !3261
  br i1 %cmp69, label %land.lhs.true70, label %if.end171, !dbg !3262

land.lhs.true70:                                  ; preds = %land.lhs.true64
  %call71 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %p.0, i32 1, %struct.rtx_def* %dest) #6, !dbg !3263
  %tobool72 = icmp eq %struct.rtx_def* %call71, null, !dbg !3263
  br i1 %tobool72, label %if.end171, label %for.cond74.preheader, !dbg !3264

for.cond74.preheader:                             ; preds = %land.lhs.true70
  %p.0.lcssa3 = phi %struct.rtx_def* [ %p.0, %land.lhs.true70 ], !dbg !3245
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0.lcssa3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3265
  %rt_rtx78 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !3265
  %idxprom = sext i32 %call1 to i64, !dbg !3266
  br label %for.cond74, !dbg !3267

for.cond74:                                       ; preds = %for.cond74.preheader, %for.inc
  %q.0 = phi %struct.rtx_def* [ %34, %for.inc ], [ %insn, %for.cond74.preheader ], !dbg !3268
  call void @llvm.dbg.value(metadata %struct.rtx_def* %q.0, metadata !3218, metadata !DIExpression()), !dbg !3238
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx78, align 8, !dbg !3269
  %cmp79 = icmp eq %struct.rtx_def* %q.0, %11, !dbg !3270
  br i1 %cmp79, label %for.end, label %for.body80, !dbg !3267

for.body80:                                       ; preds = %for.cond74
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 0, !dbg !3271
  %bf.load81 = load i32, i32* %12, align 8, !dbg !3271
  %bf.clear82 = and i32 %bf.load81, 65535, !dbg !3271
  %cmp83 = icmp eq i32 %bf.clear82, 8, !dbg !3271
  br i1 %cmp83, label %if.then96, label %lor.lhs.false84, !dbg !3271

lor.lhs.false84:                                  ; preds = %for.body80
  %cmp87 = icmp eq i32 %bf.clear82, 7, !dbg !3271
  br i1 %cmp87, label %if.then96, label %lor.lhs.false88, !dbg !3271

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %cmp91 = icmp eq i32 %bf.clear82, 9, !dbg !3271
  br i1 %cmp91, label %if.then96, label %lor.lhs.false92, !dbg !3271

lor.lhs.false92:                                  ; preds = %lor.lhs.false88
  %cmp95 = icmp eq i32 %bf.clear82, 10, !dbg !3271
  br i1 %cmp95, label %if.then96, label %for.inc, !dbg !3272

if.then96:                                        ; preds = %lor.lhs.false92, %lor.lhs.false88, %lor.lhs.false84, %for.body80
  %u97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, !dbg !3273
  %13 = getelementptr inbounds %union.u, %union.u* %u97, i64 1, i32 0, i32 0, i64 0, !dbg !3273
  %rt_rtx100 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !3273
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx100, align 8, !dbg !3273
  %call101 = tail call i32 @reg_mentioned_p(%struct.rtx_def* %dest, %struct.rtx_def* %14) #6, !dbg !3274
  %tobool102 = icmp eq i32 %call101, 0, !dbg !3274
  br i1 %tobool102, label %if.end117, label %if.then103, !dbg !3275

if.then103:                                       ; preds = %if.then96
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx100, align 8, !dbg !3276
  %call108 = tail call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %15, %struct.rtx_def* %dest, %struct.rtx_def* %src) #6, !dbg !3277
  store %struct.rtx_def* %call108, %struct.rtx_def** %rt_rtx100, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3223, metadata !DIExpression()), !dbg !3279
  %call116 = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %q.0) #6, !dbg !3280
  br label %if.end117, !dbg !3281

if.end117:                                        ; preds = %if.then96, %if.then103
  %bf.load118 = load i32, i32* %12, align 8, !dbg !3282
  %bf.clear119 = and i32 %bf.load118, 65535, !dbg !3282
  %cmp120 = icmp eq i32 %bf.clear119, 10, !dbg !3282
  br i1 %cmp120, label %if.then121, label %for.inc, !dbg !3283

if.then121:                                       ; preds = %if.end117
  %16 = load i32, i32* @optimize_size, align 4, !dbg !3284
  %tobool122 = icmp eq i32 %16, 0, !dbg !3284
  br i1 %tobool122, label %lor.lhs.false123, label %cond.end145, !dbg !3284

lor.lhs.false123:                                 ; preds = %if.then121
  %17 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3284
  %tobool124 = icmp eq i32 %17, 0, !dbg !3284
  br i1 %tobool124, label %cond.false128, label %land.lhs.true125, !dbg !3284

land.lhs.true125:                                 ; preds = %lor.lhs.false123
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3284
  %cfg = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !3284
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3284
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !3284
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3284
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 8, !dbg !3284
  %21 = load i64, i64* %count, align 8, !dbg !3284
  %tobool126 = icmp eq i64 %21, 0, !dbg !3284
  br i1 %tobool126, label %cond.end145, label %cond.false128, !dbg !3284

cond.false128:                                    ; preds = %land.lhs.true125, %lor.lhs.false123
  %arrayidx131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, i32 0, i32 1, !dbg !3284
  %rt_bb132 = bitcast %struct.object_block** %arrayidx131 to %struct.basic_block_def**, !dbg !3284
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb132, align 8, !dbg !3284
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 11, !dbg !3284
  %23 = load i32, i32* %frequency, align 8, !dbg !3284
  %.off = add i32 %23, 9, !dbg !3284
  %24 = icmp ugt i32 %.off, 18, !dbg !3284
  br i1 %24, label %cond.true134, label %cond.end145, !dbg !3284

cond.true134:                                     ; preds = %cond.false128
  %div141 = sdiv i32 %23, 10, !dbg !3284
  br label %cond.end145, !dbg !3284

cond.end145:                                      ; preds = %land.lhs.true125, %if.then121, %cond.true134, %cond.false128
  %cond146 = phi i32 [ 1000, %land.lhs.true125 ], [ 1000, %if.then121 ], [ %div141, %cond.true134 ], [ 1, %cond.false128 ], !dbg !3284
  call void @llvm.dbg.value(metadata i32 %cond146, metadata !3235, metadata !DIExpression()), !dbg !3266
  %25 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3285
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %25, i64 %idxprom, i32 3, !dbg !3285
  %26 = load i32, i32* %calls_crossed, align 4, !dbg !3286
  %dec = add nsw i32 %26, -1, !dbg !3286
  store i32 %dec, i32* %calls_crossed, align 4, !dbg !3286
  %27 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3287
  %calls_crossed150 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %27, i64 %idxprom182, i32 3, !dbg !3287
  %28 = load i32, i32* %calls_crossed150, align 4, !dbg !3288
  %inc = add nsw i32 %28, 1, !dbg !3288
  store i32 %inc, i32* %calls_crossed150, align 4, !dbg !3288
  %29 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3289
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %29, i64 %idxprom, i32 4, !dbg !3289
  %30 = load i32, i32* %freq_calls_crossed, align 4, !dbg !3290
  %sub = sub nsw i32 %30, %cond146, !dbg !3290
  store i32 %sub, i32* %freq_calls_crossed, align 4, !dbg !3290
  %31 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3291
  %freq_calls_crossed155 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %31, i64 %idxprom182, i32 4, !dbg !3291
  %32 = load i32, i32* %freq_calls_crossed155, align 4, !dbg !3292
  %add = add nsw i32 %32, %cond146, !dbg !3292
  store i32 %add, i32* %freq_calls_crossed155, align 4, !dbg !3292
  br label %for.inc, !dbg !3293

for.inc:                                          ; preds = %lor.lhs.false92, %cond.end145, %if.end117
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %q.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3294
  %rt_rtx161 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**, !dbg !3294
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx161, align 8, !dbg !3294
  call void @llvm.dbg.value(metadata %struct.rtx_def* %34, metadata !3218, metadata !DIExpression()), !dbg !3238
  br label %for.cond74, !dbg !3295, !llvm.loop !3296

for.end:                                          ; preds = %for.cond74
  %call162 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %p.0.lcssa3, i32 1, %struct.rtx_def* %dest) #6, !dbg !3298
  tail call void @remove_note(%struct.rtx_def* nonnull %p.0.lcssa3, %struct.rtx_def* %call162) #6, !dbg !3299
  %35 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3300
  %deaths = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %35, i64 %idxprom, i32 1, !dbg !3300
  %36 = load i32, i32* %deaths, align 4, !dbg !3301
  %dec165 = add nsw i32 %36, -1, !dbg !3301
  store i32 %dec165, i32* %deaths, align 4, !dbg !3301
  %call166 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %src) #6, !dbg !3302
  tail call void @remove_note(%struct.rtx_def* %insn, %struct.rtx_def* %call166) #6, !dbg !3303
  %37 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3304
  %deaths169 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %37, i64 %idxprom182, i32 1, !dbg !3304
  %38 = load i32, i32* %deaths169, align 4, !dbg !3305
  %dec170 = add nsw i32 %38, -1, !dbg !3305
  store i32 %dec170, i32* %deaths169, align 4, !dbg !3305
  br label %cleanup.cont, !dbg !3306

if.end171:                                        ; preds = %land.lhs.true70, %cond.end56, %land.lhs.true64, %land.lhs.true
  %call172 = tail call i32 @reg_set_p(%struct.rtx_def* %src, %struct.rtx_def* nonnull %p.0) #6, !dbg !3307
  %tobool173 = icmp eq i32 %call172, 0, !dbg !3307
  br i1 %tobool173, label %lor.lhs.false174, label %cleanup.cont.loopexit, !dbg !3308

lor.lhs.false174:                                 ; preds = %if.end171
  %call175 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %p.0, i32 1, %struct.rtx_def* %dest) #6, !dbg !3309
  %tobool176 = icmp eq %struct.rtx_def* %call175, null, !dbg !3309
  br i1 %tobool176, label %lor.lhs.false177, label %cleanup.cont.loopexit, !dbg !3310

lor.lhs.false177:                                 ; preds = %lor.lhs.false174
  %bf.load178 = load i32, i32* %1, align 8, !dbg !3311
  %bf.clear179 = and i32 %bf.load178, 65535, !dbg !3311
  %cmp180 = icmp eq i32 %bf.clear179, 10, !dbg !3311
  br i1 %cmp180, label %land.lhs.true181, label %for.inc188, !dbg !3312

land.lhs.true181:                                 ; preds = %lor.lhs.false177
  %39 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3313
  %calls_crossed184 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %39, i64 %idxprom182, i32 3, !dbg !3313
  %40 = load i32, i32* %calls_crossed184, align 4, !dbg !3313
  %cmp185 = icmp eq i32 %40, 0, !dbg !3314
  br i1 %cmp185, label %cleanup.cont.loopexit, label %for.inc188, !dbg !3315

for.inc188:                                       ; preds = %lor.lhs.false177, %land.lhs.true181, %lor.lhs.false12
  br label %for.cond, !dbg !3316, !llvm.loop !3317

cleanup.cont.loopexit:                            ; preds = %land.lhs.true181, %for.cond, %if.end, %if.end171, %lor.lhs.false174
  br label %cleanup.cont, !dbg !3319

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %for.end
  ret void, !dbg !3319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @REG_N_SETS(i32 %regno) unnamed_addr #0 !dbg !3320 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3323, metadata !DIExpression()), !dbg !3324
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3325
  %idxprom = sext i32 %regno to i64, !dbg !3325
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %0, i64 %idxprom, i32 0, !dbg !3326
  %1 = load i32, i32* %sets, align 4, !dbg !3326
  ret i32 %1, !dbg !3327
}

declare dso_local i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @validate_replace_rtx_group(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_lowpart_SUBREG(i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @apply_change_group() local_unnamed_addr #2

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @find_reg_fusage(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @next_real_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @dead_or_set_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_matches(%struct.rtx_def* %insn, %struct.match* %matchp) unnamed_addr #5 !dbg !3328 {
entry:
  %likely_spilled = alloca [30 x i32], align 16
  %end = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3333, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata %struct.match* %matchp, metadata !3334, metadata !DIExpression()), !dbg !3350
  %0 = bitcast [30 x i32]* %likely_spilled to i8*, !dbg !3351
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #8, !dbg !3351
  call void @llvm.dbg.declare(metadata [30 x i32]* %likely_spilled, metadata !3335, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3337, metadata !DIExpression()), !dbg !3350
  tail call void @extract_insn(%struct.rtx_def* %insn) #6, !dbg !3353
  %call = tail call i32 @constrain_operands(i32 0) #6, !dbg !3354
  %tobool = icmp eq i32 %call, 0, !dbg !3354
  br i1 %tobool, label %cleanup150, label %if.end, !dbg !3356

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3357
  %2 = sext i8 %1 to i64, !dbg !3359
  br label %for.cond, !dbg !3359

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ %2, %if.end ], !dbg !3360
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3336, metadata !DIExpression()), !dbg !3350
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3361
  call void @llvm.dbg.value(metadata i32 undef, metadata !3336, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3350
  %cmp = icmp sgt i64 %indvars.iv3, 0, !dbg !3363
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !3364

for.cond4.preheader:                              ; preds = %for.cond
  %3 = bitcast i8** %end to i8*, !dbg !3365
  br label %for.cond4, !dbg !3366

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 2, i64 %indvars.iv.next4, !dbg !3367
  store i32 -1, i32* %arrayidx, align 4, !dbg !3368
  %arrayidx3 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 0, i64 %indvars.iv.next4, !dbg !3369
  store i32 -1, i32* %arrayidx3, align 4, !dbg !3370
  br label %for.cond, !dbg !3371, !llvm.loop !3372

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc147
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc147 ], !dbg !3374
  %any_matches.0 = phi i32 [ 0, %for.cond4.preheader ], [ %any_matches.1.ph.lcssa, %for.inc147 ], !dbg !3374
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3336, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %any_matches.0, metadata !3337, metadata !DIExpression()), !dbg !3350
  %4 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3375
  %5 = sext i8 %4 to i64, !dbg !3376
  %cmp6 = icmp slt i64 %indvars.iv, %5, !dbg !3376
  br i1 %cmp6, label %for.body8, label %cleanup150.loopexit, !dbg !3366

for.body8:                                        ; preds = %for.cond4
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3377
  %arrayidx10 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv, !dbg !3378
  %6 = load i8*, i8** %arrayidx10, align 8, !dbg !3378
  call void @llvm.dbg.value(metadata i8* %6, metadata !3338, metadata !DIExpression()), !dbg !3377
  %arrayidx12 = getelementptr inbounds [30 x i32], [30 x i32]* %likely_spilled, i64 0, i64 %indvars.iv, !dbg !3379
  store i32 0, i32* %arrayidx12, align 4, !dbg !3380
  %arrayidx14 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 1, i64 %indvars.iv, !dbg !3381
  store i32 0, i32* %arrayidx14, align 4, !dbg !3382
  %arrayidx16 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 3, i64 %indvars.iv, !dbg !3383
  store i32 0, i32* %arrayidx16, align 4, !dbg !3384
  %7 = load i8, i8* %6, align 1, !dbg !3385
  %cmp18 = icmp eq i8 %7, 61, !dbg !3387
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !3388

if.then20:                                        ; preds = %for.body8
  store i32 1, i32* %arrayidx14, align 4, !dbg !3389
  br label %if.end32, !dbg !3390

if.else:                                          ; preds = %for.body8
  %cmp25 = icmp eq i8 %7, 43, !dbg !3391
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !3393

if.then27:                                        ; preds = %if.else
  store i32 2, i32* %arrayidx14, align 4, !dbg !3394
  br label %if.end32, !dbg !3395

if.end32:                                         ; preds = %if.else, %if.then27, %if.then20
  %8 = load i32, i32* @which_alternative, align 4, !dbg !3396
  br label %for.cond33, !dbg !3399

for.cond33:                                       ; preds = %for.body38, %if.end32
  %p.0 = phi i8* [ %6, %if.end32 ], [ %incdec.ptr, %for.body38 ], !dbg !3377
  %i.0 = phi i32 [ 0, %if.end32 ], [ %spec.select, %for.body38 ], !dbg !3377
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3343, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3338, metadata !DIExpression()), !dbg !3377
  %9 = load i8, i8* %p.0, align 1, !dbg !3400
  %tobool35 = icmp ne i8 %9, 0, !dbg !3400
  %cmp36 = icmp slt i32 %i.0, %8, !dbg !3401
  %10 = and i1 %cmp36, %tobool35, !dbg !3401
  br i1 %10, label %for.body38, label %while.cond.preheader, !dbg !3402

while.cond.preheader:                             ; preds = %for.cond33
  %p.0.lcssa = phi i8* [ %p.0, %for.cond33 ], !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3377
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3403
  %arrayidx60 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 2, i64 %indvars.iv, !dbg !3403
  %arrayidx64 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 2, i64 %indvars.iv.next, !dbg !3403
  %arrayidx77 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 0, i64 %indvars.iv, !dbg !3365
  br label %while.cond.outer, !dbg !3404

for.body38:                                       ; preds = %for.cond33
  %cmp40 = icmp eq i8 %9, 44, !dbg !3405
  %inc = zext i1 %cmp40 to i32, !dbg !3407
  %spec.select = add nuw nsw i32 %i.0, %inc, !dbg !3407
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3343, metadata !DIExpression()), !dbg !3377
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3338, metadata !DIExpression()), !dbg !3377
  br label %for.cond33, !dbg !3409, !llvm.loop !3410

while.cond:                                       ; preds = %while.cond.outer, %sw.epilog
  %p.1 = phi i8* [ %add.ptr, %sw.epilog ], [ %p.1.ph, %while.cond.outer ], !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %any_matches.1.ph, metadata !3337, metadata !DIExpression()), !dbg !3350
  %11 = load i8, i8* %p.1, align 1, !dbg !3412
  call void @llvm.dbg.value(metadata i8 %11, metadata !3342, metadata !DIExpression()), !dbg !3377
  %cmp46 = icmp ne i8 %11, 0, !dbg !3413
  %cmp50 = icmp ne i8 %11, 44, !dbg !3414
  %12 = and i1 %cmp46, %cmp50, !dbg !3414
  br i1 %12, label %while.body, label %for.inc147, !dbg !3404

while.body:                                       ; preds = %while.cond
  %conv53 = sext i8 %11 to i32, !dbg !3415
  switch i32 %conv53, label %sw.epilog [
    i32 90, label %sw.bb93
    i32 89, label %sw.bb93
    i32 38, label %sw.bb
    i32 37, label %sw.bb57
    i32 48, label %sw.bb65
    i32 49, label %sw.bb65
    i32 50, label %sw.bb65
    i32 51, label %sw.bb65
    i32 52, label %sw.bb65
    i32 53, label %sw.bb65
    i32 54, label %sw.bb65
    i32 55, label %sw.bb65
    i32 56, label %sw.bb65
    i32 57, label %sw.bb65
    i32 97, label %sw.bb93
    i32 98, label %sw.bb93
    i32 99, label %sw.bb93
    i32 100, label %sw.bb93
    i32 101, label %sw.bb93
    i32 102, label %sw.bb93
    i32 104, label %sw.bb93
    i32 106, label %sw.bb93
    i32 107, label %sw.bb93
    i32 108, label %sw.bb93
    i32 112, label %sw.bb93
    i32 113, label %sw.bb93
    i32 116, label %sw.bb93
    i32 117, label %sw.bb93
    i32 118, label %sw.bb93
    i32 119, label %sw.bb93
    i32 120, label %sw.bb93
    i32 121, label %sw.bb93
    i32 122, label %sw.bb93
    i32 65, label %sw.bb93
    i32 66, label %sw.bb93
    i32 67, label %sw.bb93
    i32 68, label %sw.bb93
    i32 87, label %sw.bb93
  ], !dbg !3416

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* %arrayidx16, align 4, !dbg !3417
  br label %sw.epilog, !dbg !3418

sw.bb57:                                          ; preds = %while.body
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !3419
  store i32 %13, i32* %arrayidx60, align 4, !dbg !3419
  %14 = trunc i64 %indvars.iv to i32, !dbg !3420
  store i32 %14, i32* %arrayidx64, align 4, !dbg !3420
  br label %sw.epilog, !dbg !3421

sw.bb65:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %p.1.lcssa6 = phi i8* [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], [ %p.1, %while.body ], !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !3338, metadata !DIExpression()), !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3422
  call void @llvm.dbg.value(metadata i8** %end, metadata !3344, metadata !DIExpression(DW_OP_deref)), !dbg !3365
  %call66 = call i64 @strtoul(i8* %p.1.lcssa6, i8** nonnull %end, i32 10) #6, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %call66, metadata !3348, metadata !DIExpression()), !dbg !3365
  %conv67 = trunc i64 %call66 to i32, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %conv67, metadata !3349, metadata !DIExpression()), !dbg !3365
  %15 = load i8*, i8** %end, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %15, metadata !3344, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %15, metadata !3338, metadata !DIExpression()), !dbg !3377
  %sext5 = shl i64 %call66, 32, !dbg !3426
  %16 = ashr exact i64 %sext5, 32, !dbg !3426
  %cmp68 = icmp sgt i64 %indvars.iv, %16, !dbg !3426
  br i1 %cmp68, label %land.lhs.true, label %if.end74, !dbg !3428

land.lhs.true:                                    ; preds = %sw.bb65
  %sext = shl i64 %call66, 32, !dbg !3429
  %idxprom70 = ashr exact i64 %sext, 32, !dbg !3429
  %arrayidx71 = getelementptr inbounds [30 x i32], [30 x i32]* %likely_spilled, i64 0, i64 %idxprom70, !dbg !3429
  %17 = load i32, i32* %arrayidx71, align 4, !dbg !3429
  %tobool72 = icmp eq i32 %17, 0, !dbg !3429
  br i1 %tobool72, label %if.end74, label %cleanup, !dbg !3430, !llvm.loop !3431

if.end74:                                         ; preds = %land.lhs.true, %sw.bb65
  store i32 %conv67, i32* %arrayidx77, align 4, !dbg !3433
  call void @llvm.dbg.value(metadata i32 1, metadata !3337, metadata !DIExpression()), !dbg !3350
  %18 = load i32, i32* %arrayidx60, align 4, !dbg !3434
  %cmp81 = icmp sgt i32 %18, -1, !dbg !3436
  br i1 %cmp81, label %if.then83, label %cleanup, !dbg !3437

if.then83:                                        ; preds = %if.end74
  %idxprom88 = sext i32 %18 to i64, !dbg !3438
  %arrayidx89 = getelementptr inbounds %struct.match, %struct.match* %matchp, i64 0, i32 0, i64 %idxprom88, !dbg !3438
  store i32 %conv67, i32* %arrayidx89, align 4, !dbg !3439
  br label %cleanup, !dbg !3438

cleanup:                                          ; preds = %land.lhs.true, %if.end74, %if.then83
  %any_matches.2 = phi i32 [ %any_matches.1.ph, %land.lhs.true ], [ 1, %if.then83 ], [ 1, %if.end74 ], !dbg !3350
  call void @llvm.dbg.value(metadata i32 %any_matches.2, metadata !3337, metadata !DIExpression()), !dbg !3350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3440
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.preheader, %cleanup
  %any_matches.1.ph = phi i32 [ %any_matches.0, %while.cond.preheader ], [ %any_matches.2, %cleanup ]
  %p.1.ph = phi i8* [ %p.0.lcssa, %while.cond.preheader ], [ %15, %cleanup ]
  br label %while.cond, !dbg !3404

sw.bb93:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %call94 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call95 = call i32 @regclass_for_constraint(i32 %call94) #6, !dbg !3441
  %cmp96 = icmp eq i32 %call95, 1, !dbg !3441
  br i1 %cmp96, label %if.then142, label %lor.lhs.false, !dbg !3441

lor.lhs.false:                                    ; preds = %sw.bb93
  %call98 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call99 = call i32 @regclass_for_constraint(i32 %call98) #6, !dbg !3441
  %cmp100 = icmp eq i32 %call99, 2, !dbg !3441
  br i1 %cmp100, label %if.then142, label %lor.lhs.false102, !dbg !3441

lor.lhs.false102:                                 ; preds = %lor.lhs.false
  %call103 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call104 = call i32 @regclass_for_constraint(i32 %call103) #6, !dbg !3441
  %cmp105 = icmp eq i32 %call104, 3, !dbg !3441
  br i1 %cmp105, label %if.then142, label %lor.lhs.false107, !dbg !3441

lor.lhs.false107:                                 ; preds = %lor.lhs.false102
  %call108 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call109 = call i32 @regclass_for_constraint(i32 %call108) #6, !dbg !3441
  %cmp110 = icmp eq i32 %call109, 4, !dbg !3441
  br i1 %cmp110, label %if.then142, label %lor.lhs.false112, !dbg !3441

lor.lhs.false112:                                 ; preds = %lor.lhs.false107
  %call113 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call114 = call i32 @regclass_for_constraint(i32 %call113) #6, !dbg !3441
  %cmp115 = icmp eq i32 %call114, 7, !dbg !3441
  br i1 %cmp115, label %if.then142, label %lor.lhs.false117, !dbg !3441

lor.lhs.false117:                                 ; preds = %lor.lhs.false112
  %call118 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call119 = call i32 @regclass_for_constraint(i32 %call118) #6, !dbg !3441
  %cmp120 = icmp eq i32 %call119, 5, !dbg !3441
  br i1 %cmp120, label %if.then142, label %lor.lhs.false122, !dbg !3441

lor.lhs.false122:                                 ; preds = %lor.lhs.false117
  %call123 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call124 = call i32 @regclass_for_constraint(i32 %call123) #6, !dbg !3441
  %cmp125 = icmp eq i32 %call124, 6, !dbg !3441
  br i1 %cmp125, label %if.then142, label %lor.lhs.false127, !dbg !3441

lor.lhs.false127:                                 ; preds = %lor.lhs.false122
  %call128 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call129 = call i32 @regclass_for_constraint(i32 %call128) #6, !dbg !3441
  %cmp130 = icmp eq i32 %call129, 17, !dbg !3441
  br i1 %cmp130, label %if.then142, label %lor.lhs.false132, !dbg !3441

lor.lhs.false132:                                 ; preds = %lor.lhs.false127
  %call133 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call134 = call i32 @regclass_for_constraint(i32 %call133) #6, !dbg !3441
  %cmp135 = icmp eq i32 %call134, 14, !dbg !3441
  br i1 %cmp135, label %if.then142, label %lor.lhs.false137, !dbg !3441

lor.lhs.false137:                                 ; preds = %lor.lhs.false132
  %call138 = call i32 @lookup_constraint(i8* %p.1) #6, !dbg !3441
  %call139 = call i32 @regclass_for_constraint(i32 %call138) #6, !dbg !3441
  %cmp140 = icmp eq i32 %call139, 15, !dbg !3441
  br i1 %cmp140, label %if.then142, label %sw.epilog, !dbg !3443

if.then142:                                       ; preds = %lor.lhs.false137, %lor.lhs.false132, %lor.lhs.false127, %lor.lhs.false122, %lor.lhs.false117, %lor.lhs.false112, %lor.lhs.false107, %lor.lhs.false102, %lor.lhs.false, %sw.bb93
  store i32 1, i32* %arrayidx12, align 4, !dbg !3444
  br label %sw.epilog, !dbg !3445

sw.epilog:                                        ; preds = %lor.lhs.false137, %if.then142, %while.body, %sw.bb57, %sw.bb
  %call146 = call fastcc i64 @insn_constraint_len(i8 signext %11, i8* %p.1) #7, !dbg !3446
  %add.ptr = getelementptr inbounds i8, i8* %p.1, i64 %call146, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3338, metadata !DIExpression()), !dbg !3377
  br label %while.cond, !dbg !3404, !llvm.loop !3431

for.inc147:                                       ; preds = %while.cond
  %any_matches.1.ph.lcssa = phi i32 [ %any_matches.1.ph, %while.cond ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3336, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3350
  br label %for.cond4, !dbg !3448, !llvm.loop !3449

cleanup150.loopexit:                              ; preds = %for.cond4
  %any_matches.0.lcssa = phi i32 [ %any_matches.0, %for.cond4 ], !dbg !3374
  call void @llvm.dbg.value(metadata i32 %any_matches.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %any_matches.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %any_matches.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3350
  br label %cleanup150, !dbg !3451

cleanup150:                                       ; preds = %cleanup150.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %any_matches.0.lcssa, %cleanup150.loopexit ], !dbg !3350
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #8, !dbg !3451
  ret i32 %retval.0, !dbg !3451
}

declare dso_local i32 @operands_match_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @count_occurrences(%struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fixup_match_2(%struct.rtx_def* %insn, %struct.rtx_def* %dst, %struct.rtx_def* %src, %struct.rtx_def* %offset) unnamed_addr #5 !dbg !3452 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3456, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst, metadata !3457, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3458, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %offset, metadata !3459, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3461, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()), !dbg !3474
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3475
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3475
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3475
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3465, metadata !DIExpression()), !dbg !3474
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3476
  %call1 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %insn, i32 1, i32 %call) #6, !dbg !3478
  %tobool = icmp eq %struct.rtx_def* %call1, null, !dbg !3478
  br i1 %tobool, label %if.end, label %cleanup237, !dbg !3479

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3474
  %u110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %offset, i64 0, i32 1, !dbg !3480
  %arrayidx111 = bitcast %union.u* %u110 to i64*, !dbg !3480
  %u127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3481
  %1 = getelementptr inbounds %union.u, %union.u* %u127, i64 1, i32 0, i32 0, i64 0, !dbg !3481
  %rt_rtx130 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3481
  %arrayidx154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3483
  %rt_int = bitcast %union.rtunion_def* %arrayidx154 to i32*, !dbg !3483
  br label %for.cond, !dbg !3486

for.cond:                                         ; preds = %for.inc, %if.end
  %dst_death.0 = phi %struct.rtx_def* [ null, %if.end ], [ %dst_death.2, %for.inc ], !dbg !3487
  %insn.pn = phi %struct.rtx_def* [ %insn, %if.end ], [ %p.0, %for.inc ]
  %length.0 = phi i32 [ 0, %if.end ], [ %length.2, %for.inc ], !dbg !3488
  %num_calls.0 = phi i32 [ 0, %if.end ], [ %num_calls.3, %for.inc ], !dbg !3489
  %freq_calls.0 = phi i32 [ 0, %if.end ], [ %freq_calls.3, %for.inc ], !dbg !3490
  %p.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.pn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3491
  %p.0.in = bitcast %union.rtunion_def* %p.0.in.in to %struct.rtx_def**, !dbg !3491
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %freq_calls.0, metadata !3464, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %num_calls.0, metadata !3463, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %length.0, metadata !3462, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !3460, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst_death.0, metadata !3461, metadata !DIExpression()), !dbg !3474
  %tobool5 = icmp eq %struct.rtx_def* %p.0, null, !dbg !3492
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3492

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !3493
  %bf.load = load i32, i32* %2, align 8, !dbg !3493
  %bf.clear = and i32 %bf.load, 65535, !dbg !3493
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3493
  br i1 %cmp, label %if.end18, label %lor.lhs.false, !dbg !3493

lor.lhs.false:                                    ; preds = %for.body
  %cmp8 = icmp eq i32 %bf.clear, 7, !dbg !3493
  br i1 %cmp8, label %if.end18, label %lor.lhs.false9, !dbg !3493

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i32 %bf.clear, 9, !dbg !3493
  br i1 %cmp12, label %if.end18, label %lor.lhs.false13, !dbg !3493

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !3493
  br i1 %cmp16, label %if.end18, label %cleanup230, !dbg !3495

if.end18:                                         ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %for.body
  %arrayidx21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 1, !dbg !3496
  %rt_bb22 = bitcast %struct.object_block** %arrayidx21 to %struct.basic_block_def**, !dbg !3496
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb22, align 8, !dbg !3496
  %cmp23 = icmp eq %struct.basic_block_def* %3, %0, !dbg !3498
  br i1 %cmp23, label %if.end25, label %cleanup230, !dbg !3499

if.end25:                                         ; preds = %if.end18
  %call26 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3500
  %call27 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* nonnull %p.0, i32 1, i32 %call26) #6, !dbg !3502
  %tobool28 = icmp eq %struct.rtx_def* %call27, null, !dbg !3502
  %spec.select = select i1 %tobool28, %struct.rtx_def* %dst_death.0, %struct.rtx_def* %p.0, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select, metadata !3461, metadata !DIExpression()), !dbg !3474
  %tobool31 = icmp eq %struct.rtx_def* %spec.select, null, !dbg !3504
  br i1 %tobool31, label %land.lhs.true, label %if.end25.if.end36_crit_edge, !dbg !3506

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  %bf.load37.pre = load i32, i32* %2, align 8, !dbg !3507
  %.pre = and i32 %bf.load37.pre, 65535, !dbg !3507
  br label %if.end36, !dbg !3506

land.lhs.true:                                    ; preds = %if.end25
  %bf.load32 = load i32, i32* %2, align 8, !dbg !3508
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !3508
  %cmp34 = icmp ne i32 %bf.clear33, 7, !dbg !3508
  %inc = zext i1 %cmp34 to i32, !dbg !3509
  %spec.select2 = add nsw i32 %length.0, %inc, !dbg !3509
  br label %if.end36, !dbg !3509

if.end36:                                         ; preds = %if.end25.if.end36_crit_edge, %land.lhs.true
  %bf.clear38.pre-phi = phi i32 [ %.pre, %if.end25.if.end36_crit_edge ], [ %bf.clear33, %land.lhs.true ], !dbg !3507
  %length.1 = phi i32 [ %length.0, %if.end25.if.end36_crit_edge ], [ %spec.select2, %land.lhs.true ], !dbg !3491
  call void @llvm.dbg.value(metadata i32 %length.1, metadata !3462, metadata !DIExpression()), !dbg !3474
  %cmp39 = icmp eq i32 %bf.clear38.pre-phi, 8, !dbg !3507
  br i1 %cmp39, label %cond.true, label %lor.lhs.false40, !dbg !3507

lor.lhs.false40:                                  ; preds = %if.end36
  %cmp43 = icmp eq i32 %bf.clear38.pre-phi, 7, !dbg !3507
  br i1 %cmp43, label %cond.true, label %lor.lhs.false44, !dbg !3507

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %cmp47 = icmp eq i32 %bf.clear38.pre-phi, 9, !dbg !3507
  br i1 %cmp47, label %cond.true, label %lor.lhs.false48, !dbg !3507

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %cmp51 = icmp eq i32 %bf.clear38.pre-phi, 10, !dbg !3507
  br i1 %cmp51, label %cond.true, label %cond.end70, !dbg !3507

cond.true:                                        ; preds = %lor.lhs.false48, %lor.lhs.false44, %lor.lhs.false40, %if.end36
  %u52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !3507
  %4 = getelementptr inbounds %union.u, %union.u* %u52, i64 1, i32 0, i32 0, i64 0, !dbg !3507
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !3507
  %6 = load i32*, i32** %5, align 8, !dbg !3507
  %bf.load56 = load i32, i32* %6, align 8, !dbg !3507
  %bf.clear57 = and i32 %bf.load56, 65535, !dbg !3507
  %cmp58 = icmp eq i32 %bf.clear57, 23, !dbg !3507
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !3507
  br i1 %cmp58, label %cond.end70, label %cond.false, !dbg !3507

cond.false:                                       ; preds = %cond.true
  %call68 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %p.0, %struct.rtx_def* %7) #6, !dbg !3507
  br label %cond.end70, !dbg !3507

cond.end70:                                       ; preds = %lor.lhs.false48, %cond.false, %cond.true
  %cond71 = phi %struct.rtx_def* [ %call68, %cond.false ], [ %7, %cond.true ], [ null, %lor.lhs.false48 ], !dbg !3507
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond71, metadata !3466, metadata !DIExpression()), !dbg !3510
  %tobool72 = icmp eq %struct.rtx_def* %cond71, null, !dbg !3511
  br i1 %tobool72, label %if.end159, label %land.lhs.true73, !dbg !3512

land.lhs.true73:                                  ; preds = %cond.end70
  %arrayidx76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond71, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3513
  %rt_rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**, !dbg !3513
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx77, align 8, !dbg !3513
  %cmp78 = icmp eq %struct.rtx_def* %8, %dst, !dbg !3514
  br i1 %cmp78, label %land.lhs.true79, label %if.end159, !dbg !3515

land.lhs.true79:                                  ; preds = %land.lhs.true73
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond71, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3516
  %10 = bitcast %union.rtunion_def* %9 to i32**, !dbg !3516
  %11 = load i32*, i32** %10, align 8, !dbg !3516
  %bf.load84 = load i32, i32* %11, align 8, !dbg !3516
  %bf.clear85 = and i32 %bf.load84, 65535, !dbg !3516
  %cmp86 = icmp eq i32 %bf.clear85, 49, !dbg !3517
  br i1 %cmp86, label %land.lhs.true87, label %if.end159, !dbg !3518

land.lhs.true87:                                  ; preds = %land.lhs.true79
  %arrayidx94 = getelementptr inbounds i32, i32* %11, i64 2, !dbg !3519
  %rt_rtx95 = bitcast i32* %arrayidx94 to %struct.rtx_def**, !dbg !3519
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx95, align 8, !dbg !3519
  %cmp96 = icmp eq %struct.rtx_def* %12, %src, !dbg !3520
  br i1 %cmp96, label %land.lhs.true97, label %if.end159, !dbg !3521

land.lhs.true97:                                  ; preds = %land.lhs.true87
  %13 = getelementptr inbounds i32, i32* %11, i64 4, !dbg !3522
  %14 = bitcast i32* %13 to i32**, !dbg !3522
  %15 = load i32*, i32** %14, align 8, !dbg !3522
  %bf.load106 = load i32, i32* %15, align 8, !dbg !3522
  %bf.clear107 = and i32 %bf.load106, 65535, !dbg !3522
  %cmp108 = icmp eq i32 %bf.clear107, 30, !dbg !3522
  br i1 %cmp108, label %if.then109, label %if.end159, !dbg !3523

if.then109:                                       ; preds = %land.lhs.true97
  %16 = load i64, i64* %arrayidx111, align 8, !dbg !3524
  %u120 = getelementptr inbounds i32, i32* %15, i64 2, !dbg !3525
  %arrayidx122 = bitcast i32* %u120 to i64*, !dbg !3525
  %17 = load i64, i64* %arrayidx122, align 8, !dbg !3525
  %sub = sub nsw i64 %16, %17, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3470, metadata !DIExpression()), !dbg !3480
  %call123 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub) #6, !dbg !3527
  %call124 = tail call %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %dst, %struct.rtx_def* %dst, %struct.rtx_def* %call123) #6, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call124, metadata !3473, metadata !DIExpression()), !dbg !3480
  %tobool125 = icmp eq %struct.rtx_def* %call124, null, !dbg !3529
  br i1 %tobool125, label %cleanup, label %land.lhs.true126, !dbg !3530

land.lhs.true126:                                 ; preds = %if.then109
  %call131 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx130, %struct.rtx_def* nonnull %call124, i8 zeroext 0) #6, !dbg !3531
  %tobool132 = icmp eq i8 %call131, 0, !dbg !3531
  br i1 %tobool132, label %cleanup, label %if.then133, !dbg !3532

if.then133:                                       ; preds = %land.lhs.true126
  br i1 %tobool31, label %if.end149, label %if.then135, !dbg !3533

if.then135:                                       ; preds = %if.then133
  %call136 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3534
  %call137 = tail call %struct.rtx_def* @remove_death(i32 %call136, %struct.rtx_def* nonnull %spec.select) #6, !dbg !3537
  %18 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3538
  %call138 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3538
  %idxprom = zext i32 %call138 to i64, !dbg !3538
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %18, i64 %idxprom, i32 2, !dbg !3538
  %19 = load i32, i32* %live_length, align 4, !dbg !3539
  %add140 = add nsw i32 %19, %length.1, !dbg !3539
  store i32 %add140, i32* %live_length, align 4, !dbg !3539
  %20 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3540
  %call141 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3540
  %idxprom142 = zext i32 %call141 to i64, !dbg !3540
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %20, i64 %idxprom142, i32 3, !dbg !3540
  %21 = load i32, i32* %calls_crossed, align 4, !dbg !3541
  %add144 = add nsw i32 %21, %num_calls.0, !dbg !3541
  store i32 %add144, i32* %calls_crossed, align 4, !dbg !3541
  %22 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3542
  %call145 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3542
  %idxprom146 = zext i32 %call145 to i64, !dbg !3542
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %22, i64 %idxprom146, i32 4, !dbg !3542
  %23 = load i32, i32* %freq_calls_crossed, align 4, !dbg !3543
  %add148 = add nsw i32 %23, %freq_calls.0, !dbg !3543
  store i32 %add148, i32* %freq_calls_crossed, align 4, !dbg !3543
  br label %if.end149, !dbg !3544

if.end149:                                        ; preds = %if.then133, %if.then135
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3545
  %tobool150 = icmp eq %struct._IO_FILE* %24, null, !dbg !3545
  br i1 %tobool150, label %cleanup, label %if.then151, !dbg !3546

if.then151:                                       ; preds = %if.end149
  %25 = load i32, i32* %rt_int, align 8, !dbg !3547
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %25) #6, !dbg !3548
  br label %cleanup, !dbg !3548

cleanup:                                          ; preds = %if.end149, %land.lhs.true126, %if.then109, %if.then151
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then151 ], [ 1, %if.end149 ], [ 0, %land.lhs.true126 ], [ 0, %if.then109 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end159, label %cleanup230

if.end159:                                        ; preds = %cond.end70, %cleanup, %land.lhs.true97, %land.lhs.true87, %land.lhs.true79, %land.lhs.true73
  %u160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !3549
  %26 = getelementptr inbounds %union.u, %union.u* %u160, i64 1, i32 0, i32 0, i64 0, !dbg !3549
  %rt_rtx163 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !3549
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx163, align 8, !dbg !3549
  %call164 = tail call i32 @reg_set_p(%struct.rtx_def* %dst, %struct.rtx_def* %27) #6, !dbg !3551
  %tobool165 = icmp eq i32 %call164, 0, !dbg !3551
  br i1 %tobool165, label %if.end167, label %cleanup230, !dbg !3552

if.end167:                                        ; preds = %if.end159
  %bf.load168 = load i32, i32* %2, align 8, !dbg !3553
  %bf.clear169 = and i32 %bf.load168, 65535, !dbg !3553
  %cmp170 = icmp eq i32 %bf.clear169, 10, !dbg !3553
  br i1 %cmp170, label %if.then172, label %if.else, !dbg !3555

if.then172:                                       ; preds = %if.end167
  br i1 %tobool31, label %if.then174, label %if.end202, !dbg !3556

if.then174:                                       ; preds = %if.then172
  %inc175 = add nsw i32 %num_calls.0, 1, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %inc175, metadata !3463, metadata !DIExpression()), !dbg !3474
  %28 = load i32, i32* @optimize_size, align 4, !dbg !3561
  %tobool176 = icmp eq i32 %28, 0, !dbg !3561
  br i1 %tobool176, label %lor.lhs.false177, label %cond.end199, !dbg !3561

lor.lhs.false177:                                 ; preds = %if.then174
  %29 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3561
  %tobool178 = icmp eq i32 %29, 0, !dbg !3561
  br i1 %tobool178, label %cond.false182, label %land.lhs.true179, !dbg !3561

land.lhs.true179:                                 ; preds = %lor.lhs.false177
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3561
  %cfg = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 1, !dbg !3561
  %31 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3561
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %31, i64 0, i32 0, !dbg !3561
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3561
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 8, !dbg !3561
  %33 = load i64, i64* %count, align 8, !dbg !3561
  %tobool180 = icmp eq i64 %33, 0, !dbg !3561
  br i1 %tobool180, label %cond.end199, label %cond.false182, !dbg !3561

cond.false182:                                    ; preds = %land.lhs.true179, %lor.lhs.false177
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb22, align 8, !dbg !3561
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 11, !dbg !3561
  %35 = load i32, i32* %frequency, align 8, !dbg !3561
  %.off = add i32 %35, 9, !dbg !3561
  %36 = icmp ugt i32 %.off, 18, !dbg !3561
  br i1 %36, label %cond.true188, label %cond.end199, !dbg !3561

cond.true188:                                     ; preds = %cond.false182
  %div195 = sdiv i32 %35, 10, !dbg !3561
  br label %cond.end199, !dbg !3561

cond.end199:                                      ; preds = %land.lhs.true179, %if.then174, %cond.true188, %cond.false182
  %cond200 = phi i32 [ 1000, %land.lhs.true179 ], [ 1000, %if.then174 ], [ %div195, %cond.true188 ], [ 1, %cond.false182 ], !dbg !3561
  %add201 = add nsw i32 %freq_calls.0, %cond200, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %add201, metadata !3464, metadata !DIExpression()), !dbg !3474
  br label %if.end202, !dbg !3563

if.end202:                                        ; preds = %if.then172, %cond.end199
  %num_calls.1 = phi i32 [ %num_calls.0, %if.then172 ], [ %inc175, %cond.end199 ], !dbg !3474
  %freq_calls.1 = phi i32 [ %freq_calls.0, %if.then172 ], [ %add201, %cond.end199 ], !dbg !3474
  call void @llvm.dbg.value(metadata i32 %freq_calls.1, metadata !3464, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %num_calls.1, metadata !3463, metadata !DIExpression()), !dbg !3474
  %37 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3564
  %call203 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3564
  %idxprom204 = zext i32 %call203 to i64, !dbg !3564
  %calls_crossed206 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %37, i64 %idxprom204, i32 3, !dbg !3564
  %38 = load i32, i32* %calls_crossed206, align 4, !dbg !3564
  %cmp207 = icmp eq i32 %38, 0, !dbg !3566
  br i1 %cmp207, label %cleanup230, label %if.end210, !dbg !3567

if.end210:                                        ; preds = %if.end202
  %call211 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dst) #7, !dbg !3568
  %idxprom212 = zext i32 %call211 to i64, !dbg !3570
  %arrayidx213 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %idxprom212, !dbg !3570
  %39 = load i8, i8* %arrayidx213, align 1, !dbg !3570
  %tobool215 = icmp eq i8 %39, 0, !dbg !3570
  br i1 %tobool215, label %lor.lhs.false216, label %cleanup230, !dbg !3571

lor.lhs.false216:                                 ; preds = %if.end210
  %call217 = tail call i32 @find_reg_fusage(%struct.rtx_def* nonnull %p.0, i32 25, %struct.rtx_def* %dst) #6, !dbg !3572
  %tobool218 = icmp eq i32 %call217, 0, !dbg !3572
  br i1 %tobool218, label %if.end229, label %cleanup230, !dbg !3573

if.else:                                          ; preds = %if.end167
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx163, align 8, !dbg !3574
  %call225 = tail call i32 @reg_set_p(%struct.rtx_def* %src, %struct.rtx_def* %40) #6, !dbg !3576
  %tobool226 = icmp eq i32 %call225, 0, !dbg !3576
  br i1 %tobool226, label %if.end229, label %cleanup230, !dbg !3577

if.end229:                                        ; preds = %lor.lhs.false216, %if.else
  %num_calls.2 = phi i32 [ %num_calls.1, %lor.lhs.false216 ], [ %num_calls.0, %if.else ], !dbg !3489
  %freq_calls.2 = phi i32 [ %freq_calls.1, %lor.lhs.false216 ], [ %freq_calls.0, %if.else ], !dbg !3490
  call void @llvm.dbg.value(metadata i32 %freq_calls.2, metadata !3464, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %num_calls.2, metadata !3463, metadata !DIExpression()), !dbg !3474
  br label %cleanup230, !dbg !3578

cleanup230:                                       ; preds = %lor.lhs.false216, %if.end210, %if.else, %if.end159, %if.end18, %if.end202, %lor.lhs.false13, %cleanup, %if.end229
  %dst_death.2 = phi %struct.rtx_def* [ %spec.select, %cleanup ], [ %spec.select, %if.end229 ], [ %dst_death.0, %lor.lhs.false13 ], [ %dst_death.0, %if.end18 ], [ %spec.select, %if.end159 ], [ %spec.select, %if.end202 ], [ %spec.select, %lor.lhs.false216 ], [ %spec.select, %if.end210 ], [ %spec.select, %if.else ], !dbg !3474
  %length.2 = phi i32 [ %length.1, %cleanup ], [ %length.1, %if.end229 ], [ %length.0, %lor.lhs.false13 ], [ %length.0, %if.end18 ], [ %length.1, %if.end159 ], [ %length.1, %if.end202 ], [ %length.1, %lor.lhs.false216 ], [ %length.1, %if.end210 ], [ %length.1, %if.else ], !dbg !3488
  %num_calls.3 = phi i32 [ %num_calls.0, %cleanup ], [ %num_calls.2, %if.end229 ], [ %num_calls.0, %lor.lhs.false13 ], [ %num_calls.0, %if.end18 ], [ %num_calls.0, %if.end159 ], [ %num_calls.1, %if.end202 ], [ %num_calls.1, %lor.lhs.false216 ], [ %num_calls.1, %if.end210 ], [ %num_calls.0, %if.else ], !dbg !3489
  %freq_calls.3 = phi i32 [ %freq_calls.0, %cleanup ], [ %freq_calls.2, %if.end229 ], [ %freq_calls.0, %lor.lhs.false13 ], [ %freq_calls.0, %if.end18 ], [ %freq_calls.0, %if.end159 ], [ %freq_calls.1, %if.end202 ], [ %freq_calls.1, %lor.lhs.false216 ], [ %freq_calls.1, %if.end210 ], [ %freq_calls.0, %if.else ], !dbg !3490
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end229 ], [ 4, %lor.lhs.false13 ], [ 2, %if.end18 ], [ 2, %if.end159 ], [ 2, %if.end202 ], [ 2, %lor.lhs.false216 ], [ 2, %if.end210 ], [ 2, %if.else ]
  call void @llvm.dbg.value(metadata i32 %freq_calls.3, metadata !3464, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %num_calls.3, metadata !3463, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %length.2, metadata !3462, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dst_death.2, metadata !3461, metadata !DIExpression()), !dbg !3474
  switch i32 %cleanup.dest.slot.1, label %cleanup237.loopexit [
    i32 0, label %for.inc
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup230, %cleanup230
  br label %for.cond, !dbg !3579, !llvm.loop !3580

for.end:                                          ; preds = %for.cond, %cleanup230
  br label %cleanup237, !dbg !3582

cleanup237.loopexit:                              ; preds = %cleanup230
  br label %cleanup237, !dbg !3583

cleanup237:                                       ; preds = %cleanup237.loopexit, %entry, %for.end
  %retval.4 = phi i32 [ 0, %for.end ], [ 0, %entry ], [ 1, %cleanup237.loopexit ]
  ret i32 %retval.4, !dbg !3583
}

declare dso_local i32 @reg_preferred_class(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @regclass_compatible_p(i32 %class0, i32 %class1) unnamed_addr #5 !dbg !3584 {
entry:
  call void @llvm.dbg.value(metadata i32 %class0, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i32 %class1, metadata !3589, metadata !DIExpression()), !dbg !3590
  %cmp = icmp eq i32 %class0, %class1, !dbg !3591
  br i1 %cmp, label %lor.end41, label %lor.lhs.false, !dbg !3592

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @reg_class_subset_p(i32 %class0, i32 %class1) #6, !dbg !3593
  %tobool = icmp eq i32 %call, 0, !dbg !3593
  %0 = add i32 %class0, -1, !dbg !3594
  %1 = icmp ult i32 %0, 4, !dbg !3594
  %2 = or i1 %1, %tobool, !dbg !3594
  %3 = or i32 %class0, 2, !dbg !3594
  %4 = icmp eq i32 %3, 7, !dbg !3594
  %5 = or i1 %4, %2, !dbg !3594
  %cmp13 = icmp eq i32 %class0, 6, !dbg !3595
  %or.cond6 = or i1 %5, %cmp13, !dbg !3594
  %cmp15 = icmp eq i32 %class0, 17, !dbg !3595
  %or.cond7 = or i1 %or.cond6, %cmp15, !dbg !3594
  %6 = or i32 %class0, 1, !dbg !3594
  %7 = icmp eq i32 %6, 15, !dbg !3594
  %8 = or i1 %7, %or.cond7, !dbg !3594
  br i1 %8, label %lor.rhs, label %lor.end41, !dbg !3594

lor.rhs:                                          ; preds = %lor.lhs.false
  %call20 = tail call i32 @reg_class_subset_p(i32 %class1, i32 %class0) #6, !dbg !3596
  %tobool21 = icmp eq i32 %call20, 0, !dbg !3596
  br i1 %tobool21, label %lor.end41, label %land.rhs, !dbg !3597

land.rhs:                                         ; preds = %lor.rhs
  switch i32 %class1, label %lor.rhs39 [
    i32 1, label %lor.end
    i32 2, label %lor.end
    i32 3, label %lor.end
    i32 4, label %lor.end
    i32 7, label %lor.end
    i32 5, label %lor.end
    i32 6, label %lor.end
    i32 17, label %lor.end
    i32 14, label %lor.end
    i32 15, label %lor.end
  ], !dbg !3598

lor.rhs39:                                        ; preds = %land.rhs
  br label %lor.end, !dbg !3598

lor.end:                                          ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %lor.rhs39
  %9 = phi i32 [ 0, %land.rhs ], [ 1, %lor.rhs39 ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ]
  br label %lor.end41

lor.end41:                                        ; preds = %lor.rhs, %lor.end, %lor.lhs.false, %entry
  %10 = phi i32 [ 1, %entry ], [ 1, %lor.lhs.false ], [ 0, %lor.rhs ], [ %9, %lor.end ]
  ret i32 %10, !dbg !3599
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @reg_is_remote_constant_p(%struct.rtx_def* %reg, %struct.rtx_def* %insn) unnamed_addr #5 !dbg !3600 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3604, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3605, metadata !DIExpression()), !dbg !3617
  %0 = load %struct.basic_block_def**, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !3618
  %tobool = icmp eq %struct.basic_block_def** %0, null, !dbg !3618
  br i1 %tobool, label %if.then, label %if.end106, !dbg !3619

if.then:                                          ; preds = %entry
  %call = tail call i32 @max_reg_num() #6, !dbg !3620
  call void @llvm.dbg.value(metadata i32 %call, metadata !3608, metadata !DIExpression()), !dbg !3617
  store i32 %call, i32* @max_reg_computed, align 4, !dbg !3621
  %conv = sext i32 %call to i64, !dbg !3622
  %call1 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3622
  store i8* %call1, i8** bitcast (%struct.basic_block_def*** @reg_set_in_bb to i8**), align 8, !dbg !3623
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3624
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3624
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3624
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3624
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3624
  br label %for.cond, !dbg !3624

for.cond:                                         ; preds = %for.inc103, %if.then
  %4 = phi %struct.control_flow_graph* [ %2, %if.then ], [ %.pre1, %for.inc103 ], !dbg !3625
  %.pn = phi %struct.basic_block_def* [ %3, %if.then ], [ %bb.0, %for.inc103 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3626
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3626
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3606, metadata !DIExpression()), !dbg !3617
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3625
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3625
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %5, !dbg !3625
  br i1 %cmp, label %if.end106.loopexit, label %for.body, !dbg !3624

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3627
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3627
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3627
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !3627
  br label %for.cond5, !dbg !3627

for.cond5:                                        ; preds = %cleanup, %for.body
  %p.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx102, %cleanup ]
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !3628
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !3607, metadata !DIExpression()), !dbg !3617
  %tobool6 = icmp eq %struct.rtx_def* %p.0, null, !dbg !3629
  br i1 %tobool6, label %for.inc103, label %land.rhs, !dbg !3629

land.rhs:                                         ; preds = %for.cond5
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3629
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !3629
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3629
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3629
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3629
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3629
  %cmp9 = icmp eq %struct.rtx_def* %p.0, %10, !dbg !3629
  br i1 %cmp9, label %for.inc103, label %for.body11, !dbg !3627

for.body11:                                       ; preds = %land.rhs
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 0, !dbg !3630
  %bf.load = load i32, i32* %11, align 8, !dbg !3630
  %bf.clear = and i32 %bf.load, 65535, !dbg !3630
  %cmp12 = icmp eq i32 %bf.clear, 8, !dbg !3630
  br i1 %cmp12, label %if.end, label %lor.lhs.false, !dbg !3630

lor.lhs.false:                                    ; preds = %for.body11
  %cmp16 = icmp eq i32 %bf.clear, 7, !dbg !3630
  br i1 %cmp16, label %if.end, label %lor.lhs.false18, !dbg !3630

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %cmp21 = icmp eq i32 %bf.clear, 9, !dbg !3630
  br i1 %cmp21, label %if.end, label %lor.lhs.false23, !dbg !3630

lor.lhs.false23:                                  ; preds = %lor.lhs.false18
  %cmp26 = icmp eq i32 %bf.clear, 10, !dbg !3630
  br i1 %cmp26, label %if.end, label %cleanup, !dbg !3632

if.end:                                           ; preds = %lor.lhs.false23, %lor.lhs.false18, %lor.lhs.false, %for.body11
  br i1 %cmp12, label %cond.true, label %lor.lhs.false33, !dbg !3633

lor.lhs.false33:                                  ; preds = %if.end
  %cmp36 = icmp eq i32 %bf.clear, 7, !dbg !3633
  br i1 %cmp36, label %cond.true, label %lor.lhs.false38, !dbg !3633

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  %cmp41 = icmp eq i32 %bf.clear, 9, !dbg !3633
  br i1 %cmp41, label %cond.true, label %lor.lhs.false43, !dbg !3633

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %cmp46 = icmp eq i32 %bf.clear, 10, !dbg !3633
  br i1 %cmp46, label %cond.true, label %cond.end67, !dbg !3633

cond.true:                                        ; preds = %lor.lhs.false43, %lor.lhs.false38, %lor.lhs.false33, %if.end
  %u48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, !dbg !3633
  %12 = getelementptr inbounds %union.u, %union.u* %u48, i64 1, i32 0, i32 0, i64 0, !dbg !3633
  %13 = bitcast %union.rtunion_def* %12 to i32**, !dbg !3633
  %14 = load i32*, i32** %13, align 8, !dbg !3633
  %bf.load52 = load i32, i32* %14, align 8, !dbg !3633
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !3633
  %cmp54 = icmp eq i32 %bf.clear53, 23, !dbg !3633
  %15 = bitcast i32* %14 to %struct.rtx_def*, !dbg !3633
  br i1 %cmp54, label %cond.end67, label %cond.false, !dbg !3633

cond.false:                                       ; preds = %cond.true
  %call65 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %p.0, %struct.rtx_def* %15) #6, !dbg !3633
  br label %cond.end67, !dbg !3633

cond.end67:                                       ; preds = %lor.lhs.false43, %cond.false, %cond.true
  %cond68 = phi %struct.rtx_def* [ %call65, %cond.false ], [ %15, %cond.true ], [ null, %lor.lhs.false43 ], !dbg !3633
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond68, metadata !3609, metadata !DIExpression()), !dbg !3634
  %cmp69 = icmp eq %struct.rtx_def* %cond68, null, !dbg !3635
  br i1 %cmp69, label %cleanup, label %land.lhs.true, !dbg !3637

land.lhs.true:                                    ; preds = %cond.end67
  %arrayidx73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond68, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3638
  %16 = bitcast %union.rtunion_def* %arrayidx73 to i32**, !dbg !3638
  %17 = load i32*, i32** %16, align 8, !dbg !3638
  %bf.load75 = load i32, i32* %17, align 8, !dbg !3638
  %bf.clear76 = and i32 %bf.load75, 65535, !dbg !3638
  %cmp77 = icmp eq i32 %bf.clear76, 37, !dbg !3638
  br i1 %cmp77, label %land.lhs.true79, label %cleanup, !dbg !3639

land.lhs.true79:                                  ; preds = %land.lhs.true
  %18 = bitcast i32* %17 to %struct.rtx_def*, !dbg !3639
  %rt_rtx83 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**, !dbg !3640
  %call84 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %18) #7, !dbg !3640
  %call85 = tail call fastcc i32 @REG_N_SETS(i32 %call84) #7, !dbg !3641
  %cmp86 = icmp eq i32 %call85, 1, !dbg !3642
  br i1 %cmp86, label %land.lhs.true88, label %cleanup, !dbg !3643

land.lhs.true88:                                  ; preds = %land.lhs.true79
  %call89 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %p.0, i32 4, %struct.rtx_def* null) #6, !dbg !3644
  %tobool90 = icmp eq %struct.rtx_def* %call89, null, !dbg !3644
  br i1 %tobool90, label %cleanup, label %if.then91, !dbg !3645

if.then91:                                        ; preds = %land.lhs.true88
  %19 = load %struct.basic_block_def**, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !3646
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx83, align 8, !dbg !3647
  %call96 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %20) #7, !dbg !3647
  %idxprom = zext i32 %call96 to i64, !dbg !3646
  %arrayidx97 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %19, i64 %idxprom, !dbg !3646
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %arrayidx97, align 8, !dbg !3648
  br label %cleanup, !dbg !3646

cleanup:                                          ; preds = %land.lhs.true88, %cond.end67, %land.lhs.true, %land.lhs.true79, %if.then91, %lor.lhs.false23
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3629
  %rt_rtx102 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !3629
  br label %for.cond5, !dbg !3629, !llvm.loop !3649

for.inc103:                                       ; preds = %land.rhs, %for.cond5
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3625
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3651
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !3625
  br label %for.cond, !dbg !3625, !llvm.loop !3652

if.end106.loopexit:                               ; preds = %for.cond
  br label %if.end106, !dbg !3654

if.end106:                                        ; preds = %if.end106.loopexit, %entry
  %call107 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3654
  %22 = load i32, i32* @max_reg_computed, align 4, !dbg !3654
  %cmp108 = icmp ult i32 %call107, %22, !dbg !3654
  br i1 %cmp108, label %cond.end112, label %cond.true110, !dbg !3654

cond.true110:                                     ; preds = %if.end106
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 721, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3654
  br label %cond.end112, !dbg !3654

cond.end112:                                      ; preds = %if.end106, %cond.true110
  %23 = load %struct.basic_block_def**, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !3655
  %call114 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3657
  %idxprom115 = zext i32 %call114 to i64, !dbg !3655
  %arrayidx116 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %23, i64 %idxprom115, !dbg !3655
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx116, align 8, !dbg !3655
  %cmp117 = icmp eq %struct.basic_block_def* %24, null, !dbg !3658
  br i1 %cmp117, label %cleanup130, label %if.end120, !dbg !3659

if.end120:                                        ; preds = %cond.end112
  %25 = load %struct.basic_block_def**, %struct.basic_block_def*** @reg_set_in_bb, align 8, !dbg !3660
  %call121 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3661
  %idxprom122 = zext i32 %call121 to i64, !dbg !3660
  %arrayidx123 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %25, i64 %idxprom122, !dbg !3660
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx123, align 8, !dbg !3660
  %arrayidx126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3662
  %rt_bb = bitcast %struct.object_block** %arrayidx126 to %struct.basic_block_def**, !dbg !3662
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3662
  %cmp127 = icmp ne %struct.basic_block_def* %26, %27, !dbg !3663
  %conv129 = zext i1 %cmp127 to i8, !dbg !3664
  br label %cleanup130, !dbg !3665

cleanup130:                                       ; preds = %cond.end112, %if.end120
  %retval.0 = phi i8 [ %conv129, %if.end120 ], [ 0, %cond.end112 ], !dbg !3617
  ret i8 %retval.0, !dbg !3666
}

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @num_changes_pending() local_unnamed_addr #2

declare dso_local void @cancel_changes(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_src_to_dest(%struct.rtx_def* %insn, %struct.rtx_def* %src, %struct.rtx_def* %dest) unnamed_addr #5 !dbg !3667 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3669, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !3670, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3671, metadata !DIExpression()), !dbg !3685
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src, i64 0, i32 0, !dbg !3686
  %bf.load = load i32, i32* %0, align 8, !dbg !3686
  %bf.clear = and i32 %bf.load, 65535, !dbg !3686
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3686
  br i1 %cmp, label %land.lhs.true, label %cleanup.cont128, !dbg !3687

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3688
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3688
  %idxprom = zext i32 %call to i64, !dbg !3688
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %1, i64 %idxprom, i32 2, !dbg !3688
  %2 = load i32, i32* %live_length, align 4, !dbg !3688
  %cmp1 = icmp sgt i32 %2, 0, !dbg !3689
  br i1 %cmp1, label %land.lhs.true2, label %cleanup.cont128, !dbg !3690

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3691
  %bf.load3 = load i32, i32* %3, align 8, !dbg !3691
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !3691
  %cmp5 = icmp eq i32 %bf.clear4, 37, !dbg !3691
  br i1 %cmp5, label %land.lhs.true6, label %cleanup.cont128, !dbg !3692

land.lhs.true6:                                   ; preds = %land.lhs.true2
  %4 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3693
  %call7 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3693
  %idxprom8 = zext i32 %call7 to i64, !dbg !3693
  %live_length10 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %4, i64 %idxprom8, i32 2, !dbg !3693
  %5 = load i32, i32* %live_length10, align 4, !dbg !3693
  %cmp11 = icmp sgt i32 %5, 0, !dbg !3694
  br i1 %cmp11, label %land.lhs.true12, label %cleanup.cont128, !dbg !3695

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3696
  %bf.load13 = load i32, i32* %6, align 8, !dbg !3696
  %bf.clear14 = and i32 %bf.load13, 65535, !dbg !3696
  %cmp15 = icmp eq i32 %bf.clear14, 8, !dbg !3696
  br i1 %cmp15, label %cond.true, label %lor.lhs.false, !dbg !3696

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %cmp18 = icmp eq i32 %bf.clear14, 7, !dbg !3696
  br i1 %cmp18, label %cond.true, label %lor.lhs.false19, !dbg !3696

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %cmp22 = icmp eq i32 %bf.clear14, 9, !dbg !3696
  br i1 %cmp22, label %cond.true, label %lor.lhs.false23, !dbg !3696

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %cmp26 = icmp eq i32 %bf.clear14, 10, !dbg !3696
  br i1 %cmp26, label %cond.true, label %cond.end42, !dbg !3696

cond.true:                                        ; preds = %lor.lhs.false23, %lor.lhs.false19, %lor.lhs.false, %land.lhs.true12
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3696
  %7 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3696
  %8 = bitcast %union.rtunion_def* %7 to i32**, !dbg !3696
  %9 = load i32*, i32** %8, align 8, !dbg !3696
  %bf.load28 = load i32, i32* %9, align 8, !dbg !3696
  %bf.clear29 = and i32 %bf.load28, 65535, !dbg !3696
  %cmp30 = icmp eq i32 %bf.clear29, 23, !dbg !3696
  %10 = bitcast i32* %9 to %struct.rtx_def*, !dbg !3696
  br i1 %cmp30, label %cond.end42, label %cond.false, !dbg !3696

cond.false:                                       ; preds = %cond.true
  %call40 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %10) #6, !dbg !3696
  br label %cond.end42, !dbg !3696

cond.end42:                                       ; preds = %lor.lhs.false23, %cond.false, %cond.true
  %cond43 = phi %struct.rtx_def* [ %call40, %cond.false ], [ %10, %cond.true ], [ null, %lor.lhs.false23 ], !dbg !3696
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond43, metadata !3675, metadata !DIExpression()), !dbg !3685
  %cmp44 = icmp eq %struct.rtx_def* %cond43, null, !dbg !3697
  br i1 %cmp44, label %cleanup.cont128, label %land.lhs.true45, !dbg !3698

land.lhs.true45:                                  ; preds = %cond.end42
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond43, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3699
  %rt_rtx49 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !3699
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx49, align 8, !dbg !3699
  %call50 = tail call i32 @reg_mentioned_p(%struct.rtx_def* %dest, %struct.rtx_def* %12) #6, !dbg !3700
  %tobool = icmp eq i32 %call50, 0, !dbg !3700
  br i1 %tobool, label %land.lhs.true51, label %cleanup.cont128, !dbg !3701

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %bf.load52 = load i32, i32* %0, align 8, !dbg !3702
  %bf.load54 = load i32, i32* %3, align 8, !dbg !3703
  %bf.lshr2 = xor i32 %bf.load52, %bf.load54, !dbg !3704
  %13 = and i32 %bf.lshr2, 16711680, !dbg !3704
  %cmp57 = icmp eq i32 %13, 0, !dbg !3704
  br i1 %cmp57, label %if.then, label %cleanup.cont128, !dbg !3705

if.then:                                          ; preds = %land.lhs.true51
  %14 = load i32, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 1, i32 0), align 8, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %14, metadata !3682, metadata !DIExpression()), !dbg !3707
  tail call void @start_sequence() #6, !dbg !3708
  %call58 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %dest, %struct.rtx_def* %src) #6, !dbg !3709
  %call59 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call59, metadata !3672, metadata !DIExpression()), !dbg !3685
  tail call void @end_sequence() #6, !dbg !3711
  %15 = load i32, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 1, i32 0), align 8, !dbg !3712
  %cmp60 = icmp eq i32 %14, %15, !dbg !3714
  br i1 %cmp60, label %lor.lhs.false61, label %if.then64, !dbg !3715

lor.lhs.false61:                                  ; preds = %if.then
  %call62 = tail call i32 @validate_replace_rtx(%struct.rtx_def* %src, %struct.rtx_def* %dest, %struct.rtx_def* %insn) #6, !dbg !3716
  %tobool63 = icmp eq i32 %call62, 0, !dbg !3716
  br i1 %tobool63, label %if.then64, label %if.end, !dbg !3717

if.then64:                                        ; preds = %lor.lhs.false61, %if.then
  store i32 %14, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 1, i32 0), align 8, !dbg !3718
  br label %cleanup, !dbg !3720

if.end:                                           ; preds = %lor.lhs.false61
  %call65 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call59, %struct.rtx_def* %insn) #6, !dbg !3721
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3722
  %rt_rtx69 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !3722
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx69, align 8, !dbg !3722
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !3676, metadata !DIExpression()), !dbg !3685
  %u70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, !dbg !3723
  %18 = getelementptr inbounds %union.u, %union.u* %u70, i64 1, i32 0, i32 0, i64 2, !dbg !3723
  %rt_rtx73 = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !3723
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx73, metadata !3679, metadata !DIExpression()), !dbg !3685
  %u74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3724
  %19 = getelementptr inbounds %union.u, %union.u* %u74, i64 1, i32 0, i32 0, i64 2, !dbg !3724
  %rt_rtx77 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !3724
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx77, metadata !3677, metadata !DIExpression()), !dbg !3685
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx77, align 8, !dbg !3725
  call void @llvm.dbg.value(metadata %struct.rtx_def* %20, metadata !3673, metadata !DIExpression()), !dbg !3685
  br label %for.cond, !dbg !3727

for.cond:                                         ; preds = %for.inc, %if.end
  %link.0 = phi %struct.rtx_def* [ %20, %if.end ], [ %22, %for.inc ], !dbg !3728
  %p_insn_notes.0 = phi %struct.rtx_def** [ %rt_rtx77, %if.end ], [ %p_insn_notes.1, %for.inc ], !dbg !3729
  %p_move_notes.0 = phi %struct.rtx_def** [ %rt_rtx73, %if.end ], [ %p_move_notes.1, %for.inc ], !dbg !3707
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_move_notes.0, metadata !3679, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_insn_notes.0, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !3673, metadata !DIExpression()), !dbg !3685
  %cmp82 = icmp eq %struct.rtx_def* %link.0, null, !dbg !3730
  br i1 %cmp82, label %for.end, label %for.body, !dbg !3732

for.body:                                         ; preds = %for.cond
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3733
  %rt_rtx86 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !3733
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx86, align 8, !dbg !3733
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !3674, metadata !DIExpression()), !dbg !3685
  %arrayidx89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3735
  %rt_rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**, !dbg !3735
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx90, align 8, !dbg !3735
  %cmp91 = icmp eq %struct.rtx_def* %23, %src, !dbg !3737
  br i1 %cmp91, label %if.then92, label %if.else, !dbg !3738

if.then92:                                        ; preds = %for.body
  store %struct.rtx_def* %link.0, %struct.rtx_def** %p_move_notes.0, align 8, !dbg !3739
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx86, metadata !3679, metadata !DIExpression()), !dbg !3685
  br label %for.inc, !dbg !3741

if.else:                                          ; preds = %for.body
  store %struct.rtx_def* %link.0, %struct.rtx_def** %p_insn_notes.0, align 8, !dbg !3742
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx86, metadata !3677, metadata !DIExpression()), !dbg !3685
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %if.else
  %p_insn_notes.1 = phi %struct.rtx_def** [ %p_insn_notes.0, %if.then92 ], [ %rt_rtx86, %if.else ], !dbg !3707
  %p_move_notes.1 = phi %struct.rtx_def** [ %rt_rtx86, %if.then92 ], [ %p_move_notes.0, %if.else ], !dbg !3707
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_move_notes.1, metadata !3679, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_insn_notes.1, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !3673, metadata !DIExpression()), !dbg !3685
  br label %for.cond, !dbg !3744, !llvm.loop !3745

for.end:                                          ; preds = %for.cond
  %p_insn_notes.0.lcssa = phi %struct.rtx_def** [ %p_insn_notes.0, %for.cond ], !dbg !3729
  %p_move_notes.0.lcssa = phi %struct.rtx_def** [ %p_move_notes.0, %for.cond ], !dbg !3707
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_insn_notes.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_move_notes.0.lcssa, metadata !3679, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_insn_notes.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_move_notes.0.lcssa, metadata !3679, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_insn_notes.0.lcssa, metadata !3677, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def** %p_move_notes.0.lcssa, metadata !3679, metadata !DIExpression()), !dbg !3685
  store %struct.rtx_def* null, %struct.rtx_def** %p_move_notes.0.lcssa, align 8, !dbg !3747
  store %struct.rtx_def* null, %struct.rtx_def** %p_insn_notes.0.lcssa, align 8, !dbg !3748
  %call102 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %call102, metadata !3681, metadata !DIExpression()), !dbg !3685
  %24 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3750
  %idxprom103 = sext i32 %call102 to i64, !dbg !3750
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %24, i64 %idxprom103, i32 0, !dbg !3750
  %25 = load i32, i32* %sets, align 4, !dbg !3750
  %add = add nsw i32 %25, 1, !dbg !3750
  store i32 %add, i32* %sets, align 4, !dbg !3750
  %26 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3751
  %live_length107 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %26, i64 %idxprom103, i32 2, !dbg !3751
  %27 = load i32, i32* %live_length107, align 4, !dbg !3752
  %inc = add nsw i32 %27, 1, !dbg !3752
  store i32 %inc, i32* %live_length107, align 4, !dbg !3752
  %call108 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %src) #7, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %call108, metadata !3680, metadata !DIExpression()), !dbg !3685
  %call109 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %17, i32 1, %struct.rtx_def* %src) #6, !dbg !3754
  %tobool110 = icmp eq %struct.rtx_def* %call109, null, !dbg !3754
  br i1 %tobool110, label %if.then111, label %cleanup, !dbg !3756

if.then111:                                       ; preds = %for.end
  %28 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3757
  %idxprom112 = sext i32 %call108 to i64, !dbg !3757
  %live_length114 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %28, i64 %idxprom112, i32 2, !dbg !3757
  %29 = load i32, i32* %live_length114, align 4, !dbg !3758
  %inc115 = add nsw i32 %29, 1, !dbg !3758
  store i32 %inc115, i32* %live_length114, align 4, !dbg !3758
  br label %cleanup, !dbg !3757

cleanup:                                          ; preds = %for.end, %if.then111, %if.then64
  ret void

cleanup.cont128:                                  ; preds = %land.lhs.true45, %cond.end42, %land.lhs.true51, %land.lhs.true6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !3759
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #2

declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #2

declare dso_local i32 @regclass_for_constraint(i32) local_unnamed_addr #2

declare dso_local i32 @lookup_constraint(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insn_constraint_len(i8 signext %fc, i8* %str) unnamed_addr #0 !dbg !3760 {
entry:
  call void @llvm.dbg.value(metadata i8 %fc, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %str, metadata !3766, metadata !DIExpression()), !dbg !3767
  %cond = icmp eq i8 %fc, 89, !dbg !3768
  %retval.0 = select i1 %cond, i64 2, i64 1, !dbg !3768
  ret i64 %retval.0, !dbg !3769
}

declare dso_local %struct.rtx_def* @gen_add3_insn(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @remove_death(i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @reg_class_subset_p(i32, i32) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @start_sequence() local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local void @end_sequence() local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1959, !1960, !1961}
!llvm.ident = !{!1962}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_regmove", scope: !2, file: !3, line: 1357, type: !1933, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !745, globals: !1926, nameTableKind: None)
!3 = !DIFile(filename: "regmove.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567, !710, !715}
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
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !336, line: 474, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !341, line: 280, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!343 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !341, line: 1817, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !341, line: 1805, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !341, line: 39, baseType: !7, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!375 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!450 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!451 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!452 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!453 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!454 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!455 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!456 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!457 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!458 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!459 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!460 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!461 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!462 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!463 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!464 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!465 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!466 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!467 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!468 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!469 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!470 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!471 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!472 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!473 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!474 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!475 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!476 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!477 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!478 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!479 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!480 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!481 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!482 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!483 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!484 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!485 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!486 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!487 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!488 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!490 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!491 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!492 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!493 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!494 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!495 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!496 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!497 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!498 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!499 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!500 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!501 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!502 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!503 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!504 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!505 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!506 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!507 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!508 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!509 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!510 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!511 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!512 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!513 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!514 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!515 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!516 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!517 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!518 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!519 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!520 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!521 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!522 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!523 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!524 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!525 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!526 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!527 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!539 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!540 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!541 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!542 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!543 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!544 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!557 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!560 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!561 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!562 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!563 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!564 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!565 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!566 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !568, line: 45, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!570 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!606 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!607 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!608 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!609 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!610 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!611 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!612 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!613 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!614 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!615 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!616 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!617 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!618 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!619 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!620 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!621 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!622 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!623 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!624 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!625 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!626 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!627 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!628 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!629 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!630 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!631 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!632 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!633 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!634 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!635 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!636 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!637 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!638 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!639 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!640 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!641 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!642 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!643 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!644 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!645 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!646 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!647 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!648 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!649 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!650 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!651 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!652 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!653 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!654 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!655 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!656 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!657 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!658 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!659 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!660 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!661 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!662 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!663 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!664 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!665 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!666 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!667 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!668 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!669 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!670 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!671 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!672 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!673 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!674 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!675 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!676 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!677 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!678 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!679 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!680 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!681 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!682 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!683 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!684 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!685 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!686 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!687 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!688 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!689 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!690 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!691 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!692 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!693 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!694 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!695 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!696 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!697 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!698 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!700 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!701 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!704 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!705 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!707 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!708 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!709 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "match_use", file: !3, line: 54, baseType: !7, size: 32, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIEnumerator(name: "READ", value: 0, isUnsigned: true)
!713 = !DIEnumerator(name: "WRITE", value: 1, isUnsigned: true)
!714 = !DIEnumerator(name: "READWRITE", value: 2, isUnsigned: true)
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !336, line: 1188, baseType: !7, size: 32, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!717 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!718 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!719 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!720 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!721 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!722 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!723 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!724 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!725 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!726 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!727 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!728 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!729 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!730 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!731 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!732 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!733 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!734 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!735 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!736 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!737 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!738 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!739 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!740 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!741 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!742 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!743 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!744 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!745 = !{!746, !747, !748, !749, !752, !753, !755, !567, !756, !1924, !189, !1925}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!748 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !757, line: 50, baseType: !758)
!757 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !759, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !759, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !759, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !759, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !759, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !759, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !759, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !759, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !759, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !759, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !759, file: !568, line: 321, baseType: !772, size: 320, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !773)
!773 = !{!774, !1859, !1861, !1922, !1923}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !772, file: !568, line: 316, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 64, elements: !791)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !793, !794, !806, !809, !871, !1837, !1838, !1849, !1856}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !777, file: !568, line: 168, baseType: !748, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !777, file: !568, line: 169, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !777, file: !568, line: 170, baseType: !753, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !777, file: !568, line: 171, baseType: !756, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !777, file: !568, line: 172, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !757, line: 53, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !786, file: !568, line: 360, baseType: !748, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !786, file: !568, line: 361, baseType: !790, size: 64, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 64, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 1)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !777, file: !568, line: 173, baseType: !189, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !777, file: !568, line: 174, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !796, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !796, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !796, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !796, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !796, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !796, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !796, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !796, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !777, file: !568, line: 175, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !568, line: 175, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !777, file: !568, line: 176, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !812, line: 75, size: 256, elements: !813)
!812 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!813 = !{!814, !829, !830, !831}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !811, file: !812, line: 76, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !812, line: 68, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !812, line: 63, size: 320, elements: !818)
!818 = !{!819, !821, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !812, line: 64, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !817, file: !812, line: 65, baseType: !820, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !817, file: !812, line: 66, baseType: !7, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !817, file: !812, line: 67, baseType: !824, size: 128, offset: 192)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 128, elements: !827)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !812, line: 29, baseType: !826)
!826 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!827 = !{!828}
!828 = !DISubrange(count: 2)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !811, file: !812, line: 77, baseType: !815, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !811, file: !812, line: 78, baseType: !7, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !811, file: !812, line: 79, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !812, line: 49, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !812, line: 45, size: 832, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !834, file: !812, line: 46, baseType: !820, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !834, file: !812, line: 47, baseType: !810, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !834, file: !812, line: 48, baseType: !839, size: 704, offset: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !840, line: 164, size: 704, elements: !841)
!840 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!841 = !{!842, !844, !854, !855, !856, !857, !858, !859, !863, !867, !868, !869, !870}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !839, file: !840, line: 166, baseType: !843, size: 64)
!843 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !839, file: !840, line: 167, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !840, line: 157, size: 192, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !846, file: !840, line: 159, baseType: !750, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !846, file: !840, line: 160, baseType: !845, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !846, file: !840, line: 161, baseType: !851, size: 32, offset: 128)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 32, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 4)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !839, file: !840, line: 168, baseType: !750, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !839, file: !840, line: 169, baseType: !750, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !839, file: !840, line: 170, baseType: !750, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !839, file: !840, line: 171, baseType: !843, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !839, file: !840, line: 172, baseType: !748, size: 32, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !839, file: !840, line: 176, baseType: !860, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!845, !752, !843}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !839, file: !840, line: 177, baseType: !864, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !752, !845}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !839, file: !840, line: 178, baseType: !752, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !839, file: !840, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !839, file: !840, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !839, file: !840, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !777, file: !568, line: 177, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !757, line: 56, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !875)
!875 = !{!876, !909, !915, !926, !945, !956, !961, !968, !974, !987, !999, !1037, !1042, !1070, !1078, !1079, !1084, !1093, !1099, !1104, !1108, !1112, !1473, !1522, !1528, !1534, !1541, !1567, !1581, !1598, !1610, !1632, !1647, !1819}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !874, file: !341, line: 3372, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !877, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !877, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !877, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !877, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !877, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !877, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !877, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !877, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !877, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !877, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !877, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !877, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !877, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !877, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !877, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !877, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !877, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !877, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !877, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !877, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !877, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !877, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !877, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !877, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !877, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !877, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !877, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !877, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !877, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !877, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !874, file: !341, line: 3373, baseType: !910, size: 192)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !910, file: !341, line: 403, baseType: !877, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !910, file: !341, line: 404, baseType: !872, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !910, file: !341, line: 405, baseType: !872, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !874, file: !341, line: 3374, baseType: !916, size: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !916, file: !341, line: 1385, baseType: !910, size: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !916, file: !341, line: 1386, baseType: !920, size: 128, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !921, line: 58, baseType: !922)
!921 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 54, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !922, file: !921, line: 56, baseType: !826, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !922, file: !921, line: 57, baseType: !843, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !874, file: !341, line: 3375, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !341, line: 1398, baseType: !910, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !927, file: !341, line: 1399, baseType: !931, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !933, line: 52, size: 256, elements: !934)
!933 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!934 = !{!935, !936, !937, !938, !939, !940, !941}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !932, file: !933, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !932, file: !933, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !932, file: !933, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !932, file: !933, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !932, file: !933, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !932, file: !933, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !932, file: !933, line: 62, baseType: !942, size: 192, offset: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 192, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 3)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !874, file: !341, line: 3376, baseType: !946, size: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !946, file: !341, line: 1409, baseType: !910, size: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !946, file: !341, line: 1410, baseType: !950, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !952, line: 27, size: 192, elements: !953)
!952 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !951, file: !952, line: 29, baseType: !920, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !951, file: !952, line: 30, baseType: !189, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !874, file: !341, line: 3377, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !957, file: !341, line: 1438, baseType: !910, size: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !957, file: !341, line: 1439, baseType: !872, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !874, file: !341, line: 3378, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !341, line: 1419, baseType: !910, size: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !962, file: !341, line: 1420, baseType: !748, size: 32, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !962, file: !341, line: 1421, baseType: !967, size: 8, offset: 224)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 8, elements: !791)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !874, file: !341, line: 3379, baseType: !969, size: 320)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !969, file: !341, line: 1429, baseType: !910, size: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !969, file: !341, line: 1430, baseType: !872, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !969, file: !341, line: 1431, baseType: !872, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !874, file: !341, line: 3380, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !975, file: !341, line: 1461, baseType: !910, size: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !975, file: !341, line: 1462, baseType: !979, size: 128, offset: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !980, line: 31, size: 128, elements: !981)
!980 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!981 = !{!982, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !979, file: !980, line: 32, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !980, line: 33, baseType: !7, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !979, file: !980, line: 34, baseType: !7, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !874, file: !341, line: 3381, baseType: !988, size: 384)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !989)
!989 = !{!990, !991, !996, !997, !998}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !988, file: !341, line: 2508, baseType: !910, size: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !988, file: !341, line: 2509, baseType: !992, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !993, line: 58, baseType: !994)
!993 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !995, line: 44, baseType: !7)
!995 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !988, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !988, file: !341, line: 2511, baseType: !872, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !988, file: !341, line: 2512, baseType: !872, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !874, file: !341, line: 3382, baseType: !1000, size: 896)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1000, file: !341, line: 2653, baseType: !988, size: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !341, line: 2654, baseType: !872, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1000, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1000, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1000, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1000, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1000, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1000, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1000, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1000, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1000, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1000, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1000, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1000, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1000, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1000, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1000, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1000, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1000, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1000, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1000, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1000, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1000, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1000, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1000, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1000, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1000, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1000, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1000, file: !341, line: 2705, baseType: !872, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1000, file: !341, line: 2706, baseType: !872, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1000, file: !341, line: 2707, baseType: !872, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1000, file: !341, line: 2708, baseType: !872, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1000, file: !341, line: 2711, baseType: !1035, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !874, file: !341, line: 3383, baseType: !1038, size: 960)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1038, file: !341, line: 2757, baseType: !1000, size: 896)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1038, file: !341, line: 2758, baseType: !756, size: 64, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !874, file: !341, line: 3384, baseType: !1043, size: 1472)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1044)
!1044 = !{!1045, !1066, !1067, !1068, !1069}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1043, file: !341, line: 3115, baseType: !1046, size: 1216)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1046, file: !341, line: 2985, baseType: !1038, size: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1046, file: !341, line: 2986, baseType: !872, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1046, file: !341, line: 2987, baseType: !872, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1046, file: !341, line: 2988, baseType: !872, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1046, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1046, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1046, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1046, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1046, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1046, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1046, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1046, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1046, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1046, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1046, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1046, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1046, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1046, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1043, file: !341, line: 3117, baseType: !872, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1043, file: !341, line: 3119, baseType: !872, size: 64, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1043, file: !341, line: 3121, baseType: !872, size: 64, offset: 1344)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1043, file: !341, line: 3123, baseType: !872, size: 64, offset: 1408)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !874, file: !341, line: 3385, baseType: !1071, size: 1088)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !341, line: 2875, baseType: !1038, size: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1071, file: !341, line: 2876, baseType: !756, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1071, file: !341, line: 2877, baseType: !1076, size: 64, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !874, file: !341, line: 3386, baseType: !1046, size: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !874, file: !341, line: 3387, baseType: !1080, size: 1280)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1080, file: !341, line: 3094, baseType: !1046, size: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1080, file: !341, line: 3095, baseType: !1076, size: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !874, file: !341, line: 3388, baseType: !1085, size: 1216)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !341, line: 2825, baseType: !1000, size: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1085, file: !341, line: 2827, baseType: !872, size: 64, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1085, file: !341, line: 2828, baseType: !872, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1085, file: !341, line: 2829, baseType: !872, size: 64, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1085, file: !341, line: 2830, baseType: !872, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1085, file: !341, line: 2831, baseType: !872, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !874, file: !341, line: 3389, baseType: !1094, size: 1024)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1094, file: !341, line: 2851, baseType: !1038, size: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1094, file: !341, line: 2852, baseType: !748, size: 32, offset: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1094, file: !341, line: 2853, baseType: !748, size: 32, offset: 992)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !874, file: !341, line: 3390, baseType: !1100, size: 1024)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1100, file: !341, line: 2858, baseType: !1038, size: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1100, file: !341, line: 2859, baseType: !1076, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !874, file: !341, line: 3391, baseType: !1105, size: 960)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1105, file: !341, line: 2863, baseType: !1038, size: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !874, file: !341, line: 3392, baseType: !1109, size: 1472)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !341, line: 3305, baseType: !1043, size: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !874, file: !341, line: 3393, baseType: !1113, size: 1792)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1114)
!1114 = !{!1115, !1116, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1113, file: !341, line: 3249, baseType: !1043, size: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1113, file: !341, line: 3251, baseType: !1117, size: 64, offset: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1119, line: 463, size: 1152, elements: !1120)
!1119 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1120 = !{!1121, !1285, !1389, !1390, !1393, !1396, !1397, !1398, !1399, !1400, !1401, !1425, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1118, file: !1119, line: 464, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1124)
!1124 = !{!1125, !1174, !1187, !1201, !1253, !1266}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1123, file: !318, line: 197, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1162, !1171, !1172, !1173}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1128, file: !318, line: 119, baseType: !1127, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1128, file: !318, line: 122, baseType: !1127, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1128, file: !318, line: 123, baseType: !1127, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1128, file: !318, line: 126, baseType: !748, size: 32, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1128, file: !318, line: 165, baseType: !1136, size: 192, offset: 256)
!1136 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1137)
!1137 = !{!1138, !1151, !1157}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1136, file: !318, line: 137, baseType: !1139, size: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1140)
!1140 = !{!1141, !1150}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1139, file: !318, line: 135, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1143, file: !318, line: 96, baseType: !1142, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1143, file: !318, line: 97, baseType: !1142, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1143, file: !318, line: 101, baseType: !872, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1143, file: !318, line: 106, baseType: !872, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1143, file: !318, line: 111, baseType: !872, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1139, file: !318, line: 136, baseType: !1142, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1136, file: !318, line: 151, baseType: !1152, size: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1152, file: !318, line: 141, baseType: !872, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1152, file: !318, line: 145, baseType: !872, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1152, file: !318, line: 150, baseType: !748, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1136, file: !318, line: 164, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1158, file: !318, line: 161, baseType: !872, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1158, file: !318, line: 163, baseType: !992, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1128, file: !318, line: 168, baseType: !1163, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1164, file: !318, line: 70, baseType: !1163, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1164, file: !318, line: 73, baseType: !1127, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1164, file: !318, line: 78, baseType: !872, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1164, file: !318, line: 85, baseType: !756, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1164, file: !318, line: 88, baseType: !748, size: 32, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1128, file: !318, line: 173, baseType: !756, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1128, file: !318, line: 173, baseType: !756, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1128, file: !318, line: 177, baseType: !747, size: 8, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1123, file: !318, line: 200, baseType: !1175, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1177, file: !318, line: 185, baseType: !1180, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1181, file: !318, line: 184, baseType: !7, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1181, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1181, file: !318, line: 184, baseType: !1186, size: 64, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 64, elements: !791)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1123, file: !318, line: 203, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1190, file: !318, line: 189, baseType: !1193, size: 128)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1194, file: !318, line: 188, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1194, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1194, file: !318, line: 188, baseType: !1199, size: 64, offset: 64)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 64, elements: !791)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1163)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1123, file: !318, line: 207, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1203, line: 144, baseType: !1204)
!1203 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1203, line: 100, size: 896, elements: !1206)
!1206 = !{!1207, !1215, !1220, !1225, !1227, !1230, !1231, !1232, !1233, !1234, !1239, !1241, !1242, !1247, !1252}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1205, file: !1203, line: 102, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1203, line: 52, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1203, line: 47, baseType: !7)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1205, file: !1203, line: 105, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1203, line: 59, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!748, !1213, !1213}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1205, file: !1203, line: 108, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1203, line: 63, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !752}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1205, file: !1203, line: 111, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1205, file: !1203, line: 114, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1229, line: 46, baseType: !826)
!1229 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1205, file: !1203, line: 117, baseType: !1228, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1205, file: !1203, line: 120, baseType: !1228, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1205, file: !1203, line: 124, baseType: !7, size: 32, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1205, file: !1203, line: 128, baseType: !7, size: 32, offset: 480)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1205, file: !1203, line: 131, baseType: !1235, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1203, line: 75, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!752, !1228, !1228}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1205, file: !1203, line: 132, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1203, line: 78, baseType: !1222)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1205, file: !1203, line: 135, baseType: !752, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1205, file: !1203, line: 136, baseType: !1243, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1203, line: 82, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!752, !752, !1228, !1228}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1205, file: !1203, line: 137, baseType: !1248, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1203, line: 83, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !752, !752}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1205, file: !1203, line: 141, baseType: !7, size: 32, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1123, file: !318, line: 211, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1256, file: !341, line: 183, baseType: !1259, size: 128)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1260, file: !341, line: 182, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1260, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1260, file: !341, line: 182, baseType: !1265, size: 64, offset: 64)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 64, elements: !791)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1123, file: !318, line: 220, baseType: !1267, size: 64, offset: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1267, file: !318, line: 218, baseType: !1254, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1267, file: !318, line: 219, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1273, line: 29, baseType: !1274)
!1273 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1273, line: 29, size: 96, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1274, file: !1273, line: 29, baseType: !1277, size: 96)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1273, line: 27, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1273, line: 27, size: 96, elements: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1278, file: !1273, line: 27, baseType: !7, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1278, file: !1273, line: 27, baseType: !7, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1278, file: !1273, line: 27, baseType: !1283, size: 8, offset: 64)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 8, elements: !791)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1273, line: 26, baseType: !747)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1118, file: !1119, line: 467, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1288)
!1288 = !{!1289, !1364, !1365, !1378, !1379, !1380, !1381, !1382, !1383, !1385, !1387, !1388}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1287, file: !325, line: 377, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !757, line: 111, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1293)
!1293 = !{!1294, !1329, !1330, !1331, !1334, !1338, !1339, !1340, !1358, !1359, !1360, !1361, !1362, !1363}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1292, file: !325, line: 219, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1297, file: !325, line: 151, baseType: !1300, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1301, file: !325, line: 150, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1301, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1301, file: !325, line: 150, baseType: !1306, size: 64, offset: 64)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 64, elements: !791)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !757, line: 108, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1309, file: !325, line: 124, baseType: !1291, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1309, file: !325, line: 125, baseType: !1291, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1309, file: !325, line: 131, baseType: !1314, size: 64, offset: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1315)
!1315 = !{!1316, !1320}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1314, file: !325, line: 129, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !757, line: 66, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !757, line: 65, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1314, file: !325, line: 130, baseType: !756, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1309, file: !325, line: 134, baseType: !752, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1309, file: !325, line: 137, baseType: !872, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1309, file: !325, line: 138, baseType: !992, size: 32, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1309, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !325, line: 144, baseType: !748, size: 32, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1309, file: !325, line: 145, baseType: !748, size: 32, offset: 416)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1309, file: !325, line: 146, baseType: !1328, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !843)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1292, file: !325, line: 220, baseType: !1295, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1292, file: !325, line: 223, baseType: !752, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1292, file: !325, line: 226, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1292, file: !325, line: 229, baseType: !1335, size: 128, offset: 256)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !827)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1292, file: !325, line: 232, baseType: !1291, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1292, file: !325, line: 233, baseType: !1291, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1292, file: !325, line: 238, baseType: !1341, size: 64, offset: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1342)
!1342 = !{!1343, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1341, file: !325, line: 236, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1345, file: !325, line: 275, baseType: !1317, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1345, file: !325, line: 278, baseType: !1317, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1341, file: !325, line: 237, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356, !1357}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1351, file: !325, line: 261, baseType: !756, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1351, file: !325, line: 262, baseType: !756, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1351, file: !325, line: 266, baseType: !756, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1351, file: !325, line: 267, baseType: !756, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1351, file: !325, line: 270, baseType: !748, size: 32, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1292, file: !325, line: 241, baseType: !1328, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1292, file: !325, line: 244, baseType: !748, size: 32, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1292, file: !325, line: 247, baseType: !748, size: 32, offset: 672)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1292, file: !325, line: 250, baseType: !748, size: 32, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1292, file: !325, line: 253, baseType: !748, size: 32, offset: 736)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !325, line: 256, baseType: !748, size: 32, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1287, file: !325, line: 378, baseType: !1290, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1287, file: !325, line: 381, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1368, file: !325, line: 282, baseType: !1371, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1372, file: !325, line: 281, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1372, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1372, file: !325, line: 281, baseType: !1377, size: 64, offset: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 64, elements: !791)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1287, file: !325, line: 384, baseType: !748, size: 32, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1287, file: !325, line: 387, baseType: !748, size: 32, offset: 224)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1287, file: !325, line: 390, baseType: !748, size: 32, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1287, file: !325, line: 394, baseType: !1366, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1287, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1287, file: !325, line: 399, baseType: !1384, size: 64, offset: 416)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !827)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1287, file: !325, line: 402, baseType: !1386, size: 64, offset: 480)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !827)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1287, file: !325, line: 406, baseType: !748, size: 32, offset: 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1287, file: !325, line: 409, baseType: !748, size: 32, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1118, file: !1119, line: 470, baseType: !1318, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1118, file: !1119, line: 473, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1119, line: 166, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1118, file: !1119, line: 476, baseType: !1394, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1119, line: 476, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1118, file: !1119, line: 479, baseType: !1202, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1118, file: !1119, line: 484, baseType: !872, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1118, file: !1119, line: 488, baseType: !872, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1118, file: !1119, line: 493, baseType: !872, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1118, file: !1119, line: 496, baseType: !872, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1118, file: !1119, line: 501, baseType: !1402, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1404)
!1404 = !{!1405, !1408, !1409, !1410, !1411, !1413, !1414, !1419, !1420, !1421, !1422, !1423, !1424}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1403, file: !336, line: 2356, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1403, file: !336, line: 2357, baseType: !753, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1403, file: !336, line: 2358, baseType: !748, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1403, file: !336, line: 2359, baseType: !748, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1403, file: !336, line: 2360, baseType: !1412, size: 128, offset: 192)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 128, elements: !852)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1403, file: !336, line: 2364, baseType: !748, size: 32, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1403, file: !336, line: 2367, baseType: !1415, size: 128, offset: 384)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1415, file: !336, line: 2351, baseType: !756, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1415, file: !336, line: 2352, baseType: !843, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1403, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1403, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1403, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1403, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1403, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1403, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1118, file: !1119, line: 504, baseType: !1426, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1119, line: 504, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1118, file: !1119, line: 507, baseType: !1202, size: 64, offset: 768)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1118, file: !1119, line: 510, baseType: !748, size: 32, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1118, file: !1119, line: 513, baseType: !748, size: 32, offset: 864)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1118, file: !1119, line: 516, baseType: !992, size: 32, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1118, file: !1119, line: 519, baseType: !992, size: 32, offset: 928)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1118, file: !1119, line: 522, baseType: !7, size: 32, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1118, file: !1119, line: 523, baseType: !7, size: 32, offset: 992)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1118, file: !1119, line: 528, baseType: !753, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1118, file: !1119, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1118, file: !1119, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1118, file: !1119, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1118, file: !1119, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1118, file: !1119, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1118, file: !1119, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1118, file: !1119, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1118, file: !1119, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1118, file: !1119, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1118, file: !1119, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1118, file: !1119, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1118, file: !1119, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1118, file: !1119, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1118, file: !1119, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1118, file: !1119, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1118, file: !1119, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1113, file: !341, line: 3254, baseType: !872, size: 64, offset: 1536)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1113, file: !341, line: 3257, baseType: !872, size: 64, offset: 1600)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1113, file: !341, line: 3258, baseType: !872, size: 64, offset: 1664)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1113, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1113, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1113, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1113, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1113, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1113, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1113, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1113, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1113, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1113, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1113, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1113, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1113, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1113, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1113, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1113, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1113, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1113, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !341, line: 3394, baseType: !1474, size: 1344)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1501, !1502, !1503, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1474, file: !341, line: 2280, baseType: !910, size: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1474, file: !341, line: 2281, baseType: !872, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1474, file: !341, line: 2282, baseType: !872, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1474, file: !341, line: 2283, baseType: !872, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1474, file: !341, line: 2284, baseType: !872, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1474, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1474, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1474, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1474, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1474, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1474, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1474, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1474, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1474, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1474, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1474, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1474, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1474, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1474, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1474, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1474, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1474, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1474, file: !341, line: 2306, baseType: !1499, size: 32, offset: 544)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1500, line: 31, baseType: !748)
!1500 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1474, file: !341, line: 2307, baseType: !872, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1474, file: !341, line: 2308, baseType: !872, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1474, file: !341, line: 2314, baseType: !1504, size: 64, offset: 704)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1504, file: !341, line: 2310, baseType: !748, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1504, file: !341, line: 2311, baseType: !753, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1504, file: !341, line: 2312, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1474, file: !341, line: 2315, baseType: !872, size: 64, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1474, file: !341, line: 2316, baseType: !872, size: 64, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1474, file: !341, line: 2317, baseType: !872, size: 64, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1474, file: !341, line: 2318, baseType: !872, size: 64, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1474, file: !341, line: 2319, baseType: !872, size: 64, offset: 1024)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1474, file: !341, line: 2320, baseType: !872, size: 64, offset: 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1474, file: !341, line: 2321, baseType: !872, size: 64, offset: 1152)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1474, file: !341, line: 2322, baseType: !872, size: 64, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1474, file: !341, line: 2324, baseType: !1520, size: 64, offset: 1280)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !874, file: !341, line: 3395, baseType: !1523, size: 320)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1524)
!1524 = !{!1525, !1526, !1527}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1523, file: !341, line: 1470, baseType: !910, size: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1523, file: !341, line: 1471, baseType: !872, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1523, file: !341, line: 1472, baseType: !872, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !874, file: !341, line: 3396, baseType: !1529, size: 320)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !341, line: 1483, baseType: !910, size: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1529, file: !341, line: 1484, baseType: !748, size: 32, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1529, file: !341, line: 1485, baseType: !1265, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !874, file: !341, line: 3397, baseType: !1535, size: 384)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1535, file: !341, line: 1830, baseType: !910, size: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1535, file: !341, line: 1831, baseType: !992, size: 32, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1535, file: !341, line: 1832, baseType: !872, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1535, file: !341, line: 1835, baseType: !1265, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !874, file: !341, line: 3398, baseType: !1542, size: 704)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1550, !1551, !1554}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1542, file: !341, line: 1899, baseType: !910, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1542, file: !341, line: 1902, baseType: !872, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1542, file: !341, line: 1905, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !757, line: 58, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !757, line: 57, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1542, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1542, file: !341, line: 1911, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1542, file: !341, line: 1914, baseType: !1555, size: 256, offset: 448)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1556)
!1556 = !{!1557, !1559, !1560, !1565}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1555, file: !341, line: 1884, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1555, file: !341, line: 1885, baseType: !1558, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1555, file: !341, line: 1891, baseType: !1561, size: 64, offset: 128)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !341, line: 1891, size: 64, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1561, file: !341, line: 1891, baseType: !1547, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1561, file: !341, line: 1891, baseType: !872, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1555, file: !341, line: 1892, baseType: !1566, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !874, file: !341, line: 3399, baseType: !1568, size: 704)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1568, file: !341, line: 2009, baseType: !910, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1568, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1568, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1568, file: !341, line: 2014, baseType: !992, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1568, file: !341, line: 2016, baseType: !872, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1568, file: !341, line: 2017, baseType: !1254, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1568, file: !341, line: 2019, baseType: !872, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1568, file: !341, line: 2020, baseType: !872, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1568, file: !341, line: 2021, baseType: !872, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1568, file: !341, line: 2022, baseType: !872, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1568, file: !341, line: 2023, baseType: !872, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !874, file: !341, line: 3400, baseType: !1582, size: 832)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1582, file: !341, line: 2431, baseType: !910, size: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1582, file: !341, line: 2433, baseType: !872, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1582, file: !341, line: 2434, baseType: !872, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1582, file: !341, line: 2435, baseType: !872, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1582, file: !341, line: 2436, baseType: !872, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1582, file: !341, line: 2437, baseType: !1254, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1582, file: !341, line: 2438, baseType: !872, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1582, file: !341, line: 2440, baseType: !872, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1582, file: !341, line: 2441, baseType: !872, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1582, file: !341, line: 2443, baseType: !1594, size: 128, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1595, file: !341, line: 182, baseType: !1259, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !874, file: !341, line: 3401, baseType: !1599, size: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1609}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1599, file: !341, line: 3329, baseType: !910, size: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1599, file: !341, line: 3330, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1604, file: !341, line: 3322, baseType: !1603, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1604, file: !341, line: 3323, baseType: !1603, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1604, file: !341, line: 3324, baseType: !872, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1599, file: !341, line: 3331, baseType: !1603, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !874, file: !341, line: 3402, baseType: !1611, size: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1611, file: !341, line: 1541, baseType: !910, size: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1611, file: !341, line: 1542, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1617, file: !341, line: 1538, baseType: !1620, size: 192)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1621, file: !341, line: 1537, baseType: !7, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1621, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1621, file: !341, line: 1537, baseType: !1626, size: 128, offset: 64)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 128, elements: !791)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1628, file: !341, line: 1533, baseType: !872, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1628, file: !341, line: 1534, baseType: !872, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !874, file: !341, line: 3403, baseType: !1633, size: 512)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1644, !1645, !1646}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1633, file: !341, line: 1939, baseType: !910, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1633, file: !341, line: 1940, baseType: !992, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1633, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1633, file: !341, line: 1946, baseType: !1639, size: 32, offset: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1639, file: !341, line: 1943, baseType: !359, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1639, file: !341, line: 1944, baseType: !366, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1639, file: !341, line: 1945, baseType: !373, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1633, file: !341, line: 1950, baseType: !1317, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1633, file: !341, line: 1951, baseType: !1317, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1633, file: !341, line: 1953, baseType: !1265, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !874, file: !341, line: 3404, baseType: !1648, size: 1664)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1648, file: !341, line: 3338, baseType: !910, size: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1648, file: !341, line: 3341, baseType: !1652, size: 1472, offset: 192)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1653, line: 410, size: 1472, elements: !1654)
!1653 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1652, file: !1653, line: 412, baseType: !748, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1652, file: !1653, line: 413, baseType: !748, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1652, file: !1653, line: 414, baseType: !748, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1652, file: !1653, line: 415, baseType: !748, size: 32, offset: 96)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1652, file: !1653, line: 416, baseType: !748, size: 32, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1652, file: !1653, line: 417, baseType: !748, size: 32, offset: 160)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1652, file: !1653, line: 418, baseType: !747, size: 8, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1652, file: !1653, line: 419, baseType: !747, size: 8, offset: 200)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1652, file: !1653, line: 420, baseType: !1664, size: 8, offset: 208)
!1664 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1652, file: !1653, line: 421, baseType: !1664, size: 8, offset: 216)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1652, file: !1653, line: 422, baseType: !1664, size: 8, offset: 224)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1652, file: !1653, line: 423, baseType: !1664, size: 8, offset: 232)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1652, file: !1653, line: 424, baseType: !1664, size: 8, offset: 240)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1652, file: !1653, line: 425, baseType: !1664, size: 8, offset: 248)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1652, file: !1653, line: 426, baseType: !1664, size: 8, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1652, file: !1653, line: 427, baseType: !1664, size: 8, offset: 264)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1652, file: !1653, line: 428, baseType: !1664, size: 8, offset: 272)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1652, file: !1653, line: 429, baseType: !1664, size: 8, offset: 280)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1652, file: !1653, line: 430, baseType: !1664, size: 8, offset: 288)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1652, file: !1653, line: 431, baseType: !1664, size: 8, offset: 296)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1652, file: !1653, line: 432, baseType: !1664, size: 8, offset: 304)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1652, file: !1653, line: 433, baseType: !1664, size: 8, offset: 312)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1652, file: !1653, line: 434, baseType: !1664, size: 8, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1652, file: !1653, line: 435, baseType: !1664, size: 8, offset: 328)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1652, file: !1653, line: 436, baseType: !1664, size: 8, offset: 336)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1652, file: !1653, line: 437, baseType: !1664, size: 8, offset: 344)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1652, file: !1653, line: 438, baseType: !1664, size: 8, offset: 352)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1652, file: !1653, line: 439, baseType: !1664, size: 8, offset: 360)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1652, file: !1653, line: 440, baseType: !1664, size: 8, offset: 368)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1652, file: !1653, line: 441, baseType: !1664, size: 8, offset: 376)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1652, file: !1653, line: 442, baseType: !1664, size: 8, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1652, file: !1653, line: 443, baseType: !1664, size: 8, offset: 392)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1652, file: !1653, line: 444, baseType: !1664, size: 8, offset: 400)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1652, file: !1653, line: 445, baseType: !1664, size: 8, offset: 408)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1652, file: !1653, line: 446, baseType: !1664, size: 8, offset: 416)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1652, file: !1653, line: 447, baseType: !1664, size: 8, offset: 424)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1652, file: !1653, line: 448, baseType: !1664, size: 8, offset: 432)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1652, file: !1653, line: 449, baseType: !1664, size: 8, offset: 440)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1652, file: !1653, line: 450, baseType: !1664, size: 8, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1652, file: !1653, line: 451, baseType: !1664, size: 8, offset: 456)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1652, file: !1653, line: 452, baseType: !1664, size: 8, offset: 464)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1652, file: !1653, line: 453, baseType: !1664, size: 8, offset: 472)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1652, file: !1653, line: 454, baseType: !1664, size: 8, offset: 480)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1652, file: !1653, line: 455, baseType: !1664, size: 8, offset: 488)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1652, file: !1653, line: 456, baseType: !1664, size: 8, offset: 496)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1652, file: !1653, line: 457, baseType: !1664, size: 8, offset: 504)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1652, file: !1653, line: 458, baseType: !1664, size: 8, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1652, file: !1653, line: 459, baseType: !1664, size: 8, offset: 520)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1652, file: !1653, line: 460, baseType: !1664, size: 8, offset: 528)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1652, file: !1653, line: 461, baseType: !1664, size: 8, offset: 536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1652, file: !1653, line: 462, baseType: !1664, size: 8, offset: 544)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1652, file: !1653, line: 463, baseType: !1664, size: 8, offset: 552)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1652, file: !1653, line: 464, baseType: !1664, size: 8, offset: 560)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1652, file: !1653, line: 465, baseType: !1664, size: 8, offset: 568)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1652, file: !1653, line: 466, baseType: !1664, size: 8, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1652, file: !1653, line: 467, baseType: !1664, size: 8, offset: 584)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1652, file: !1653, line: 468, baseType: !1664, size: 8, offset: 592)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1652, file: !1653, line: 469, baseType: !1664, size: 8, offset: 600)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1652, file: !1653, line: 470, baseType: !1664, size: 8, offset: 608)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1652, file: !1653, line: 471, baseType: !1664, size: 8, offset: 616)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1652, file: !1653, line: 472, baseType: !1664, size: 8, offset: 624)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1652, file: !1653, line: 473, baseType: !1664, size: 8, offset: 632)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1652, file: !1653, line: 474, baseType: !1664, size: 8, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1652, file: !1653, line: 475, baseType: !1664, size: 8, offset: 648)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1652, file: !1653, line: 476, baseType: !1664, size: 8, offset: 656)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1652, file: !1653, line: 477, baseType: !1664, size: 8, offset: 664)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1652, file: !1653, line: 478, baseType: !1664, size: 8, offset: 672)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1652, file: !1653, line: 479, baseType: !1664, size: 8, offset: 680)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1652, file: !1653, line: 480, baseType: !1664, size: 8, offset: 688)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1652, file: !1653, line: 481, baseType: !1664, size: 8, offset: 696)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1652, file: !1653, line: 482, baseType: !1664, size: 8, offset: 704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1652, file: !1653, line: 483, baseType: !1664, size: 8, offset: 712)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1652, file: !1653, line: 484, baseType: !1664, size: 8, offset: 720)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1652, file: !1653, line: 485, baseType: !1664, size: 8, offset: 728)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1652, file: !1653, line: 486, baseType: !1664, size: 8, offset: 736)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1652, file: !1653, line: 487, baseType: !1664, size: 8, offset: 744)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1652, file: !1653, line: 488, baseType: !1664, size: 8, offset: 752)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1652, file: !1653, line: 489, baseType: !1664, size: 8, offset: 760)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1652, file: !1653, line: 490, baseType: !1664, size: 8, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1652, file: !1653, line: 491, baseType: !1664, size: 8, offset: 776)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1652, file: !1653, line: 492, baseType: !1664, size: 8, offset: 784)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1652, file: !1653, line: 493, baseType: !1664, size: 8, offset: 792)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1652, file: !1653, line: 494, baseType: !1664, size: 8, offset: 800)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1652, file: !1653, line: 495, baseType: !1664, size: 8, offset: 808)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1652, file: !1653, line: 496, baseType: !1664, size: 8, offset: 816)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1652, file: !1653, line: 497, baseType: !1664, size: 8, offset: 824)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1652, file: !1653, line: 498, baseType: !1664, size: 8, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1652, file: !1653, line: 499, baseType: !1664, size: 8, offset: 840)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1652, file: !1653, line: 500, baseType: !1664, size: 8, offset: 848)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1652, file: !1653, line: 501, baseType: !1664, size: 8, offset: 856)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1652, file: !1653, line: 502, baseType: !1664, size: 8, offset: 864)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1652, file: !1653, line: 503, baseType: !1664, size: 8, offset: 872)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1652, file: !1653, line: 504, baseType: !1664, size: 8, offset: 880)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1652, file: !1653, line: 505, baseType: !1664, size: 8, offset: 888)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1652, file: !1653, line: 506, baseType: !1664, size: 8, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1652, file: !1653, line: 507, baseType: !1664, size: 8, offset: 904)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1652, file: !1653, line: 508, baseType: !1664, size: 8, offset: 912)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1652, file: !1653, line: 509, baseType: !1664, size: 8, offset: 920)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1652, file: !1653, line: 510, baseType: !1664, size: 8, offset: 928)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1652, file: !1653, line: 511, baseType: !1664, size: 8, offset: 936)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1652, file: !1653, line: 512, baseType: !1664, size: 8, offset: 944)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1652, file: !1653, line: 513, baseType: !1664, size: 8, offset: 952)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1652, file: !1653, line: 514, baseType: !1664, size: 8, offset: 960)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1652, file: !1653, line: 515, baseType: !1664, size: 8, offset: 968)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1652, file: !1653, line: 516, baseType: !1664, size: 8, offset: 976)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1652, file: !1653, line: 517, baseType: !1664, size: 8, offset: 984)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1652, file: !1653, line: 518, baseType: !1664, size: 8, offset: 992)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1652, file: !1653, line: 519, baseType: !1664, size: 8, offset: 1000)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1652, file: !1653, line: 520, baseType: !1664, size: 8, offset: 1008)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1652, file: !1653, line: 521, baseType: !1664, size: 8, offset: 1016)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1652, file: !1653, line: 522, baseType: !1664, size: 8, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1652, file: !1653, line: 523, baseType: !1664, size: 8, offset: 1032)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1652, file: !1653, line: 524, baseType: !1664, size: 8, offset: 1040)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1652, file: !1653, line: 525, baseType: !1664, size: 8, offset: 1048)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1652, file: !1653, line: 526, baseType: !1664, size: 8, offset: 1056)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1652, file: !1653, line: 527, baseType: !1664, size: 8, offset: 1064)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1652, file: !1653, line: 528, baseType: !1664, size: 8, offset: 1072)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1652, file: !1653, line: 529, baseType: !1664, size: 8, offset: 1080)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1652, file: !1653, line: 530, baseType: !1664, size: 8, offset: 1088)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1652, file: !1653, line: 531, baseType: !1664, size: 8, offset: 1096)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1652, file: !1653, line: 532, baseType: !1664, size: 8, offset: 1104)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1652, file: !1653, line: 533, baseType: !1664, size: 8, offset: 1112)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1652, file: !1653, line: 534, baseType: !1664, size: 8, offset: 1120)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1652, file: !1653, line: 535, baseType: !1664, size: 8, offset: 1128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1652, file: !1653, line: 536, baseType: !1664, size: 8, offset: 1136)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1652, file: !1653, line: 537, baseType: !1664, size: 8, offset: 1144)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1652, file: !1653, line: 538, baseType: !1664, size: 8, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1652, file: !1653, line: 539, baseType: !1664, size: 8, offset: 1160)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1652, file: !1653, line: 540, baseType: !1664, size: 8, offset: 1168)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1652, file: !1653, line: 541, baseType: !1664, size: 8, offset: 1176)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1652, file: !1653, line: 542, baseType: !1664, size: 8, offset: 1184)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1652, file: !1653, line: 543, baseType: !1664, size: 8, offset: 1192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1652, file: !1653, line: 544, baseType: !1664, size: 8, offset: 1200)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1652, file: !1653, line: 545, baseType: !1664, size: 8, offset: 1208)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1652, file: !1653, line: 546, baseType: !1664, size: 8, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1652, file: !1653, line: 547, baseType: !1664, size: 8, offset: 1224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1652, file: !1653, line: 548, baseType: !1664, size: 8, offset: 1232)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1652, file: !1653, line: 549, baseType: !1664, size: 8, offset: 1240)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1652, file: !1653, line: 550, baseType: !1664, size: 8, offset: 1248)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1652, file: !1653, line: 551, baseType: !1664, size: 8, offset: 1256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1652, file: !1653, line: 552, baseType: !1664, size: 8, offset: 1264)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1652, file: !1653, line: 553, baseType: !1664, size: 8, offset: 1272)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1652, file: !1653, line: 554, baseType: !1664, size: 8, offset: 1280)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1652, file: !1653, line: 555, baseType: !1664, size: 8, offset: 1288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1652, file: !1653, line: 556, baseType: !1664, size: 8, offset: 1296)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1652, file: !1653, line: 557, baseType: !1664, size: 8, offset: 1304)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1652, file: !1653, line: 558, baseType: !1664, size: 8, offset: 1312)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1652, file: !1653, line: 559, baseType: !1664, size: 8, offset: 1320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1652, file: !1653, line: 560, baseType: !1664, size: 8, offset: 1328)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1652, file: !1653, line: 561, baseType: !1664, size: 8, offset: 1336)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1652, file: !1653, line: 562, baseType: !1664, size: 8, offset: 1344)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1652, file: !1653, line: 563, baseType: !1664, size: 8, offset: 1352)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1652, file: !1653, line: 564, baseType: !1664, size: 8, offset: 1360)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1652, file: !1653, line: 565, baseType: !1664, size: 8, offset: 1368)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1652, file: !1653, line: 566, baseType: !1664, size: 8, offset: 1376)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1652, file: !1653, line: 567, baseType: !1664, size: 8, offset: 1384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1652, file: !1653, line: 568, baseType: !1664, size: 8, offset: 1392)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1652, file: !1653, line: 569, baseType: !1664, size: 8, offset: 1400)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1652, file: !1653, line: 570, baseType: !1664, size: 8, offset: 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1652, file: !1653, line: 571, baseType: !1664, size: 8, offset: 1416)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1652, file: !1653, line: 572, baseType: !1664, size: 8, offset: 1424)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1652, file: !1653, line: 573, baseType: !1664, size: 8, offset: 1432)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1652, file: !1653, line: 574, baseType: !1664, size: 8, offset: 1440)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !874, file: !341, line: 3405, baseType: !1820, size: 384)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1821)
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1820, file: !341, line: 3353, baseType: !910, size: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1820, file: !341, line: 3356, baseType: !1824, size: 192, offset: 192)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1653, line: 578, size: 192, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1824, file: !1653, line: 580, baseType: !748, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1824, file: !1653, line: 581, baseType: !748, size: 32, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1824, file: !1653, line: 582, baseType: !748, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1824, file: !1653, line: 583, baseType: !748, size: 32, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1824, file: !1653, line: 584, baseType: !747, size: 8, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1824, file: !1653, line: 585, baseType: !747, size: 8, offset: 136)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1824, file: !1653, line: 586, baseType: !747, size: 8, offset: 144)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1824, file: !1653, line: 587, baseType: !747, size: 8, offset: 152)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1824, file: !1653, line: 588, baseType: !747, size: 8, offset: 160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1824, file: !1653, line: 589, baseType: !747, size: 8, offset: 168)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1824, file: !1653, line: 590, baseType: !747, size: 8, offset: 176)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !777, file: !568, line: 178, baseType: !1291, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !777, file: !568, line: 179, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1841, file: !568, line: 144, baseType: !872, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1841, file: !568, line: 145, baseType: !756, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1841, file: !568, line: 146, baseType: !756, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1841, file: !568, line: 147, baseType: !1499, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1841, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1841, file: !568, line: 149, baseType: !747, size: 8, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !777, file: !568, line: 180, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1852, file: !568, line: 160, baseType: !872, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1852, file: !568, line: 161, baseType: !843, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !777, file: !568, line: 181, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !772, file: !568, line: 317, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 64, elements: !791)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !772, file: !568, line: 318, baseType: !1862, size: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1863)
!1863 = !{!1864, !1866, !1921}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1862, file: !568, line: 190, baseType: !1865, size: 192)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 192, elements: !943)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1862, file: !568, line: 193, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1869)
!1869 = !{!1870, !1906, !1907, !1908, !1920}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1868, file: !568, line: 208, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !757, line: 62, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1874, line: 538, size: 256, elements: !1875)
!1874 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1875 = !{!1876, !1880, !1886, !1897}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1873, file: !1874, line: 539, baseType: !1877, size: 32)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1874, line: 482, size: 32, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1877, file: !1874, line: 484, baseType: !7, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1873, file: !1874, line: 540, baseType: !1881, size: 192)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1874, line: 488, size: 192, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1881, file: !1874, line: 489, baseType: !1877, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1881, file: !1874, line: 492, baseType: !753, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1881, file: !1874, line: 496, baseType: !872, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1873, file: !1874, line: 541, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1874, line: 504, size: 256, elements: !1888)
!1888 = !{!1889, !1890, !1895, !1896}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1887, file: !1874, line: 505, baseType: !1877, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1887, file: !1874, line: 509, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1874, line: 501, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1213}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1887, file: !1874, line: 510, baseType: !1213, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1887, file: !1874, line: 513, baseType: !1871, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1873, file: !1874, line: 542, baseType: !1898, size: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1874, line: 530, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1898, file: !1874, line: 531, baseType: !1877, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1898, file: !1874, line: 534, baseType: !1902, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1874, line: 525, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!747, !872, !753, !826, !826}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1868, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1868, file: !568, line: 214, baseType: !843, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1868, file: !568, line: 224, baseType: !1909, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1911, file: !568, line: 202, baseType: !1914, size: 128)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1915, file: !568, line: 200, baseType: !7, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1915, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1915, file: !568, line: 200, baseType: !790, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1868, file: !568, line: 234, baseType: !1909, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1862, file: !568, line: 197, baseType: !843, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !772, file: !568, line: 319, baseType: !932, size: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !772, file: !568, line: 320, baseType: !951, size: 192)
!1924 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1926 = !{!0, !1927, !1929, !1931}
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(name: "regno_src_regno", scope: !2, file: !3, line: 217, type: !755, isLocal: true, isDefinition: true)
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(name: "max_reg_computed", scope: !2, file: !3, line: 679, type: !7, isLocal: true, isDefinition: true)
!1931 = !DIGlobalVariableExpression(var: !1932, expr: !DIExpression())
!1932 = distinct !DIGlobalVariable(name: "reg_set_in_bb", scope: !2, file: !3, line: 676, type: !1925, isLocal: true, isDefinition: true)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1934)
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1933, file: !6, line: 164, baseType: !1936, size: 640)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1944, !1948, !1950, !1951, !1952, !1954, !1955, !1956, !1957, !1958}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !6, line: 117, baseType: !5, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1936, file: !6, line: 121, baseType: !753, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1936, file: !6, line: 125, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!747}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1936, file: !6, line: 130, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!7}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1936, file: !6, line: 133, baseType: !1949, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1936, file: !6, line: 136, baseType: !1949, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1936, file: !6, line: 139, baseType: !748, size: 32, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1936, file: !6, line: 143, baseType: !1953, size: 32, offset: 416)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1936, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1936, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1936, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1936, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1936, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1959 = !{i32 2, !"Dwarf Version", i32 4}
!1960 = !{i32 2, !"Debug Info Version", i32 3}
!1961 = !{i32 1, !"wchar_size", i32 4}
!1962 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1963 = distinct !DISubprogram(name: "vprintf", scope: !1964, file: !1964, line: 39, type: !1965, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!748, !1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !753)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1969, file: !3, baseType: !7, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1969, file: !3, baseType: !7, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1969, file: !3, baseType: !752, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1969, file: !3, baseType: !752, size: 64, offset: 128)
!1975 = !{!1976, !1977}
!1976 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1963, file: !1964, line: 39, type: !1967)
!1977 = !DILocalVariable(name: "__arg", arg: 2, scope: !1963, file: !1964, line: 39, type: !1968)
!1978 = !DILocation(line: 0, scope: !1963)
!1979 = !DILocation(line: 41, column: 20, scope: !1963)
!1980 = !DILocation(line: 41, column: 10, scope: !1963)
!1981 = !DILocation(line: 41, column: 3, scope: !1963)
!1982 = distinct !DISubprogram(name: "getchar", scope: !1964, file: !1964, line: 47, type: !1983, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!748}
!1985 = !{}
!1986 = !DILocation(line: 49, column: 16, scope: !1982)
!1987 = !DILocation(line: 49, column: 10, scope: !1982)
!1988 = !DILocation(line: 49, column: 3, scope: !1982)
!1989 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1964, file: !1964, line: 56, type: !1990, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!748, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1994, line: 7, baseType: !1995)
!1994 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1996, line: 49, size: 1728, elements: !1997)
!1996 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2013, !2015, !2016, !2017, !2020, !2021, !2022, !2023, !2026, !2028, !2031, !2034, !2035, !2036, !2037, !2038}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1995, file: !1996, line: 51, baseType: !748, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1995, file: !1996, line: 54, baseType: !750, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1995, file: !1996, line: 55, baseType: !750, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1995, file: !1996, line: 56, baseType: !750, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1995, file: !1996, line: 57, baseType: !750, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1995, file: !1996, line: 58, baseType: !750, size: 64, offset: 320)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1995, file: !1996, line: 59, baseType: !750, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1995, file: !1996, line: 60, baseType: !750, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1995, file: !1996, line: 61, baseType: !750, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1995, file: !1996, line: 64, baseType: !750, size: 64, offset: 576)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1995, file: !1996, line: 65, baseType: !750, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1995, file: !1996, line: 66, baseType: !750, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1995, file: !1996, line: 68, baseType: !2011, size: 64, offset: 768)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1996, line: 36, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1995, file: !1996, line: 70, baseType: !2014, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1995, file: !1996, line: 72, baseType: !748, size: 32, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1995, file: !1996, line: 73, baseType: !748, size: 32, offset: 928)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1995, file: !1996, line: 74, baseType: !2018, size: 64, offset: 960)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2019, line: 152, baseType: !843)
!2019 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1995, file: !1996, line: 77, baseType: !1924, size: 16, offset: 1024)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1995, file: !1996, line: 78, baseType: !1664, size: 8, offset: 1040)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1995, file: !1996, line: 79, baseType: !967, size: 8, offset: 1048)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1995, file: !1996, line: 81, baseType: !2024, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1996, line: 43, baseType: null)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1995, file: !1996, line: 89, baseType: !2027, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2019, line: 153, baseType: !843)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1995, file: !1996, line: 91, baseType: !2029, size: 64, offset: 1216)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1996, line: 37, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1995, file: !1996, line: 92, baseType: !2032, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1996, line: 38, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1995, file: !1996, line: 93, baseType: !2014, size: 64, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1995, file: !1996, line: 94, baseType: !752, size: 64, offset: 1408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1995, file: !1996, line: 95, baseType: !1228, size: 64, offset: 1472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1995, file: !1996, line: 96, baseType: !748, size: 32, offset: 1536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1995, file: !1996, line: 98, baseType: !2039, size: 160, offset: 1568)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 160, elements: !2040)
!2040 = !{!2041}
!2041 = !DISubrange(count: 20)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "__fp", arg: 1, scope: !1989, file: !1964, line: 56, type: !1992)
!2044 = !DILocation(line: 0, scope: !1989)
!2045 = !DILocation(line: 58, column: 10, scope: !1989)
!2046 = !DILocation(line: 58, column: 3, scope: !1989)
!2047 = distinct !DISubprogram(name: "getc_unlocked", scope: !1964, file: !1964, line: 66, type: !1990, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "__fp", arg: 1, scope: !2047, file: !1964, line: 66, type: !1992)
!2050 = !DILocation(line: 0, scope: !2047)
!2051 = !DILocation(line: 68, column: 10, scope: !2047)
!2052 = !DILocation(line: 68, column: 3, scope: !2047)
!2053 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1964, file: !1964, line: 73, type: !1983, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!2054 = !DILocation(line: 75, column: 10, scope: !2053)
!2055 = !DILocation(line: 75, column: 3, scope: !2053)
!2056 = distinct !DISubprogram(name: "putchar", scope: !1964, file: !1964, line: 82, type: !2057, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!748, !748}
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "__c", arg: 1, scope: !2056, file: !1964, line: 82, type: !748)
!2061 = !DILocation(line: 0, scope: !2056)
!2062 = !DILocation(line: 84, column: 21, scope: !2056)
!2063 = !DILocation(line: 84, column: 10, scope: !2056)
!2064 = !DILocation(line: 84, column: 3, scope: !2056)
!2065 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1964, file: !1964, line: 91, type: !2066, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!748, !748, !1992}
!2068 = !{!2069, !2070}
!2069 = !DILocalVariable(name: "__c", arg: 1, scope: !2065, file: !1964, line: 91, type: !748)
!2070 = !DILocalVariable(name: "__stream", arg: 2, scope: !2065, file: !1964, line: 91, type: !1992)
!2071 = !DILocation(line: 0, scope: !2065)
!2072 = !DILocation(line: 93, column: 10, scope: !2065)
!2073 = !DILocation(line: 93, column: 3, scope: !2065)
!2074 = distinct !DISubprogram(name: "putc_unlocked", scope: !1964, file: !1964, line: 101, type: !2066, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "__c", arg: 1, scope: !2074, file: !1964, line: 101, type: !748)
!2077 = !DILocalVariable(name: "__stream", arg: 2, scope: !2074, file: !1964, line: 101, type: !1992)
!2078 = !DILocation(line: 0, scope: !2074)
!2079 = !DILocation(line: 103, column: 10, scope: !2074)
!2080 = !DILocation(line: 103, column: 3, scope: !2074)
!2081 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1964, file: !1964, line: 108, type: !2057, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "__c", arg: 1, scope: !2081, file: !1964, line: 108, type: !748)
!2084 = !DILocation(line: 0, scope: !2081)
!2085 = !DILocation(line: 110, column: 10, scope: !2081)
!2086 = !DILocation(line: 110, column: 3, scope: !2081)
!2087 = distinct !DISubprogram(name: "getline", scope: !1964, file: !1964, line: 118, type: !2088, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2090, !749, !2091, !1992}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2019, line: 193, baseType: !843)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2087, file: !1964, line: 118, type: !749)
!2094 = !DILocalVariable(name: "__n", arg: 2, scope: !2087, file: !1964, line: 118, type: !2091)
!2095 = !DILocalVariable(name: "__stream", arg: 3, scope: !2087, file: !1964, line: 118, type: !1992)
!2096 = !DILocation(line: 0, scope: !2087)
!2097 = !DILocation(line: 120, column: 10, scope: !2087)
!2098 = !DILocation(line: 120, column: 3, scope: !2087)
!2099 = distinct !DISubprogram(name: "feof_unlocked", scope: !1964, file: !1964, line: 128, type: !1990, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "__stream", arg: 1, scope: !2099, file: !1964, line: 128, type: !1992)
!2102 = !DILocation(line: 0, scope: !2099)
!2103 = !DILocation(line: 130, column: 10, scope: !2099)
!2104 = !DILocation(line: 130, column: 3, scope: !2099)
!2105 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1964, file: !1964, line: 135, type: !1990, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__stream", arg: 1, scope: !2105, file: !1964, line: 135, type: !1992)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 137, column: 10, scope: !2105)
!2110 = !DILocation(line: 137, column: 3, scope: !2105)
!2111 = distinct !DISubprogram(name: "tolower", scope: !2112, file: !2112, line: 207, type: !2057, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2112 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "__c", arg: 1, scope: !2111, file: !2112, line: 207, type: !748)
!2115 = !DILocation(line: 0, scope: !2111)
!2116 = !DILocation(line: 209, column: 22, scope: !2111)
!2117 = !DILocation(line: 209, column: 39, scope: !2111)
!2118 = !DILocation(line: 209, column: 38, scope: !2111)
!2119 = !DILocation(line: 209, column: 37, scope: !2111)
!2120 = !DILocation(line: 209, column: 10, scope: !2111)
!2121 = !DILocation(line: 209, column: 3, scope: !2111)
!2122 = distinct !DISubprogram(name: "toupper", scope: !2112, file: !2112, line: 213, type: !2057, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !2112, line: 213, type: !748)
!2125 = !DILocation(line: 0, scope: !2122)
!2126 = !DILocation(line: 215, column: 22, scope: !2122)
!2127 = !DILocation(line: 215, column: 39, scope: !2122)
!2128 = !DILocation(line: 215, column: 38, scope: !2122)
!2129 = !DILocation(line: 215, column: 37, scope: !2122)
!2130 = !DILocation(line: 215, column: 10, scope: !2122)
!2131 = !DILocation(line: 215, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "atoi", scope: !2133, file: !2133, line: 361, type: !2134, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2133 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!748, !753}
!2136 = !{!2137}
!2137 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2132, file: !2133, line: 361, type: !753)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !DILocation(line: 363, column: 16, scope: !2132)
!2140 = !DILocation(line: 363, column: 10, scope: !2132)
!2141 = !DILocation(line: 363, column: 3, scope: !2132)
!2142 = distinct !DISubprogram(name: "atol", scope: !2133, file: !2133, line: 366, type: !2143, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!843, !753}
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2142, file: !2133, line: 366, type: !753)
!2147 = !DILocation(line: 0, scope: !2142)
!2148 = !DILocation(line: 368, column: 10, scope: !2142)
!2149 = !DILocation(line: 368, column: 3, scope: !2142)
!2150 = distinct !DISubprogram(name: "atoll", scope: !2133, file: !2133, line: 373, type: !2151, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !753}
!2153 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2150, file: !2133, line: 373, type: !753)
!2156 = !DILocation(line: 0, scope: !2150)
!2157 = !DILocation(line: 375, column: 10, scope: !2150)
!2158 = !DILocation(line: 375, column: 3, scope: !2150)
!2159 = distinct !DISubprogram(name: "bsearch", scope: !2160, file: !2160, line: 20, type: !2161, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!752, !1213, !1213, !1228, !1228, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2133, line: 808, baseType: !1217)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2165 = !DILocalVariable(name: "__key", arg: 1, scope: !2159, file: !2160, line: 20, type: !1213)
!2166 = !DILocalVariable(name: "__base", arg: 2, scope: !2159, file: !2160, line: 20, type: !1213)
!2167 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2159, file: !2160, line: 20, type: !1228)
!2168 = !DILocalVariable(name: "__size", arg: 4, scope: !2159, file: !2160, line: 20, type: !1228)
!2169 = !DILocalVariable(name: "__compar", arg: 5, scope: !2159, file: !2160, line: 21, type: !2163)
!2170 = !DILocalVariable(name: "__l", scope: !2159, file: !2160, line: 23, type: !1228)
!2171 = !DILocalVariable(name: "__u", scope: !2159, file: !2160, line: 23, type: !1228)
!2172 = !DILocalVariable(name: "__idx", scope: !2159, file: !2160, line: 23, type: !1228)
!2173 = !DILocalVariable(name: "__p", scope: !2159, file: !2160, line: 24, type: !1213)
!2174 = !DILocalVariable(name: "__comparison", scope: !2159, file: !2160, line: 25, type: !748)
!2175 = !DILocation(line: 0, scope: !2159)
!2176 = !DILocation(line: 29, column: 3, scope: !2159)
!2177 = !DILocation(line: 27, column: 7, scope: !2159)
!2178 = !DILocation(line: 29, column: 14, scope: !2159)
!2179 = !DILocation(line: 31, column: 20, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2159, file: !2160, line: 30, column: 5)
!2181 = !DILocation(line: 31, column: 27, scope: !2180)
!2182 = !DILocation(line: 32, column: 56, scope: !2180)
!2183 = !DILocation(line: 32, column: 47, scope: !2180)
!2184 = !DILocation(line: 33, column: 22, scope: !2180)
!2185 = !DILocation(line: 34, column: 24, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !2160, line: 34, column: 11)
!2187 = !DILocation(line: 34, column: 11, scope: !2180)
!2188 = !DILocation(line: 36, column: 29, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !2160, line: 36, column: 16)
!2190 = !DILocation(line: 36, column: 16, scope: !2186)
!2191 = !DILocation(line: 37, column: 14, scope: !2189)
!2192 = distinct !{!2192, !2176, !2193}
!2193 = !DILocation(line: 40, column: 5, scope: !2159)
!2194 = !DILocation(line: 43, column: 1, scope: !2159)
!2195 = distinct !DISubprogram(name: "atof", scope: !2196, file: !2196, line: 25, type: !2197, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !753}
!2199 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2195, file: !2196, line: 25, type: !753)
!2202 = !DILocation(line: 0, scope: !2195)
!2203 = !DILocation(line: 27, column: 10, scope: !2195)
!2204 = !DILocation(line: 27, column: 3, scope: !2195)
!2205 = distinct !DISubprogram(name: "strtoimax", scope: !2206, file: !2206, line: 324, type: !2207, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2206 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2209, !1967, !2212, !748}
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2210, line: 101, baseType: !2211)
!2210 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2019, line: 72, baseType: !843)
!2212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !749)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "nptr", arg: 1, scope: !2205, file: !2206, line: 324, type: !1967)
!2215 = !DILocalVariable(name: "endptr", arg: 2, scope: !2205, file: !2206, line: 324, type: !2212)
!2216 = !DILocalVariable(name: "base", arg: 3, scope: !2205, file: !2206, line: 324, type: !748)
!2217 = !DILocation(line: 0, scope: !2205)
!2218 = !DILocation(line: 327, column: 10, scope: !2205)
!2219 = !DILocation(line: 327, column: 3, scope: !2205)
!2220 = distinct !DISubprogram(name: "strtoumax", scope: !2206, file: !2206, line: 336, type: !2221, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2223, !1967, !2212, !748}
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2210, line: 102, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2019, line: 73, baseType: !826)
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "nptr", arg: 1, scope: !2220, file: !2206, line: 336, type: !1967)
!2227 = !DILocalVariable(name: "endptr", arg: 2, scope: !2220, file: !2206, line: 336, type: !2212)
!2228 = !DILocalVariable(name: "base", arg: 3, scope: !2220, file: !2206, line: 336, type: !748)
!2229 = !DILocation(line: 0, scope: !2220)
!2230 = !DILocation(line: 339, column: 10, scope: !2220)
!2231 = !DILocation(line: 339, column: 3, scope: !2220)
!2232 = distinct !DISubprogram(name: "wcstoimax", scope: !2206, file: !2206, line: 348, type: !2233, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2209, !2235, !2239, !748}
!2235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2206, line: 34, baseType: !748)
!2239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2240)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "nptr", arg: 1, scope: !2232, file: !2206, line: 348, type: !2235)
!2244 = !DILocalVariable(name: "endptr", arg: 2, scope: !2232, file: !2206, line: 348, type: !2239)
!2245 = !DILocalVariable(name: "base", arg: 3, scope: !2232, file: !2206, line: 348, type: !748)
!2246 = !DILocation(line: 0, scope: !2232)
!2247 = !DILocation(line: 351, column: 10, scope: !2232)
!2248 = !DILocation(line: 351, column: 3, scope: !2232)
!2249 = distinct !DISubprogram(name: "wcstoumax", scope: !2206, file: !2206, line: 362, type: !2250, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2223, !2235, !2239, !748}
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "nptr", arg: 1, scope: !2249, file: !2206, line: 362, type: !2235)
!2254 = !DILocalVariable(name: "endptr", arg: 2, scope: !2249, file: !2206, line: 362, type: !2239)
!2255 = !DILocalVariable(name: "base", arg: 3, scope: !2249, file: !2206, line: 362, type: !748)
!2256 = !DILocation(line: 0, scope: !2249)
!2257 = !DILocation(line: 365, column: 10, scope: !2249)
!2258 = !DILocation(line: 365, column: 3, scope: !2249)
!2259 = distinct !DISubprogram(name: "stat", scope: !2260, file: !2260, line: 453, type: !2261, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!748, !753, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2265, line: 46, size: 1152, elements: !2266)
!2265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2266 = !{!2267, !2269, !2271, !2273, !2275, !2277, !2279, !2280, !2281, !2282, !2284, !2286, !2294, !2295, !2296}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2264, file: !2265, line: 48, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2019, line: 145, baseType: !826)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2264, file: !2265, line: 53, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2019, line: 148, baseType: !826)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2264, file: !2265, line: 61, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2019, line: 151, baseType: !826)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2264, file: !2265, line: 62, baseType: !2274, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2019, line: 150, baseType: !7)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2264, file: !2265, line: 64, baseType: !2276, size: 32, offset: 224)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2019, line: 146, baseType: !7)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2264, file: !2265, line: 65, baseType: !2278, size: 32, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2019, line: 147, baseType: !7)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2264, file: !2265, line: 67, baseType: !748, size: 32, offset: 288)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2264, file: !2265, line: 69, baseType: !2268, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2264, file: !2265, line: 74, baseType: !2018, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2264, file: !2265, line: 78, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2019, line: 174, baseType: !843)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2264, file: !2265, line: 80, baseType: !2285, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2019, line: 179, baseType: !843)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2264, file: !2265, line: 91, baseType: !2287, size: 128, offset: 576)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2288, line: 10, size: 128, elements: !2289)
!2288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2289 = !{!2290, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2287, file: !2288, line: 12, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2019, line: 160, baseType: !843)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2287, file: !2288, line: 16, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2019, line: 196, baseType: !843)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2264, file: !2265, line: 92, baseType: !2287, size: 128, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2264, file: !2265, line: 93, baseType: !2287, size: 128, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2264, file: !2265, line: 106, baseType: !2297, size: 192, offset: 960)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2293, size: 192, elements: !943)
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "__path", arg: 1, scope: !2259, file: !2260, line: 453, type: !753)
!2300 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2259, file: !2260, line: 453, type: !2263)
!2301 = !DILocation(line: 0, scope: !2259)
!2302 = !DILocation(line: 455, column: 10, scope: !2259)
!2303 = !DILocation(line: 455, column: 3, scope: !2259)
!2304 = distinct !DISubprogram(name: "lstat", scope: !2260, file: !2260, line: 460, type: !2261, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "__path", arg: 1, scope: !2304, file: !2260, line: 460, type: !753)
!2307 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2304, file: !2260, line: 460, type: !2263)
!2308 = !DILocation(line: 0, scope: !2304)
!2309 = !DILocation(line: 462, column: 10, scope: !2304)
!2310 = !DILocation(line: 462, column: 3, scope: !2304)
!2311 = distinct !DISubprogram(name: "fstat", scope: !2260, file: !2260, line: 467, type: !2312, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!748, !748, !2263}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "__fd", arg: 1, scope: !2311, file: !2260, line: 467, type: !748)
!2316 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2311, file: !2260, line: 467, type: !2263)
!2317 = !DILocation(line: 0, scope: !2311)
!2318 = !DILocation(line: 469, column: 10, scope: !2311)
!2319 = !DILocation(line: 469, column: 3, scope: !2311)
!2320 = distinct !DISubprogram(name: "fstatat", scope: !2260, file: !2260, line: 474, type: !2321, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!748, !748, !753, !2263, !748}
!2323 = !{!2324, !2325, !2326, !2327}
!2324 = !DILocalVariable(name: "__fd", arg: 1, scope: !2320, file: !2260, line: 474, type: !748)
!2325 = !DILocalVariable(name: "__filename", arg: 2, scope: !2320, file: !2260, line: 474, type: !753)
!2326 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2320, file: !2260, line: 474, type: !2263)
!2327 = !DILocalVariable(name: "__flag", arg: 4, scope: !2320, file: !2260, line: 474, type: !748)
!2328 = !DILocation(line: 0, scope: !2320)
!2329 = !DILocation(line: 477, column: 10, scope: !2320)
!2330 = !DILocation(line: 477, column: 3, scope: !2320)
!2331 = distinct !DISubprogram(name: "mknod", scope: !2260, file: !2260, line: 483, type: !2332, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!748, !753, !2274, !2268}
!2334 = !{!2335, !2336, !2337}
!2335 = !DILocalVariable(name: "__path", arg: 1, scope: !2331, file: !2260, line: 483, type: !753)
!2336 = !DILocalVariable(name: "__mode", arg: 2, scope: !2331, file: !2260, line: 483, type: !2274)
!2337 = !DILocalVariable(name: "__dev", arg: 3, scope: !2331, file: !2260, line: 483, type: !2268)
!2338 = !DILocation(line: 0, scope: !2331)
!2339 = !DILocation(line: 485, column: 10, scope: !2331)
!2340 = !DILocation(line: 485, column: 3, scope: !2331)
!2341 = distinct !DISubprogram(name: "mknodat", scope: !2260, file: !2260, line: 491, type: !2342, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!748, !748, !753, !2274, !2268}
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "__fd", arg: 1, scope: !2341, file: !2260, line: 491, type: !748)
!2346 = !DILocalVariable(name: "__path", arg: 2, scope: !2341, file: !2260, line: 491, type: !753)
!2347 = !DILocalVariable(name: "__mode", arg: 3, scope: !2341, file: !2260, line: 491, type: !2274)
!2348 = !DILocalVariable(name: "__dev", arg: 4, scope: !2341, file: !2260, line: 491, type: !2268)
!2349 = !DILocation(line: 0, scope: !2341)
!2350 = !DILocation(line: 494, column: 10, scope: !2341)
!2351 = !DILocation(line: 494, column: 3, scope: !2341)
!2352 = distinct !DISubprogram(name: "stat64", scope: !2260, file: !2260, line: 502, type: !2353, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!748, !753, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2265, line: 119, size: 1152, elements: !2357)
!2357 = !{!2358, !2359, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2371, !2372, !2373, !2374}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2356, file: !2265, line: 121, baseType: !2268, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2356, file: !2265, line: 123, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2019, line: 149, baseType: !826)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2356, file: !2265, line: 124, baseType: !2272, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2356, file: !2265, line: 125, baseType: !2274, size: 32, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2356, file: !2265, line: 132, baseType: !2276, size: 32, offset: 224)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2356, file: !2265, line: 133, baseType: !2278, size: 32, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2356, file: !2265, line: 135, baseType: !748, size: 32, offset: 288)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2356, file: !2265, line: 136, baseType: !2268, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2356, file: !2265, line: 137, baseType: !2018, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2356, file: !2265, line: 143, baseType: !2283, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2356, file: !2265, line: 144, baseType: !2370, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2019, line: 180, baseType: !843)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2356, file: !2265, line: 152, baseType: !2287, size: 128, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2356, file: !2265, line: 153, baseType: !2287, size: 128, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2356, file: !2265, line: 154, baseType: !2287, size: 128, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2356, file: !2265, line: 164, baseType: !2297, size: 192, offset: 960)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "__path", arg: 1, scope: !2352, file: !2260, line: 502, type: !753)
!2377 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2352, file: !2260, line: 502, type: !2355)
!2378 = !DILocation(line: 0, scope: !2352)
!2379 = !DILocation(line: 504, column: 10, scope: !2352)
!2380 = !DILocation(line: 504, column: 3, scope: !2352)
!2381 = distinct !DISubprogram(name: "lstat64", scope: !2260, file: !2260, line: 509, type: !2353, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2382)
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "__path", arg: 1, scope: !2381, file: !2260, line: 509, type: !753)
!2384 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2381, file: !2260, line: 509, type: !2355)
!2385 = !DILocation(line: 0, scope: !2381)
!2386 = !DILocation(line: 511, column: 10, scope: !2381)
!2387 = !DILocation(line: 511, column: 3, scope: !2381)
!2388 = distinct !DISubprogram(name: "fstat64", scope: !2260, file: !2260, line: 516, type: !2389, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!748, !748, !2355}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "__fd", arg: 1, scope: !2388, file: !2260, line: 516, type: !748)
!2393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2388, file: !2260, line: 516, type: !2355)
!2394 = !DILocation(line: 0, scope: !2388)
!2395 = !DILocation(line: 518, column: 10, scope: !2388)
!2396 = !DILocation(line: 518, column: 3, scope: !2388)
!2397 = distinct !DISubprogram(name: "fstatat64", scope: !2260, file: !2260, line: 523, type: !2398, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!748, !748, !753, !2355, !748}
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DILocalVariable(name: "__fd", arg: 1, scope: !2397, file: !2260, line: 523, type: !748)
!2402 = !DILocalVariable(name: "__filename", arg: 2, scope: !2397, file: !2260, line: 523, type: !753)
!2403 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2397, file: !2260, line: 523, type: !2355)
!2404 = !DILocalVariable(name: "__flag", arg: 4, scope: !2397, file: !2260, line: 523, type: !748)
!2405 = !DILocation(line: 0, scope: !2397)
!2406 = !DILocation(line: 526, column: 10, scope: !2397)
!2407 = !DILocation(line: 526, column: 3, scope: !2397)
!2408 = distinct !DISubprogram(name: "gate_handle_regmove", scope: !3, file: !3, line: 1351, type: !1942, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!2409 = !DILocation(line: 1353, column: 11, scope: !2408)
!2410 = !DILocation(line: 1353, column: 20, scope: !2408)
!2411 = !DILocation(line: 1353, column: 24, scope: !2408)
!2412 = !DILocation(line: 1353, column: 10, scope: !2408)
!2413 = !DILocation(line: 1353, column: 3, scope: !2408)
!2414 = distinct !DISubprogram(name: "regmove_optimize", scope: !3, file: !3, line: 1219, type: !1946, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2415 = !{!2416, !2417}
!2416 = !DILocalVariable(name: "i", scope: !2414, file: !3, line: 1221, type: !748)
!2417 = !DILocalVariable(name: "nregs", scope: !2414, file: !3, line: 1222, type: !748)
!2418 = !DILocation(line: 1222, column: 15, scope: !2414)
!2419 = !DILocation(line: 0, scope: !2414)
!2420 = !DILocation(line: 1224, column: 3, scope: !2414)
!2421 = !DILocation(line: 1225, column: 3, scope: !2414)
!2422 = !DILocation(line: 1227, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1227, column: 7)
!2424 = !DILocation(line: 1227, column: 7, scope: !2414)
!2425 = !DILocation(line: 1228, column: 29, scope: !2423)
!2426 = !DILocation(line: 1228, column: 5, scope: !2423)
!2427 = !DILocation(line: 1230, column: 3, scope: !2414)
!2428 = !DILocation(line: 1231, column: 3, scope: !2414)
!2429 = !DILocation(line: 1233, column: 21, scope: !2414)
!2430 = !DILocation(line: 1233, column: 19, scope: !2414)
!2431 = !DILocation(line: 1234, column: 8, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1234, column: 3)
!2433 = !DILocation(line: 0, scope: !2432)
!2434 = !DILocation(line: 1234, column: 19, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1234, column: 3)
!2436 = !DILocation(line: 1234, column: 23, scope: !2435)
!2437 = !DILocation(line: 1234, column: 3, scope: !2432)
!2438 = !DILocation(line: 1235, column: 5, scope: !2435)
!2439 = !DILocation(line: 1235, column: 24, scope: !2435)
!2440 = !DILocation(line: 1234, column: 3, scope: !2435)
!2441 = distinct !{!2441, !2437, !2442}
!2442 = !DILocation(line: 1235, column: 27, scope: !2432)
!2443 = !DILocation(line: 1238, column: 3, scope: !2414)
!2444 = !DILocation(line: 1241, column: 3, scope: !2414)
!2445 = !DILocation(line: 1244, column: 9, scope: !2414)
!2446 = !DILocation(line: 1244, column: 3, scope: !2414)
!2447 = !DILocation(line: 1245, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1245, column: 7)
!2449 = !DILocation(line: 1245, column: 7, scope: !2414)
!2450 = !DILocation(line: 1247, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1246, column: 5)
!2452 = !DILocation(line: 1248, column: 21, scope: !2451)
!2453 = !DILocation(line: 1249, column: 5, scope: !2451)
!2454 = !DILocation(line: 1250, column: 3, scope: !2414)
!2455 = !DILocation(line: 1251, column: 3, scope: !2414)
!2456 = !DILocation(line: 1252, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1252, column: 7)
!2458 = !DILocation(line: 1252, column: 7, scope: !2414)
!2459 = !DILocation(line: 1253, column: 5, scope: !2457)
!2460 = !DILocation(line: 1254, column: 3, scope: !2414)
!2461 = distinct !DISubprogram(name: "regmove_forward_pass", scope: !3, file: !3, line: 865, type: !2462, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null}
!2464 = !{!2465, !2466, !2467, !2474}
!2465 = !DILocalVariable(name: "bb", scope: !2461, file: !3, line: 867, type: !1290)
!2466 = !DILocalVariable(name: "insn", scope: !2461, file: !3, line: 868, type: !756)
!2467 = !DILocalVariable(name: "set", scope: !2468, file: !3, line: 880, type: !756)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 879, column: 2)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 878, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 878, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 877, column: 5)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 876, column: 3)
!2473 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 876, column: 3)
!2474 = !DILocalVariable(name: "srcregno", scope: !2475, file: !3, line: 906, type: !748)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 905, column: 7)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 903, column: 9)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 899, column: 3)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 896, column: 12)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 892, column: 6)
!2480 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 890, column: 8)
!2481 = !DILocation(line: 870, column: 9, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 870, column: 7)
!2483 = !DILocation(line: 870, column: 7, scope: !2461)
!2484 = !DILocation(line: 873, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 873, column: 7)
!2486 = !DILocation(line: 873, column: 7, scope: !2461)
!2487 = !DILocation(line: 874, column: 5, scope: !2485)
!2488 = !DILocation(line: 876, column: 3, scope: !2473)
!2489 = !DILocation(line: 876, column: 3, scope: !2472)
!2490 = !DILocation(line: 0, scope: !2473)
!2491 = !DILocation(line: 0, scope: !2461)
!2492 = !DILocation(line: 878, column: 7, scope: !2470)
!2493 = !DILocation(line: 0, scope: !2470)
!2494 = !DILocation(line: 878, column: 7, scope: !2469)
!2495 = !DILocation(line: 880, column: 14, scope: !2468)
!2496 = !DILocation(line: 0, scope: !2468)
!2497 = !DILocation(line: 881, column: 10, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 881, column: 8)
!2499 = !DILocation(line: 881, column: 8, scope: !2468)
!2500 = !DILocation(line: 884, column: 9, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 884, column: 8)
!2502 = !DILocation(line: 884, column: 34, scope: !2501)
!2503 = !DILocation(line: 885, column: 9, scope: !2501)
!2504 = !DILocation(line: 885, column: 37, scope: !2501)
!2505 = !DILocation(line: 886, column: 8, scope: !2501)
!2506 = !DILocation(line: 886, column: 11, scope: !2501)
!2507 = !DILocation(line: 887, column: 8, scope: !2501)
!2508 = !DILocation(line: 887, column: 11, scope: !2501)
!2509 = !DILocation(line: 884, column: 8, scope: !2468)
!2510 = !DILocation(line: 888, column: 6, scope: !2501)
!2511 = !DILocation(line: 890, column: 8, scope: !2480)
!2512 = !DILocation(line: 891, column: 8, scope: !2480)
!2513 = !DILocation(line: 891, column: 11, scope: !2480)
!2514 = !DILocation(line: 890, column: 8, scope: !2468)
!2515 = !DILocation(line: 896, column: 44, scope: !2478)
!2516 = !DILocation(line: 896, column: 13, scope: !2478)
!2517 = !DILocation(line: 897, column: 6, scope: !2478)
!2518 = !DILocation(line: 898, column: 8, scope: !2478)
!2519 = !DILocation(line: 897, column: 36, scope: !2478)
!2520 = !DILocation(line: 897, column: 52, scope: !2478)
!2521 = !DILocation(line: 897, column: 9, scope: !2478)
!2522 = !DILocation(line: 898, column: 5, scope: !2478)
!2523 = !DILocation(line: 898, column: 31, scope: !2478)
!2524 = !DILocation(line: 896, column: 12, scope: !2479)
!2525 = !DILocation(line: 901, column: 9, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 901, column: 9)
!2527 = !DILocation(line: 901, column: 31, scope: !2526)
!2528 = !DILocation(line: 901, column: 9, scope: !2477)
!2529 = !DILocation(line: 902, column: 34, scope: !2526)
!2530 = !DILocation(line: 902, column: 50, scope: !2526)
!2531 = !DILocation(line: 902, column: 7, scope: !2526)
!2532 = !DILocation(line: 903, column: 9, scope: !2476)
!2533 = !DILocation(line: 903, column: 25, scope: !2476)
!2534 = !DILocation(line: 903, column: 49, scope: !2476)
!2535 = !DILocation(line: 904, column: 9, scope: !2476)
!2536 = !DILocation(line: 904, column: 12, scope: !2476)
!2537 = !DILocation(line: 904, column: 29, scope: !2476)
!2538 = !DILocation(line: 904, column: 26, scope: !2476)
!2539 = !DILocation(line: 903, column: 9, scope: !2477)
!2540 = !DILocation(line: 906, column: 24, scope: !2475)
!2541 = !DILocation(line: 0, scope: !2475)
!2542 = !DILocation(line: 907, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 907, column: 13)
!2544 = !DILocation(line: 907, column: 39, scope: !2543)
!2545 = !DILocation(line: 907, column: 13, scope: !2475)
!2546 = !DILocation(line: 908, column: 4, scope: !2543)
!2547 = !DILocation(line: 909, column: 25, scope: !2475)
!2548 = !DILocation(line: 909, column: 9, scope: !2475)
!2549 = !DILocation(line: 909, column: 49, scope: !2475)
!2550 = !DILocation(line: 910, column: 7, scope: !2475)
!2551 = distinct !{!2551, !2492, !2552}
!2552 = !DILocation(line: 913, column: 2, scope: !2470)
!2553 = !DILocation(line: 0, scope: !2472)
!2554 = distinct !{!2554, !2488, !2555}
!2555 = !DILocation(line: 914, column: 5, scope: !2473)
!2556 = !DILocation(line: 915, column: 1, scope: !2461)
!2557 = distinct !DISubprogram(name: "regmove_backward_pass", scope: !3, file: !3, line: 920, type: !2462, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2579, !2580, !2581, !2582, !2583, !2584, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2601, !2605, !2608}
!2559 = !DILocalVariable(name: "bb", scope: !2557, file: !3, line: 922, type: !1290)
!2560 = !DILocalVariable(name: "insn", scope: !2557, file: !3, line: 923, type: !756)
!2561 = !DILocalVariable(name: "prev", scope: !2557, file: !3, line: 923, type: !756)
!2562 = !DILocalVariable(name: "match", scope: !2563, file: !3, line: 934, type: !2569)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 933, column: 2)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 932, column: 7)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 932, column: 7)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 929, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 928, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 928, column: 3)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match", file: !3, line: 61, size: 3840, elements: !2570)
!2570 = !{!2571, !2575, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "with", scope: !2569, file: !3, line: 62, baseType: !2572, size: 960)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 960, elements: !2573)
!2573 = !{!2574}
!2574 = !DISubrange(count: 30)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !2569, file: !3, line: 63, baseType: !2576, size: 960, offset: 960)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 960, elements: !2573)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "commutative", scope: !2569, file: !3, line: 64, baseType: !2572, size: 960, offset: 1920)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "early_clobber", scope: !2569, file: !3, line: 65, baseType: !2572, size: 960, offset: 2880)
!2579 = !DILocalVariable(name: "copy_src", scope: !2563, file: !3, line: 935, type: !756)
!2580 = !DILocalVariable(name: "copy_dst", scope: !2563, file: !3, line: 935, type: !756)
!2581 = !DILocalVariable(name: "op_no", scope: !2563, file: !3, line: 936, type: !748)
!2582 = !DILocalVariable(name: "match_no", scope: !2563, file: !3, line: 936, type: !748)
!2583 = !DILocalVariable(name: "success", scope: !2563, file: !3, line: 937, type: !748)
!2584 = !DILocalVariable(name: "set", scope: !2585, file: !3, line: 955, type: !756)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 954, column: 6)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 953, column: 4)
!2587 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 953, column: 4)
!2588 = !DILocalVariable(name: "p", scope: !2585, file: !3, line: 955, type: !756)
!2589 = !DILocalVariable(name: "src", scope: !2585, file: !3, line: 955, type: !756)
!2590 = !DILocalVariable(name: "dst", scope: !2585, file: !3, line: 955, type: !756)
!2591 = !DILocalVariable(name: "src_note", scope: !2585, file: !3, line: 956, type: !756)
!2592 = !DILocalVariable(name: "dst_note", scope: !2585, file: !3, line: 956, type: !756)
!2593 = !DILocalVariable(name: "num_calls", scope: !2585, file: !3, line: 957, type: !748)
!2594 = !DILocalVariable(name: "freq_calls", scope: !2585, file: !3, line: 957, type: !748)
!2595 = !DILocalVariable(name: "src_class", scope: !2585, file: !3, line: 958, type: !715)
!2596 = !DILocalVariable(name: "dst_class", scope: !2585, file: !3, line: 958, type: !715)
!2597 = !DILocalVariable(name: "length", scope: !2585, file: !3, line: 959, type: !748)
!2598 = !DILocalVariable(name: "comm", scope: !2599, file: !3, line: 985, type: !756)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 984, column: 3)
!2600 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 983, column: 12)
!2601 = !DILocalVariable(name: "pset", scope: !2602, file: !3, line: 1092, type: !756)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1091, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1090, column: 8)
!2604 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1090, column: 8)
!2605 = !DILocalVariable(name: "dstno", scope: !2606, file: !3, line: 1159, type: !748)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1158, column: 3)
!2607 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1157, column: 12)
!2608 = !DILocalVariable(name: "srcno", scope: !2606, file: !3, line: 1159, type: !748)
!2609 = !DILocation(line: 925, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 925, column: 7)
!2611 = !DILocation(line: 925, column: 7, scope: !2557)
!2612 = !DILocation(line: 926, column: 5, scope: !2610)
!2613 = !DILocation(line: 928, column: 3, scope: !2568)
!2614 = !DILocation(line: 0, scope: !2563)
!2615 = !DILocation(line: 928, column: 3, scope: !2567)
!2616 = !DILocation(line: 0, scope: !2568)
!2617 = !DILocation(line: 0, scope: !2557)
!2618 = !DILocation(line: 932, column: 7, scope: !2565)
!2619 = !DILocation(line: 0, scope: !2565)
!2620 = !DILocation(line: 932, column: 7, scope: !2564)
!2621 = !DILocation(line: 934, column: 4, scope: !2563)
!2622 = !DILocation(line: 939, column: 10, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 939, column: 8)
!2624 = !DILocation(line: 939, column: 8, scope: !2563)
!2625 = !DILocation(line: 942, column: 10, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 942, column: 8)
!2627 = !DILocation(line: 942, column: 8, scope: !2563)
!2628 = !DILocation(line: 0, scope: !2585)
!2629 = !DILocation(line: 0, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1081, column: 12)
!2631 = !DILocation(line: 953, column: 4, scope: !2587)
!2632 = !DILocation(line: 937, column: 8, scope: !2563)
!2633 = !DILocation(line: 952, column: 13, scope: !2563)
!2634 = !DILocation(line: 951, column: 13, scope: !2563)
!2635 = !DILocation(line: 953, column: 39, scope: !2586)
!2636 = !DILocation(line: 953, column: 26, scope: !2586)
!2637 = !DILocation(line: 961, column: 19, scope: !2585)
!2638 = !DILocation(line: 964, column: 21, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 964, column: 12)
!2640 = !DILocation(line: 964, column: 12, scope: !2585)
!2641 = !DILocation(line: 967, column: 14, scope: !2585)
!2642 = !DILocation(line: 968, column: 14, scope: !2585)
!2643 = !DILocation(line: 970, column: 13, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 970, column: 12)
!2645 = !DILocation(line: 970, column: 12, scope: !2585)
!2646 = !DILocation(line: 973, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 973, column: 12)
!2648 = !DILocation(line: 974, column: 5, scope: !2647)
!2649 = !DILocation(line: 974, column: 8, scope: !2647)
!2650 = !DILocation(line: 974, column: 20, scope: !2647)
!2651 = !DILocation(line: 975, column: 5, scope: !2647)
!2652 = !DILocation(line: 975, column: 8, scope: !2647)
!2653 = !DILocation(line: 975, column: 38, scope: !2647)
!2654 = !DILocation(line: 976, column: 5, scope: !2647)
!2655 = !DILocation(line: 976, column: 8, scope: !2647)
!2656 = !DILocation(line: 976, column: 26, scope: !2647)
!2657 = !DILocation(line: 976, column: 23, scope: !2647)
!2658 = !DILocation(line: 973, column: 12, scope: !2585)
!2659 = !DILocation(line: 980, column: 12, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 980, column: 12)
!2661 = !DILocation(line: 980, column: 12, scope: !2585)
!2662 = !DILocation(line: 983, column: 12, scope: !2600)
!2663 = !DILocation(line: 983, column: 37, scope: !2600)
!2664 = !DILocation(line: 983, column: 12, scope: !2585)
!2665 = !DILocation(line: 985, column: 16, scope: !2599)
!2666 = !DILocation(line: 0, scope: !2599)
!2667 = !DILocation(line: 986, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 986, column: 9)
!2669 = !DILocation(line: 0, scope: !2600)
!2670 = !DILocation(line: 990, column: 14, scope: !2585)
!2671 = !DILocation(line: 991, column: 14, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 991, column: 12)
!2673 = !DILocation(line: 991, column: 12, scope: !2585)
!2674 = !DILocation(line: 999, column: 12, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 999, column: 12)
!2676 = !DILocation(line: 999, column: 12, scope: !2585)
!2677 = !DILocation(line: 1004, column: 12, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1004, column: 12)
!2679 = !DILocation(line: 1004, column: 29, scope: !2678)
!2680 = !DILocation(line: 1005, column: 5, scope: !2678)
!2681 = !DILocation(line: 1005, column: 8, scope: !2678)
!2682 = !DILocation(line: 1005, column: 28, scope: !2678)
!2683 = !DILocation(line: 1004, column: 12, scope: !2585)
!2684 = !DILocation(line: 1008, column: 12, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1008, column: 12)
!2686 = !DILocation(line: 1009, column: 5, scope: !2685)
!2687 = !DILocation(line: 1009, column: 27, scope: !2685)
!2688 = !DILocation(line: 1009, column: 8, scope: !2685)
!2689 = !DILocation(line: 1009, column: 51, scope: !2685)
!2690 = !DILocation(line: 1008, column: 12, scope: !2585)
!2691 = !DILocation(line: 1013, column: 12, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1013, column: 12)
!2693 = !DILocation(line: 1013, column: 44, scope: !2692)
!2694 = !DILocation(line: 1013, column: 41, scope: !2692)
!2695 = !DILocation(line: 1013, column: 12, scope: !2585)
!2696 = !DILocation(line: 1016, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1016, column: 12)
!2698 = !DILocation(line: 1016, column: 24, scope: !2697)
!2699 = !DILocation(line: 1016, column: 12, scope: !2585)
!2700 = !DILocation(line: 1018, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1018, column: 9)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1017, column: 3)
!2703 = !DILocation(line: 1018, column: 34, scope: !2701)
!2704 = !DILocation(line: 1019, column: 9, scope: !2701)
!2705 = !DILocation(line: 1019, column: 12, scope: !2701)
!2706 = !DILocation(line: 1020, column: 9, scope: !2701)
!2707 = !DILocation(line: 1020, column: 12, scope: !2701)
!2708 = !DILocation(line: 1020, column: 36, scope: !2701)
!2709 = !DILocation(line: 1021, column: 9, scope: !2701)
!2710 = !DILocation(line: 1021, column: 12, scope: !2701)
!2711 = !DILocation(line: 1018, column: 9, scope: !2702)
!2712 = !DILocation(line: 1024, column: 5, scope: !2702)
!2713 = !DILocation(line: 1026, column: 41, scope: !2585)
!2714 = !DILocation(line: 1026, column: 20, scope: !2585)
!2715 = !DILocation(line: 1027, column: 41, scope: !2585)
!2716 = !DILocation(line: 1027, column: 20, scope: !2585)
!2717 = !DILocation(line: 1029, column: 26, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1029, column: 12)
!2719 = !DILocation(line: 1029, column: 24, scope: !2718)
!2720 = !DILocation(line: 1029, column: 12, scope: !2585)
!2721 = !DILocation(line: 1043, column: 14, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1043, column: 12)
!2723 = !DILocation(line: 1043, column: 12, scope: !2585)
!2724 = !DILocation(line: 1045, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1045, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1044, column: 3)
!2727 = !DILocation(line: 1045, column: 9, scope: !2726)
!2728 = !DILocation(line: 1050, column: 5, scope: !2726)
!2729 = !DILocation(line: 1055, column: 42, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1055, column: 12)
!2731 = !DILocation(line: 1055, column: 12, scope: !2730)
!2732 = !DILocation(line: 1055, column: 12, scope: !2585)
!2733 = !DILocation(line: 1057, column: 10, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1057, column: 9)
!2735 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1056, column: 3)
!2736 = !DILocation(line: 1057, column: 9, scope: !2735)
!2737 = !DILocation(line: 1062, column: 5, scope: !2735)
!2738 = !DILocation(line: 1070, column: 12, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1070, column: 12)
!2740 = !DILocation(line: 1070, column: 12, scope: !2585)
!2741 = !DILocation(line: 1072, column: 10, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1072, column: 9)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1071, column: 3)
!2744 = !DILocation(line: 1072, column: 9, scope: !2743)
!2745 = !DILocation(line: 1077, column: 5, scope: !2743)
!2746 = !DILocation(line: 1081, column: 12, scope: !2630)
!2747 = !DILocation(line: 1081, column: 12, scope: !2585)
!2748 = !DILocation(line: 1084, column: 12, scope: !2630)
!2749 = !DILocation(line: 1082, column: 3, scope: !2630)
!2750 = !DILocation(line: 1090, column: 13, scope: !2604)
!2751 = !DILocation(line: 957, column: 12, scope: !2585)
!2752 = !DILocation(line: 957, column: 27, scope: !2585)
!2753 = !DILocation(line: 1090, column: 20, scope: !2604)
!2754 = !DILocation(line: 0, scope: !2604)
!2755 = !DILocation(line: 1090, column: 8, scope: !2604)
!2756 = !DILocation(line: 1094, column: 11, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1094, column: 9)
!2758 = !DILocation(line: 1094, column: 9, scope: !2602)
!2759 = !DILocation(line: 1096, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1096, column: 9)
!2761 = !DILocation(line: 1096, column: 28, scope: !2760)
!2762 = !DILocation(line: 1096, column: 9, scope: !2602)
!2763 = !DILocation(line: 1099, column: 10, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1099, column: 9)
!2765 = !DILocation(line: 1099, column: 9, scope: !2602)
!2766 = !DILocation(line: 1104, column: 12, scope: !2602)
!2767 = !DILocation(line: 0, scope: !2602)
!2768 = !DILocation(line: 1105, column: 9, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1105, column: 9)
!2770 = !DILocation(line: 1105, column: 14, scope: !2769)
!2771 = !DILocation(line: 1105, column: 17, scope: !2769)
!2772 = !DILocation(line: 1105, column: 33, scope: !2769)
!2773 = !DILocation(line: 1105, column: 9, scope: !2602)
!2774 = !DILocation(line: 1112, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1106, column: 7)
!2776 = !DILocation(line: 1113, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1113, column: 13)
!2778 = !DILocation(line: 1113, column: 13, scope: !2775)
!2779 = !DILocation(line: 1115, column: 9, scope: !2775)
!2780 = !DILocation(line: 1128, column: 31, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1128, column: 9)
!2782 = !DILocation(line: 1128, column: 9, scope: !2781)
!2783 = !DILocation(line: 1128, column: 9, scope: !2602)
!2784 = !DILocation(line: 1130, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1130, column: 13)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1129, column: 7)
!2787 = !DILocation(line: 1130, column: 13, scope: !2786)
!2788 = !DILocation(line: 1131, column: 25, scope: !2785)
!2789 = !DILocation(line: 1132, column: 7, scope: !2785)
!2790 = !DILocation(line: 1131, column: 4, scope: !2785)
!2791 = !DILocation(line: 1135, column: 7, scope: !2786)
!2792 = !DILocation(line: 1136, column: 39, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1136, column: 9)
!2794 = !DILocation(line: 1136, column: 9, scope: !2793)
!2795 = !DILocation(line: 1136, column: 9, scope: !2602)
!2796 = !DILocation(line: 1138, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1138, column: 13)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1137, column: 7)
!2799 = !DILocation(line: 1138, column: 13, scope: !2798)
!2800 = !DILocation(line: 1139, column: 4, scope: !2797)
!2801 = !DILocation(line: 1142, column: 7, scope: !2798)
!2802 = !DILocation(line: 1147, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1147, column: 9)
!2804 = !DILocation(line: 1147, column: 9, scope: !2602)
!2805 = !DILocation(line: 1149, column: 18, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1148, column: 7)
!2807 = !DILocation(line: 1150, column: 23, scope: !2806)
!2808 = !DILocation(line: 1150, column: 20, scope: !2806)
!2809 = !DILocation(line: 1152, column: 13, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1152, column: 13)
!2811 = !DILocation(line: 1152, column: 47, scope: !2810)
!2812 = !DILocation(line: 1152, column: 13, scope: !2806)
!2813 = !DILocation(line: 1155, column: 3, scope: !2603)
!2814 = !DILocation(line: 1090, column: 8, scope: !2603)
!2815 = distinct !{!2815, !2755, !2816}
!2816 = !DILocation(line: 1155, column: 3, scope: !2604)
!2817 = !DILocation(line: 1157, column: 12, scope: !2607)
!2818 = !DILocation(line: 1157, column: 12, scope: !2585)
!2819 = !DILocation(line: 1162, column: 5, scope: !2606)
!2820 = !DILocation(line: 1165, column: 39, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1165, column: 9)
!2822 = !DILocation(line: 1165, column: 9, scope: !2821)
!2823 = !DILocation(line: 1165, column: 9, scope: !2606)
!2824 = !DILocation(line: 1167, column: 30, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1166, column: 7)
!2826 = !DILocation(line: 1167, column: 9, scope: !2825)
!2827 = !DILocation(line: 1167, column: 28, scope: !2825)
!2828 = !DILocation(line: 1168, column: 9, scope: !2825)
!2829 = !DILocation(line: 1168, column: 23, scope: !2825)
!2830 = !DILocation(line: 1169, column: 7, scope: !2825)
!2831 = !DILocation(line: 1172, column: 21, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1172, column: 9)
!2833 = !DILocation(line: 1172, column: 19, scope: !2832)
!2834 = !DILocation(line: 1172, column: 9, scope: !2606)
!2835 = !DILocation(line: 1173, column: 7, scope: !2832)
!2836 = !DILocation(line: 1175, column: 13, scope: !2606)
!2837 = !DILocation(line: 0, scope: !2606)
!2838 = !DILocation(line: 1176, column: 13, scope: !2606)
!2839 = !DILocation(line: 1178, column: 5, scope: !2606)
!2840 = !DILocation(line: 1179, column: 5, scope: !2606)
!2841 = !DILocation(line: 1181, column: 5, scope: !2606)
!2842 = !DILocation(line: 1181, column: 33, scope: !2606)
!2843 = !DILocation(line: 1182, column: 5, scope: !2606)
!2844 = !DILocation(line: 1182, column: 33, scope: !2606)
!2845 = !DILocation(line: 1183, column: 5, scope: !2606)
!2846 = !DILocation(line: 1183, column: 36, scope: !2606)
!2847 = !DILocation(line: 1184, column: 5, scope: !2606)
!2848 = !DILocation(line: 1184, column: 36, scope: !2606)
!2849 = !DILocation(line: 1186, column: 5, scope: !2606)
!2850 = !DILocation(line: 1186, column: 29, scope: !2606)
!2851 = !DILocation(line: 1187, column: 9, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1187, column: 9)
!2853 = !DILocation(line: 1187, column: 33, scope: !2852)
!2854 = !DILocation(line: 1187, column: 9, scope: !2606)
!2855 = !DILocation(line: 1189, column: 33, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1188, column: 7)
!2857 = !DILocation(line: 1193, column: 13, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1193, column: 13)
!2859 = !DILocation(line: 1193, column: 37, scope: !2858)
!2860 = !DILocation(line: 1193, column: 13, scope: !2856)
!2861 = !DILocation(line: 1194, column: 28, scope: !2858)
!2862 = !DILocation(line: 1194, column: 4, scope: !2858)
!2863 = !DILocation(line: 1197, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1197, column: 9)
!2865 = !DILocation(line: 1197, column: 9, scope: !2606)
!2866 = !DILocation(line: 1200, column: 16, scope: !2864)
!2867 = !DILocation(line: 1198, column: 7, scope: !2864)
!2868 = !DILocation(line: 1204, column: 17, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1204, column: 17)
!2870 = !DILocation(line: 1204, column: 40, scope: !2869)
!2871 = !DILocation(line: 1204, column: 17, scope: !2607)
!2872 = !DILocation(line: 1205, column: 3, scope: !2869)
!2873 = !DILocation(line: 953, column: 56, scope: !2586)
!2874 = !DILocation(line: 953, column: 4, scope: !2586)
!2875 = distinct !{!2875, !2631, !2876}
!2876 = !DILocation(line: 1206, column: 6, scope: !2587)
!2877 = !DILocation(line: 1210, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1210, column: 8)
!2879 = !DILocation(line: 1210, column: 29, scope: !2878)
!2880 = !DILocation(line: 1210, column: 17, scope: !2878)
!2881 = !DILocation(line: 1211, column: 6, scope: !2878)
!2882 = !DILocation(line: 1212, column: 2, scope: !2564)
!2883 = distinct !{!2883, !2618, !2884}
!2884 = !DILocation(line: 1212, column: 2, scope: !2565)
!2885 = !DILocation(line: 0, scope: !2567)
!2886 = distinct !{!2886, !2613, !2887}
!2887 = !DILocation(line: 1213, column: 5, scope: !2568)
!2888 = !DILocation(line: 1214, column: 1, scope: !2557)
!2889 = distinct !DISubprogram(name: "optimize_reg_copy_3", scope: !3, file: !3, line: 511, type: !2890, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !756, !756, !756}
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2893 = !DILocalVariable(name: "insn", arg: 1, scope: !2889, file: !3, line: 511, type: !756)
!2894 = !DILocalVariable(name: "dest", arg: 2, scope: !2889, file: !3, line: 511, type: !756)
!2895 = !DILocalVariable(name: "src", arg: 3, scope: !2889, file: !3, line: 511, type: !756)
!2896 = !DILocalVariable(name: "src_reg", scope: !2889, file: !3, line: 513, type: !756)
!2897 = !DILocalVariable(name: "src_no", scope: !2889, file: !3, line: 514, type: !748)
!2898 = !DILocalVariable(name: "dst_no", scope: !2889, file: !3, line: 515, type: !748)
!2899 = !DILocalVariable(name: "p", scope: !2889, file: !3, line: 516, type: !756)
!2900 = !DILocalVariable(name: "set", scope: !2889, file: !3, line: 516, type: !756)
!2901 = !DILocalVariable(name: "old_mode", scope: !2889, file: !3, line: 517, type: !189)
!2902 = !DILocalVariable(name: "bb", scope: !2889, file: !3, line: 518, type: !1290)
!2903 = !DILocalVariable(name: "note", scope: !2904, file: !3, line: 586, type: !756)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 585, column: 5)
!2905 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 578, column: 7)
!2906 = !DILocation(line: 0, scope: !2889)
!2907 = !DILocation(line: 513, column: 17, scope: !2889)
!2908 = !DILocation(line: 514, column: 16, scope: !2889)
!2909 = !DILocation(line: 515, column: 16, scope: !2889)
!2910 = !DILocation(line: 518, column: 20, scope: !2889)
!2911 = !DILocation(line: 520, column: 14, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 520, column: 7)
!2913 = !DILocation(line: 521, column: 17, scope: !2912)
!2914 = !DILocation(line: 521, column: 7, scope: !2912)
!2915 = !DILocation(line: 522, column: 12, scope: !2912)
!2916 = !DILocation(line: 523, column: 7, scope: !2912)
!2917 = !DILocation(line: 523, column: 10, scope: !2912)
!2918 = !DILocation(line: 523, column: 32, scope: !2912)
!2919 = !DILocation(line: 524, column: 7, scope: !2912)
!2920 = !DILocation(line: 524, column: 10, scope: !2912)
!2921 = !DILocation(line: 524, column: 30, scope: !2912)
!2922 = !DILocation(line: 520, column: 7, scope: !2889)
!2923 = !DILocation(line: 527, column: 8, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 527, column: 3)
!2925 = !DILocation(line: 0, scope: !2924)
!2926 = !DILocation(line: 527, column: 32, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 527, column: 3)
!2928 = !DILocation(line: 527, column: 37, scope: !2927)
!2929 = !DILocation(line: 527, column: 35, scope: !2927)
!2930 = !DILocation(line: 527, column: 3, scope: !2924)
!2931 = !DILocation(line: 0, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 531, column: 7)
!2933 = !DILocation(line: 531, column: 14, scope: !2932)
!2934 = !DILocation(line: 528, column: 9, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 528, column: 9)
!2936 = !DILocation(line: 528, column: 20, scope: !2935)
!2937 = !DILocation(line: 528, column: 23, scope: !2935)
!2938 = !DILocation(line: 528, column: 42, scope: !2935)
!2939 = !DILocation(line: 528, column: 9, scope: !2927)
!2940 = !DILocation(line: 527, column: 3, scope: !2927)
!2941 = distinct !{!2941, !2930, !2942}
!2942 = !DILocation(line: 529, column: 7, scope: !2924)
!2943 = !DILocation(line: 531, column: 33, scope: !2932)
!2944 = !DILocation(line: 531, column: 7, scope: !2889)
!2945 = !DILocation(line: 534, column: 16, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 534, column: 7)
!2947 = !DILocation(line: 534, column: 14, scope: !2946)
!2948 = !DILocation(line: 535, column: 7, scope: !2946)
!2949 = !DILocation(line: 535, column: 11, scope: !2946)
!2950 = !DILocation(line: 538, column: 7, scope: !2946)
!2951 = !DILocation(line: 538, column: 10, scope: !2946)
!2952 = !DILocation(line: 539, column: 7, scope: !2946)
!2953 = !DILocation(line: 539, column: 10, scope: !2946)
!2954 = !DILocation(line: 539, column: 25, scope: !2946)
!2955 = !DILocation(line: 534, column: 7, scope: !2889)
!2956 = !DILocation(line: 544, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 544, column: 7)
!2958 = !DILocation(line: 544, column: 7, scope: !2889)
!2959 = !DILocation(line: 554, column: 14, scope: !2889)
!2960 = !DILocation(line: 555, column: 3, scope: !2889)
!2961 = !DILocation(line: 556, column: 19, scope: !2889)
!2962 = !DILocation(line: 556, column: 3, scope: !2889)
!2963 = !DILocation(line: 556, column: 17, scope: !2889)
!2964 = !DILocation(line: 560, column: 24, scope: !2889)
!2965 = !DILocation(line: 560, column: 3, scope: !2889)
!2966 = !DILocation(line: 564, column: 3, scope: !2889)
!2967 = !DILocation(line: 564, column: 14, scope: !2889)
!2968 = !DILocation(line: 564, column: 31, scope: !2889)
!2969 = !DILocation(line: 566, column: 13, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 566, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 565, column: 5)
!2972 = !DILocation(line: 566, column: 11, scope: !2971)
!2973 = !DILocation(line: 571, column: 7, scope: !2971)
!2974 = !DILocation(line: 570, column: 7, scope: !2971)
!2975 = distinct !{!2975, !2966, !2976}
!2976 = !DILocation(line: 573, column: 5, scope: !2889)
!2977 = !DILocation(line: 575, column: 3, scope: !2889)
!2978 = !DILocation(line: 578, column: 9, scope: !2905)
!2979 = !DILocation(line: 578, column: 7, scope: !2889)
!2980 = !DILocation(line: 581, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 579, column: 5)
!2982 = !DILocation(line: 582, column: 21, scope: !2981)
!2983 = !DILocation(line: 583, column: 5, scope: !2981)
!2984 = !DILocation(line: 586, column: 18, scope: !2904)
!2985 = !DILocation(line: 0, scope: !2904)
!2986 = !DILocation(line: 587, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 587, column: 11)
!2988 = !DILocation(line: 587, column: 11, scope: !2904)
!2989 = !DILocation(line: 588, column: 2, scope: !2987)
!2990 = !DILocation(line: 590, column: 1, scope: !2889)
!2991 = distinct !DISubprogram(name: "optimize_reg_copy_1", scope: !3, file: !3, line: 231, type: !2992, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!748, !756, !756, !756}
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3011, !3012, !3013, !3014, !3015, !3016}
!2995 = !DILocalVariable(name: "insn", arg: 1, scope: !2991, file: !3, line: 231, type: !756)
!2996 = !DILocalVariable(name: "dest", arg: 2, scope: !2991, file: !3, line: 231, type: !756)
!2997 = !DILocalVariable(name: "src", arg: 3, scope: !2991, file: !3, line: 231, type: !756)
!2998 = !DILocalVariable(name: "p", scope: !2991, file: !3, line: 233, type: !756)
!2999 = !DILocalVariable(name: "q", scope: !2991, file: !3, line: 233, type: !756)
!3000 = !DILocalVariable(name: "note", scope: !2991, file: !3, line: 234, type: !756)
!3001 = !DILocalVariable(name: "dest_death", scope: !2991, file: !3, line: 235, type: !756)
!3002 = !DILocalVariable(name: "sregno", scope: !2991, file: !3, line: 236, type: !748)
!3003 = !DILocalVariable(name: "dregno", scope: !2991, file: !3, line: 237, type: !748)
!3004 = !DILocalVariable(name: "bb", scope: !2991, file: !3, line: 238, type: !1290)
!3005 = !DILocalVariable(name: "failed", scope: !3006, file: !3, line: 281, type: !748)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 280, column: 2)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 278, column: 11)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 251, column: 5)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 250, column: 3)
!3010 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 250, column: 3)
!3011 = !DILocalVariable(name: "d_length", scope: !3006, file: !3, line: 282, type: !748)
!3012 = !DILocalVariable(name: "s_length", scope: !3006, file: !3, line: 283, type: !748)
!3013 = !DILocalVariable(name: "d_n_calls", scope: !3006, file: !3, line: 284, type: !748)
!3014 = !DILocalVariable(name: "s_n_calls", scope: !3006, file: !3, line: 285, type: !748)
!3015 = !DILocalVariable(name: "s_freq_calls", scope: !3006, file: !3, line: 286, type: !748)
!3016 = !DILocalVariable(name: "d_freq_calls", scope: !3006, file: !3, line: 287, type: !748)
!3017 = !DILocation(line: 0, scope: !2991)
!3018 = !DILocation(line: 236, column: 16, scope: !2991)
!3019 = !DILocation(line: 237, column: 16, scope: !2991)
!3020 = !DILocation(line: 238, column: 20, scope: !2991)
!3021 = !DILocation(line: 241, column: 14, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 241, column: 7)
!3023 = !DILocation(line: 243, column: 15, scope: !3022)
!3024 = !DILocation(line: 242, column: 7, scope: !3022)
!3025 = !DILocation(line: 244, column: 18, scope: !3022)
!3026 = !DILocation(line: 0, scope: !3007)
!3027 = !DILocation(line: 250, column: 8, scope: !3010)
!3028 = !DILocation(line: 0, scope: !3010)
!3029 = !DILocation(line: 250, column: 3, scope: !3010)
!3030 = !DILocation(line: 252, column: 13, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 252, column: 11)
!3032 = !DILocation(line: 252, column: 11, scope: !3008)
!3033 = !DILocation(line: 254, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 254, column: 11)
!3035 = !DILocation(line: 254, column: 30, scope: !3034)
!3036 = !DILocation(line: 254, column: 11, scope: !3008)
!3037 = !DILocation(line: 257, column: 11, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 257, column: 11)
!3039 = !DILocation(line: 257, column: 30, scope: !3038)
!3040 = !DILocation(line: 257, column: 33, scope: !3038)
!3041 = !DILocation(line: 265, column: 4, scope: !3038)
!3042 = !DILocation(line: 272, column: 8, scope: !3038)
!3043 = !DILocation(line: 272, column: 31, scope: !3038)
!3044 = !DILocation(line: 273, column: 8, scope: !3038)
!3045 = !DILocation(line: 273, column: 41, scope: !3038)
!3046 = !DILocation(line: 273, column: 11, scope: !3038)
!3047 = !DILocation(line: 257, column: 11, scope: !3008)
!3048 = !DILocation(line: 278, column: 19, scope: !3007)
!3049 = !DILocation(line: 278, column: 58, scope: !3007)
!3050 = !DILocation(line: 279, column: 4, scope: !3007)
!3051 = !DILocation(line: 279, column: 7, scope: !3007)
!3052 = !DILocation(line: 279, column: 36, scope: !3007)
!3053 = !DILocation(line: 279, column: 33, scope: !3007)
!3054 = !DILocation(line: 278, column: 11, scope: !3008)
!3055 = !DILocation(line: 0, scope: !3006)
!3056 = !DILocation(line: 295, column: 13, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 295, column: 4)
!3058 = !DILocation(line: 0, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 355, column: 9)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 354, column: 3)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 352, column: 12)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 298, column: 6)
!3063 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 295, column: 4)
!3064 = !DILocation(line: 295, column: 9, scope: !3057)
!3065 = !DILocation(line: 282, column: 8, scope: !3006)
!3066 = !DILocation(line: 283, column: 8, scope: !3006)
!3067 = !DILocation(line: 0, scope: !3057)
!3068 = !DILocation(line: 296, column: 14, scope: !3063)
!3069 = !DILocation(line: 296, column: 11, scope: !3063)
!3070 = !DILocation(line: 295, column: 4, scope: !3057)
!3071 = !DILocation(line: 299, column: 42, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 299, column: 12)
!3073 = !DILocation(line: 299, column: 12, scope: !3072)
!3074 = !DILocation(line: 299, column: 12, scope: !3062)
!3075 = !DILocation(line: 307, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 306, column: 9)
!3077 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 300, column: 3)
!3078 = !DILocation(line: 306, column: 9, scope: !3077)
!3079 = !DILocation(line: 311, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 311, column: 14)
!3081 = !DILocation(line: 311, column: 14, scope: !3076)
!3082 = !DILocation(line: 317, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 316, column: 14)
!3084 = !DILocation(line: 316, column: 14, scope: !3080)
!3085 = !DILocation(line: 321, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 318, column: 7)
!3087 = !DILocation(line: 327, column: 13, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 327, column: 12)
!3089 = !DILocation(line: 327, column: 12, scope: !3062)
!3090 = !DILocation(line: 329, column: 13, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 328, column: 3)
!3092 = !DILocation(line: 330, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 330, column: 9)
!3094 = !DILocation(line: 330, column: 9, scope: !3091)
!3095 = !DILocation(line: 332, column: 3, scope: !3091)
!3096 = !DILocation(line: 336, column: 14, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 336, column: 12)
!3098 = !DILocation(line: 336, column: 19, scope: !3097)
!3099 = !DILocation(line: 336, column: 22, scope: !3097)
!3100 = !DILocation(line: 336, column: 12, scope: !3062)
!3101 = !DILocation(line: 340, column: 14, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 337, column: 3)
!3103 = !DILocation(line: 341, column: 21, scope: !3102)
!3104 = !DILocation(line: 341, column: 18, scope: !3102)
!3105 = !DILocation(line: 342, column: 9, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 342, column: 9)
!3107 = !DILocation(line: 342, column: 9, scope: !3102)
!3108 = !DILocation(line: 344, column: 18, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 343, column: 7)
!3110 = !DILocation(line: 345, column: 25, scope: !3109)
!3111 = !DILocation(line: 345, column: 22, scope: !3109)
!3112 = !DILocation(line: 346, column: 7, scope: !3109)
!3113 = !DILocation(line: 352, column: 23, scope: !3061)
!3114 = !DILocation(line: 353, column: 5, scope: !3061)
!3115 = !DILocation(line: 353, column: 22, scope: !3061)
!3116 = !DILocation(line: 353, column: 61, scope: !3061)
!3117 = !DILocation(line: 352, column: 12, scope: !3062)
!3118 = !DILocation(line: 355, column: 9, scope: !3059)
!3119 = !DILocation(line: 355, column: 44, scope: !3059)
!3120 = !DILocation(line: 355, column: 41, scope: !3059)
!3121 = !DILocation(line: 355, column: 9, scope: !3060)
!3122 = !DILocation(line: 358, column: 7, scope: !3059)
!3123 = !DILocation(line: 0, scope: !3062)
!3124 = !DILocation(line: 297, column: 13, scope: !3063)
!3125 = !DILocation(line: 295, column: 4, scope: !3063)
!3126 = distinct !{!3126, !3070, !3127}
!3127 = !DILocation(line: 360, column: 6, scope: !3057)
!3128 = !DILocation(line: 362, column: 10, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 362, column: 8)
!3130 = !DILocation(line: 362, column: 8, scope: !3006)
!3131 = !DILocation(line: 366, column: 19, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 366, column: 12)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 363, column: 6)
!3134 = !DILocation(line: 366, column: 12, scope: !3133)
!3135 = !DILocation(line: 368, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 368, column: 9)
!3137 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 367, column: 3)
!3138 = !DILocation(line: 368, column: 34, scope: !3136)
!3139 = !DILocation(line: 368, column: 9, scope: !3137)
!3140 = !DILocation(line: 370, column: 34, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 369, column: 7)
!3142 = !DILocation(line: 374, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 374, column: 13)
!3144 = !DILocation(line: 374, column: 38, scope: !3143)
!3145 = !DILocation(line: 374, column: 13, scope: !3141)
!3146 = !DILocation(line: 375, column: 29, scope: !3143)
!3147 = !DILocation(line: 378, column: 5, scope: !3137)
!3148 = !DILocation(line: 375, column: 4, scope: !3143)
!3149 = !DILocation(line: 378, column: 34, scope: !3137)
!3150 = !DILocation(line: 379, column: 5, scope: !3137)
!3151 = !DILocation(line: 379, column: 37, scope: !3137)
!3152 = !DILocation(line: 380, column: 3, scope: !3137)
!3153 = !DILocation(line: 383, column: 8, scope: !3133)
!3154 = !DILocation(line: 384, column: 25, scope: !3133)
!3155 = !DILocation(line: 384, column: 8, scope: !3133)
!3156 = !DILocation(line: 384, column: 23, scope: !3133)
!3157 = !DILocation(line: 385, column: 8, scope: !3133)
!3158 = !DILocation(line: 385, column: 25, scope: !3133)
!3159 = !DILocation(line: 386, column: 6, scope: !3133)
!3160 = !DILocation(line: 389, column: 10, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 389, column: 8)
!3162 = !DILocation(line: 390, column: 8, scope: !3161)
!3163 = !DILocation(line: 390, column: 25, scope: !3161)
!3164 = !DILocation(line: 390, column: 23, scope: !3161)
!3165 = !DILocation(line: 389, column: 8, scope: !3006)
!3166 = !DILocation(line: 392, column: 8, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 391, column: 6)
!3168 = !DILocation(line: 393, column: 8, scope: !3167)
!3169 = !DILocation(line: 394, column: 6, scope: !3167)
!3170 = !DILocation(line: 397, column: 8, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 397, column: 8)
!3172 = !DILocation(line: 397, column: 8, scope: !3006)
!3173 = !DILocation(line: 399, column: 31, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 398, column: 6)
!3175 = !DILocation(line: 399, column: 8, scope: !3174)
!3176 = !DILocation(line: 399, column: 29, scope: !3174)
!3177 = !DILocation(line: 400, column: 8, scope: !3174)
!3178 = !DILocation(line: 400, column: 22, scope: !3174)
!3179 = !DILocation(line: 402, column: 19, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 402, column: 12)
!3181 = !DILocation(line: 402, column: 12, scope: !3174)
!3182 = !DILocation(line: 406, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 406, column: 9)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 403, column: 3)
!3185 = !DILocation(line: 406, column: 34, scope: !3183)
!3186 = !DILocation(line: 406, column: 9, scope: !3184)
!3187 = !DILocation(line: 407, column: 32, scope: !3183)
!3188 = !DILocation(line: 408, column: 5, scope: !3184)
!3189 = !DILocation(line: 407, column: 7, scope: !3183)
!3190 = !DILocation(line: 408, column: 34, scope: !3184)
!3191 = !DILocation(line: 409, column: 5, scope: !3184)
!3192 = !DILocation(line: 409, column: 37, scope: !3184)
!3193 = !DILocation(line: 410, column: 3, scope: !3184)
!3194 = !DILocation(line: 413, column: 11, scope: !3006)
!3195 = !DILocation(line: 419, column: 9, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 418, column: 16)
!3197 = !DILocation(line: 250, column: 3, scope: !3009)
!3198 = distinct !{!3198, !3029, !3199}
!3199 = !DILocation(line: 421, column: 5, scope: !3010)
!3200 = !DILocation(line: 423, column: 1, scope: !2991)
!3201 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !3202, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!7, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !757, line: 51, baseType: !3205)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "x", arg: 1, scope: !3201, file: !568, line: 1051, type: !3204)
!3209 = !DILocation(line: 0, scope: !3201)
!3210 = !DILocation(line: 1053, column: 10, scope: !3201)
!3211 = !DILocation(line: 1053, column: 3, scope: !3201)
!3212 = distinct !DISubprogram(name: "optimize_reg_copy_2", scope: !3, file: !3, line: 440, type: !2890, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3235}
!3214 = !DILocalVariable(name: "insn", arg: 1, scope: !3212, file: !3, line: 440, type: !756)
!3215 = !DILocalVariable(name: "dest", arg: 2, scope: !3212, file: !3, line: 440, type: !756)
!3216 = !DILocalVariable(name: "src", arg: 3, scope: !3212, file: !3, line: 440, type: !756)
!3217 = !DILocalVariable(name: "p", scope: !3212, file: !3, line: 442, type: !756)
!3218 = !DILocalVariable(name: "q", scope: !3212, file: !3, line: 442, type: !756)
!3219 = !DILocalVariable(name: "set", scope: !3212, file: !3, line: 443, type: !756)
!3220 = !DILocalVariable(name: "sregno", scope: !3212, file: !3, line: 444, type: !748)
!3221 = !DILocalVariable(name: "dregno", scope: !3212, file: !3, line: 445, type: !748)
!3222 = !DILocalVariable(name: "bb", scope: !3212, file: !3, line: 446, type: !1290)
!3223 = !DILocalVariable(name: "note", scope: !3224, file: !3, line: 468, type: !756)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 467, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 466, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 465, column: 8)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 464, column: 10)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 463, column: 4)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 463, column: 4)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 458, column: 2)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 456, column: 11)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 449, column: 5)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 448, column: 3)
!3234 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 448, column: 3)
!3235 = !DILocalVariable(name: "freq", scope: !3236, file: !3, line: 482, type: !748)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 481, column: 5)
!3237 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 480, column: 7)
!3238 = !DILocation(line: 0, scope: !3212)
!3239 = !DILocation(line: 444, column: 16, scope: !3212)
!3240 = !DILocation(line: 445, column: 16, scope: !3212)
!3241 = !DILocation(line: 446, column: 20, scope: !3212)
!3242 = !DILocation(line: 0, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 497, column: 11)
!3244 = !DILocation(line: 448, column: 8, scope: !3234)
!3245 = !DILocation(line: 0, scope: !3234)
!3246 = !DILocation(line: 448, column: 3, scope: !3234)
!3247 = !DILocation(line: 450, column: 13, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 450, column: 11)
!3249 = !DILocation(line: 450, column: 11, scope: !3232)
!3250 = !DILocation(line: 452, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 452, column: 11)
!3252 = !DILocation(line: 452, column: 30, scope: !3251)
!3253 = !DILocation(line: 452, column: 11, scope: !3232)
!3254 = !DILocation(line: 455, column: 13, scope: !3232)
!3255 = !DILocation(line: 456, column: 11, scope: !3231)
!3256 = !DILocation(line: 456, column: 15, scope: !3231)
!3257 = !DILocation(line: 456, column: 18, scope: !3231)
!3258 = !DILocation(line: 456, column: 32, scope: !3231)
!3259 = !DILocation(line: 456, column: 40, scope: !3231)
!3260 = !DILocation(line: 456, column: 43, scope: !3231)
!3261 = !DILocation(line: 456, column: 58, scope: !3231)
!3262 = !DILocation(line: 457, column: 4, scope: !3231)
!3263 = !DILocation(line: 457, column: 7, scope: !3231)
!3264 = !DILocation(line: 456, column: 11, scope: !3232)
!3265 = !DILocation(line: 0, scope: !3228)
!3266 = !DILocation(line: 0, scope: !3236)
!3267 = !DILocation(line: 463, column: 4, scope: !3229)
!3268 = !DILocation(line: 0, scope: !3229)
!3269 = !DILocation(line: 463, column: 24, scope: !3228)
!3270 = !DILocation(line: 463, column: 21, scope: !3228)
!3271 = !DILocation(line: 464, column: 10, scope: !3227)
!3272 = !DILocation(line: 464, column: 10, scope: !3228)
!3273 = !DILocation(line: 466, column: 30, scope: !3225)
!3274 = !DILocation(line: 466, column: 7, scope: !3225)
!3275 = !DILocation(line: 466, column: 7, scope: !3226)
!3276 = !DILocation(line: 470, column: 34, scope: !3224)
!3277 = !DILocation(line: 470, column: 21, scope: !3224)
!3278 = !DILocation(line: 470, column: 19, scope: !3224)
!3279 = !DILocation(line: 0, scope: !3224)
!3280 = !DILocation(line: 477, column: 7, scope: !3224)
!3281 = !DILocation(line: 478, column: 5, scope: !3224)
!3282 = !DILocation(line: 480, column: 7, scope: !3237)
!3283 = !DILocation(line: 480, column: 7, scope: !3226)
!3284 = !DILocation(line: 482, column: 18, scope: !3236)
!3285 = !DILocation(line: 483, column: 7, scope: !3236)
!3286 = !DILocation(line: 483, column: 35, scope: !3236)
!3287 = !DILocation(line: 484, column: 7, scope: !3236)
!3288 = !DILocation(line: 484, column: 35, scope: !3236)
!3289 = !DILocation(line: 485, column: 7, scope: !3236)
!3290 = !DILocation(line: 485, column: 39, scope: !3236)
!3291 = !DILocation(line: 486, column: 7, scope: !3236)
!3292 = !DILocation(line: 486, column: 39, scope: !3236)
!3293 = !DILocation(line: 487, column: 5, scope: !3236)
!3294 = !DILocation(line: 463, column: 43, scope: !3228)
!3295 = !DILocation(line: 463, column: 4, scope: !3228)
!3296 = distinct !{!3296, !3267, !3297}
!3297 = !DILocation(line: 488, column: 8, scope: !3229)
!3298 = !DILocation(line: 490, column: 20, scope: !3230)
!3299 = !DILocation(line: 490, column: 4, scope: !3230)
!3300 = !DILocation(line: 491, column: 4, scope: !3230)
!3301 = !DILocation(line: 491, column: 25, scope: !3230)
!3302 = !DILocation(line: 492, column: 23, scope: !3230)
!3303 = !DILocation(line: 492, column: 4, scope: !3230)
!3304 = !DILocation(line: 493, column: 4, scope: !3230)
!3305 = !DILocation(line: 493, column: 25, scope: !3230)
!3306 = !DILocation(line: 494, column: 4, scope: !3230)
!3307 = !DILocation(line: 497, column: 11, scope: !3243)
!3308 = !DILocation(line: 498, column: 4, scope: !3243)
!3309 = !DILocation(line: 498, column: 7, scope: !3243)
!3310 = !DILocation(line: 499, column: 4, scope: !3243)
!3311 = !DILocation(line: 499, column: 8, scope: !3243)
!3312 = !DILocation(line: 499, column: 19, scope: !3243)
!3313 = !DILocation(line: 499, column: 22, scope: !3243)
!3314 = !DILocation(line: 499, column: 51, scope: !3243)
!3315 = !DILocation(line: 497, column: 11, scope: !3232)
!3316 = !DILocation(line: 448, column: 3, scope: !3233)
!3317 = distinct !{!3317, !3246, !3318}
!3318 = !DILocation(line: 501, column: 5, scope: !3234)
!3319 = !DILocation(line: 502, column: 1, scope: !3212)
!3320 = distinct !DISubprogram(name: "REG_N_SETS", scope: !3321, file: !3321, line: 90, type: !2057, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3321 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "regno", arg: 1, scope: !3320, file: !3321, line: 90, type: !748)
!3324 = !DILocation(line: 0, scope: !3320)
!3325 = !DILocation(line: 92, column: 10, scope: !3320)
!3326 = !DILocation(line: 92, column: 41, scope: !3320)
!3327 = !DILocation(line: 92, column: 3, scope: !3320)
!3328 = distinct !DISubprogram(name: "find_matches", scope: !3, file: !3, line: 1264, type: !3329, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!748, !756, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3342, !3343, !3344, !3348, !3349}
!3333 = !DILocalVariable(name: "insn", arg: 1, scope: !3328, file: !3, line: 1264, type: !756)
!3334 = !DILocalVariable(name: "matchp", arg: 2, scope: !3328, file: !3, line: 1264, type: !3331)
!3335 = !DILocalVariable(name: "likely_spilled", scope: !3328, file: !3, line: 1266, type: !2572)
!3336 = !DILocalVariable(name: "op_no", scope: !3328, file: !3, line: 1267, type: !748)
!3337 = !DILocalVariable(name: "any_matches", scope: !3328, file: !3, line: 1268, type: !748)
!3338 = !DILocalVariable(name: "p", scope: !3339, file: !3, line: 1282, type: !753)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1281, column: 5)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 1280, column: 3)
!3341 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1280, column: 3)
!3342 = !DILocalVariable(name: "c", scope: !3339, file: !3, line: 1283, type: !751)
!3343 = !DILocalVariable(name: "i", scope: !3339, file: !3, line: 1284, type: !748)
!3344 = !DILocalVariable(name: "end", scope: !3345, file: !3, line: 1319, type: !750)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1318, column: 8)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1303, column: 6)
!3347 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1301, column: 2)
!3348 = !DILocalVariable(name: "match_ul", scope: !3345, file: !3, line: 1320, type: !826)
!3349 = !DILocalVariable(name: "match", scope: !3345, file: !3, line: 1321, type: !748)
!3350 = !DILocation(line: 0, scope: !3328)
!3351 = !DILocation(line: 1266, column: 3, scope: !3328)
!3352 = !DILocation(line: 1266, column: 7, scope: !3328)
!3353 = !DILocation(line: 1270, column: 3, scope: !3328)
!3354 = !DILocation(line: 1271, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1271, column: 7)
!3356 = !DILocation(line: 1271, column: 7, scope: !3328)
!3357 = !DILocation(line: 1277, column: 27, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1277, column: 3)
!3359 = !DILocation(line: 1277, column: 8, scope: !3358)
!3360 = !DILocation(line: 0, scope: !3358)
!3361 = !DILocation(line: 1277, column: 39, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1277, column: 3)
!3363 = !DILocation(line: 1277, column: 47, scope: !3362)
!3364 = !DILocation(line: 1277, column: 3, scope: !3358)
!3365 = !DILocation(line: 0, scope: !3345)
!3366 = !DILocation(line: 1280, column: 3, scope: !3341)
!3367 = !DILocation(line: 1278, column: 27, scope: !3362)
!3368 = !DILocation(line: 1278, column: 54, scope: !3362)
!3369 = !DILocation(line: 1278, column: 5, scope: !3362)
!3370 = !DILocation(line: 1278, column: 25, scope: !3362)
!3371 = !DILocation(line: 1277, column: 3, scope: !3362)
!3372 = distinct !{!3372, !3364, !3373}
!3373 = !DILocation(line: 1278, column: 57, scope: !3358)
!3374 = !DILocation(line: 1268, column: 7, scope: !3328)
!3375 = !DILocation(line: 1280, column: 38, scope: !3340)
!3376 = !DILocation(line: 1280, column: 25, scope: !3340)
!3377 = !DILocation(line: 0, scope: !3339)
!3378 = !DILocation(line: 1286, column: 11, scope: !3339)
!3379 = !DILocation(line: 1288, column: 7, scope: !3339)
!3380 = !DILocation(line: 1288, column: 29, scope: !3339)
!3381 = !DILocation(line: 1289, column: 7, scope: !3339)
!3382 = !DILocation(line: 1289, column: 26, scope: !3339)
!3383 = !DILocation(line: 1290, column: 7, scope: !3339)
!3384 = !DILocation(line: 1290, column: 36, scope: !3339)
!3385 = !DILocation(line: 1291, column: 11, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1291, column: 11)
!3387 = !DILocation(line: 1291, column: 14, scope: !3386)
!3388 = !DILocation(line: 1291, column: 11, scope: !3339)
!3389 = !DILocation(line: 1292, column: 21, scope: !3386)
!3390 = !DILocation(line: 1292, column: 2, scope: !3386)
!3391 = !DILocation(line: 1293, column: 19, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1293, column: 16)
!3393 = !DILocation(line: 1293, column: 16, scope: !3386)
!3394 = !DILocation(line: 1294, column: 21, scope: !3392)
!3395 = !DILocation(line: 1294, column: 2, scope: !3392)
!3396 = !DILocation(line: 0, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 1296, column: 7)
!3398 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1296, column: 7)
!3399 = !DILocation(line: 1296, column: 7, scope: !3339)
!3400 = !DILocation(line: 1296, column: 13, scope: !3397)
!3401 = !DILocation(line: 1296, column: 16, scope: !3397)
!3402 = !DILocation(line: 1296, column: 7, scope: !3398)
!3403 = !DILocation(line: 0, scope: !3346)
!3404 = !DILocation(line: 1300, column: 7, scope: !3339)
!3405 = !DILocation(line: 1297, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1297, column: 6)
!3407 = !DILocation(line: 1297, column: 6, scope: !3397)
!3408 = !DILocation(line: 1296, column: 43, scope: !3397)
!3409 = !DILocation(line: 1296, column: 7, scope: !3397)
!3410 = distinct !{!3410, !3402, !3411}
!3411 = !DILocation(line: 1298, column: 5, scope: !3398)
!3412 = !DILocation(line: 1300, column: 19, scope: !3339)
!3413 = !DILocation(line: 1300, column: 23, scope: !3339)
!3414 = !DILocation(line: 1300, column: 31, scope: !3339)
!3415 = !DILocation(line: 1302, column: 12, scope: !3347)
!3416 = !DILocation(line: 1302, column: 4, scope: !3347)
!3417 = !DILocation(line: 1309, column: 37, scope: !3346)
!3418 = !DILocation(line: 1310, column: 8, scope: !3346)
!3419 = !DILocation(line: 1312, column: 35, scope: !3346)
!3420 = !DILocation(line: 1313, column: 39, scope: !3346)
!3421 = !DILocation(line: 1314, column: 8, scope: !3346)
!3422 = !DILocation(line: 1319, column: 3, scope: !3345)
!3423 = !DILocation(line: 1320, column: 28, scope: !3345)
!3424 = !DILocation(line: 1321, column: 15, scope: !3345)
!3425 = !DILocation(line: 1323, column: 7, scope: !3345)
!3426 = !DILocation(line: 1325, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1325, column: 7)
!3428 = !DILocation(line: 1325, column: 21, scope: !3427)
!3429 = !DILocation(line: 1325, column: 24, scope: !3427)
!3430 = !DILocation(line: 1325, column: 7, scope: !3345)
!3431 = distinct !{!3431, !3404, !3432}
!3432 = !DILocation(line: 1343, column: 2, scope: !3339)
!3433 = !DILocation(line: 1327, column: 23, scope: !3345)
!3434 = !DILocation(line: 1329, column: 7, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1329, column: 7)
!3436 = !DILocation(line: 1329, column: 34, scope: !3435)
!3437 = !DILocation(line: 1329, column: 7, scope: !3345)
!3438 = !DILocation(line: 1330, column: 5, scope: !3435)
!3439 = !DILocation(line: 1330, column: 46, scope: !3435)
!3440 = !DILocation(line: 1331, column: 8, scope: !3346)
!3441 = !DILocation(line: 1338, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1338, column: 10)
!3443 = !DILocation(line: 1338, column: 10, scope: !3346)
!3444 = !DILocation(line: 1339, column: 30, scope: !3442)
!3445 = !DILocation(line: 1339, column: 8, scope: !3442)
!3446 = !DILocation(line: 1342, column: 9, scope: !3347)
!3447 = !DILocation(line: 1342, column: 6, scope: !3347)
!3448 = !DILocation(line: 1280, column: 3, scope: !3340)
!3449 = distinct !{!3449, !3366, !3450}
!3450 = !DILocation(line: 1344, column: 5, scope: !3341)
!3451 = !DILocation(line: 1346, column: 1, scope: !3328)
!3452 = distinct !DISubprogram(name: "fixup_match_2", scope: !3, file: !3, line: 746, type: !3453, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!748, !756, !756, !756, !756}
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3470, !3473}
!3456 = !DILocalVariable(name: "insn", arg: 1, scope: !3452, file: !3, line: 746, type: !756)
!3457 = !DILocalVariable(name: "dst", arg: 2, scope: !3452, file: !3, line: 746, type: !756)
!3458 = !DILocalVariable(name: "src", arg: 3, scope: !3452, file: !3, line: 746, type: !756)
!3459 = !DILocalVariable(name: "offset", arg: 4, scope: !3452, file: !3, line: 746, type: !756)
!3460 = !DILocalVariable(name: "p", scope: !3452, file: !3, line: 748, type: !756)
!3461 = !DILocalVariable(name: "dst_death", scope: !3452, file: !3, line: 748, type: !756)
!3462 = !DILocalVariable(name: "length", scope: !3452, file: !3, line: 749, type: !748)
!3463 = !DILocalVariable(name: "num_calls", scope: !3452, file: !3, line: 749, type: !748)
!3464 = !DILocalVariable(name: "freq_calls", scope: !3452, file: !3, line: 749, type: !748)
!3465 = !DILocalVariable(name: "bb", scope: !3452, file: !3, line: 750, type: !1290)
!3466 = !DILocalVariable(name: "pset", scope: !3467, file: !3, line: 762, type: !756)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 761, column: 5)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 760, column: 3)
!3469 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 760, column: 3)
!3470 = !DILocalVariable(name: "newconst", scope: !3471, file: !3, line: 780, type: !843)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 779, column: 2)
!3472 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 775, column: 11)
!3473 = !DILocalVariable(name: "add", scope: !3471, file: !3, line: 782, type: !756)
!3474 = !DILocation(line: 0, scope: !3452)
!3475 = !DILocation(line: 750, column: 20, scope: !3452)
!3476 = !DILocation(line: 755, column: 40, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 755, column: 7)
!3478 = !DILocation(line: 755, column: 7, scope: !3477)
!3479 = !DILocation(line: 755, column: 7, scope: !3452)
!3480 = !DILocation(line: 0, scope: !3471)
!3481 = !DILocation(line: 0, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 784, column: 8)
!3483 = !DILocation(line: 0, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 795, column: 12)
!3485 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 785, column: 6)
!3486 = !DILocation(line: 760, column: 8, scope: !3469)
!3487 = !DILocation(line: 748, column: 10, scope: !3452)
!3488 = !DILocation(line: 760, column: 15, scope: !3469)
!3489 = !DILocation(line: 749, column: 15, scope: !3452)
!3490 = !DILocation(line: 749, column: 30, scope: !3452)
!3491 = !DILocation(line: 0, scope: !3469)
!3492 = !DILocation(line: 760, column: 3, scope: !3469)
!3493 = !DILocation(line: 764, column: 13, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 764, column: 11)
!3495 = !DILocation(line: 764, column: 11, scope: !3467)
!3496 = !DILocation(line: 766, column: 11, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 766, column: 11)
!3498 = !DILocation(line: 766, column: 30, scope: !3497)
!3499 = !DILocation(line: 766, column: 11, scope: !3467)
!3500 = !DILocation(line: 769, column: 41, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 769, column: 11)
!3502 = !DILocation(line: 769, column: 11, scope: !3501)
!3503 = !DILocation(line: 769, column: 11, scope: !3467)
!3504 = !DILocation(line: 771, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 771, column: 11)
!3506 = !DILocation(line: 771, column: 23, scope: !3505)
!3507 = !DILocation(line: 774, column: 14, scope: !3467)
!3508 = !DILocation(line: 771, column: 27, scope: !3505)
!3509 = !DILocation(line: 771, column: 11, scope: !3467)
!3510 = !DILocation(line: 0, scope: !3467)
!3511 = !DILocation(line: 775, column: 11, scope: !3472)
!3512 = !DILocation(line: 775, column: 16, scope: !3472)
!3513 = !DILocation(line: 775, column: 19, scope: !3472)
!3514 = !DILocation(line: 775, column: 35, scope: !3472)
!3515 = !DILocation(line: 776, column: 4, scope: !3472)
!3516 = !DILocation(line: 776, column: 7, scope: !3472)
!3517 = !DILocation(line: 776, column: 33, scope: !3472)
!3518 = !DILocation(line: 777, column: 4, scope: !3472)
!3519 = !DILocation(line: 777, column: 7, scope: !3472)
!3520 = !DILocation(line: 777, column: 32, scope: !3472)
!3521 = !DILocation(line: 778, column: 4, scope: !3472)
!3522 = !DILocation(line: 778, column: 7, scope: !3472)
!3523 = !DILocation(line: 775, column: 11, scope: !3467)
!3524 = !DILocation(line: 781, column: 8, scope: !3471)
!3525 = !DILocation(line: 781, column: 26, scope: !3471)
!3526 = !DILocation(line: 781, column: 24, scope: !3471)
!3527 = !DILocation(line: 782, column: 39, scope: !3471)
!3528 = !DILocation(line: 782, column: 14, scope: !3471)
!3529 = !DILocation(line: 784, column: 8, scope: !3482)
!3530 = !DILocation(line: 784, column: 12, scope: !3482)
!3531 = !DILocation(line: 784, column: 15, scope: !3482)
!3532 = !DILocation(line: 784, column: 8, scope: !3471)
!3533 = !DILocation(line: 787, column: 12, scope: !3485)
!3534 = !DILocation(line: 789, column: 19, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 788, column: 3)
!3536 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 787, column: 12)
!3537 = !DILocation(line: 789, column: 5, scope: !3535)
!3538 = !DILocation(line: 790, column: 5, scope: !3535)
!3539 = !DILocation(line: 790, column: 35, scope: !3535)
!3540 = !DILocation(line: 791, column: 5, scope: !3535)
!3541 = !DILocation(line: 791, column: 39, scope: !3535)
!3542 = !DILocation(line: 792, column: 5, scope: !3535)
!3543 = !DILocation(line: 792, column: 42, scope: !3535)
!3544 = !DILocation(line: 793, column: 3, scope: !3535)
!3545 = !DILocation(line: 795, column: 12, scope: !3484)
!3546 = !DILocation(line: 795, column: 12, scope: !3485)
!3547 = !DILocation(line: 798, column: 6, scope: !3484)
!3548 = !DILocation(line: 796, column: 3, scope: !3484)
!3549 = !DILocation(line: 831, column: 27, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 831, column: 11)
!3551 = !DILocation(line: 831, column: 11, scope: !3550)
!3552 = !DILocation(line: 831, column: 11, scope: !3467)
!3553 = !DILocation(line: 840, column: 11, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 840, column: 11)
!3555 = !DILocation(line: 840, column: 11, scope: !3467)
!3556 = !DILocation(line: 842, column: 8, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 841, column: 2)
!3558 = !DILocation(line: 844, column: 17, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 843, column: 6)
!3560 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 842, column: 8)
!3561 = !DILocation(line: 845, column: 22, scope: !3559)
!3562 = !DILocation(line: 845, column: 19, scope: !3559)
!3563 = !DILocation(line: 846, column: 6, scope: !3559)
!3564 = !DILocation(line: 848, column: 8, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 848, column: 8)
!3566 = !DILocation(line: 848, column: 42, scope: !3565)
!3567 = !DILocation(line: 848, column: 8, scope: !3557)
!3568 = !DILocation(line: 851, column: 24, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 851, column: 8)
!3570 = !DILocation(line: 851, column: 8, scope: !3569)
!3571 = !DILocation(line: 852, column: 8, scope: !3569)
!3572 = !DILocation(line: 852, column: 11, scope: !3569)
!3573 = !DILocation(line: 851, column: 8, scope: !3557)
!3574 = !DILocation(line: 855, column: 32, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 855, column: 16)
!3576 = !DILocation(line: 855, column: 16, scope: !3575)
!3577 = !DILocation(line: 855, column: 16, scope: !3554)
!3578 = !DILocation(line: 857, column: 5, scope: !3468)
!3579 = !DILocation(line: 760, column: 3, scope: !3468)
!3580 = distinct !{!3580, !3492, !3581}
!3581 = !DILocation(line: 857, column: 5, scope: !3469)
!3582 = !DILocation(line: 859, column: 3, scope: !3452)
!3583 = !DILocation(line: 860, column: 1, scope: !3452)
!3584 = distinct !DISubprogram(name: "regclass_compatible_p", scope: !3, file: !3, line: 74, type: !3585, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!748, !715, !715}
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "class0", arg: 1, scope: !3584, file: !3, line: 74, type: !715)
!3589 = !DILocalVariable(name: "class1", arg: 2, scope: !3584, file: !3, line: 74, type: !715)
!3590 = !DILocation(line: 0, scope: !3584)
!3591 = !DILocation(line: 76, column: 18, scope: !3584)
!3592 = !DILocation(line: 77, column: 4, scope: !3584)
!3593 = !DILocation(line: 77, column: 8, scope: !3584)
!3594 = !DILocation(line: 78, column: 8, scope: !3584)
!3595 = !DILocation(line: 78, column: 13, scope: !3584)
!3596 = !DILocation(line: 79, column: 8, scope: !3584)
!3597 = !DILocation(line: 80, column: 8, scope: !3584)
!3598 = !DILocation(line: 80, column: 13, scope: !3584)
!3599 = !DILocation(line: 76, column: 3, scope: !3584)
!3600 = distinct !DISubprogram(name: "reg_is_remote_constant_p", scope: !3, file: !3, line: 692, type: !3601, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!747, !756, !756}
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609}
!3604 = !DILocalVariable(name: "reg", arg: 1, scope: !3600, file: !3, line: 692, type: !756)
!3605 = !DILocalVariable(name: "insn", arg: 2, scope: !3600, file: !3, line: 692, type: !756)
!3606 = !DILocalVariable(name: "bb", scope: !3600, file: !3, line: 694, type: !1290)
!3607 = !DILocalVariable(name: "p", scope: !3600, file: !3, line: 695, type: !756)
!3608 = !DILocalVariable(name: "max", scope: !3600, file: !3, line: 696, type: !748)
!3609 = !DILocalVariable(name: "s", scope: !3610, file: !3, line: 706, type: !756)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 705, column: 4)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 704, column: 2)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 704, column: 2)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 703, column: 7)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 703, column: 7)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 699, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 698, column: 7)
!3617 = !DILocation(line: 0, scope: !3600)
!3618 = !DILocation(line: 698, column: 8, scope: !3616)
!3619 = !DILocation(line: 698, column: 7, scope: !3600)
!3620 = !DILocation(line: 700, column: 32, scope: !3615)
!3621 = !DILocation(line: 700, column: 24, scope: !3615)
!3622 = !DILocation(line: 701, column: 23, scope: !3615)
!3623 = !DILocation(line: 701, column: 21, scope: !3615)
!3624 = !DILocation(line: 703, column: 7, scope: !3614)
!3625 = !DILocation(line: 703, column: 7, scope: !3613)
!3626 = !DILocation(line: 0, scope: !3614)
!3627 = !DILocation(line: 704, column: 2, scope: !3612)
!3628 = !DILocation(line: 0, scope: !3612)
!3629 = !DILocation(line: 704, column: 2, scope: !3611)
!3630 = !DILocation(line: 708, column: 11, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 708, column: 10)
!3632 = !DILocation(line: 708, column: 10, scope: !3610)
!3633 = !DILocation(line: 710, column: 10, scope: !3610)
!3634 = !DILocation(line: 0, scope: !3610)
!3635 = !DILocation(line: 713, column: 12, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 713, column: 10)
!3637 = !DILocation(line: 714, column: 10, scope: !3636)
!3638 = !DILocation(line: 714, column: 13, scope: !3636)
!3639 = !DILocation(line: 715, column: 10, scope: !3636)
!3640 = !DILocation(line: 715, column: 25, scope: !3636)
!3641 = !DILocation(line: 715, column: 13, scope: !3636)
!3642 = !DILocation(line: 715, column: 47, scope: !3636)
!3643 = !DILocation(line: 716, column: 10, scope: !3636)
!3644 = !DILocation(line: 716, column: 13, scope: !3636)
!3645 = !DILocation(line: 713, column: 10, scope: !3610)
!3646 = !DILocation(line: 717, column: 8, scope: !3636)
!3647 = !DILocation(line: 717, column: 22, scope: !3636)
!3648 = !DILocation(line: 717, column: 44, scope: !3636)
!3649 = distinct !{!3649, !3627, !3650}
!3650 = !DILocation(line: 718, column: 4, scope: !3612)
!3651 = !DILocation(line: 0, scope: !3613)
!3652 = distinct !{!3652, !3624, !3653}
!3653 = !DILocation(line: 718, column: 4, scope: !3614)
!3654 = !DILocation(line: 721, column: 3, scope: !3600)
!3655 = !DILocation(line: 722, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 722, column: 7)
!3657 = !DILocation(line: 722, column: 21, scope: !3656)
!3658 = !DILocation(line: 722, column: 34, scope: !3656)
!3659 = !DILocation(line: 722, column: 7, scope: !3600)
!3660 = !DILocation(line: 724, column: 11, scope: !3600)
!3661 = !DILocation(line: 724, column: 25, scope: !3600)
!3662 = !DILocation(line: 724, column: 41, scope: !3600)
!3663 = !DILocation(line: 724, column: 38, scope: !3600)
!3664 = !DILocation(line: 724, column: 10, scope: !3600)
!3665 = !DILocation(line: 724, column: 3, scope: !3600)
!3666 = !DILocation(line: 725, column: 1, scope: !3600)
!3667 = distinct !DISubprogram(name: "copy_src_to_dest", scope: !3, file: !3, line: 597, type: !2890, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3679, !3680, !3681, !3682}
!3669 = !DILocalVariable(name: "insn", arg: 1, scope: !3667, file: !3, line: 597, type: !756)
!3670 = !DILocalVariable(name: "src", arg: 2, scope: !3667, file: !3, line: 597, type: !756)
!3671 = !DILocalVariable(name: "dest", arg: 3, scope: !3667, file: !3, line: 597, type: !756)
!3672 = !DILocalVariable(name: "seq", scope: !3667, file: !3, line: 599, type: !756)
!3673 = !DILocalVariable(name: "link", scope: !3667, file: !3, line: 600, type: !756)
!3674 = !DILocalVariable(name: "next", scope: !3667, file: !3, line: 601, type: !756)
!3675 = !DILocalVariable(name: "set", scope: !3667, file: !3, line: 602, type: !756)
!3676 = !DILocalVariable(name: "move_insn", scope: !3667, file: !3, line: 603, type: !756)
!3677 = !DILocalVariable(name: "p_insn_notes", scope: !3667, file: !3, line: 604, type: !3678)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!3679 = !DILocalVariable(name: "p_move_notes", scope: !3667, file: !3, line: 605, type: !3678)
!3680 = !DILocalVariable(name: "src_regno", scope: !3667, file: !3, line: 606, type: !748)
!3681 = !DILocalVariable(name: "dest_regno", scope: !3667, file: !3, line: 607, type: !748)
!3682 = !DILocalVariable(name: "old_num_regs", scope: !3683, file: !3, line: 622, type: !748)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 621, column: 5)
!3684 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 614, column: 7)
!3685 = !DILocation(line: 0, scope: !3667)
!3686 = !DILocation(line: 614, column: 7, scope: !3684)
!3687 = !DILocation(line: 615, column: 7, scope: !3684)
!3688 = !DILocation(line: 615, column: 10, scope: !3684)
!3689 = !DILocation(line: 615, column: 40, scope: !3684)
!3690 = !DILocation(line: 616, column: 7, scope: !3684)
!3691 = !DILocation(line: 616, column: 10, scope: !3684)
!3692 = !DILocation(line: 617, column: 7, scope: !3684)
!3693 = !DILocation(line: 617, column: 10, scope: !3684)
!3694 = !DILocation(line: 617, column: 41, scope: !3684)
!3695 = !DILocation(line: 618, column: 7, scope: !3684)
!3696 = !DILocation(line: 618, column: 17, scope: !3684)
!3697 = !DILocation(line: 618, column: 36, scope: !3684)
!3698 = !DILocation(line: 619, column: 7, scope: !3684)
!3699 = !DILocation(line: 619, column: 34, scope: !3684)
!3700 = !DILocation(line: 619, column: 11, scope: !3684)
!3701 = !DILocation(line: 620, column: 7, scope: !3684)
!3702 = !DILocation(line: 620, column: 10, scope: !3684)
!3703 = !DILocation(line: 620, column: 28, scope: !3684)
!3704 = !DILocation(line: 620, column: 25, scope: !3684)
!3705 = !DILocation(line: 614, column: 7, scope: !3667)
!3706 = !DILocation(line: 622, column: 26, scope: !3683)
!3707 = !DILocation(line: 0, scope: !3683)
!3708 = !DILocation(line: 625, column: 7, scope: !3683)
!3709 = !DILocation(line: 626, column: 7, scope: !3683)
!3710 = !DILocation(line: 627, column: 13, scope: !3683)
!3711 = !DILocation(line: 628, column: 7, scope: !3683)
!3712 = !DILocation(line: 630, column: 27, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 630, column: 11)
!3714 = !DILocation(line: 630, column: 24, scope: !3713)
!3715 = !DILocation(line: 631, column: 4, scope: !3713)
!3716 = !DILocation(line: 631, column: 9, scope: !3713)
!3717 = !DILocation(line: 630, column: 11, scope: !3683)
!3718 = !DILocation(line: 636, column: 15, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 632, column: 2)
!3720 = !DILocation(line: 637, column: 4, scope: !3719)
!3721 = !DILocation(line: 639, column: 7, scope: !3683)
!3722 = !DILocation(line: 640, column: 19, scope: !3683)
!3723 = !DILocation(line: 641, column: 23, scope: !3683)
!3724 = !DILocation(line: 642, column: 23, scope: !3683)
!3725 = !DILocation(line: 645, column: 19, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 645, column: 7)
!3727 = !DILocation(line: 645, column: 12, scope: !3726)
!3728 = !DILocation(line: 0, scope: !3726)
!3729 = !DILocation(line: 642, column: 20, scope: !3683)
!3730 = !DILocation(line: 645, column: 42, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 645, column: 7)
!3732 = !DILocation(line: 645, column: 7, scope: !3726)
!3733 = !DILocation(line: 647, column: 11, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 646, column: 2)
!3735 = !DILocation(line: 648, column: 8, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 648, column: 8)
!3737 = !DILocation(line: 648, column: 23, scope: !3736)
!3738 = !DILocation(line: 648, column: 8, scope: !3734)
!3739 = !DILocation(line: 650, column: 22, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 649, column: 6)
!3741 = !DILocation(line: 652, column: 6, scope: !3740)
!3742 = !DILocation(line: 655, column: 22, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 654, column: 6)
!3744 = !DILocation(line: 645, column: 7, scope: !3731)
!3745 = distinct !{!3745, !3732, !3746}
!3746 = !DILocation(line: 658, column: 2, scope: !3726)
!3747 = !DILocation(line: 660, column: 21, scope: !3683)
!3748 = !DILocation(line: 661, column: 21, scope: !3683)
!3749 = !DILocation(line: 664, column: 20, scope: !3683)
!3750 = !DILocation(line: 665, column: 7, scope: !3683)
!3751 = !DILocation(line: 666, column: 7, scope: !3683)
!3752 = !DILocation(line: 666, column: 35, scope: !3683)
!3753 = !DILocation(line: 667, column: 19, scope: !3683)
!3754 = !DILocation(line: 668, column: 13, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 668, column: 11)
!3756 = !DILocation(line: 668, column: 11, scope: !3683)
!3757 = !DILocation(line: 669, column: 2, scope: !3755)
!3758 = !DILocation(line: 669, column: 29, scope: !3755)
!3759 = !DILocation(line: 671, column: 1, scope: !3667)
!3760 = distinct !DISubprogram(name: "insn_constraint_len", scope: !3761, file: !3761, line: 177, type: !3762, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3761 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!1228, !751, !753}
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "fc", arg: 1, scope: !3760, file: !3761, line: 177, type: !751)
!3766 = !DILocalVariable(name: "str", arg: 2, scope: !3760, file: !3761, line: 177, type: !753)
!3767 = !DILocation(line: 0, scope: !3760)
!3768 = !DILocation(line: 179, column: 3, scope: !3760)
!3769 = !DILocation(line: 185, column: 1, scope: !3760)
