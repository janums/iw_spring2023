; ModuleID = 'regrename.bc'
source_filename = "regrename.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
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
%struct.VEC_du_head_p_heap = type { %struct.VEC_du_head_p_base }
%struct.VEC_du_head_p_base = type { i32, i32, [1 x %struct.du_head*] }
%struct.du_head = type { %struct.du_head*, %struct.du_chain*, %struct.du_chain*, i32, i32, i32, %struct.bitmap_head_def, i64, i8 }
%struct.du_chain = type { %struct.du_chain*, %struct.rtx_def*, %struct.rtx_def**, i16 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
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
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.df_ref_info = type { %union.df_ref_d**, i32*, i32*, i32, i32, i32, i32 }
%union.df_ref_d = type { %struct.df_extract_ref }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, %struct.rtx_def** }
%struct.df_base_ref = type { i32, %struct.rtx_def*, %struct.df_link*, %struct.df_insn_info*, %union.df_ref_d*, %union.df_ref_d*, i32, i32, i32 }
%struct.df_link = type { %union.df_ref_d*, %struct.df_link* }
%struct.df_insn_info = type { %struct.rtx_def*, %union.df_ref_d**, %union.df_ref_d**, %union.df_ref_d**, %struct.df_mw_hardreg**, i32 }
%struct.df_mw_hardreg = type { %struct.rtx_def*, i32, i32, i32, i32 }
%struct.df_reg_info = type { %union.df_ref_d*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.df_scan_bb_info = type { %union.df_ref_d**, %union.df_ref_d** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"rnreg\00", align 1
@pass_regrename = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_regrename, i32 ()* @regrename_optimize, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 157, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_rename_registers = external dso_local local_unnamed_addr global i32, align 4
@rename_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !1972
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@id_to_chain = internal global %struct.VEC_du_head_p_heap* null, align 8, !dbg !1974
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"\0ABasic block %d:\0A\00", align 1
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@global_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"Register %s in insn %d\00", align 1
@reg_names = external dso_local local_unnamed_addr global [53 x i8*], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c" crosses a call\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"; no available better choice\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", renamed as %s\0A\00", align 1
@closed_chains = internal unnamed_addr global %struct.du_head* null, align 8, !dbg !1976
@open_chains = internal unnamed_addr global %struct.du_head* null, align 8, !dbg !1978
@fail_current_block = internal unnamed_addr global i1 false, align 1, !dbg !2022
@current_id = internal unnamed_addr global i32 0, align 4, !dbg !1982
@open_chains_set = internal global %struct.bitmap_head_def zeroinitializer, align 8, !dbg !1984
@bitmap_default_obstack = external dso_local global %struct.bitmap_obstack, align 8
@live_in_chains = internal global i64 0, align 8, !dbg !1986
@live_hard_regs = internal global i64 0, align 8, !dbg !1988
@.str.6 = private unnamed_addr constant [12 x i8] c"regrename.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@which_alternative = external dso_local local_unnamed_addr global i32, align 4
@recog_data = external dso_local local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Creating chain %s (%d)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" at insn %d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@.str.11 = private unnamed_addr constant [45 x i8] c"Cannot rename chain %s (%d) at insn %d (%s)\0A\00", align 1
@scan_actions_name = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0)], align 16, !dbg !1990
@.str.12 = private unnamed_addr constant [47 x i8] c"Widening register in chain %s (%d) at insn %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failing basic block due to unhandled overlap\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Closing chain %s (%d) at insn %d (%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"terminate_write\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"terminate_dead\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"mark_all_read\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mark_read\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mark_write\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mark_access\00", align 1
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"Register %s (%d):\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" %d [%s]\00", align 1
@reg_class_names = external dso_local local_unnamed_addr global [0 x i8*], align 8
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2027 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2041, metadata !DIExpression()), !dbg !2042
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2043
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2044
  ret i32 %call, !dbg !2045
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2046 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2050
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2051
  ret i32 %call, !dbg !2052
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2107, metadata !DIExpression()), !dbg !2108
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2109
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2109
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2109
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2109
  %cmp = icmp uge i8* %0, %1, !dbg !2109
  %conv1 = zext i1 %cmp to i64, !dbg !2109
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2109
  %tobool = icmp eq i64 %expval, 0, !dbg !2109
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2109

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2109
  br label %cond.end, !dbg !2109

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2109
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2109
  %2 = load i8, i8* %0, align 1, !dbg !2109
  %conv3 = zext i8 %2 to i32, !dbg !2109
  br label %cond.end, !dbg !2109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2109
  ret i32 %cond, !dbg !2110
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2113, metadata !DIExpression()), !dbg !2114
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2115
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2115
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2115
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2115
  %cmp = icmp uge i8* %0, %1, !dbg !2115
  %conv1 = zext i1 %cmp to i64, !dbg !2115
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2115
  %tobool = icmp eq i64 %expval, 0, !dbg !2115
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2115

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2115
  br label %cond.end, !dbg !2115

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2115
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2115
  %2 = load i8, i8* %0, align 1, !dbg !2115
  %conv3 = zext i8 %2 to i32, !dbg !2115
  br label %cond.end, !dbg !2115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2115
  ret i32 %cond, !dbg !2116
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2117 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2118
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2118
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2118
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2118
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2118
  %cmp = icmp uge i8* %1, %2, !dbg !2118
  %conv1 = zext i1 %cmp to i64, !dbg !2118
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2118
  %tobool = icmp eq i64 %expval, 0, !dbg !2118
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2118

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2118
  br label %cond.end, !dbg !2118

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2118
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2118
  %3 = load i8, i8* %1, align 1, !dbg !2118
  %conv3 = zext i8 %3 to i32, !dbg !2118
  br label %cond.end, !dbg !2118

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2118
  ret i32 %cond, !dbg !2119
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2124, metadata !DIExpression()), !dbg !2125
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2126
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2127
  ret i32 %call, !dbg !2128
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2134, metadata !DIExpression()), !dbg !2135
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2136
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2136
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2136
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2136
  %cmp = icmp uge i8* %0, %1, !dbg !2136
  %conv1 = zext i1 %cmp to i64, !dbg !2136
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2136
  %tobool = icmp eq i64 %expval, 0, !dbg !2136
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2136

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2136
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2136
  br label %cond.end, !dbg !2136

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2136
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2136
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2136
  store i8 %conv2, i8* %0, align 1, !dbg !2136
  %conv6 = and i32 %__c, 255, !dbg !2136
  br label %cond.end, !dbg !2136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2136
  ret i32 %cond, !dbg !2137
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2141, metadata !DIExpression()), !dbg !2142
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2143
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2143
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2143
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2143
  %cmp = icmp uge i8* %0, %1, !dbg !2143
  %conv1 = zext i1 %cmp to i64, !dbg !2143
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2143
  %tobool = icmp eq i64 %expval, 0, !dbg !2143
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2143

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2143
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2143
  br label %cond.end, !dbg !2143

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2143
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2143
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2143
  store i8 %conv2, i8* %0, align 1, !dbg !2143
  %conv6 = and i32 %__c, 255, !dbg !2143
  br label %cond.end, !dbg !2143

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2143
  ret i32 %cond, !dbg !2144
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2145 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2147, metadata !DIExpression()), !dbg !2148
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2149
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2149
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2149
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2149
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2149
  %cmp = icmp uge i8* %1, %2, !dbg !2149
  %conv1 = zext i1 %cmp to i64, !dbg !2149
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2149
  %tobool = icmp eq i64 %expval, 0, !dbg !2149
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2149

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2149
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2149
  br label %cond.end, !dbg !2149

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2149
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2149
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2149
  store i8 %conv4, i8* %1, align 1, !dbg !2149
  %conv6 = and i32 %__c, 255, !dbg !2149
  br label %cond.end, !dbg !2149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2149
  ret i32 %cond, !dbg !2150
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2159, metadata !DIExpression()), !dbg !2160
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2161
  ret i64 %call, !dbg !2162
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2165, metadata !DIExpression()), !dbg !2166
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2167
  %0 = load i32, i32* %_flags, align 8, !dbg !2167
  %and = lshr i32 %0, 4, !dbg !2167
  %and.lobit = and i32 %and, 1, !dbg !2167
  ret i32 %and.lobit, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2171, metadata !DIExpression()), !dbg !2172
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2173
  %0 = load i32, i32* %_flags, align 8, !dbg !2173
  %and = lshr i32 %0, 5, !dbg !2173
  %and.lobit = and i32 %and, 1, !dbg !2173
  ret i32 %and.lobit, !dbg !2174
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2178, metadata !DIExpression()), !dbg !2179
  %__c.off = add i32 %__c, 128, !dbg !2180
  %0 = icmp ult i32 %__c.off, 384, !dbg !2180
  br i1 %0, label %cond.true, label %cond.end, !dbg !2180

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2181
  %1 = load i32*, i32** %call, align 8, !dbg !2182
  %idxprom = sext i32 %__c to i64, !dbg !2183
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2183
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2183
  br label %cond.end, !dbg !2184

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2184
  ret i32 %cond, !dbg !2185
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2188, metadata !DIExpression()), !dbg !2189
  %__c.off = add i32 %__c, 128, !dbg !2190
  %0 = icmp ult i32 %__c.off, 384, !dbg !2190
  br i1 %0, label %cond.true, label %cond.end, !dbg !2190

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2191
  %1 = load i32*, i32** %call, align 8, !dbg !2192
  %idxprom = sext i32 %__c to i64, !dbg !2193
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2193
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2193
  br label %cond.end, !dbg !2194

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2194
  ret i32 %cond, !dbg !2195
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2201, metadata !DIExpression()), !dbg !2202
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2203
  %conv = trunc i64 %call to i32, !dbg !2204
  ret i32 %conv, !dbg !2205
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2206 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2210, metadata !DIExpression()), !dbg !2211
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2212
  ret i64 %call, !dbg !2213
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2219, metadata !DIExpression()), !dbg !2220
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2221
  ret i64 %call, !dbg !2222
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2229, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2230, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2231, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2232, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2233, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2234, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2235, metadata !DIExpression()), !dbg !2239
  br label %while.cond, !dbg !2240

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2241
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2234, metadata !DIExpression()), !dbg !2239
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2242
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2240

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2243
  %div = lshr i64 %add, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %div, metadata !2236, metadata !DIExpression()), !dbg !2239
  %mul = mul i64 %div, %__size, !dbg !2246
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2237, metadata !DIExpression()), !dbg !2239
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %call, metadata !2238, metadata !DIExpression()), !dbg !2239
  %cmp1 = icmp slt i32 %call, 0, !dbg !2249
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2251

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2252
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2254

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2234, metadata !DIExpression()), !dbg !2239
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2239
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2234, metadata !DIExpression()), !dbg !2239
  br label %while.cond, !dbg !2240, !llvm.loop !2256

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2239
  ret i8* %retval.0, !dbg !2258
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2265, metadata !DIExpression()), !dbg !2266
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2267
  ret double %call, !dbg !2268
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2279, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %base, metadata !2280, metadata !DIExpression()), !dbg !2281
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2282
  ret i64 %call, !dbg !2283
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2284 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %base, metadata !2292, metadata !DIExpression()), !dbg !2293
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2294
  ret i64 %call, !dbg !2295
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 %base, metadata !2309, metadata !DIExpression()), !dbg !2310
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2311
  ret i64 %call, !dbg !2312
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %base, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2321
  ret i64 %call, !dbg !2322
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2364, metadata !DIExpression()), !dbg !2365
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2366
  ret i32 %call, !dbg !2367
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2371, metadata !DIExpression()), !dbg !2372
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2373
  ret i32 %call, !dbg !2374
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2375 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2380, metadata !DIExpression()), !dbg !2381
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2382
  ret i32 %call, !dbg !2383
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2384 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2388, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2391, metadata !DIExpression()), !dbg !2392
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2393
  ret i32 %call, !dbg !2394
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2395 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2402
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2405 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2412, metadata !DIExpression()), !dbg !2413
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2412, metadata !DIExpression(DW_OP_deref)), !dbg !2413
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2441, metadata !DIExpression()), !dbg !2442
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2443
  ret i32 %call, !dbg !2444
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2448, metadata !DIExpression()), !dbg !2449
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2450
  ret i32 %call, !dbg !2451
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2452 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2457, metadata !DIExpression()), !dbg !2458
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2459
  ret i32 %call, !dbg !2460
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2461 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2468, metadata !DIExpression()), !dbg !2469
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2470
  ret i32 %call, !dbg !2471
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_regrename() #5 !dbg !2472 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2473
  %cmp = icmp sgt i32 %0, 0, !dbg !2474
  %1 = load i32, i32* @flag_rename_registers, align 4, !dbg !2475
  %tobool = icmp ne i32 %1, 0, !dbg !2475
  %2 = and i1 %cmp, %tobool, !dbg !2475
  %conv = zext i1 %2 to i8, !dbg !2476
  ret i8 %conv, !dbg !2477
}

; Function Attrs: nounwind uwtable
define internal i32 @regrename_optimize() #5 !dbg !2478 {
entry:
  %tick = alloca [53 x i32], align 16
  %unavailable = alloca i64, align 8
  %this_unavailable = alloca i64, align 8
  %0 = bitcast [53 x i32]* %tick to i8*, !dbg !2507
  call void @llvm.lifetime.start.p0i8(i64 212, i8* nonnull %0) #7, !dbg !2507
  call void @llvm.dbg.declare(metadata [53 x i32]* %tick, metadata !2480, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2484, metadata !DIExpression()), !dbg !2509
  %call = tail call i32 @df_set_flags(i32 1) #6, !dbg !2510
  tail call void @df_note_add_problem() #6, !dbg !2511
  tail call void @df_analyze() #6, !dbg !2512
  %call1 = tail call i32 @df_set_flags(i32 32) #6, !dbg !2513
  %call2 = call i8* @memset(i8* nonnull %0, i32 0, i64 212) #6, !dbg !2514
  %call3 = call i32 @_obstack_begin(%struct.obstack* nonnull @rename_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2515
  store i64 0, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !2516
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2516
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !2516
  %sub.ptr.sub = sub i64 %1, %2, !dbg !2516
  %cmp = icmp slt i64 %sub.ptr.sub, 0, !dbg !2516
  %3 = inttoptr i64 %2 to i8*, !dbg !2516
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2516

cond.true:                                        ; preds = %entry
  call void @_obstack_newchunk(%struct.obstack* nonnull @rename_obstack, i32 0) #6, !dbg !2516
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !2516
  %.pre3 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !2516
  br label %cond.end, !dbg !2516

cond.end:                                         ; preds = %entry, %cond.true
  %4 = phi i8* [ %3, %entry ], [ %.pre3, %cond.true ], !dbg !2516
  %5 = phi i64 [ 0, %entry ], [ %.pre, %cond.true ], !dbg !2516
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !2516
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !2516
  %6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !2516
  %cmp4 = icmp eq i8* %add.ptr, %6, !dbg !2516
  %7 = ptrtoint i8* %6 to i64, !dbg !2516
  %8 = ptrtoint i8* %add.ptr to i64, !dbg !2516
  br i1 %cmp4, label %cond.true6, label %cond.end8, !dbg !2516

cond.true6:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !2516
  %bf.set = or i8 %bf.load, 2, !dbg !2516
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !2516
  br label %cond.end8, !dbg !2516

cond.end8:                                        ; preds = %cond.end, %cond.true6
  store i64 %7, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !2516
  %9 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 6), align 8, !dbg !2516
  %conv14 = sext i32 %9 to i64, !dbg !2516
  %add = add nsw i64 %8, %conv14, !dbg !2516
  %neg = xor i32 %9, -1, !dbg !2516
  %conv15 = sext i32 %neg to i64, !dbg !2516
  %and = and i64 %add, %conv15, !dbg !2516
  %10 = inttoptr i64 %and to i8*, !dbg !2516
  store i8* %10, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !2516
  %11 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2516
  %sub.ptr.sub18 = sub i64 %and, %11, !dbg !2516
  %12 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2516
  %sub.ptr.sub21 = sub i64 %12, %11, !dbg !2516
  %cmp22 = icmp sgt i64 %sub.ptr.sub18, %sub.ptr.sub21, !dbg !2516
  br i1 %cmp22, label %cond.true24, label %cond.end26, !dbg !2516

cond.true24:                                      ; preds = %cond.end8
  store i64 %12, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !2516
  br label %cond.end26, !dbg !2516

cond.end26:                                       ; preds = %cond.end8, %cond.true24
  %13 = phi i64 [ %and, %cond.end8 ], [ %12, %cond.true24 ], !dbg !2516
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2) to i64*), align 8, !dbg !2516
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2517
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !2517
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2517
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !2517
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2517
  %17 = bitcast i64* %unavailable to i8*, !dbg !2518
  %18 = bitcast i64* %this_unavailable to i8*, !dbg !2519
  br label %for.cond, !dbg !2517

for.cond:                                         ; preds = %cond.end253, %cond.end26
  %19 = phi %struct.control_flow_graph* [ %15, %cond.end26 ], [ %.pre5, %cond.end253 ], !dbg !2520
  %.pn = phi %struct.basic_block_def* [ %16, %cond.end26 ], [ %bb.0, %cond.end253 ]
  %this_tick.0 = phi i32 [ 0, %cond.end26 ], [ %this_tick.1.lcssa, %cond.end253 ], !dbg !2521
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2522
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %this_tick.0, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2485, metadata !DIExpression()), !dbg !2509
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !2520
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2520
  %cmp31 = icmp eq %struct.basic_block_def* %bb.0, %20, !dbg !2520
  br i1 %cmp31, label %for.end257, label %for.body, !dbg !2517

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.du_head* null, metadata !2487, metadata !DIExpression()), !dbg !2518
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2523
  %call33 = call fastcc %struct.VEC_du_head_p_heap* @VEC_du_head_p_heap_alloc(i32 0) #8, !dbg !2524
  store %struct.VEC_du_head_p_heap* %call33, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !2525
  call void @llvm.dbg.value(metadata i64 0, metadata !2491, metadata !DIExpression()), !dbg !2518
  store i64 0, i64* %unavailable, align 8, !dbg !2526
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2527
  %tobool = icmp eq %struct._IO_FILE* %21, null, !dbg !2527
  br i1 %tobool, label %if.end, label %if.then, !dbg !2529

if.then:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2530
  %22 = load i32, i32* %index, align 8, !dbg !2530
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %22) #6, !dbg !2531
  br label %if.end, !dbg !2531

if.end:                                           ; preds = %for.body, %if.then
  %call35 = call fastcc %struct.du_head* @build_def_use(%struct.basic_block_def* %bb.0) #8, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.du_head* %call35, metadata !2487, metadata !DIExpression()), !dbg !2518
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2533
  %tobool36 = icmp eq %struct._IO_FILE* %23, null, !dbg !2533
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2535

if.then37:                                        ; preds = %if.end
  call fastcc void @dump_def_use_chain(%struct.du_head* %call35) #8, !dbg !2536
  br label %if.end38, !dbg !2536

if.end38:                                         ; preds = %if.end, %if.then37
  call void @llvm.dbg.value(metadata i64 0, metadata !2491, metadata !DIExpression()), !dbg !2518
  store i64 0, i64* %unavailable, align 8, !dbg !2537
  %24 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 41), align 1, !dbg !2538
  %tobool39 = icmp eq i8 %24, 0, !dbg !2538
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !2540

if.then40:                                        ; preds = %if.end38
  call void @llvm.dbg.value(metadata i64* %unavailable, metadata !2491, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call fastcc void @add_to_hard_reg_set(i64* nonnull %unavailable, i32 16, i32 20) #8, !dbg !2541
  call void @llvm.dbg.value(metadata i64* %unavailable, metadata !2491, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call fastcc void @add_to_hard_reg_set(i64* nonnull %unavailable, i32 16, i32 6) #8, !dbg !2543
  br label %if.end41, !dbg !2544

if.end41:                                         ; preds = %if.end38, %if.then40
  br label %while.cond, !dbg !2545

while.cond:                                       ; preds = %cleanup227, %if.end41
  %all_chains.0 = phi %struct.du_head* [ %call35, %if.end41 ], [ %26, %cleanup227 ], !dbg !2518
  %this_tick.1 = phi i32 [ %this_tick.0, %if.end41 ], [ %this_tick.2, %cleanup227 ], !dbg !2521
  call void @llvm.dbg.value(metadata i32 %this_tick.1, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata %struct.du_head* %all_chains.0, metadata !2487, metadata !DIExpression()), !dbg !2518
  %tobool42 = icmp eq %struct.du_head* %all_chains.0, null, !dbg !2545
  br i1 %tobool42, label %while.end, label %while.body, !dbg !2545

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.du_head* %all_chains.0, metadata !2497, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2546
  %regno = getelementptr inbounds %struct.du_head, %struct.du_head* %all_chains.0, i64 0, i32 3, !dbg !2547
  %25 = load i32, i32* %regno, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %25, metadata !2500, metadata !DIExpression()), !dbg !2519
  %next_chain = getelementptr inbounds %struct.du_head, %struct.du_head* %all_chains.0, i64 0, i32 0, !dbg !2548
  %26 = load %struct.du_head*, %struct.du_head** %next_chain, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.du_head* %26, metadata !2487, metadata !DIExpression()), !dbg !2518
  %cannot_rename = getelementptr inbounds %struct.du_head, %struct.du_head* %all_chains.0, i64 0, i32 8, !dbg !2549
  %bf.load43 = load i8, i8* %cannot_rename, align 8, !dbg !2549
  %bf.clear44 = and i8 %bf.load43, 4, !dbg !2549
  %tobool45 = icmp eq i8 %bf.clear44, 0, !dbg !2551
  br i1 %tobool45, label %if.end47, label %cleanup227, !dbg !2552, !llvm.loop !2553

if.end47:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 %25, metadata !2494, metadata !DIExpression()), !dbg !2519
  %nregs = getelementptr inbounds %struct.du_head, %struct.du_head* %all_chains.0, i64 0, i32 4, !dbg !2555
  %27 = load i32, i32* %nregs, align 4, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %27, metadata !2495, metadata !DIExpression()), !dbg !2519
  %idxprom = sext i32 %25 to i64, !dbg !2556
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %idxprom, !dbg !2556
  %28 = load i8, i8* %arrayidx, align 1, !dbg !2556
  %tobool49 = icmp eq i8 %28, 0, !dbg !2556
  br i1 %tobool49, label %lor.lhs.false, label %cleanup227, !dbg !2558, !llvm.loop !2553

lor.lhs.false:                                    ; preds = %if.end47
  %arrayidx51 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %idxprom, !dbg !2559
  %29 = load i8, i8* %arrayidx51, align 1, !dbg !2559
  %tobool53 = icmp eq i8 %29, 0, !dbg !2559
  br i1 %tobool53, label %lor.lhs.false54, label %cleanup227, !dbg !2560, !llvm.loop !2553

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %30 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 41), align 1, !dbg !2561
  %tobool56 = icmp ne i8 %30, 0, !dbg !2561
  %cmp57 = icmp eq i32 %25, 6, !dbg !2562
  %or.cond = and i1 %tobool56, %cmp57, !dbg !2563
  br i1 %or.cond, label %cleanup227, label %if.end60, !dbg !2563, !llvm.loop !2553

if.end60:                                         ; preds = %lor.lhs.false54
  %31 = load i64, i64* %unavailable, align 8, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %31, metadata !2491, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %31, metadata !2499, metadata !DIExpression()), !dbg !2519
  store i64 %31, i64* %this_unavailable, align 8, !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2519
  %first = getelementptr inbounds %struct.du_head, %struct.du_head* %all_chains.0, i64 0, i32 1, !dbg !2565
  br label %for.cond61, !dbg !2567

for.cond61:                                       ; preds = %for.inc, %if.end60
  %32 = phi i64 [ %31, %if.end60 ], [ %36, %for.inc ]
  %tmp.0.in = phi %struct.du_chain** [ %first, %if.end60 ], [ %next_use, %for.inc ]
  %n_uses.0 = phi i32 [ 0, %if.end60 ], [ %n_uses.1, %for.inc ], !dbg !2568
  %tmp.0 = load %struct.du_chain*, %struct.du_chain** %tmp.0.in, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %n_uses.0, metadata !2496, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.du_chain* %tmp.0, metadata !2498, metadata !DIExpression()), !dbg !2519
  %tobool62 = icmp eq %struct.du_chain* %tmp.0, null, !dbg !2570
  br i1 %tobool62, label %for.end, label %for.body63, !dbg !2570

for.body63:                                       ; preds = %for.cond61
  %insn = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.0, i64 0, i32 1, !dbg !2571
  %33 = bitcast %struct.rtx_def** %insn to i32**, !dbg !2571
  %34 = load i32*, i32** %33, align 8, !dbg !2571
  %bf.load64 = load i32, i32* %34, align 8, !dbg !2571
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !2571
  %cmp66 = icmp eq i32 %bf.clear65, 7, !dbg !2571
  br i1 %cmp66, label %for.inc, label %if.end69, !dbg !2575

if.end69:                                         ; preds = %for.body63
  %inc = add nsw i32 %n_uses.0, 1, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2496, metadata !DIExpression()), !dbg !2519
  %cl = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.0, i64 0, i32 3, !dbg !2577
  %bf.load70 = load i16, i16* %cl, align 8, !dbg !2577
  %idxprom72 = zext i16 %bf.load70 to i64, !dbg !2577
  %arrayidx73 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom72, !dbg !2577
  %35 = load i64, i64* %arrayidx73, align 8, !dbg !2577
  %neg74 = xor i64 %35, -1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %32, metadata !2499, metadata !DIExpression()), !dbg !2519
  %or = or i64 %32, %neg74, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %or, metadata !2499, metadata !DIExpression()), !dbg !2519
  store i64 %or, i64* %this_unavailable, align 8, !dbg !2577
  br label %for.inc, !dbg !2578

for.inc:                                          ; preds = %for.body63, %if.end69
  %36 = phi i64 [ %or, %if.end69 ], [ %32, %for.body63 ]
  %n_uses.1 = phi i32 [ %inc, %if.end69 ], [ %n_uses.0, %for.body63 ], !dbg !2519
  call void @llvm.dbg.value(metadata i32 %n_uses.1, metadata !2496, metadata !DIExpression()), !dbg !2519
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.0, i64 0, i32 0, !dbg !2579
  br label %for.cond61, !dbg !2580, !llvm.loop !2581

for.end:                                          ; preds = %for.cond61
  %.lcssa = phi i64 [ %32, %for.cond61 ]
  %n_uses.0.lcssa = phi i32 [ %n_uses.0, %for.cond61 ], !dbg !2568
  call void @llvm.dbg.value(metadata i32 %n_uses.0.lcssa, metadata !2496, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %n_uses.0.lcssa, metadata !2496, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %n_uses.0.lcssa, metadata !2496, metadata !DIExpression()), !dbg !2519
  %cmp75 = icmp slt i32 %n_uses.0.lcssa, 2, !dbg !2583
  br i1 %cmp75, label %cleanup227, label %if.end78, !dbg !2585, !llvm.loop !2553

if.end78:                                         ; preds = %for.end
  %bf.clear81 = and i8 %bf.load43, 2, !dbg !2586
  %tobool83 = icmp eq i8 %bf.clear81, 0, !dbg !2588
  br i1 %tobool83, label %if.end86, label %if.then84, !dbg !2589

if.then84:                                        ; preds = %if.end78
  %37 = load i64, i64* @call_used_reg_set, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !2499, metadata !DIExpression()), !dbg !2519
  %or85 = or i64 %.lcssa, %37, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %or85, metadata !2499, metadata !DIExpression()), !dbg !2519
  store i64 %or85, i64* %this_unavailable, align 8, !dbg !2590
  br label %if.end86, !dbg !2590

if.end86:                                         ; preds = %if.end78, %if.then84
  call void @llvm.dbg.value(metadata i64* %this_unavailable, metadata !2499, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  call fastcc void @merge_overlapping_regs(i64* nonnull %this_unavailable, %struct.du_head* nonnull %all_chains.0) #8, !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2492, metadata !DIExpression()), !dbg !2519
  br label %for.cond87, !dbg !2592

for.cond87:                                       ; preds = %cleanup, %if.end86
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end86 ], !dbg !2593
  %best_nregs.0 = phi i32 [ %best_nregs.3, %cleanup ], [ %27, %if.end86 ], !dbg !2593
  %best_new_reg.0 = phi i32 [ %best_new_reg.3, %cleanup ], [ %25, %if.end86 ], !dbg !2594
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2492, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_new_reg.0, metadata !2494, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_nregs.0, metadata !2495, metadata !DIExpression()), !dbg !2519
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2595
  br i1 %exitcond, label %for.end186, label %for.body90, !dbg !2596

for.body90:                                       ; preds = %for.cond87
  %38 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !2597
  %loc = getelementptr inbounds %struct.du_chain, %struct.du_chain* %38, i64 0, i32 2, !dbg !2597
  %39 = bitcast %struct.rtx_def*** %loc to i32***, !dbg !2597
  %40 = load i32**, i32*** %39, align 8, !dbg !2597
  %41 = load i32*, i32** %40, align 8, !dbg !2597
  %bf.load92 = load i32, i32* %41, align 8, !dbg !2597
  %bf.lshr93 = lshr i32 %bf.load92, 16, !dbg !2597
  %bf.clear94 = and i32 %bf.lshr93, 255, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %bf.clear94, metadata !2502, metadata !DIExpression()), !dbg !2598
  %idxprom98 = zext i32 %bf.clear94 to i64, !dbg !2599
  %arrayidx99 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %indvars.iv, i64 %idxprom98, !dbg !2599
  %42 = load i8, i8* %arrayidx99, align 1, !dbg !2599
  %conv100 = zext i8 %42 to i32, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %conv100, metadata !2506, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 %conv100, metadata !2501, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2519
  br label %for.cond101, !dbg !2600

for.cond101:                                      ; preds = %for.inc137, %for.body90
  %i.0.in = phi i32 [ %conv100, %for.body90 ], [ %i.0, %for.inc137 ]
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2501, metadata !DIExpression()), !dbg !2519
  %cmp102 = icmp sgt i32 %i.0.in, 0, !dbg !2603
  br i1 %cmp102, label %for.body104, label %for.end138, !dbg !2605

for.body104:                                      ; preds = %for.cond101
  %43 = load i64, i64* %this_unavailable, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %43, metadata !2499, metadata !DIExpression()), !dbg !2519
  %44 = trunc i64 %indvars.iv to i32, !dbg !2606
  %add105 = add nsw i32 %i.0, %44, !dbg !2606
  %sh_prom = zext i32 %add105 to i64, !dbg !2606
  %shl = shl i64 1, %sh_prom, !dbg !2606
  %and106 = and i64 %43, %shl, !dbg !2606
  %tobool107 = icmp eq i64 %and106, 0, !dbg !2606
  br i1 %tobool107, label %lor.lhs.false108, label %for.end138, !dbg !2608

lor.lhs.false108:                                 ; preds = %for.body104
  %idxprom110 = sext i32 %add105 to i64, !dbg !2609
  %arrayidx111 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %idxprom110, !dbg !2609
  %45 = load i8, i8* %arrayidx111, align 1, !dbg !2609
  %tobool113 = icmp eq i8 %45, 0, !dbg !2609
  br i1 %tobool113, label %lor.lhs.false114, label %for.end138, !dbg !2610

lor.lhs.false114:                                 ; preds = %lor.lhs.false108
  %arrayidx117 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %idxprom110, !dbg !2611
  %46 = load i8, i8* %arrayidx117, align 1, !dbg !2611
  %tobool119 = icmp eq i8 %46, 0, !dbg !2611
  br i1 %tobool119, label %lor.lhs.false120, label %for.end138, !dbg !2612

lor.lhs.false120:                                 ; preds = %lor.lhs.false114
  %call122 = call zeroext i8 @df_regs_ever_live_p(i32 %add105) #6, !dbg !2613
  %tobool123 = icmp eq i8 %call122, 0, !dbg !2613
  br i1 %tobool123, label %land.lhs.true124, label %lor.lhs.false129, !dbg !2614

land.lhs.true124:                                 ; preds = %lor.lhs.false120
  %arrayidx127 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %idxprom110, !dbg !2615
  %47 = load i8, i8* %arrayidx127, align 1, !dbg !2615
  %tobool128 = icmp eq i8 %47, 0, !dbg !2615
  br i1 %tobool128, label %for.end138, label %lor.lhs.false129, !dbg !2616

lor.lhs.false129:                                 ; preds = %land.lhs.true124, %lor.lhs.false120
  %add130 = add nsw i32 %25, %i.0, !dbg !2617
  %48 = and i32 %add130, -8, !dbg !2617
  %cmp133 = icmp eq i32 %48, 8, !dbg !2617
  br i1 %cmp133, label %for.end138, label %for.inc137, !dbg !2618

for.inc137:                                       ; preds = %lor.lhs.false129
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2501, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2519
  br label %for.cond101, !dbg !2619, !llvm.loop !2620

for.end138:                                       ; preds = %land.lhs.true124, %lor.lhs.false114, %lor.lhs.false108, %for.body104, %lor.lhs.false129, %for.cond101
  %cmp102.lcssa = phi i1 [ %cmp102, %land.lhs.true124 ], [ %cmp102, %lor.lhs.false114 ], [ %cmp102, %lor.lhs.false108 ], [ %cmp102, %for.body104 ], [ %cmp102, %lor.lhs.false129 ], [ %cmp102, %for.cond101 ], !dbg !2603
  br i1 %cmp102.lcssa, label %cleanup, label %if.end142, !dbg !2622

if.end142:                                        ; preds = %for.end138
  br label %for.cond144, !dbg !2623

for.cond144:                                      ; preds = %lor.lhs.false159, %if.end142
  %tmp.1.in = phi %struct.du_chain** [ %first, %if.end142 ], [ %next_use170, %lor.lhs.false159 ]
  %tmp.1 = load %struct.du_chain*, %struct.du_chain** %tmp.1.in, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.du_chain* %tmp.1, metadata !2498, metadata !DIExpression()), !dbg !2519
  %cond = icmp eq %struct.du_chain* %tmp.1, null, !dbg !2626
  br i1 %cond, label %if.then173.loopexit, label %for.body146, !dbg !2626

for.body146:                                      ; preds = %for.cond144
  %loc147 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.1, i64 0, i32 2, !dbg !2627
  %49 = bitcast %struct.rtx_def*** %loc147 to i32***, !dbg !2627
  %50 = load i32**, i32*** %49, align 8, !dbg !2627
  %51 = load i32*, i32** %50, align 8, !dbg !2627
  %bf.load148 = load i32, i32* %51, align 8, !dbg !2627
  %bf.lshr149 = lshr i32 %bf.load148, 16, !dbg !2627
  %bf.clear150 = and i32 %bf.lshr149, 255, !dbg !2627
  %52 = trunc i64 %indvars.iv to i32, !dbg !2627
  %call151 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 %52, i32 %bf.clear150) #6, !dbg !2627
  %tobool152 = icmp eq i8 %call151, 0, !dbg !2627
  br i1 %tobool152, label %land.lhs.true153, label %lor.lhs.false159, !dbg !2630

land.lhs.true153:                                 ; preds = %for.body146
  %insn154 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.1, i64 0, i32 1, !dbg !2631
  %53 = bitcast %struct.rtx_def** %insn154 to i32**, !dbg !2631
  %54 = load i32*, i32** %53, align 8, !dbg !2631
  %bf.load155 = load i32, i32* %54, align 8, !dbg !2631
  %bf.clear156 = and i32 %bf.load155, 65535, !dbg !2631
  %cmp157 = icmp eq i32 %bf.clear156, 7, !dbg !2631
  br i1 %cmp157, label %lor.lhs.false159, label %for.end171, !dbg !2632

lor.lhs.false159:                                 ; preds = %for.body146, %land.lhs.true153
  %next_use170 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %tmp.1, i64 0, i32 0, !dbg !2633
  br label %for.cond144, !dbg !2634, !llvm.loop !2635

for.end171:                                       ; preds = %land.lhs.true153
  br label %cleanup, !dbg !2637

if.then173.loopexit:                              ; preds = %for.cond144
  %idxprom174 = sext i32 %best_new_reg.0 to i64, !dbg !2638
  %arrayidx175 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i64 0, i64 %idxprom174, !dbg !2638
  %55 = load i32, i32* %arrayidx175, align 4, !dbg !2638
  %arrayidx177 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i64 0, i64 %indvars.iv, !dbg !2642
  %56 = load i32, i32* %arrayidx177, align 4, !dbg !2642
  %cmp178 = icmp sgt i32 %55, %56, !dbg !2643
  %spec.select = select i1 %cmp178, i32 %conv100, i32 %best_nregs.0, !dbg !2644
  %57 = trunc i64 %indvars.iv to i32, !dbg !2644
  %spec.select1 = select i1 %cmp178, i32 %57, i32 %best_new_reg.0, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2494, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2495, metadata !DIExpression()), !dbg !2519
  br label %cleanup, !dbg !2645

cleanup:                                          ; preds = %for.end171, %if.then173.loopexit, %for.end138
  %best_nregs.3 = phi i32 [ %best_nregs.0, %for.end138 ], [ %best_nregs.0, %for.end171 ], [ %spec.select, %if.then173.loopexit ], !dbg !2593
  %best_new_reg.3 = phi i32 [ %best_new_reg.0, %for.end138 ], [ %best_new_reg.0, %for.end171 ], [ %spec.select1, %if.then173.loopexit ], !dbg !2594
  call void @llvm.dbg.value(metadata i32 %best_new_reg.3, metadata !2494, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_nregs.3, metadata !2495, metadata !DIExpression()), !dbg !2519
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond87, !dbg !2647, !llvm.loop !2648

for.end186:                                       ; preds = %for.cond87
  %best_nregs.0.lcssa = phi i32 [ %best_nregs.0, %for.cond87 ], !dbg !2593
  %best_new_reg.0.lcssa = phi i32 [ %best_new_reg.0, %for.cond87 ], !dbg !2594
  call void @llvm.dbg.value(metadata i32 %best_nregs.0.lcssa, metadata !2495, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_new_reg.0.lcssa, metadata !2494, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_nregs.0.lcssa, metadata !2495, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_new_reg.0.lcssa, metadata !2494, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_nregs.0.lcssa, metadata !2495, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %best_new_reg.0.lcssa, metadata !2494, metadata !DIExpression()), !dbg !2519
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2650
  %tobool187 = icmp eq %struct._IO_FILE* %58, null, !dbg !2650
  br i1 %tobool187, label %if.end204, label %if.then188, !dbg !2652

if.then188:                                       ; preds = %for.end186
  %arrayidx190 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !2653
  %59 = load i8*, i8** %arrayidx190, align 8, !dbg !2653
  %60 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !2655
  %insn192 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %60, i64 0, i32 1, !dbg !2655
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn192, align 8, !dbg !2655
  %arrayidx193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2655
  %rt_int = bitcast %union.rtunion_def* %arrayidx193 to i32*, !dbg !2655
  %62 = load i32, i32* %rt_int, align 8, !dbg !2655
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %62) #6, !dbg !2656
  %bf.load196 = load i8, i8* %cannot_rename, align 8, !dbg !2657
  %bf.clear198 = and i8 %bf.load196, 2, !dbg !2657
  %tobool200 = icmp eq i8 %bf.clear198, 0, !dbg !2659
  br i1 %tobool200, label %if.end204, label %if.then201, !dbg !2660

if.then201:                                       ; preds = %if.then188
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2661
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2662
  br label %if.end204, !dbg !2662

if.end204:                                        ; preds = %if.then188, %for.end186, %if.then201
  %cmp205 = icmp eq i32 %best_new_reg.0.lcssa, %25, !dbg !2663
  br i1 %cmp205, label %if.then207, label %if.end215, !dbg !2665

if.then207:                                       ; preds = %if.end204
  %inc208 = add nsw i32 %this_tick.1, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i32 %inc208, metadata !2484, metadata !DIExpression()), !dbg !2509
  %arrayidx210 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i64 0, i64 %idxprom, !dbg !2668
  store i32 %inc208, i32* %arrayidx210, align 4, !dbg !2669
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2670
  %tobool211 = icmp eq %struct._IO_FILE* %64, null, !dbg !2670
  br i1 %tobool211, label %cleanup227, label %if.then212, !dbg !2672, !llvm.loop !2553

if.then212:                                       ; preds = %if.then207
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2673
  br label %cleanup227, !dbg !2673, !llvm.loop !2553

if.end215:                                        ; preds = %if.end204
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2674
  %tobool216 = icmp eq %struct._IO_FILE* %65, null, !dbg !2674
  br i1 %tobool216, label %if.end215.if.end221_crit_edge, label %if.then217, !dbg !2676

if.end215.if.end221_crit_edge:                    ; preds = %if.end215
  %.pre6 = sext i32 %best_new_reg.0.lcssa to i64, !dbg !2677
  br label %if.end221, !dbg !2676

if.then217:                                       ; preds = %if.end215
  %idxprom218 = sext i32 %best_new_reg.0.lcssa to i64, !dbg !2678
  %arrayidx219 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom218, !dbg !2678
  %66 = load i8*, i8** %arrayidx219, align 8, !dbg !2678
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %66) #6, !dbg !2679
  br label %if.end221, !dbg !2679

if.end221:                                        ; preds = %if.end215.if.end221_crit_edge, %if.then217
  %idxprom225.pre-phi = phi i64 [ %.pre6, %if.end215.if.end221_crit_edge ], [ %idxprom218, %if.then217 ], !dbg !2677
  call fastcc void @do_replace(%struct.du_head* nonnull %all_chains.0, i32 %best_new_reg.0.lcssa) #8, !dbg !2680
  store i32 %best_new_reg.0.lcssa, i32* %regno, align 8, !dbg !2681
  store i32 %best_nregs.0.lcssa, i32* %nregs, align 4, !dbg !2682
  %inc224 = add nsw i32 %this_tick.1, 1, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %inc224, metadata !2484, metadata !DIExpression()), !dbg !2509
  %arrayidx226 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i64 0, i64 %idxprom225.pre-phi, !dbg !2677
  store i32 %inc224, i32* %arrayidx226, align 4, !dbg !2684
  call void @df_set_regs_ever_live(i32 %best_new_reg.0.lcssa, i8 zeroext 1) #6, !dbg !2685
  br label %cleanup227, !dbg !2554

cleanup227:                                       ; preds = %if.then207, %lor.lhs.false, %if.end47, %while.body, %if.then212, %for.end, %lor.lhs.false54, %if.end221
  %this_tick.2 = phi i32 [ %inc224, %if.end221 ], [ %this_tick.1, %while.body ], [ %this_tick.1, %lor.lhs.false54 ], [ %this_tick.1, %lor.lhs.false ], [ %this_tick.1, %if.end47 ], [ %this_tick.1, %for.end ], [ %inc208, %if.then212 ], [ %inc208, %if.then207 ], !dbg !2509
  call void @llvm.dbg.value(metadata i32 %this_tick.2, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2554
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %this_tick.1.lcssa = phi i32 [ %this_tick.1, %while.cond ], !dbg !2521
  call void @llvm.dbg.value(metadata i32 %this_tick.1.lcssa, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %this_tick.1.lcssa, metadata !2484, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %this_tick.1.lcssa, metadata !2484, metadata !DIExpression()), !dbg !2509
  call fastcc void @free_chain_data() #8, !dbg !2686
  %67 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2687
  %sub.ptr.sub240 = sub i64 %7, %67, !dbg !2687
  store i64 %sub.ptr.sub240, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !2687
  %cmp241 = icmp sgt i64 %sub.ptr.sub240, 0, !dbg !2687
  %68 = inttoptr i64 %67 to i8*, !dbg !2687
  br i1 %cmp241, label %land.lhs.true243, label %cond.false251, !dbg !2687

land.lhs.true243:                                 ; preds = %while.end
  %69 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2687
  %sub.ptr.sub246 = sub i64 %69, %67, !dbg !2687
  %cmp247 = icmp slt i64 %sub.ptr.sub240, %sub.ptr.sub246, !dbg !2687
  br i1 %cmp247, label %cond.true249, label %cond.false251, !dbg !2687

cond.true249:                                     ; preds = %land.lhs.true243
  %add.ptr250 = getelementptr inbounds i8, i8* %68, i64 %sub.ptr.sub240, !dbg !2687
  store i8* %add.ptr250, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !2687
  store i8* %add.ptr250, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !2687
  br label %cond.end253, !dbg !2687

cond.false251:                                    ; preds = %land.lhs.true243, %while.end
  %add.ptr252 = getelementptr inbounds i8, i8* %68, i64 %sub.ptr.sub240, !dbg !2687
  call void @obstack_free(%struct.obstack* nonnull @rename_obstack, i8* %add.ptr252) #6, !dbg !2687
  br label %cond.end253, !dbg !2687

cond.end253:                                      ; preds = %cond.false251, %cond.true249
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2688
  %.pre4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2520
  %cfg30.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre4, i64 0, i32 1, !dbg !2689
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg30.phi.trans.insert, align 8, !dbg !2520
  br label %for.cond, !dbg !2520, !llvm.loop !2690

for.end257:                                       ; preds = %for.cond
  %70 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2692
  %sub.ptr.sub259 = sub i64 0, %70, !dbg !2692
  store i64 %sub.ptr.sub259, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !2692
  %cmp260 = icmp sgt i64 %sub.ptr.sub259, 0, !dbg !2692
  %71 = inttoptr i64 %70 to i8*, !dbg !2692
  br i1 %cmp260, label %land.lhs.true262, label %cond.false270, !dbg !2692

land.lhs.true262:                                 ; preds = %for.end257
  %72 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2692
  %sub.ptr.sub265 = sub i64 %72, %70, !dbg !2692
  %cmp266 = icmp sgt i64 %sub.ptr.sub265, %sub.ptr.sub259, !dbg !2692
  br i1 %cmp266, label %cond.true268, label %cond.false270, !dbg !2692

cond.true268:                                     ; preds = %land.lhs.true262
  %add.ptr269 = getelementptr inbounds i8, i8* %71, i64 %sub.ptr.sub259, !dbg !2692
  store i8* %add.ptr269, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !2692
  store i8* %add.ptr269, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !2692
  br label %cond.end272, !dbg !2692

cond.false270:                                    ; preds = %land.lhs.true262, %for.end257
  %add.ptr271 = getelementptr inbounds i8, i8* %71, i64 %sub.ptr.sub259, !dbg !2692
  call void @obstack_free(%struct.obstack* nonnull @rename_obstack, i8* %add.ptr271) #6, !dbg !2692
  br label %cond.end272, !dbg !2692

cond.end272:                                      ; preds = %cond.false270, %cond.true268
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2693
  %tobool274 = icmp eq %struct._IO_FILE* %73, null, !dbg !2693
  br i1 %tobool274, label %if.end277, label %if.then275, !dbg !2695

if.then275:                                       ; preds = %cond.end272
  %call276 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %73) #6, !dbg !2696
  br label %if.end277, !dbg !2696

if.end277:                                        ; preds = %cond.end272, %if.then275
  call void @llvm.lifetime.end.p0i8(i64 212, i8* nonnull %0) #7, !dbg !2697
  ret i32 0, !dbg !2698
}

declare dso_local i32 @df_set_flags(i32) local_unnamed_addr #2

declare dso_local void @df_note_add_problem() local_unnamed_addr #2

declare dso_local void @df_analyze() local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) #2

declare dso_local void @free(i8*) #2

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_du_head_p_heap* @VEC_du_head_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression()), !dbg !2704
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 0) #6, !dbg !2705
  %0 = bitcast i8* %call to %struct.VEC_du_head_p_heap*, !dbg !2705
  ret %struct.VEC_du_head_p_heap* %0, !dbg !2705
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.du_head* @build_def_use(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2706 {
entry:
  %old_operands = alloca [30 x %struct.rtx_def*], align 16
  %old_dups = alloca [14 x %struct.rtx_def*], align 16
  %set_code = alloca i32, align 4
  %clobber_code = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2710, metadata !DIExpression()), !dbg !2764
  store %struct.du_head* null, %struct.du_head** @closed_chains, align 8, !dbg !2765
  store %struct.du_head* null, %struct.du_head** @open_chains, align 8, !dbg !2766
  store i1 false, i1* @fail_current_block, align 1, !dbg !2767
  store i32 0, i32* @current_id, align 4, !dbg !2768
  tail call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull @open_chains_set, %struct.bitmap_obstack* nonnull @bitmap_default_obstack) #8, !dbg !2769
  store i64 0, i64* @live_in_chains, align 8, !dbg !2770
  store i64 0, i64* @live_hard_regs, align 8, !dbg !2771
  %call = tail call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %bb) #6, !dbg !2771
  tail call void @reg_set_to_hard_reg_set(i64* nonnull @live_hard_regs, %struct.bitmap_head_def* %call) #6, !dbg !2771
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2773
  %0 = load i32, i32* %index, align 8, !dbg !2773
  %call1 = tail call fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %0) #8, !dbg !2774
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call1, metadata !2712, metadata !DIExpression()), !dbg !2764
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.inc, %entry
  %def_rec.0 = phi %union.df_ref_d** [ %call1, %entry ], [ %incdec.ptr, %for.inc ], !dbg !2776
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2712, metadata !DIExpression()), !dbg !2764
  %1 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2777
  %tobool = icmp eq %union.df_ref_d* %1, null, !dbg !2778
  br i1 %tobool, label %for.end, label %for.body, !dbg !2778

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %1, metadata !2714, metadata !DIExpression()), !dbg !2779
  %2 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %1, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2780
  %bf.load = load i32, i32* %2, align 8, !dbg !2780
  %and = and i32 %bf.load, 131072, !dbg !2782
  %tobool2 = icmp eq i32 %and, 0, !dbg !2782
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !2783

if.then:                                          ; preds = %for.body
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %1, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2784
  %3 = load i32, i32* %regno, align 8, !dbg !2784
  %sh_prom = zext i32 %3 to i64, !dbg !2784
  %shl = shl i64 1, %sh_prom, !dbg !2784
  %4 = load i64, i64* @live_hard_regs, align 8, !dbg !2784
  %or = or i64 %4, %shl, !dbg !2784
  store i64 %or, i64* @live_hard_regs, align 8, !dbg !2784
  br label %for.inc, !dbg !2784

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2785
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2712, metadata !DIExpression()), !dbg !2764
  br label %for.cond, !dbg !2786, !llvm.loop !2787

for.end:                                          ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2789
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2789
  %5 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2789
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 0, !dbg !2789
  %6 = bitcast [30 x %struct.rtx_def*]* %old_operands to i8*, !dbg !2790
  %7 = bitcast [14 x %struct.rtx_def*]* %old_dups to i8*, !dbg !2790
  %8 = bitcast i32* %set_code to i8*, !dbg !2790
  %9 = bitcast i32* %clobber_code to i8*, !dbg !2790
  %arraydecay = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* %old_operands, i64 0, i64 0, !dbg !2790
  %arraydecay132 = getelementptr inbounds [14 x %struct.rtx_def*], [14 x %struct.rtx_def*]* %old_dups, i64 0, i64 0, !dbg !2790
  br label %for.cond4, !dbg !2791

for.cond4:                                        ; preds = %for.inc480, %for.end
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.end ], [ %rt_rtx484, %for.inc480 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2711, metadata !DIExpression()), !dbg !2764
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2793
  %bf.load5 = load i32, i32* %10, align 8, !dbg !2793
  %bf.clear = and i32 %bf.load5, 65535, !dbg !2793
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2793
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2793

lor.lhs.false:                                    ; preds = %for.cond4
  %cmp8 = icmp eq i32 %bf.clear, 7, !dbg !2793
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false9, !dbg !2793

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i32 %bf.clear, 9, !dbg !2793
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false13, !dbg !2793

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !2793
  br i1 %cmp16, label %land.lhs.true, label %if.else430, !dbg !2793

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %for.cond4
  %cmp19 = icmp eq i32 %bf.clear, 7, !dbg !2793
  br i1 %cmp19, label %if.else430, label %if.then20, !dbg !2794

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %6) #7, !dbg !2795
  call void @llvm.dbg.declare(metadata [30 x %struct.rtx_def*]* %old_operands, metadata !2725, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #7, !dbg !2797
  call void @llvm.dbg.declare(metadata [14 x %struct.rtx_def*]* %old_dups, metadata !2729, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !2799
  call void @llvm.dbg.value(metadata i32 23, metadata !2736, metadata !DIExpression()), !dbg !2790
  store i32 23, i32* %set_code, align 4, !dbg !2800
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !2801
  call void @llvm.dbg.value(metadata i32 25, metadata !2737, metadata !DIExpression()), !dbg !2790
  store i32 25, i32* %clobber_code, align 4, !dbg !2802
  call void @extract_insn(%struct.rtx_def* %insn.0) #6, !dbg !2803
  %call21 = call i32 @constrain_operands(i32 1) #6, !dbg !2804
  %tobool22 = icmp eq i32 %call21, 0, !dbg !2804
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2806

if.then23:                                        ; preds = %if.then20
  call void @_fatal_insn_not_found(%struct.rtx_def* %insn.0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2807
  br label %if.end24, !dbg !2807

if.end24:                                         ; preds = %if.then20, %if.then23
  call void @preprocess_constraints() #6, !dbg !2808
  %11 = load i32, i32* @which_alternative, align 4, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %11, metadata !2734, metadata !DIExpression()), !dbg !2790
  %12 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2810
  %conv = sext i8 %12 to i32, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2718, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 0, metadata !2713, metadata !DIExpression()), !dbg !2764
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2812
  %13 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2812
  %14 = bitcast %union.rtunion_def* %13 to i32**, !dbg !2812
  %15 = load i32*, i32** %14, align 8, !dbg !2812
  %bf.load25 = load i32, i32* %15, align 8, !dbg !2812
  %bf.clear26 = and i32 %bf.load25, 65535, !dbg !2812
  %cmp27 = icmp eq i32 %bf.clear26, 14, !dbg !2813
  call void @llvm.dbg.value(metadata i1 %cmp27, metadata !2735, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2790
  %idxprom36 = sext i32 %11 to i64, !dbg !2814
  br i1 %cmp27, label %if.end24.split.us, label %if.end24.if.end24.split_crit_edge, !dbg !2815

if.end24.if.end24.split_crit_edge:                ; preds = %if.end24
  %16 = sext i8 %12 to i64, !dbg !2815
  br label %for.cond29, !dbg !2815

if.end24.split.us:                                ; preds = %if.end24
  %17 = sext i8 %12 to i64, !dbg !2815
  br label %for.cond29.us, !dbg !2815

for.cond29.us:                                    ; preds = %for.inc127.us, %if.end24.split.us
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc127.us ], [ 0, %if.end24.split.us ], !dbg !2816
  %untracked_operands.0.us = phi i64 [ %untracked_operands.2.us, %for.inc127.us ], [ 0, %if.end24.split.us ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.us, metadata !2713, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2733, metadata !DIExpression()), !dbg !2790
  %cmp30.us = icmp slt i64 %indvars.iv8, %17, !dbg !2818
  br i1 %cmp30.us, label %for.body32.us, label %for.end128.us-lcssa.us, !dbg !2819

for.body32.us:                                    ; preds = %for.cond29.us
  %arrayidx33.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv8, !dbg !2820
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx33.us, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2738, metadata !DIExpression()), !dbg !2814
  %matches38.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv8, i64 %idxprom36, i32 3, !dbg !2821
  %19 = load i32, i32* %matches38.us, align 16, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %19, metadata !2742, metadata !DIExpression()), !dbg !2814
  %cmp39.us = icmp sgt i32 %19, -1, !dbg !2822
  br i1 %cmp39.us, label %if.then41.us, label %if.end51.us, !dbg !2824

if.then41.us:                                     ; preds = %for.body32.us
  %idxprom42.us = sext i32 %19 to i64, !dbg !2825
  %cl.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom42.us, i64 %idxprom36, i32 1, !dbg !2826
  %20 = load i32, i32* %cl.us, align 8, !dbg !2826
  %cl50.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv8, i64 %idxprom36, i32 1, !dbg !2827
  store i32 %20, i32* %cl50.us, align 8, !dbg !2828
  br label %if.end51.us, !dbg !2829

if.end51.us:                                      ; preds = %if.then41.us, %for.body32.us
  br i1 %cmp39.us, label %if.then68.us, label %lor.lhs.false54.us, !dbg !2830

lor.lhs.false54.us:                               ; preds = %if.end51.us
  %matched.us = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv8, i64 %idxprom36, i32 4, !dbg !2832
  %21 = load i32, i32* %matched.us, align 4, !dbg !2832
  %cmp59.us = icmp sgt i32 %21, -1, !dbg !2833
  br i1 %cmp59.us, label %if.then68.us, label %lor.lhs.false61.us, !dbg !2834

lor.lhs.false61.us:                               ; preds = %lor.lhs.false54.us
  %arrayidx65.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv8, !dbg !2835
  %22 = load i32, i32* %arrayidx65.us, align 4, !dbg !2835
  %cmp66.us = icmp eq i32 %22, 1, !dbg !2836
  br i1 %cmp66.us, label %if.then68.us, label %if.end99.us, !dbg !2837

if.then68.us:                                     ; preds = %lor.lhs.false61.us, %lor.lhs.false54.us, %if.end51.us
  %arrayidx70.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv8, !dbg !2838
  store i32 2, i32* %arrayidx70.us, align 4, !dbg !2840
  br i1 %cmp39.us, label %land.lhs.true73.us, label %if.end99.us, !dbg !2841

land.lhs.true73.us:                               ; preds = %if.then68.us
  %arrayidx75.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv8, !dbg !2843
  %23 = load i32, i32* %arrayidx75.us, align 4, !dbg !2843
  %idxprom76.us = zext i32 %23 to i64, !dbg !2843
  %arrayidx77.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom76.us, !dbg !2843
  %24 = load i8, i8* %arrayidx77.us, align 1, !dbg !2843
  %idxprom80.us = sext i32 %19 to i64, !dbg !2844
  %arrayidx81.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %idxprom80.us, !dbg !2844
  %25 = load i32, i32* %arrayidx81.us, align 4, !dbg !2844
  %idxprom82.us = zext i32 %25 to i64, !dbg !2844
  %arrayidx83.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom82.us, !dbg !2844
  %26 = load i8, i8* %arrayidx83.us, align 1, !dbg !2844
  %cmp86.us = icmp eq i8 %24, %26, !dbg !2845
  br i1 %cmp86.us, label %if.end99.us, label %land.lhs.true88.us, !dbg !2846

land.lhs.true88.us:                               ; preds = %land.lhs.true73.us
  %call89.us = call fastcc zeroext i8 @verify_reg_in_set(%struct.rtx_def* %18, i64* nonnull @live_in_chains) #8, !dbg !2847
  %tobool90.us = icmp eq i8 %call89.us, 0, !dbg !2847
  br i1 %tobool90.us, label %if.then91.us, label %if.end99.us, !dbg !2848

if.then91.us:                                     ; preds = %land.lhs.true88.us
  %27 = trunc i64 %indvars.iv8 to i32, !dbg !2849
  %shl92.us = shl i32 1, %27, !dbg !2849
  %conv93.us = sext i32 %shl92.us to i64, !dbg !2851
  %or94.us = or i64 %untracked_operands.0.us, %conv93.us, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %or94.us, metadata !2713, metadata !DIExpression()), !dbg !2764
  %shl95.us = shl i32 1, %19, !dbg !2853
  %conv96.us = sext i32 %shl95.us to i64, !dbg !2854
  %or97.us = or i64 %or94.us, %conv96.us, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %or97.us, metadata !2713, metadata !DIExpression()), !dbg !2764
  br label %if.end99.us, !dbg !2856

if.end99.us:                                      ; preds = %if.then91.us, %land.lhs.true88.us, %land.lhs.true73.us, %if.then68.us, %lor.lhs.false61.us
  %untracked_operands.2.us = phi i64 [ %untracked_operands.0.us, %lor.lhs.false61.us ], [ %untracked_operands.0.us, %land.lhs.true88.us ], [ %or97.us, %if.then91.us ], [ %untracked_operands.0.us, %land.lhs.true73.us ], [ %untracked_operands.0.us, %if.then68.us ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.2.us, metadata !2713, metadata !DIExpression()), !dbg !2764
  %arrayidx101.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv8, !dbg !2857
  %28 = load i32, i32* %arrayidx101.us, align 4, !dbg !2857
  %cmp102.us = icmp eq i32 %28, 2, !dbg !2858
  br i1 %cmp102.us, label %land.lhs.true104.us, label %for.inc127.us, !dbg !2859

land.lhs.true104.us:                              ; preds = %if.end99.us
  %29 = trunc i64 %indvars.iv8 to i32, !dbg !2860
  %shl105.us = shl i32 1, %29, !dbg !2860
  %conv106.us = sext i32 %shl105.us to i64, !dbg !2861
  %and107.us = and i64 %untracked_operands.2.us, %conv106.us, !dbg !2862
  %tobool108.us = icmp eq i64 %and107.us, 0, !dbg !2862
  br i1 %tobool108.us, label %land.lhs.true109.us, label %for.inc127.us, !dbg !2863

land.lhs.true109.us:                              ; preds = %land.lhs.true104.us
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 0, !dbg !2864
  %bf.load110.us = load i32, i32* %30, align 8, !dbg !2864
  %bf.clear111.us = and i32 %bf.load110.us, 65535, !dbg !2864
  %cmp112.us = icmp eq i32 %bf.clear111.us, 37, !dbg !2864
  br i1 %cmp112.us, label %land.lhs.true114.us, label %for.inc127.us, !dbg !2865

land.lhs.true114.us:                              ; preds = %land.lhs.true109.us
  %call115.us = call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %18) #8, !dbg !2866
  %tobool116.us = icmp eq i8 %call115.us, 0, !dbg !2866
  br i1 %tobool116.us, label %if.then117.us, label %for.inc127.us, !dbg !2867

if.then117.us:                                    ; preds = %land.lhs.true114.us
  %bf.load118.us = load i32, i32* %30, align 8, !dbg !2868
  %bf.lshr.us = lshr i32 %bf.load118.us, 16, !dbg !2868
  %bf.clear119.us = and i32 %bf.lshr.us, 255, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %bf.clear119.us, metadata !2743, metadata !DIExpression()), !dbg !2869
  %call120.us = call fastcc i32 @rhs_regno(%struct.rtx_def* %18) #8, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %call120.us, metadata !2746, metadata !DIExpression()), !dbg !2869
  %idxprom121.us = zext i32 %call120.us to i64, !dbg !2871
  %idxprom123.us = zext i32 %bf.clear119.us to i64, !dbg !2871
  %arrayidx124.us = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom121.us, i64 %idxprom123.us, !dbg !2871
  %31 = load i8, i8* %arrayidx124.us, align 1, !dbg !2871
  %conv125.us = zext i8 %31 to i32, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %conv125.us, metadata !2747, metadata !DIExpression()), !dbg !2869
  call fastcc void @create_new_chain(i32 %call120.us, i32 %conv125.us, %struct.rtx_def** null, %struct.rtx_def* null, i32 0) #8, !dbg !2872
  br label %for.inc127.us, !dbg !2873

for.inc127.us:                                    ; preds = %if.then117.us, %land.lhs.true114.us, %land.lhs.true109.us, %land.lhs.true104.us, %if.end99.us
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !2874
  call void @llvm.dbg.value(metadata i32 undef, metadata !2733, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2790
  br label %for.cond29.us, !dbg !2875, !llvm.loop !2876

for.end128.us-lcssa.us:                           ; preds = %for.cond29.us
  %untracked_operands.0.us.lcssa = phi i64 [ %untracked_operands.0.us, %for.cond29.us ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.us.lcssa, metadata !2713, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.us.lcssa, metadata !2713, metadata !DIExpression()), !dbg !2764
  br label %for.end128, !dbg !2878

for.cond29:                                       ; preds = %for.inc127, %if.end24.if.end24.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc127 ], [ 0, %if.end24.if.end24.split_crit_edge ], !dbg !2816
  %untracked_operands.0 = phi i64 [ %untracked_operands.2, %for.inc127 ], [ 0, %if.end24.if.end24.split_crit_edge ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0, metadata !2713, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2733, metadata !DIExpression()), !dbg !2790
  %cmp30 = icmp slt i64 %indvars.iv, %16, !dbg !2818
  br i1 %cmp30, label %for.body32, label %for.end128.us-lcssa, !dbg !2819

for.body32:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv, !dbg !2820
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx33, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.rtx_def* %32, metadata !2738, metadata !DIExpression()), !dbg !2814
  %matches38 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom36, i32 3, !dbg !2821
  %33 = load i32, i32* %matches38, align 16, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %33, metadata !2742, metadata !DIExpression()), !dbg !2814
  %cmp39 = icmp sgt i32 %33, -1, !dbg !2822
  br i1 %cmp39, label %if.then41, label %if.end51, !dbg !2824

if.then41:                                        ; preds = %for.body32
  %idxprom42 = sext i32 %33 to i64, !dbg !2825
  %cl = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom42, i64 %idxprom36, i32 1, !dbg !2826
  %34 = load i32, i32* %cl, align 8, !dbg !2826
  %cl50 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom36, i32 1, !dbg !2827
  store i32 %34, i32* %cl50, align 8, !dbg !2828
  br label %if.end51, !dbg !2829

if.end51:                                         ; preds = %if.then41, %for.body32
  br i1 %cmp39, label %if.then68, label %lor.lhs.false54, !dbg !2830

lor.lhs.false54:                                  ; preds = %if.end51
  %matched = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv, i64 %idxprom36, i32 4, !dbg !2832
  %35 = load i32, i32* %matched, align 4, !dbg !2832
  %cmp59 = icmp sgt i32 %35, -1, !dbg !2833
  br i1 %cmp59, label %if.then68, label %lor.lhs.false61, !dbg !2834

lor.lhs.false61:                                  ; preds = %lor.lhs.false54
  br label %if.end99, !dbg !2880

if.then68:                                        ; preds = %lor.lhs.false54, %if.end51
  %arrayidx70 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv, !dbg !2838
  store i32 2, i32* %arrayidx70, align 4, !dbg !2840
  br i1 %cmp39, label %land.lhs.true73, label %if.end99, !dbg !2841

land.lhs.true73:                                  ; preds = %if.then68
  %arrayidx75 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv, !dbg !2843
  %36 = load i32, i32* %arrayidx75, align 4, !dbg !2843
  %idxprom76 = zext i32 %36 to i64, !dbg !2843
  %arrayidx77 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom76, !dbg !2843
  %37 = load i8, i8* %arrayidx77, align 1, !dbg !2843
  %idxprom80 = sext i32 %33 to i64, !dbg !2844
  %arrayidx81 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %idxprom80, !dbg !2844
  %38 = load i32, i32* %arrayidx81, align 4, !dbg !2844
  %idxprom82 = zext i32 %38 to i64, !dbg !2844
  %arrayidx83 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom82, !dbg !2844
  %39 = load i8, i8* %arrayidx83, align 1, !dbg !2844
  %cmp86 = icmp eq i8 %37, %39, !dbg !2845
  br i1 %cmp86, label %if.end99, label %land.lhs.true88, !dbg !2846

land.lhs.true88:                                  ; preds = %land.lhs.true73
  %call89 = call fastcc zeroext i8 @verify_reg_in_set(%struct.rtx_def* %32, i64* nonnull @live_in_chains) #8, !dbg !2847
  %tobool90 = icmp eq i8 %call89, 0, !dbg !2847
  br i1 %tobool90, label %if.then91, label %if.end99, !dbg !2848

if.then91:                                        ; preds = %land.lhs.true88
  %40 = trunc i64 %indvars.iv to i32, !dbg !2849
  %shl92 = shl i32 1, %40, !dbg !2849
  %conv93 = sext i32 %shl92 to i64, !dbg !2851
  %or94 = or i64 %untracked_operands.0, %conv93, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %or94, metadata !2713, metadata !DIExpression()), !dbg !2764
  %shl95 = shl i32 1, %33, !dbg !2853
  %conv96 = sext i32 %shl95 to i64, !dbg !2854
  %or97 = or i64 %or94, %conv96, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %or97, metadata !2713, metadata !DIExpression()), !dbg !2764
  br label %if.end99, !dbg !2856

if.end99:                                         ; preds = %lor.lhs.false61, %land.lhs.true88, %land.lhs.true73, %if.then68, %if.then91
  %untracked_operands.2 = phi i64 [ %untracked_operands.0, %lor.lhs.false61 ], [ %untracked_operands.0, %land.lhs.true88 ], [ %or97, %if.then91 ], [ %untracked_operands.0, %land.lhs.true73 ], [ %untracked_operands.0, %if.then68 ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.2, metadata !2713, metadata !DIExpression()), !dbg !2764
  %arrayidx101 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv, !dbg !2857
  %41 = load i32, i32* %arrayidx101, align 4, !dbg !2857
  %cmp102 = icmp eq i32 %41, 2, !dbg !2858
  br i1 %cmp102, label %land.lhs.true104, label %for.inc127, !dbg !2859

land.lhs.true104:                                 ; preds = %if.end99
  %42 = trunc i64 %indvars.iv to i32, !dbg !2860
  %shl105 = shl i32 1, %42, !dbg !2860
  %conv106 = sext i32 %shl105 to i64, !dbg !2861
  %and107 = and i64 %untracked_operands.2, %conv106, !dbg !2862
  %tobool108 = icmp eq i64 %and107, 0, !dbg !2862
  br i1 %tobool108, label %land.lhs.true109, label %for.inc127, !dbg !2863

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 0, !dbg !2864
  %bf.load110 = load i32, i32* %43, align 8, !dbg !2864
  %bf.clear111 = and i32 %bf.load110, 65535, !dbg !2864
  %cmp112 = icmp eq i32 %bf.clear111, 37, !dbg !2864
  br i1 %cmp112, label %land.lhs.true114, label %for.inc127, !dbg !2865

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %call115 = call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %32) #8, !dbg !2866
  %tobool116 = icmp eq i8 %call115, 0, !dbg !2866
  br i1 %tobool116, label %if.then117, label %for.inc127, !dbg !2867

if.then117:                                       ; preds = %land.lhs.true114
  %bf.load118 = load i32, i32* %43, align 8, !dbg !2868
  %bf.lshr = lshr i32 %bf.load118, 16, !dbg !2868
  %bf.clear119 = and i32 %bf.lshr, 255, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %bf.clear119, metadata !2743, metadata !DIExpression()), !dbg !2869
  %call120 = call fastcc i32 @rhs_regno(%struct.rtx_def* %32) #8, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %call120, metadata !2746, metadata !DIExpression()), !dbg !2869
  %idxprom121 = zext i32 %call120 to i64, !dbg !2871
  %idxprom123 = zext i32 %bf.clear119 to i64, !dbg !2871
  %arrayidx124 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom121, i64 %idxprom123, !dbg !2871
  %44 = load i8, i8* %arrayidx124, align 1, !dbg !2871
  %conv125 = zext i8 %44 to i32, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %conv125, metadata !2747, metadata !DIExpression()), !dbg !2869
  call fastcc void @create_new_chain(i32 %call120, i32 %conv125, %struct.rtx_def** null, %struct.rtx_def* null, i32 0) #8, !dbg !2872
  br label %for.inc127, !dbg !2873

for.inc127:                                       ; preds = %land.lhs.true114, %land.lhs.true104, %if.end99, %land.lhs.true109, %if.then117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2874
  call void @llvm.dbg.value(metadata i32 undef, metadata !2733, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2790
  br label %for.cond29, !dbg !2875, !llvm.loop !2876

for.end128.us-lcssa:                              ; preds = %for.cond29
  %untracked_operands.0.lcssa16 = phi i64 [ %untracked_operands.0, %for.cond29 ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.lcssa16, metadata !2713, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.lcssa16, metadata !2713, metadata !DIExpression()), !dbg !2764
  br label %for.end128, !dbg !2878

for.end128:                                       ; preds = %for.end128.us-lcssa.us, %for.end128.us-lcssa
  %untracked_operands.0.lcssa = phi i64 [ %untracked_operands.0.lcssa16, %for.end128.us-lcssa ], [ %untracked_operands.0.us.lcssa, %for.end128.us-lcssa.us ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %untracked_operands.0.lcssa, metadata !2713, metadata !DIExpression()), !dbg !2764
  %.b3 = load i1, i1* @fail_current_block, align 1, !dbg !2878
  br i1 %.b3, label %cleanup419, label %if.end131, !dbg !2881

if.end131:                                        ; preds = %for.end128
  call fastcc void @hide_operands(i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132, i64 %untracked_operands.0.lcssa, i8 zeroext 0) #8, !dbg !2882
  %rt_rtx136 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !2883
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx136, align 8, !dbg !2883
  call void @note_stores(%struct.rtx_def* %45, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @note_sets_clobbers, i8* nonnull %9) #6, !dbg !2884
  call fastcc void @restore_operands(%struct.rtx_def* %insn.0, i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132) #8, !dbg !2885
  call fastcc void @record_out_operands(%struct.rtx_def* %insn.0, i8 zeroext 1) #8, !dbg !2886
  call fastcc void @hide_operands(i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132, i64 %untracked_operands.0.lcssa, i8 zeroext 0) #8, !dbg !2887
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx136, i32 0, i32 2, i32 0) #8, !dbg !2888
  call fastcc void @restore_operands(%struct.rtx_def* %insn.0, i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132) #8, !dbg !2889
  %bf.load147 = load i32, i32* %10, align 8, !dbg !2890
  %bf.clear148 = and i32 %bf.load147, 65535, !dbg !2890
  %cmp149 = icmp eq i32 %bf.clear148, 10, !dbg !2890
  br i1 %cmp149, label %land.lhs.true151, label %if.end162, !dbg !2892

land.lhs.true151:                                 ; preds = %if.end131
  %arrayidx154 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 1, !dbg !2893
  %rt_rtx155 = bitcast %struct.object_block** %arrayidx154 to %struct.rtx_def**, !dbg !2893
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx155, align 8, !dbg !2893
  %tobool156 = icmp eq %struct.rtx_def* %46, null, !dbg !2893
  br i1 %tobool156, label %if.end162, label %if.then157, !dbg !2894

if.then157:                                       ; preds = %land.lhs.true151
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx155, i32 0, i32 2, i32 0) #8, !dbg !2895
  br label %if.end162, !dbg !2895

if.end162:                                        ; preds = %land.lhs.true151, %if.then157, %if.end131
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx136, align 8, !dbg !2896
  %call167 = call i32 @asm_noperands(%struct.rtx_def* %47) #6, !dbg !2897
  %cmp168 = icmp sgt i32 %call167, 0, !dbg !2898
  br i1 %cmp168, label %for.cond171.preheader, label %if.end204, !dbg !2899

for.cond171.preheader:                            ; preds = %if.end162
  %48 = sext i8 %12 to i64, !dbg !2900
  br label %for.cond171, !dbg !2900

for.cond171:                                      ; preds = %for.cond171.preheader, %for.inc201
  %indvars.iv10 = phi i64 [ 0, %for.cond171.preheader ], [ %indvars.iv.next11, %for.inc201 ], !dbg !2901
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !2733, metadata !DIExpression()), !dbg !2790
  %cmp172 = icmp slt i64 %indvars.iv10, %48, !dbg !2902
  br i1 %cmp172, label %for.body174, label %if.end204.loopexit, !dbg !2900

for.body174:                                      ; preds = %for.cond171
  %arrayidx176 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv10, !dbg !2903
  %49 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx176, align 8, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.rtx_def** %49, metadata !2748, metadata !DIExpression()), !dbg !2904
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.rtx_def* %50, metadata !2753, metadata !DIExpression()), !dbg !2904
  %51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i64 0, i32 0, !dbg !2906
  %bf.load178 = load i32, i32* %51, align 8, !dbg !2906
  %bf.clear179 = and i32 %bf.load178, 65535, !dbg !2906
  %cmp180 = icmp eq i32 %bf.clear179, 37, !dbg !2906
  br i1 %cmp180, label %land.lhs.true182, label %for.inc201, !dbg !2908

land.lhs.true182:                                 ; preds = %for.body174
  %call183 = call fastcc i32 @rhs_regno(%struct.rtx_def* %50) #8, !dbg !2909
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2910
  %rt_uint = bitcast %union.rtunion_def* %52 to i32*, !dbg !2910
  %53 = load i32, i32* %rt_uint, align 8, !dbg !2910
  %cmp187 = icmp eq i32 %call183, %53, !dbg !2911
  br i1 %cmp187, label %land.lhs.true189, label %for.inc201, !dbg !2912

land.lhs.true189:                                 ; preds = %land.lhs.true182
  %arrayidx191 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv10, !dbg !2913
  %54 = load i32, i32* %arrayidx191, align 4, !dbg !2913
  %cmp192 = icmp eq i32 %54, 0, !dbg !2914
  br i1 %cmp192, label %if.then199, label %lor.lhs.false194, !dbg !2915

lor.lhs.false194:                                 ; preds = %land.lhs.true189
  %cmp197 = icmp eq i32 %54, 2, !dbg !2916
  br i1 %cmp197, label %if.then199, label %for.inc201, !dbg !2917

if.then199:                                       ; preds = %lor.lhs.false194, %land.lhs.true189
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** %49, i32 0, i32 2, i32 0) #8, !dbg !2918
  br label %for.inc201, !dbg !2918

for.inc201:                                       ; preds = %for.body174, %land.lhs.true182, %lor.lhs.false194, %if.then199
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i32 undef, metadata !2733, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2790
  br label %for.cond171, !dbg !2920, !llvm.loop !2921

if.end204.loopexit:                               ; preds = %for.cond171
  br label %if.end204, !dbg !2923

if.end204:                                        ; preds = %if.end204.loopexit, %if.end162
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2790
  %55 = sext i8 %12 to i64, !dbg !2923
  %56 = sext i8 %12 to i64, !dbg !2923
  %57 = sext i8 %12 to i64, !dbg !2923
  br label %for.cond205, !dbg !2923

for.cond205:                                      ; preds = %cleanup, %if.end204
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %cleanup ], [ 0, %if.end204 ], !dbg !2924
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !2733, metadata !DIExpression()), !dbg !2790
  %58 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !2925
  %conv206 = sext i8 %58 to i32, !dbg !2926
  %add = add nsw i32 %conv, %conv206, !dbg !2927
  %59 = sext i32 %add to i64, !dbg !2928
  %cmp207 = icmp slt i64 %indvars.iv12, %59, !dbg !2928
  br i1 %cmp207, label %for.body209, label %for.end263, !dbg !2929

for.body209:                                      ; preds = %for.cond205
  %cmp210 = icmp slt i64 %indvars.iv12, %55, !dbg !2930
  %60 = trunc i64 %indvars.iv12 to i32, !dbg !2931
  br i1 %cmp210, label %cond.end, label %cond.false, !dbg !2931

cond.false:                                       ; preds = %for.body209
  %61 = sub nsw i64 %indvars.iv12, %56, !dbg !2932
  %arrayidx213 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %61, !dbg !2933
  %62 = load i8, i8* %arrayidx213, align 1, !dbg !2933
  %conv214 = sext i8 %62 to i32, !dbg !2933
  br label %cond.end, !dbg !2931

cond.end:                                         ; preds = %for.body209, %cond.false
  %cond = phi i32 [ %conv214, %cond.false ], [ %60, %for.body209 ], !dbg !2931
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2754, metadata !DIExpression()), !dbg !2934
  br i1 %cmp210, label %cond.true218, label %cond.false221, !dbg !2935

cond.true218:                                     ; preds = %cond.end
  %idxprom219 = sext i32 %cond to i64, !dbg !2936
  %arrayidx220 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %idxprom219, !dbg !2936
  br label %cond.end225, !dbg !2935

cond.false221:                                    ; preds = %cond.end
  %63 = sub nsw i64 %indvars.iv12, %57, !dbg !2937
  %arrayidx224 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %63, !dbg !2938
  %.pre = sext i32 %cond to i64, !dbg !2939
  br label %cond.end225, !dbg !2935

cond.end225:                                      ; preds = %cond.false221, %cond.true218
  %idxprom228.pre-phi = phi i64 [ %.pre, %cond.false221 ], [ %idxprom219, %cond.true218 ], !dbg !2939
  %cond226.in = phi %struct.rtx_def*** [ %arrayidx224, %cond.false221 ], [ %arrayidx220, %cond.true218 ]
  %cond226 = load %struct.rtx_def**, %struct.rtx_def*** %cond226.in, align 8, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.rtx_def** %cond226, metadata !2758, metadata !DIExpression()), !dbg !2934
  %cl232 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom228.pre-phi, i64 %idxprom36, i32 1, !dbg !2940
  %64 = load i32, i32* %cl232, align 8, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %64, metadata !2759, metadata !DIExpression()), !dbg !2934
  %arrayidx234 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %idxprom228.pre-phi, !dbg !2941
  %65 = load i32, i32* %arrayidx234, align 4, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %65, metadata !2760, metadata !DIExpression()), !dbg !2934
  %arrayidx236 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %idxprom228.pre-phi, !dbg !2942
  %66 = load i8*, i8** %arrayidx236, align 8, !dbg !2942
  %67 = load i8, i8* %66, align 1, !dbg !2942
  %cmp239 = icmp eq i8 %67, 0, !dbg !2944
  br i1 %cmp239, label %cleanup, label %lor.lhs.false241, !dbg !2945

lor.lhs.false241:                                 ; preds = %cond.end225
  %shl242 = shl i32 1, %cond, !dbg !2946
  %conv243 = sext i32 %shl242 to i64, !dbg !2947
  %and244 = and i64 %untracked_operands.0.lcssa, %conv243, !dbg !2948
  %tobool245 = icmp eq i64 %and244, 0, !dbg !2948
  br i1 %tobool245, label %if.end247, label %cleanup, !dbg !2949

if.end247:                                        ; preds = %lor.lhs.false241
  %is_address = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom228.pre-phi, i64 %idxprom36, i32 5, !dbg !2950
  %bf.load252 = load i8, i8* %is_address, align 8, !dbg !2950
  %bf.clear254 = and i8 %bf.load252, 64, !dbg !2950
  %tobool255 = icmp eq i8 %bf.clear254, 0, !dbg !2952
  br i1 %tobool255, label %if.else, label %if.then256, !dbg !2953

if.then256:                                       ; preds = %if.end247
  call fastcc void @scan_rtx_address(%struct.rtx_def* %insn.0, %struct.rtx_def** %cond226, i32 %64, i32 3, i32 0) #8, !dbg !2954
  br label %cleanup, !dbg !2954

if.else:                                          ; preds = %if.end247
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** %cond226, i32 %64, i32 3, i32 %65) #8, !dbg !2955
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false241, %if.then256, %if.else, %cond.end225
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i32 undef, metadata !2733, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2790
  br label %for.cond205, !dbg !2957, !llvm.loop !2958

for.end263:                                       ; preds = %for.cond205
  %68 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 2, !dbg !2960
  br label %for.cond268, !dbg !2962

for.cond268:                                      ; preds = %for.inc288, %for.end263
  %note.0.in.in = phi %union.rtunion_def* [ %68, %for.end263 ], [ %70, %for.inc288 ]
  %note.0.in = bitcast %union.rtunion_def* %note.0.in.in to %struct.rtx_def**, !dbg !2963
  %note.0 = load %struct.rtx_def*, %struct.rtx_def** %note.0.in, align 8, !dbg !2963
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !2724, metadata !DIExpression()), !dbg !2790
  %tobool269 = icmp eq %struct.rtx_def* %note.0, null, !dbg !2964
  br i1 %tobool269, label %for.end293, label %for.body270, !dbg !2964

for.body270:                                      ; preds = %for.cond268
  %69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 0, !dbg !2965
  %bf.load271 = load i32, i32* %69, align 8, !dbg !2965
  %bf.clear273 = and i32 %bf.load271, 16711680, !dbg !2965
  %cmp274 = icmp eq i32 %bf.clear273, 131072, !dbg !2968
  br i1 %cmp274, label %if.then282, label %lor.lhs.false276, !dbg !2969

lor.lhs.false276:                                 ; preds = %for.body270
  %cmp280 = icmp eq i32 %bf.clear273, 1114112, !dbg !2970
  br i1 %cmp280, label %if.then282, label %for.inc288, !dbg !2971

if.then282:                                       ; preds = %lor.lhs.false276, %for.body270
  %arrayidx285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2972
  %rt_rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**, !dbg !2972
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx286, i32 26, i32 3, i32 2) #8, !dbg !2973
  br label %for.inc288, !dbg !2973

for.inc288:                                       ; preds = %lor.lhs.false276, %if.then282
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2974
  br label %for.cond268, !dbg !2975, !llvm.loop !2976

for.end293:                                       ; preds = %for.cond268
  br label %for.cond298, !dbg !2978

for.cond298:                                      ; preds = %for.inc324, %for.end293
  %note.1.in.in = phi %union.rtunion_def* [ %68, %for.end293 ], [ %74, %for.inc324 ]
  %note.1.in = bitcast %union.rtunion_def* %note.1.in.in to %struct.rtx_def**, !dbg !2980
  %note.1 = load %struct.rtx_def*, %struct.rtx_def** %note.1.in, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.1, metadata !2724, metadata !DIExpression()), !dbg !2790
  %tobool299 = icmp eq %struct.rtx_def* %note.1, null, !dbg !2981
  br i1 %tobool299, label %for.end329, label %for.body300, !dbg !2981

for.body300:                                      ; preds = %for.cond298
  %71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.1, i64 0, i32 0, !dbg !2982
  %bf.load301 = load i32, i32* %71, align 8, !dbg !2982
  %bf.clear303 = and i32 %bf.load301, 16711680, !dbg !2982
  %cmp304 = icmp eq i32 %bf.clear303, 65536, !dbg !2985
  br i1 %cmp304, label %if.then306, label %for.inc324, !dbg !2986

if.then306:                                       ; preds = %for.body300
  %arrayidx309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2987
  %72 = bitcast %union.rtunion_def* %arrayidx309 to i32**, !dbg !2987
  %73 = load i32*, i32** %72, align 8, !dbg !2987
  %bf.load311 = load i32, i32* %73, align 8, !dbg !2987
  %bf.lshr312 = lshr i32 %bf.load311, 16, !dbg !2987
  %bf.clear313 = and i32 %bf.lshr312, 255, !dbg !2987
  %.cast2 = bitcast i32* %73 to %struct.rtx_def*, !dbg !2989
  %call318 = call fastcc i32 @rhs_regno(%struct.rtx_def* %.cast2) #8, !dbg !2989
  call fastcc void @remove_from_hard_reg_set(i64* nonnull @live_hard_regs, i32 %bf.clear313, i32 %call318) #8, !dbg !2990
  %rt_rtx322 = bitcast %union.rtunion_def* %arrayidx309 to %struct.rtx_def**, !dbg !2991
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx322, i32 0, i32 1, i32 0) #8, !dbg !2992
  br label %for.inc324, !dbg !2993

for.inc324:                                       ; preds = %for.body300, %if.then306
  %74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2994
  br label %for.cond298, !dbg !2995, !llvm.loop !2996

for.end329:                                       ; preds = %for.cond298
  %bf.load330 = load i32, i32* %10, align 8, !dbg !2998
  %bf.clear331 = and i32 %bf.load330, 65535, !dbg !2998
  %cmp332 = icmp eq i32 %bf.clear331, 10, !dbg !2998
  br i1 %cmp332, label %if.then334, label %if.end342, !dbg !2999

if.then334:                                       ; preds = %for.end329
  br label %for.cond335, !dbg !3000

for.cond335:                                      ; preds = %for.body337, %if.then334
  %p.0.in = phi %struct.du_head** [ @open_chains, %if.then334 ], [ %next_chain, %for.body337 ]
  %p.0 = load %struct.du_head*, %struct.du_head** %p.0.in, align 8, !dbg !3002
  call void @llvm.dbg.value(metadata %struct.du_head* %p.0, metadata !2761, metadata !DIExpression()), !dbg !3003
  %tobool336 = icmp eq %struct.du_head* %p.0, null, !dbg !3004
  br i1 %tobool336, label %if.end342.loopexit, label %for.body337, !dbg !3004

for.body337:                                      ; preds = %for.cond335
  %need_caller_save_reg = getelementptr inbounds %struct.du_head, %struct.du_head* %p.0, i64 0, i32 8, !dbg !3005
  %bf.load338 = load i8, i8* %need_caller_save_reg, align 8, !dbg !3007
  %bf.set = or i8 %bf.load338, 2, !dbg !3007
  store i8 %bf.set, i8* %need_caller_save_reg, align 8, !dbg !3007
  %next_chain = getelementptr inbounds %struct.du_head, %struct.du_head* %p.0, i64 0, i32 0, !dbg !3008
  br label %for.cond335, !dbg !3009, !llvm.loop !3010

if.end342.loopexit:                               ; preds = %for.cond335
  br label %if.end342, !dbg !3012

if.end342:                                        ; preds = %if.end342.loopexit, %for.end329
  call fastcc void @hide_operands(i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132, i64 %untracked_operands.0.lcssa, i8 zeroext 1) #8, !dbg !3013
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx136, i32 0, i32 0, i32 0) #8, !dbg !3014
  call fastcc void @restore_operands(%struct.rtx_def* %insn.0, i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132) #8, !dbg !3015
  call fastcc void @hide_operands(i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132, i64 %untracked_operands.0.lcssa, i8 zeroext 0) #8, !dbg !3016
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx136, align 8, !dbg !3017
  call void @note_stores(%struct.rtx_def* %75, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @note_sets_clobbers, i8* nonnull %8) #6, !dbg !3018
  call fastcc void @restore_operands(%struct.rtx_def* %insn.0, i32 %conv, %struct.rtx_def** nonnull %arraydecay, %struct.rtx_def** nonnull %arraydecay132) #8, !dbg !3019
  call fastcc void @record_out_operands(%struct.rtx_def* %insn.0, i8 zeroext 0) #8, !dbg !3020
  br label %for.cond363, !dbg !3021

for.cond363:                                      ; preds = %for.inc377, %if.end342
  %note.2.in.in = phi %union.rtunion_def* [ %68, %if.end342 ], [ %77, %for.inc377 ]
  %note.2.in = bitcast %union.rtunion_def* %note.2.in.in to %struct.rtx_def**, !dbg !3023
  %note.2 = load %struct.rtx_def*, %struct.rtx_def** %note.2.in, align 8, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.2, metadata !2724, metadata !DIExpression()), !dbg !2790
  %tobool364 = icmp eq %struct.rtx_def* %note.2, null, !dbg !3024
  br i1 %tobool364, label %for.end382, label %for.body365, !dbg !3024

for.body365:                                      ; preds = %for.cond363
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.2, i64 0, i32 0, !dbg !3025
  %bf.load366 = load i32, i32* %76, align 8, !dbg !3025
  %bf.clear368 = and i32 %bf.load366, 16711680, !dbg !3025
  %cmp369 = icmp eq i32 %bf.clear368, 1114112, !dbg !3028
  br i1 %cmp369, label %if.then371, label %for.inc377, !dbg !3029

if.then371:                                       ; preds = %for.body365
  %arrayidx374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3030
  %rt_rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**, !dbg !3030
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx375, i32 26, i32 5, i32 2) #8, !dbg !3031
  br label %for.inc377, !dbg !3031

for.inc377:                                       ; preds = %for.body365, %if.then371
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.2, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3032
  br label %for.cond363, !dbg !3033, !llvm.loop !3034

for.end382:                                       ; preds = %for.cond363
  br label %for.cond387, !dbg !3036

for.cond387:                                      ; preds = %for.inc413, %for.end382
  %note.3.in.in = phi %union.rtunion_def* [ %68, %for.end382 ], [ %81, %for.inc413 ]
  %note.3.in = bitcast %union.rtunion_def* %note.3.in.in to %struct.rtx_def**, !dbg !3038
  %note.3 = load %struct.rtx_def*, %struct.rtx_def** %note.3.in, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.3, metadata !2724, metadata !DIExpression()), !dbg !2790
  %tobool388 = icmp eq %struct.rtx_def* %note.3, null, !dbg !3039
  br i1 %tobool388, label %cleanup419.loopexit, label %for.body389, !dbg !3039

for.body389:                                      ; preds = %for.cond387
  %78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.3, i64 0, i32 0, !dbg !3040
  %bf.load390 = load i32, i32* %78, align 8, !dbg !3040
  %bf.clear392 = and i32 %bf.load390, 16711680, !dbg !3040
  %cmp393 = icmp eq i32 %bf.clear392, 393216, !dbg !3043
  br i1 %cmp393, label %if.then395, label %for.inc413, !dbg !3044

if.then395:                                       ; preds = %for.body389
  %arrayidx398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3045
  %79 = bitcast %union.rtunion_def* %arrayidx398 to i32**, !dbg !3045
  %80 = load i32*, i32** %79, align 8, !dbg !3045
  %bf.load400 = load i32, i32* %80, align 8, !dbg !3045
  %bf.lshr401 = lshr i32 %bf.load400, 16, !dbg !3045
  %bf.clear402 = and i32 %bf.lshr401, 255, !dbg !3045
  %.cast = bitcast i32* %80 to %struct.rtx_def*, !dbg !3047
  %call407 = call fastcc i32 @rhs_regno(%struct.rtx_def* %.cast) #8, !dbg !3047
  call fastcc void @remove_from_hard_reg_set(i64* nonnull @live_hard_regs, i32 %bf.clear402, i32 %call407) #8, !dbg !3048
  %rt_rtx411 = bitcast %union.rtunion_def* %arrayidx398 to %struct.rtx_def**, !dbg !3049
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx411, i32 0, i32 1, i32 0) #8, !dbg !3050
  br label %for.inc413, !dbg !3051

for.inc413:                                       ; preds = %for.body389, %if.then395
  %81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3052
  br label %for.cond387, !dbg !3053, !llvm.loop !3054

cleanup419.loopexit:                              ; preds = %for.cond387
  br label %cleanup419, !dbg !3056

cleanup419:                                       ; preds = %for.end128, %cleanup419.loopexit
  %cleanup.dest.slot.1 = phi i1 [ false, %for.end128 ], [ true, %cleanup419.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #7, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %6) #7, !dbg !3056
  br i1 %cleanup.dest.slot.1, label %if.end473, label %for.end485

if.else430:                                       ; preds = %land.lhs.true, %lor.lhs.false13
  %cmp433 = icmp eq i32 %bf.clear, 7, !dbg !3057
  br i1 %cmp433, label %land.lhs.true435, label %if.end473, !dbg !3059

land.lhs.true435:                                 ; preds = %if.else430
  %u436 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3060
  %82 = getelementptr inbounds %union.u, %union.u* %u436, i64 1, i32 0, i32 0, i64 0, !dbg !3060
  %rt_rtx439 = bitcast %union.rtunion_def* %82 to %struct.rtx_def**, !dbg !3060
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx439, align 8, !dbg !3060
  %84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3060
  %85 = bitcast %union.rtunion_def* %84 to i32**, !dbg !3060
  %86 = load i32*, i32** %85, align 8, !dbg !3060
  %bf.load444 = load i32, i32* %86, align 8, !dbg !3060
  %bf.clear445 = and i32 %bf.load444, 65535, !dbg !3060
  %cmp446 = icmp eq i32 %bf.clear445, 25, !dbg !3060
  br i1 %cmp446, label %land.lhs.true448, label %land.lhs.true435.if.then463_crit_edge, !dbg !3060

land.lhs.true435.if.then463_crit_edge:            ; preds = %land.lhs.true435
  br label %if.then463, !dbg !3060

land.lhs.true448:                                 ; preds = %land.lhs.true435
  %arrayidx459 = getelementptr inbounds i32, i32* %86, i64 2, !dbg !3060
  %rt_rtx460 = bitcast i32* %arrayidx459 to %struct.rtx_def**, !dbg !3060
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx460, align 8, !dbg !3060
  %88 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3060
  %cmp461 = icmp eq %struct.rtx_def* %87, %88, !dbg !3060
  br i1 %cmp461, label %if.end473, label %if.then463, !dbg !3061

if.then463:                                       ; preds = %land.lhs.true435.if.then463_crit_edge, %land.lhs.true448
  %rt_rtx471.pre-phi = bitcast %union.rtunion_def* %84 to %struct.rtx_def**, !dbg !3062
  call fastcc void @scan_rtx(%struct.rtx_def* %insn.0, %struct.rtx_def** nonnull %rt_rtx471.pre-phi, i32 26, i32 3, i32 0) #8, !dbg !3064
  br label %if.end473, !dbg !3065

if.end473:                                        ; preds = %if.else430, %land.lhs.true448, %if.then463, %cleanup419
  %89 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3066
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %89, i64 0, i32 1, !dbg !3066
  %90 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3066
  %cmp476 = icmp eq %struct.rtx_def* %insn.0, %90, !dbg !3068
  br i1 %cmp476, label %for.end485, label %for.inc480, !dbg !3069

for.inc480:                                       ; preds = %if.end473
  %91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3070
  %rt_rtx484 = bitcast %union.rtunion_def* %91 to %struct.rtx_def**, !dbg !3070
  br label %for.cond4, !dbg !3071, !llvm.loop !3072

for.end485:                                       ; preds = %if.end473, %cleanup419
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull @open_chains_set) #6, !dbg !3075
  %.b = load i1, i1* @fail_current_block, align 1, !dbg !3076
  %92 = load %struct.du_head*, %struct.du_head** @closed_chains, align 8, !dbg !3078
  %retval.0 = select i1 %.b, %struct.du_head* null, %struct.du_head* %92, !dbg !3078
  ret %struct.du_head* %retval.0, !dbg !3079
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_def_use_chain(%struct.du_head* %head) unnamed_addr #5 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.du_head* %head, metadata !3084, metadata !DIExpression()), !dbg !3087
  br label %while.cond, !dbg !3088

while.cond:                                       ; preds = %while.end, %entry
  %head.addr.0 = phi %struct.du_head* [ %head, %entry ], [ %10, %while.end ]
  call void @llvm.dbg.value(metadata %struct.du_head* %head.addr.0, metadata !3084, metadata !DIExpression()), !dbg !3087
  %tobool = icmp eq %struct.du_head* %head.addr.0, null, !dbg !3088
  br i1 %tobool, label %while.end9, label %while.body, !dbg !3088

while.body:                                       ; preds = %while.cond
  %first = getelementptr inbounds %struct.du_head, %struct.du_head* %head.addr.0, i64 0, i32 1, !dbg !3089
  %0 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !3089
  call void @llvm.dbg.value(metadata %struct.du_chain* %0, metadata !3085, metadata !DIExpression()), !dbg !3090
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3091
  %regno = getelementptr inbounds %struct.du_head, %struct.du_head* %head.addr.0, i64 0, i32 3, !dbg !3092
  %2 = load i32, i32* %regno, align 8, !dbg !3092
  %idxprom = zext i32 %2 to i64, !dbg !3093
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !3093
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !3093
  %nregs = getelementptr inbounds %struct.du_head, %struct.du_head* %head.addr.0, i64 0, i32 4, !dbg !3094
  %4 = load i32, i32* %nregs, align 4, !dbg !3094
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %3, i32 %4) #6, !dbg !3095
  br label %while.cond1, !dbg !3096

while.cond1:                                      ; preds = %while.body3, %while.body
  %this_du.0 = phi %struct.du_chain* [ %0, %while.body ], [ %9, %while.body3 ], !dbg !3090
  call void @llvm.dbg.value(metadata %struct.du_chain* %this_du.0, metadata !3085, metadata !DIExpression()), !dbg !3090
  %tobool2 = icmp eq %struct.du_chain* %this_du.0, null, !dbg !3096
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3090
  br i1 %tobool2, label %while.end, label %while.body3, !dbg !3096

while.body3:                                      ; preds = %while.cond1
  %insn = getelementptr inbounds %struct.du_chain, %struct.du_chain* %this_du.0, i64 0, i32 1, !dbg !3097
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3097
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3097
  %rt_int = bitcast %union.rtunion_def* %arrayidx4 to i32*, !dbg !3097
  %7 = load i32, i32* %rt_int, align 8, !dbg !3097
  %cl = getelementptr inbounds %struct.du_chain, %struct.du_chain* %this_du.0, i64 0, i32 3, !dbg !3099
  %bf.load = load i16, i16* %cl, align 8, !dbg !3099
  %idxprom5 = zext i16 %bf.load to i64, !dbg !3100
  %arrayidx6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom5, !dbg !3100
  %8 = load i8*, i8** %arrayidx6, align 8, !dbg !3100
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %7, i8* %8) #6, !dbg !3101
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %this_du.0, i64 0, i32 0, !dbg !3102
  %9 = load %struct.du_chain*, %struct.du_chain** %next_use, align 8, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.du_chain* %9, metadata !3085, metadata !DIExpression()), !dbg !3090
  br label %while.cond1, !dbg !3096, !llvm.loop !3103

while.end:                                        ; preds = %while.cond1
  %.lcssa = phi %struct._IO_FILE* [ %5, %while.cond1 ], !dbg !3090
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3105
  %next_chain = getelementptr inbounds %struct.du_head, %struct.du_head* %head.addr.0, i64 0, i32 0, !dbg !3106
  %10 = load %struct.du_head*, %struct.du_head** %next_chain, align 8, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.du_head* %10, metadata !3084, metadata !DIExpression()), !dbg !3087
  br label %while.cond, !dbg !3088, !llvm.loop !3107

while.end9:                                       ; preds = %while.cond
  ret void, !dbg !3109
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3110 {
entry:
  call void @llvm.dbg.value(metadata i64* %regs, metadata !3116, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3118, metadata !DIExpression()), !dbg !3120
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #8, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %call, metadata !3119, metadata !DIExpression()), !dbg !3120
  %regs.promoted = load i64, i64* %regs, align 8, !dbg !3122
  br label %do.body, !dbg !3123

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %or, %do.body ], !dbg !3120
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3118, metadata !DIExpression()), !dbg !3120
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !3122
  %shl = shl i64 1, %sh_prom, !dbg !3122
  %or = or i64 %0, %shl, !dbg !3122
  %inc = add i32 %regno.addr.0, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3118, metadata !DIExpression()), !dbg !3120
  %cmp = icmp ult i32 %inc, %call, !dbg !3125
  br i1 %cmp, label %do.body, label %do.end, !dbg !3122, !llvm.loop !3126

do.end:                                           ; preds = %do.body
  %or.lcssa = phi i64 [ %or, %do.body ], !dbg !3122
  store i64 %or.lcssa, i64* %regs, align 8, !dbg !3122
  ret void, !dbg !3128
}

; Function Attrs: nounwind uwtable
define internal fastcc void @merge_overlapping_regs(i64* %pset, %struct.du_head* %head) unnamed_addr #5 !dbg !3129 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i64* %pset, metadata !3133, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.du_head* %head, metadata !3134, metadata !DIExpression()), !dbg !3149
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !3150
  %1 = bitcast i32* %i to i8*, !dbg !3151
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !3151
  %hard_conflicts = getelementptr inbounds %struct.du_head, %struct.du_head* %head, i64 0, i32 7, !dbg !3152
  %2 = load i64, i64* %hard_conflicts, align 8, !dbg !3152
  %3 = load i64, i64* %pset, align 8, !dbg !3152
  %or = or i64 %3, %2, !dbg !3152
  store i64 %or, i64* %pset, align 8, !dbg !3152
  %conflicts = getelementptr inbounds %struct.du_head, %struct.du_head* %head, i64 0, i32 6, !dbg !3153
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call void @llvm.dbg.value(metadata i32* %i, metadata !3143, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %conflicts, i32 0, i32* nonnull %i) #8, !dbg !3153
  br label %for.cond, !dbg !3153

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call void @llvm.dbg.value(metadata i32* %i, metadata !3143, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !3154
  %tobool = icmp eq i8 %call, 0, !dbg !3153
  br i1 %tobool, label %for.end, label %for.body, !dbg !3153

for.body:                                         ; preds = %for.cond
  %4 = load %struct.VEC_du_head_p_heap*, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !3155
  %base = getelementptr inbounds %struct.VEC_du_head_p_heap, %struct.VEC_du_head_p_heap* %4, i64 0, i32 0, !dbg !3155
  %5 = load i32, i32* %i, align 4, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %5, metadata !3143, metadata !DIExpression()), !dbg !3149
  %call2 = call fastcc %struct.du_head* @VEC_du_head_p_base_index(%struct.VEC_du_head_p_base* %base, i32 %5) #8, !dbg !3155
  call void @llvm.dbg.value(metadata %struct.du_head* %call2, metadata !3144, metadata !DIExpression()), !dbg !3156
  %nregs = getelementptr inbounds %struct.du_head, %struct.du_head* %call2, i64 0, i32 4, !dbg !3157
  %6 = load i32, i32* %nregs, align 4, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %6, metadata !3148, metadata !DIExpression()), !dbg !3156
  %regno = getelementptr inbounds %struct.du_head, %struct.du_head* %call2, i64 0, i32 3, !dbg !3156
  br label %while.cond, !dbg !3158

while.cond:                                       ; preds = %while.body, %for.body
  %j.0 = phi i32 [ %6, %for.body ], [ %dec, %while.body ], !dbg !3156
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3148, metadata !DIExpression()), !dbg !3156
  %dec = add i32 %j.0, -1, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3148, metadata !DIExpression()), !dbg !3156
  %cmp = icmp eq i32 %j.0, 0, !dbg !3160
  br i1 %cmp, label %for.inc, label %while.body, !dbg !3158

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %regno, align 8, !dbg !3161
  %add = add i32 %7, %dec, !dbg !3161
  %sh_prom = zext i32 %add to i64, !dbg !3161
  %shl = shl i64 1, %sh_prom, !dbg !3161
  %8 = load i64, i64* %pset, align 8, !dbg !3161
  %or3 = or i64 %8, %shl, !dbg !3161
  store i64 %or3, i64* %pset, align 8, !dbg !3161
  br label %while.cond, !dbg !3158, !llvm.loop !3162

for.inc:                                          ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call void @llvm.dbg.value(metadata i32* %i, metadata !3143, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !3154
  br label %for.cond, !dbg !3154, !llvm.loop !3163

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !3165
  ret void, !dbg !3165
}

declare dso_local zeroext i8 @df_regs_ever_live_p(i32) local_unnamed_addr #2

declare dso_local zeroext i8 @ix86_hard_regno_mode_ok(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_replace(%struct.du_head* %head, i32 %reg) unnamed_addr #5 !dbg !3166 {
entry:
  call void @llvm.dbg.value(metadata %struct.du_head* %head, metadata !3170, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %reg, metadata !3171, metadata !DIExpression()), !dbg !3192
  %regno = getelementptr inbounds %struct.du_head, %struct.du_head* %head, i64 0, i32 3, !dbg !3193
  %0 = load i32, i32* %regno, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3192
  %first = getelementptr inbounds %struct.du_head, %struct.du_head* %head, i64 0, i32 1, !dbg !3194
  %1 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !3194
  %insn = getelementptr inbounds %struct.du_chain, %struct.du_chain* %1, i64 0, i32 1, !dbg !3194
  %2 = bitcast %struct.rtx_def** %insn to i32**, !dbg !3194
  %3 = load i32*, i32** %2, align 8, !dbg !3194
  %bf.load = load i32, i32* %3, align 8, !dbg !3194
  %bf.clear = and i32 %bf.load, 65535, !dbg !3194
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !3194
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3194

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3194
  br label %cond.end, !dbg !3194

cond.end:                                         ; preds = %entry, %cond.true
  br label %for.cond, !dbg !3195

for.cond:                                         ; preds = %if.end98, %cond.end
  %found_note.0 = phi i8 [ 0, %cond.end ], [ %found_note.6, %if.end98 ], !dbg !3196
  %chain.0.in = phi %struct.du_chain** [ %first, %cond.end ], [ %next_use, %if.end98 ]
  %chain.0 = load %struct.du_chain*, %struct.du_chain** %chain.0.in, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.du_chain* %chain.0, metadata !3172, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %found_note.0, metadata !3174, metadata !DIExpression()), !dbg !3192
  %tobool = icmp eq %struct.du_chain* %chain.0, null, !dbg !3198
  br i1 %tobool, label %for.end102, label %for.body, !dbg !3198

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.du_chain, %struct.du_chain* %chain.0, i64 0, i32 2, !dbg !3199
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3199
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8, !dbg !3199
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3199
  %rt_uint = bitcast %union.rtunion_def* %6 to i32*, !dbg !3199
  %7 = load i32, i32* %rt_uint, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %7, metadata !3175, metadata !DIExpression()), !dbg !3200
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3201
  %9 = bitcast %union.rtunion_def* %8 to i64*, !dbg !3201
  %10 = load i64, i64* %9, align 8, !dbg !3201
  %11 = bitcast %struct.rtx_def*** %loc to i32***, !dbg !3202
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3202
  %bf.load8 = load i32, i32* %12, align 8, !dbg !3202
  %bf.clear9 = and i32 %bf.load8, 1073741824, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %bf.clear9, metadata !3181, metadata !DIExpression()), !dbg !3200
  %insn10 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %chain.0, i64 0, i32 1, !dbg !3203
  %13 = bitcast %struct.rtx_def** %insn10 to i32**, !dbg !3203
  %14 = load i32*, i32** %13, align 8, !dbg !3203
  %bf.load11 = load i32, i32* %14, align 8, !dbg !3203
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !3203
  %cmp13 = icmp eq i32 %bf.clear12, 7, !dbg !3203
  br i1 %cmp13, label %land.lhs.true, label %if.else, !dbg !3204

land.lhs.true:                                    ; preds = %for.body
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #8, !dbg !3205
  %cmp15 = icmp eq i32 %call, %0, !dbg !3206
  br i1 %cmp15, label %land.lhs.true.if.else_crit_edge, label %if.then, !dbg !3207

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i32**, i32*** %11, align 8, !dbg !3208
  %.pre2 = load i32*, i32** %.pre, align 8, !dbg !3208
  %bf.load26.pre = load i32, i32* %.pre2, align 8, !dbg !3208
  br label %if.else, !dbg !3207

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3209
  %call16 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 25, i32 0, %struct.rtx_def* %15) #6, !dbg !3209
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8, !dbg !3210
  %u18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i64 0, i32 1, !dbg !3210
  %17 = getelementptr inbounds %union.u, %union.u* %u18, i64 1, i32 0, i32 0, i64 0, !dbg !3210
  %rt_rtx = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !3210
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3210
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3210
  %rt_rtx24 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !3210
  store %struct.rtx_def* %call16, %struct.rtx_def** %rt_rtx24, align 8, !dbg !3211
  br label %if.end98, !dbg !3210

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body
  %bf.load26 = phi i32 [ %bf.load26.pre, %land.lhs.true.if.else_crit_edge ], [ %bf.load8, %for.body ], !dbg !3208
  %bf.lshr27 = lshr i32 %bf.load26, 16, !dbg !3208
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !3208
  %call29 = tail call %struct.rtx_def* @gen_raw_REG(i32 %bf.clear28, i32 %reg) #6, !dbg !3212
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3213
  store %struct.rtx_def* %call29, %struct.rtx_def** %20, align 8, !dbg !3214
  %cmp31 = icmp ugt i32 %7, 52, !dbg !3215
  br i1 %cmp31, label %if.then32, label %if.end, !dbg !3217

if.then32:                                        ; preds = %if.else
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3218
  %22 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8, !dbg !3218
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3218
  %rt_uint37 = bitcast %union.rtunion_def* %23 to i32*, !dbg !3218
  store i32 %7, i32* %rt_uint37, align 8, !dbg !3219
  br label %if.end, !dbg !3218

if.end:                                           ; preds = %if.then32, %if.else
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3220
  %25 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8, !dbg !3220
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3220
  %27 = bitcast %union.rtunion_def* %26 to i64*, !dbg !3221
  store i64 %10, i64* %27, align 8, !dbg !3221
  %28 = load i32**, i32*** %11, align 8, !dbg !3222
  %29 = load i32*, i32** %28, align 8, !dbg !3222
  %bf.load44 = load i32, i32* %29, align 8, !dbg !3223
  %bf.clear45 = and i32 %bf.load44, -1073741825, !dbg !3223
  %bf.set = or i32 %bf.clear45, %bf.clear9, !dbg !3223
  store i32 %bf.set, i32* %29, align 8, !dbg !3223
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8, !dbg !3224
  %u47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i64 0, i32 1, !dbg !3224
  %31 = getelementptr inbounds %union.u, %union.u* %u47, i64 1, i32 0, i32 0, i64 2, !dbg !3224
  %32 = bitcast %struct.rtx_def*** %loc to i64**, !dbg !3225
  br label %for.cond51, !dbg !3229

for.cond51:                                       ; preds = %for.inc, %if.end
  %found_note.1 = phi i8 [ %found_note.0, %if.end ], [ %found_note.4, %for.inc ], !dbg !3192
  %note.0.in.in = phi %union.rtunion_def* [ %31, %if.end ], [ %42, %for.inc ]
  %note.0.in = bitcast %union.rtunion_def* %note.0.in.in to %struct.rtx_def**, !dbg !3230
  %note.0 = load %struct.rtx_def*, %struct.rtx_def** %note.0.in, align 8, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !3182, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %found_note.1, metadata !3174, metadata !DIExpression()), !dbg !3192
  %tobool52 = icmp eq %struct.rtx_def* %note.0, null, !dbg !3232
  br i1 %tobool52, label %if.end98.loopexit, label %for.body53, !dbg !3232

for.body53:                                       ; preds = %for.cond51
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 0, !dbg !3233
  %bf.load54 = load i32, i32* %33, align 8, !dbg !3233
  %bf.lshr55 = lshr i32 %bf.load54, 16, !dbg !3233
  %bf.clear56 = and i32 %bf.load54, 16711680, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %bf.clear56, metadata !3185, metadata !DIExpression()), !dbg !3234
  %trunc = trunc i32 %bf.lshr55 to i8, !dbg !3235
  switch i8 %trunc, label %if.end90 [
    i8 1, label %if.then59
    i8 6, label %if.then59
  ], !dbg !3235

if.then59:                                        ; preds = %for.body53, %for.body53
  %arrayidx63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3236
  %rt_rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**, !dbg !3236
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx64, align 8, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.rtx_def* %34, metadata !3189, metadata !DIExpression()), !dbg !3237
  %call65 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %34) #8, !dbg !3238
  %cmp66 = icmp ult i32 %call65, 53, !dbg !3238
  br i1 %cmp66, label %cond.end69, label %cond.true67, !dbg !3238

cond.true67:                                      ; preds = %if.then59
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3238
  br label %cond.end69, !dbg !3238

cond.end69:                                       ; preds = %if.then59, %cond.true67
  %call71 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %34) #8, !dbg !3239
  %cmp72 = icmp eq i32 %call71, %0, !dbg !3240
  br i1 %cmp72, label %if.then73, label %cleanup, !dbg !3241

if.then73:                                        ; preds = %cond.end69
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3192
  %cmp74 = icmp eq i32 %bf.clear56, 65536, !dbg !3242
  br i1 %cmp74, label %land.lhs.true75, label %if.else82, !dbg !3243

land.lhs.true75:                                  ; preds = %if.then73
  %35 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3244
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8, !dbg !3245
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8, !dbg !3246
  %call78 = tail call i32 @reg_set_p(%struct.rtx_def* %36, %struct.rtx_def* %37) #6, !dbg !3247
  %tobool79 = icmp eq i32 %call78, 0, !dbg !3247
  br i1 %tobool79, label %if.else82, label %if.then80, !dbg !3248

if.then80:                                        ; preds = %land.lhs.true75
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8, !dbg !3249
  tail call void @remove_note(%struct.rtx_def* %38, %struct.rtx_def* nonnull %note.0) #6, !dbg !3250
  br label %cleanup, !dbg !3250

if.else82:                                        ; preds = %land.lhs.true75, %if.then73
  %39 = load i64*, i64** %32, align 8, !dbg !3251
  %40 = load i64, i64* %39, align 8, !dbg !3252
  %u84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, !dbg !3253
  %41 = bitcast %union.u* %u84 to i64*, !dbg !3254
  store i64 %40, i64* %41, align 8, !dbg !3254
  br label %cleanup

cleanup:                                          ; preds = %cond.end69, %if.then80, %if.else82
  %found_note.2 = phi i8 [ 1, %if.else82 ], [ 1, %if.then80 ], [ %found_note.1, %cond.end69 ], !dbg !3192
  %cleanup.dest.slot.0 = phi i32 [ 5, %if.else82 ], [ 5, %if.then80 ], [ 0, %cond.end69 ]
  call void @llvm.dbg.value(metadata i8 %found_note.2, metadata !3174, metadata !DIExpression()), !dbg !3192
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end90, label %cleanup91

if.end90:                                         ; preds = %cleanup, %for.body53
  %found_note.3 = phi i8 [ %found_note.1, %for.body53 ], [ %found_note.2, %cleanup ], !dbg !3192
  call void @llvm.dbg.value(metadata i8 %found_note.3, metadata !3174, metadata !DIExpression()), !dbg !3192
  br label %cleanup91, !dbg !3255

cleanup91:                                        ; preds = %cleanup, %if.end90
  %found_note.4 = phi i8 [ %found_note.2, %cleanup ], [ %found_note.3, %if.end90 ], !dbg !3256
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end90 ]
  call void @llvm.dbg.value(metadata i8 %found_note.4, metadata !3174, metadata !DIExpression()), !dbg !3192
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %for.inc, label %if.end98.loopexit

for.inc:                                          ; preds = %cleanup91
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3257
  br label %for.cond51, !dbg !3258, !llvm.loop !3259

if.end98.loopexit:                                ; preds = %cleanup91, %for.cond51
  %found_note.6.ph = phi i8 [ %found_note.1, %for.cond51 ], [ %found_note.4, %cleanup91 ]
  br label %if.end98, !dbg !3261

if.end98:                                         ; preds = %if.end98.loopexit, %if.then
  %found_note.6 = phi i8 [ %found_note.0, %if.then ], [ %found_note.6.ph, %if.end98.loopexit ], !dbg !3192
  call void @llvm.dbg.value(metadata i8 %found_note.6, metadata !3174, metadata !DIExpression()), !dbg !3192
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8, !dbg !3261
  %call100 = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %43) #6, !dbg !3262
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %chain.0, i64 0, i32 0, !dbg !3263
  br label %for.cond, !dbg !3264, !llvm.loop !3265

for.end102:                                       ; preds = %for.cond
  %found_note.0.lcssa = phi i8 [ %found_note.0, %for.cond ], !dbg !3196
  call void @llvm.dbg.value(metadata i8 %found_note.0.lcssa, metadata !3174, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %found_note.0.lcssa, metadata !3174, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %found_note.0.lcssa, metadata !3174, metadata !DIExpression()), !dbg !3192
  %tobool103 = icmp eq i8 %found_note.0.lcssa, 0, !dbg !3267
  br i1 %tobool103, label %if.then104, label %if.end125, !dbg !3269

if.then104:                                       ; preds = %for.end102
  %44 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !3270
  %insn106 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %44, i64 0, i32 1, !dbg !3270
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn106, align 8, !dbg !3270
  %last = getelementptr inbounds %struct.du_head, %struct.du_head* %head, i64 0, i32 2, !dbg !3270
  %46 = load %struct.du_chain*, %struct.du_chain** %last, align 8, !dbg !3270
  %insn107 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %46, i64 0, i32 1, !dbg !3270
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn107, align 8, !dbg !3270
  %cmp108 = icmp eq %struct.rtx_def* %45, %47, !dbg !3270
  br i1 %cmp108, label %cond.true109, label %cond.end111, !dbg !3270

cond.true109:                                     ; preds = %if.then104
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3270
  %.pre4 = load %struct.du_chain*, %struct.du_chain** %last, align 8, !dbg !3272
  %insn116.phi.trans.insert = getelementptr inbounds %struct.du_chain, %struct.du_chain* %.pre4, i64 0, i32 1, !dbg !3274
  %.pre5 = load %struct.rtx_def*, %struct.rtx_def** %insn116.phi.trans.insert, align 8, !dbg !3275
  br label %cond.end111, !dbg !3270

cond.end111:                                      ; preds = %if.then104, %cond.true109
  %48 = phi %struct.rtx_def* [ %47, %if.then104 ], [ %.pre5, %cond.true109 ], !dbg !3275
  %49 = phi %struct.du_chain* [ %46, %if.then104 ], [ %.pre4, %cond.true109 ], !dbg !3272
  %loc114 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %49, i64 0, i32 2, !dbg !3276
  %50 = load %struct.rtx_def**, %struct.rtx_def*** %loc114, align 8, !dbg !3276
  %51 = load %struct.rtx_def*, %struct.rtx_def** %50, align 8, !dbg !3277
  %call117 = tail call i32 @reg_set_p(%struct.rtx_def* %51, %struct.rtx_def* %48) #6, !dbg !3278
  %tobool118 = icmp eq i32 %call117, 0, !dbg !3278
  br i1 %tobool118, label %if.then119, label %if.end125, !dbg !3279

if.then119:                                       ; preds = %cond.end111
  %52 = load %struct.du_chain*, %struct.du_chain** %last, align 8, !dbg !3280
  %insn121 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %52, i64 0, i32 1, !dbg !3281
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn121, align 8, !dbg !3281
  %loc123 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %52, i64 0, i32 2, !dbg !3282
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %loc123, align 8, !dbg !3282
  %55 = load %struct.rtx_def*, %struct.rtx_def** %54, align 8, !dbg !3283
  tail call void @add_reg_note(%struct.rtx_def* %53, i32 1, %struct.rtx_def* %55) #6, !dbg !3284
  br label %if.end125, !dbg !3284

if.end125:                                        ; preds = %cond.end111, %for.end102, %if.then119
  ret void, !dbg !3285
}

declare dso_local void @df_set_regs_ever_live(i32, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_chain_data() unnamed_addr #5 !dbg !3286 {
entry:
  %ptr = alloca %struct.du_head*, align 8
  %0 = bitcast %struct.du_head** %ptr to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3290, metadata !DIExpression()), !dbg !3293
  br label %for.cond, !dbg !3294

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3296
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3290, metadata !DIExpression()), !dbg !3293
  %1 = load %struct.VEC_du_head_p_heap*, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !3297
  %base = getelementptr inbounds %struct.VEC_du_head_p_heap, %struct.VEC_du_head_p_heap* %1, i64 0, i32 0, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.du_head** %ptr, metadata !3291, metadata !DIExpression(DW_OP_deref)), !dbg !3293
  %call = call fastcc i32 @VEC_du_head_p_base_iterate(%struct.VEC_du_head_p_base* %base, i32 %i.0, %struct.du_head** nonnull %ptr) #8, !dbg !3297
  %tobool1 = icmp eq i32 %call, 0, !dbg !3299
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3299

for.body:                                         ; preds = %for.cond
  %2 = load %struct.du_head*, %struct.du_head** %ptr, align 8, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.du_head* %2, metadata !3291, metadata !DIExpression()), !dbg !3293
  %conflicts = getelementptr inbounds %struct.du_head, %struct.du_head* %2, i64 0, i32 6, !dbg !3301
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull %conflicts) #6, !dbg !3302
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3290, metadata !DIExpression()), !dbg !3293
  br label %for.cond, !dbg !3304, !llvm.loop !3305

for.end:                                          ; preds = %for.cond
  call fastcc void @VEC_du_head_p_heap_free(%struct.VEC_du_head_p_heap** nonnull @id_to_chain) #8, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3308
  ret void, !dbg !3308
}

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %head, %struct.bitmap_obstack* %obstack) unnamed_addr #0 !dbg !3309 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3314, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* @bitmap_default_obstack, metadata !3315, metadata !DIExpression()), !dbg !3316
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !3317
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8, !dbg !3318
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !3319
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8, !dbg !3320
  %obstack1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !3321
  store %struct.bitmap_obstack* @bitmap_default_obstack, %struct.bitmap_obstack** %obstack1, align 8, !dbg !3322
  ret void, !dbg !3323
}

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %bb_index) unnamed_addr #0 !dbg !3324 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !3328, metadata !DIExpression()), !dbg !3329
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #8, !dbg !3330
  %artificial_defs = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 0, !dbg !3331
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_defs, align 8, !dbg !3331
  ret %union.df_ref_d** %0, !dbg !3332
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #2

declare dso_local void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @preprocess_constraints() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @verify_reg_in_set(%struct.rtx_def* %op, i64* %pset) unnamed_addr #5 !dbg !3333 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3337, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64* %pset, metadata !3338, metadata !DIExpression()), !dbg !3343
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3344
  %bf.load = load i32, i32* %0, align 8, !dbg !3344
  %bf.clear = and i32 %bf.load, 65535, !dbg !3344
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3344
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3346

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #8, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %call, metadata !3339, metadata !DIExpression()), !dbg !3343
  %idxprom = zext i32 %call to i64, !dbg !3348
  %bf.load1 = load i32, i32* %0, align 8, !dbg !3349
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !3349
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3349
  %idxprom3 = zext i32 %bf.clear2 to i64, !dbg !3348
  %arrayidx4 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom3, !dbg !3348
  %1 = load i8, i8* %arrayidx4, align 1, !dbg !3348
  call void @llvm.dbg.value(metadata i8 %1, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 1, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 1, metadata !3341, metadata !DIExpression()), !dbg !3343
  %2 = zext i8 %1 to i64, !dbg !3350
  br label %while.cond, !dbg !3350

while.cond:                                       ; preds = %while.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ %2, %if.end ], !dbg !3343
  %all_live.0 = phi i8 [ %all_live.0., %while.body ], [ 1, %if.end ], !dbg !3351
  %all_dead.0 = phi i8 [ %.all_dead.0, %while.body ], [ 1, %if.end ], !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_dead.0, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_live.0, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 undef, metadata !3340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3343
  %cmp5 = icmp eq i64 %indvars.iv, 0, !dbg !3352
  br i1 %cmp5, label %while.end, label %while.body, !dbg !3350

while.body:                                       ; preds = %while.cond
  %3 = trunc i64 %indvars.iv to i32, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %3, metadata !3340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3343
  %dec = add nsw i32 %3, -1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3340, metadata !DIExpression()), !dbg !3343
  %4 = load i64, i64* %pset, align 8, !dbg !3354
  %add = add i32 %call, %dec, !dbg !3354
  %sh_prom = zext i32 %add to i64, !dbg !3354
  %shl = shl i64 1, %sh_prom, !dbg !3354
  %and = and i64 %4, %shl, !dbg !3354
  %tobool = icmp ne i64 %and, 0, !dbg !3354
  %all_live.0. = select i1 %tobool, i8 %all_live.0, i8 0
  %.all_dead.0 = select i1 %tobool, i8 0, i8 %all_dead.0
  call void @llvm.dbg.value(metadata i8 %.all_dead.0, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_live.0., metadata !3341, metadata !DIExpression()), !dbg !3343
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3353
  br label %while.cond, !dbg !3350, !llvm.loop !3356

while.end:                                        ; preds = %while.cond
  %all_live.0.lcssa = phi i8 [ %all_live.0, %while.cond ], !dbg !3351
  %all_dead.0.lcssa = phi i8 [ %all_dead.0, %while.cond ], !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_live.0.lcssa, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_dead.0.lcssa, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_live.0.lcssa, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_dead.0.lcssa, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_live.0.lcssa, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %all_dead.0.lcssa, metadata !3342, metadata !DIExpression()), !dbg !3343
  %5 = or i8 %all_dead.0.lcssa, %all_live.0.lcssa, !dbg !3358
  %6 = icmp eq i8 %5, 0, !dbg !3358
  br i1 %6, label %if.then11, label %cleanup, !dbg !3358

if.then11:                                        ; preds = %while.end
  store i1 true, i1* @fail_current_block, align 1, !dbg !3360
  br label %cleanup, !dbg !3362

cleanup:                                          ; preds = %while.end, %entry, %if.then11
  %retval.0 = phi i8 [ 0, %if.then11 ], [ 0, %entry ], [ %all_live.0.lcssa, %while.end ], !dbg !3343
  ret i8 %retval.0, !dbg !3363
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %op) unnamed_addr #5 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3368, metadata !DIExpression()), !dbg !3369
  %call = tail call fastcc zeroext i8 @verify_reg_in_set(%struct.rtx_def* %op, i64* nonnull @live_hard_regs) #8, !dbg !3370
  %tobool = icmp eq i8 %call, 0, !dbg !3370
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3371

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @verify_reg_in_set(%struct.rtx_def* %op, i64* nonnull @live_in_chains) #8, !dbg !3372
  %tobool3 = icmp ne i8 %call1, 0, !dbg !3371
  %phitmp = zext i1 %tobool3 to i8, !dbg !3371
  br label %lor.end, !dbg !3371

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %0, !dbg !3373
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3374 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3381, metadata !DIExpression()), !dbg !3382
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3383
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3383
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3383
  ret i32 %0, !dbg !3384
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_new_chain(i32 %this_regno, i32 %this_nregs, %struct.rtx_def** %loc, %struct.rtx_def* %insn, i32 %cl) unnamed_addr #5 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata i32 %this_regno, metadata !3389, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %this_nregs, metadata !3390, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3391, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3392, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3393, metadata !DIExpression()), !dbg !3397
  store i64 88, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3398
  %0 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3398
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3398
  %sub.ptr.sub = sub i64 %0, %1, !dbg !3398
  %cmp = icmp slt i64 %sub.ptr.sub, 88, !dbg !3398
  %2 = inttoptr i64 %1 to i8*, !dbg !3398
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3398

cond.true:                                        ; preds = %entry
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @rename_obstack, i32 88) #6, !dbg !3398
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3398
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3398
  br label %cond.end, !dbg !3398

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i8* [ %2, %entry ], [ %.pre1, %cond.true ], !dbg !3398
  %4 = phi i64 [ 88, %entry ], [ %.pre, %cond.true ], !dbg !3398
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !3398
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3398
  %5 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !3398
  %cmp1 = icmp eq i8* %add.ptr, %5, !dbg !3398
  %6 = ptrtoint i8* %5 to i64, !dbg !3398
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !3398
  br i1 %cmp1, label %cond.true3, label %cond.end5, !dbg !3398

cond.true3:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !3398
  %bf.set = or i8 %bf.load, 2, !dbg !3398
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !3398
  br label %cond.end5, !dbg !3398

cond.end5:                                        ; preds = %cond.end, %cond.true3
  store i64 %6, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3398
  %8 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 6), align 8, !dbg !3398
  %conv11 = sext i32 %8 to i64, !dbg !3398
  %add = add nsw i64 %7, %conv11, !dbg !3398
  %neg = xor i32 %8, -1, !dbg !3398
  %conv12 = sext i32 %neg to i64, !dbg !3398
  %and = and i64 %add, %conv12, !dbg !3398
  %9 = inttoptr i64 %and to i8*, !dbg !3398
  store i8* %9, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3398
  %10 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3398
  %sub.ptr.sub15 = sub i64 %and, %10, !dbg !3398
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3398
  %sub.ptr.sub18 = sub i64 %11, %10, !dbg !3398
  %cmp19 = icmp sgt i64 %sub.ptr.sub15, %sub.ptr.sub18, !dbg !3398
  %12 = bitcast i8* %5 to %struct.du_head*, !dbg !3398
  br i1 %cmp19, label %cond.true21, label %cond.end23, !dbg !3398

cond.true21:                                      ; preds = %cond.end5
  store i64 %11, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3398
  br label %cond.end23, !dbg !3398

cond.end23:                                       ; preds = %cond.end5, %cond.true21
  %13 = phi i64 [ %and, %cond.end5 ], [ %11, %cond.true21 ], !dbg !3398
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3398
  call void @llvm.dbg.value(metadata %struct.du_head* %12, metadata !3394, metadata !DIExpression()), !dbg !3397
  %14 = load i64, i64* bitcast (%struct.du_head** @open_chains to i64*), align 8, !dbg !3399
  %15 = bitcast i8* %5 to i64*, !dbg !3400
  store i64 %14, i64* %15, align 8, !dbg !3400
  store i8* %5, i8** bitcast (%struct.du_head** @open_chains to i8**), align 8, !dbg !3401
  %regno = getelementptr inbounds i8, i8* %5, i64 24, !dbg !3402
  %16 = bitcast i8* %regno to i32*, !dbg !3402
  store i32 %this_regno, i32* %16, align 8, !dbg !3403
  %nregs25 = getelementptr inbounds i8, i8* %5, i64 28, !dbg !3404
  %17 = bitcast i8* %nregs25 to i32*, !dbg !3404
  store i32 %this_nregs, i32* %17, align 4, !dbg !3405
  %18 = getelementptr inbounds i8, i8* %5, i64 80, !dbg !3406
  %bf.load26 = load i8, i8* %18, align 8, !dbg !3407
  %bf.clear31 = and i8 %bf.load26, -8, !dbg !3408
  store i8 %bf.clear31, i8* %18, align 8, !dbg !3408
  %call = tail call fastcc %struct.du_head** @VEC_du_head_p_heap_safe_push(%struct.VEC_du_head_p_heap** nonnull @id_to_chain, %struct.du_head* %12) #8, !dbg !3409
  %19 = load i32, i32* @current_id, align 4, !dbg !3410
  %inc = add i32 %19, 1, !dbg !3410
  store i32 %inc, i32* @current_id, align 4, !dbg !3410
  %id = getelementptr inbounds i8, i8* %5, i64 32, !dbg !3411
  %20 = bitcast i8* %id to i32*, !dbg !3411
  store i32 %19, i32* %20, align 8, !dbg !3412
  %conflicts = getelementptr inbounds i8, i8* %5, i64 40, !dbg !3413
  %21 = bitcast i8* %conflicts to %struct.bitmap_head_def*, !dbg !3413
  tail call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %21, %struct.bitmap_obstack* nonnull @bitmap_default_obstack) #8, !dbg !3413
  tail call void @bitmap_copy(%struct.bitmap_head_def* nonnull %21, %struct.bitmap_head_def* nonnull @open_chains_set) #6, !dbg !3414
  %22 = load %struct.du_head*, %struct.du_head** @open_chains, align 8, !dbg !3415
  %23 = load i32, i32* %20, align 8, !dbg !3416
  tail call fastcc void @mark_conflict(%struct.du_head* %22, i32 %23) #8, !dbg !3417
  %24 = load i32, i32* %17, align 4, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %24, metadata !3396, metadata !DIExpression()), !dbg !3397
  br label %while.cond, !dbg !3419

while.cond:                                       ; preds = %while.body, %cond.end23
  %nregs.0 = phi i32 [ %24, %cond.end23 ], [ %dec, %while.body ], !dbg !3397
  call void @llvm.dbg.value(metadata i32 %nregs.0, metadata !3396, metadata !DIExpression()), !dbg !3397
  %dec = add nsw i32 %nregs.0, -1, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3396, metadata !DIExpression()), !dbg !3397
  %cmp35 = icmp sgt i32 %nregs.0, 0, !dbg !3421
  br i1 %cmp35, label %while.body, label %while.end, !dbg !3419

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %16, align 8, !dbg !3422
  %add38 = add i32 %25, %dec, !dbg !3422
  %sh_prom = zext i32 %add38 to i64, !dbg !3422
  %shl = shl i64 1, %sh_prom, !dbg !3422
  %26 = load i64, i64* @live_in_chains, align 8, !dbg !3422
  %or = or i64 %26, %shl, !dbg !3422
  store i64 %or, i64* @live_in_chains, align 8, !dbg !3422
  %neg43 = xor i64 %shl, -1, !dbg !3424
  %27 = load i64, i64* @live_hard_regs, align 8, !dbg !3424
  %and44 = and i64 %27, %neg43, !dbg !3424
  store i64 %and44, i64* @live_hard_regs, align 8, !dbg !3424
  br label %while.cond, !dbg !3419, !llvm.loop !3425

while.end:                                        ; preds = %while.cond
  %28 = load i64, i64* @live_hard_regs, align 8, !dbg !3427
  %hard_conflicts = getelementptr inbounds i8, i8* %5, i64 72, !dbg !3427
  %29 = bitcast i8* %hard_conflicts to i64*, !dbg !3427
  store i64 %28, i64* %29, align 8, !dbg !3427
  %30 = load i32, i32* %20, align 8, !dbg !3428
  %call46 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull @open_chains_set, i32 %30) #6, !dbg !3429
  store i8* %5, i8** bitcast (%struct.du_head** @open_chains to i8**), align 8, !dbg !3430
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3431
  %tobool = icmp eq %struct._IO_FILE* %31, null, !dbg !3431
  br i1 %tobool, label %if.end56, label %if.then, !dbg !3433

if.then:                                          ; preds = %while.end
  %32 = load i32, i32* %16, align 8, !dbg !3434
  %idxprom = zext i32 %32 to i64, !dbg !3436
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !3436
  %33 = load i8*, i8** %arrayidx, align 8, !dbg !3436
  %34 = load i32, i32* %20, align 8, !dbg !3437
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %33, i32 %34) #6, !dbg !3438
  %cmp50 = icmp eq %struct.rtx_def* %insn, null, !dbg !3439
  br i1 %cmp50, label %if.end, label %if.then52, !dbg !3441

if.then52:                                        ; preds = %if.then
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3442
  %arrayidx53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3443
  %rt_int = bitcast %union.rtunion_def* %arrayidx53 to i32*, !dbg !3443
  %36 = load i32, i32* %rt_int, align 8, !dbg !3443
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %36) #6, !dbg !3444
  br label %if.end, !dbg !3444

if.end:                                           ; preds = %if.then, %if.then52
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3445
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3446
  br label %if.end56, !dbg !3447

if.end56:                                         ; preds = %while.end, %if.end
  %cmp57 = icmp eq %struct.rtx_def* %insn, null, !dbg !3448
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !3450

if.then59:                                        ; preds = %if.end56
  %last = getelementptr inbounds i8, i8* %5, i64 16, !dbg !3451
  %38 = bitcast i8* %last to %struct.du_chain**, !dbg !3451
  store %struct.du_chain* null, %struct.du_chain** %38, align 8, !dbg !3453
  %first = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3454
  %39 = bitcast i8* %first to %struct.du_chain**, !dbg !3454
  store %struct.du_chain* null, %struct.du_chain** %39, align 8, !dbg !3455
  br label %cleanup.cont, !dbg !3456

if.end60:                                         ; preds = %if.end56
  store i64 32, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3457
  %40 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3457
  %41 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3457
  %sub.ptr.sub63 = sub i64 %40, %41, !dbg !3457
  %cmp64 = icmp slt i64 %sub.ptr.sub63, 32, !dbg !3457
  %42 = inttoptr i64 %41 to i8*, !dbg !3457
  br i1 %cmp64, label %cond.true66, label %cond.end69, !dbg !3457

cond.true66:                                      ; preds = %if.end60
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @rename_obstack, i32 32) #6, !dbg !3457
  %.pre2 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3457
  %.pre3 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3457
  br label %cond.end69, !dbg !3457

cond.end69:                                       ; preds = %if.end60, %cond.true66
  %43 = phi i8* [ %42, %if.end60 ], [ %.pre3, %cond.true66 ], !dbg !3457
  %44 = phi i64 [ 32, %if.end60 ], [ %.pre2, %cond.true66 ], !dbg !3457
  %add.ptr71 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !3457
  store i8* %add.ptr71, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3457
  %45 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !3457
  %cmp72 = icmp eq i8* %add.ptr71, %45, !dbg !3457
  %46 = ptrtoint i8* %45 to i64, !dbg !3457
  %47 = ptrtoint i8* %add.ptr71 to i64, !dbg !3457
  br i1 %cmp72, label %cond.true74, label %cond.end79, !dbg !3457

cond.true74:                                      ; preds = %cond.end69
  %bf.load75 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !3457
  %bf.set77 = or i8 %bf.load75, 2, !dbg !3457
  store i8 %bf.set77, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !3457
  br label %cond.end79, !dbg !3457

cond.end79:                                       ; preds = %cond.end69, %cond.true74
  store i64 %46, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !3457
  %48 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 6), align 8, !dbg !3457
  %conv85 = sext i32 %48 to i64, !dbg !3457
  %add86 = add nsw i64 %47, %conv85, !dbg !3457
  %neg87 = xor i32 %48, -1, !dbg !3457
  %conv88 = sext i32 %neg87 to i64, !dbg !3457
  %and89 = and i64 %add86, %conv88, !dbg !3457
  %49 = inttoptr i64 %and89 to i8*, !dbg !3457
  store i8* %49, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !3457
  %50 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3457
  %sub.ptr.sub92 = sub i64 %and89, %50, !dbg !3457
  %51 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3457
  %sub.ptr.sub95 = sub i64 %51, %50, !dbg !3457
  %cmp96 = icmp sgt i64 %sub.ptr.sub92, %sub.ptr.sub95, !dbg !3457
  br i1 %cmp96, label %cond.true98, label %cond.end100, !dbg !3457

cond.true98:                                      ; preds = %cond.end79
  store i64 %51, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3457
  br label %cond.end100, !dbg !3457

cond.end100:                                      ; preds = %cond.end79, %cond.true98
  %52 = phi i64 [ %and89, %cond.end79 ], [ %51, %cond.true98 ], !dbg !3457
  store i64 %52, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %45, metadata !3395, metadata !DIExpression()), !dbg !3397
  %last102 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !3458
  %53 = bitcast i8* %last102 to i8**, !dbg !3459
  store i8* %45, i8** %53, align 8, !dbg !3459
  %first103 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3460
  %54 = bitcast i8* %first103 to i8**, !dbg !3461
  store i8* %45, i8** %54, align 8, !dbg !3461
  %next_use = bitcast i8* %45 to %struct.du_chain**, !dbg !3462
  store %struct.du_chain* null, %struct.du_chain** %next_use, align 8, !dbg !3463
  %loc104 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !3464
  %55 = bitcast i8* %loc104 to %struct.rtx_def***, !dbg !3464
  store %struct.rtx_def** %loc, %struct.rtx_def*** %55, align 8, !dbg !3465
  %insn105 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !3466
  %56 = bitcast i8* %insn105 to %struct.rtx_def**, !dbg !3466
  store %struct.rtx_def* %insn, %struct.rtx_def** %56, align 8, !dbg !3467
  %cl106 = getelementptr inbounds i8, i8* %45, i64 24, !dbg !3468
  %57 = bitcast i8* %cl106 to i16*, !dbg !3468
  %58 = trunc i32 %cl to i16, !dbg !3469
  store i16 %58, i16* %57, align 8, !dbg !3469
  br label %cleanup.cont, !dbg !3470

cleanup.cont:                                     ; preds = %if.then59, %cond.end100
  ret void, !dbg !3470
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hide_operands(i32 %n_ops, %struct.rtx_def** %old_operands, %struct.rtx_def** %old_dups, i64 %do_not_hide, i8 zeroext %inout_and_ec_only) unnamed_addr #5 !dbg !3471 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_ops, metadata !3475, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %struct.rtx_def** %old_operands, metadata !3476, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %struct.rtx_def** %old_dups, metadata !3477, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %do_not_hide, metadata !3478, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 %inout_and_ec_only, metadata !3479, metadata !DIExpression()), !dbg !3486
  %0 = load i32, i32* @which_alternative, align 4, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %0, metadata !3481, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3486
  %tobool11 = icmp eq i8 %inout_and_ec_only, 0, !dbg !3488
  %idxprom19 = sext i32 %0 to i64, !dbg !3488
  br i1 %tobool11, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3493

entry.entry.split_crit_edge:                      ; preds = %entry
  %1 = sext i32 %n_ops to i64, !dbg !3493
  br label %for.cond, !dbg !3493

entry.split.us:                                   ; preds = %entry
  %2 = sext i32 %n_ops to i64, !dbg !3493
  br label %for.cond.us, !dbg !3493

for.cond.us:                                      ; preds = %for.inc.us, %entry.split.us
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc.us ], [ 0, %entry.split.us ], !dbg !3494
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3480, metadata !DIExpression()), !dbg !3486
  %cmp.us = icmp slt i64 %indvars.iv3, %2, !dbg !3495
  br i1 %cmp.us, label %for.body.us, label %for.cond26.preheader.us-lcssa.us, !dbg !3496

for.body.us:                                      ; preds = %for.cond.us
  %arrayidx.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv3, !dbg !3497
  %3 = bitcast %struct.rtx_def** %arrayidx.us to i64*, !dbg !3497
  %4 = load i64, i64* %3, align 8, !dbg !3497
  %arrayidx2.us = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_operands, i64 %indvars.iv3, !dbg !3498
  %5 = bitcast %struct.rtx_def** %arrayidx2.us to i64*, !dbg !3499
  store i64 %4, i64* %5, align 8, !dbg !3499
  %arrayidx4.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv3, !dbg !3500
  %6 = load i8*, i8** %arrayidx4.us, align 8, !dbg !3500
  %7 = load i8, i8* %6, align 1, !dbg !3500
  %cmp6.us = icmp eq i8 %7, 0, !dbg !3502
  br i1 %cmp6.us, label %for.inc.us, label %if.end.us, !dbg !3503

if.end.us:                                        ; preds = %for.body.us
  %8 = trunc i64 %indvars.iv3 to i32, !dbg !3504
  %shl.us = shl i32 1, %8, !dbg !3504
  %conv8.us = sext i32 %shl.us to i64, !dbg !3506
  %and.us = and i64 %conv8.us, %do_not_hide, !dbg !3507
  %tobool.us = icmp eq i64 %and.us, 0, !dbg !3507
  br i1 %tobool.us, label %if.end10.us, label %for.inc.us, !dbg !3508

if.end10.us:                                      ; preds = %if.end.us
  %9 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 1) to i64*), align 8, !dbg !3509
  %arrayidx24.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv3, !dbg !3510
  %10 = bitcast %struct.rtx_def*** %arrayidx24.us to i64**, !dbg !3510
  %11 = load i64*, i64** %10, align 8, !dbg !3510
  store i64 %9, i64* %11, align 8, !dbg !3511
  br label %for.inc.us, !dbg !3512

for.inc.us:                                       ; preds = %if.end10.us, %if.end.us, %for.body.us
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3486
  br label %for.cond.us, !dbg !3514, !llvm.loop !3515

for.cond26.preheader.us-lcssa.us:                 ; preds = %for.cond.us
  br label %for.cond26.preheader, !dbg !3517

for.cond:                                         ; preds = %for.inc, %entry.entry.split_crit_edge
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc ], [ 0, %entry.entry.split_crit_edge ], !dbg !3494
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3480, metadata !DIExpression()), !dbg !3486
  %cmp = icmp slt i64 %indvars.iv5, %1, !dbg !3495
  br i1 %cmp, label %for.body, label %for.cond26.preheader.us-lcssa, !dbg !3496

for.cond26.preheader.us-lcssa:                    ; preds = %for.cond
  br label %for.cond26.preheader, !dbg !3517

for.cond26.preheader:                             ; preds = %for.cond26.preheader.us-lcssa.us, %for.cond26.preheader.us-lcssa
  br i1 %tobool11, label %for.cond26.preheader.split.us, label %for.cond26.preheader.for.cond26.preheader.split_crit_edge, !dbg !3519

for.cond26.preheader.for.cond26.preheader.split_crit_edge: ; preds = %for.cond26.preheader
  br label %for.cond26, !dbg !3519

for.cond26.preheader.split.us:                    ; preds = %for.cond26.preheader
  br label %for.cond26.us, !dbg !3519

for.cond26.us:                                    ; preds = %cleanup.us, %for.cond26.preheader.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup.us ], [ 0, %for.cond26.preheader.split.us ], !dbg !3520
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3480, metadata !DIExpression()), !dbg !3486
  %12 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3521
  %13 = sext i8 %12 to i64, !dbg !3522
  %cmp28.us = icmp slt i64 %indvars.iv, %13, !dbg !3522
  br i1 %cmp28.us, label %for.body30.us, label %for.end66.us-lcssa.us, !dbg !3519

for.body30.us:                                    ; preds = %for.cond26.us
  %arrayidx32.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %indvars.iv, !dbg !3523
  %14 = load i8, i8* %arrayidx32.us, align 1, !dbg !3523
  %conv33.us = sext i8 %14 to i32, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %conv33.us, metadata !3482, metadata !DIExpression()), !dbg !3524
  %arrayidx35.us = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv, !dbg !3525
  %15 = bitcast %struct.rtx_def*** %arrayidx35.us to i64**, !dbg !3525
  %16 = load i64*, i64** %15, align 8, !dbg !3525
  %17 = load i64, i64* %16, align 8, !dbg !3526
  %arrayidx37.us = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_dups, i64 %indvars.iv, !dbg !3527
  %18 = bitcast %struct.rtx_def** %arrayidx37.us to i64*, !dbg !3528
  store i64 %17, i64* %18, align 8, !dbg !3528
  %shl38.us = shl i32 1, %conv33.us, !dbg !3529
  %conv39.us = sext i32 %shl38.us to i64, !dbg !3531
  %and40.us = and i64 %conv39.us, %do_not_hide, !dbg !3532
  %tobool41.us = icmp eq i64 %and40.us, 0, !dbg !3532
  br i1 %tobool41.us, label %if.end43.us, label %cleanup.us, !dbg !3533

if.end43.us:                                      ; preds = %for.body30.us
  %19 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 1) to i64*), align 8, !dbg !3534
  %20 = load i64*, i64** %15, align 8, !dbg !3535
  store i64 %19, i64* %20, align 8, !dbg !3536
  br label %cleanup.us, !dbg !3537

cleanup.us:                                       ; preds = %if.end43.us, %for.body30.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3486
  br label %for.cond26.us, !dbg !3539, !llvm.loop !3540

for.end66.us-lcssa.us:                            ; preds = %for.cond26.us
  br label %for.end66, !dbg !3542

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv5, !dbg !3497
  %21 = bitcast %struct.rtx_def** %arrayidx to i64*, !dbg !3497
  %22 = load i64, i64* %21, align 8, !dbg !3497
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_operands, i64 %indvars.iv5, !dbg !3498
  %23 = bitcast %struct.rtx_def** %arrayidx2 to i64*, !dbg !3499
  store i64 %22, i64* %23, align 8, !dbg !3499
  %arrayidx4 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv5, !dbg !3500
  %24 = load i8*, i8** %arrayidx4, align 8, !dbg !3500
  %25 = load i8, i8* %24, align 1, !dbg !3500
  %cmp6 = icmp eq i8 %25, 0, !dbg !3502
  br i1 %cmp6, label %for.inc, label %if.end, !dbg !3503

if.end:                                           ; preds = %for.body
  %26 = trunc i64 %indvars.iv5 to i32, !dbg !3504
  %shl = shl i32 1, %26, !dbg !3504
  %conv8 = sext i32 %shl to i64, !dbg !3506
  %and = and i64 %conv8, %do_not_hide, !dbg !3507
  %tobool = icmp eq i64 %and, 0, !dbg !3507
  br i1 %tobool, label %if.end10, label %for.inc, !dbg !3508

if.end10:                                         ; preds = %if.end
  %arrayidx13 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv5, !dbg !3543
  %27 = load i32, i32* %arrayidx13, align 4, !dbg !3543
  %cmp14 = icmp eq i32 %27, 2, !dbg !3544
  br i1 %cmp14, label %if.then22, label %lor.lhs.false16, !dbg !3545

lor.lhs.false16:                                  ; preds = %if.end10
  %earlyclobber = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %indvars.iv5, i64 %idxprom19, i32 5, !dbg !3546
  %bf.load = load i8, i8* %earlyclobber, align 8, !dbg !3546
  %bf.clear = and i8 %bf.load, 1, !dbg !3546
  %tobool21 = icmp eq i8 %bf.clear, 0, !dbg !3547
  br i1 %tobool21, label %for.inc, label %if.then22, !dbg !3548

if.then22:                                        ; preds = %lor.lhs.false16, %if.end10
  %28 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 1) to i64*), align 8, !dbg !3509
  %arrayidx24 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv5, !dbg !3510
  %29 = bitcast %struct.rtx_def*** %arrayidx24 to i64**, !dbg !3510
  %30 = load i64*, i64** %29, align 8, !dbg !3510
  store i64 %28, i64* %30, align 8, !dbg !3511
  br label %for.inc, !dbg !3512

for.inc:                                          ; preds = %lor.lhs.false16, %if.end, %if.then22, %for.body
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3486
  br label %for.cond, !dbg !3514, !llvm.loop !3515

for.cond26:                                       ; preds = %for.cond26.preheader.for.cond26.preheader.split_crit_edge, %cleanup
  %indvars.iv1 = phi i64 [ 0, %for.cond26.preheader.for.cond26.preheader.split_crit_edge ], [ %indvars.iv.next2, %cleanup ], !dbg !3520
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3480, metadata !DIExpression()), !dbg !3486
  %31 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3521
  %32 = sext i8 %31 to i64, !dbg !3522
  %cmp28 = icmp slt i64 %indvars.iv1, %32, !dbg !3522
  br i1 %cmp28, label %for.body30, label %for.end66.us-lcssa, !dbg !3519

for.body30:                                       ; preds = %for.cond26
  %arrayidx32 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %indvars.iv1, !dbg !3523
  %33 = load i8, i8* %arrayidx32, align 1, !dbg !3523
  %conv33 = sext i8 %33 to i32, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !3482, metadata !DIExpression()), !dbg !3524
  %arrayidx35 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv1, !dbg !3525
  %34 = bitcast %struct.rtx_def*** %arrayidx35 to i64**, !dbg !3525
  %35 = load i64*, i64** %34, align 8, !dbg !3525
  %36 = load i64, i64* %35, align 8, !dbg !3526
  %arrayidx37 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_dups, i64 %indvars.iv1, !dbg !3527
  %37 = bitcast %struct.rtx_def** %arrayidx37 to i64*, !dbg !3528
  store i64 %36, i64* %37, align 8, !dbg !3528
  %shl38 = shl i32 1, %conv33, !dbg !3529
  %conv39 = sext i32 %shl38 to i64, !dbg !3531
  %and40 = and i64 %conv39, %do_not_hide, !dbg !3532
  %tobool41 = icmp eq i64 %and40, 0, !dbg !3532
  br i1 %tobool41, label %if.end43, label %cleanup, !dbg !3533

if.end43:                                         ; preds = %for.body30
  %idxprom46 = sext i8 %33 to i64, !dbg !3549
  %arrayidx47 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %idxprom46, !dbg !3549
  %38 = load i32, i32* %arrayidx47, align 4, !dbg !3549
  %cmp48 = icmp eq i32 %38, 2, !dbg !3550
  br i1 %cmp48, label %if.then60, label %lor.lhs.false50, !dbg !3551

lor.lhs.false50:                                  ; preds = %if.end43
  %earlyclobber55 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom46, i64 %idxprom19, i32 5, !dbg !3552
  %bf.load56 = load i8, i8* %earlyclobber55, align 8, !dbg !3552
  %bf.clear57 = and i8 %bf.load56, 1, !dbg !3552
  %tobool59 = icmp eq i8 %bf.clear57, 0, !dbg !3553
  br i1 %tobool59, label %cleanup, label %if.then60, !dbg !3554

if.then60:                                        ; preds = %lor.lhs.false50, %if.end43
  %39 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 1) to i64*), align 8, !dbg !3534
  %40 = load i64*, i64** %34, align 8, !dbg !3535
  store i64 %39, i64* %40, align 8, !dbg !3536
  br label %cleanup, !dbg !3537

cleanup:                                          ; preds = %lor.lhs.false50, %for.body30, %if.then60
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3486
  br label %for.cond26, !dbg !3539, !llvm.loop !3540

for.end66.us-lcssa:                               ; preds = %for.cond26
  br label %for.end66, !dbg !3542

for.end66:                                        ; preds = %for.end66.us-lcssa.us, %for.end66.us-lcssa
  ret void, !dbg !3542
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @note_sets_clobbers(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #5 !dbg !3555 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3559, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3560, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %data, metadata !3561, metadata !DIExpression()), !dbg !3564
  %0 = bitcast i8* %data to i32*, !dbg !3565
  %1 = load i32, i32* %0, align 4, !dbg !3566
  call void @llvm.dbg.value(metadata i32 %1, metadata !3562, metadata !DIExpression()), !dbg !3564
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3567
  %bf.load = load i32, i32* %2, align 8, !dbg !3567
  %bf.clear = and i32 %bf.load, 65535, !dbg !3567
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3569
  br i1 %cmp, label %if.then, label %if.end, !dbg !3570

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3571
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3571
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3559, metadata !DIExpression()), !dbg !3564
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3572
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3574
  br label %if.end, !dbg !3575

if.end:                                           ; preds = %if.then, %entry
  %bf.load1 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !3574
  %x.addr.0 = phi %struct.rtx_def* [ %3, %if.then ], [ %x, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !3559, metadata !DIExpression()), !dbg !3564
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 0, !dbg !3574
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3574
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3574
  br i1 %cmp3, label %lor.lhs.false, label %cleanup.cont, !dbg !3576

lor.lhs.false:                                    ; preds = %if.end
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 0, !dbg !3577
  %bf.load4 = load i32, i32* %5, align 8, !dbg !3577
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !3577
  %cmp6 = icmp eq i32 %bf.clear5, %1, !dbg !3578
  br i1 %cmp6, label %if.end8, label %cleanup.cont, !dbg !3579

if.end8:                                          ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.0) #8, !dbg !3580
  %cmp9 = icmp ult i32 %call, 53, !dbg !3580
  br i1 %cmp9, label %cond.end, label %cond.true, !dbg !3580

cond.true:                                        ; preds = %if.end8
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 506, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3580
  br label %cond.end, !dbg !3580

cond.end:                                         ; preds = %if.end8, %cond.true
  %bf.load10 = load i32, i32* %4, align 8, !dbg !3581
  %bf.lshr = lshr i32 %bf.load10, 16, !dbg !3581
  %bf.clear11 = and i32 %bf.lshr, 255, !dbg !3581
  %call12 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.0) #8, !dbg !3582
  tail call fastcc void @add_to_hard_reg_set(i64* nonnull @live_hard_regs, i32 %bf.clear11, i32 %call12) #8, !dbg !3583
  br label %for.cond, !dbg !3584

for.cond:                                         ; preds = %for.body, %cond.end
  %chain.0.in = phi %struct.du_head** [ @open_chains, %cond.end ], [ %next_chain, %for.body ]
  %chain.0 = load %struct.du_head*, %struct.du_head** %chain.0.in, align 8, !dbg !3586
  call void @llvm.dbg.value(metadata %struct.du_head* %chain.0, metadata !3563, metadata !DIExpression()), !dbg !3564
  %tobool = icmp eq %struct.du_head* %chain.0, null, !dbg !3587
  br i1 %tobool, label %cleanup.cont.loopexit, label %for.body, !dbg !3587

for.body:                                         ; preds = %for.cond
  %hard_conflicts = getelementptr inbounds %struct.du_head, %struct.du_head* %chain.0, i64 0, i32 7, !dbg !3588
  %bf.load13 = load i32, i32* %4, align 8, !dbg !3590
  %bf.lshr14 = lshr i32 %bf.load13, 16, !dbg !3590
  %bf.clear15 = and i32 %bf.lshr14, 255, !dbg !3590
  %call16 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.0) #8, !dbg !3591
  tail call fastcc void @add_to_hard_reg_set(i64* nonnull %hard_conflicts, i32 %bf.clear15, i32 %call16) #8, !dbg !3592
  %next_chain = getelementptr inbounds %struct.du_head, %struct.du_head* %chain.0, i64 0, i32 0, !dbg !3593
  br label %for.cond, !dbg !3594, !llvm.loop !3595

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3597

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %lor.lhs.false, %if.end
  ret void, !dbg !3597
}

; Function Attrs: nounwind uwtable
define internal fastcc void @restore_operands(%struct.rtx_def* %insn, i32 %n_ops, %struct.rtx_def** %old_operands, %struct.rtx_def** %old_dups) unnamed_addr #5 !dbg !3598 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3602, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 %n_ops, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata %struct.rtx_def** %old_operands, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata %struct.rtx_def** %old_dups, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 0, metadata !3606, metadata !DIExpression()), !dbg !3607
  br label %for.cond, !dbg !3608

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry ], !dbg !3610
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3606, metadata !DIExpression()), !dbg !3607
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3611
  %1 = sext i8 %0 to i64, !dbg !3613
  %cmp = icmp slt i64 %indvars.iv1, %1, !dbg !3613
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !3614

for.cond4.preheader:                              ; preds = %for.cond
  %2 = sext i32 %n_ops to i64, !dbg !3615
  br label %for.cond4, !dbg !3615

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_dups, i64 %indvars.iv1, !dbg !3617
  %3 = bitcast %struct.rtx_def** %arrayidx to i64*, !dbg !3617
  %4 = load i64, i64* %3, align 8, !dbg !3617
  %arrayidx3 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv1, !dbg !3618
  %5 = bitcast %struct.rtx_def*** %arrayidx3 to i64**, !dbg !3618
  %6 = load i64*, i64** %5, align 8, !dbg !3618
  store i64 %4, i64* %6, align 8, !dbg !3619
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i32 undef, metadata !3606, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3607
  br label %for.cond, !dbg !3621, !llvm.loop !3622

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body7 ], !dbg !3624
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3606, metadata !DIExpression()), !dbg !3607
  %cmp5 = icmp slt i64 %indvars.iv, %2, !dbg !3625
  br i1 %cmp5, label %for.body7, label %for.end14, !dbg !3615

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %old_operands, i64 %indvars.iv, !dbg !3627
  %7 = bitcast %struct.rtx_def** %arrayidx9 to i64*, !dbg !3627
  %8 = load i64, i64* %7, align 8, !dbg !3627
  %arrayidx11 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv, !dbg !3628
  %9 = bitcast %struct.rtx_def*** %arrayidx11 to i64**, !dbg !3628
  %10 = load i64*, i64** %9, align 8, !dbg !3628
  store i64 %8, i64* %10, align 8, !dbg !3629
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i32 undef, metadata !3606, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3607
  br label %for.cond4, !dbg !3631, !llvm.loop !3632

for.end14:                                        ; preds = %for.cond4
  %11 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3634
  %tobool = icmp eq i8 %11, 0, !dbg !3636
  br i1 %tobool, label %if.end, label %if.then, !dbg !3637

if.then:                                          ; preds = %for.end14
  %call = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %insn) #6, !dbg !3638
  br label %if.end, !dbg !3638

if.end:                                           ; preds = %for.end14, %if.then
  ret void, !dbg !3639
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_out_operands(%struct.rtx_def* %insn, i8 zeroext %earlyclobber) unnamed_addr #5 !dbg !3640 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3644, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8 %earlyclobber, metadata !3645, metadata !DIExpression()), !dbg !3657
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3658
  %conv = sext i8 %0 to i64, !dbg !3659
  %1 = load i32, i32* @which_alternative, align 4, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %1, metadata !3647, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3657
  %idxprom19 = sext i32 %1 to i64, !dbg !3661
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3662
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3662
  %3 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3662
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3662
  %4 = sext i8 %0 to i64, !dbg !3664
  %5 = sext i8 %0 to i64, !dbg !3664
  %6 = sext i8 %0 to i64, !dbg !3664
  br label %for.cond, !dbg !3664

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !3665
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3648, metadata !DIExpression()), !dbg !3657
  %7 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !3666
  %conv1 = sext i8 %7 to i64, !dbg !3667
  %add = add nsw i64 %conv, %conv1, !dbg !3668
  %cmp = icmp slt i64 %indvars.iv, %add, !dbg !3669
  br i1 %cmp, label %for.body, label %for.end, !dbg !3670

for.body:                                         ; preds = %for.cond
  %cmp3 = icmp slt i64 %indvars.iv, %4, !dbg !3671
  %8 = trunc i64 %indvars.iv to i32, !dbg !3672
  br i1 %cmp3, label %cond.end, label %cond.false, !dbg !3672

cond.false:                                       ; preds = %for.body
  %9 = sub nsw i64 %indvars.iv, %5, !dbg !3673
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %9, !dbg !3674
  %10 = load i8, i8* %arrayidx, align 1, !dbg !3674
  %conv5 = sext i8 %10 to i32, !dbg !3674
  br label %cond.end, !dbg !3672

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %conv5, %cond.false ], [ %8, %for.body ], !dbg !3672
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3649, metadata !DIExpression()), !dbg !3661
  br i1 %cmp3, label %cond.true8, label %cond.false11, !dbg !3675

cond.true8:                                       ; preds = %cond.end
  %idxprom9 = sext i32 %cond to i64, !dbg !3676
  %arrayidx10 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %idxprom9, !dbg !3676
  br label %cond.end15, !dbg !3675

cond.false11:                                     ; preds = %cond.end
  %11 = sub nsw i64 %indvars.iv, %6, !dbg !3677
  %arrayidx14 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %11, !dbg !3678
  %.pre = sext i32 %cond to i64, !dbg !3679
  br label %cond.end15, !dbg !3675

cond.end15:                                       ; preds = %cond.false11, %cond.true8
  %idxprom17.pre-phi = phi i64 [ %.pre, %cond.false11 ], [ %idxprom9, %cond.true8 ], !dbg !3679
  %cond16.in = phi %struct.rtx_def*** [ %arrayidx14, %cond.false11 ], [ %arrayidx10, %cond.true8 ]
  %cond16 = load %struct.rtx_def**, %struct.rtx_def*** %cond16.in, align 8, !dbg !3675
  call void @llvm.dbg.value(metadata %struct.rtx_def** %cond16, metadata !3653, metadata !DIExpression()), !dbg !3661
  %12 = load %struct.rtx_def*, %struct.rtx_def** %cond16, align 8, !dbg !3680
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3654, metadata !DIExpression()), !dbg !3661
  %cl21 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom17.pre-phi, i64 %idxprom19, i32 1, !dbg !3681
  %13 = load i32, i32* %cl21, align 8, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %13, metadata !3655, metadata !DIExpression()), !dbg !3661
  %arrayidx23 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %idxprom17.pre-phi, !dbg !3682
  %14 = load i32, i32* %arrayidx23, align 4, !dbg !3682
  %cmp24 = icmp eq i32 %14, 1, !dbg !3684
  br i1 %cmp24, label %lor.lhs.false, label %cleanup, !dbg !3685

lor.lhs.false:                                    ; preds = %cond.end15
  %earlyclobber30 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i64 0, i64 %idxprom17.pre-phi, i64 %idxprom19, i32 5, !dbg !3686
  %bf.load = load i8, i8* %earlyclobber30, align 8, !dbg !3686
  %bf.clear = and i8 %bf.load, 1, !dbg !3686
  %cmp32 = icmp eq i8 %bf.clear, %earlyclobber, !dbg !3687
  br i1 %cmp32, label %if.end, label %cleanup, !dbg !3688

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.du_head*, %struct.du_head** @open_chains, align 8, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.du_head* %15, metadata !3656, metadata !DIExpression()), !dbg !3661
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** %cond16, i32 %13, i32 4, i32 1) #8, !dbg !3690
  %bf.load34 = load i32, i32* %2, align 8, !dbg !3691
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !3691
  %cmp36 = icmp eq i32 %bf.clear35, 10, !dbg !3691
  br i1 %cmp36, label %if.then53, label %lor.lhs.false38, !dbg !3692

lor.lhs.false38:                                  ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3693
  %call = tail call i32 @asm_noperands(%struct.rtx_def* %16) #6, !dbg !3694
  %cmp40 = icmp sgt i32 %call, 0, !dbg !3695
  br i1 %cmp40, label %land.lhs.true, label %cleanup, !dbg !3696

land.lhs.true:                                    ; preds = %lor.lhs.false38
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !3697
  %bf.load42 = load i32, i32* %17, align 8, !dbg !3697
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !3697
  %cmp44 = icmp eq i32 %bf.clear43, 37, !dbg !3697
  br i1 %cmp44, label %land.lhs.true46, label %cleanup, !dbg !3698

land.lhs.true46:                                  ; preds = %land.lhs.true
  %call47 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %12) #8, !dbg !3699
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3700
  %rt_uint = bitcast %union.rtunion_def* %18 to i32*, !dbg !3700
  %19 = load i32, i32* %rt_uint, align 8, !dbg !3700
  %cmp51 = icmp eq i32 %call47, %19, !dbg !3701
  br i1 %cmp51, label %if.then53, label %cleanup, !dbg !3702

if.then53:                                        ; preds = %land.lhs.true46, %if.end
  %20 = load %struct.du_head*, %struct.du_head** @open_chains, align 8, !dbg !3703
  %cmp54 = icmp eq %struct.du_head* %15, %20, !dbg !3706
  br i1 %cmp54, label %cleanup, label %if.then56, !dbg !3707

if.then56:                                        ; preds = %if.then53
  %cannot_rename = getelementptr inbounds %struct.du_head, %struct.du_head* %20, i64 0, i32 8, !dbg !3708
  %bf.load57 = load i8, i8* %cannot_rename, align 8, !dbg !3709
  %bf.set = or i8 %bf.load57, 4, !dbg !3709
  store i8 %bf.set, i8* %cannot_rename, align 8, !dbg !3709
  br label %cleanup, !dbg !3710

cleanup:                                          ; preds = %if.then53, %lor.lhs.false, %cond.end15, %lor.lhs.false38, %land.lhs.true, %land.lhs.true46, %if.then56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3711
  call void @llvm.dbg.value(metadata i32 undef, metadata !3648, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3657
  br label %for.cond, !dbg !3712, !llvm.loop !3713

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3715
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %cl, i32 %action, i32 %type) unnamed_addr #5 !dbg !3716 {
entry:
  %u73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3730
  %0 = getelementptr inbounds %union.u, %union.u* %u73, i64 1, i32 0, i32 0, i64 0, !dbg !3730
  %1 = bitcast %union.rtunion_def* %0 to i32**, !dbg !3730
  br label %tailrecurse.outer, !dbg !3732

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %entry
  %loc.tr.ph = phi %struct.rtx_def** [ %loc, %entry ], [ %loc.tr.ph.be, %tailrecurse.outer.backedge ]
  %type.tr.ph = phi i32 [ %type, %entry ], [ %type.tr.ph.be, %tailrecurse.outer.backedge ]
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %loc.tr.ph, align 8, !dbg !3734
  br label %tailrecurse, !dbg !3735

tailrecurse:                                      ; preds = %tailrecurse.outer, %if.then
  %2 = phi %struct.rtx_def* [ %17, %if.then ], [ %.pre, %tailrecurse.outer ], !dbg !3734
  %loc.tr = phi %struct.rtx_def** [ %rt_rtx99, %if.then ], [ %loc.tr.ph, %tailrecurse.outer ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3720, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr, metadata !3721, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3722, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 %action, metadata !3723, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 %type.tr.ph, metadata !3724, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3726, metadata !DIExpression()), !dbg !3736
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3737
  %bf.load1 = load i32, i32* %3, align 8, !dbg !3737
  %trunc = trunc i32 %bf.load1 to i16, !dbg !3735
  switch i16 %trunc, label %sw.epilog [
    i16 35, label %cleanup.cont.loopexit2
    i16 30, label %cleanup.cont.loopexit2
    i16 32, label %cleanup.cont.loopexit2
    i16 31, label %cleanup.cont.loopexit2
    i16 33, label %cleanup.cont.loopexit2
    i16 45, label %cleanup.cont.loopexit2
    i16 44, label %cleanup.cont.loopexit2
    i16 46, label %cleanup.cont.loopexit2
    i16 36, label %cleanup.cont.loopexit2
    i16 37, label %sw.bb3
    i16 43, label %sw.bb4
    i16 23, label %sw.bb10
    i16 40, label %sw.bb30
    i16 120, label %sw.bb43
    i16 119, label %sw.bb43
    i16 77, label %sw.bb67
    i16 75, label %sw.bb67
    i16 76, label %sw.bb67
    i16 74, label %sw.bb67
    i16 79, label %sw.bb67
    i16 78, label %sw.bb67
    i16 25, label %sw.bb68.loopexit
    i16 3, label %sw.bb91
  ], !dbg !3735

sw.bb3:                                           ; preds = %tailrecurse
  %type.tr.ph.lcssa102 = phi i32 [ %type.tr.ph, %tailrecurse ]
  %loc.tr.lcssa85 = phi %struct.rtx_def** [ %loc.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa85, metadata !3721, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa85, metadata !3721, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa85, metadata !3721, metadata !DIExpression()), !dbg !3736
  tail call fastcc void @scan_rtx_reg(%struct.rtx_def* %insn, %struct.rtx_def** %loc.tr.lcssa85, i32 %cl, i32 %action, i32 %type.tr.ph.lcssa102) #8, !dbg !3738
  br label %cleanup.cont, !dbg !3739

sw.bb4:                                           ; preds = %tailrecurse
  %.lcssa95 = phi %struct.rtx_def* [ %2, %tailrecurse ], !dbg !3734
  %.lcssa78 = phi i32* [ %3, %tailrecurse ], !dbg !3737
  %bf.load1.lcssa70 = phi i32 [ %bf.load1, %tailrecurse ], !dbg !3737
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa95, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa95, metadata !3726, metadata !DIExpression()), !dbg !3736
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa95, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3740
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3740
  %bf.lshr = lshr i32 %bf.load1.lcssa70, 16, !dbg !3741
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !3741
  %call = tail call fastcc i32 @base_reg_class(i32 %bf.clear6, i32 43, i32 38) #8, !dbg !3742
  %bf.load7 = load i32, i32* %.lcssa78, align 8, !dbg !3743
  %bf.lshr8 = lshr i32 %bf.load7, 16, !dbg !3743
  %bf.clear9 = and i32 %bf.lshr8, 255, !dbg !3743
  tail call fastcc void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx, i32 13, i32 %action, i32 %bf.clear9) #8, !dbg !3744
  br label %cleanup.cont, !dbg !3745

sw.bb10:                                          ; preds = %tailrecurse
  %.lcssa96 = phi %struct.rtx_def* [ %2, %tailrecurse ], !dbg !3734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa96, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa96, metadata !3726, metadata !DIExpression()), !dbg !3736
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa96, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3746
  %rt_rtx14 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3746
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx14, i32 %cl, i32 %action, i32 0) #8, !dbg !3747
  %arrayidx17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa96, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3748
  %5 = load i32*, i32** %1, align 8, !dbg !3749
  %bf.load23 = load i32, i32* %5, align 8, !dbg !3749
  %bf.clear24 = and i32 %bf.load23, 65535, !dbg !3749
  %cmp = icmp eq i32 %bf.clear24, 14, !dbg !3750
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3751

land.rhs:                                         ; preds = %sw.bb10
  %rt_rtx28 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**, !dbg !3752
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx28, align 8, !dbg !3752
  %call29 = tail call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %6) #8, !dbg !3753
  %tobool = icmp eq i8 %call29, 0, !dbg !3751
  %phitmp1 = select i1 %tobool, i32 1, i32 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb10
  %7 = phi i32 [ 1, %sw.bb10 ], [ %phitmp1, %land.rhs ]
  br label %tailrecurse.outer.backedge, !dbg !3754

sw.bb30:                                          ; preds = %tailrecurse
  %.lcssa97 = phi %struct.rtx_def* [ %2, %tailrecurse ], !dbg !3734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa97, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa97, metadata !3726, metadata !DIExpression()), !dbg !3736
  %arrayidx33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa97, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3755
  %rt_rtx38 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**, !dbg !3756
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx38, align 8, !dbg !3756
  %call39 = tail call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %8) #8, !dbg !3757
  %tobool41 = icmp eq i8 %call39, 0, !dbg !3757
  %cond42 = select i1 %tobool41, i32 1, i32 2, !dbg !3757
  br label %tailrecurse.outer.backedge, !dbg !3758

sw.bb43:                                          ; preds = %tailrecurse, %tailrecurse
  %.lcssa98 = phi %struct.rtx_def* [ %2, %tailrecurse ], [ %2, %tailrecurse ], !dbg !3734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa98, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa98, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa98, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa98, metadata !3726, metadata !DIExpression()), !dbg !3736
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa98, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3759
  %rt_rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**, !dbg !3759
  %cmp48 = icmp eq i32 %type.tr.ph, 0, !dbg !3760
  br i1 %cmp48, label %cond.end, label %cond.false, !dbg !3761

cond.false:                                       ; preds = %sw.bb43
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx47, align 8, !dbg !3762
  %call54 = tail call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %9) #8, !dbg !3763
  %tobool56 = icmp eq i8 %call54, 0, !dbg !3763
  %cond57 = select i1 %tobool56, i32 1, i32 2, !dbg !3763
  br label %cond.end, !dbg !3761

cond.end:                                         ; preds = %sw.bb43, %cond.false
  %cond58 = phi i32 [ %cond57, %cond.false ], [ 0, %sw.bb43 ], !dbg !3761
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx47, i32 %cl, i32 %action, i32 %cond58) #8, !dbg !3764
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa98, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3765
  %rt_rtx62 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !3765
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx62, i32 %cl, i32 %action, i32 0) #8, !dbg !3766
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa98, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3767
  br label %tailrecurse.outer.backedge, !dbg !3768

sw.bb67:                                          ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %.lcssa99 = phi %struct.rtx_def* [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], !dbg !3734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa99, metadata !3726, metadata !DIExpression()), !dbg !3736
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 935, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3769
  br label %sw.bb68, !dbg !3769

sw.bb68.loopexit:                                 ; preds = %tailrecurse
  %.lcssa100 = phi %struct.rtx_def* [ %2, %tailrecurse ], !dbg !3734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa100, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa100, metadata !3726, metadata !DIExpression()), !dbg !3736
  br label %sw.bb68, !dbg !3770

sw.bb68:                                          ; preds = %sw.bb68.loopexit, %sw.bb67
  %12 = phi %struct.rtx_def* [ %.lcssa100, %sw.bb68.loopexit ], [ %.lcssa99, %sw.bb67 ]
  %arrayidx71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3770
  %13 = load i32*, i32** %1, align 8, !dbg !3771
  %bf.load77 = load i32, i32* %13, align 8, !dbg !3771
  %bf.clear78 = and i32 %bf.load77, 65535, !dbg !3771
  %cmp79 = icmp eq i32 %bf.clear78, 14, !dbg !3772
  br i1 %cmp79, label %land.rhs81, label %land.end89, !dbg !3773

land.rhs81:                                       ; preds = %sw.bb68
  %rt_rtx85 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**, !dbg !3774
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx85, align 8, !dbg !3774
  %call86 = tail call fastcc zeroext i8 @verify_reg_tracked(%struct.rtx_def* %14) #8, !dbg !3775
  %tobool88 = icmp eq i8 %call86, 0, !dbg !3773
  %phitmp = select i1 %tobool88, i32 1, i32 2
  br label %land.end89

land.end89:                                       ; preds = %land.rhs81, %sw.bb68
  %15 = phi i32 [ 1, %sw.bb68 ], [ %phitmp, %land.rhs81 ]
  br label %tailrecurse.outer.backedge, !dbg !3776

tailrecurse.outer.backedge:                       ; preds = %land.end89, %cond.end, %sw.bb30, %land.end
  %loc.tr.ph.be.in = phi %union.rtunion_def* [ %arrayidx17, %land.end ], [ %arrayidx33, %sw.bb30 ], [ %11, %cond.end ], [ %arrayidx71, %land.end89 ]
  %type.tr.ph.be = phi i32 [ %7, %land.end ], [ %cond42, %sw.bb30 ], [ 0, %cond.end ], [ %15, %land.end89 ]
  %loc.tr.ph.be = bitcast %union.rtunion_def* %loc.tr.ph.be.in to %struct.rtx_def**, !dbg !3730
  br label %tailrecurse.outer, !dbg !3735

sw.bb91:                                          ; preds = %tailrecurse
  %arrayidx94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3777
  %rt_rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**, !dbg !3777
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx95, i32 %cl, i32 %action, i32 %type.tr.ph) #8, !dbg !3778
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3779
  %rt_rtx99 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !3779
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx99, align 8, !dbg !3779
  %tobool100 = icmp eq %struct.rtx_def* %17, null, !dbg !3779
  br i1 %tobool100, label %cleanup.cont.loopexit2, label %if.then, !dbg !3780

if.then:                                          ; preds = %sw.bb91
  br label %tailrecurse, !dbg !3732

sw.epilog:                                        ; preds = %tailrecurse
  %type.tr.ph.lcssa = phi i32 [ %type.tr.ph, %tailrecurse ]
  %.lcssa92 = phi %struct.rtx_def* [ %2, %tailrecurse ], !dbg !3734
  %bf.load1.lcssa = phi i32 [ %bf.load1, %tailrecurse ], !dbg !3737
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa92, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.lcssa92, metadata !3726, metadata !DIExpression()), !dbg !3736
  %bf.clear2.le = and i32 %bf.load1.lcssa, 65535, !dbg !3737
  %idxprom = zext i32 %bf.clear2.le to i64, !dbg !3781
  %arrayidx105 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3781
  %18 = load i8*, i8** %arrayidx105, align 8, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %18, metadata !3725, metadata !DIExpression()), !dbg !3736
  %arrayidx107 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3782
  %19 = load i8, i8* %arrayidx107, align 1, !dbg !3782
  call void @llvm.dbg.value(metadata i8 %19, metadata !3728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  %u128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa92, i64 0, i32 1, !dbg !3784
  %fld129 = bitcast %union.u* %u128 to [1 x %union.rtunion_def]*, !dbg !3784
  %20 = zext i8 %19 to i64, !dbg !3790
  br label %for.cond, !dbg !3790

for.cond:                                         ; preds = %for.inc146, %sw.epilog
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc146 ], [ %20, %sw.epilog ]
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, -1, !dbg !3791
  call void @llvm.dbg.value(metadata i32 undef, metadata !3728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  %cmp109 = icmp sgt i64 %indvars.iv66, 0, !dbg !3792
  br i1 %cmp109, label %for.body, label %cleanup.cont.loopexit, !dbg !3793

for.body:                                         ; preds = %for.cond
  %arrayidx112 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv.next67, !dbg !3794
  %21 = load i8, i8* %arrayidx112, align 1, !dbg !3794
  %cmp114 = icmp eq i8 %21, 101, !dbg !3795
  br i1 %cmp114, label %if.then116, label %if.else, !dbg !3796

if.then116:                                       ; preds = %for.body
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i64 0, i64 %indvars.iv.next67, !dbg !3797
  %rt_rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**, !dbg !3797
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx121, i32 %cl, i32 %action, i32 %type.tr.ph.lcssa) #8, !dbg !3798
  br label %for.inc146, !dbg !3798

if.else:                                          ; preds = %for.body
  %cmp125 = icmp eq i8 %21, 69, !dbg !3799
  br i1 %cmp125, label %if.then127, label %for.inc146, !dbg !3800

if.then127:                                       ; preds = %if.else
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i64 0, i64 %indvars.iv.next67, !dbg !3801
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtvec_def**, !dbg !3801
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3801
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i64 0, i32 0, !dbg !3801
  %23 = load i32, i32* %num_elem, align 8, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %23, metadata !3729, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  %24 = sext i32 %23 to i64, !dbg !3802
  br label %for.cond133, !dbg !3802

for.cond133:                                      ; preds = %for.body136, %if.then127
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body136 ], [ %24, %if.then127 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3784
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  %cmp134 = icmp sgt i64 %indvars.iv, 0, !dbg !3803
  br i1 %cmp134, label %for.body136, label %for.inc146.loopexit, !dbg !3805

for.body136:                                      ; preds = %for.cond133
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3806
  %arrayidx143 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3806
  tail call fastcc void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %arrayidx143, i32 %cl, i32 %action, i32 %type.tr.ph.lcssa) #8, !dbg !3807
  call void @llvm.dbg.value(metadata i32 undef, metadata !3729, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  br label %for.cond133, !dbg !3808, !llvm.loop !3809

for.inc146.loopexit:                              ; preds = %for.cond133
  br label %for.inc146, !dbg !3811

for.inc146:                                       ; preds = %for.inc146.loopexit, %if.then116, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3736
  br label %for.cond, !dbg !3811, !llvm.loop !3812

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3814

cleanup.cont.loopexit2:                           ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %sw.bb91
  br label %cleanup.cont, !dbg !3814

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit2, %cleanup.cont.loopexit, %sw.bb3, %sw.bb4
  ret void, !dbg !3814
}

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %cl, i32 %action, i32 %mode) unnamed_addr #5 !dbg !3815 {
entry:
  %0 = and i32 %action, -2, !dbg !3849
  %switch = icmp eq i32 %0, 4, !dbg !3849
  br i1 %switch, label %entry.tailrecurse.outer.cleanup.cont.loopexit6.split_crit_edge.split_crit_edge, label %entry.entry.split_crit_edge, !dbg !3851

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %tailrecurse.outer, !dbg !3851

entry.tailrecurse.outer.cleanup.cont.loopexit6.split_crit_edge.split_crit_edge: ; preds = %entry
  br label %cleanup.cont.loopexit6.split, !dbg !3853

tailrecurse.outer:                                ; preds = %sw.bb255, %entry.entry.split_crit_edge
  %loc.tr.ph = phi %struct.rtx_def** [ %rt_rtx259, %sw.bb255 ], [ %loc, %entry.entry.split_crit_edge ]
  %cl.tr.ph = phi i32 [ 13, %sw.bb255 ], [ %cl, %entry.entry.split_crit_edge ]
  %mode.tr.ph = phi i32 [ %bf.clear265, %sw.bb255 ], [ %mode, %entry.entry.split_crit_edge ]
  br label %tailrecurse, !dbg !3853

tailrecurse:                                      ; preds = %tailrecurse.outer, %if.then251
  %loc.tr = phi %struct.rtx_def** [ %locB.6, %if.then251 ], [ %loc.tr.ph, %tailrecurse.outer ]
  %cl.tr = phi i32 [ 13, %if.then251 ], [ %cl.tr.ph, %tailrecurse.outer ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3819, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr, metadata !3820, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %action, metadata !3822, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %mode.tr.ph, metadata !3823, metadata !DIExpression()), !dbg !3854
  %1 = load %struct.rtx_def*, %struct.rtx_def** %loc.tr, align 8, !dbg !3855
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3824, metadata !DIExpression()), !dbg !3854
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3856
  %bf.load = load i32, i32* %2, align 8, !dbg !3856
  %trunc = trunc i32 %bf.load to i16, !dbg !3857
  switch i16 %trunc, label %sw.default [
    i16 49, label %sw.bb
    i16 77, label %sw.epilog.loopexit
    i16 76, label %sw.epilog.loopexit
    i16 79, label %sw.epilog.loopexit
    i16 75, label %sw.epilog.loopexit
    i16 74, label %sw.epilog.loopexit
    i16 78, label %sw.epilog.loopexit
    i16 43, label %sw.bb255
    i16 37, label %sw.bb266
  ], !dbg !3857

sw.bb:                                            ; preds = %tailrecurse
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3858
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3858
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3858
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3829, metadata !DIExpression()), !dbg !3859
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3860
  %rt_rtx5 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3860
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx5, align 8, !dbg !3860
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3832, metadata !DIExpression()), !dbg !3859
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3861
  %bf.load6 = load i32, i32* %6, align 8, !dbg !3861
  call void @llvm.dbg.value(metadata i32 %bf.load6, metadata !3833, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3859
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3862
  %bf.load8 = load i32, i32* %7, align 8, !dbg !3862
  call void @llvm.dbg.value(metadata i32 %bf.load8, metadata !3834, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3835, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3836, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** null, metadata !3837, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** null, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 38, metadata !3839, metadata !DIExpression()), !dbg !3859
  %bf.clear11 = and i32 %bf.load6, 65535, !dbg !3863
  %cmp12 = icmp eq i32 %bf.clear11, 39, !dbg !3865
  br i1 %cmp12, label %if.then13, label %if.end20, !dbg !3866

if.then13:                                        ; preds = %sw.bb
  %arrayidx16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3867
  %rt_rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**, !dbg !3867
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx17, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3835, metadata !DIExpression()), !dbg !3859
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !3869
  %bf.load18 = load i32, i32* %9, align 8, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %bf.load18, metadata !3833, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3859
  br label %if.end20, !dbg !3870

if.end20:                                         ; preds = %if.then13, %sw.bb
  %code0.0.in = phi i32 [ %bf.load18, %if.then13 ], [ %bf.load6, %sw.bb ]
  %op0.0 = phi %struct.rtx_def* [ %8, %if.then13 ], [ %3, %sw.bb ], !dbg !3859
  %code0.0 = and i32 %code0.0.in, 65535, !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op0.0, metadata !3835, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %code0.0, metadata !3833, metadata !DIExpression()), !dbg !3859
  %bf.clear22 = and i32 %bf.load8, 65535, !dbg !3871
  %cmp23 = icmp eq i32 %bf.clear22, 39, !dbg !3873
  br i1 %cmp23, label %if.then24, label %if.end31, !dbg !3874

if.then24:                                        ; preds = %if.end20
  %arrayidx27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3875
  %rt_rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**, !dbg !3875
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx28, align 8, !dbg !3875
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3836, metadata !DIExpression()), !dbg !3859
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !3877
  %bf.load29 = load i32, i32* %11, align 8, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %bf.load29, metadata !3834, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3859
  br label %if.end31, !dbg !3878

if.end31:                                         ; preds = %if.then24, %if.end20
  %code1.0.in = phi i32 [ %bf.load29, %if.then24 ], [ %bf.load8, %if.end20 ]
  %op1.0 = phi %struct.rtx_def* [ %10, %if.then24 ], [ %5, %if.end20 ], !dbg !3859
  %code1.0 = and i32 %code1.0.in, 65535, !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op1.0, metadata !3836, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %code1.0, metadata !3834, metadata !DIExpression()), !dbg !3859
  %trunc2 = trunc i32 %code0.0.in to i16, !dbg !3879
  switch i16 %trunc2, label %lor.lhs.false39 [
    i16 52, label %if.then41
    i16 98, label %if.then41
    i16 100, label %if.then41
    i16 99, label %if.then41
  ], !dbg !3879

lor.lhs.false39:                                  ; preds = %if.end31
  %trunc3 = trunc i32 %code1.0.in to i16, !dbg !3880
  switch i16 %trunc3, label %lor.lhs.false59 [
    i16 43, label %if.then41
    i16 52, label %if.then61
    i16 98, label %if.then61
    i16 100, label %if.then61
    i16 99, label %if.then61
  ], !dbg !3880

if.then41:                                        ; preds = %lor.lhs.false39, %if.end31, %if.end31, %if.end31, %if.end31
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3837, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx5, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear11, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3881

lor.lhs.false59:                                  ; preds = %lor.lhs.false39
  switch i16 %trunc2, label %if.else91 [
    i16 43, label %if.then61
    i16 30, label %if.then80
    i16 35, label %if.then80
    i16 45, label %if.then80
    i16 44, label %if.then80
  ], !dbg !3883

if.then61:                                        ; preds = %lor.lhs.false59, %lor.lhs.false39, %lor.lhs.false39, %lor.lhs.false39, %lor.lhs.false39
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx5, metadata !3837, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear22, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3884

if.then80:                                        ; preds = %lor.lhs.false59, %lor.lhs.false59, %lor.lhs.false59, %lor.lhs.false59
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx5, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear11, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3886

if.else91:                                        ; preds = %lor.lhs.false59
  switch i16 %trunc3, label %if.else110 [
    i16 30, label %if.then99
    i16 35, label %if.then99
    i16 45, label %if.then99
    i16 44, label %if.then99
  ], !dbg !3888

if.then99:                                        ; preds = %if.else91, %if.else91, %if.else91, %if.else91
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear22, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3889

if.else110:                                       ; preds = %if.else91
  %cmp111 = icmp eq i32 %code0.0, 37, !dbg !3891
  %cmp112 = icmp eq i32 %code1.0, 37, !dbg !3892
  %or.cond = and i1 %cmp111, %cmp112, !dbg !3893
  br i1 %or.cond, label %if.then113, label %if.else212, !dbg !3893

if.then113:                                       ; preds = %if.else110
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op0.0) #8, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %call, metadata !3847, metadata !DIExpression()), !dbg !3895
  %call114 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op1.0) #8, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %call114, metadata !3848, metadata !DIExpression()), !dbg !3895
  %cmp115 = icmp ult i32 %call114, 7, !dbg !3897
  br i1 %cmp115, label %land.lhs.true132, label %lor.lhs.false116, !dbg !3897

lor.lhs.false116:                                 ; preds = %if.then113
  %conv = zext i32 %call114 to i64, !dbg !3897
  %sub = add nsw i64 %conv, -37, !dbg !3897
  %cmp117 = icmp ult i64 %sub, 8, !dbg !3897
  br i1 %cmp117, label %land.lhs.true132, label %lor.lhs.false119, !dbg !3897

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %12 = load i16*, i16** @reg_renumber, align 8, !dbg !3897
  %arrayidx120 = getelementptr inbounds i16, i16* %12, i64 %conv, !dbg !3897
  %13 = load i16, i16* %arrayidx120, align 2, !dbg !3897
  %cmp122 = icmp ult i16 %13, 7, !dbg !3897
  br i1 %cmp122, label %land.lhs.true132, label %lor.lhs.false124, !dbg !3897

lor.lhs.false124:                                 ; preds = %lor.lhs.false119
  %conv127 = sext i16 %13 to i64, !dbg !3897
  %conv128 = and i64 %conv127, 4294967295, !dbg !3897
  %sub129 = add nsw i64 %conv128, -37, !dbg !3897
  %cmp130 = icmp ult i64 %sub129, 8, !dbg !3897
  br i1 %cmp130, label %land.lhs.true132, label %if.else136, !dbg !3899

land.lhs.true132:                                 ; preds = %lor.lhs.false124, %lor.lhs.false119, %lor.lhs.false116, %if.then113
  %call133 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call, i32 %mode.tr.ph, i32 49, i32 37) #8, !dbg !3900
  %tobool = icmp eq i8 %call133, 0, !dbg !3900
  br i1 %tobool, label %if.else136, label %if.end198, !dbg !3901

if.else136:                                       ; preds = %land.lhs.true132, %lor.lhs.false124
  %cmp137 = icmp ult i32 %call, 7, !dbg !3902
  br i1 %cmp137, label %land.lhs.true158, label %lor.lhs.false139, !dbg !3902

lor.lhs.false139:                                 ; preds = %if.else136
  %conv140 = zext i32 %call to i64, !dbg !3902
  %sub141 = add nsw i64 %conv140, -37, !dbg !3902
  %cmp142 = icmp ult i64 %sub141, 8, !dbg !3902
  br i1 %cmp142, label %land.lhs.true158, label %lor.lhs.false144, !dbg !3902

lor.lhs.false144:                                 ; preds = %lor.lhs.false139
  %14 = load i16*, i16** @reg_renumber, align 8, !dbg !3902
  %arrayidx146 = getelementptr inbounds i16, i16* %14, i64 %conv140, !dbg !3902
  %15 = load i16, i16* %arrayidx146, align 2, !dbg !3902
  %cmp148 = icmp ult i16 %15, 7, !dbg !3902
  br i1 %cmp148, label %land.lhs.true158, label %lor.lhs.false150, !dbg !3902

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %conv153 = sext i16 %15 to i64, !dbg !3902
  %conv154 = and i64 %conv153, 4294967295, !dbg !3902
  %sub155 = add nsw i64 %conv154, -37, !dbg !3902
  %cmp156 = icmp ult i64 %sub155, 8, !dbg !3902
  br i1 %cmp156, label %land.lhs.true158, label %if.else163, !dbg !3904

land.lhs.true158:                                 ; preds = %lor.lhs.false150, %lor.lhs.false144, %lor.lhs.false139, %if.else136
  %call159 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call114, i32 %mode.tr.ph, i32 49, i32 37) #8, !dbg !3905
  %tobool161 = icmp eq i8 %call159, 0, !dbg !3905
  br i1 %tobool161, label %if.else163, label %if.end198, !dbg !3906

if.else163:                                       ; preds = %land.lhs.true158, %lor.lhs.false150
  %call164 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call, i32 %mode.tr.ph, i32 49, i32 37) #8, !dbg !3907
  %tobool166 = icmp ne i8 %call164, 0, !dbg !3907
  %or.cond1 = or i1 %tobool166, %cmp115, !dbg !3909
  br i1 %or.cond1, label %if.end198, label %lor.lhs.false170, !dbg !3909

lor.lhs.false170:                                 ; preds = %if.else163
  %conv171 = zext i32 %call114 to i64, !dbg !3910
  %sub172 = add nsw i64 %conv171, -37, !dbg !3910
  %cmp173 = icmp ult i64 %sub172, 8, !dbg !3910
  br i1 %cmp173, label %if.end198, label %lor.lhs.false175, !dbg !3910

lor.lhs.false175:                                 ; preds = %lor.lhs.false170
  %16 = load i16*, i16** @reg_renumber, align 8, !dbg !3910
  %arrayidx177 = getelementptr inbounds i16, i16* %16, i64 %conv171, !dbg !3910
  %17 = load i16, i16* %arrayidx177, align 2, !dbg !3910
  %cmp179 = icmp ult i16 %17, 7, !dbg !3910
  br i1 %cmp179, label %if.end198, label %lor.lhs.false181, !dbg !3910

lor.lhs.false181:                                 ; preds = %lor.lhs.false175
  %conv184 = sext i16 %17 to i64, !dbg !3910
  %conv185 = and i64 %conv184, 4294967295, !dbg !3910
  %sub186 = add nsw i64 %conv185, -37, !dbg !3910
  %cmp187 = icmp ult i64 %sub186, 8, !dbg !3910
  br i1 %cmp187, label %if.end198, label %if.else190, !dbg !3911

if.else190:                                       ; preds = %lor.lhs.false181
  %call191 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 %call114, i32 %mode.tr.ph, i32 49, i32 37) #8, !dbg !3912
  %tobool192 = icmp eq i8 %call191, 0, !dbg !3912
  %. = zext i1 %tobool192 to i32
  call void @llvm.dbg.value(metadata i32 %., metadata !3840, metadata !DIExpression()), !dbg !3895
  br label %if.end198

if.end198:                                        ; preds = %land.lhs.true132, %land.lhs.true158, %if.else163, %lor.lhs.false170, %lor.lhs.false175, %lor.lhs.false181, %if.else190
  %index_op.3 = phi i32 [ 1, %land.lhs.true132 ], [ 0, %land.lhs.true158 ], [ %., %if.else190 ], [ 1, %lor.lhs.false181 ], [ 1, %lor.lhs.false175 ], [ 1, %lor.lhs.false170 ], [ 1, %if.else163 ], !dbg !3914
  call void @llvm.dbg.value(metadata i32 %index_op.3, metadata !3840, metadata !DIExpression()), !dbg !3895
  %u199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3915
  %fld200 = bitcast %union.u* %u199 to [1 x %union.rtunion_def]*, !dbg !3915
  %idxprom201 = zext i32 %index_op.3 to i64, !dbg !3915
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i64 0, i64 %idxprom201, !dbg !3915
  %rt_rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**, !dbg !3915
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx203, metadata !3837, metadata !DIExpression()), !dbg !3859
  %18 = xor i32 %index_op.3, 1, !dbg !3916
  %idxprom207 = zext i32 %18 to i64, !dbg !3916
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i64 0, i64 %idxprom207, !dbg !3916
  %rt_rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx209, metadata !3838, metadata !DIExpression()), !dbg !3859
  %19 = bitcast %union.rtunion_def* %arrayidx202 to i32**, !dbg !3917
  %20 = load i32*, i32** %19, align 8, !dbg !3917
  %bf.load210 = load i32, i32* %20, align 8, !dbg !3917
  %bf.clear211 = and i32 %bf.load210, 65535, !dbg !3917
  call void @llvm.dbg.value(metadata i32 %bf.clear211, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3918

if.else212:                                       ; preds = %if.else110
  br i1 %cmp111, label %if.then215, label %if.else226, !dbg !3919

if.then215:                                       ; preds = %if.else212
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3837, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx5, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear11, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3920

if.else226:                                       ; preds = %if.else212
  br i1 %cmp112, label %if.then229, label %if.end246, !dbg !3923

if.then229:                                       ; preds = %if.else226
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx5, metadata !3837, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %bf.clear22, metadata !3839, metadata !DIExpression()), !dbg !3859
  br label %if.end246, !dbg !3924

if.end246:                                        ; preds = %if.then61, %if.then99, %if.then215, %if.then229, %if.else226, %if.end198, %if.then80, %if.then41
  %locI.6 = phi %struct.rtx_def** [ %rt_rtx, %if.then41 ], [ %rt_rtx5, %if.then61 ], [ null, %if.then80 ], [ null, %if.then99 ], [ %rt_rtx203, %if.end198 ], [ %rt_rtx, %if.then215 ], [ %rt_rtx5, %if.then229 ], [ null, %if.else226 ], !dbg !3927
  %locB.6 = phi %struct.rtx_def** [ %rt_rtx5, %if.then41 ], [ %rt_rtx, %if.then61 ], [ %rt_rtx5, %if.then80 ], [ %rt_rtx, %if.then99 ], [ %rt_rtx209, %if.end198 ], [ %rt_rtx5, %if.then215 ], [ %rt_rtx, %if.then229 ], [ null, %if.else226 ], !dbg !3927
  %index_code.6 = phi i32 [ %bf.clear11, %if.then41 ], [ %bf.clear22, %if.then61 ], [ %bf.clear11, %if.then80 ], [ %bf.clear22, %if.then99 ], [ %bf.clear211, %if.end198 ], [ %bf.clear11, %if.then215 ], [ %bf.clear22, %if.then229 ], [ 38, %if.else226 ], !dbg !3927
  call void @llvm.dbg.value(metadata i32 %index_code.6, metadata !3839, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %locB.6, metadata !3838, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata %struct.rtx_def** %locI.6, metadata !3837, metadata !DIExpression()), !dbg !3859
  %tobool247 = icmp eq %struct.rtx_def** %locI.6, null, !dbg !3928
  br i1 %tobool247, label %if.end249, label %if.then248, !dbg !3930

if.then248:                                       ; preds = %if.end246
  tail call fastcc void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %locI.6, i32 11, i32 %action, i32 %mode.tr.ph) #8, !dbg !3931
  br label %if.end249, !dbg !3931

if.end249:                                        ; preds = %if.end246, %if.then248
  %tobool250 = icmp eq %struct.rtx_def** %locB.6, null, !dbg !3932
  br i1 %tobool250, label %cleanup.cont.loopexit6, label %if.then251, !dbg !3933

if.then251:                                       ; preds = %if.end249
  %call252 = tail call fastcc i32 @base_reg_class(i32 %mode.tr.ph, i32 49, i32 %index_code.6) #8, !dbg !3934
  br label %tailrecurse, !dbg !3851

sw.bb255:                                         ; preds = %tailrecurse
  %.lcssa72 = phi %struct.rtx_def* [ %1, %tailrecurse ], !dbg !3855
  %.lcssa67 = phi i32* [ %2, %tailrecurse ], !dbg !3856
  %bf.load.lcssa62 = phi i32 [ %bf.load, %tailrecurse ], !dbg !3856
  %arrayidx258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.lcssa72, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3935
  %rt_rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**, !dbg !3935
  %bf.lshr = lshr i32 %bf.load.lcssa62, 16, !dbg !3936
  %bf.clear261 = and i32 %bf.lshr, 255, !dbg !3936
  %call262 = tail call fastcc i32 @base_reg_class(i32 %bf.clear261, i32 43, i32 38) #8, !dbg !3937
  %bf.load263 = load i32, i32* %.lcssa67, align 8, !dbg !3938
  %bf.lshr264 = lshr i32 %bf.load263, 16, !dbg !3938
  %bf.clear265 = and i32 %bf.lshr264, 255, !dbg !3938
  br label %tailrecurse.outer, !dbg !3939

sw.bb266:                                         ; preds = %tailrecurse
  %loc.tr.lcssa82 = phi %struct.rtx_def** [ %loc.tr, %tailrecurse ]
  %cl.tr.lcssa77 = phi i32 [ %cl.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa82, metadata !3820, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa77, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa82, metadata !3820, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa77, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.lcssa82, metadata !3820, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa77, metadata !3821, metadata !DIExpression()), !dbg !3854
  tail call fastcc void @scan_rtx_reg(%struct.rtx_def* %insn, %struct.rtx_def** %loc.tr.lcssa82, i32 %cl.tr.lcssa77, i32 %action, i32 0) #8, !dbg !3940
  br label %cleanup.cont, !dbg !3941

sw.default:                                       ; preds = %tailrecurse
  %mode.tr.ph.lcssa = phi i32 [ %mode.tr.ph, %tailrecurse ]
  %cl.tr.lcssa = phi i32 [ %cl.tr, %tailrecurse ]
  %.lcssa70 = phi %struct.rtx_def* [ %1, %tailrecurse ], !dbg !3855
  %bf.load.lcssa = phi i32 [ %bf.load, %tailrecurse ], !dbg !3856
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa, metadata !3821, metadata !DIExpression()), !dbg !3854
  br label %sw.epilog, !dbg !3942

sw.epilog.loopexit:                               ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %mode.tr.ph.lcssa84 = phi i32 [ %mode.tr.ph, %tailrecurse ], [ %mode.tr.ph, %tailrecurse ], [ %mode.tr.ph, %tailrecurse ], [ %mode.tr.ph, %tailrecurse ], [ %mode.tr.ph, %tailrecurse ], [ %mode.tr.ph, %tailrecurse ]
  %cl.tr.lcssa75 = phi i32 [ %cl.tr, %tailrecurse ], [ %cl.tr, %tailrecurse ], [ %cl.tr, %tailrecurse ], [ %cl.tr, %tailrecurse ], [ %cl.tr, %tailrecurse ], [ %cl.tr, %tailrecurse ]
  %.lcssa71 = phi %struct.rtx_def* [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], !dbg !3855
  %bf.load.lcssa61 = phi i32 [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], !dbg !3856
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %cl.tr.lcssa75, metadata !3821, metadata !DIExpression()), !dbg !3854
  br label %sw.epilog, !dbg !3943

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.default
  %mode.tr.ph87 = phi i32 [ %mode.tr.ph.lcssa, %sw.default ], [ %mode.tr.ph.lcssa84, %sw.epilog.loopexit ]
  %cl.tr79 = phi i32 [ %cl.tr.lcssa, %sw.default ], [ %cl.tr.lcssa75, %sw.epilog.loopexit ]
  %21 = phi %struct.rtx_def* [ %.lcssa70, %sw.default ], [ %.lcssa71, %sw.epilog.loopexit ]
  %bf.load65 = phi i32 [ %bf.load.lcssa, %sw.default ], [ %bf.load.lcssa61, %sw.epilog.loopexit ]
  %action.addr.0 = phi i32 [ %action, %sw.default ], [ 2, %sw.epilog.loopexit ]
  %bf.clear12 = and i32 %bf.load65, 65535, !dbg !3856
  call void @llvm.dbg.value(metadata i32 %action.addr.0, metadata !3822, metadata !DIExpression()), !dbg !3854
  %idxprom267 = zext i32 %bf.clear12 to i64, !dbg !3943
  %arrayidx268 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom267, !dbg !3943
  %22 = load i8*, i8** %arrayidx268, align 8, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %22, metadata !3826, metadata !DIExpression()), !dbg !3854
  %arrayidx270 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom267, !dbg !3944
  %23 = load i8, i8* %arrayidx270, align 1, !dbg !3944
  call void @llvm.dbg.value(metadata i8 %23, metadata !3827, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  %u293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, !dbg !3946
  %fld294 = bitcast %union.u* %u293 to [1 x %union.rtunion_def]*, !dbg !3946
  %24 = zext i8 %23 to i64, !dbg !3952
  br label %for.cond, !dbg !3952

for.cond:                                         ; preds = %for.inc311, %sw.epilog
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc311 ], [ %24, %sw.epilog ]
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1, !dbg !3953
  call void @llvm.dbg.value(metadata i32 undef, metadata !3827, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  %cmp273 = icmp sgt i64 %indvars.iv59, 0, !dbg !3954
  br i1 %cmp273, label %for.body, label %cleanup.cont.loopexit, !dbg !3955

for.body:                                         ; preds = %for.cond
  %arrayidx276 = getelementptr inbounds i8, i8* %22, i64 %indvars.iv.next60, !dbg !3956
  %25 = load i8, i8* %arrayidx276, align 1, !dbg !3956
  %cmp278 = icmp eq i8 %25, 101, !dbg !3957
  br i1 %cmp278, label %if.then280, label %if.else286, !dbg !3958

if.then280:                                       ; preds = %for.body
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i64 0, i64 %indvars.iv.next60, !dbg !3959
  %rt_rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**, !dbg !3959
  tail call fastcc void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx285, i32 %cl.tr79, i32 %action.addr.0, i32 %mode.tr.ph87) #8, !dbg !3960
  br label %for.inc311, !dbg !3960

if.else286:                                       ; preds = %for.body
  %cmp290 = icmp eq i8 %25, 69, !dbg !3961
  br i1 %cmp290, label %if.then292, label %for.inc311, !dbg !3962

if.then292:                                       ; preds = %if.else286
  %arrayidx296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i64 0, i64 %indvars.iv.next60, !dbg !3963
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx296 to %struct.rtvec_def**, !dbg !3963
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3963
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i64 0, i32 0, !dbg !3963
  %27 = load i32, i32* %num_elem, align 8, !dbg !3963
  call void @llvm.dbg.value(metadata i32 %27, metadata !3828, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  %28 = sext i32 %27 to i64, !dbg !3964
  br label %for.cond298, !dbg !3964

for.cond298:                                      ; preds = %for.body301, %if.then292
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body301 ], [ %28, %if.then292 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3946
  call void @llvm.dbg.value(metadata i32 undef, metadata !3828, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  %cmp299 = icmp sgt i64 %indvars.iv, 0, !dbg !3965
  br i1 %cmp299, label %for.body301, label %for.inc311.loopexit, !dbg !3967

for.body301:                                      ; preds = %for.cond298
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3968
  %arrayidx308 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3968
  tail call fastcc void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %arrayidx308, i32 %cl.tr79, i32 %action.addr.0, i32 %mode.tr.ph87) #8, !dbg !3969
  call void @llvm.dbg.value(metadata i32 undef, metadata !3828, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  br label %for.cond298, !dbg !3970, !llvm.loop !3971

for.inc311.loopexit:                              ; preds = %for.cond298
  br label %for.inc311, !dbg !3973

for.inc311:                                       ; preds = %for.inc311.loopexit, %if.then280, %if.else286
  call void @llvm.dbg.value(metadata i32 undef, metadata !3827, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3854
  br label %for.cond, !dbg !3973, !llvm.loop !3974

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3976

cleanup.cont.loopexit6:                           ; preds = %if.end249
  br label %cleanup.cont.loopexit6.split, !dbg !3976

cleanup.cont.loopexit6.split:                     ; preds = %entry.tailrecurse.outer.cleanup.cont.loopexit6.split_crit_edge.split_crit_edge, %cleanup.cont.loopexit6
  br label %cleanup.cont, !dbg !3976

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit6.split, %cleanup.cont.loopexit, %sw.bb266
  ret void, !dbg !3976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @remove_from_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3977 {
entry:
  call void @llvm.dbg.value(metadata i64* @live_hard_regs, metadata !3979, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3980, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3981, metadata !DIExpression()), !dbg !3983
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #8, !dbg !3984
  call void @llvm.dbg.value(metadata i32 %call, metadata !3982, metadata !DIExpression()), !dbg !3983
  %regs.promoted = load i64, i64* @live_hard_regs, align 8, !dbg !3985
  br label %do.body, !dbg !3986

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %and, %do.body ], !dbg !3983
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3981, metadata !DIExpression()), !dbg !3983
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !3985
  %shl = shl i64 1, %sh_prom, !dbg !3985
  %neg = xor i64 %shl, -1, !dbg !3985
  %and = and i64 %0, %neg, !dbg !3985
  %inc = add i32 %regno.addr.0, 1, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3981, metadata !DIExpression()), !dbg !3983
  %cmp = icmp ult i32 %inc, %call, !dbg !3988
  br i1 %cmp, label %do.body, label %do.end, !dbg !3985, !llvm.loop !3989

do.end:                                           ; preds = %do.body
  %and.lcssa = phi i64 [ %and, %do.body ], !dbg !3985
  store i64 %and.lcssa, i64* @live_hard_regs, align 8, !dbg !3985
  ret void, !dbg !3991
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3992 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3996, metadata !DIExpression()), !dbg !3997
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3998
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 0, !dbg !3998
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3998
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !4000
  %2 = load i32, i32* %block_info_size, align 8, !dbg !4000
  %cmp = icmp ugt i32 %2, %index, !dbg !4001
  br i1 %cmp, label %if.then, label %return, !dbg !4002

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !4003
  %3 = load i8**, i8*** %block_info, align 8, !dbg !4003
  %idxprom = zext i32 %index to i64, !dbg !4004
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !4004
  %4 = bitcast i8** %arrayidx3 to %struct.df_scan_bb_info**, !dbg !4004
  %5 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %4, align 8, !dbg !4004
  br label %return, !dbg !4005

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_scan_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !4006
  ret %struct.df_scan_bb_info* %retval.0, !dbg !4007
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.du_head** @VEC_du_head_p_heap_safe_push(%struct.VEC_du_head_p_heap** %vec_, %struct.du_head* %obj_) unnamed_addr #0 !dbg !4008 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_heap** @id_to_chain, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata %struct.du_head* %obj_, metadata !4015, metadata !DIExpression()), !dbg !4016
  %call = tail call fastcc i32 @VEC_du_head_p_heap_reserve(%struct.VEC_du_head_p_heap** nonnull @id_to_chain, i32 1) #8, !dbg !4017
  %0 = load %struct.VEC_du_head_p_heap*, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !4017
  %tobool = icmp eq %struct.VEC_du_head_p_heap* %0, null, !dbg !4017
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4017

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_du_head_p_heap, %struct.VEC_du_head_p_heap* %0, i64 0, i32 0, !dbg !4017
  br label %cond.end, !dbg !4017

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_du_head_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4017
  %call1 = tail call fastcc %struct.du_head** @VEC_du_head_p_base_quick_push(%struct.VEC_du_head_p_base* %cond, %struct.du_head* %obj_) #8, !dbg !4017
  ret %struct.du_head** %call1, !dbg !4017
}

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_conflict(%struct.du_head* %chains, i32 %id) unnamed_addr #5 !dbg !4018 {
entry:
  call void @llvm.dbg.value(metadata %struct.du_head* %chains, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %id, metadata !4023, metadata !DIExpression()), !dbg !4024
  br label %while.cond, !dbg !4025

while.cond:                                       ; preds = %while.body, %entry
  %chains.addr.0 = phi %struct.du_head* [ %chains, %entry ], [ %0, %while.body ]
  call void @llvm.dbg.value(metadata %struct.du_head* %chains.addr.0, metadata !4022, metadata !DIExpression()), !dbg !4024
  %tobool = icmp eq %struct.du_head* %chains.addr.0, null, !dbg !4025
  br i1 %tobool, label %while.end, label %while.body, !dbg !4025

while.body:                                       ; preds = %while.cond
  %conflicts = getelementptr inbounds %struct.du_head, %struct.du_head* %chains.addr.0, i64 0, i32 6, !dbg !4026
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %conflicts, i32 %id) #6, !dbg !4028
  %next_chain = getelementptr inbounds %struct.du_head, %struct.du_head* %chains.addr.0, i64 0, i32 0, !dbg !4029
  %0 = load %struct.du_head*, %struct.du_head** %next_chain, align 8, !dbg !4029
  call void @llvm.dbg.value(metadata %struct.du_head* %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  br label %while.cond, !dbg !4025, !llvm.loop !4030

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4032
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_du_head_p_heap_reserve(%struct.VEC_du_head_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4033 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_heap** @id_to_chain, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()), !dbg !4040
  %0 = load %struct.VEC_du_head_p_heap*, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !4041
  %tobool = icmp eq %struct.VEC_du_head_p_heap* %0, null, !dbg !4041
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4041

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_du_head_p_heap, %struct.VEC_du_head_p_heap* %0, i64 0, i32 0, !dbg !4041
  br label %cond.end, !dbg !4041

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_du_head_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4041
  %call = tail call fastcc i32 @VEC_du_head_p_base_space(%struct.VEC_du_head_p_base* %cond, i32 1) #8, !dbg !4041
  %tobool1 = icmp eq i32 %call, 0, !dbg !4041
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4039, metadata !DIExpression()), !dbg !4040
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4041

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_du_head_p_heap** @id_to_chain to i8**), align 8, !dbg !4042
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !4042
  store i8* %call3, i8** bitcast (%struct.VEC_du_head_p_heap** @id_to_chain to i8**), align 8, !dbg !4042
  br label %if.end, !dbg !4042

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4041
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.du_head** @VEC_du_head_p_base_quick_push(%struct.VEC_du_head_p_base* %vec_, %struct.du_head* %obj_) unnamed_addr #0 !dbg !4044 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_base* %vec_, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata %struct.du_head* %obj_, metadata !4050, metadata !DIExpression()), !dbg !4052
  %num1 = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 0, !dbg !4053
  %0 = load i32, i32* %num1, align 8, !dbg !4053
  %inc = add i32 %0, 1, !dbg !4053
  store i32 %inc, i32* %num1, align 8, !dbg !4053
  %idxprom = zext i32 %0 to i64, !dbg !4053
  %arrayidx = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4053
  call void @llvm.dbg.value(metadata %struct.du_head** %arrayidx, metadata !4051, metadata !DIExpression()), !dbg !4052
  store %struct.du_head* %obj_, %struct.du_head** %arrayidx, align 8, !dbg !4053
  ret %struct.du_head** %arrayidx, !dbg !4053
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_du_head_p_base_space(%struct.VEC_du_head_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4054 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_base* %vec_, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 1, metadata !4059, metadata !DIExpression()), !dbg !4060
  %tobool = icmp eq %struct.VEC_du_head_p_base* %vec_, null, !dbg !4061
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4061

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 1, !dbg !4061
  %0 = load i32, i32* %alloc, align 4, !dbg !4061
  %num = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 0, !dbg !4061
  %1 = load i32, i32* %num, align 8, !dbg !4061
  %cmp1 = icmp ne i32 %0, %1, !dbg !4061
  %phitmp = zext i1 %cmp1 to i32, !dbg !4061
  br label %cond.end, !dbg !4061

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4061

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4061
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_rtx_reg(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %cl, i32 %action, i32 %type) unnamed_addr #5 !dbg !4062 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4064, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !4065, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %cl, metadata !4066, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %action, metadata !4067, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %type, metadata !4068, metadata !DIExpression()), !dbg !4095
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4096
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4071, metadata !DIExpression()), !dbg !4095
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !4097
  %bf.load = load i32, i32* %1, align 8, !dbg !4097
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4097
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4072, metadata !DIExpression()), !dbg !4095
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %0) #8, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %call, metadata !4073, metadata !DIExpression()), !dbg !4095
  %idxprom = zext i32 %call to i64, !dbg !4099
  %idxprom1 = zext i32 %bf.clear to i64, !dbg !4099
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !4099
  %2 = load i8, i8* %arrayidx2, align 1, !dbg !4099
  %conv = zext i8 %2 to i32, !dbg !4099
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4074, metadata !DIExpression()), !dbg !4095
  %cmp = icmp eq i32 %action, 4, !dbg !4100
  %cmp4 = icmp eq i32 %type, 1, !dbg !4095
  br i1 %cmp, label %if.then, label %if.end7, !dbg !4102

if.then:                                          ; preds = %entry
  br i1 %cmp4, label %if.then6, label %cleanup.cont255, !dbg !4103

if.then6:                                         ; preds = %if.then
  tail call fastcc void @create_new_chain(i32 %call, i32 %conv, %struct.rtx_def** %loc, %struct.rtx_def* %insn, i32 %cl) #8, !dbg !4105
  br label %cleanup.cont255, !dbg !4105

if.end7:                                          ; preds = %entry
  %cmp10 = icmp eq i32 %action, 0, !dbg !4107
  %cmp12 = icmp eq i32 %action, 5, !dbg !4109
  %spec.select = or i1 %cmp10, %cmp12, !dbg !4110
  %cmp14 = xor i1 %cmp4, %spec.select, !dbg !4111
  br i1 %cmp14, label %cleanup.cont255, label %for.cond.preheader, !dbg !4112

for.cond.preheader:                               ; preds = %if.end7
  %add = add i32 %call, %conv, !dbg !4113
  %switch = icmp ult i32 %action, 2, !dbg !4114
  %arrayidx206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4116
  %rt_int207 = bitcast %union.rtunion_def* %arrayidx206 to i32*, !dbg !4116
  %idxprom208 = sext i32 %action to i64, !dbg !4116
  %arrayidx209 = getelementptr inbounds [6 x i8*], [6 x i8*]* @scan_actions_name, i64 0, i64 %idxprom208, !dbg !4116
  %cmp67 = icmp eq i32 %cl, 0, !dbg !4118
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4118
  %4 = trunc i32 %cl to i16, !dbg !4119
  %5 = zext i8 %2 to i64, !dbg !4120
  br label %for.cond, !dbg !4120

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %p.0 = phi %struct.du_head** [ @open_chains, %for.cond.preheader ], [ %p.2, %for.cond.backedge ], !dbg !4121
  call void @llvm.dbg.value(metadata %struct.du_head** %p.0, metadata !4069, metadata !DIExpression()), !dbg !4095
  %6 = load %struct.du_head*, %struct.du_head** %p.0, align 8, !dbg !4122
  %tobool = icmp eq %struct.du_head* %6, null, !dbg !4120
  br i1 %tobool, label %cleanup.cont255.loopexit, label %for.body, !dbg !4120

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.du_head* %6, metadata !4075, metadata !DIExpression()), !dbg !4113
  %7 = bitcast %struct.du_head* %6 to i64*, !dbg !4123
  %8 = load i64, i64* %7, align 8, !dbg !4123
  %regno = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 3, !dbg !4124
  %9 = load i32, i32* %regno, align 8, !dbg !4124
  %cmp18 = icmp eq i32 %9, %call, !dbg !4125
  br i1 %cmp18, label %land.rhs, label %land.end, !dbg !4126

land.rhs:                                         ; preds = %for.body
  %nregs = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 4, !dbg !4127
  %10 = load i32, i32* %nregs, align 4, !dbg !4127
  %cmp20 = icmp eq i32 %10, %conv, !dbg !4128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %11 = phi i1 [ false, %for.body ], [ %cmp20, %land.rhs ], !dbg !4113
  call void @llvm.dbg.value(metadata i1 %11, metadata !4080, metadata !DIExpression()), !dbg !4113
  %cmp23 = icmp ugt i32 %call, %9, !dbg !4129
  br i1 %cmp23, label %land.end31, label %land.rhs25, !dbg !4130

land.rhs25:                                       ; preds = %land.end
  %nregs27 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 4, !dbg !4131
  %12 = load i32, i32* %nregs27, align 4, !dbg !4131
  %add28 = add i32 %9, %12, !dbg !4132
  %cmp29 = icmp uge i32 %add, %add28, !dbg !4133
  br label %land.end31

land.end31:                                       ; preds = %land.end, %land.rhs25
  %13 = phi i1 [ false, %land.end ], [ %cmp29, %land.rhs25 ], !dbg !4113
  call void @llvm.dbg.value(metadata i1 %13, metadata !4081, metadata !DIExpression()), !dbg !4113
  %cmp34 = icmp ult i32 %call, %9, !dbg !4134
  br i1 %cmp34, label %land.end43, label %land.rhs36, !dbg !4135

land.rhs36:                                       ; preds = %land.end31
  %nregs39 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 4, !dbg !4136
  %14 = load i32, i32* %nregs39, align 4, !dbg !4136
  %add40 = add i32 %9, %14, !dbg !4137
  %cmp41 = icmp ule i32 %add, %add40, !dbg !4138
  br label %land.end43

land.end43:                                       ; preds = %land.end31, %land.rhs36
  %15 = phi i1 [ false, %land.end31 ], [ %cmp41, %land.rhs36 ], !dbg !4113
  call void @llvm.dbg.value(metadata i1 %15, metadata !4082, metadata !DIExpression()), !dbg !4113
  %terminated = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 8, !dbg !4139
  %bf.load45 = load i8, i8* %terminated, align 8, !dbg !4139
  %bf.clear46 = and i8 %bf.load45, 1, !dbg !4139
  %tobool47 = icmp eq i8 %bf.clear46, 0, !dbg !4141
  br i1 %tobool47, label %lor.lhs.false, label %if.then58, !dbg !4142

lor.lhs.false:                                    ; preds = %land.end43
  %nregs49 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 4, !dbg !4143
  %16 = load i32, i32* %nregs49, align 4, !dbg !4143
  %add50 = add i32 %9, %16, !dbg !4144
  %cmp51 = icmp ugt i32 %add50, %call, !dbg !4145
  br i1 %cmp51, label %lor.lhs.false53, label %if.then58, !dbg !4146

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %cmp56 = icmp ugt i32 %add, %9, !dbg !4147
  br i1 %cmp56, label %if.end60, label %if.then58, !dbg !4148

if.then58:                                        ; preds = %lor.lhs.false53, %lor.lhs.false, %land.end43
  %next_chain59 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 0, !dbg !4149
  call void @llvm.dbg.value(metadata %struct.du_head** %next_chain59, metadata !4069, metadata !DIExpression()), !dbg !4095
  br label %cleanup, !dbg !4151, !llvm.loop !4152

if.end60:                                         ; preds = %lor.lhs.false53
  switch i32 %action, label %if.else223 [
    i32 3, label %if.then66
    i32 5, label %if.then66
    i32 1, label %land.lhs.true174
    i32 0, label %land.lhs.true174
  ], !dbg !4154

if.then66:                                        ; preds = %if.end60, %if.end60
  br i1 %cmp67, label %if.then75, label %lor.lhs.false69, !dbg !4155

lor.lhs.false69:                                  ; preds = %if.then66
  br i1 %11, label %if.else117, label %land.lhs.true, !dbg !4156

land.lhs.true:                                    ; preds = %lor.lhs.false69
  %bf.load71 = load i32, i32* %3, align 8, !dbg !4157
  %bf.clear72 = and i32 %bf.load71, 65535, !dbg !4157
  %cmp73 = icmp eq i32 %bf.clear72, 7, !dbg !4157
  br i1 %cmp73, label %if.else117, label %if.then75, !dbg !4158

if.then75:                                        ; preds = %land.lhs.true, %if.then66
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4159
  %tobool76 = icmp eq %struct._IO_FILE* %17, null, !dbg !4159
  br i1 %tobool76, label %if.end85, label %if.then77, !dbg !4161

if.then77:                                        ; preds = %if.then75
  %idxprom79 = zext i32 %9 to i64, !dbg !4162
  %arrayidx80 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom79, !dbg !4162
  %18 = load i8*, i8** %arrayidx80, align 8, !dbg !4162
  %id = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 5, !dbg !4163
  %19 = load i32, i32* %id, align 8, !dbg !4163
  %20 = load i32, i32* %rt_int207, align 8, !dbg !4164
  %21 = load i8*, i8** %arrayidx209, align 8, !dbg !4165
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %18, i32 %19, i32 %20, i8* %21) #6, !dbg !4166
  %bf.load86.pre = load i8, i8* %terminated, align 8, !dbg !4167
  br label %if.end85, !dbg !4166

if.end85:                                         ; preds = %if.then75, %if.then77
  %bf.load86 = phi i8 [ %bf.load45, %if.then75 ], [ %bf.load86.pre, %if.then77 ], !dbg !4167
  %bf.set = or i8 %bf.load86, 4, !dbg !4167
  store i8 %bf.set, i8* %terminated, align 8, !dbg !4167
  br i1 %13, label %if.then89, label %if.else, !dbg !4168

if.then89:                                        ; preds = %if.end85
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4083, metadata !DIExpression()), !dbg !4169
  store i32 %call, i32* %regno, align 8, !dbg !4170
  store i32 %conv, i32* %nregs49, align 4, !dbg !4171
  br label %while.cond, !dbg !4172

while.cond:                                       ; preds = %while.body, %if.then89
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ %5, %if.then89 ], !dbg !4169
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4083, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 undef, metadata !4083, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4169
  %cmp93 = icmp eq i64 %indvars.iv, 0, !dbg !4173
  br i1 %cmp93, label %while.end, label %while.body, !dbg !4172

while.body:                                       ; preds = %while.cond
  %22 = trunc i64 %indvars.iv to i32, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %22, metadata !4083, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4169
  %dec = add nsw i32 %22, -1, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4083, metadata !DIExpression()), !dbg !4169
  %add96 = add i32 %call, %dec, !dbg !4175
  %sh_prom = zext i32 %add96 to i64, !dbg !4175
  %shl = shl i64 1, %sh_prom, !dbg !4175
  %23 = load i64, i64* @live_in_chains, align 8, !dbg !4175
  %or = or i64 %23, %shl, !dbg !4175
  store i64 %or, i64* @live_in_chains, align 8, !dbg !4175
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4174
  br label %while.cond, !dbg !4172, !llvm.loop !4176

while.end:                                        ; preds = %while.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4177
  %tobool97 = icmp eq %struct._IO_FILE* %24, null, !dbg !4177
  br i1 %tobool97, label %if.end160, label %if.then98, !dbg !4179

if.then98:                                        ; preds = %while.end
  %arrayidx101 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !4180
  %25 = load i8*, i8** %arrayidx101, align 8, !dbg !4180
  %id102 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 5, !dbg !4181
  %26 = load i32, i32* %id102, align 8, !dbg !4181
  %27 = load i32, i32* %rt_int207, align 8, !dbg !4182
  %call107 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i8* %25, i32 %26, i32 %27) #6, !dbg !4183
  br label %if.end160, !dbg !4183

if.else:                                          ; preds = %if.end85
  br i1 %15, label %if.end160, label %if.then110, !dbg !4184

if.then110:                                       ; preds = %if.else
  store i1 true, i1* @fail_current_block, align 1, !dbg !4185
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4188
  %tobool111 = icmp eq %struct._IO_FILE* %28, null, !dbg !4188
  br i1 %tobool111, label %if.end160, label %if.then112, !dbg !4190

if.then112:                                       ; preds = %if.then110
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !4191
  br label %if.end160, !dbg !4191

if.else117:                                       ; preds = %land.lhs.true, %lor.lhs.false69
  store i64 32, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !4192
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !4192
  %30 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !4192
  %sub.ptr.sub = sub i64 %29, %30, !dbg !4192
  %cmp118 = icmp slt i64 %sub.ptr.sub, 32, !dbg !4192
  %31 = inttoptr i64 %30 to i8*, !dbg !4192
  br i1 %cmp118, label %cond.true, label %cond.end, !dbg !4192

cond.true:                                        ; preds = %if.else117
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @rename_obstack, i32 32) #6, !dbg !4192
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !4192
  %.pre3 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !4192
  br label %cond.end, !dbg !4192

cond.end:                                         ; preds = %if.else117, %cond.true
  %32 = phi i8* [ %31, %if.else117 ], [ %.pre3, %cond.true ], !dbg !4192
  %33 = phi i64 [ 32, %if.else117 ], [ %.pre, %cond.true ], !dbg !4192
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !4192
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !4192
  %34 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2), align 8, !dbg !4192
  %cmp121 = icmp eq i8* %add.ptr, %34, !dbg !4192
  %35 = ptrtoint i8* %34 to i64, !dbg !4192
  %36 = ptrtoint i8* %add.ptr to i64, !dbg !4192
  br i1 %cmp121, label %cond.true123, label %cond.end128, !dbg !4192

cond.true123:                                     ; preds = %cond.end
  %bf.load124 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !4192
  %bf.set126 = or i8 %bf.load124, 2, !dbg !4192
  store i8 %bf.set126, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 10), align 8, !dbg !4192
  br label %cond.end128, !dbg !4192

cond.end128:                                      ; preds = %cond.end, %cond.true123
  store i64 %35, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 5), align 8, !dbg !4192
  %37 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 6), align 8, !dbg !4192
  %conv134 = sext i32 %37 to i64, !dbg !4192
  %add135 = add nsw i64 %36, %conv134, !dbg !4192
  %neg = xor i32 %37, -1, !dbg !4192
  %conv136 = sext i32 %neg to i64, !dbg !4192
  %and = and i64 %add135, %conv136, !dbg !4192
  %38 = inttoptr i64 %and to i8*, !dbg !4192
  store i8* %38, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3), align 8, !dbg !4192
  %39 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 1) to i64*), align 8, !dbg !4192
  %sub.ptr.sub139 = sub i64 %and, %39, !dbg !4192
  %40 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 4) to i64*), align 8, !dbg !4192
  %sub.ptr.sub142 = sub i64 %40, %39, !dbg !4192
  %cmp143 = icmp sgt i64 %sub.ptr.sub139, %sub.ptr.sub142, !dbg !4192
  br i1 %cmp143, label %cond.true145, label %cond.end147, !dbg !4192

cond.true145:                                     ; preds = %cond.end128
  store i64 %40, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 3) to i64*), align 8, !dbg !4192
  br label %cond.end147, !dbg !4192

cond.end147:                                      ; preds = %cond.end128, %cond.true145
  %41 = phi i64 [ %and, %cond.end128 ], [ %40, %cond.true145 ], !dbg !4192
  store i64 %41, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @rename_obstack, i64 0, i32 2) to i64*), align 8, !dbg !4192
  call void @llvm.dbg.value(metadata i8* %34, metadata !4090, metadata !DIExpression()), !dbg !4119
  %next_use = bitcast i8* %34 to %struct.du_chain**, !dbg !4193
  store %struct.du_chain* null, %struct.du_chain** %next_use, align 8, !dbg !4194
  %loc149 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !4195
  %42 = bitcast i8* %loc149 to %struct.rtx_def***, !dbg !4195
  store %struct.rtx_def** %loc, %struct.rtx_def*** %42, align 8, !dbg !4196
  %insn150 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !4197
  %43 = bitcast i8* %insn150 to %struct.rtx_def**, !dbg !4197
  store %struct.rtx_def* %insn, %struct.rtx_def** %43, align 8, !dbg !4198
  %cl151 = getelementptr inbounds i8, i8* %34, i64 24, !dbg !4199
  %44 = bitcast i8* %cl151 to i16*, !dbg !4199
  store i16 %4, i16* %44, align 8, !dbg !4200
  %first = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 1, !dbg !4201
  %45 = load %struct.du_chain*, %struct.du_chain** %first, align 8, !dbg !4201
  %cmp152 = icmp eq %struct.du_chain* %45, null, !dbg !4203
  br i1 %cmp152, label %if.then154, label %if.else156, !dbg !4204

if.then154:                                       ; preds = %cond.end147
  %46 = bitcast %struct.du_chain** %first to i8**, !dbg !4205
  store i8* %34, i8** %46, align 8, !dbg !4205
  br label %if.end158, !dbg !4206

if.else156:                                       ; preds = %cond.end147
  %last = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 2, !dbg !4207
  %47 = bitcast %struct.du_chain** %last to i8***, !dbg !4207
  %48 = load i8**, i8*** %47, align 8, !dbg !4207
  store i8* %34, i8** %48, align 8, !dbg !4208
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.then154
  %last159 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 2, !dbg !4209
  %49 = bitcast %struct.du_chain** %last159 to i8**, !dbg !4210
  store i8* %34, i8** %49, align 8, !dbg !4210
  br label %if.end160

if.end160:                                        ; preds = %while.end, %if.then110, %if.then98, %if.then112, %if.else, %if.end158
  %bf.load161 = load i32, i32* %3, align 8, !dbg !4211
  %bf.clear162 = and i32 %bf.load161, 65535, !dbg !4211
  %cmp163 = icmp eq i32 %bf.clear162, 7, !dbg !4211
  %next_chain167 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 0, !dbg !4213
  %spec.select1 = select i1 %cmp163, %struct.du_head** %p.0, %struct.du_head** %next_chain167, !dbg !4214
  %spec.select2 = select i1 %cmp163, i32 1, i32 3, !dbg !4214
  br label %cleanup, !dbg !4214

land.lhs.true174:                                 ; preds = %if.end60, %if.end60
  br i1 %13, label %if.then176, label %if.else212, !dbg !4215

if.then176:                                       ; preds = %land.lhs.true174
  %bf.set181 = or i8 %bf.load45, 1, !dbg !4216
  store i8 %bf.set181, i8* %terminated, align 8, !dbg !4216
  %50 = load i64, i64* bitcast (%struct.du_head** @closed_chains to i64*), align 8, !dbg !4217
  store i64 %50, i64* %7, align 8, !dbg !4218
  store %struct.du_head* %6, %struct.du_head** @closed_chains, align 8, !dbg !4219
  %id183 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 5, !dbg !4220
  %51 = load i32, i32* %id183, align 8, !dbg !4220
  %call184 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* nonnull @open_chains_set, i32 %51) #6, !dbg !4221
  %52 = load i32, i32* %nregs49, align 4, !dbg !4222
  call void @llvm.dbg.value(metadata i32 %52, metadata !4092, metadata !DIExpression()), !dbg !4223
  br label %while.cond186, !dbg !4224

while.cond186:                                    ; preds = %while.body190, %if.then176
  %nregs177.0 = phi i32 [ %52, %if.then176 ], [ %dec187, %while.body190 ], !dbg !4223
  call void @llvm.dbg.value(metadata i32 %nregs177.0, metadata !4092, metadata !DIExpression()), !dbg !4223
  %dec187 = add i32 %nregs177.0, -1, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %dec187, metadata !4092, metadata !DIExpression()), !dbg !4223
  %cmp188 = icmp eq i32 %nregs177.0, 0, !dbg !4226
  br i1 %cmp188, label %while.end197, label %while.body190, !dbg !4224

while.body190:                                    ; preds = %while.cond186
  %53 = load i32, i32* %regno, align 8, !dbg !4227
  %add192 = add i32 %53, %dec187, !dbg !4227
  %sh_prom193 = zext i32 %add192 to i64, !dbg !4227
  %shl194 = shl i64 1, %sh_prom193, !dbg !4227
  %neg195 = xor i64 %shl194, -1, !dbg !4227
  %54 = load i64, i64* @live_in_chains, align 8, !dbg !4227
  %and196 = and i64 %54, %neg195, !dbg !4227
  store i64 %and196, i64* @live_in_chains, align 8, !dbg !4227
  br label %while.cond186, !dbg !4224, !llvm.loop !4228

while.end197:                                     ; preds = %while.cond186
  %55 = bitcast %struct.du_head** %p.0 to i64*, !dbg !4229
  store i64 %8, i64* %55, align 8, !dbg !4229
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4230
  %tobool198 = icmp eq %struct._IO_FILE* %56, null, !dbg !4230
  br i1 %tobool198, label %cleanup, label %if.then199, !dbg !4231

if.then199:                                       ; preds = %while.end197
  %57 = load i32, i32* %regno, align 8, !dbg !4232
  %idxprom201 = zext i32 %57 to i64, !dbg !4233
  %arrayidx202 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom201, !dbg !4233
  %58 = load i8*, i8** %arrayidx202, align 8, !dbg !4233
  %59 = load i32, i32* %id183, align 8, !dbg !4234
  %60 = load i32, i32* %rt_int207, align 8, !dbg !4235
  %61 = load i8*, i8** %arrayidx209, align 8, !dbg !4236
  %call210 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %58, i32 %59, i32 %60, i8* %61) #6, !dbg !4237
  br label %cleanup, !dbg !4237

if.else212:                                       ; preds = %land.lhs.true174
  br i1 %switch, label %if.then218, label %if.else223, !dbg !4238

if.then218:                                       ; preds = %if.else212
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4239
  %tobool219 = icmp eq %struct._IO_FILE* %62, null, !dbg !4239
  br i1 %tobool219, label %if.end222, label %if.then220, !dbg !4242

if.then220:                                       ; preds = %if.then218
  %call221 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !4243
  br label %if.end222, !dbg !4243

if.end222:                                        ; preds = %if.then218, %if.then220
  store i1 true, i1* @fail_current_block, align 1, !dbg !4244
  br label %cleanup, !dbg !4245

if.else223:                                       ; preds = %if.else212, %if.end60
  %bf.set227 = or i8 %bf.load45, 4, !dbg !4246
  store i8 %bf.set227, i8* %terminated, align 8, !dbg !4246
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4248
  %tobool228 = icmp eq %struct._IO_FILE* %63, null, !dbg !4248
  br i1 %tobool228, label %if.end241, label %if.then229, !dbg !4250

if.then229:                                       ; preds = %if.else223
  %idxprom231 = zext i32 %9 to i64, !dbg !4251
  %arrayidx232 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom231, !dbg !4251
  %64 = load i8*, i8** %arrayidx232, align 8, !dbg !4251
  %id233 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 5, !dbg !4252
  %65 = load i32, i32* %id233, align 8, !dbg !4252
  %66 = load i32, i32* %rt_int207, align 8, !dbg !4253
  %67 = load i8*, i8** %arrayidx209, align 8, !dbg !4254
  %call240 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %64, i32 %65, i32 %66, i8* %67) #6, !dbg !4255
  br label %if.end241, !dbg !4255

if.end241:                                        ; preds = %if.else223, %if.then229
  %next_chain242 = getelementptr inbounds %struct.du_head, %struct.du_head* %6, i64 0, i32 0, !dbg !4256
  call void @llvm.dbg.value(metadata %struct.du_head** %next_chain242, metadata !4069, metadata !DIExpression()), !dbg !4095
  br label %cleanup

cleanup:                                          ; preds = %while.end197, %if.end160, %if.end241, %if.then199, %if.end222, %if.then58
  %p.2 = phi %struct.du_head** [ %next_chain59, %if.then58 ], [ %p.0, %if.end222 ], [ %next_chain242, %if.end241 ], [ %p.0, %if.then199 ], [ %p.0, %while.end197 ], [ %spec.select1, %if.end160 ], !dbg !4121
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then58 ], [ 1, %if.end222 ], [ 0, %if.end241 ], [ 0, %if.then199 ], [ 0, %while.end197 ], [ %spec.select2, %if.end160 ]
  call void @llvm.dbg.value(metadata %struct.du_head** %p.2, metadata !4069, metadata !DIExpression()), !dbg !4095
  switch i32 %cleanup.dest.slot.0, label %cleanup.cont255.loopexit [
    i32 0, label %for.cond.backedge
    i32 3, label %for.cond.backedge
  ]

for.cond.backedge:                                ; preds = %cleanup, %cleanup
  br label %for.cond, !dbg !4095, !llvm.loop !4152

cleanup.cont255.loopexit:                         ; preds = %cleanup, %for.cond
  br label %cleanup.cont255, !dbg !4257

cleanup.cont255:                                  ; preds = %cleanup.cont255.loopexit, %if.then6, %if.then, %if.end7
  ret void, !dbg !4257
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !4258 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4263, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !4265, metadata !DIExpression()), !dbg !4266
  ret i32 undef, !dbg !4267
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 %regno, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !4268 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4272, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4273, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 49, metadata !4274, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 37, metadata !4275, metadata !DIExpression()), !dbg !4276
  %cmp = icmp ugt i32 %regno, 52, !dbg !4277
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4279

land.lhs.true:                                    ; preds = %entry
  %0 = load i16*, i16** @reg_renumber, align 8, !dbg !4280
  %idxprom = zext i32 %regno to i64, !dbg !4280
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom, !dbg !4280
  %1 = load i16, i16* %arrayidx, align 2, !dbg !4280
  %cmp1 = icmp sgt i16 %1, -1, !dbg !4281
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4282

if.then:                                          ; preds = %land.lhs.true
  %conv5 = sext i16 %1 to i32, !dbg !4283
  call void @llvm.dbg.value(metadata i32 %conv5, metadata !4272, metadata !DIExpression()), !dbg !4276
  br label %if.end, !dbg !4284

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %regno.addr.0 = phi i32 [ %conv5, %if.then ], [ %regno, %land.lhs.true ], [ %regno, %entry ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !4272, metadata !DIExpression()), !dbg !4276
  %call = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 %regno.addr.0, i32 %mode, i32 49, i32 37) #8, !dbg !4285
  ret i8 %call, !dbg !4286
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 %regno, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !4287 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4290, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !4291, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !4292, metadata !DIExpression()), !dbg !4293
  %cmp = icmp ult i32 %regno, 8, !dbg !4294
  br i1 %cmp, label %lor.end20, label %lor.lhs.false, !dbg !4294

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %regno to i64, !dbg !4294
  %sub = add nsw i64 %conv, -37, !dbg !4294
  %cmp1 = icmp ult i64 %sub, 8, !dbg !4294
  %0 = or i32 %regno, 4, !dbg !4294
  %1 = icmp eq i32 %0, 20, !dbg !4294
  %2 = or i1 %1, %cmp1, !dbg !4294
  br i1 %2, label %lor.end20, label %lor.rhs, !dbg !4294

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i16*, i16** @reg_renumber, align 8, !dbg !4294
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %conv, !dbg !4294
  %4 = load i16, i16* %arrayidx, align 2, !dbg !4294
  %cmp10 = icmp ult i16 %4, 8, !dbg !4294
  br i1 %cmp10, label %lor.end20, label %lor.rhs12, !dbg !4294

lor.rhs12:                                        ; preds = %lor.rhs
  %conv15 = sext i16 %4 to i64, !dbg !4294
  %conv16 = and i64 %conv15, 4294967295, !dbg !4294
  %sub17 = add nsw i64 %conv16, -37, !dbg !4294
  %cmp18 = icmp ult i64 %sub17, 8, !dbg !4294
  %phitmp = zext i1 %cmp18 to i8, !dbg !4294
  br label %lor.end20, !dbg !4294

lor.end20:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %5 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs12 ]
  ret i8 %5, !dbg !4295
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !4296 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4300, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4301, metadata !DIExpression()), !dbg !4302
  %idxprom = zext i32 %regno to i64, !dbg !4303
  %idxprom1 = sext i32 %mode to i64, !dbg !4303
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !4303
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !4303
  %conv = zext i8 %0 to i32, !dbg !4303
  %add = add i32 %conv, %regno, !dbg !4304
  ret i32 %add, !dbg !4305
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4306 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4315, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4316, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 0, metadata !4317, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4320
  %1 = load i64, i64* %0, align 8, !dbg !4320
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4321
  store i64 %1, i64* %2, align 8, !dbg !4321
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4322
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4323
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4324
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4327
  br label %while.body, !dbg !4327

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4328
  br i1 %tobool, label %if.then, label %if.end, !dbg !4329

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4330
  br label %while.end, !dbg !4332

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4333

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4327, !llvm.loop !4334

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4336

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4336
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4338
  %7 = load i32, i32* %indx9, align 8, !dbg !4338
  %cmp11 = icmp eq i32 %7, 0, !dbg !4339
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4340

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4341
  %8 = load i32, i32* %indx14, align 8, !dbg !4341
  %mul = shl i32 %8, 7, !dbg !4342
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4317, metadata !DIExpression()), !dbg !4319
  br label %if.end15, !dbg !4343

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4317, metadata !DIExpression()), !dbg !4319
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4344
  store i32 0, i32* %word_no, align 8, !dbg !4345
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4346
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4346
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4347
  store i64 %9, i64* %bits21, align 8, !dbg !4348
  %tobool23 = icmp eq i64 %9, 0, !dbg !4349
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4349
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4350
  call void @llvm.dbg.value(metadata i32 %add, metadata !4317, metadata !DIExpression()), !dbg !4319
  store i32 %add, i32* %bit_no, align 4, !dbg !4351
  ret void, !dbg !4352
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4353 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4357, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4358, metadata !DIExpression()), !dbg !4362
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4363
  %0 = load i64, i64* %bits, align 8, !dbg !4363
  %tobool = icmp eq i64 %0, 0, !dbg !4364
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4365

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4366
  br label %next_bit, !dbg !4369

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4359), !dbg !4370
  br label %while.cond, !dbg !4369

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4371
  %and = and i64 %2, 1, !dbg !4372
  %tobool2 = icmp eq i64 %and, 0, !dbg !4373
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4369

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4374
  store i64 %shr, i64* %bits, align 8, !dbg !4374
  %3 = load i32, i32* %bit_no, align 4, !dbg !4376
  %add = add i32 %3, 1, !dbg !4376
  store i32 %add, i32* %bit_no, align 4, !dbg !4376
  %.pre = load i64, i64* %bits, align 8, !dbg !4371
  br label %while.cond, !dbg !4369, !llvm.loop !4377

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4379
  %sub = add i32 %4, 63, !dbg !4380
  %div = and i32 %sub, -64, !dbg !4381
  store i32 %div, i32* %bit_no, align 4, !dbg !4382
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4383
  %5 = load i32, i32* %word_no, align 8, !dbg !4384
  %inc = add i32 %5, 1, !dbg !4384
  store i32 %inc, i32* %word_no, align 8, !dbg !4384
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4385
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4385
  br label %while.body6, !dbg !4386

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4387

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4388
  %cmp = icmp eq i32 %8, 2, !dbg !4389
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4385
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4387

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4366
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4366
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4366
  store i64 %10, i64* %bits, align 8, !dbg !4390
  %tobool14 = icmp eq i64 %10, 0, !dbg !4391
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4393

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4394
  %add17 = add i32 %11, 64, !dbg !4394
  store i32 %add17, i32* %bit_no, align 4, !dbg !4394
  %12 = load i32, i32* %word_no, align 8, !dbg !4395
  %inc19 = add i32 %12, 1, !dbg !4395
  store i32 %inc19, i32* %word_no, align 8, !dbg !4395
  br label %while.cond7, !dbg !4387, !llvm.loop !4396

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4385
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4398
  %14 = load i64, i64* %13, align 8, !dbg !4398
  store i64 %14, i64* %6, align 8, !dbg !4399
  %tobool24 = icmp eq i64 %14, 0, !dbg !4400
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4402

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4402
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4403
  %16 = load i32, i32* %indx, align 8, !dbg !4403
  %mul28 = shl i32 %16, 7, !dbg !4404
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4405
  store i32 0, i32* %word_no, align 8, !dbg !4406
  br label %while.body6, !dbg !4386, !llvm.loop !4407

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4409

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4409

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4362
  ret i8 %retval.0, !dbg !4409
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.du_head* @VEC_du_head_p_base_index(%struct.VEC_du_head_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4410 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_base* %vec_, metadata !4416, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4417, metadata !DIExpression()), !dbg !4418
  br label %land.end, !dbg !4419

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4419
  %arrayidx = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4419
  %0 = load %struct.du_head*, %struct.du_head** %arrayidx, align 8, !dbg !4419
  ret %struct.du_head* %0, !dbg !4419
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4420 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4424, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4425, metadata !DIExpression()), !dbg !4426
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4427
  %0 = load i64, i64* %bits, align 8, !dbg !4428
  %shr = lshr i64 %0, 1, !dbg !4428
  store i64 %shr, i64* %bits, align 8, !dbg !4428
  %1 = load i32, i32* %bit_no, align 4, !dbg !4429
  %add = add i32 %1, 1, !dbg !4429
  store i32 %add, i32* %bit_no, align 4, !dbg !4429
  ret void, !dbg !4430
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_raw_REG(i32, i32) local_unnamed_addr #2

declare dso_local i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @add_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_du_head_p_base_iterate(%struct.VEC_du_head_p_base* %vec_, i32 %ix_, %struct.du_head** %ptr) unnamed_addr #0 !dbg !4431 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_base* %vec_, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4436, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata %struct.du_head** %ptr, metadata !4437, metadata !DIExpression()), !dbg !4438
  %tobool = icmp eq %struct.VEC_du_head_p_base* %vec_, null, !dbg !4439
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4439

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 0, !dbg !4439
  %0 = load i32, i32* %num, align 8, !dbg !4439
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4439
  br i1 %cmp, label %if.then, label %if.else, !dbg !4441

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4442
  %arrayidx = getelementptr inbounds %struct.VEC_du_head_p_base, %struct.VEC_du_head_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4442
  %1 = load %struct.du_head*, %struct.du_head** %arrayidx, align 8, !dbg !4442
  br label %return, !dbg !4442

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4444

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.du_head* [ null, %if.else ], [ %1, %if.then ], !dbg !4446
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4446
  store %struct.du_head* %storemerge, %struct.du_head** %ptr, align 8, !dbg !4446
  ret i32 %retval.0, !dbg !4441
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_du_head_p_heap_free(%struct.VEC_du_head_p_heap** %vec_) unnamed_addr #0 !dbg !4447 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_du_head_p_heap** @id_to_chain, metadata !4451, metadata !DIExpression()), !dbg !4452
  %0 = load %struct.VEC_du_head_p_heap*, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !4453
  %tobool = icmp eq %struct.VEC_du_head_p_heap* %0, null, !dbg !4453
  br i1 %tobool, label %if.end, label %if.then, !dbg !4455

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_du_head_p_heap* %0 to i8*, !dbg !4455
  tail call void @free(i8* nonnull %1) #6, !dbg !4453
  br label %if.end, !dbg !4453

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_du_head_p_heap* null, %struct.VEC_du_head_p_heap** @id_to_chain, align 8, !dbg !4455
  ret void, !dbg !4455
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
!llvm.module.flags = !{!2023, !2024, !2025}
!llvm.ident = !{!2026}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_regrename", scope: !2, file: !3, line: 1365, type: !1996, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !781, globals: !1971, nameTableKind: None)
!3 = !DIFile(filename: "regrename.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !703, !733, !739, !773}
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
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !329, line: 1188, baseType: !7, size: 32, elements: !704)
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
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "op_type", file: !734, line: 25, baseType: !7, size: 32, elements: !735)
!734 = !DIFile(filename: "./recog.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!735 = !{!736, !737, !738}
!736 = !DIEnumerator(name: "OP_IN", value: 0, isUnsigned: true)
!737 = !DIEnumerator(name: "OP_OUT", value: 1, isUnsigned: true)
!738 = !DIEnumerator(name: "OP_INOUT", value: 2, isUnsigned: true)
!739 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !561, line: 836, baseType: !7, size: 32, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!741 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!742 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!743 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!744 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!745 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!746 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!747 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!748 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!749 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!750 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!751 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!752 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!753 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!754 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!755 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!756 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!757 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!758 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!759 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!760 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!761 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!762 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!763 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!764 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!765 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!766 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!767 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!768 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!769 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!770 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!771 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!772 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!773 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scan_actions", file: !3, line: 89, baseType: !7, size: 32, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780}
!775 = !DIEnumerator(name: "terminate_write", value: 0, isUnsigned: true)
!776 = !DIEnumerator(name: "terminate_dead", value: 1, isUnsigned: true)
!777 = !DIEnumerator(name: "mark_all_read", value: 2, isUnsigned: true)
!778 = !DIEnumerator(name: "mark_read", value: 3, isUnsigned: true)
!779 = !DIEnumerator(name: "mark_write", value: 4, isUnsigned: true)
!780 = !DIEnumerator(name: "mark_access", value: 5, isUnsigned: true)
!781 = !{!782, !783, !784, !785, !788, !789, !791, !795, !786, !798, !560, !189, !800, !801, !803, !1903, !826, !739, !1904, !816, !821, !7, !1970, !815}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!784 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!788, !794}
!794 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !788}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !799, line: 42, baseType: !800)
!799 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!800 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !802, line: 35, baseType: !794)
!802 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_du_head_p_heap", file: !3, line: 126, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_du_head_p_heap", file: !3, line: 126, size: 128, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !805, file: !3, line: 126, baseType: !808, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_du_head_p_base", file: !3, line: 125, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_du_head_p_base", file: !3, line: 125, size: 128, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !809, file: !3, line: 125, baseType: !7, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !809, file: !3, line: 125, baseType: !7, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !809, file: !3, line: 125, baseType: !814, size: 64, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 64, elements: !861)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "du_head_p", file: !3, line: 124, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "du_head", file: !3, line: 49, size: 704, elements: !818)
!818 = !{!819, !820, !1893, !1894, !1895, !1896, !1897, !1899, !1900, !1901, !1902}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_chain", scope: !817, file: !3, line: 52, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !817, file: !3, line: 54, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "du_chain", file: !3, line: 76, size: 256, elements: !823)
!823 = !{!824, !825, !1890, !1892}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next_use", scope: !822, file: !3, line: 79, baseType: !821, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !822, file: !3, line: 82, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !827, line: 50, baseType: !828)
!827 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !561, line: 240, size: 384, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !829, file: !561, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !829, file: !561, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !829, file: !561, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !829, file: !561, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !829, file: !561, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !829, file: !561, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !829, file: !561, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !829, file: !561, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !829, file: !561, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !829, file: !561, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !829, file: !561, line: 321, baseType: !842, size: 320, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !561, line: 315, size: 320, elements: !843)
!843 = !{!844, !1825, !1827, !1888, !1889}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !842, file: !561, line: 316, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 64, elements: !861)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !561, line: 183, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !561, line: 166, size: 64, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !863, !864, !876, !879, !939, !1803, !1804, !1815, !1822}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !847, file: !561, line: 168, baseType: !784, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !847, file: !561, line: 169, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !847, file: !561, line: 170, baseType: !789, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !847, file: !561, line: 171, baseType: !826, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !847, file: !561, line: 172, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !827, line: 53, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !561, line: 359, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !856, file: !561, line: 360, baseType: !784, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !856, file: !561, line: 361, baseType: !860, size: 64, offset: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 64, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 1)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !847, file: !561, line: 173, baseType: !189, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !847, file: !561, line: 174, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !561, line: 133, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 115, size: 32, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !866, file: !561, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !866, file: !561, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !866, file: !561, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !866, file: !561, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !866, file: !561, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !866, file: !561, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !866, file: !561, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !866, file: !561, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !847, file: !561, line: 175, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !561, line: 175, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !847, file: !561, line: 176, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !882, line: 75, size: 256, elements: !883)
!882 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!883 = !{!884, !898, !899, !900}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !881, file: !882, line: 76, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !882, line: 68, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !882, line: 63, size: 320, elements: !888)
!888 = !{!889, !891, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !882, line: 64, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !887, file: !882, line: 65, baseType: !890, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !887, file: !882, line: 66, baseType: !7, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !887, file: !882, line: 67, baseType: !894, size: 128, offset: 192)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 128, elements: !896)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !882, line: 29, baseType: !800)
!896 = !{!897}
!897 = !DISubrange(count: 2)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !881, file: !882, line: 77, baseType: !885, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !881, file: !882, line: 78, baseType: !7, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !881, file: !882, line: 79, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !882, line: 49, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !882, line: 45, size: 832, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !903, file: !882, line: 46, baseType: !890, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !903, file: !882, line: 47, baseType: !880, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !903, file: !882, line: 48, baseType: !908, size: 704, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !909, line: 164, size: 704, elements: !910)
!909 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!910 = !{!911, !912, !922, !923, !924, !925, !926, !927, !931, !935, !936, !937, !938}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !908, file: !909, line: 166, baseType: !794, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !908, file: !909, line: 167, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !909, line: 157, size: 192, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !914, file: !909, line: 159, baseType: !786, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !914, file: !909, line: 160, baseType: !913, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !914, file: !909, line: 161, baseType: !919, size: 32, offset: 128)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 32, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 4)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !908, file: !909, line: 168, baseType: !786, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !908, file: !909, line: 169, baseType: !786, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !908, file: !909, line: 170, baseType: !786, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !908, file: !909, line: 171, baseType: !794, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !908, file: !909, line: 172, baseType: !784, size: 32, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !908, file: !909, line: 176, baseType: !928, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!913, !788, !794}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !908, file: !909, line: 177, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !788, !913}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !908, file: !909, line: 178, baseType: !788, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !908, file: !909, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !908, file: !909, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !908, file: !909, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !847, file: !561, line: 177, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !827, line: 56, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !943)
!943 = !{!944, !977, !983, !994, !1013, !1024, !1029, !1036, !1042, !1055, !1067, !1105, !1110, !1138, !1146, !1147, !1152, !1161, !1167, !1172, !1176, !1180, !1427, !1476, !1482, !1489, !1496, !1522, !1547, !1564, !1576, !1598, !1613, !1785}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !942, file: !334, line: 3372, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !945, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !945, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !945, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !945, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !945, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !945, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !945, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !945, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !945, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !945, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !945, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !945, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !945, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !945, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !945, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !945, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !945, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !945, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !945, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !945, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !945, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !945, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !945, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !945, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !945, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !945, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !945, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !945, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !945, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !945, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !942, file: !334, line: 3373, baseType: !978, size: 192)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !978, file: !334, line: 403, baseType: !945, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !978, file: !334, line: 404, baseType: !940, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !978, file: !334, line: 405, baseType: !940, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !942, file: !334, line: 3374, baseType: !984, size: 320)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !984, file: !334, line: 1385, baseType: !978, size: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !984, file: !334, line: 1386, baseType: !988, size: 128, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !989, line: 58, baseType: !990)
!989 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !989, line: 54, size: 128, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !990, file: !989, line: 56, baseType: !800, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !990, file: !989, line: 57, baseType: !794, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !942, file: !334, line: 3375, baseType: !995, size: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !995, file: !334, line: 1398, baseType: !978, size: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !995, file: !334, line: 1399, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1001, line: 52, size: 256, elements: !1002)
!1001 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1000, file: !1001, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1000, file: !1001, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1000, file: !1001, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1000, file: !1001, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1000, file: !1001, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1000, file: !1001, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1000, file: !1001, line: 62, baseType: !1010, size: 192, offset: 64)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 192, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 3)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !942, file: !334, line: 3376, baseType: !1014, size: 256)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !334, line: 1409, baseType: !978, size: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1014, file: !334, line: 1410, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1020, line: 27, size: 192, elements: !1021)
!1020 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1019, file: !1020, line: 29, baseType: !988, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1019, file: !1020, line: 30, baseType: !189, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !942, file: !334, line: 3377, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1025, file: !334, line: 1438, baseType: !978, size: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1025, file: !334, line: 1439, baseType: !940, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !942, file: !334, line: 3378, baseType: !1030, size: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1030, file: !334, line: 1419, baseType: !978, size: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1030, file: !334, line: 1420, baseType: !784, size: 32, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1030, file: !334, line: 1421, baseType: !1035, size: 8, offset: 224)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 8, elements: !861)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !942, file: !334, line: 3379, baseType: !1037, size: 320)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1037, file: !334, line: 1429, baseType: !978, size: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1037, file: !334, line: 1430, baseType: !940, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1037, file: !334, line: 1431, baseType: !940, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !942, file: !334, line: 3380, baseType: !1043, size: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1043, file: !334, line: 1461, baseType: !978, size: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1043, file: !334, line: 1462, baseType: !1047, size: 128, offset: 192)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1048, line: 31, size: 128, elements: !1049)
!1048 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1049 = !{!1050, !1053, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1047, file: !1048, line: 32, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1047, file: !1048, line: 33, baseType: !7, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1047, file: !1048, line: 34, baseType: !7, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !942, file: !334, line: 3381, baseType: !1056, size: 384)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1057)
!1057 = !{!1058, !1059, !1064, !1065, !1066}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1056, file: !334, line: 2508, baseType: !978, size: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1056, file: !334, line: 2509, baseType: !1060, size: 32, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1061, line: 58, baseType: !1062)
!1061 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1063, line: 44, baseType: !7)
!1063 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1056, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !334, line: 2511, baseType: !940, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1056, file: !334, line: 2512, baseType: !940, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !942, file: !334, line: 3382, baseType: !1068, size: 896)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1068, file: !334, line: 2653, baseType: !1056, size: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1068, file: !334, line: 2654, baseType: !940, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1068, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1068, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1068, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1068, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1068, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1068, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1068, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1068, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1068, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1068, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1068, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1068, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1068, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1068, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1068, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1068, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1068, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1068, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1068, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1068, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1068, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1068, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1068, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1068, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1068, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1068, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1068, file: !334, line: 2705, baseType: !940, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1068, file: !334, line: 2706, baseType: !940, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1068, file: !334, line: 2707, baseType: !940, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1068, file: !334, line: 2708, baseType: !940, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1068, file: !334, line: 2711, baseType: !1103, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !942, file: !334, line: 3383, baseType: !1106, size: 960)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !334, line: 2757, baseType: !1068, size: 896)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1106, file: !334, line: 2758, baseType: !826, size: 64, offset: 896)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !942, file: !334, line: 3384, baseType: !1111, size: 1472)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1112)
!1112 = !{!1113, !1134, !1135, !1136, !1137}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1111, file: !334, line: 3115, baseType: !1114, size: 1216)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !334, line: 2985, baseType: !1106, size: 960)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1114, file: !334, line: 2986, baseType: !940, size: 64, offset: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1114, file: !334, line: 2987, baseType: !940, size: 64, offset: 1024)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1114, file: !334, line: 2988, baseType: !940, size: 64, offset: 1088)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1114, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1114, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1114, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1114, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1114, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1114, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1114, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1114, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1114, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1114, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1114, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1114, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1114, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1114, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1111, file: !334, line: 3117, baseType: !940, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1111, file: !334, line: 3119, baseType: !940, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1111, file: !334, line: 3121, baseType: !940, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1111, file: !334, line: 3123, baseType: !940, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !942, file: !334, line: 3385, baseType: !1139, size: 1088)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !334, line: 2875, baseType: !1106, size: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1139, file: !334, line: 2876, baseType: !826, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1139, file: !334, line: 2877, baseType: !1144, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !334, line: 2856, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !942, file: !334, line: 3386, baseType: !1114, size: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !942, file: !334, line: 3387, baseType: !1148, size: 1280)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1148, file: !334, line: 3094, baseType: !1114, size: 1216)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1148, file: !334, line: 3095, baseType: !1144, size: 64, offset: 1216)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !942, file: !334, line: 3388, baseType: !1153, size: 1216)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1153, file: !334, line: 2825, baseType: !1068, size: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1153, file: !334, line: 2827, baseType: !940, size: 64, offset: 896)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1153, file: !334, line: 2828, baseType: !940, size: 64, offset: 960)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1153, file: !334, line: 2829, baseType: !940, size: 64, offset: 1024)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1153, file: !334, line: 2830, baseType: !940, size: 64, offset: 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1153, file: !334, line: 2831, baseType: !940, size: 64, offset: 1152)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !942, file: !334, line: 3389, baseType: !1162, size: 1024)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1162, file: !334, line: 2851, baseType: !1106, size: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1162, file: !334, line: 2852, baseType: !784, size: 32, offset: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1162, file: !334, line: 2853, baseType: !784, size: 32, offset: 992)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !942, file: !334, line: 3390, baseType: !1168, size: 1024)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1168, file: !334, line: 2858, baseType: !1106, size: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1168, file: !334, line: 2859, baseType: !1144, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !942, file: !334, line: 3391, baseType: !1173, size: 960)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1173, file: !334, line: 2863, baseType: !1106, size: 960)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !942, file: !334, line: 3392, baseType: !1177, size: 1472)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1177, file: !334, line: 3305, baseType: !1111, size: 1472)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !942, file: !334, line: 3393, baseType: !1181, size: 1792)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1182)
!1182 = !{!1183, !1184, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1181, file: !334, line: 3249, baseType: !1111, size: 1472)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1181, file: !334, line: 3251, baseType: !1185, size: 64, offset: 1472)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1187, line: 463, size: 1152, elements: !1188)
!1187 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1188 = !{!1189, !1192, !1296, !1297, !1300, !1303, !1351, !1352, !1353, !1354, !1355, !1379, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1186, file: !1187, line: 464, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1187, line: 464, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1186, file: !1187, line: 467, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1195)
!1195 = !{!1196, !1271, !1272, !1285, !1286, !1287, !1288, !1289, !1290, !1292, !1294, !1295}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1194, file: !318, line: 377, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !827, line: 111, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1200)
!1200 = !{!1201, !1236, !1237, !1238, !1241, !1245, !1246, !1247, !1265, !1266, !1267, !1268, !1269, !1270}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1199, file: !318, line: 219, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1204, file: !318, line: 151, baseType: !1207, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1208, file: !318, line: 150, baseType: !7, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1208, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1208, file: !318, line: 150, baseType: !1213, size: 64, offset: 64)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1214, size: 64, elements: !861)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !827, line: 108, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1216, file: !318, line: 124, baseType: !1198, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1216, file: !318, line: 125, baseType: !1198, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1216, file: !318, line: 131, baseType: !1221, size: 64, offset: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1222)
!1222 = !{!1223, !1227}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1221, file: !318, line: 129, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !827, line: 66, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !827, line: 65, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1221, file: !318, line: 130, baseType: !826, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1216, file: !318, line: 134, baseType: !788, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1216, file: !318, line: 137, baseType: !940, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1216, file: !318, line: 138, baseType: !1060, size: 32, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1216, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !318, line: 144, baseType: !784, size: 32, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1216, file: !318, line: 145, baseType: !784, size: 32, offset: 416)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !318, line: 146, baseType: !1235, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !794)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1199, file: !318, line: 220, baseType: !1202, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1199, file: !318, line: 223, baseType: !788, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1199, file: !318, line: 226, baseType: !1239, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1199, file: !318, line: 229, baseType: !1242, size: 128, offset: 256)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 128, elements: !896)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1199, file: !318, line: 232, baseType: !1198, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1199, file: !318, line: 233, baseType: !1198, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1199, file: !318, line: 238, baseType: !1248, size: 64, offset: 512)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1249)
!1249 = !{!1250, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1248, file: !318, line: 236, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1252, file: !318, line: 275, baseType: !1224, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1252, file: !318, line: 278, baseType: !1224, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1248, file: !318, line: 237, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1258, file: !318, line: 261, baseType: !826, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1258, file: !318, line: 262, baseType: !826, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1258, file: !318, line: 266, baseType: !826, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1258, file: !318, line: 267, baseType: !826, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1258, file: !318, line: 270, baseType: !784, size: 32, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1199, file: !318, line: 241, baseType: !1235, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1199, file: !318, line: 244, baseType: !784, size: 32, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1199, file: !318, line: 247, baseType: !784, size: 32, offset: 672)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1199, file: !318, line: 250, baseType: !784, size: 32, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1199, file: !318, line: 253, baseType: !784, size: 32, offset: 736)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1199, file: !318, line: 256, baseType: !784, size: 32, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1194, file: !318, line: 378, baseType: !1197, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1194, file: !318, line: 381, baseType: !1273, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !318, line: 282, baseType: !1278, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1279, file: !318, line: 281, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1279, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1279, file: !318, line: 281, baseType: !1284, size: 64, offset: 64)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 64, elements: !861)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1194, file: !318, line: 384, baseType: !784, size: 32, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1194, file: !318, line: 387, baseType: !784, size: 32, offset: 224)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1194, file: !318, line: 390, baseType: !784, size: 32, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1194, file: !318, line: 394, baseType: !1273, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1194, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1194, file: !318, line: 399, baseType: !1291, size: 64, offset: 416)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1194, file: !318, line: 402, baseType: !1293, size: 64, offset: 480)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !896)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1194, file: !318, line: 406, baseType: !784, size: 32, offset: 544)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1194, file: !318, line: 409, baseType: !784, size: 32, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1186, file: !1187, line: 470, baseType: !1225, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1186, file: !1187, line: 473, baseType: !1298, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1187, line: 166, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1186, file: !1187, line: 476, baseType: !1301, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1187, line: 476, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1186, file: !1187, line: 479, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1305, line: 144, baseType: !1306)
!1305 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1305, line: 100, size: 896, elements: !1308)
!1308 = !{!1309, !1317, !1322, !1324, !1326, !1328, !1329, !1330, !1331, !1332, !1337, !1339, !1340, !1345, !1350}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1307, file: !1305, line: 102, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1305, line: 52, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1305, line: 47, baseType: !7)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1307, file: !1305, line: 105, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1305, line: 59, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!784, !1315, !1315}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1307, file: !1305, line: 108, baseType: !1323, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1305, line: 63, baseType: !795)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1307, file: !1305, line: 111, baseType: !1325, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1307, file: !1305, line: 114, baseType: !1327, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !802, line: 46, baseType: !800)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1307, file: !1305, line: 117, baseType: !1327, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1307, file: !1305, line: 120, baseType: !1327, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1307, file: !1305, line: 124, baseType: !7, size: 32, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1307, file: !1305, line: 128, baseType: !7, size: 32, offset: 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1307, file: !1305, line: 131, baseType: !1333, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1305, line: 75, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!788, !1327, !1327}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1307, file: !1305, line: 132, baseType: !1338, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1305, line: 78, baseType: !795)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1307, file: !1305, line: 135, baseType: !788, size: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1307, file: !1305, line: 136, baseType: !1341, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1305, line: 82, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!788, !788, !1327, !1327}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1307, file: !1305, line: 137, baseType: !1346, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1305, line: 83, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !788, !788}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1307, file: !1305, line: 141, baseType: !7, size: 32, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1186, file: !1187, line: 484, baseType: !940, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1186, file: !1187, line: 488, baseType: !940, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1186, file: !1187, line: 493, baseType: !940, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1186, file: !1187, line: 496, baseType: !940, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1186, file: !1187, line: 501, baseType: !1356, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1358)
!1358 = !{!1359, !1362, !1363, !1364, !1365, !1367, !1368, !1373, !1374, !1375, !1376, !1377, !1378}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1357, file: !329, line: 2356, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1357, file: !329, line: 2357, baseType: !789, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1357, file: !329, line: 2358, baseType: !784, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1357, file: !329, line: 2359, baseType: !784, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1357, file: !329, line: 2360, baseType: !1366, size: 128, offset: 192)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 128, elements: !920)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1357, file: !329, line: 2364, baseType: !784, size: 32, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1357, file: !329, line: 2367, baseType: !1369, size: 128, offset: 384)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1369, file: !329, line: 2351, baseType: !826, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1369, file: !329, line: 2352, baseType: !794, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1357, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1357, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1357, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1357, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1357, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1357, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1186, file: !1187, line: 504, baseType: !1380, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1187, line: 504, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1186, file: !1187, line: 507, baseType: !1304, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1186, file: !1187, line: 510, baseType: !784, size: 32, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1186, file: !1187, line: 513, baseType: !784, size: 32, offset: 864)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1186, file: !1187, line: 516, baseType: !1060, size: 32, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1186, file: !1187, line: 519, baseType: !1060, size: 32, offset: 928)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1186, file: !1187, line: 522, baseType: !7, size: 32, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1186, file: !1187, line: 523, baseType: !7, size: 32, offset: 992)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1186, file: !1187, line: 528, baseType: !789, size: 64, offset: 1024)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1186, file: !1187, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1186, file: !1187, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1186, file: !1187, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1186, file: !1187, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1186, file: !1187, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1186, file: !1187, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1186, file: !1187, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1186, file: !1187, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1186, file: !1187, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1186, file: !1187, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1186, file: !1187, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1186, file: !1187, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1186, file: !1187, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1186, file: !1187, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1186, file: !1187, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1186, file: !1187, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1181, file: !334, line: 3254, baseType: !940, size: 64, offset: 1536)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1181, file: !334, line: 3257, baseType: !940, size: 64, offset: 1600)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1181, file: !334, line: 3258, baseType: !940, size: 64, offset: 1664)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1181, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1181, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1181, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1181, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1181, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1181, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1181, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1181, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1181, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1181, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1181, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1181, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1181, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1181, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1181, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1181, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1181, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1181, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !942, file: !334, line: 3394, baseType: !1428, size: 1344)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1455, !1456, !1457, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !334, line: 2280, baseType: !978, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1428, file: !334, line: 2281, baseType: !940, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1428, file: !334, line: 2282, baseType: !940, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1428, file: !334, line: 2283, baseType: !940, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1428, file: !334, line: 2284, baseType: !940, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1428, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1428, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1428, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1428, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1428, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1428, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1428, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1428, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1428, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1428, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1428, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1428, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1428, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1428, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1428, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1428, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1428, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1428, file: !334, line: 2306, baseType: !1453, size: 32, offset: 544)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1454, line: 31, baseType: !784)
!1454 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1428, file: !334, line: 2307, baseType: !940, size: 64, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1428, file: !334, line: 2308, baseType: !940, size: 64, offset: 640)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1428, file: !334, line: 2314, baseType: !1458, size: 64, offset: 704)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1458, file: !334, line: 2310, baseType: !784, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1458, file: !334, line: 2311, baseType: !789, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1458, file: !334, line: 2312, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1428, file: !334, line: 2315, baseType: !940, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1428, file: !334, line: 2316, baseType: !940, size: 64, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1428, file: !334, line: 2317, baseType: !940, size: 64, offset: 896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1428, file: !334, line: 2318, baseType: !940, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1428, file: !334, line: 2319, baseType: !940, size: 64, offset: 1024)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1428, file: !334, line: 2320, baseType: !940, size: 64, offset: 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1428, file: !334, line: 2321, baseType: !940, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1428, file: !334, line: 2322, baseType: !940, size: 64, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1428, file: !334, line: 2324, baseType: !1474, size: 64, offset: 1280)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !942, file: !334, line: 3395, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1477, file: !334, line: 1470, baseType: !978, size: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1477, file: !334, line: 1471, baseType: !940, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1477, file: !334, line: 1472, baseType: !940, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !942, file: !334, line: 3396, baseType: !1483, size: 320)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1484)
!1484 = !{!1485, !1486, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1483, file: !334, line: 1483, baseType: !978, size: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1483, file: !334, line: 1484, baseType: !784, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1483, file: !334, line: 1485, baseType: !1488, size: 64, offset: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 64, elements: !861)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !942, file: !334, line: 3397, baseType: !1490, size: 384)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1490, file: !334, line: 1830, baseType: !978, size: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1490, file: !334, line: 1831, baseType: !1060, size: 32, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1490, file: !334, line: 1832, baseType: !940, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1490, file: !334, line: 1835, baseType: !1488, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !942, file: !334, line: 3398, baseType: !1497, size: 704)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1505, !1506, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !334, line: 1899, baseType: !978, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1497, file: !334, line: 1902, baseType: !940, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1497, file: !334, line: 1905, baseType: !1502, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !827, line: 58, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !827, line: 57, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1497, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1497, file: !334, line: 1911, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !334, line: 1876, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1497, file: !334, line: 1914, baseType: !1510, size: 256, offset: 448)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1511)
!1511 = !{!1512, !1514, !1515, !1520}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1510, file: !334, line: 1884, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1510, file: !334, line: 1885, baseType: !1513, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1510, file: !334, line: 1891, baseType: !1516, size: 64, offset: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !334, line: 1891, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1516, file: !334, line: 1891, baseType: !1502, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1516, file: !334, line: 1891, baseType: !940, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1510, file: !334, line: 1892, baseType: !1521, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !942, file: !334, line: 3399, baseType: !1523, size: 704)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1542, !1543, !1544, !1545, !1546}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1523, file: !334, line: 2009, baseType: !978, size: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1523, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1523, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1523, file: !334, line: 2014, baseType: !1060, size: 32, offset: 224)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1523, file: !334, line: 2016, baseType: !940, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1523, file: !334, line: 2017, baseType: !1531, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1533, file: !334, line: 183, baseType: !1536, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1537, file: !334, line: 182, baseType: !7, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1537, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1537, file: !334, line: 182, baseType: !1488, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1523, file: !334, line: 2019, baseType: !940, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1523, file: !334, line: 2020, baseType: !940, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1523, file: !334, line: 2021, baseType: !940, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1523, file: !334, line: 2022, baseType: !940, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1523, file: !334, line: 2023, baseType: !940, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !942, file: !334, line: 3400, baseType: !1548, size: 832)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1548, file: !334, line: 2431, baseType: !978, size: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1548, file: !334, line: 2433, baseType: !940, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1548, file: !334, line: 2434, baseType: !940, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1548, file: !334, line: 2435, baseType: !940, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1548, file: !334, line: 2436, baseType: !940, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1548, file: !334, line: 2437, baseType: !1531, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1548, file: !334, line: 2438, baseType: !940, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1548, file: !334, line: 2440, baseType: !940, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1548, file: !334, line: 2441, baseType: !940, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1548, file: !334, line: 2443, baseType: !1560, size: 128, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1561, file: !334, line: 182, baseType: !1536, size: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !942, file: !334, line: 3401, baseType: !1565, size: 320)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1566)
!1566 = !{!1567, !1568, !1575}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1565, file: !334, line: 3329, baseType: !978, size: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1565, file: !334, line: 3330, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1571)
!1571 = !{!1572, !1573, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1570, file: !334, line: 3322, baseType: !1569, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1570, file: !334, line: 3323, baseType: !1569, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1570, file: !334, line: 3324, baseType: !940, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1565, file: !334, line: 3331, baseType: !1569, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !942, file: !334, line: 3402, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1577, file: !334, line: 1541, baseType: !978, size: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1577, file: !334, line: 1542, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1583, file: !334, line: 1538, baseType: !1586, size: 192)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1587, file: !334, line: 1537, baseType: !7, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1587, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1587, file: !334, line: 1537, baseType: !1592, size: 128, offset: 64)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1593, size: 128, elements: !861)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1594, file: !334, line: 1533, baseType: !940, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1594, file: !334, line: 1534, baseType: !940, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !942, file: !334, line: 3403, baseType: !1599, size: 512)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1610, !1611, !1612}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1599, file: !334, line: 1939, baseType: !978, size: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1599, file: !334, line: 1940, baseType: !1060, size: 32, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1599, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1599, file: !334, line: 1946, baseType: !1605, size: 32, offset: 256)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1605, file: !334, line: 1943, baseType: !352, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1605, file: !334, line: 1944, baseType: !359, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1605, file: !334, line: 1945, baseType: !366, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1599, file: !334, line: 1950, baseType: !1224, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1599, file: !334, line: 1951, baseType: !1224, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1599, file: !334, line: 1953, baseType: !1488, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !942, file: !334, line: 3404, baseType: !1614, size: 1664)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1614, file: !334, line: 3338, baseType: !978, size: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1614, file: !334, line: 3341, baseType: !1618, size: 1472, offset: 192)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1619, line: 410, size: 1472, elements: !1620)
!1619 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1618, file: !1619, line: 412, baseType: !784, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1618, file: !1619, line: 413, baseType: !784, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1618, file: !1619, line: 414, baseType: !784, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1618, file: !1619, line: 415, baseType: !784, size: 32, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1618, file: !1619, line: 416, baseType: !784, size: 32, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1618, file: !1619, line: 417, baseType: !784, size: 32, offset: 160)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1618, file: !1619, line: 418, baseType: !783, size: 8, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1618, file: !1619, line: 419, baseType: !783, size: 8, offset: 200)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1618, file: !1619, line: 420, baseType: !1630, size: 8, offset: 208)
!1630 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1618, file: !1619, line: 421, baseType: !1630, size: 8, offset: 216)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1618, file: !1619, line: 422, baseType: !1630, size: 8, offset: 224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1618, file: !1619, line: 423, baseType: !1630, size: 8, offset: 232)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1618, file: !1619, line: 424, baseType: !1630, size: 8, offset: 240)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1618, file: !1619, line: 425, baseType: !1630, size: 8, offset: 248)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1618, file: !1619, line: 426, baseType: !1630, size: 8, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1618, file: !1619, line: 427, baseType: !1630, size: 8, offset: 264)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1618, file: !1619, line: 428, baseType: !1630, size: 8, offset: 272)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1618, file: !1619, line: 429, baseType: !1630, size: 8, offset: 280)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1618, file: !1619, line: 430, baseType: !1630, size: 8, offset: 288)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1618, file: !1619, line: 431, baseType: !1630, size: 8, offset: 296)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1618, file: !1619, line: 432, baseType: !1630, size: 8, offset: 304)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1618, file: !1619, line: 433, baseType: !1630, size: 8, offset: 312)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1618, file: !1619, line: 434, baseType: !1630, size: 8, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1618, file: !1619, line: 435, baseType: !1630, size: 8, offset: 328)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1618, file: !1619, line: 436, baseType: !1630, size: 8, offset: 336)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1618, file: !1619, line: 437, baseType: !1630, size: 8, offset: 344)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1618, file: !1619, line: 438, baseType: !1630, size: 8, offset: 352)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1618, file: !1619, line: 439, baseType: !1630, size: 8, offset: 360)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1618, file: !1619, line: 440, baseType: !1630, size: 8, offset: 368)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1618, file: !1619, line: 441, baseType: !1630, size: 8, offset: 376)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1618, file: !1619, line: 442, baseType: !1630, size: 8, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1618, file: !1619, line: 443, baseType: !1630, size: 8, offset: 392)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1618, file: !1619, line: 444, baseType: !1630, size: 8, offset: 400)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1618, file: !1619, line: 445, baseType: !1630, size: 8, offset: 408)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1618, file: !1619, line: 446, baseType: !1630, size: 8, offset: 416)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1618, file: !1619, line: 447, baseType: !1630, size: 8, offset: 424)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1618, file: !1619, line: 448, baseType: !1630, size: 8, offset: 432)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1618, file: !1619, line: 449, baseType: !1630, size: 8, offset: 440)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1618, file: !1619, line: 450, baseType: !1630, size: 8, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1618, file: !1619, line: 451, baseType: !1630, size: 8, offset: 456)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1618, file: !1619, line: 452, baseType: !1630, size: 8, offset: 464)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1618, file: !1619, line: 453, baseType: !1630, size: 8, offset: 472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1618, file: !1619, line: 454, baseType: !1630, size: 8, offset: 480)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1618, file: !1619, line: 455, baseType: !1630, size: 8, offset: 488)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1618, file: !1619, line: 456, baseType: !1630, size: 8, offset: 496)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1618, file: !1619, line: 457, baseType: !1630, size: 8, offset: 504)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1618, file: !1619, line: 458, baseType: !1630, size: 8, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1618, file: !1619, line: 459, baseType: !1630, size: 8, offset: 520)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1618, file: !1619, line: 460, baseType: !1630, size: 8, offset: 528)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1618, file: !1619, line: 461, baseType: !1630, size: 8, offset: 536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1618, file: !1619, line: 462, baseType: !1630, size: 8, offset: 544)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1618, file: !1619, line: 463, baseType: !1630, size: 8, offset: 552)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1618, file: !1619, line: 464, baseType: !1630, size: 8, offset: 560)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1618, file: !1619, line: 465, baseType: !1630, size: 8, offset: 568)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1618, file: !1619, line: 466, baseType: !1630, size: 8, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1618, file: !1619, line: 467, baseType: !1630, size: 8, offset: 584)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1618, file: !1619, line: 468, baseType: !1630, size: 8, offset: 592)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1618, file: !1619, line: 469, baseType: !1630, size: 8, offset: 600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1618, file: !1619, line: 470, baseType: !1630, size: 8, offset: 608)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1618, file: !1619, line: 471, baseType: !1630, size: 8, offset: 616)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1618, file: !1619, line: 472, baseType: !1630, size: 8, offset: 624)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1618, file: !1619, line: 473, baseType: !1630, size: 8, offset: 632)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1618, file: !1619, line: 474, baseType: !1630, size: 8, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1618, file: !1619, line: 475, baseType: !1630, size: 8, offset: 648)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1618, file: !1619, line: 476, baseType: !1630, size: 8, offset: 656)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1618, file: !1619, line: 477, baseType: !1630, size: 8, offset: 664)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1618, file: !1619, line: 478, baseType: !1630, size: 8, offset: 672)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1618, file: !1619, line: 479, baseType: !1630, size: 8, offset: 680)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1618, file: !1619, line: 480, baseType: !1630, size: 8, offset: 688)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1618, file: !1619, line: 481, baseType: !1630, size: 8, offset: 696)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1618, file: !1619, line: 482, baseType: !1630, size: 8, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1618, file: !1619, line: 483, baseType: !1630, size: 8, offset: 712)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1618, file: !1619, line: 484, baseType: !1630, size: 8, offset: 720)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1618, file: !1619, line: 485, baseType: !1630, size: 8, offset: 728)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1618, file: !1619, line: 486, baseType: !1630, size: 8, offset: 736)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1618, file: !1619, line: 487, baseType: !1630, size: 8, offset: 744)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1618, file: !1619, line: 488, baseType: !1630, size: 8, offset: 752)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1618, file: !1619, line: 489, baseType: !1630, size: 8, offset: 760)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1618, file: !1619, line: 490, baseType: !1630, size: 8, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1618, file: !1619, line: 491, baseType: !1630, size: 8, offset: 776)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1618, file: !1619, line: 492, baseType: !1630, size: 8, offset: 784)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1618, file: !1619, line: 493, baseType: !1630, size: 8, offset: 792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1618, file: !1619, line: 494, baseType: !1630, size: 8, offset: 800)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1618, file: !1619, line: 495, baseType: !1630, size: 8, offset: 808)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1618, file: !1619, line: 496, baseType: !1630, size: 8, offset: 816)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1618, file: !1619, line: 497, baseType: !1630, size: 8, offset: 824)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1618, file: !1619, line: 498, baseType: !1630, size: 8, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1618, file: !1619, line: 499, baseType: !1630, size: 8, offset: 840)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1618, file: !1619, line: 500, baseType: !1630, size: 8, offset: 848)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1618, file: !1619, line: 501, baseType: !1630, size: 8, offset: 856)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1618, file: !1619, line: 502, baseType: !1630, size: 8, offset: 864)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1618, file: !1619, line: 503, baseType: !1630, size: 8, offset: 872)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1618, file: !1619, line: 504, baseType: !1630, size: 8, offset: 880)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1618, file: !1619, line: 505, baseType: !1630, size: 8, offset: 888)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1618, file: !1619, line: 506, baseType: !1630, size: 8, offset: 896)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1618, file: !1619, line: 507, baseType: !1630, size: 8, offset: 904)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1618, file: !1619, line: 508, baseType: !1630, size: 8, offset: 912)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1618, file: !1619, line: 509, baseType: !1630, size: 8, offset: 920)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1618, file: !1619, line: 510, baseType: !1630, size: 8, offset: 928)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1618, file: !1619, line: 511, baseType: !1630, size: 8, offset: 936)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1618, file: !1619, line: 512, baseType: !1630, size: 8, offset: 944)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1618, file: !1619, line: 513, baseType: !1630, size: 8, offset: 952)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1618, file: !1619, line: 514, baseType: !1630, size: 8, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1618, file: !1619, line: 515, baseType: !1630, size: 8, offset: 968)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1618, file: !1619, line: 516, baseType: !1630, size: 8, offset: 976)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1618, file: !1619, line: 517, baseType: !1630, size: 8, offset: 984)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1618, file: !1619, line: 518, baseType: !1630, size: 8, offset: 992)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1618, file: !1619, line: 519, baseType: !1630, size: 8, offset: 1000)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1618, file: !1619, line: 520, baseType: !1630, size: 8, offset: 1008)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1618, file: !1619, line: 521, baseType: !1630, size: 8, offset: 1016)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1618, file: !1619, line: 522, baseType: !1630, size: 8, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1618, file: !1619, line: 523, baseType: !1630, size: 8, offset: 1032)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1618, file: !1619, line: 524, baseType: !1630, size: 8, offset: 1040)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1618, file: !1619, line: 525, baseType: !1630, size: 8, offset: 1048)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1618, file: !1619, line: 526, baseType: !1630, size: 8, offset: 1056)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1618, file: !1619, line: 527, baseType: !1630, size: 8, offset: 1064)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1618, file: !1619, line: 528, baseType: !1630, size: 8, offset: 1072)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1618, file: !1619, line: 529, baseType: !1630, size: 8, offset: 1080)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1618, file: !1619, line: 530, baseType: !1630, size: 8, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1618, file: !1619, line: 531, baseType: !1630, size: 8, offset: 1096)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1618, file: !1619, line: 532, baseType: !1630, size: 8, offset: 1104)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1618, file: !1619, line: 533, baseType: !1630, size: 8, offset: 1112)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1618, file: !1619, line: 534, baseType: !1630, size: 8, offset: 1120)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1618, file: !1619, line: 535, baseType: !1630, size: 8, offset: 1128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1618, file: !1619, line: 536, baseType: !1630, size: 8, offset: 1136)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1618, file: !1619, line: 537, baseType: !1630, size: 8, offset: 1144)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1618, file: !1619, line: 538, baseType: !1630, size: 8, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1618, file: !1619, line: 539, baseType: !1630, size: 8, offset: 1160)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1618, file: !1619, line: 540, baseType: !1630, size: 8, offset: 1168)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1618, file: !1619, line: 541, baseType: !1630, size: 8, offset: 1176)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1618, file: !1619, line: 542, baseType: !1630, size: 8, offset: 1184)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1618, file: !1619, line: 543, baseType: !1630, size: 8, offset: 1192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1618, file: !1619, line: 544, baseType: !1630, size: 8, offset: 1200)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1618, file: !1619, line: 545, baseType: !1630, size: 8, offset: 1208)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1618, file: !1619, line: 546, baseType: !1630, size: 8, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1618, file: !1619, line: 547, baseType: !1630, size: 8, offset: 1224)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1618, file: !1619, line: 548, baseType: !1630, size: 8, offset: 1232)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1618, file: !1619, line: 549, baseType: !1630, size: 8, offset: 1240)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1618, file: !1619, line: 550, baseType: !1630, size: 8, offset: 1248)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1618, file: !1619, line: 551, baseType: !1630, size: 8, offset: 1256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1618, file: !1619, line: 552, baseType: !1630, size: 8, offset: 1264)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1618, file: !1619, line: 553, baseType: !1630, size: 8, offset: 1272)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1618, file: !1619, line: 554, baseType: !1630, size: 8, offset: 1280)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1618, file: !1619, line: 555, baseType: !1630, size: 8, offset: 1288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1618, file: !1619, line: 556, baseType: !1630, size: 8, offset: 1296)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1618, file: !1619, line: 557, baseType: !1630, size: 8, offset: 1304)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1618, file: !1619, line: 558, baseType: !1630, size: 8, offset: 1312)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1618, file: !1619, line: 559, baseType: !1630, size: 8, offset: 1320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1618, file: !1619, line: 560, baseType: !1630, size: 8, offset: 1328)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1618, file: !1619, line: 561, baseType: !1630, size: 8, offset: 1336)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1618, file: !1619, line: 562, baseType: !1630, size: 8, offset: 1344)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1618, file: !1619, line: 563, baseType: !1630, size: 8, offset: 1352)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1618, file: !1619, line: 564, baseType: !1630, size: 8, offset: 1360)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1618, file: !1619, line: 565, baseType: !1630, size: 8, offset: 1368)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1618, file: !1619, line: 566, baseType: !1630, size: 8, offset: 1376)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1618, file: !1619, line: 567, baseType: !1630, size: 8, offset: 1384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1618, file: !1619, line: 568, baseType: !1630, size: 8, offset: 1392)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1618, file: !1619, line: 569, baseType: !1630, size: 8, offset: 1400)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1618, file: !1619, line: 570, baseType: !1630, size: 8, offset: 1408)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1618, file: !1619, line: 571, baseType: !1630, size: 8, offset: 1416)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1618, file: !1619, line: 572, baseType: !1630, size: 8, offset: 1424)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1618, file: !1619, line: 573, baseType: !1630, size: 8, offset: 1432)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1618, file: !1619, line: 574, baseType: !1630, size: 8, offset: 1440)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !942, file: !334, line: 3405, baseType: !1786, size: 384)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1786, file: !334, line: 3353, baseType: !978, size: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1786, file: !334, line: 3356, baseType: !1790, size: 192, offset: 192)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1619, line: 578, size: 192, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1790, file: !1619, line: 580, baseType: !784, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1790, file: !1619, line: 581, baseType: !784, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1790, file: !1619, line: 582, baseType: !784, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1790, file: !1619, line: 583, baseType: !784, size: 32, offset: 96)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1790, file: !1619, line: 584, baseType: !783, size: 8, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1790, file: !1619, line: 585, baseType: !783, size: 8, offset: 136)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1790, file: !1619, line: 586, baseType: !783, size: 8, offset: 144)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1790, file: !1619, line: 587, baseType: !783, size: 8, offset: 152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1790, file: !1619, line: 588, baseType: !783, size: 8, offset: 160)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1790, file: !1619, line: 589, baseType: !783, size: 8, offset: 168)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1790, file: !1619, line: 590, baseType: !783, size: 8, offset: 176)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !847, file: !561, line: 178, baseType: !1198, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !847, file: !561, line: 179, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !561, line: 150, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !561, line: 142, size: 320, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1807, file: !561, line: 144, baseType: !940, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1807, file: !561, line: 145, baseType: !826, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1807, file: !561, line: 146, baseType: !826, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1807, file: !561, line: 147, baseType: !1453, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1807, file: !561, line: 148, baseType: !7, size: 32, offset: 224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1807, file: !561, line: 149, baseType: !783, size: 8, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !847, file: !561, line: 180, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !561, line: 162, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !561, line: 159, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1818, file: !561, line: 160, baseType: !940, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1818, file: !561, line: 161, baseType: !794, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !847, file: !561, line: 181, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !561, line: 181, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !842, file: !561, line: 317, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 64, elements: !861)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !842, file: !561, line: 318, baseType: !1828, size: 320)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !561, line: 188, size: 320, elements: !1829)
!1829 = !{!1830, !1832, !1887}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1828, file: !561, line: 190, baseType: !1831, size: 192)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 192, elements: !1011)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1828, file: !561, line: 193, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !561, line: 206, size: 320, elements: !1835)
!1835 = !{!1836, !1872, !1873, !1874, !1886}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1834, file: !561, line: 208, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !827, line: 62, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1840, line: 538, size: 256, elements: !1841)
!1840 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1841 = !{!1842, !1846, !1852, !1863}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1839, file: !1840, line: 539, baseType: !1843, size: 32)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1840, line: 482, size: 32, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1843, file: !1840, line: 484, baseType: !7, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1839, file: !1840, line: 540, baseType: !1847, size: 192)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1840, line: 488, size: 192, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1847, file: !1840, line: 489, baseType: !1843, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1847, file: !1840, line: 492, baseType: !789, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1847, file: !1840, line: 496, baseType: !940, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1839, file: !1840, line: 541, baseType: !1853, size: 256)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1840, line: 504, size: 256, elements: !1854)
!1854 = !{!1855, !1856, !1861, !1862}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1853, file: !1840, line: 505, baseType: !1843, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1853, file: !1840, line: 509, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1840, line: 501, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1315}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1853, file: !1840, line: 510, baseType: !1315, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1853, file: !1840, line: 513, baseType: !1837, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1839, file: !1840, line: 542, baseType: !1864, size: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1840, line: 530, size: 128, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1864, file: !1840, line: 531, baseType: !1843, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1864, file: !1840, line: 534, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1840, line: 525, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!783, !940, !789, !800, !800}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1834, file: !561, line: 211, baseType: !7, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1834, file: !561, line: 214, baseType: !794, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1834, file: !561, line: 224, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !561, line: 202, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !561, line: 202, size: 128, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1877, file: !561, line: 202, baseType: !1880, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !561, line: 200, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !561, line: 200, size: 128, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1881, file: !561, line: 200, baseType: !7, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1881, file: !561, line: 200, baseType: !7, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1881, file: !561, line: 200, baseType: !860, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1834, file: !561, line: 234, baseType: !1875, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1828, file: !561, line: 197, baseType: !794, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !842, file: !561, line: 319, baseType: !1000, size: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !842, file: !561, line: 320, baseType: !1019, size: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !822, file: !3, line: 84, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !822, file: !3, line: 86, baseType: !7, size: 16, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !817, file: !3, line: 54, baseType: !821, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !817, file: !3, line: 56, baseType: !7, size: 32, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nregs", scope: !817, file: !3, line: 56, baseType: !7, size: 32, offset: 224)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !817, file: !3, line: 59, baseType: !7, size: 32, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "conflicts", scope: !817, file: !3, line: 61, baseType: !1898, size: 256, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !882, line: 84, baseType: !881)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "hard_conflicts", scope: !817, file: !3, line: 63, baseType: !798, size: 64, offset: 576)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "terminated", scope: !817, file: !3, line: 66, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "need_caller_save_reg", scope: !817, file: !3, line: 68, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_rename", scope: !817, file: !3, line: 72, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1903 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_scan_bb_info", file: !1906, line: 771, size: 128, elements: !1907)
!1906 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1907 = !{!1908, !1969}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_defs", scope: !1905, file: !1906, line: 782, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !1906, line: 429, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !1906, line: 422, size: 704, elements: !1913)
!1913 = !{!1914, !1952, !1957, !1962}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1912, file: !1906, line: 424, baseType: !1915, size: 512)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !1906, line: 356, size: 512, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1927, !1947, !1948, !1949, !1950, !1951}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1915, file: !1906, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1915, file: !1906, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1915, file: !1906, line: 364, baseType: !784, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1915, file: !1906, line: 365, baseType: !826, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1915, file: !1906, line: 366, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !1906, line: 449, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1923, file: !1906, line: 451, baseType: !1910, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1923, file: !1906, line: 452, baseType: !1922, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !1915, file: !1906, line: 370, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !1906, line: 433, size: 384, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1946}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1929, file: !1906, line: 435, baseType: !826, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !1929, file: !1906, line: 436, baseType: !1909, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1929, file: !1906, line: 437, baseType: !1909, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !1929, file: !1906, line: 439, baseType: !1909, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !1929, file: !1906, line: 440, baseType: !1936, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !1906, line: 339, size: 192, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !1938, file: !1906, line: 341, baseType: !826, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !1906, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1906, line: 346, baseType: !784, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !1938, file: !1906, line: 347, baseType: !7, size: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !1938, file: !1906, line: 348, baseType: !7, size: 32, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !1938, file: !1906, line: 349, baseType: !7, size: 32, offset: 160)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1929, file: !1906, line: 444, baseType: !784, size: 32, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !1915, file: !1906, line: 374, baseType: !1911, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !1915, file: !1906, line: 375, baseType: !1911, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !1915, file: !1906, line: 376, baseType: !7, size: 32, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1915, file: !1906, line: 379, baseType: !784, size: 32, offset: 416)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !1915, file: !1906, line: 382, baseType: !7, size: 32, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !1912, file: !1906, line: 425, baseType: !1953, size: 576)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !1906, line: 398, size: 576, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1953, file: !1906, line: 400, baseType: !1915, size: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1953, file: !1906, line: 405, baseType: !1891, size: 64, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !1912, file: !1906, line: 426, baseType: !1958, size: 576)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !1906, line: 388, size: 576, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1958, file: !1906, line: 390, baseType: !1915, size: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1958, file: !1906, line: 394, baseType: !1197, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !1912, file: !1906, line: 427, baseType: !1963, size: 704)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !1906, line: 413, size: 704, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1963, file: !1906, line: 415, baseType: !1953, size: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1963, file: !1906, line: 416, baseType: !784, size: 32, offset: 576)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1963, file: !1906, line: 417, baseType: !784, size: 32, offset: 608)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1963, file: !1906, line: 418, baseType: !189, size: 32, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_uses", scope: !1905, file: !1906, line: 788, baseType: !1909, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1971 = !{!0, !1972, !1974, !1976, !1978, !1980, !1982, !1984, !1986, !1988, !1990}
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(name: "rename_obstack", scope: !2, file: !3, line: 112, type: !908, isLocal: true, isDefinition: true)
!1974 = !DIGlobalVariableExpression(var: !1975, expr: !DIExpression())
!1975 = distinct !DIGlobalVariable(name: "id_to_chain", scope: !2, file: !3, line: 127, type: !803, isLocal: true, isDefinition: true)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(name: "closed_chains", scope: !2, file: !3, line: 439, type: !816, isLocal: true, isDefinition: true)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "open_chains", scope: !2, file: !3, line: 438, type: !816, isLocal: true, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "fail_current_block", scope: !2, file: !3, line: 432, type: !783, isLocal: true, isDefinition: true)
!1982 = !DIGlobalVariableExpression(var: !1983, expr: !DIExpression())
!1983 = distinct !DIGlobalVariable(name: "current_id", scope: !2, file: !3, line: 435, type: !7, isLocal: true, isDefinition: true)
!1984 = !DIGlobalVariableExpression(var: !1985, expr: !DIExpression())
!1985 = distinct !DIGlobalVariable(name: "open_chains_set", scope: !2, file: !3, line: 443, type: !1898, isLocal: true, isDefinition: true)
!1986 = !DIGlobalVariableExpression(var: !1987, expr: !DIExpression())
!1987 = distinct !DIGlobalVariable(name: "live_in_chains", scope: !2, file: !3, line: 446, type: !798, isLocal: true, isDefinition: true)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(name: "live_hard_regs", scope: !2, file: !3, line: 450, type: !798, isLocal: true, isDefinition: true)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(name: "scan_actions_name", scope: !2, file: !3, line: 102, type: !1992, isLocal: true, isDefinition: true)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 384, elements: !1994)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!1994 = !{!1995}
!1995 = !DISubrange(count: 6)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1996, file: !6, line: 164, baseType: !1999, size: 640)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2007, !2011, !2013, !2014, !2015, !2017, !2018, !2019, !2020, !2021}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1999, file: !6, line: 117, baseType: !5, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1999, file: !6, line: 121, baseType: !789, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1999, file: !6, line: 125, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!783}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1999, file: !6, line: 130, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!7}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1999, file: !6, line: 133, baseType: !2012, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !6, line: 136, baseType: !2012, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1999, file: !6, line: 139, baseType: !784, size: 32, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1999, file: !6, line: 143, baseType: !2016, size: 32, offset: 416)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1999, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1999, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1999, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1999, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1999, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2022 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2023 = !{i32 2, !"Dwarf Version", i32 4}
!2024 = !{i32 2, !"Debug Info Version", i32 3}
!2025 = !{i32 1, !"wchar_size", i32 4}
!2026 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2027 = distinct !DISubprogram(name: "vprintf", scope: !2028, file: !2028, line: 39, type: !2029, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2028 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!784, !2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !789)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2033, file: !3, baseType: !7, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2033, file: !3, baseType: !7, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2033, file: !3, baseType: !788, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2033, file: !3, baseType: !788, size: 64, offset: 128)
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2027, file: !2028, line: 39, type: !2031)
!2041 = !DILocalVariable(name: "__arg", arg: 2, scope: !2027, file: !2028, line: 39, type: !2032)
!2042 = !DILocation(line: 0, scope: !2027)
!2043 = !DILocation(line: 41, column: 20, scope: !2027)
!2044 = !DILocation(line: 41, column: 10, scope: !2027)
!2045 = !DILocation(line: 41, column: 3, scope: !2027)
!2046 = distinct !DISubprogram(name: "getchar", scope: !2028, file: !2028, line: 47, type: !2047, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!784}
!2049 = !{}
!2050 = !DILocation(line: 49, column: 16, scope: !2046)
!2051 = !DILocation(line: 49, column: 10, scope: !2046)
!2052 = !DILocation(line: 49, column: 3, scope: !2046)
!2053 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2028, file: !2028, line: 56, type: !2054, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!784, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2058, line: 7, baseType: !2059)
!2058 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2060, line: 49, size: 1728, elements: !2061)
!2060 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2077, !2079, !2080, !2081, !2084, !2085, !2086, !2087, !2090, !2092, !2095, !2098, !2099, !2100, !2101, !2102}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2059, file: !2060, line: 51, baseType: !784, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2059, file: !2060, line: 54, baseType: !786, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2059, file: !2060, line: 55, baseType: !786, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2059, file: !2060, line: 56, baseType: !786, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2059, file: !2060, line: 57, baseType: !786, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2059, file: !2060, line: 58, baseType: !786, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2059, file: !2060, line: 59, baseType: !786, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2059, file: !2060, line: 60, baseType: !786, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2059, file: !2060, line: 61, baseType: !786, size: 64, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2059, file: !2060, line: 64, baseType: !786, size: 64, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2059, file: !2060, line: 65, baseType: !786, size: 64, offset: 640)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2059, file: !2060, line: 66, baseType: !786, size: 64, offset: 704)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2059, file: !2060, line: 68, baseType: !2075, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2060, line: 36, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2059, file: !2060, line: 70, baseType: !2078, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2059, file: !2060, line: 72, baseType: !784, size: 32, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2059, file: !2060, line: 73, baseType: !784, size: 32, offset: 928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2059, file: !2060, line: 74, baseType: !2082, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2083, line: 152, baseType: !794)
!2083 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2059, file: !2060, line: 77, baseType: !1903, size: 16, offset: 1024)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2059, file: !2060, line: 78, baseType: !1630, size: 8, offset: 1040)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2059, file: !2060, line: 79, baseType: !1035, size: 8, offset: 1048)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2059, file: !2060, line: 81, baseType: !2088, size: 64, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2060, line: 43, baseType: null)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2059, file: !2060, line: 89, baseType: !2091, size: 64, offset: 1152)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2083, line: 153, baseType: !794)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2059, file: !2060, line: 91, baseType: !2093, size: 64, offset: 1216)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2060, line: 37, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2059, file: !2060, line: 92, baseType: !2096, size: 64, offset: 1280)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2060, line: 38, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2059, file: !2060, line: 93, baseType: !2078, size: 64, offset: 1344)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2059, file: !2060, line: 94, baseType: !788, size: 64, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2059, file: !2060, line: 95, baseType: !1327, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2059, file: !2060, line: 96, baseType: !784, size: 32, offset: 1536)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2059, file: !2060, line: 98, baseType: !2103, size: 160, offset: 1568)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 160, elements: !2104)
!2104 = !{!2105}
!2105 = !DISubrange(count: 20)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__fp", arg: 1, scope: !2053, file: !2028, line: 56, type: !2056)
!2108 = !DILocation(line: 0, scope: !2053)
!2109 = !DILocation(line: 58, column: 10, scope: !2053)
!2110 = !DILocation(line: 58, column: 3, scope: !2053)
!2111 = distinct !DISubprogram(name: "getc_unlocked", scope: !2028, file: !2028, line: 66, type: !2054, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "__fp", arg: 1, scope: !2111, file: !2028, line: 66, type: !2056)
!2114 = !DILocation(line: 0, scope: !2111)
!2115 = !DILocation(line: 68, column: 10, scope: !2111)
!2116 = !DILocation(line: 68, column: 3, scope: !2111)
!2117 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2028, file: !2028, line: 73, type: !2047, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2118 = !DILocation(line: 75, column: 10, scope: !2117)
!2119 = !DILocation(line: 75, column: 3, scope: !2117)
!2120 = distinct !DISubprogram(name: "putchar", scope: !2028, file: !2028, line: 82, type: !2121, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!784, !784}
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "__c", arg: 1, scope: !2120, file: !2028, line: 82, type: !784)
!2125 = !DILocation(line: 0, scope: !2120)
!2126 = !DILocation(line: 84, column: 21, scope: !2120)
!2127 = !DILocation(line: 84, column: 10, scope: !2120)
!2128 = !DILocation(line: 84, column: 3, scope: !2120)
!2129 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2028, file: !2028, line: 91, type: !2130, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!784, !784, !2056}
!2132 = !{!2133, !2134}
!2133 = !DILocalVariable(name: "__c", arg: 1, scope: !2129, file: !2028, line: 91, type: !784)
!2134 = !DILocalVariable(name: "__stream", arg: 2, scope: !2129, file: !2028, line: 91, type: !2056)
!2135 = !DILocation(line: 0, scope: !2129)
!2136 = !DILocation(line: 93, column: 10, scope: !2129)
!2137 = !DILocation(line: 93, column: 3, scope: !2129)
!2138 = distinct !DISubprogram(name: "putc_unlocked", scope: !2028, file: !2028, line: 101, type: !2130, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2139 = !{!2140, !2141}
!2140 = !DILocalVariable(name: "__c", arg: 1, scope: !2138, file: !2028, line: 101, type: !784)
!2141 = !DILocalVariable(name: "__stream", arg: 2, scope: !2138, file: !2028, line: 101, type: !2056)
!2142 = !DILocation(line: 0, scope: !2138)
!2143 = !DILocation(line: 103, column: 10, scope: !2138)
!2144 = !DILocation(line: 103, column: 3, scope: !2138)
!2145 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2028, file: !2028, line: 108, type: !2121, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2146)
!2146 = !{!2147}
!2147 = !DILocalVariable(name: "__c", arg: 1, scope: !2145, file: !2028, line: 108, type: !784)
!2148 = !DILocation(line: 0, scope: !2145)
!2149 = !DILocation(line: 110, column: 10, scope: !2145)
!2150 = !DILocation(line: 110, column: 3, scope: !2145)
!2151 = distinct !DISubprogram(name: "getline", scope: !2028, file: !2028, line: 118, type: !2152, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2154, !785, !2155, !2056}
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2083, line: 193, baseType: !794)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!2156 = !{!2157, !2158, !2159}
!2157 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2151, file: !2028, line: 118, type: !785)
!2158 = !DILocalVariable(name: "__n", arg: 2, scope: !2151, file: !2028, line: 118, type: !2155)
!2159 = !DILocalVariable(name: "__stream", arg: 3, scope: !2151, file: !2028, line: 118, type: !2056)
!2160 = !DILocation(line: 0, scope: !2151)
!2161 = !DILocation(line: 120, column: 10, scope: !2151)
!2162 = !DILocation(line: 120, column: 3, scope: !2151)
!2163 = distinct !DISubprogram(name: "feof_unlocked", scope: !2028, file: !2028, line: 128, type: !2054, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__stream", arg: 1, scope: !2163, file: !2028, line: 128, type: !2056)
!2166 = !DILocation(line: 0, scope: !2163)
!2167 = !DILocation(line: 130, column: 10, scope: !2163)
!2168 = !DILocation(line: 130, column: 3, scope: !2163)
!2169 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2028, file: !2028, line: 135, type: !2054, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "__stream", arg: 1, scope: !2169, file: !2028, line: 135, type: !2056)
!2172 = !DILocation(line: 0, scope: !2169)
!2173 = !DILocation(line: 137, column: 10, scope: !2169)
!2174 = !DILocation(line: 137, column: 3, scope: !2169)
!2175 = distinct !DISubprogram(name: "tolower", scope: !2176, file: !2176, line: 207, type: !2121, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2177)
!2176 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2177 = !{!2178}
!2178 = !DILocalVariable(name: "__c", arg: 1, scope: !2175, file: !2176, line: 207, type: !784)
!2179 = !DILocation(line: 0, scope: !2175)
!2180 = !DILocation(line: 209, column: 22, scope: !2175)
!2181 = !DILocation(line: 209, column: 39, scope: !2175)
!2182 = !DILocation(line: 209, column: 38, scope: !2175)
!2183 = !DILocation(line: 209, column: 37, scope: !2175)
!2184 = !DILocation(line: 209, column: 10, scope: !2175)
!2185 = !DILocation(line: 209, column: 3, scope: !2175)
!2186 = distinct !DISubprogram(name: "toupper", scope: !2176, file: !2176, line: 213, type: !2121, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "__c", arg: 1, scope: !2186, file: !2176, line: 213, type: !784)
!2189 = !DILocation(line: 0, scope: !2186)
!2190 = !DILocation(line: 215, column: 22, scope: !2186)
!2191 = !DILocation(line: 215, column: 39, scope: !2186)
!2192 = !DILocation(line: 215, column: 38, scope: !2186)
!2193 = !DILocation(line: 215, column: 37, scope: !2186)
!2194 = !DILocation(line: 215, column: 10, scope: !2186)
!2195 = !DILocation(line: 215, column: 3, scope: !2186)
!2196 = distinct !DISubprogram(name: "atoi", scope: !2197, file: !2197, line: 361, type: !2198, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2197 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!784, !789}
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2196, file: !2197, line: 361, type: !789)
!2202 = !DILocation(line: 0, scope: !2196)
!2203 = !DILocation(line: 363, column: 16, scope: !2196)
!2204 = !DILocation(line: 363, column: 10, scope: !2196)
!2205 = !DILocation(line: 363, column: 3, scope: !2196)
!2206 = distinct !DISubprogram(name: "atol", scope: !2197, file: !2197, line: 366, type: !2207, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!794, !789}
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2206, file: !2197, line: 366, type: !789)
!2211 = !DILocation(line: 0, scope: !2206)
!2212 = !DILocation(line: 368, column: 10, scope: !2206)
!2213 = !DILocation(line: 368, column: 3, scope: !2206)
!2214 = distinct !DISubprogram(name: "atoll", scope: !2197, file: !2197, line: 373, type: !2215, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !789}
!2217 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2214, file: !2197, line: 373, type: !789)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 375, column: 10, scope: !2214)
!2222 = !DILocation(line: 375, column: 3, scope: !2214)
!2223 = distinct !DISubprogram(name: "bsearch", scope: !2224, file: !2224, line: 20, type: !2225, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!788, !1315, !1315, !1327, !1327, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2197, line: 808, baseType: !1319)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2229 = !DILocalVariable(name: "__key", arg: 1, scope: !2223, file: !2224, line: 20, type: !1315)
!2230 = !DILocalVariable(name: "__base", arg: 2, scope: !2223, file: !2224, line: 20, type: !1315)
!2231 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2223, file: !2224, line: 20, type: !1327)
!2232 = !DILocalVariable(name: "__size", arg: 4, scope: !2223, file: !2224, line: 20, type: !1327)
!2233 = !DILocalVariable(name: "__compar", arg: 5, scope: !2223, file: !2224, line: 21, type: !2227)
!2234 = !DILocalVariable(name: "__l", scope: !2223, file: !2224, line: 23, type: !1327)
!2235 = !DILocalVariable(name: "__u", scope: !2223, file: !2224, line: 23, type: !1327)
!2236 = !DILocalVariable(name: "__idx", scope: !2223, file: !2224, line: 23, type: !1327)
!2237 = !DILocalVariable(name: "__p", scope: !2223, file: !2224, line: 24, type: !1315)
!2238 = !DILocalVariable(name: "__comparison", scope: !2223, file: !2224, line: 25, type: !784)
!2239 = !DILocation(line: 0, scope: !2223)
!2240 = !DILocation(line: 29, column: 3, scope: !2223)
!2241 = !DILocation(line: 27, column: 7, scope: !2223)
!2242 = !DILocation(line: 29, column: 14, scope: !2223)
!2243 = !DILocation(line: 31, column: 20, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2223, file: !2224, line: 30, column: 5)
!2245 = !DILocation(line: 31, column: 27, scope: !2244)
!2246 = !DILocation(line: 32, column: 56, scope: !2244)
!2247 = !DILocation(line: 32, column: 47, scope: !2244)
!2248 = !DILocation(line: 33, column: 22, scope: !2244)
!2249 = !DILocation(line: 34, column: 24, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !2224, line: 34, column: 11)
!2251 = !DILocation(line: 34, column: 11, scope: !2244)
!2252 = !DILocation(line: 36, column: 29, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !2224, line: 36, column: 16)
!2254 = !DILocation(line: 36, column: 16, scope: !2250)
!2255 = !DILocation(line: 37, column: 14, scope: !2253)
!2256 = distinct !{!2256, !2240, !2257}
!2257 = !DILocation(line: 40, column: 5, scope: !2223)
!2258 = !DILocation(line: 43, column: 1, scope: !2223)
!2259 = distinct !DISubprogram(name: "atof", scope: !2260, file: !2260, line: 25, type: !2261, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2263, !789}
!2263 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2259, file: !2260, line: 25, type: !789)
!2266 = !DILocation(line: 0, scope: !2259)
!2267 = !DILocation(line: 27, column: 10, scope: !2259)
!2268 = !DILocation(line: 27, column: 3, scope: !2259)
!2269 = distinct !DISubprogram(name: "strtoimax", scope: !2270, file: !2270, line: 324, type: !2271, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2270 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2273, !2031, !2276, !784}
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2274, line: 101, baseType: !2275)
!2274 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2083, line: 72, baseType: !794)
!2276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !785)
!2277 = !{!2278, !2279, !2280}
!2278 = !DILocalVariable(name: "nptr", arg: 1, scope: !2269, file: !2270, line: 324, type: !2031)
!2279 = !DILocalVariable(name: "endptr", arg: 2, scope: !2269, file: !2270, line: 324, type: !2276)
!2280 = !DILocalVariable(name: "base", arg: 3, scope: !2269, file: !2270, line: 324, type: !784)
!2281 = !DILocation(line: 0, scope: !2269)
!2282 = !DILocation(line: 327, column: 10, scope: !2269)
!2283 = !DILocation(line: 327, column: 3, scope: !2269)
!2284 = distinct !DISubprogram(name: "strtoumax", scope: !2270, file: !2270, line: 336, type: !2285, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!2287, !2031, !2276, !784}
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2274, line: 102, baseType: !2288)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2083, line: 73, baseType: !800)
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "nptr", arg: 1, scope: !2284, file: !2270, line: 336, type: !2031)
!2291 = !DILocalVariable(name: "endptr", arg: 2, scope: !2284, file: !2270, line: 336, type: !2276)
!2292 = !DILocalVariable(name: "base", arg: 3, scope: !2284, file: !2270, line: 336, type: !784)
!2293 = !DILocation(line: 0, scope: !2284)
!2294 = !DILocation(line: 339, column: 10, scope: !2284)
!2295 = !DILocation(line: 339, column: 3, scope: !2284)
!2296 = distinct !DISubprogram(name: "wcstoimax", scope: !2270, file: !2270, line: 348, type: !2297, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!2273, !2299, !2303, !784}
!2299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2270, line: 34, baseType: !784)
!2303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2304)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "nptr", arg: 1, scope: !2296, file: !2270, line: 348, type: !2299)
!2308 = !DILocalVariable(name: "endptr", arg: 2, scope: !2296, file: !2270, line: 348, type: !2303)
!2309 = !DILocalVariable(name: "base", arg: 3, scope: !2296, file: !2270, line: 348, type: !784)
!2310 = !DILocation(line: 0, scope: !2296)
!2311 = !DILocation(line: 351, column: 10, scope: !2296)
!2312 = !DILocation(line: 351, column: 3, scope: !2296)
!2313 = distinct !DISubprogram(name: "wcstoumax", scope: !2270, file: !2270, line: 362, type: !2314, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2287, !2299, !2303, !784}
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "nptr", arg: 1, scope: !2313, file: !2270, line: 362, type: !2299)
!2318 = !DILocalVariable(name: "endptr", arg: 2, scope: !2313, file: !2270, line: 362, type: !2303)
!2319 = !DILocalVariable(name: "base", arg: 3, scope: !2313, file: !2270, line: 362, type: !784)
!2320 = !DILocation(line: 0, scope: !2313)
!2321 = !DILocation(line: 365, column: 10, scope: !2313)
!2322 = !DILocation(line: 365, column: 3, scope: !2313)
!2323 = distinct !DISubprogram(name: "stat", scope: !2324, file: !2324, line: 453, type: !2325, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!784, !789, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2329, line: 46, size: 1152, elements: !2330)
!2329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2330 = !{!2331, !2333, !2335, !2337, !2339, !2341, !2343, !2344, !2345, !2346, !2348, !2350, !2358, !2359, !2360}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2328, file: !2329, line: 48, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2083, line: 145, baseType: !800)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2328, file: !2329, line: 53, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2083, line: 148, baseType: !800)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2328, file: !2329, line: 61, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2083, line: 151, baseType: !800)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2328, file: !2329, line: 62, baseType: !2338, size: 32, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2083, line: 150, baseType: !7)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2328, file: !2329, line: 64, baseType: !2340, size: 32, offset: 224)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2083, line: 146, baseType: !7)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2328, file: !2329, line: 65, baseType: !2342, size: 32, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2083, line: 147, baseType: !7)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2328, file: !2329, line: 67, baseType: !784, size: 32, offset: 288)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2328, file: !2329, line: 69, baseType: !2332, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2328, file: !2329, line: 74, baseType: !2082, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2328, file: !2329, line: 78, baseType: !2347, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2083, line: 174, baseType: !794)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2328, file: !2329, line: 80, baseType: !2349, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2083, line: 179, baseType: !794)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2328, file: !2329, line: 91, baseType: !2351, size: 128, offset: 576)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2352, line: 10, size: 128, elements: !2353)
!2352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2353 = !{!2354, !2356}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2351, file: !2352, line: 12, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2083, line: 160, baseType: !794)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2351, file: !2352, line: 16, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2083, line: 196, baseType: !794)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2328, file: !2329, line: 92, baseType: !2351, size: 128, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2328, file: !2329, line: 93, baseType: !2351, size: 128, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2328, file: !2329, line: 106, baseType: !2361, size: 192, offset: 960)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, size: 192, elements: !1011)
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "__path", arg: 1, scope: !2323, file: !2324, line: 453, type: !789)
!2364 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2323, file: !2324, line: 453, type: !2327)
!2365 = !DILocation(line: 0, scope: !2323)
!2366 = !DILocation(line: 455, column: 10, scope: !2323)
!2367 = !DILocation(line: 455, column: 3, scope: !2323)
!2368 = distinct !DISubprogram(name: "lstat", scope: !2324, file: !2324, line: 460, type: !2325, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "__path", arg: 1, scope: !2368, file: !2324, line: 460, type: !789)
!2371 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2368, file: !2324, line: 460, type: !2327)
!2372 = !DILocation(line: 0, scope: !2368)
!2373 = !DILocation(line: 462, column: 10, scope: !2368)
!2374 = !DILocation(line: 462, column: 3, scope: !2368)
!2375 = distinct !DISubprogram(name: "fstat", scope: !2324, file: !2324, line: 467, type: !2376, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!784, !784, !2327}
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "__fd", arg: 1, scope: !2375, file: !2324, line: 467, type: !784)
!2380 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2375, file: !2324, line: 467, type: !2327)
!2381 = !DILocation(line: 0, scope: !2375)
!2382 = !DILocation(line: 469, column: 10, scope: !2375)
!2383 = !DILocation(line: 469, column: 3, scope: !2375)
!2384 = distinct !DISubprogram(name: "fstatat", scope: !2324, file: !2324, line: 474, type: !2385, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!784, !784, !789, !2327, !784}
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "__fd", arg: 1, scope: !2384, file: !2324, line: 474, type: !784)
!2389 = !DILocalVariable(name: "__filename", arg: 2, scope: !2384, file: !2324, line: 474, type: !789)
!2390 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2384, file: !2324, line: 474, type: !2327)
!2391 = !DILocalVariable(name: "__flag", arg: 4, scope: !2384, file: !2324, line: 474, type: !784)
!2392 = !DILocation(line: 0, scope: !2384)
!2393 = !DILocation(line: 477, column: 10, scope: !2384)
!2394 = !DILocation(line: 477, column: 3, scope: !2384)
!2395 = distinct !DISubprogram(name: "mknod", scope: !2324, file: !2324, line: 483, type: !2396, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!784, !789, !2338, !2332}
!2398 = !{!2399, !2400, !2401}
!2399 = !DILocalVariable(name: "__path", arg: 1, scope: !2395, file: !2324, line: 483, type: !789)
!2400 = !DILocalVariable(name: "__mode", arg: 2, scope: !2395, file: !2324, line: 483, type: !2338)
!2401 = !DILocalVariable(name: "__dev", arg: 3, scope: !2395, file: !2324, line: 483, type: !2332)
!2402 = !DILocation(line: 0, scope: !2395)
!2403 = !DILocation(line: 485, column: 10, scope: !2395)
!2404 = !DILocation(line: 485, column: 3, scope: !2395)
!2405 = distinct !DISubprogram(name: "mknodat", scope: !2324, file: !2324, line: 491, type: !2406, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!784, !784, !789, !2338, !2332}
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DILocalVariable(name: "__fd", arg: 1, scope: !2405, file: !2324, line: 491, type: !784)
!2410 = !DILocalVariable(name: "__path", arg: 2, scope: !2405, file: !2324, line: 491, type: !789)
!2411 = !DILocalVariable(name: "__mode", arg: 3, scope: !2405, file: !2324, line: 491, type: !2338)
!2412 = !DILocalVariable(name: "__dev", arg: 4, scope: !2405, file: !2324, line: 491, type: !2332)
!2413 = !DILocation(line: 0, scope: !2405)
!2414 = !DILocation(line: 494, column: 10, scope: !2405)
!2415 = !DILocation(line: 494, column: 3, scope: !2405)
!2416 = distinct !DISubprogram(name: "stat64", scope: !2324, file: !2324, line: 502, type: !2417, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!784, !789, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2329, line: 119, size: 1152, elements: !2421)
!2421 = !{!2422, !2423, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2435, !2436, !2437, !2438}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2420, file: !2329, line: 121, baseType: !2332, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2420, file: !2329, line: 123, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2083, line: 149, baseType: !800)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2420, file: !2329, line: 124, baseType: !2336, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2420, file: !2329, line: 125, baseType: !2338, size: 32, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2420, file: !2329, line: 132, baseType: !2340, size: 32, offset: 224)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2420, file: !2329, line: 133, baseType: !2342, size: 32, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2420, file: !2329, line: 135, baseType: !784, size: 32, offset: 288)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2420, file: !2329, line: 136, baseType: !2332, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2420, file: !2329, line: 137, baseType: !2082, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2420, file: !2329, line: 143, baseType: !2347, size: 64, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2420, file: !2329, line: 144, baseType: !2434, size: 64, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2083, line: 180, baseType: !794)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2420, file: !2329, line: 152, baseType: !2351, size: 128, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2420, file: !2329, line: 153, baseType: !2351, size: 128, offset: 704)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2420, file: !2329, line: 154, baseType: !2351, size: 128, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2420, file: !2329, line: 164, baseType: !2361, size: 192, offset: 960)
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "__path", arg: 1, scope: !2416, file: !2324, line: 502, type: !789)
!2441 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2416, file: !2324, line: 502, type: !2419)
!2442 = !DILocation(line: 0, scope: !2416)
!2443 = !DILocation(line: 504, column: 10, scope: !2416)
!2444 = !DILocation(line: 504, column: 3, scope: !2416)
!2445 = distinct !DISubprogram(name: "lstat64", scope: !2324, file: !2324, line: 509, type: !2417, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "__path", arg: 1, scope: !2445, file: !2324, line: 509, type: !789)
!2448 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2445, file: !2324, line: 509, type: !2419)
!2449 = !DILocation(line: 0, scope: !2445)
!2450 = !DILocation(line: 511, column: 10, scope: !2445)
!2451 = !DILocation(line: 511, column: 3, scope: !2445)
!2452 = distinct !DISubprogram(name: "fstat64", scope: !2324, file: !2324, line: 516, type: !2453, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!784, !784, !2419}
!2455 = !{!2456, !2457}
!2456 = !DILocalVariable(name: "__fd", arg: 1, scope: !2452, file: !2324, line: 516, type: !784)
!2457 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2452, file: !2324, line: 516, type: !2419)
!2458 = !DILocation(line: 0, scope: !2452)
!2459 = !DILocation(line: 518, column: 10, scope: !2452)
!2460 = !DILocation(line: 518, column: 3, scope: !2452)
!2461 = distinct !DISubprogram(name: "fstatat64", scope: !2324, file: !2324, line: 523, type: !2462, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!784, !784, !789, !2419, !784}
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DILocalVariable(name: "__fd", arg: 1, scope: !2461, file: !2324, line: 523, type: !784)
!2466 = !DILocalVariable(name: "__filename", arg: 2, scope: !2461, file: !2324, line: 523, type: !789)
!2467 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2461, file: !2324, line: 523, type: !2419)
!2468 = !DILocalVariable(name: "__flag", arg: 4, scope: !2461, file: !2324, line: 523, type: !784)
!2469 = !DILocation(line: 0, scope: !2461)
!2470 = !DILocation(line: 526, column: 10, scope: !2461)
!2471 = !DILocation(line: 526, column: 3, scope: !2461)
!2472 = distinct !DISubprogram(name: "gate_handle_regrename", scope: !3, file: !3, line: 1360, type: !2005, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2473 = !DILocation(line: 1362, column: 11, scope: !2472)
!2474 = !DILocation(line: 1362, column: 20, scope: !2472)
!2475 = !DILocation(line: 1362, column: 24, scope: !2472)
!2476 = !DILocation(line: 1362, column: 10, scope: !2472)
!2477 = !DILocation(line: 1362, column: 3, scope: !2472)
!2478 = distinct !DISubprogram(name: "regrename_optimize", scope: !3, file: !3, line: 161, type: !2009, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2479)
!2479 = !{!2480, !2484, !2485, !2486, !2487, !2491, !2492, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2506}
!2480 = !DILocalVariable(name: "tick", scope: !2478, file: !3, line: 163, type: !2481)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 1696, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 53)
!2484 = !DILocalVariable(name: "this_tick", scope: !2478, file: !3, line: 164, type: !784)
!2485 = !DILocalVariable(name: "bb", scope: !2478, file: !3, line: 165, type: !1197)
!2486 = !DILocalVariable(name: "first_obj", scope: !2478, file: !3, line: 166, type: !786)
!2487 = !DILocalVariable(name: "all_chains", scope: !2488, file: !3, line: 180, type: !816)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 179, column: 5)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 178, column: 3)
!2490 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 178, column: 3)
!2491 = !DILocalVariable(name: "unavailable", scope: !2488, file: !3, line: 181, type: !798)
!2492 = !DILocalVariable(name: "new_reg", scope: !2493, file: !3, line: 211, type: !784)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 210, column: 2)
!2494 = !DILocalVariable(name: "best_new_reg", scope: !2493, file: !3, line: 211, type: !784)
!2495 = !DILocalVariable(name: "best_nregs", scope: !2493, file: !3, line: 211, type: !784)
!2496 = !DILocalVariable(name: "n_uses", scope: !2493, file: !3, line: 212, type: !784)
!2497 = !DILocalVariable(name: "this_head", scope: !2493, file: !3, line: 213, type: !816)
!2498 = !DILocalVariable(name: "tmp", scope: !2493, file: !3, line: 214, type: !821)
!2499 = !DILocalVariable(name: "this_unavailable", scope: !2493, file: !3, line: 215, type: !798)
!2500 = !DILocalVariable(name: "reg", scope: !2493, file: !3, line: 216, type: !784)
!2501 = !DILocalVariable(name: "i", scope: !2493, file: !3, line: 217, type: !784)
!2502 = !DILocalVariable(name: "mode", scope: !2503, file: !3, line: 271, type: !189)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 270, column: 6)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 269, column: 4)
!2505 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 269, column: 4)
!2506 = !DILocalVariable(name: "nregs", scope: !2503, file: !3, line: 272, type: !784)
!2507 = !DILocation(line: 163, column: 3, scope: !2478)
!2508 = !DILocation(line: 163, column: 7, scope: !2478)
!2509 = !DILocation(line: 0, scope: !2478)
!2510 = !DILocation(line: 168, column: 3, scope: !2478)
!2511 = !DILocation(line: 169, column: 3, scope: !2478)
!2512 = !DILocation(line: 170, column: 3, scope: !2478)
!2513 = !DILocation(line: 171, column: 3, scope: !2478)
!2514 = !DILocation(line: 173, column: 3, scope: !2478)
!2515 = !DILocation(line: 175, column: 3, scope: !2478)
!2516 = !DILocation(line: 176, column: 15, scope: !2478)
!2517 = !DILocation(line: 178, column: 3, scope: !2490)
!2518 = !DILocation(line: 0, scope: !2488)
!2519 = !DILocation(line: 0, scope: !2493)
!2520 = !DILocation(line: 178, column: 3, scope: !2489)
!2521 = !DILocation(line: 164, column: 7, scope: !2478)
!2522 = !DILocation(line: 0, scope: !2490)
!2523 = !DILocation(line: 181, column: 7, scope: !2488)
!2524 = !DILocation(line: 187, column: 21, scope: !2488)
!2525 = !DILocation(line: 187, column: 19, scope: !2488)
!2526 = !DILocation(line: 189, column: 7, scope: !2488)
!2527 = !DILocation(line: 191, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 191, column: 11)
!2529 = !DILocation(line: 191, column: 11, scope: !2488)
!2530 = !DILocation(line: 192, column: 49, scope: !2528)
!2531 = !DILocation(line: 192, column: 2, scope: !2528)
!2532 = !DILocation(line: 194, column: 20, scope: !2488)
!2533 = !DILocation(line: 196, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 196, column: 11)
!2535 = !DILocation(line: 196, column: 11, scope: !2488)
!2536 = !DILocation(line: 197, column: 2, scope: !2534)
!2537 = !DILocation(line: 199, column: 7, scope: !2488)
!2538 = !DILocation(line: 201, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 201, column: 11)
!2540 = !DILocation(line: 201, column: 11, scope: !2488)
!2541 = !DILocation(line: 203, column: 4, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 202, column: 2)
!2543 = !DILocation(line: 205, column: 4, scope: !2542)
!2544 = !DILocation(line: 207, column: 2, scope: !2542)
!2545 = !DILocation(line: 209, column: 7, scope: !2488)
!2546 = !DILocation(line: 215, column: 4, scope: !2493)
!2547 = !DILocation(line: 216, column: 25, scope: !2493)
!2548 = !DILocation(line: 219, column: 28, scope: !2493)
!2549 = !DILocation(line: 221, column: 19, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 221, column: 8)
!2551 = !DILocation(line: 221, column: 8, scope: !2550)
!2552 = !DILocation(line: 221, column: 8, scope: !2493)
!2553 = distinct !{!2553, !2545, !2554}
!2554 = !DILocation(line: 340, column: 2, scope: !2488)
!2555 = !DILocation(line: 225, column: 28, scope: !2493)
!2556 = !DILocation(line: 236, column: 8, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 236, column: 8)
!2558 = !DILocation(line: 236, column: 24, scope: !2557)
!2559 = !DILocation(line: 236, column: 27, scope: !2557)
!2560 = !DILocation(line: 238, column: 8, scope: !2557)
!2561 = !DILocation(line: 238, column: 12, scope: !2557)
!2562 = !DILocation(line: 238, column: 40, scope: !2557)
!2563 = !DILocation(line: 238, column: 33, scope: !2557)
!2564 = !DILocation(line: 245, column: 4, scope: !2493)
!2565 = !DILocation(line: 250, column: 26, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 250, column: 4)
!2567 = !DILocation(line: 250, column: 9, scope: !2566)
!2568 = !DILocation(line: 249, column: 11, scope: !2493)
!2569 = !DILocation(line: 0, scope: !2566)
!2570 = !DILocation(line: 250, column: 4, scope: !2566)
!2571 = !DILocation(line: 252, column: 12, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 252, column: 12)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 251, column: 6)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 250, column: 4)
!2575 = !DILocation(line: 252, column: 12, scope: !2573)
!2576 = !DILocation(line: 254, column: 14, scope: !2573)
!2577 = !DILocation(line: 255, column: 8, scope: !2573)
!2578 = !DILocation(line: 257, column: 6, scope: !2573)
!2579 = !DILocation(line: 250, column: 49, scope: !2574)
!2580 = !DILocation(line: 250, column: 4, scope: !2574)
!2581 = distinct !{!2581, !2570, !2582}
!2582 = !DILocation(line: 257, column: 6, scope: !2566)
!2583 = !DILocation(line: 259, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 259, column: 8)
!2585 = !DILocation(line: 259, column: 8, scope: !2493)
!2586 = !DILocation(line: 262, column: 19, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 262, column: 8)
!2588 = !DILocation(line: 262, column: 8, scope: !2587)
!2589 = !DILocation(line: 262, column: 8, scope: !2493)
!2590 = !DILocation(line: 263, column: 6, scope: !2587)
!2591 = !DILocation(line: 265, column: 4, scope: !2493)
!2592 = !DILocation(line: 269, column: 9, scope: !2505)
!2593 = !DILocation(line: 225, column: 15, scope: !2493)
!2594 = !DILocation(line: 224, column: 17, scope: !2493)
!2595 = !DILocation(line: 269, column: 30, scope: !2504)
!2596 = !DILocation(line: 269, column: 4, scope: !2505)
!2597 = !DILocation(line: 271, column: 33, scope: !2503)
!2598 = !DILocation(line: 0, scope: !2503)
!2599 = !DILocation(line: 272, column: 20, scope: !2503)
!2600 = !DILocation(line: 274, column: 13, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 274, column: 8)
!2602 = !DILocation(line: 0, scope: !2601)
!2603 = !DILocation(line: 274, column: 30, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 274, column: 8)
!2605 = !DILocation(line: 274, column: 8, scope: !2601)
!2606 = !DILocation(line: 275, column: 14, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 275, column: 14)
!2608 = !DILocation(line: 276, column: 7, scope: !2607)
!2609 = !DILocation(line: 276, column: 10, scope: !2607)
!2610 = !DILocation(line: 277, column: 7, scope: !2607)
!2611 = !DILocation(line: 277, column: 10, scope: !2607)
!2612 = !DILocation(line: 279, column: 7, scope: !2607)
!2613 = !DILocation(line: 279, column: 13, scope: !2607)
!2614 = !DILocation(line: 280, column: 4, scope: !2607)
!2615 = !DILocation(line: 280, column: 9, scope: !2607)
!2616 = !DILocation(line: 288, column: 7, scope: !2607)
!2617 = !DILocation(line: 288, column: 12, scope: !2607)
!2618 = !DILocation(line: 275, column: 14, scope: !2604)
!2619 = !DILocation(line: 274, column: 8, scope: !2604)
!2620 = distinct !{!2620, !2605, !2621}
!2621 = !DILocation(line: 291, column: 5, scope: !2601)
!2622 = !DILocation(line: 292, column: 12, scope: !2503)
!2623 = !DILocation(line: 297, column: 13, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 297, column: 8)
!2625 = !DILocation(line: 0, scope: !2624)
!2626 = !DILocation(line: 297, column: 8, scope: !2624)
!2627 = !DILocation(line: 298, column: 10, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 298, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 297, column: 8)
!2630 = !DILocation(line: 299, column: 8, scope: !2628)
!2631 = !DILocation(line: 299, column: 13, scope: !2628)
!2632 = !DILocation(line: 300, column: 7, scope: !2628)
!2633 = !DILocation(line: 297, column: 53, scope: !2629)
!2634 = !DILocation(line: 297, column: 8, scope: !2629)
!2635 = distinct !{!2635, !2626, !2636}
!2636 = !DILocation(line: 305, column: 5, scope: !2624)
!2637 = !DILocation(line: 306, column: 12, scope: !2503)
!2638 = !DILocation(line: 308, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 308, column: 9)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 307, column: 3)
!2641 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 306, column: 12)
!2642 = !DILocation(line: 308, column: 30, scope: !2639)
!2643 = !DILocation(line: 308, column: 28, scope: !2639)
!2644 = !DILocation(line: 308, column: 9, scope: !2640)
!2645 = !DILocation(line: 313, column: 3, scope: !2640)
!2646 = !DILocation(line: 269, column: 62, scope: !2504)
!2647 = !DILocation(line: 269, column: 4, scope: !2504)
!2648 = distinct !{!2648, !2596, !2649}
!2649 = !DILocation(line: 314, column: 6, scope: !2505)
!2650 = !DILocation(line: 316, column: 8, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 316, column: 8)
!2652 = !DILocation(line: 316, column: 8, scope: !2493)
!2653 = !DILocation(line: 319, column: 10, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 317, column: 6)
!2655 = !DILocation(line: 319, column: 26, scope: !2654)
!2656 = !DILocation(line: 318, column: 8, scope: !2654)
!2657 = !DILocation(line: 320, column: 23, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 320, column: 12)
!2659 = !DILocation(line: 320, column: 12, scope: !2658)
!2660 = !DILocation(line: 320, column: 12, scope: !2654)
!2661 = !DILocation(line: 321, column: 12, scope: !2658)
!2662 = !DILocation(line: 321, column: 3, scope: !2658)
!2663 = !DILocation(line: 324, column: 21, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 324, column: 8)
!2665 = !DILocation(line: 324, column: 8, scope: !2493)
!2666 = !DILocation(line: 326, column: 20, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 325, column: 6)
!2668 = !DILocation(line: 326, column: 8, scope: !2667)
!2669 = !DILocation(line: 326, column: 18, scope: !2667)
!2670 = !DILocation(line: 327, column: 12, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 327, column: 12)
!2672 = !DILocation(line: 327, column: 12, scope: !2667)
!2673 = !DILocation(line: 328, column: 3, scope: !2671)
!2674 = !DILocation(line: 332, column: 8, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 332, column: 8)
!2676 = !DILocation(line: 332, column: 8, scope: !2493)
!2677 = !DILocation(line: 338, column: 4, scope: !2493)
!2678 = !DILocation(line: 333, column: 47, scope: !2675)
!2679 = !DILocation(line: 333, column: 6, scope: !2675)
!2680 = !DILocation(line: 335, column: 4, scope: !2493)
!2681 = !DILocation(line: 336, column: 21, scope: !2493)
!2682 = !DILocation(line: 337, column: 21, scope: !2493)
!2683 = !DILocation(line: 338, column: 25, scope: !2493)
!2684 = !DILocation(line: 338, column: 23, scope: !2493)
!2685 = !DILocation(line: 339, column: 4, scope: !2493)
!2686 = !DILocation(line: 342, column: 7, scope: !2488)
!2687 = !DILocation(line: 343, column: 7, scope: !2488)
!2688 = !DILocation(line: 344, column: 5, scope: !2489)
!2689 = !DILocation(line: 0, scope: !2489)
!2690 = distinct !{!2690, !2517, !2691}
!2691 = !DILocation(line: 344, column: 5, scope: !2490)
!2692 = !DILocation(line: 346, column: 3, scope: !2478)
!2693 = !DILocation(line: 348, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 348, column: 7)
!2695 = !DILocation(line: 348, column: 7, scope: !2478)
!2696 = !DILocation(line: 349, column: 5, scope: !2694)
!2697 = !DILocation(line: 352, column: 1, scope: !2478)
!2698 = !DILocation(line: 351, column: 3, scope: !2478)
!2699 = distinct !DISubprogram(name: "VEC_du_head_p_heap_alloc", scope: !3, file: !3, line: 126, type: !2700, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!803, !784}
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2699, file: !3, line: 126, type: !784)
!2704 = !DILocation(line: 0, scope: !2699)
!2705 = !DILocation(line: 126, column: 1, scope: !2699)
!2706 = distinct !DISubprogram(name: "build_def_use", scope: !3, file: !3, line: 1067, type: !2707, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!816, !1197}
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2718, !2724, !2725, !2729, !2733, !2734, !2735, !2736, !2737, !2738, !2742, !2743, !2746, !2747, !2748, !2753, !2754, !2758, !2759, !2760, !2761}
!2710 = !DILocalVariable(name: "bb", arg: 1, scope: !2706, file: !3, line: 1067, type: !1197)
!2711 = !DILocalVariable(name: "insn", scope: !2706, file: !3, line: 1069, type: !826)
!2712 = !DILocalVariable(name: "def_rec", scope: !2706, file: !3, line: 1070, type: !1909)
!2713 = !DILocalVariable(name: "untracked_operands", scope: !2706, file: !3, line: 1071, type: !800)
!2714 = !DILocalVariable(name: "def", scope: !2715, file: !3, line: 1083, type: !1910)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1082, column: 5)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1081, column: 3)
!2717 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1081, column: 3)
!2718 = !DILocalVariable(name: "n_ops", scope: !2719, file: !3, line: 1092, type: !784)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1091, column: 2)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1090, column: 11)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1089, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 1088, column: 3)
!2723 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1088, column: 3)
!2724 = !DILocalVariable(name: "note", scope: !2719, file: !3, line: 1093, type: !826)
!2725 = !DILocalVariable(name: "old_operands", scope: !2719, file: !3, line: 1094, type: !2726)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 1920, elements: !2727)
!2727 = !{!2728}
!2728 = !DISubrange(count: 30)
!2729 = !DILocalVariable(name: "old_dups", scope: !2719, file: !3, line: 1095, type: !2730)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 896, elements: !2731)
!2731 = !{!2732}
!2732 = !DISubrange(count: 14)
!2733 = !DILocalVariable(name: "i", scope: !2719, file: !3, line: 1096, type: !784)
!2734 = !DILocalVariable(name: "alt", scope: !2719, file: !3, line: 1097, type: !784)
!2735 = !DILocalVariable(name: "predicated", scope: !2719, file: !3, line: 1098, type: !784)
!2736 = !DILocalVariable(name: "set_code", scope: !2719, file: !3, line: 1099, type: !560)
!2737 = !DILocalVariable(name: "clobber_code", scope: !2719, file: !3, line: 1100, type: !560)
!2738 = !DILocalVariable(name: "op", scope: !2739, file: !3, line: 1142, type: !826)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1141, column: 6)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1140, column: 4)
!2741 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1140, column: 4)
!2742 = !DILocalVariable(name: "matches", scope: !2739, file: !3, line: 1143, type: !784)
!2743 = !DILocalVariable(name: "mode", scope: !2744, file: !3, line: 1171, type: !189)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1170, column: 3)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1166, column: 12)
!2746 = !DILocalVariable(name: "this_regno", scope: !2744, file: !3, line: 1172, type: !7)
!2747 = !DILocalVariable(name: "this_nregs", scope: !2744, file: !3, line: 1173, type: !7)
!2748 = !DILocalVariable(name: "loc", scope: !2749, file: !3, line: 1213, type: !1891)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1212, column: 8)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1211, column: 6)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 1211, column: 6)
!2752 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1210, column: 8)
!2753 = !DILocalVariable(name: "op", scope: !2749, file: !3, line: 1214, type: !826)
!2754 = !DILocalVariable(name: "opn", scope: !2755, file: !3, line: 1226, type: !784)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 1225, column: 6)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1224, column: 4)
!2757 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1224, column: 4)
!2758 = !DILocalVariable(name: "loc", scope: !2755, file: !3, line: 1227, type: !1891)
!2759 = !DILocalVariable(name: "cl", scope: !2755, file: !3, line: 1230, type: !703)
!2760 = !DILocalVariable(name: "type", scope: !2755, file: !3, line: 1231, type: !733)
!2761 = !DILocalVariable(name: "p", scope: !2762, file: !3, line: 1269, type: !816)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1268, column: 6)
!2763 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1267, column: 8)
!2764 = !DILocation(line: 0, scope: !2706)
!2765 = !DILocation(line: 1073, column: 31, scope: !2706)
!2766 = !DILocation(line: 1073, column: 15, scope: !2706)
!2767 = !DILocation(line: 1075, column: 22, scope: !2706)
!2768 = !DILocation(line: 1077, column: 14, scope: !2706)
!2769 = !DILocation(line: 1078, column: 3, scope: !2706)
!2770 = !DILocation(line: 1079, column: 3, scope: !2706)
!2771 = !DILocation(line: 1080, column: 3, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1080, column: 3)
!2773 = !DILocation(line: 1081, column: 46, scope: !2717)
!2774 = !DILocation(line: 1081, column: 18, scope: !2717)
!2775 = !DILocation(line: 1081, column: 8, scope: !2717)
!2776 = !DILocation(line: 0, scope: !2717)
!2777 = !DILocation(line: 1081, column: 54, scope: !2716)
!2778 = !DILocation(line: 1081, column: 3, scope: !2717)
!2779 = !DILocation(line: 0, scope: !2715)
!2780 = !DILocation(line: 1084, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 1084, column: 11)
!2782 = !DILocation(line: 1084, column: 30, scope: !2781)
!2783 = !DILocation(line: 1084, column: 11, scope: !2715)
!2784 = !DILocation(line: 1085, column: 2, scope: !2781)
!2785 = !DILocation(line: 1081, column: 71, scope: !2716)
!2786 = !DILocation(line: 1081, column: 3, scope: !2716)
!2787 = distinct !{!2787, !2778, !2788}
!2788 = !DILocation(line: 1086, column: 5, scope: !2717)
!2789 = !DILocation(line: 1088, column: 15, scope: !2723)
!2790 = !DILocation(line: 0, scope: !2719)
!2791 = !DILocation(line: 1088, column: 8, scope: !2723)
!2792 = !DILocation(line: 0, scope: !2723)
!2793 = !DILocation(line: 1090, column: 11, scope: !2720)
!2794 = !DILocation(line: 1090, column: 11, scope: !2721)
!2795 = !DILocation(line: 1094, column: 4, scope: !2719)
!2796 = !DILocation(line: 1094, column: 8, scope: !2719)
!2797 = !DILocation(line: 1095, column: 4, scope: !2719)
!2798 = !DILocation(line: 1095, column: 8, scope: !2719)
!2799 = !DILocation(line: 1099, column: 4, scope: !2719)
!2800 = !DILocation(line: 1099, column: 18, scope: !2719)
!2801 = !DILocation(line: 1100, column: 4, scope: !2719)
!2802 = !DILocation(line: 1100, column: 18, scope: !2719)
!2803 = !DILocation(line: 1125, column: 4, scope: !2719)
!2804 = !DILocation(line: 1126, column: 10, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1126, column: 8)
!2806 = !DILocation(line: 1126, column: 8, scope: !2719)
!2807 = !DILocation(line: 1127, column: 6, scope: !2805)
!2808 = !DILocation(line: 1128, column: 4, scope: !2719)
!2809 = !DILocation(line: 1129, column: 10, scope: !2719)
!2810 = !DILocation(line: 1130, column: 23, scope: !2719)
!2811 = !DILocation(line: 1130, column: 12, scope: !2719)
!2812 = !DILocation(line: 1139, column: 17, scope: !2719)
!2813 = !DILocation(line: 1139, column: 43, scope: !2719)
!2814 = !DILocation(line: 0, scope: !2739)
!2815 = !DILocation(line: 1140, column: 9, scope: !2741)
!2816 = !DILocation(line: 0, scope: !2741)
!2817 = !DILocation(line: 1131, column: 23, scope: !2719)
!2818 = !DILocation(line: 1140, column: 18, scope: !2740)
!2819 = !DILocation(line: 1140, column: 4, scope: !2741)
!2820 = !DILocation(line: 1142, column: 17, scope: !2739)
!2821 = !DILocation(line: 1143, column: 43, scope: !2739)
!2822 = !DILocation(line: 1144, column: 20, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1144, column: 12)
!2824 = !DILocation(line: 1144, column: 12, scope: !2739)
!2825 = !DILocation(line: 1145, column: 29, scope: !2823)
!2826 = !DILocation(line: 1145, column: 56, scope: !2823)
!2827 = !DILocation(line: 1145, column: 24, scope: !2823)
!2828 = !DILocation(line: 1145, column: 27, scope: !2823)
!2829 = !DILocation(line: 1145, column: 3, scope: !2823)
!2830 = !DILocation(line: 1146, column: 25, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1146, column: 12)
!2832 = !DILocation(line: 1146, column: 49, scope: !2831)
!2833 = !DILocation(line: 1146, column: 57, scope: !2831)
!2834 = !DILocation(line: 1147, column: 12, scope: !2831)
!2835 = !DILocation(line: 1147, column: 30, scope: !2831)
!2836 = !DILocation(line: 1147, column: 57, scope: !2831)
!2837 = !DILocation(line: 1146, column: 12, scope: !2739)
!2838 = !DILocation(line: 1149, column: 5, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1148, column: 3)
!2840 = !DILocation(line: 1149, column: 32, scope: !2839)
!2841 = !DILocation(line: 1156, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1155, column: 9)
!2843 = !DILocation(line: 1156, column: 13, scope: !2842)
!2844 = !DILocation(line: 1157, column: 9, scope: !2842)
!2845 = !DILocation(line: 1157, column: 6, scope: !2842)
!2846 = !DILocation(line: 1158, column: 9, scope: !2842)
!2847 = !DILocation(line: 1158, column: 13, scope: !2842)
!2848 = !DILocation(line: 1155, column: 9, scope: !2839)
!2849 = !DILocation(line: 1160, column: 33, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1159, column: 7)
!2851 = !DILocation(line: 1160, column: 31, scope: !2850)
!2852 = !DILocation(line: 1160, column: 28, scope: !2850)
!2853 = !DILocation(line: 1161, column: 33, scope: !2850)
!2854 = !DILocation(line: 1161, column: 31, scope: !2850)
!2855 = !DILocation(line: 1161, column: 28, scope: !2850)
!2856 = !DILocation(line: 1162, column: 7, scope: !2850)
!2857 = !DILocation(line: 1166, column: 12, scope: !2745)
!2858 = !DILocation(line: 1166, column: 39, scope: !2745)
!2859 = !DILocation(line: 1167, column: 5, scope: !2745)
!2860 = !DILocation(line: 1167, column: 34, scope: !2745)
!2861 = !DILocation(line: 1167, column: 31, scope: !2745)
!2862 = !DILocation(line: 1167, column: 29, scope: !2745)
!2863 = !DILocation(line: 1168, column: 5, scope: !2745)
!2864 = !DILocation(line: 1168, column: 8, scope: !2745)
!2865 = !DILocation(line: 1169, column: 5, scope: !2745)
!2866 = !DILocation(line: 1169, column: 9, scope: !2745)
!2867 = !DILocation(line: 1166, column: 12, scope: !2739)
!2868 = !DILocation(line: 1171, column: 30, scope: !2744)
!2869 = !DILocation(line: 0, scope: !2744)
!2870 = !DILocation(line: 1172, column: 27, scope: !2744)
!2871 = !DILocation(line: 1173, column: 27, scope: !2744)
!2872 = !DILocation(line: 1174, column: 5, scope: !2744)
!2873 = !DILocation(line: 1176, column: 3, scope: !2744)
!2874 = !DILocation(line: 1140, column: 27, scope: !2740)
!2875 = !DILocation(line: 1140, column: 4, scope: !2740)
!2876 = distinct !{!2876, !2819, !2877}
!2877 = !DILocation(line: 1177, column: 6, scope: !2741)
!2878 = !DILocation(line: 1179, column: 8, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1179, column: 8)
!2880 = !DILocation(line: 1147, column: 27, scope: !2831)
!2881 = !DILocation(line: 1179, column: 8, scope: !2719)
!2882 = !DILocation(line: 1184, column: 4, scope: !2719)
!2883 = !DILocation(line: 1186, column: 17, scope: !2719)
!2884 = !DILocation(line: 1186, column: 4, scope: !2719)
!2885 = !DILocation(line: 1187, column: 4, scope: !2719)
!2886 = !DILocation(line: 1191, column: 4, scope: !2719)
!2887 = !DILocation(line: 1198, column: 4, scope: !2719)
!2888 = !DILocation(line: 1200, column: 4, scope: !2719)
!2889 = !DILocation(line: 1201, column: 4, scope: !2719)
!2890 = !DILocation(line: 1204, column: 8, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1204, column: 8)
!2892 = !DILocation(line: 1204, column: 22, scope: !2891)
!2893 = !DILocation(line: 1204, column: 25, scope: !2891)
!2894 = !DILocation(line: 1204, column: 8, scope: !2719)
!2895 = !DILocation(line: 1205, column: 6, scope: !2891)
!2896 = !DILocation(line: 1210, column: 23, scope: !2752)
!2897 = !DILocation(line: 1210, column: 8, scope: !2752)
!2898 = !DILocation(line: 1210, column: 39, scope: !2752)
!2899 = !DILocation(line: 1210, column: 8, scope: !2719)
!2900 = !DILocation(line: 1211, column: 6, scope: !2751)
!2901 = !DILocation(line: 0, scope: !2751)
!2902 = !DILocation(line: 1211, column: 20, scope: !2750)
!2903 = !DILocation(line: 1213, column: 14, scope: !2749)
!2904 = !DILocation(line: 0, scope: !2749)
!2905 = !DILocation(line: 1214, column: 12, scope: !2749)
!2906 = !DILocation(line: 1216, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1216, column: 7)
!2908 = !DILocation(line: 1217, column: 7, scope: !2907)
!2909 = !DILocation(line: 1217, column: 10, scope: !2907)
!2910 = !DILocation(line: 1217, column: 24, scope: !2907)
!2911 = !DILocation(line: 1217, column: 21, scope: !2907)
!2912 = !DILocation(line: 1218, column: 7, scope: !2907)
!2913 = !DILocation(line: 1218, column: 11, scope: !2907)
!2914 = !DILocation(line: 1218, column: 38, scope: !2907)
!2915 = !DILocation(line: 1219, column: 4, scope: !2907)
!2916 = !DILocation(line: 1219, column: 34, scope: !2907)
!2917 = !DILocation(line: 1216, column: 7, scope: !2749)
!2918 = !DILocation(line: 1220, column: 5, scope: !2907)
!2919 = !DILocation(line: 1211, column: 30, scope: !2750)
!2920 = !DILocation(line: 1211, column: 6, scope: !2750)
!2921 = distinct !{!2921, !2900, !2922}
!2922 = !DILocation(line: 1221, column: 8, scope: !2751)
!2923 = !DILocation(line: 1224, column: 9, scope: !2757)
!2924 = !DILocation(line: 0, scope: !2757)
!2925 = !DILocation(line: 1224, column: 39, scope: !2756)
!2926 = !DILocation(line: 1224, column: 28, scope: !2756)
!2927 = !DILocation(line: 1224, column: 26, scope: !2756)
!2928 = !DILocation(line: 1224, column: 18, scope: !2756)
!2929 = !DILocation(line: 1224, column: 4, scope: !2757)
!2930 = !DILocation(line: 1226, column: 20, scope: !2755)
!2931 = !DILocation(line: 1226, column: 18, scope: !2755)
!2932 = !DILocation(line: 1226, column: 55, scope: !2755)
!2933 = !DILocation(line: 1226, column: 34, scope: !2755)
!2934 = !DILocation(line: 0, scope: !2755)
!2935 = !DILocation(line: 1227, column: 20, scope: !2755)
!2936 = !DILocation(line: 1228, column: 8, scope: !2755)
!2937 = !DILocation(line: 1229, column: 29, scope: !2755)
!2938 = !DILocation(line: 1229, column: 8, scope: !2755)
!2939 = !DILocation(line: 1230, column: 28, scope: !2755)
!2940 = !DILocation(line: 1230, column: 51, scope: !2755)
!2941 = !DILocation(line: 1231, column: 28, scope: !2755)
!2942 = !DILocation(line: 1236, column: 12, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1236, column: 12)
!2944 = !DILocation(line: 1236, column: 43, scope: !2943)
!2945 = !DILocation(line: 1237, column: 5, scope: !2943)
!2946 = !DILocation(line: 1237, column: 32, scope: !2943)
!2947 = !DILocation(line: 1237, column: 29, scope: !2943)
!2948 = !DILocation(line: 1237, column: 27, scope: !2943)
!2949 = !DILocation(line: 1236, column: 12, scope: !2755)
!2950 = !DILocation(line: 1240, column: 35, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1240, column: 12)
!2952 = !DILocation(line: 1240, column: 12, scope: !2951)
!2953 = !DILocation(line: 1240, column: 12, scope: !2755)
!2954 = !DILocation(line: 1241, column: 3, scope: !2951)
!2955 = !DILocation(line: 1243, column: 3, scope: !2951)
!2956 = !DILocation(line: 1224, column: 48, scope: !2756)
!2957 = !DILocation(line: 1224, column: 4, scope: !2756)
!2958 = distinct !{!2958, !2929, !2959}
!2959 = !DILocation(line: 1244, column: 6, scope: !2757)
!2960 = !DILocation(line: 1248, column: 16, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1248, column: 4)
!2962 = !DILocation(line: 1248, column: 9, scope: !2961)
!2963 = !DILocation(line: 0, scope: !2961)
!2964 = !DILocation(line: 1248, column: 4, scope: !2961)
!2965 = !DILocation(line: 1249, column: 10, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1249, column: 10)
!2967 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 1248, column: 4)
!2968 = !DILocation(line: 1249, column: 31, scope: !2966)
!2969 = !DILocation(line: 1250, column: 3, scope: !2966)
!2970 = !DILocation(line: 1250, column: 27, scope: !2966)
!2971 = !DILocation(line: 1249, column: 10, scope: !2967)
!2972 = !DILocation(line: 1251, column: 25, scope: !2966)
!2973 = !DILocation(line: 1251, column: 8, scope: !2966)
!2974 = !DILocation(line: 1248, column: 47, scope: !2967)
!2975 = !DILocation(line: 1248, column: 4, scope: !2967)
!2976 = distinct !{!2976, !2964, !2977}
!2977 = !DILocation(line: 1252, column: 12, scope: !2961)
!2978 = !DILocation(line: 1255, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1255, column: 4)
!2980 = !DILocation(line: 0, scope: !2979)
!2981 = !DILocation(line: 1255, column: 4, scope: !2979)
!2982 = !DILocation(line: 1256, column: 10, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1256, column: 10)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1255, column: 4)
!2985 = !DILocation(line: 1256, column: 31, scope: !2983)
!2986 = !DILocation(line: 1256, column: 10, scope: !2984)
!2987 = !DILocation(line: 1259, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1257, column: 8)
!2989 = !DILocation(line: 1260, column: 8, scope: !2988)
!2990 = !DILocation(line: 1258, column: 3, scope: !2988)
!2991 = !DILocation(line: 1261, column: 20, scope: !2988)
!2992 = !DILocation(line: 1261, column: 3, scope: !2988)
!2993 = !DILocation(line: 1263, column: 8, scope: !2988)
!2994 = !DILocation(line: 1255, column: 47, scope: !2984)
!2995 = !DILocation(line: 1255, column: 4, scope: !2984)
!2996 = distinct !{!2996, !2981, !2997}
!2997 = !DILocation(line: 1263, column: 8, scope: !2979)
!2998 = !DILocation(line: 1267, column: 8, scope: !2763)
!2999 = !DILocation(line: 1267, column: 8, scope: !2719)
!3000 = !DILocation(line: 1270, column: 13, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1270, column: 8)
!3002 = !DILocation(line: 0, scope: !3001)
!3003 = !DILocation(line: 0, scope: !2762)
!3004 = !DILocation(line: 1270, column: 8, scope: !3001)
!3005 = !DILocation(line: 1271, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1270, column: 8)
!3007 = !DILocation(line: 1271, column: 27, scope: !3006)
!3008 = !DILocation(line: 1270, column: 40, scope: !3006)
!3009 = !DILocation(line: 1270, column: 8, scope: !3006)
!3010 = distinct !{!3010, !3004, !3011}
!3011 = !DILocation(line: 1271, column: 29, scope: !3001)
!3012 = !DILocation(line: 1282, column: 26, scope: !2719)
!3013 = !DILocation(line: 1282, column: 4, scope: !2719)
!3014 = !DILocation(line: 1284, column: 4, scope: !2719)
!3015 = !DILocation(line: 1285, column: 4, scope: !2719)
!3016 = !DILocation(line: 1289, column: 4, scope: !2719)
!3017 = !DILocation(line: 1291, column: 17, scope: !2719)
!3018 = !DILocation(line: 1291, column: 4, scope: !2719)
!3019 = !DILocation(line: 1292, column: 4, scope: !2719)
!3020 = !DILocation(line: 1295, column: 4, scope: !2719)
!3021 = !DILocation(line: 1299, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1299, column: 4)
!3023 = !DILocation(line: 0, scope: !3022)
!3024 = !DILocation(line: 1299, column: 4, scope: !3022)
!3025 = !DILocation(line: 1300, column: 10, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1300, column: 10)
!3027 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1299, column: 4)
!3028 = !DILocation(line: 1300, column: 31, scope: !3026)
!3029 = !DILocation(line: 1300, column: 10, scope: !3027)
!3030 = !DILocation(line: 1301, column: 25, scope: !3026)
!3031 = !DILocation(line: 1301, column: 8, scope: !3026)
!3032 = !DILocation(line: 1299, column: 47, scope: !3027)
!3033 = !DILocation(line: 1299, column: 4, scope: !3027)
!3034 = distinct !{!3034, !3024, !3035}
!3035 = !DILocation(line: 1302, column: 12, scope: !3022)
!3036 = !DILocation(line: 1306, column: 9, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1306, column: 4)
!3038 = !DILocation(line: 0, scope: !3037)
!3039 = !DILocation(line: 1306, column: 4, scope: !3037)
!3040 = !DILocation(line: 1307, column: 10, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1307, column: 10)
!3042 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1306, column: 4)
!3043 = !DILocation(line: 1307, column: 31, scope: !3041)
!3044 = !DILocation(line: 1307, column: 10, scope: !3042)
!3045 = !DILocation(line: 1310, column: 8, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1308, column: 8)
!3047 = !DILocation(line: 1311, column: 8, scope: !3046)
!3048 = !DILocation(line: 1309, column: 3, scope: !3046)
!3049 = !DILocation(line: 1312, column: 20, scope: !3046)
!3050 = !DILocation(line: 1312, column: 3, scope: !3046)
!3051 = !DILocation(line: 1314, column: 8, scope: !3046)
!3052 = !DILocation(line: 1306, column: 47, scope: !3042)
!3053 = !DILocation(line: 1306, column: 4, scope: !3042)
!3054 = distinct !{!3054, !3039, !3055}
!3055 = !DILocation(line: 1314, column: 8, scope: !3037)
!3056 = !DILocation(line: 1315, column: 2, scope: !2720)
!3057 = !DILocation(line: 1316, column: 16, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1316, column: 16)
!3059 = !DILocation(line: 1317, column: 9, scope: !3058)
!3060 = !DILocation(line: 1317, column: 13, scope: !3058)
!3061 = !DILocation(line: 1316, column: 16, scope: !2720)
!3062 = !DILocation(line: 1319, column: 21, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1318, column: 2)
!3064 = !DILocation(line: 1319, column: 4, scope: !3063)
!3065 = !DILocation(line: 1321, column: 2, scope: !3063)
!3066 = !DILocation(line: 1322, column: 19, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1322, column: 11)
!3068 = !DILocation(line: 1322, column: 16, scope: !3067)
!3069 = !DILocation(line: 1322, column: 11, scope: !2721)
!3070 = !DILocation(line: 1088, column: 38, scope: !2722)
!3071 = !DILocation(line: 1088, column: 3, scope: !2722)
!3072 = distinct !{!3072, !3073, !3074}
!3073 = !DILocation(line: 1088, column: 3, scope: !2723)
!3074 = !DILocation(line: 1324, column: 5, scope: !2723)
!3075 = !DILocation(line: 1326, column: 3, scope: !2706)
!3076 = !DILocation(line: 1328, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1328, column: 7)
!3078 = !DILocation(line: 1328, column: 7, scope: !2706)
!3079 = !DILocation(line: 1334, column: 1, scope: !2706)
!3080 = distinct !DISubprogram(name: "dump_def_use_chain", scope: !3, file: !3, line: 1340, type: !3081, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !816}
!3083 = !{!3084, !3085}
!3084 = !DILocalVariable(name: "head", arg: 1, scope: !3080, file: !3, line: 1340, type: !816)
!3085 = !DILocalVariable(name: "this_du", scope: !3086, file: !3, line: 1344, type: !821)
!3086 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1343, column: 5)
!3087 = !DILocation(line: 0, scope: !3080)
!3088 = !DILocation(line: 1342, column: 3, scope: !3080)
!3089 = !DILocation(line: 1344, column: 40, scope: !3086)
!3090 = !DILocation(line: 0, scope: !3086)
!3091 = !DILocation(line: 1345, column: 16, scope: !3086)
!3092 = !DILocation(line: 1346, column: 25, scope: !3086)
!3093 = !DILocation(line: 1346, column: 9, scope: !3086)
!3094 = !DILocation(line: 1346, column: 39, scope: !3086)
!3095 = !DILocation(line: 1345, column: 7, scope: !3086)
!3096 = !DILocation(line: 1347, column: 7, scope: !3086)
!3097 = !DILocation(line: 1349, column: 36, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1348, column: 2)
!3099 = !DILocation(line: 1350, column: 31, scope: !3098)
!3100 = !DILocation(line: 1350, column: 6, scope: !3098)
!3101 = !DILocation(line: 1349, column: 4, scope: !3098)
!3102 = !DILocation(line: 1351, column: 23, scope: !3098)
!3103 = distinct !{!3103, !3096, !3104}
!3104 = !DILocation(line: 1352, column: 2, scope: !3086)
!3105 = !DILocation(line: 1353, column: 7, scope: !3086)
!3106 = !DILocation(line: 1354, column: 20, scope: !3086)
!3107 = distinct !{!3107, !3088, !3108}
!3108 = !DILocation(line: 1355, column: 5, scope: !3080)
!3109 = !DILocation(line: 1356, column: 1, scope: !3080)
!3110 = distinct !DISubprogram(name: "add_to_hard_reg_set", scope: !3111, file: !3111, line: 307, type: !3112, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3111 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3114, !189, !7}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "regs", arg: 1, scope: !3110, file: !3111, line: 307, type: !3114)
!3117 = !DILocalVariable(name: "mode", arg: 2, scope: !3110, file: !3111, line: 307, type: !189)
!3118 = !DILocalVariable(name: "regno", arg: 3, scope: !3110, file: !3111, line: 308, type: !7)
!3119 = !DILocalVariable(name: "end_regno", scope: !3110, file: !3111, line: 310, type: !7)
!3120 = !DILocation(line: 0, scope: !3110)
!3121 = !DILocation(line: 312, column: 15, scope: !3110)
!3122 = !DILocation(line: 314, column: 5, scope: !3110)
!3123 = !DILocation(line: 313, column: 3, scope: !3110)
!3124 = !DILocation(line: 315, column: 10, scope: !3110)
!3125 = !DILocation(line: 315, column: 18, scope: !3110)
!3126 = distinct !{!3126, !3123, !3127}
!3127 = !DILocation(line: 315, column: 29, scope: !3110)
!3128 = !DILocation(line: 316, column: 1, scope: !3110)
!3129 = distinct !DISubprogram(name: "merge_overlapping_regs", scope: !3, file: !3, line: 144, type: !3130, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3114, !816}
!3132 = !{!3133, !3134, !3135, !3143, !3144, !3148}
!3133 = !DILocalVariable(name: "pset", arg: 1, scope: !3129, file: !3, line: 144, type: !3114)
!3134 = !DILocalVariable(name: "head", arg: 2, scope: !3129, file: !3, line: 144, type: !816)
!3135 = !DILocalVariable(name: "bi", scope: !3129, file: !3, line: 146, type: !3136)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !882, line: 218, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !882, line: 203, size: 256, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3137, file: !882, line: 206, baseType: !885, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3137, file: !882, line: 209, baseType: !885, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3137, file: !882, line: 212, baseType: !7, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3137, file: !882, line: 217, baseType: !895, size: 64, offset: 192)
!3143 = !DILocalVariable(name: "i", scope: !3129, file: !3, line: 147, type: !7)
!3144 = !DILocalVariable(name: "other", scope: !3145, file: !3, line: 151, type: !815)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 150, column: 5)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 149, column: 3)
!3147 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 149, column: 3)
!3148 = !DILocalVariable(name: "j", scope: !3145, file: !3, line: 152, type: !7)
!3149 = !DILocation(line: 0, scope: !3129)
!3150 = !DILocation(line: 146, column: 3, scope: !3129)
!3151 = !DILocation(line: 147, column: 3, scope: !3129)
!3152 = !DILocation(line: 148, column: 3, scope: !3129)
!3153 = !DILocation(line: 149, column: 3, scope: !3147)
!3154 = !DILocation(line: 149, column: 3, scope: !3146)
!3155 = !DILocation(line: 151, column: 25, scope: !3145)
!3156 = !DILocation(line: 0, scope: !3145)
!3157 = !DILocation(line: 152, column: 27, scope: !3145)
!3158 = !DILocation(line: 153, column: 7, scope: !3145)
!3159 = !DILocation(line: 153, column: 15, scope: !3145)
!3160 = !DILocation(line: 153, column: 18, scope: !3145)
!3161 = !DILocation(line: 154, column: 2, scope: !3145)
!3162 = distinct !{!3162, !3158, !3161}
!3163 = distinct !{!3163, !3153, !3164}
!3164 = !DILocation(line: 155, column: 5, scope: !3147)
!3165 = !DILocation(line: 156, column: 1, scope: !3129)
!3166 = distinct !DISubprogram(name: "do_replace", scope: !3, file: !3, line: 355, type: !3167, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !816, !784}
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3179, !3181, !3182, !3185, !3189}
!3170 = !DILocalVariable(name: "head", arg: 1, scope: !3166, file: !3, line: 355, type: !816)
!3171 = !DILocalVariable(name: "reg", arg: 2, scope: !3166, file: !3, line: 355, type: !784)
!3172 = !DILocalVariable(name: "chain", scope: !3166, file: !3, line: 357, type: !821)
!3173 = !DILocalVariable(name: "base_regno", scope: !3166, file: !3, line: 358, type: !7)
!3174 = !DILocalVariable(name: "found_note", scope: !3166, file: !3, line: 359, type: !783)
!3175 = !DILocalVariable(name: "regno", scope: !3176, file: !3, line: 365, type: !7)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 364, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 363, column: 3)
!3178 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 363, column: 3)
!3179 = !DILocalVariable(name: "attr", scope: !3176, file: !3, line: 366, type: !3180)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!3181 = !DILocalVariable(name: "reg_ptr", scope: !3176, file: !3, line: 367, type: !784)
!3182 = !DILocalVariable(name: "note", scope: !3183, file: !3, line: 373, type: !826)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 372, column: 2)
!3184 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 369, column: 11)
!3185 = !DILocalVariable(name: "kind", scope: !3186, file: !3, line: 383, type: !739)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 382, column: 6)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 381, column: 4)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 381, column: 4)
!3189 = !DILocalVariable(name: "reg", scope: !3190, file: !3, line: 386, type: !826)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 385, column: 3)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 384, column: 12)
!3192 = !DILocation(line: 0, scope: !3166)
!3193 = !DILocation(line: 358, column: 35, scope: !3166)
!3194 = !DILocation(line: 361, column: 3, scope: !3166)
!3195 = !DILocation(line: 363, column: 8, scope: !3178)
!3196 = !DILocation(line: 359, column: 8, scope: !3166)
!3197 = !DILocation(line: 0, scope: !3178)
!3198 = !DILocation(line: 363, column: 3, scope: !3178)
!3199 = !DILocation(line: 365, column: 28, scope: !3176)
!3200 = !DILocation(line: 0, scope: !3176)
!3201 = !DILocation(line: 366, column: 32, scope: !3176)
!3202 = !DILocation(line: 367, column: 21, scope: !3176)
!3203 = !DILocation(line: 369, column: 11, scope: !3184)
!3204 = !DILocation(line: 369, column: 38, scope: !3184)
!3205 = !DILocation(line: 369, column: 41, scope: !3184)
!3206 = !DILocation(line: 369, column: 61, scope: !3184)
!3207 = !DILocation(line: 369, column: 11, scope: !3176)
!3208 = !DILocation(line: 375, column: 31, scope: !3183)
!3209 = !DILocation(line: 370, column: 40, scope: !3184)
!3210 = !DILocation(line: 370, column: 2, scope: !3184)
!3211 = !DILocation(line: 370, column: 38, scope: !3184)
!3212 = !DILocation(line: 375, column: 18, scope: !3183)
!3213 = !DILocation(line: 375, column: 12, scope: !3183)
!3214 = !DILocation(line: 375, column: 16, scope: !3183)
!3215 = !DILocation(line: 376, column: 14, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 376, column: 8)
!3217 = !DILocation(line: 376, column: 8, scope: !3183)
!3218 = !DILocation(line: 377, column: 6, scope: !3216)
!3219 = !DILocation(line: 377, column: 35, scope: !3216)
!3220 = !DILocation(line: 378, column: 4, scope: !3183)
!3221 = !DILocation(line: 378, column: 28, scope: !3183)
!3222 = !DILocation(line: 379, column: 4, scope: !3183)
!3223 = !DILocation(line: 379, column: 30, scope: !3183)
!3224 = !DILocation(line: 381, column: 16, scope: !3188)
!3225 = !DILocation(line: 0, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 392, column: 13)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 390, column: 7)
!3228 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 389, column: 9)
!3229 = !DILocation(line: 381, column: 9, scope: !3188)
!3230 = !DILocation(line: 0, scope: !3188)
!3231 = !DILocation(line: 0, scope: !3183)
!3232 = !DILocation(line: 381, column: 4, scope: !3188)
!3233 = !DILocation(line: 383, column: 29, scope: !3186)
!3234 = !DILocation(line: 0, scope: !3186)
!3235 = !DILocation(line: 384, column: 29, scope: !3191)
!3236 = !DILocation(line: 386, column: 15, scope: !3190)
!3237 = !DILocation(line: 0, scope: !3190)
!3238 = !DILocation(line: 387, column: 5, scope: !3190)
!3239 = !DILocation(line: 389, column: 9, scope: !3228)
!3240 = !DILocation(line: 389, column: 21, scope: !3228)
!3241 = !DILocation(line: 389, column: 9, scope: !3190)
!3242 = !DILocation(line: 392, column: 18, scope: !3226)
!3243 = !DILocation(line: 393, column: 6, scope: !3226)
!3244 = !DILocation(line: 393, column: 28, scope: !3226)
!3245 = !DILocation(line: 393, column: 20, scope: !3226)
!3246 = !DILocation(line: 393, column: 40, scope: !3226)
!3247 = !DILocation(line: 393, column: 9, scope: !3226)
!3248 = !DILocation(line: 392, column: 13, scope: !3227)
!3249 = !DILocation(line: 394, column: 24, scope: !3226)
!3250 = !DILocation(line: 394, column: 4, scope: !3226)
!3251 = !DILocation(line: 396, column: 29, scope: !3226)
!3252 = !DILocation(line: 396, column: 21, scope: !3226)
!3253 = !DILocation(line: 396, column: 4, scope: !3226)
!3254 = !DILocation(line: 396, column: 19, scope: !3226)
!3255 = !DILocation(line: 400, column: 6, scope: !3187)
!3256 = !DILocation(line: 391, column: 20, scope: !3227)
!3257 = !DILocation(line: 381, column: 54, scope: !3187)
!3258 = !DILocation(line: 381, column: 4, scope: !3187)
!3259 = distinct !{!3259, !3232, !3260}
!3260 = !DILocation(line: 400, column: 6, scope: !3188)
!3261 = !DILocation(line: 403, column: 30, scope: !3176)
!3262 = !DILocation(line: 403, column: 7, scope: !3176)
!3263 = !DILocation(line: 363, column: 51, scope: !3177)
!3264 = !DILocation(line: 363, column: 3, scope: !3177)
!3265 = distinct !{!3265, !3198, !3266}
!3266 = !DILocation(line: 404, column: 5, scope: !3178)
!3267 = !DILocation(line: 405, column: 8, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 405, column: 7)
!3269 = !DILocation(line: 405, column: 7, scope: !3166)
!3270 = !DILocation(line: 409, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 406, column: 5)
!3272 = !DILocation(line: 410, column: 30, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 410, column: 11)
!3274 = !DILocation(line: 0, scope: !3273)
!3275 = !DILocation(line: 410, column: 53, scope: !3273)
!3276 = !DILocation(line: 410, column: 36, scope: !3273)
!3277 = !DILocation(line: 410, column: 23, scope: !3273)
!3278 = !DILocation(line: 410, column: 12, scope: !3273)
!3279 = !DILocation(line: 410, column: 11, scope: !3271)
!3280 = !DILocation(line: 411, column: 22, scope: !3273)
!3281 = !DILocation(line: 411, column: 28, scope: !3273)
!3282 = !DILocation(line: 411, column: 57, scope: !3273)
!3283 = !DILocation(line: 411, column: 44, scope: !3273)
!3284 = !DILocation(line: 411, column: 2, scope: !3273)
!3285 = !DILocation(line: 413, column: 1, scope: !3166)
!3286 = distinct !DISubprogram(name: "free_chain_data", scope: !3, file: !3, line: 130, type: !3287, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "i", scope: !3286, file: !3, line: 132, type: !784)
!3291 = !DILocalVariable(name: "ptr", scope: !3286, file: !3, line: 133, type: !815)
!3292 = !DILocation(line: 133, column: 3, scope: !3286)
!3293 = !DILocation(line: 0, scope: !3286)
!3294 = !DILocation(line: 134, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 134, column: 3)
!3296 = !DILocation(line: 0, scope: !3295)
!3297 = !DILocation(line: 134, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 134, column: 3)
!3299 = !DILocation(line: 134, column: 3, scope: !3295)
!3300 = !DILocation(line: 135, column: 20, scope: !3298)
!3301 = !DILocation(line: 135, column: 25, scope: !3298)
!3302 = !DILocation(line: 135, column: 5, scope: !3298)
!3303 = !DILocation(line: 134, column: 61, scope: !3298)
!3304 = !DILocation(line: 134, column: 3, scope: !3298)
!3305 = distinct !{!3305, !3299, !3306}
!3306 = !DILocation(line: 135, column: 34, scope: !3295)
!3307 = !DILocation(line: 137, column: 3, scope: !3286)
!3308 = !DILocation(line: 138, column: 1, scope: !3286)
!3309 = distinct !DISubprogram(name: "bitmap_initialize_stat", scope: !882, file: !882, line: 165, type: !3310, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3313)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3312, !901}
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !827, line: 47, baseType: !880)
!3313 = !{!3314, !3315}
!3314 = !DILocalVariable(name: "head", arg: 1, scope: !3309, file: !882, line: 165, type: !3312)
!3315 = !DILocalVariable(name: "obstack", arg: 2, scope: !3309, file: !882, line: 165, type: !901)
!3316 = !DILocation(line: 0, scope: !3309)
!3317 = !DILocation(line: 167, column: 23, scope: !3309)
!3318 = !DILocation(line: 167, column: 31, scope: !3309)
!3319 = !DILocation(line: 167, column: 9, scope: !3309)
!3320 = !DILocation(line: 167, column: 15, scope: !3309)
!3321 = !DILocation(line: 168, column: 9, scope: !3309)
!3322 = !DILocation(line: 168, column: 17, scope: !3309)
!3323 = !DILocation(line: 172, column: 1, scope: !3309)
!3324 = distinct !DISubprogram(name: "df_get_artificial_defs", scope: !1906, file: !1906, line: 1090, type: !3325, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!1909, !7}
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "bb_index", arg: 1, scope: !3324, file: !1906, line: 1090, type: !7)
!3329 = !DILocation(line: 0, scope: !3324)
!3330 = !DILocation(line: 1092, column: 10, scope: !3324)
!3331 = !DILocation(line: 1092, column: 42, scope: !3324)
!3332 = !DILocation(line: 1092, column: 3, scope: !3324)
!3333 = distinct !DISubprogram(name: "verify_reg_in_set", scope: !3, file: !3, line: 457, type: !3334, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!783, !826, !3114}
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342}
!3337 = !DILocalVariable(name: "op", arg: 1, scope: !3333, file: !3, line: 457, type: !826)
!3338 = !DILocalVariable(name: "pset", arg: 2, scope: !3333, file: !3, line: 457, type: !3114)
!3339 = !DILocalVariable(name: "regno", scope: !3333, file: !3, line: 459, type: !7)
!3340 = !DILocalVariable(name: "nregs", scope: !3333, file: !3, line: 459, type: !7)
!3341 = !DILocalVariable(name: "all_live", scope: !3333, file: !3, line: 460, type: !783)
!3342 = !DILocalVariable(name: "all_dead", scope: !3333, file: !3, line: 460, type: !783)
!3343 = !DILocation(line: 0, scope: !3333)
!3344 = !DILocation(line: 461, column: 8, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 461, column: 7)
!3346 = !DILocation(line: 461, column: 7, scope: !3333)
!3347 = !DILocation(line: 464, column: 11, scope: !3333)
!3348 = !DILocation(line: 465, column: 11, scope: !3333)
!3349 = !DILocation(line: 465, column: 35, scope: !3333)
!3350 = !DILocation(line: 467, column: 3, scope: !3333)
!3351 = !DILocation(line: 466, column: 12, scope: !3333)
!3352 = !DILocation(line: 467, column: 18, scope: !3333)
!3353 = !DILocation(line: 467, column: 15, scope: !3333)
!3354 = !DILocation(line: 468, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 468, column: 9)
!3356 = distinct !{!3356, !3350, !3357}
!3357 = !DILocation(line: 471, column: 18, scope: !3333)
!3358 = !DILocation(line: 472, column: 17, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 472, column: 7)
!3360 = !DILocation(line: 474, column: 26, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 473, column: 5)
!3362 = !DILocation(line: 475, column: 7, scope: !3361)
!3363 = !DILocation(line: 478, column: 1, scope: !3333)
!3364 = distinct !DISubprogram(name: "verify_reg_tracked", scope: !3, file: !3, line: 484, type: !3365, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!783, !826}
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "op", arg: 1, scope: !3364, file: !3, line: 484, type: !826)
!3369 = !DILocation(line: 0, scope: !3364)
!3370 = !DILocation(line: 486, column: 11, scope: !3364)
!3371 = !DILocation(line: 487, column: 4, scope: !3364)
!3372 = !DILocation(line: 487, column: 7, scope: !3364)
!3373 = !DILocation(line: 486, column: 3, scope: !3364)
!3374 = distinct !DISubprogram(name: "rhs_regno", scope: !561, file: !561, line: 1051, type: !3375, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3380)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!7, !3377}
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !827, line: 51, baseType: !3378)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "x", arg: 1, scope: !3374, file: !561, line: 1051, type: !3377)
!3382 = !DILocation(line: 0, scope: !3374)
!3383 = !DILocation(line: 1053, column: 10, scope: !3374)
!3384 = !DILocation(line: 1053, column: 3, scope: !3374)
!3385 = distinct !DISubprogram(name: "create_new_chain", scope: !3, file: !3, line: 517, type: !3386, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !7, !7, !1891, !826, !703}
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3389 = !DILocalVariable(name: "this_regno", arg: 1, scope: !3385, file: !3, line: 517, type: !7)
!3390 = !DILocalVariable(name: "this_nregs", arg: 2, scope: !3385, file: !3, line: 517, type: !7)
!3391 = !DILocalVariable(name: "loc", arg: 3, scope: !3385, file: !3, line: 517, type: !1891)
!3392 = !DILocalVariable(name: "insn", arg: 4, scope: !3385, file: !3, line: 518, type: !826)
!3393 = !DILocalVariable(name: "cl", arg: 5, scope: !3385, file: !3, line: 518, type: !703)
!3394 = !DILocalVariable(name: "head", scope: !3385, file: !3, line: 520, type: !816)
!3395 = !DILocalVariable(name: "this_du", scope: !3385, file: !3, line: 521, type: !821)
!3396 = !DILocalVariable(name: "nregs", scope: !3385, file: !3, line: 522, type: !784)
!3397 = !DILocation(line: 0, scope: !3385)
!3398 = !DILocation(line: 520, column: 26, scope: !3385)
!3399 = !DILocation(line: 524, column: 22, scope: !3385)
!3400 = !DILocation(line: 524, column: 20, scope: !3385)
!3401 = !DILocation(line: 525, column: 15, scope: !3385)
!3402 = !DILocation(line: 526, column: 9, scope: !3385)
!3403 = !DILocation(line: 526, column: 15, scope: !3385)
!3404 = !DILocation(line: 527, column: 9, scope: !3385)
!3405 = !DILocation(line: 527, column: 15, scope: !3385)
!3406 = !DILocation(line: 528, column: 9, scope: !3385)
!3407 = !DILocation(line: 528, column: 30, scope: !3385)
!3408 = !DILocation(line: 530, column: 20, scope: !3385)
!3409 = !DILocation(line: 532, column: 3, scope: !3385)
!3410 = !DILocation(line: 533, column: 24, scope: !3385)
!3411 = !DILocation(line: 533, column: 9, scope: !3385)
!3412 = !DILocation(line: 533, column: 12, scope: !3385)
!3413 = !DILocation(line: 535, column: 3, scope: !3385)
!3414 = !DILocation(line: 536, column: 3, scope: !3385)
!3415 = !DILocation(line: 537, column: 18, scope: !3385)
!3416 = !DILocation(line: 537, column: 37, scope: !3385)
!3417 = !DILocation(line: 537, column: 3, scope: !3385)
!3418 = !DILocation(line: 542, column: 17, scope: !3385)
!3419 = !DILocation(line: 543, column: 3, scope: !3385)
!3420 = !DILocation(line: 543, column: 15, scope: !3385)
!3421 = !DILocation(line: 543, column: 18, scope: !3385)
!3422 = !DILocation(line: 545, column: 7, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 544, column: 5)
!3424 = !DILocation(line: 546, column: 7, scope: !3423)
!3425 = distinct !{!3425, !3419, !3426}
!3426 = !DILocation(line: 547, column: 5, scope: !3385)
!3427 = !DILocation(line: 549, column: 3, scope: !3385)
!3428 = !DILocation(line: 550, column: 43, scope: !3385)
!3429 = !DILocation(line: 550, column: 3, scope: !3385)
!3430 = !DILocation(line: 552, column: 15, scope: !3385)
!3431 = !DILocation(line: 554, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 554, column: 7)
!3433 = !DILocation(line: 554, column: 7, scope: !3385)
!3434 = !DILocation(line: 557, column: 25, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 555, column: 5)
!3436 = !DILocation(line: 557, column: 9, scope: !3435)
!3437 = !DILocation(line: 557, column: 39, scope: !3435)
!3438 = !DILocation(line: 556, column: 7, scope: !3435)
!3439 = !DILocation(line: 558, column: 16, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 558, column: 11)
!3441 = !DILocation(line: 558, column: 11, scope: !3435)
!3442 = !DILocation(line: 559, column: 11, scope: !3440)
!3443 = !DILocation(line: 559, column: 37, scope: !3440)
!3444 = !DILocation(line: 559, column: 2, scope: !3440)
!3445 = !DILocation(line: 560, column: 16, scope: !3435)
!3446 = !DILocation(line: 560, column: 7, scope: !3435)
!3447 = !DILocation(line: 561, column: 5, scope: !3435)
!3448 = !DILocation(line: 563, column: 12, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 563, column: 7)
!3450 = !DILocation(line: 563, column: 7, scope: !3385)
!3451 = !DILocation(line: 565, column: 27, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 564, column: 5)
!3453 = !DILocation(line: 565, column: 32, scope: !3452)
!3454 = !DILocation(line: 565, column: 13, scope: !3452)
!3455 = !DILocation(line: 565, column: 19, scope: !3452)
!3456 = !DILocation(line: 566, column: 7, scope: !3452)
!3457 = !DILocation(line: 569, column: 13, scope: !3385)
!3458 = !DILocation(line: 570, column: 23, scope: !3385)
!3459 = !DILocation(line: 570, column: 28, scope: !3385)
!3460 = !DILocation(line: 570, column: 9, scope: !3385)
!3461 = !DILocation(line: 570, column: 15, scope: !3385)
!3462 = !DILocation(line: 572, column: 12, scope: !3385)
!3463 = !DILocation(line: 572, column: 21, scope: !3385)
!3464 = !DILocation(line: 573, column: 12, scope: !3385)
!3465 = !DILocation(line: 573, column: 16, scope: !3385)
!3466 = !DILocation(line: 574, column: 12, scope: !3385)
!3467 = !DILocation(line: 574, column: 17, scope: !3385)
!3468 = !DILocation(line: 575, column: 12, scope: !3385)
!3469 = !DILocation(line: 575, column: 15, scope: !3385)
!3470 = !DILocation(line: 576, column: 1, scope: !3385)
!3471 = distinct !DISubprogram(name: "hide_operands", scope: !3, file: !3, line: 972, type: !3472, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !784, !1891, !1891, !800, !783}
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3475 = !DILocalVariable(name: "n_ops", arg: 1, scope: !3471, file: !3, line: 972, type: !784)
!3476 = !DILocalVariable(name: "old_operands", arg: 2, scope: !3471, file: !3, line: 972, type: !1891)
!3477 = !DILocalVariable(name: "old_dups", arg: 3, scope: !3471, file: !3, line: 972, type: !1891)
!3478 = !DILocalVariable(name: "do_not_hide", arg: 4, scope: !3471, file: !3, line: 973, type: !800)
!3479 = !DILocalVariable(name: "inout_and_ec_only", arg: 5, scope: !3471, file: !3, line: 973, type: !783)
!3480 = !DILocalVariable(name: "i", scope: !3471, file: !3, line: 975, type: !784)
!3481 = !DILocalVariable(name: "alt", scope: !3471, file: !3, line: 976, type: !784)
!3482 = !DILocalVariable(name: "opn", scope: !3483, file: !3, line: 993, type: !784)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 992, column: 5)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 991, column: 3)
!3485 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 991, column: 3)
!3486 = !DILocation(line: 0, scope: !3471)
!3487 = !DILocation(line: 976, column: 13, scope: !3471)
!3488 = !DILocation(line: 0, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 987, column: 11)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 978, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 977, column: 3)
!3492 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 977, column: 3)
!3493 = !DILocation(line: 977, column: 8, scope: !3492)
!3494 = !DILocation(line: 0, scope: !3492)
!3495 = !DILocation(line: 977, column: 17, scope: !3491)
!3496 = !DILocation(line: 977, column: 3, scope: !3492)
!3497 = !DILocation(line: 979, column: 25, scope: !3490)
!3498 = !DILocation(line: 979, column: 7, scope: !3490)
!3499 = !DILocation(line: 979, column: 23, scope: !3490)
!3500 = !DILocation(line: 983, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 983, column: 11)
!3502 = !DILocation(line: 983, column: 40, scope: !3501)
!3503 = !DILocation(line: 983, column: 11, scope: !3490)
!3504 = !DILocation(line: 985, column: 28, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 985, column: 11)
!3506 = !DILocation(line: 985, column: 25, scope: !3505)
!3507 = !DILocation(line: 985, column: 23, scope: !3505)
!3508 = !DILocation(line: 985, column: 11, scope: !3490)
!3509 = !DILocation(line: 989, column: 31, scope: !3489)
!3510 = !DILocation(line: 989, column: 3, scope: !3489)
!3511 = !DILocation(line: 989, column: 29, scope: !3489)
!3512 = !DILocation(line: 989, column: 2, scope: !3489)
!3513 = !DILocation(line: 977, column: 27, scope: !3491)
!3514 = !DILocation(line: 977, column: 3, scope: !3491)
!3515 = distinct !{!3515, !3496, !3516}
!3516 = !DILocation(line: 990, column: 5, scope: !3492)
!3517 = !DILocation(line: 0, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 997, column: 11)
!3519 = !DILocation(line: 991, column: 3, scope: !3485)
!3520 = !DILocation(line: 0, scope: !3485)
!3521 = !DILocation(line: 991, column: 30, scope: !3484)
!3522 = !DILocation(line: 991, column: 17, scope: !3484)
!3523 = !DILocation(line: 993, column: 17, scope: !3483)
!3524 = !DILocation(line: 0, scope: !3483)
!3525 = !DILocation(line: 994, column: 22, scope: !3483)
!3526 = !DILocation(line: 994, column: 21, scope: !3483)
!3527 = !DILocation(line: 994, column: 7, scope: !3483)
!3528 = !DILocation(line: 994, column: 19, scope: !3483)
!3529 = !DILocation(line: 995, column: 28, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 995, column: 11)
!3531 = !DILocation(line: 995, column: 25, scope: !3530)
!3532 = !DILocation(line: 995, column: 23, scope: !3530)
!3533 = !DILocation(line: 995, column: 11, scope: !3483)
!3534 = !DILocation(line: 999, column: 27, scope: !3518)
!3535 = !DILocation(line: 999, column: 3, scope: !3518)
!3536 = !DILocation(line: 999, column: 25, scope: !3518)
!3537 = !DILocation(line: 999, column: 2, scope: !3518)
!3538 = !DILocation(line: 991, column: 39, scope: !3484)
!3539 = !DILocation(line: 991, column: 3, scope: !3484)
!3540 = distinct !{!3540, !3519, !3541}
!3541 = !DILocation(line: 1000, column: 5, scope: !3485)
!3542 = !DILocation(line: 1001, column: 1, scope: !3471)
!3543 = !DILocation(line: 987, column: 33, scope: !3489)
!3544 = !DILocation(line: 987, column: 60, scope: !3489)
!3545 = !DILocation(line: 988, column: 4, scope: !3489)
!3546 = !DILocation(line: 988, column: 28, scope: !3489)
!3547 = !DILocation(line: 988, column: 7, scope: !3489)
!3548 = !DILocation(line: 987, column: 11, scope: !3490)
!3549 = !DILocation(line: 997, column: 33, scope: !3518)
!3550 = !DILocation(line: 997, column: 62, scope: !3518)
!3551 = !DILocation(line: 998, column: 4, scope: !3518)
!3552 = !DILocation(line: 998, column: 30, scope: !3518)
!3553 = !DILocation(line: 998, column: 7, scope: !3518)
!3554 = !DILocation(line: 997, column: 11, scope: !3483)
!3555 = distinct !DISubprogram(name: "note_sets_clobbers", scope: !3, file: !3, line: 496, type: !3556, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !826, !3377, !788}
!3558 = !{!3559, !3560, !3561, !3562, !3563}
!3559 = !DILocalVariable(name: "x", arg: 1, scope: !3555, file: !3, line: 496, type: !826)
!3560 = !DILocalVariable(name: "set", arg: 2, scope: !3555, file: !3, line: 496, type: !3377)
!3561 = !DILocalVariable(name: "data", arg: 3, scope: !3555, file: !3, line: 496, type: !788)
!3562 = !DILocalVariable(name: "code", scope: !3555, file: !3, line: 498, type: !560)
!3563 = !DILocalVariable(name: "chain", scope: !3555, file: !3, line: 499, type: !816)
!3564 = !DILocation(line: 0, scope: !3555)
!3565 = !DILocation(line: 498, column: 25, scope: !3555)
!3566 = !DILocation(line: 498, column: 24, scope: !3555)
!3567 = !DILocation(line: 501, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 501, column: 7)
!3569 = !DILocation(line: 501, column: 20, scope: !3568)
!3570 = !DILocation(line: 501, column: 7, scope: !3555)
!3571 = !DILocation(line: 502, column: 9, scope: !3568)
!3572 = !DILocation(line: 0, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 503, column: 7)
!3574 = !DILocation(line: 503, column: 8, scope: !3573)
!3575 = !DILocation(line: 502, column: 5, scope: !3568)
!3576 = !DILocation(line: 503, column: 18, scope: !3573)
!3577 = !DILocation(line: 503, column: 21, scope: !3573)
!3578 = !DILocation(line: 503, column: 36, scope: !3573)
!3579 = !DILocation(line: 503, column: 7, scope: !3555)
!3580 = !DILocation(line: 506, column: 3, scope: !3555)
!3581 = !DILocation(line: 507, column: 41, scope: !3555)
!3582 = !DILocation(line: 507, column: 55, scope: !3555)
!3583 = !DILocation(line: 507, column: 3, scope: !3555)
!3584 = !DILocation(line: 508, column: 8, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 508, column: 3)
!3586 = !DILocation(line: 0, scope: !3585)
!3587 = !DILocation(line: 508, column: 3, scope: !3585)
!3588 = !DILocation(line: 509, column: 34, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 508, column: 3)
!3590 = !DILocation(line: 509, column: 50, scope: !3589)
!3591 = !DILocation(line: 509, column: 64, scope: !3589)
!3592 = !DILocation(line: 509, column: 5, scope: !3589)
!3593 = !DILocation(line: 508, column: 51, scope: !3589)
!3594 = !DILocation(line: 508, column: 3, scope: !3589)
!3595 = distinct !{!3595, !3587, !3596}
!3596 = !DILocation(line: 509, column: 73, scope: !3585)
!3597 = !DILocation(line: 510, column: 1, scope: !3555)
!3598 = distinct !DISubprogram(name: "restore_operands", scope: !3, file: !3, line: 1007, type: !3599, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !826, !784, !1891, !1891}
!3601 = !{!3602, !3603, !3604, !3605, !3606}
!3602 = !DILocalVariable(name: "insn", arg: 1, scope: !3598, file: !3, line: 1007, type: !826)
!3603 = !DILocalVariable(name: "n_ops", arg: 2, scope: !3598, file: !3, line: 1007, type: !784)
!3604 = !DILocalVariable(name: "old_operands", arg: 3, scope: !3598, file: !3, line: 1007, type: !1891)
!3605 = !DILocalVariable(name: "old_dups", arg: 4, scope: !3598, file: !3, line: 1007, type: !1891)
!3606 = !DILocalVariable(name: "i", scope: !3598, file: !3, line: 1009, type: !784)
!3607 = !DILocation(line: 0, scope: !3598)
!3608 = !DILocation(line: 1010, column: 8, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1010, column: 3)
!3610 = !DILocation(line: 0, scope: !3609)
!3611 = !DILocation(line: 1010, column: 30, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 1010, column: 3)
!3613 = !DILocation(line: 1010, column: 17, scope: !3612)
!3614 = !DILocation(line: 1010, column: 3, scope: !3609)
!3615 = !DILocation(line: 1012, column: 3, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1012, column: 3)
!3617 = !DILocation(line: 1011, column: 30, scope: !3612)
!3618 = !DILocation(line: 1011, column: 6, scope: !3612)
!3619 = !DILocation(line: 1011, column: 28, scope: !3612)
!3620 = !DILocation(line: 1010, column: 39, scope: !3612)
!3621 = !DILocation(line: 1010, column: 3, scope: !3612)
!3622 = distinct !{!3622, !3614, !3623}
!3623 = !DILocation(line: 1011, column: 40, scope: !3609)
!3624 = !DILocation(line: 0, scope: !3616)
!3625 = !DILocation(line: 1012, column: 17, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1012, column: 3)
!3627 = !DILocation(line: 1013, column: 34, scope: !3626)
!3628 = !DILocation(line: 1013, column: 6, scope: !3626)
!3629 = !DILocation(line: 1013, column: 32, scope: !3626)
!3630 = !DILocation(line: 1012, column: 27, scope: !3626)
!3631 = !DILocation(line: 1012, column: 3, scope: !3626)
!3632 = distinct !{!3632, !3615, !3633}
!3633 = !DILocation(line: 1013, column: 48, scope: !3616)
!3634 = !DILocation(line: 1014, column: 18, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1014, column: 7)
!3636 = !DILocation(line: 1014, column: 7, scope: !3635)
!3637 = !DILocation(line: 1014, column: 7, scope: !3598)
!3638 = !DILocation(line: 1015, column: 5, scope: !3635)
!3639 = !DILocation(line: 1016, column: 1, scope: !3598)
!3640 = distinct !DISubprogram(name: "record_out_operands", scope: !3, file: !3, line: 1023, type: !3641, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !826, !783}
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3653, !3654, !3655, !3656}
!3644 = !DILocalVariable(name: "insn", arg: 1, scope: !3640, file: !3, line: 1023, type: !826)
!3645 = !DILocalVariable(name: "earlyclobber", arg: 2, scope: !3640, file: !3, line: 1023, type: !783)
!3646 = !DILocalVariable(name: "n_ops", scope: !3640, file: !3, line: 1025, type: !784)
!3647 = !DILocalVariable(name: "alt", scope: !3640, file: !3, line: 1026, type: !784)
!3648 = !DILocalVariable(name: "i", scope: !3640, file: !3, line: 1028, type: !784)
!3649 = !DILocalVariable(name: "opn", scope: !3650, file: !3, line: 1032, type: !784)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1031, column: 5)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1030, column: 3)
!3652 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1030, column: 3)
!3653 = !DILocalVariable(name: "loc", scope: !3650, file: !3, line: 1033, type: !1891)
!3654 = !DILocalVariable(name: "op", scope: !3650, file: !3, line: 1036, type: !826)
!3655 = !DILocalVariable(name: "cl", scope: !3650, file: !3, line: 1037, type: !703)
!3656 = !DILocalVariable(name: "prev_open", scope: !3650, file: !3, line: 1039, type: !816)
!3657 = !DILocation(line: 0, scope: !3640)
!3658 = !DILocation(line: 1025, column: 26, scope: !3640)
!3659 = !DILocation(line: 1025, column: 15, scope: !3640)
!3660 = !DILocation(line: 1026, column: 13, scope: !3640)
!3661 = !DILocation(line: 0, scope: !3650)
!3662 = !DILocation(line: 0, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1053, column: 11)
!3664 = !DILocation(line: 1030, column: 8, scope: !3652)
!3665 = !DILocation(line: 0, scope: !3652)
!3666 = !DILocation(line: 1030, column: 38, scope: !3651)
!3667 = !DILocation(line: 1030, column: 27, scope: !3651)
!3668 = !DILocation(line: 1030, column: 25, scope: !3651)
!3669 = !DILocation(line: 1030, column: 17, scope: !3651)
!3670 = !DILocation(line: 1030, column: 3, scope: !3652)
!3671 = !DILocation(line: 1032, column: 19, scope: !3650)
!3672 = !DILocation(line: 1032, column: 17, scope: !3650)
!3673 = !DILocation(line: 1032, column: 54, scope: !3650)
!3674 = !DILocation(line: 1032, column: 33, scope: !3650)
!3675 = !DILocation(line: 1033, column: 19, scope: !3650)
!3676 = !DILocation(line: 1034, column: 7, scope: !3650)
!3677 = !DILocation(line: 1035, column: 28, scope: !3650)
!3678 = !DILocation(line: 1035, column: 7, scope: !3650)
!3679 = !DILocation(line: 1037, column: 27, scope: !3650)
!3680 = !DILocation(line: 1036, column: 16, scope: !3650)
!3681 = !DILocation(line: 1037, column: 50, scope: !3650)
!3682 = !DILocation(line: 1041, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1041, column: 11)
!3684 = !DILocation(line: 1041, column: 40, scope: !3683)
!3685 = !DILocation(line: 1042, column: 4, scope: !3683)
!3686 = !DILocation(line: 1042, column: 30, scope: !3683)
!3687 = !DILocation(line: 1042, column: 43, scope: !3683)
!3688 = !DILocation(line: 1041, column: 11, scope: !3650)
!3689 = !DILocation(line: 1045, column: 19, scope: !3650)
!3690 = !DILocation(line: 1046, column: 7, scope: !3650)
!3691 = !DILocation(line: 1053, column: 11, scope: !3663)
!3692 = !DILocation(line: 1054, column: 4, scope: !3663)
!3693 = !DILocation(line: 1054, column: 23, scope: !3663)
!3694 = !DILocation(line: 1054, column: 8, scope: !3663)
!3695 = !DILocation(line: 1054, column: 39, scope: !3663)
!3696 = !DILocation(line: 1055, column: 8, scope: !3663)
!3697 = !DILocation(line: 1055, column: 11, scope: !3663)
!3698 = !DILocation(line: 1056, column: 8, scope: !3663)
!3699 = !DILocation(line: 1056, column: 11, scope: !3663)
!3700 = !DILocation(line: 1056, column: 25, scope: !3663)
!3701 = !DILocation(line: 1056, column: 22, scope: !3663)
!3702 = !DILocation(line: 1053, column: 11, scope: !3650)
!3703 = !DILocation(line: 1058, column: 21, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 1058, column: 8)
!3705 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 1057, column: 2)
!3706 = !DILocation(line: 1058, column: 18, scope: !3704)
!3707 = !DILocation(line: 1058, column: 8, scope: !3705)
!3708 = !DILocation(line: 1059, column: 19, scope: !3704)
!3709 = !DILocation(line: 1059, column: 33, scope: !3704)
!3710 = !DILocation(line: 1059, column: 6, scope: !3704)
!3711 = !DILocation(line: 1030, column: 47, scope: !3651)
!3712 = !DILocation(line: 1030, column: 3, scope: !3651)
!3713 = distinct !{!3713, !3670, !3714}
!3714 = !DILocation(line: 1061, column: 5, scope: !3652)
!3715 = !DILocation(line: 1062, column: 1, scope: !3640)
!3716 = distinct !DISubprogram(name: "scan_rtx", scope: !3, file: !3, line: 875, type: !3717, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !826, !1891, !703, !773, !733}
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3720 = !DILocalVariable(name: "insn", arg: 1, scope: !3716, file: !3, line: 875, type: !826)
!3721 = !DILocalVariable(name: "loc", arg: 2, scope: !3716, file: !3, line: 875, type: !1891)
!3722 = !DILocalVariable(name: "cl", arg: 3, scope: !3716, file: !3, line: 875, type: !703)
!3723 = !DILocalVariable(name: "action", arg: 4, scope: !3716, file: !3, line: 875, type: !773)
!3724 = !DILocalVariable(name: "type", arg: 5, scope: !3716, file: !3, line: 876, type: !733)
!3725 = !DILocalVariable(name: "fmt", scope: !3716, file: !3, line: 878, type: !789)
!3726 = !DILocalVariable(name: "x", scope: !3716, file: !3, line: 879, type: !826)
!3727 = !DILocalVariable(name: "code", scope: !3716, file: !3, line: 880, type: !560)
!3728 = !DILocalVariable(name: "i", scope: !3716, file: !3, line: 881, type: !784)
!3729 = !DILocalVariable(name: "j", scope: !3716, file: !3, line: 881, type: !784)
!3730 = !DILocation(line: 0, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 885, column: 5)
!3732 = !DILocation(line: 946, column: 2, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 945, column: 11)
!3734 = !DILocation(line: 879, column: 11, scope: !3716)
!3735 = !DILocation(line: 884, column: 3, scope: !3716)
!3736 = !DILocation(line: 0, scope: !3716)
!3737 = !DILocation(line: 883, column: 10, scope: !3716)
!3738 = !DILocation(line: 898, column: 7, scope: !3731)
!3739 = !DILocation(line: 899, column: 7, scope: !3731)
!3740 = !DILocation(line: 902, column: 32, scope: !3731)
!3741 = !DILocation(line: 903, column: 20, scope: !3731)
!3742 = !DILocation(line: 903, column: 4, scope: !3731)
!3743 = !DILocation(line: 904, column: 4, scope: !3731)
!3744 = !DILocation(line: 902, column: 7, scope: !3731)
!3745 = !DILocation(line: 905, column: 7, scope: !3731)
!3746 = !DILocation(line: 908, column: 24, scope: !3731)
!3747 = !DILocation(line: 908, column: 7, scope: !3731)
!3748 = !DILocation(line: 909, column: 24, scope: !3731)
!3749 = !DILocation(line: 910, column: 4, scope: !3731)
!3750 = !DILocation(line: 910, column: 30, scope: !3731)
!3751 = !DILocation(line: 911, column: 4, scope: !3731)
!3752 = !DILocation(line: 911, column: 27, scope: !3731)
!3753 = !DILocation(line: 911, column: 7, scope: !3731)
!3754 = !DILocation(line: 909, column: 7, scope: !3731)
!3755 = !DILocation(line: 915, column: 24, scope: !3731)
!3756 = !DILocation(line: 916, column: 23, scope: !3731)
!3757 = !DILocation(line: 916, column: 3, scope: !3731)
!3758 = !DILocation(line: 915, column: 7, scope: !3731)
!3759 = !DILocation(line: 921, column: 24, scope: !3731)
!3760 = !DILocation(line: 922, column: 9, scope: !3731)
!3761 = !DILocation(line: 922, column: 4, scope: !3731)
!3762 = !DILocation(line: 923, column: 24, scope: !3731)
!3763 = !DILocation(line: 923, column: 4, scope: !3731)
!3764 = !DILocation(line: 921, column: 7, scope: !3731)
!3765 = !DILocation(line: 924, column: 24, scope: !3731)
!3766 = !DILocation(line: 924, column: 7, scope: !3731)
!3767 = !DILocation(line: 925, column: 24, scope: !3731)
!3768 = !DILocation(line: 925, column: 7, scope: !3731)
!3769 = !DILocation(line: 935, column: 7, scope: !3731)
!3770 = !DILocation(line: 938, column: 24, scope: !3731)
!3771 = !DILocation(line: 939, column: 4, scope: !3731)
!3772 = !DILocation(line: 939, column: 30, scope: !3731)
!3773 = !DILocation(line: 940, column: 4, scope: !3731)
!3774 = !DILocation(line: 940, column: 27, scope: !3731)
!3775 = !DILocation(line: 940, column: 7, scope: !3731)
!3776 = !DILocation(line: 938, column: 7, scope: !3731)
!3777 = !DILocation(line: 944, column: 24, scope: !3731)
!3778 = !DILocation(line: 944, column: 7, scope: !3731)
!3779 = !DILocation(line: 945, column: 11, scope: !3733)
!3780 = !DILocation(line: 945, column: 11, scope: !3731)
!3781 = !DILocation(line: 953, column: 9, scope: !3716)
!3782 = !DILocation(line: 954, column: 12, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 954, column: 3)
!3784 = !DILocation(line: 0, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 959, column: 2)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 958, column: 16)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 956, column: 11)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 955, column: 5)
!3789 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 954, column: 3)
!3790 = !DILocation(line: 954, column: 8, scope: !3783)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 954, column: 41, scope: !3789)
!3793 = !DILocation(line: 954, column: 3, scope: !3783)
!3794 = !DILocation(line: 956, column: 11, scope: !3787)
!3795 = !DILocation(line: 956, column: 18, scope: !3787)
!3796 = !DILocation(line: 956, column: 11, scope: !3788)
!3797 = !DILocation(line: 957, column: 19, scope: !3787)
!3798 = !DILocation(line: 957, column: 2, scope: !3787)
!3799 = !DILocation(line: 958, column: 23, scope: !3786)
!3800 = !DILocation(line: 958, column: 16, scope: !3787)
!3801 = !DILocation(line: 959, column: 11, scope: !3785)
!3802 = !DILocation(line: 959, column: 7, scope: !3785)
!3803 = !DILocation(line: 959, column: 33, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 959, column: 2)
!3805 = !DILocation(line: 959, column: 2, scope: !3785)
!3806 = !DILocation(line: 960, column: 21, scope: !3804)
!3807 = !DILocation(line: 960, column: 4, scope: !3804)
!3808 = !DILocation(line: 959, column: 2, scope: !3804)
!3809 = distinct !{!3809, !3805, !3810}
!3810 = !DILocation(line: 960, column: 56, scope: !3785)
!3811 = !DILocation(line: 954, column: 3, scope: !3789)
!3812 = distinct !{!3812, !3793, !3813}
!3813 = !DILocation(line: 961, column: 5, scope: !3783)
!3814 = !DILocation(line: 962, column: 1, scope: !3716)
!3815 = distinct !DISubprogram(name: "scan_rtx_address", scope: !3, file: !3, line: 728, type: !3816, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !826, !1891, !703, !773, !189}
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3847, !3848}
!3819 = !DILocalVariable(name: "insn", arg: 1, scope: !3815, file: !3, line: 728, type: !826)
!3820 = !DILocalVariable(name: "loc", arg: 2, scope: !3815, file: !3, line: 728, type: !1891)
!3821 = !DILocalVariable(name: "cl", arg: 3, scope: !3815, file: !3, line: 728, type: !703)
!3822 = !DILocalVariable(name: "action", arg: 4, scope: !3815, file: !3, line: 729, type: !773)
!3823 = !DILocalVariable(name: "mode", arg: 5, scope: !3815, file: !3, line: 729, type: !189)
!3824 = !DILocalVariable(name: "x", scope: !3815, file: !3, line: 731, type: !826)
!3825 = !DILocalVariable(name: "code", scope: !3815, file: !3, line: 732, type: !560)
!3826 = !DILocalVariable(name: "fmt", scope: !3815, file: !3, line: 733, type: !789)
!3827 = !DILocalVariable(name: "i", scope: !3815, file: !3, line: 734, type: !784)
!3828 = !DILocalVariable(name: "j", scope: !3815, file: !3, line: 734, type: !784)
!3829 = !DILocalVariable(name: "orig_op0", scope: !3830, file: !3, line: 743, type: !826)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 742, column: 7)
!3831 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 740, column: 5)
!3832 = !DILocalVariable(name: "orig_op1", scope: !3830, file: !3, line: 744, type: !826)
!3833 = !DILocalVariable(name: "code0", scope: !3830, file: !3, line: 745, type: !560)
!3834 = !DILocalVariable(name: "code1", scope: !3830, file: !3, line: 746, type: !560)
!3835 = !DILocalVariable(name: "op0", scope: !3830, file: !3, line: 747, type: !826)
!3836 = !DILocalVariable(name: "op1", scope: !3830, file: !3, line: 748, type: !826)
!3837 = !DILocalVariable(name: "locI", scope: !3830, file: !3, line: 749, type: !1891)
!3838 = !DILocalVariable(name: "locB", scope: !3830, file: !3, line: 750, type: !1891)
!3839 = !DILocalVariable(name: "index_code", scope: !3830, file: !3, line: 751, type: !560)
!3840 = !DILocalVariable(name: "index_op", scope: !3841, file: !3, line: 793, type: !784)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 792, column: 4)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 791, column: 11)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 785, column: 11)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 779, column: 11)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 772, column: 11)
!3846 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 765, column: 6)
!3847 = !DILocalVariable(name: "regno0", scope: !3841, file: !3, line: 794, type: !7)
!3848 = !DILocalVariable(name: "regno1", scope: !3841, file: !3, line: 794, type: !7)
!3849 = !DILocation(line: 0, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 736, column: 7)
!3851 = !DILocation(line: 830, column: 4, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 829, column: 6)
!3853 = !DILocation(line: 736, column: 28, scope: !3850)
!3854 = !DILocation(line: 0, scope: !3815)
!3855 = !DILocation(line: 731, column: 11, scope: !3815)
!3856 = !DILocation(line: 732, column: 19, scope: !3815)
!3857 = !DILocation(line: 739, column: 3, scope: !3815)
!3858 = !DILocation(line: 743, column: 17, scope: !3830)
!3859 = !DILocation(line: 0, scope: !3830)
!3860 = !DILocation(line: 744, column: 17, scope: !3830)
!3861 = !DILocation(line: 745, column: 19, scope: !3830)
!3862 = !DILocation(line: 746, column: 19, scope: !3830)
!3863 = !DILocation(line: 753, column: 6, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 753, column: 6)
!3865 = !DILocation(line: 753, column: 21, scope: !3864)
!3866 = !DILocation(line: 753, column: 6, scope: !3830)
!3867 = !DILocation(line: 755, column: 12, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 754, column: 4)
!3869 = !DILocation(line: 756, column: 14, scope: !3868)
!3870 = !DILocation(line: 757, column: 4, scope: !3868)
!3871 = !DILocation(line: 759, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 759, column: 6)
!3873 = !DILocation(line: 759, column: 21, scope: !3872)
!3874 = !DILocation(line: 759, column: 6, scope: !3830)
!3875 = !DILocation(line: 761, column: 12, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 760, column: 4)
!3877 = !DILocation(line: 762, column: 14, scope: !3876)
!3878 = !DILocation(line: 763, column: 4, scope: !3876)
!3879 = !DILocation(line: 765, column: 20, scope: !3846)
!3880 = !DILocation(line: 765, column: 6, scope: !3830)
!3881 = !DILocation(line: 771, column: 4, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 767, column: 4)
!3883 = !DILocation(line: 772, column: 11, scope: !3846)
!3884 = !DILocation(line: 778, column: 4, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 774, column: 4)
!3886 = !DILocation(line: 784, column: 4, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 781, column: 4)
!3888 = !DILocation(line: 785, column: 30, scope: !3843)
!3889 = !DILocation(line: 790, column: 4, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 787, column: 4)
!3891 = !DILocation(line: 791, column: 17, scope: !3842)
!3892 = !DILocation(line: 791, column: 33, scope: !3842)
!3893 = !DILocation(line: 791, column: 24, scope: !3842)
!3894 = !DILocation(line: 794, column: 24, scope: !3841)
!3895 = !DILocation(line: 0, scope: !3841)
!3896 = !DILocation(line: 794, column: 46, scope: !3841)
!3897 = !DILocation(line: 796, column: 10, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 796, column: 10)
!3899 = !DILocation(line: 797, column: 3, scope: !3898)
!3900 = !DILocation(line: 797, column: 6, scope: !3898)
!3901 = !DILocation(line: 796, column: 10, scope: !3841)
!3902 = !DILocation(line: 799, column: 15, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 799, column: 15)
!3904 = !DILocation(line: 800, column: 8, scope: !3903)
!3905 = !DILocation(line: 800, column: 11, scope: !3903)
!3906 = !DILocation(line: 799, column: 15, scope: !3898)
!3907 = !DILocation(line: 802, column: 15, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 802, column: 15)
!3909 = !DILocation(line: 803, column: 8, scope: !3908)
!3910 = !DILocation(line: 803, column: 11, scope: !3908)
!3911 = !DILocation(line: 802, column: 15, scope: !3903)
!3912 = !DILocation(line: 805, column: 15, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 805, column: 15)
!3914 = !DILocation(line: 0, scope: !3898)
!3915 = !DILocation(line: 810, column: 14, scope: !3841)
!3916 = !DILocation(line: 811, column: 14, scope: !3841)
!3917 = !DILocation(line: 812, column: 19, scope: !3841)
!3918 = !DILocation(line: 813, column: 4, scope: !3841)
!3919 = !DILocation(line: 814, column: 11, scope: !3842)
!3920 = !DILocation(line: 819, column: 4, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 815, column: 4)
!3922 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 814, column: 11)
!3923 = !DILocation(line: 820, column: 11, scope: !3922)
!3924 = !DILocation(line: 825, column: 4, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 821, column: 4)
!3926 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 820, column: 11)
!3927 = !DILocation(line: 0, scope: !3846)
!3928 = !DILocation(line: 827, column: 6, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 827, column: 6)
!3930 = !DILocation(line: 827, column: 6, scope: !3830)
!3931 = !DILocation(line: 828, column: 4, scope: !3929)
!3932 = !DILocation(line: 829, column: 6, scope: !3852)
!3933 = !DILocation(line: 829, column: 6, scope: !3830)
!3934 = !DILocation(line: 830, column: 34, scope: !3852)
!3935 = !DILocation(line: 850, column: 32, scope: !3831)
!3936 = !DILocation(line: 851, column: 20, scope: !3831)
!3937 = !DILocation(line: 851, column: 4, scope: !3831)
!3938 = !DILocation(line: 852, column: 4, scope: !3831)
!3939 = !DILocation(line: 850, column: 7, scope: !3831)
!3940 = !DILocation(line: 856, column: 7, scope: !3831)
!3941 = !DILocation(line: 857, column: 7, scope: !3831)
!3942 = !DILocation(line: 860, column: 7, scope: !3831)
!3943 = !DILocation(line: 863, column: 9, scope: !3815)
!3944 = !DILocation(line: 864, column: 12, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 864, column: 3)
!3946 = !DILocation(line: 0, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 869, column: 2)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 868, column: 16)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 866, column: 11)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 865, column: 5)
!3951 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 864, column: 3)
!3952 = !DILocation(line: 864, column: 8, scope: !3945)
!3953 = !DILocation(line: 0, scope: !3945)
!3954 = !DILocation(line: 864, column: 41, scope: !3951)
!3955 = !DILocation(line: 864, column: 3, scope: !3945)
!3956 = !DILocation(line: 866, column: 11, scope: !3949)
!3957 = !DILocation(line: 866, column: 18, scope: !3949)
!3958 = !DILocation(line: 866, column: 11, scope: !3950)
!3959 = !DILocation(line: 867, column: 27, scope: !3949)
!3960 = !DILocation(line: 867, column: 2, scope: !3949)
!3961 = !DILocation(line: 868, column: 23, scope: !3948)
!3962 = !DILocation(line: 868, column: 16, scope: !3949)
!3963 = !DILocation(line: 869, column: 11, scope: !3947)
!3964 = !DILocation(line: 869, column: 7, scope: !3947)
!3965 = !DILocation(line: 869, column: 33, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 869, column: 2)
!3967 = !DILocation(line: 869, column: 2, scope: !3947)
!3968 = !DILocation(line: 870, column: 29, scope: !3966)
!3969 = !DILocation(line: 870, column: 4, scope: !3966)
!3970 = !DILocation(line: 869, column: 2, scope: !3966)
!3971 = distinct !{!3971, !3967, !3972}
!3972 = !DILocation(line: 870, column: 64, scope: !3947)
!3973 = !DILocation(line: 864, column: 3, scope: !3951)
!3974 = distinct !{!3974, !3955, !3975}
!3975 = !DILocation(line: 871, column: 5, scope: !3945)
!3976 = !DILocation(line: 872, column: 1, scope: !3815)
!3977 = distinct !DISubprogram(name: "remove_from_hard_reg_set", scope: !3111, file: !3111, line: 321, type: !3112, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3978)
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "regs", arg: 1, scope: !3977, file: !3111, line: 321, type: !3114)
!3980 = !DILocalVariable(name: "mode", arg: 2, scope: !3977, file: !3111, line: 321, type: !189)
!3981 = !DILocalVariable(name: "regno", arg: 3, scope: !3977, file: !3111, line: 322, type: !7)
!3982 = !DILocalVariable(name: "end_regno", scope: !3977, file: !3111, line: 324, type: !7)
!3983 = !DILocation(line: 0, scope: !3977)
!3984 = !DILocation(line: 326, column: 15, scope: !3977)
!3985 = !DILocation(line: 328, column: 5, scope: !3977)
!3986 = !DILocation(line: 327, column: 3, scope: !3977)
!3987 = !DILocation(line: 329, column: 10, scope: !3977)
!3988 = !DILocation(line: 329, column: 18, scope: !3977)
!3989 = distinct !{!3989, !3986, !3990}
!3990 = !DILocation(line: 329, column: 29, scope: !3977)
!3991 = !DILocation(line: 330, column: 1, scope: !3977)
!3992 = distinct !DISubprogram(name: "df_scan_get_bb_info", scope: !1906, file: !1906, line: 1034, type: !3993, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!1904, !7}
!3995 = !{!3996}
!3996 = !DILocalVariable(name: "index", arg: 1, scope: !3992, file: !1906, line: 1034, type: !7)
!3997 = !DILocation(line: 0, scope: !3992)
!3998 = !DILocation(line: 1036, column: 15, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3992, file: !1906, line: 1036, column: 7)
!4000 = !DILocation(line: 1036, column: 24, scope: !3999)
!4001 = !DILocation(line: 1036, column: 13, scope: !3999)
!4002 = !DILocation(line: 1036, column: 7, scope: !3992)
!4003 = !DILocation(line: 1037, column: 48, scope: !3999)
!4004 = !DILocation(line: 1037, column: 39, scope: !3999)
!4005 = !DILocation(line: 1037, column: 5, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3999)
!4007 = !DILocation(line: 1040, column: 1, scope: !3992)
!4008 = distinct !DISubprogram(name: "VEC_du_head_p_heap_safe_push", scope: !3, file: !3, line: 126, type: !4009, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4013)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!4011, !4012, !815}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "vec_", arg: 1, scope: !4008, file: !3, line: 126, type: !4012)
!4015 = !DILocalVariable(name: "obj_", arg: 2, scope: !4008, file: !3, line: 126, type: !815)
!4016 = !DILocation(line: 0, scope: !4008)
!4017 = !DILocation(line: 126, column: 1, scope: !4008)
!4018 = distinct !DISubprogram(name: "mark_conflict", scope: !3, file: !3, line: 420, type: !4019, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !816, !7}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "chains", arg: 1, scope: !4018, file: !3, line: 420, type: !816)
!4023 = !DILocalVariable(name: "id", arg: 2, scope: !4018, file: !3, line: 420, type: !7)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocation(line: 422, column: 3, scope: !4018)
!4026 = !DILocation(line: 424, column: 32, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 423, column: 5)
!4028 = !DILocation(line: 424, column: 7, scope: !4027)
!4029 = !DILocation(line: 425, column: 24, scope: !4027)
!4030 = distinct !{!4030, !4025, !4031}
!4031 = !DILocation(line: 426, column: 5, scope: !4018)
!4032 = !DILocation(line: 427, column: 1, scope: !4018)
!4033 = distinct !DISubprogram(name: "VEC_du_head_p_heap_reserve", scope: !3, file: !3, line: 126, type: !4034, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!784, !4012, !784}
!4036 = !{!4037, !4038, !4039}
!4037 = !DILocalVariable(name: "vec_", arg: 1, scope: !4033, file: !3, line: 126, type: !4012)
!4038 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4033, file: !3, line: 126, type: !784)
!4039 = !DILocalVariable(name: "extend", scope: !4033, file: !3, line: 126, type: !784)
!4040 = !DILocation(line: 0, scope: !4033)
!4041 = !DILocation(line: 126, column: 1, scope: !4033)
!4042 = !DILocation(line: 126, column: 1, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 126, column: 1)
!4044 = distinct !DISubprogram(name: "VEC_du_head_p_base_quick_push", scope: !3, file: !3, line: 125, type: !4045, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!4011, !4047, !815}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!4048 = !{!4049, !4050, !4051}
!4049 = !DILocalVariable(name: "vec_", arg: 1, scope: !4044, file: !3, line: 125, type: !4047)
!4050 = !DILocalVariable(name: "obj_", arg: 2, scope: !4044, file: !3, line: 125, type: !815)
!4051 = !DILocalVariable(name: "slot_", scope: !4044, file: !3, line: 125, type: !4011)
!4052 = !DILocation(line: 0, scope: !4044)
!4053 = !DILocation(line: 125, column: 1, scope: !4044)
!4054 = distinct !DISubprogram(name: "VEC_du_head_p_base_space", scope: !3, file: !3, line: 125, type: !4055, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!784, !4047, !784}
!4057 = !{!4058, !4059}
!4058 = !DILocalVariable(name: "vec_", arg: 1, scope: !4054, file: !3, line: 125, type: !4047)
!4059 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4054, file: !3, line: 125, type: !784)
!4060 = !DILocation(line: 0, scope: !4054)
!4061 = !DILocation(line: 125, column: 1, scope: !4054)
!4062 = distinct !DISubprogram(name: "scan_rtx_reg", scope: !3, file: !3, line: 579, type: !3717, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069, !4071, !4072, !4073, !4074, !4075, !4079, !4080, !4081, !4082, !4083, !4090, !4092}
!4064 = !DILocalVariable(name: "insn", arg: 1, scope: !4062, file: !3, line: 579, type: !826)
!4065 = !DILocalVariable(name: "loc", arg: 2, scope: !4062, file: !3, line: 579, type: !1891)
!4066 = !DILocalVariable(name: "cl", arg: 3, scope: !4062, file: !3, line: 579, type: !703)
!4067 = !DILocalVariable(name: "action", arg: 4, scope: !4062, file: !3, line: 579, type: !773)
!4068 = !DILocalVariable(name: "type", arg: 5, scope: !4062, file: !3, line: 580, type: !733)
!4069 = !DILocalVariable(name: "p", scope: !4062, file: !3, line: 582, type: !4070)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!4071 = !DILocalVariable(name: "x", scope: !4062, file: !3, line: 583, type: !826)
!4072 = !DILocalVariable(name: "mode", scope: !4062, file: !3, line: 584, type: !189)
!4073 = !DILocalVariable(name: "this_regno", scope: !4062, file: !3, line: 585, type: !7)
!4074 = !DILocalVariable(name: "this_nregs", scope: !4062, file: !3, line: 586, type: !7)
!4075 = !DILocalVariable(name: "head", scope: !4076, file: !3, line: 600, type: !816)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 599, column: 5)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 598, column: 3)
!4078 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 598, column: 3)
!4079 = !DILocalVariable(name: "next", scope: !4076, file: !3, line: 601, type: !816)
!4080 = !DILocalVariable(name: "exact_match", scope: !4076, file: !3, line: 602, type: !784)
!4081 = !DILocalVariable(name: "superset", scope: !4076, file: !3, line: 604, type: !784)
!4082 = !DILocalVariable(name: "subset", scope: !4076, file: !3, line: 606, type: !784)
!4083 = !DILocalVariable(name: "nregs", scope: !4084, file: !3, line: 633, type: !7)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 632, column: 3)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 631, column: 12)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 624, column: 6)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 623, column: 8)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 618, column: 2)
!4089 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 617, column: 11)
!4090 = !DILocalVariable(name: "this_du", scope: !4091, file: !3, line: 653, type: !821)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 652, column: 6)
!4092 = !DILocalVariable(name: "nregs", scope: !4093, file: !3, line: 683, type: !7)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 682, column: 2)
!4094 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 680, column: 11)
!4095 = !DILocation(line: 0, scope: !4062)
!4096 = !DILocation(line: 583, column: 11, scope: !4062)
!4097 = !DILocation(line: 584, column: 28, scope: !4062)
!4098 = !DILocation(line: 585, column: 25, scope: !4062)
!4099 = !DILocation(line: 586, column: 25, scope: !4062)
!4100 = !DILocation(line: 588, column: 14, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 588, column: 7)
!4102 = !DILocation(line: 588, column: 7, scope: !4062)
!4103 = !DILocation(line: 590, column: 11, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 589, column: 5)
!4105 = !DILocation(line: 591, column: 2, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 590, column: 11)
!4107 = !DILocation(line: 595, column: 35, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 595, column: 7)
!4109 = !DILocation(line: 595, column: 64, scope: !4108)
!4110 = !DILocation(line: 595, column: 54, scope: !4108)
!4111 = !DILocation(line: 595, column: 24, scope: !4108)
!4112 = !DILocation(line: 595, column: 7, scope: !4062)
!4113 = !DILocation(line: 0, scope: !4076)
!4114 = !DILocation(line: 0, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 701, column: 16)
!4116 = !DILocation(line: 0, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 695, column: 8)
!4118 = !DILocation(line: 0, scope: !4087)
!4119 = !DILocation(line: 0, scope: !4091)
!4120 = !DILocation(line: 598, column: 3, scope: !4078)
!4121 = !DILocation(line: 0, scope: !4078)
!4122 = !DILocation(line: 598, column: 26, scope: !4077)
!4123 = !DILocation(line: 601, column: 36, scope: !4076)
!4124 = !DILocation(line: 602, column: 32, scope: !4076)
!4125 = !DILocation(line: 602, column: 38, scope: !4076)
!4126 = !DILocation(line: 603, column: 5, scope: !4076)
!4127 = !DILocation(line: 603, column: 14, scope: !4076)
!4128 = !DILocation(line: 603, column: 20, scope: !4076)
!4129 = !DILocation(line: 604, column: 34, scope: !4076)
!4130 = !DILocation(line: 605, column: 9, scope: !4076)
!4131 = !DILocation(line: 605, column: 59, scope: !4076)
!4132 = !DILocation(line: 605, column: 51, scope: !4076)
!4133 = !DILocation(line: 605, column: 36, scope: !4076)
!4134 = !DILocation(line: 606, column: 32, scope: !4076)
!4135 = !DILocation(line: 607, column: 9, scope: !4076)
!4136 = !DILocation(line: 607, column: 59, scope: !4076)
!4137 = !DILocation(line: 607, column: 51, scope: !4076)
!4138 = !DILocation(line: 607, column: 36, scope: !4076)
!4139 = !DILocation(line: 609, column: 17, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 609, column: 11)
!4141 = !DILocation(line: 609, column: 11, scope: !4140)
!4142 = !DILocation(line: 610, column: 4, scope: !4140)
!4143 = !DILocation(line: 610, column: 27, scope: !4140)
!4144 = !DILocation(line: 610, column: 19, scope: !4140)
!4145 = !DILocation(line: 610, column: 33, scope: !4140)
!4146 = !DILocation(line: 611, column: 4, scope: !4140)
!4147 = !DILocation(line: 611, column: 31, scope: !4140)
!4148 = !DILocation(line: 609, column: 11, scope: !4076)
!4149 = !DILocation(line: 613, column: 15, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 612, column: 2)
!4151 = !DILocation(line: 614, column: 4, scope: !4150)
!4152 = distinct !{!4152, !4120, !4153}
!4153 = !DILocation(line: 721, column: 5, scope: !4078)
!4154 = !DILocation(line: 617, column: 31, scope: !4089)
!4155 = !DILocation(line: 623, column: 22, scope: !4087)
!4156 = !DILocation(line: 623, column: 39, scope: !4087)
!4157 = !DILocation(line: 623, column: 43, scope: !4087)
!4158 = !DILocation(line: 623, column: 8, scope: !4088)
!4159 = !DILocation(line: 625, column: 12, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 625, column: 12)
!4161 = !DILocation(line: 625, column: 12, scope: !4086)
!4162 = !DILocation(line: 628, column: 5, scope: !4160)
!4163 = !DILocation(line: 628, column: 35, scope: !4160)
!4164 = !DILocation(line: 628, column: 39, scope: !4160)
!4165 = !DILocation(line: 629, column: 5, scope: !4160)
!4166 = !DILocation(line: 626, column: 3, scope: !4160)
!4167 = !DILocation(line: 630, column: 28, scope: !4086)
!4168 = !DILocation(line: 631, column: 12, scope: !4086)
!4169 = !DILocation(line: 0, scope: !4084)
!4170 = !DILocation(line: 634, column: 17, scope: !4084)
!4171 = !DILocation(line: 635, column: 17, scope: !4084)
!4172 = !DILocation(line: 636, column: 5, scope: !4084)
!4173 = !DILocation(line: 636, column: 20, scope: !4084)
!4174 = !DILocation(line: 636, column: 17, scope: !4084)
!4175 = !DILocation(line: 637, column: 7, scope: !4084)
!4176 = distinct !{!4176, !4172, !4175}
!4177 = !DILocation(line: 638, column: 9, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 638, column: 9)
!4179 = !DILocation(line: 638, column: 9, scope: !4084)
!4180 = !DILocation(line: 641, column: 9, scope: !4178)
!4181 = !DILocation(line: 641, column: 39, scope: !4178)
!4182 = !DILocation(line: 641, column: 43, scope: !4178)
!4183 = !DILocation(line: 639, column: 7, scope: !4178)
!4184 = !DILocation(line: 643, column: 17, scope: !4085)
!4185 = !DILocation(line: 645, column: 24, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 644, column: 3)
!4187 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 643, column: 17)
!4188 = !DILocation(line: 646, column: 9, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 646, column: 9)
!4190 = !DILocation(line: 646, column: 9, scope: !4186)
!4191 = !DILocation(line: 647, column: 7, scope: !4189)
!4192 = !DILocation(line: 654, column: 18, scope: !4091)
!4193 = !DILocation(line: 655, column: 17, scope: !4091)
!4194 = !DILocation(line: 655, column: 26, scope: !4091)
!4195 = !DILocation(line: 656, column: 17, scope: !4091)
!4196 = !DILocation(line: 656, column: 21, scope: !4091)
!4197 = !DILocation(line: 657, column: 17, scope: !4091)
!4198 = !DILocation(line: 657, column: 22, scope: !4091)
!4199 = !DILocation(line: 658, column: 17, scope: !4091)
!4200 = !DILocation(line: 658, column: 20, scope: !4091)
!4201 = !DILocation(line: 659, column: 18, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 659, column: 12)
!4203 = !DILocation(line: 659, column: 24, scope: !4202)
!4204 = !DILocation(line: 659, column: 12, scope: !4091)
!4205 = !DILocation(line: 660, column: 15, scope: !4202)
!4206 = !DILocation(line: 660, column: 3, scope: !4202)
!4207 = !DILocation(line: 662, column: 9, scope: !4202)
!4208 = !DILocation(line: 662, column: 24, scope: !4202)
!4209 = !DILocation(line: 663, column: 14, scope: !4091)
!4210 = !DILocation(line: 663, column: 19, scope: !4091)
!4211 = !DILocation(line: 668, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 668, column: 8)
!4213 = !DILocation(line: 672, column: 15, scope: !4088)
!4214 = !DILocation(line: 668, column: 8, scope: !4088)
!4215 = !DILocation(line: 680, column: 11, scope: !4076)
!4216 = !DILocation(line: 685, column: 21, scope: !4093)
!4217 = !DILocation(line: 686, column: 23, scope: !4093)
!4218 = !DILocation(line: 686, column: 21, scope: !4093)
!4219 = !DILocation(line: 687, column: 18, scope: !4093)
!4220 = !DILocation(line: 688, column: 46, scope: !4093)
!4221 = !DILocation(line: 688, column: 4, scope: !4093)
!4222 = !DILocation(line: 690, column: 18, scope: !4093)
!4223 = !DILocation(line: 0, scope: !4093)
!4224 = !DILocation(line: 691, column: 4, scope: !4093)
!4225 = !DILocation(line: 691, column: 16, scope: !4093)
!4226 = !DILocation(line: 691, column: 19, scope: !4093)
!4227 = !DILocation(line: 692, column: 6, scope: !4093)
!4228 = distinct !{!4228, !4224, !4227}
!4229 = !DILocation(line: 694, column: 7, scope: !4093)
!4230 = !DILocation(line: 695, column: 8, scope: !4117)
!4231 = !DILocation(line: 695, column: 8, scope: !4093)
!4232 = !DILocation(line: 698, column: 24, scope: !4117)
!4233 = !DILocation(line: 698, column: 8, scope: !4117)
!4234 = !DILocation(line: 698, column: 38, scope: !4117)
!4235 = !DILocation(line: 698, column: 42, scope: !4117)
!4236 = !DILocation(line: 699, column: 8, scope: !4117)
!4237 = !DILocation(line: 696, column: 6, scope: !4117)
!4238 = !DILocation(line: 701, column: 41, scope: !4115)
!4239 = !DILocation(line: 705, column: 8, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 705, column: 8)
!4241 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 702, column: 2)
!4242 = !DILocation(line: 705, column: 8, scope: !4241)
!4243 = !DILocation(line: 706, column: 6, scope: !4240)
!4244 = !DILocation(line: 708, column: 23, scope: !4241)
!4245 = !DILocation(line: 709, column: 4, scope: !4241)
!4246 = !DILocation(line: 713, column: 24, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 712, column: 2)
!4248 = !DILocation(line: 714, column: 8, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 714, column: 8)
!4250 = !DILocation(line: 714, column: 8, scope: !4247)
!4251 = !DILocation(line: 717, column: 8, scope: !4249)
!4252 = !DILocation(line: 717, column: 38, scope: !4249)
!4253 = !DILocation(line: 717, column: 42, scope: !4249)
!4254 = !DILocation(line: 718, column: 8, scope: !4249)
!4255 = !DILocation(line: 715, column: 6, scope: !4249)
!4256 = !DILocation(line: 719, column: 15, scope: !4247)
!4257 = !DILocation(line: 722, column: 1, scope: !4062)
!4258 = distinct !DISubprogram(name: "base_reg_class", scope: !4259, file: !4259, line: 25, type: !4260, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4259 = !DIFile(filename: "./addresses.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!703, !189, !560, !560}
!4262 = !{!4263, !4264, !4265}
!4263 = !DILocalVariable(name: "mode", arg: 1, scope: !4258, file: !4259, line: 25, type: !189)
!4264 = !DILocalVariable(name: "outer_code", arg: 2, scope: !4258, file: !4259, line: 26, type: !560)
!4265 = !DILocalVariable(name: "index_code", arg: 3, scope: !4258, file: !4259, line: 27, type: !560)
!4266 = !DILocation(line: 0, scope: !4258)
!4267 = !DILocation(line: 39, column: 3, scope: !4258)
!4268 = distinct !DISubprogram(name: "regno_ok_for_base_p", scope: !4259, file: !4259, line: 73, type: !4269, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!783, !7, !189, !560, !560}
!4271 = !{!4272, !4273, !4274, !4275}
!4272 = !DILocalVariable(name: "regno", arg: 1, scope: !4268, file: !4259, line: 73, type: !7)
!4273 = !DILocalVariable(name: "mode", arg: 2, scope: !4268, file: !4259, line: 73, type: !189)
!4274 = !DILocalVariable(name: "outer_code", arg: 3, scope: !4268, file: !4259, line: 74, type: !560)
!4275 = !DILocalVariable(name: "index_code", arg: 4, scope: !4268, file: !4259, line: 74, type: !560)
!4276 = !DILocation(line: 0, scope: !4268)
!4277 = !DILocation(line: 76, column: 13, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4268, file: !4259, line: 76, column: 7)
!4279 = !DILocation(line: 76, column: 38, scope: !4278)
!4280 = !DILocation(line: 76, column: 41, scope: !4278)
!4281 = !DILocation(line: 76, column: 61, scope: !4278)
!4282 = !DILocation(line: 76, column: 7, scope: !4268)
!4283 = !DILocation(line: 77, column: 13, scope: !4278)
!4284 = !DILocation(line: 77, column: 5, scope: !4278)
!4285 = !DILocation(line: 79, column: 10, scope: !4268)
!4286 = !DILocation(line: 79, column: 3, scope: !4268)
!4287 = distinct !DISubprogram(name: "ok_for_base_p_1", scope: !4259, file: !4259, line: 50, type: !4269, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4288)
!4288 = !{!4289, !4290, !4291, !4292}
!4289 = !DILocalVariable(name: "regno", arg: 1, scope: !4287, file: !4259, line: 50, type: !7)
!4290 = !DILocalVariable(name: "mode", arg: 2, scope: !4287, file: !4259, line: 50, type: !189)
!4291 = !DILocalVariable(name: "outer_code", arg: 3, scope: !4287, file: !4259, line: 51, type: !560)
!4292 = !DILocalVariable(name: "index_code", arg: 4, scope: !4287, file: !4259, line: 52, type: !560)
!4293 = !DILocation(line: 0, scope: !4287)
!4294 = !DILocation(line: 64, column: 10, scope: !4287)
!4295 = !DILocation(line: 64, column: 3, scope: !4287)
!4296 = distinct !DISubprogram(name: "end_hard_regno", scope: !3111, file: !3111, line: 290, type: !4297, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!7, !189, !7}
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "mode", arg: 1, scope: !4296, file: !3111, line: 290, type: !189)
!4301 = !DILocalVariable(name: "regno", arg: 2, scope: !4296, file: !3111, line: 290, type: !7)
!4302 = !DILocation(line: 0, scope: !4296)
!4303 = !DILocation(line: 292, column: 18, scope: !4296)
!4304 = !DILocation(line: 292, column: 16, scope: !4296)
!4305 = !DILocation(line: 292, column: 3, scope: !4296)
!4306 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !882, file: !882, line: 224, type: !4307, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{null, !4309, !4310, !7, !4313}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !827, line: 48, baseType: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "bi", arg: 1, scope: !4306, file: !882, line: 224, type: !4309)
!4316 = !DILocalVariable(name: "map", arg: 2, scope: !4306, file: !882, line: 224, type: !4310)
!4317 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4306, file: !882, line: 225, type: !7)
!4318 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4306, file: !882, line: 225, type: !4313)
!4319 = !DILocation(line: 0, scope: !4306)
!4320 = !DILocation(line: 227, column: 19, scope: !4306)
!4321 = !DILocation(line: 227, column: 12, scope: !4306)
!4322 = !DILocation(line: 228, column: 7, scope: !4306)
!4323 = !DILocation(line: 228, column: 12, scope: !4306)
!4324 = !DILocation(line: 0, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !882, line: 233, column: 11)
!4326 = distinct !DILexicalBlock(scope: !4306, file: !882, line: 232, column: 5)
!4327 = !DILocation(line: 231, column: 3, scope: !4306)
!4328 = !DILocation(line: 233, column: 12, scope: !4325)
!4329 = !DILocation(line: 233, column: 11, scope: !4326)
!4330 = !DILocation(line: 235, column: 13, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4325, file: !882, line: 234, column: 2)
!4332 = !DILocation(line: 236, column: 4, scope: !4331)
!4333 = !DILocation(line: 239, column: 11, scope: !4326)
!4334 = distinct !{!4334, !4327, !4335}
!4335 = !DILocation(line: 242, column: 5, scope: !4306)
!4336 = !DILocation(line: 245, column: 11, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4306, file: !882, line: 245, column: 7)
!4338 = !DILocation(line: 245, column: 17, scope: !4337)
!4339 = !DILocation(line: 245, column: 22, scope: !4337)
!4340 = !DILocation(line: 245, column: 7, scope: !4306)
!4341 = !DILocation(line: 246, column: 27, scope: !4337)
!4342 = !DILocation(line: 246, column: 32, scope: !4337)
!4343 = !DILocation(line: 246, column: 5, scope: !4337)
!4344 = !DILocation(line: 249, column: 7, scope: !4306)
!4345 = !DILocation(line: 249, column: 15, scope: !4306)
!4346 = !DILocation(line: 250, column: 14, scope: !4306)
!4347 = !DILocation(line: 251, column: 7, scope: !4306)
!4348 = !DILocation(line: 251, column: 12, scope: !4306)
!4349 = !DILocation(line: 257, column: 16, scope: !4306)
!4350 = !DILocation(line: 257, column: 13, scope: !4306)
!4351 = !DILocation(line: 259, column: 11, scope: !4306)
!4352 = !DILocation(line: 260, column: 1, scope: !4306)
!4353 = distinct !DISubprogram(name: "bmp_iter_set", scope: !882, file: !882, line: 393, type: !4354, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!783, !4309, !4313}
!4356 = !{!4357, !4358, !4359}
!4357 = !DILocalVariable(name: "bi", arg: 1, scope: !4353, file: !882, line: 393, type: !4309)
!4358 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4353, file: !882, line: 393, type: !4313)
!4359 = !DILabel(scope: !4360, name: "next_bit", file: !882, line: 398)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !882, line: 397, column: 5)
!4361 = distinct !DILexicalBlock(scope: !4353, file: !882, line: 396, column: 7)
!4362 = !DILocation(line: 0, scope: !4353)
!4363 = !DILocation(line: 396, column: 11, scope: !4361)
!4364 = !DILocation(line: 396, column: 7, scope: !4361)
!4365 = !DILocation(line: 396, column: 7, scope: !4353)
!4366 = !DILocation(line: 419, column: 15, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !882, line: 418, column: 2)
!4368 = distinct !DILexicalBlock(scope: !4353, file: !882, line: 415, column: 5)
!4369 = !DILocation(line: 399, column: 7, scope: !4360)
!4370 = !DILocation(line: 398, column: 5, scope: !4360)
!4371 = !DILocation(line: 399, column: 20, scope: !4360)
!4372 = !DILocation(line: 399, column: 25, scope: !4360)
!4373 = !DILocation(line: 399, column: 14, scope: !4360)
!4374 = !DILocation(line: 401, column: 13, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4360, file: !882, line: 400, column: 2)
!4376 = !DILocation(line: 402, column: 12, scope: !4375)
!4377 = distinct !{!4377, !4369, !4378}
!4378 = !DILocation(line: 403, column: 2, scope: !4360)
!4379 = !DILocation(line: 410, column: 15, scope: !4353)
!4380 = !DILocation(line: 410, column: 42, scope: !4353)
!4381 = !DILocation(line: 411, column: 26, scope: !4353)
!4382 = !DILocation(line: 410, column: 11, scope: !4353)
!4383 = !DILocation(line: 412, column: 7, scope: !4353)
!4384 = !DILocation(line: 412, column: 14, scope: !4353)
!4385 = !DILocation(line: 0, scope: !4368)
!4386 = !DILocation(line: 414, column: 3, scope: !4353)
!4387 = !DILocation(line: 417, column: 7, scope: !4368)
!4388 = !DILocation(line: 417, column: 18, scope: !4368)
!4389 = !DILocation(line: 417, column: 26, scope: !4368)
!4390 = !DILocation(line: 419, column: 13, scope: !4367)
!4391 = !DILocation(line: 420, column: 8, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4367, file: !882, line: 420, column: 8)
!4393 = !DILocation(line: 420, column: 8, scope: !4367)
!4394 = !DILocation(line: 422, column: 12, scope: !4367)
!4395 = !DILocation(line: 423, column: 15, scope: !4367)
!4396 = distinct !{!4396, !4387, !4397}
!4397 = !DILocation(line: 424, column: 2, scope: !4368)
!4398 = !DILocation(line: 427, column: 28, scope: !4368)
!4399 = !DILocation(line: 427, column: 16, scope: !4368)
!4400 = !DILocation(line: 428, column: 12, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4368, file: !882, line: 428, column: 11)
!4402 = !DILocation(line: 428, column: 11, scope: !4368)
!4403 = !DILocation(line: 430, column: 27, scope: !4368)
!4404 = !DILocation(line: 430, column: 32, scope: !4368)
!4405 = !DILocation(line: 430, column: 15, scope: !4368)
!4406 = !DILocation(line: 431, column: 19, scope: !4368)
!4407 = distinct !{!4407, !4386, !4408}
!4408 = !DILocation(line: 432, column: 5, scope: !4353)
!4409 = !DILocation(line: 433, column: 1, scope: !4353)
!4410 = distinct !DISubprogram(name: "VEC_du_head_p_base_index", scope: !3, file: !3, line: 125, type: !4411, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4415)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!815, !4413, !7}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "vec_", arg: 1, scope: !4410, file: !3, line: 125, type: !4413)
!4417 = !DILocalVariable(name: "ix_", arg: 2, scope: !4410, file: !3, line: 125, type: !7)
!4418 = !DILocation(line: 0, scope: !4410)
!4419 = !DILocation(line: 125, column: 1, scope: !4410)
!4420 = distinct !DISubprogram(name: "bmp_iter_next", scope: !882, file: !882, line: 382, type: !4421, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4309, !4313}
!4423 = !{!4424, !4425}
!4424 = !DILocalVariable(name: "bi", arg: 1, scope: !4420, file: !882, line: 382, type: !4309)
!4425 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4420, file: !882, line: 382, type: !4313)
!4426 = !DILocation(line: 0, scope: !4420)
!4427 = !DILocation(line: 384, column: 7, scope: !4420)
!4428 = !DILocation(line: 384, column: 12, scope: !4420)
!4429 = !DILocation(line: 385, column: 11, scope: !4420)
!4430 = !DILocation(line: 386, column: 1, scope: !4420)
!4431 = distinct !DISubprogram(name: "VEC_du_head_p_base_iterate", scope: !3, file: !3, line: 125, type: !4432, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!784, !4413, !7, !4011}
!4434 = !{!4435, !4436, !4437}
!4435 = !DILocalVariable(name: "vec_", arg: 1, scope: !4431, file: !3, line: 125, type: !4413)
!4436 = !DILocalVariable(name: "ix_", arg: 2, scope: !4431, file: !3, line: 125, type: !7)
!4437 = !DILocalVariable(name: "ptr", arg: 3, scope: !4431, file: !3, line: 125, type: !4011)
!4438 = !DILocation(line: 0, scope: !4431)
!4439 = !DILocation(line: 125, column: 1, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 125, column: 1)
!4441 = !DILocation(line: 125, column: 1, scope: !4431)
!4442 = !DILocation(line: 125, column: 1, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 125, column: 1)
!4444 = !DILocation(line: 125, column: 1, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 125, column: 1)
!4446 = !DILocation(line: 0, scope: !4440)
!4447 = distinct !DISubprogram(name: "VEC_du_head_p_heap_free", scope: !3, file: !3, line: 126, type: !4448, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !4012}
!4450 = !{!4451}
!4451 = !DILocalVariable(name: "vec_", arg: 1, scope: !4447, file: !3, line: 126, type: !4012)
!4452 = !DILocation(line: 0, scope: !4447)
!4453 = !DILocation(line: 126, column: 1, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 126, column: 1)
!4455 = !DILocation(line: 126, column: 1, scope: !4447)
