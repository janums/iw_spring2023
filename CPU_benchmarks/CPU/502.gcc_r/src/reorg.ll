; ModuleID = 'reorg.bc'
source_filename = "reorg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type opaque
%union.gimple_statement_d = type opaque
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@pass_delay_slots = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_delay_slots, i32 ()* @rest_of_handle_delay_slots, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 161, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"mach\00", align 1
@pass_machine_reorg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_handle_machine_reorg, i32 ()* @rest_of_handle_machine_reorg, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 160, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8, !dbg !200
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !248
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !249
  ret i32 %call, !dbg !250
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !251 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !255
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !256
  ret i32 %call, !dbg !257
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !321, metadata !DIExpression()), !dbg !322
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !323
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !323
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !323
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !323
  %cmp = icmp uge i8* %0, %1, !dbg !323
  %conv1 = zext i1 %cmp to i64, !dbg !323
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !323
  %tobool = icmp eq i64 %expval, 0, !dbg !323
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !323

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !323
  br label %cond.end, !dbg !323

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !323
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !323
  %2 = load i8, i8* %0, align 1, !dbg !323
  %conv3 = zext i8 %2 to i32, !dbg !323
  br label %cond.end, !dbg !323

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !323
  ret i32 %cond, !dbg !324
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !325 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !327, metadata !DIExpression()), !dbg !328
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !329
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !329
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !329
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !329
  %cmp = icmp uge i8* %0, %1, !dbg !329
  %conv1 = zext i1 %cmp to i64, !dbg !329
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !329
  %tobool = icmp eq i64 %expval, 0, !dbg !329
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !329

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !329
  br label %cond.end, !dbg !329

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !329
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !329
  %2 = load i8, i8* %0, align 1, !dbg !329
  %conv3 = zext i8 %2 to i32, !dbg !329
  br label %cond.end, !dbg !329

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !329
  ret i32 %cond, !dbg !330
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !331 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !332
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !332
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !332
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !332
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !332
  %cmp = icmp uge i8* %1, %2, !dbg !332
  %conv1 = zext i1 %cmp to i64, !dbg !332
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !332
  %tobool = icmp eq i64 %expval, 0, !dbg !332
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !332

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !332
  br label %cond.end, !dbg !332

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !332
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !332
  %3 = load i8, i8* %1, align 1, !dbg !332
  %conv3 = zext i8 %3 to i32, !dbg !332
  br label %cond.end, !dbg !332

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !332
  ret i32 %cond, !dbg !333
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !340
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !341
  ret i32 %call, !dbg !342
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !347, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !348, metadata !DIExpression()), !dbg !349
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !350
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !350
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !350
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !350
  %cmp = icmp uge i8* %0, %1, !dbg !350
  %conv1 = zext i1 %cmp to i64, !dbg !350
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !350
  %tobool = icmp eq i64 %expval, 0, !dbg !350
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !350

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !350
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !350
  br label %cond.end, !dbg !350

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !350
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !350
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !350
  store i8 %conv2, i8* %0, align 1, !dbg !350
  %conv6 = and i32 %__c, 255, !dbg !350
  br label %cond.end, !dbg !350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !350
  ret i32 %cond, !dbg !351
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !352 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !354, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !355, metadata !DIExpression()), !dbg !356
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !357
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !357
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !357
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !357
  %cmp = icmp uge i8* %0, %1, !dbg !357
  %conv1 = zext i1 %cmp to i64, !dbg !357
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !357
  %tobool = icmp eq i64 %expval, 0, !dbg !357
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !357

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !357
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !357
  br label %cond.end, !dbg !357

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !357
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !357
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !357
  store i8 %conv2, i8* %0, align 1, !dbg !357
  %conv6 = and i32 %__c, 255, !dbg !357
  br label %cond.end, !dbg !357

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !357
  ret i32 %cond, !dbg !358
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !359 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !363
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !363
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !363
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !363
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !363
  %cmp = icmp uge i8* %1, %2, !dbg !363
  %conv1 = zext i1 %cmp to i64, !dbg !363
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !363
  %tobool = icmp eq i64 %expval, 0, !dbg !363
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !363

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !363
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !363
  br label %cond.end, !dbg !363

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !363
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !363
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !363
  store i8 %conv4, i8* %1, align 1, !dbg !363
  %conv6 = and i32 %__c, 255, !dbg !363
  br label %cond.end, !dbg !363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !363
  ret i32 %cond, !dbg !364
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !365 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64* %__n, metadata !372, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !373, metadata !DIExpression()), !dbg !374
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !375
  ret i64 %call, !dbg !376
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !379, metadata !DIExpression()), !dbg !380
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !381
  %0 = load i32, i32* %_flags, align 8, !dbg !381
  %and = lshr i32 %0, 4, !dbg !381
  %and.lobit = and i32 %and, 1, !dbg !381
  ret i32 %and.lobit, !dbg !382
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !385, metadata !DIExpression()), !dbg !386
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !387
  %0 = load i32, i32* %_flags, align 8, !dbg !387
  %and = lshr i32 %0, 5, !dbg !387
  %and.lobit = and i32 %and, 1, !dbg !387
  ret i32 %and.lobit, !dbg !388
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !389 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !392, metadata !DIExpression()), !dbg !393
  %__c.off = add i32 %__c, 128, !dbg !394
  %0 = icmp ult i32 %__c.off, 384, !dbg !394
  br i1 %0, label %cond.true, label %cond.end, !dbg !394

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !395
  %1 = load i32*, i32** %call, align 8, !dbg !396
  %idxprom = sext i32 %__c to i64, !dbg !397
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !397
  %2 = load i32, i32* %arrayidx, align 4, !dbg !397
  br label %cond.end, !dbg !398

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !398
  ret i32 %cond, !dbg !399
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !400 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !402, metadata !DIExpression()), !dbg !403
  %__c.off = add i32 %__c, 128, !dbg !404
  %0 = icmp ult i32 %__c.off, 384, !dbg !404
  br i1 %0, label %cond.true, label %cond.end, !dbg !404

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !405
  %1 = load i32*, i32** %call, align 8, !dbg !406
  %idxprom = sext i32 %__c to i64, !dbg !407
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !407
  %2 = load i32, i32* %arrayidx, align 4, !dbg !407
  br label %cond.end, !dbg !408

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !408
  ret i32 %cond, !dbg !409
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !410 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !415, metadata !DIExpression()), !dbg !416
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !417
  %conv = trunc i64 %call to i32, !dbg !418
  ret i32 %conv, !dbg !419
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !420 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !424, metadata !DIExpression()), !dbg !425
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !426
  ret i64 %call, !dbg !427
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !428 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !433, metadata !DIExpression()), !dbg !434
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !435
  ret i64 %call, !dbg !436
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !437 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !448, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %__base, metadata !449, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !450, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %__size, metadata !451, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !452, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 0, metadata !453, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !454, metadata !DIExpression()), !dbg !458
  br label %while.cond, !dbg !459

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !460
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !458
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !454, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !453, metadata !DIExpression()), !dbg !458
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !461
  br i1 %cmp, label %while.body, label %cleanup, !dbg !459

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !462
  %div = lshr i64 %add, 1, !dbg !464
  call void @llvm.dbg.value(metadata i64 %div, metadata !455, metadata !DIExpression()), !dbg !458
  %mul = mul i64 %div, %__size, !dbg !465
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !466
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !456, metadata !DIExpression()), !dbg !458
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !467
  call void @llvm.dbg.value(metadata i32 %call, metadata !457, metadata !DIExpression()), !dbg !458
  %cmp1 = icmp slt i32 %call, 0, !dbg !468
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !470

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !471
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !473

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !474
  call void @llvm.dbg.value(metadata i64 %add4, metadata !453, metadata !DIExpression()), !dbg !458
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !458
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !458
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !454, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !453, metadata !DIExpression()), !dbg !458
  br label %while.cond, !dbg !459, !llvm.loop !475

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !458
  ret i8* %retval.0, !dbg !477
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !478 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !484, metadata !DIExpression()), !dbg !485
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !486
  ret double %call, !dbg !487
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !497, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i32 %base, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !501
  ret i64 %call, !dbg !502
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !510, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %base, metadata !511, metadata !DIExpression()), !dbg !512
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !513
  ret i64 %call, !dbg !514
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !515 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !526, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %base, metadata !528, metadata !DIExpression()), !dbg !529
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !530
  ret i64 %call, !dbg !531
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !532 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 %base, metadata !538, metadata !DIExpression()), !dbg !539
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !540
  ret i64 %call, !dbg !541
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !584, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !585, metadata !DIExpression()), !dbg !586
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !587
  ret i32 %call, !dbg !588
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !589 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !591, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !592, metadata !DIExpression()), !dbg !593
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !594
  ret i32 %call, !dbg !595
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !596 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !601, metadata !DIExpression()), !dbg !602
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !603
  ret i32 %call, !dbg !604
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !605 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !609, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !610, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !611, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !612, metadata !DIExpression()), !dbg !613
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !614
  ret i32 %call, !dbg !615
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !616 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !621, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !622, metadata !DIExpression(DW_OP_deref)), !dbg !623
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !624
  ret i32 %call, !dbg !625
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !626 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !630, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i8* %__path, metadata !631, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !633, metadata !DIExpression()), !dbg !634
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !634
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !635
  ret i32 %call, !dbg !636
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !637 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !662, metadata !DIExpression()), !dbg !663
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !664
  ret i32 %call, !dbg !665
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !669, metadata !DIExpression()), !dbg !670
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !671
  ret i32 %call, !dbg !672
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !673 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !678, metadata !DIExpression()), !dbg !679
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !680
  ret i32 %call, !dbg !681
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !686, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !687, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !689, metadata !DIExpression()), !dbg !690
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !691
  ret i32 %call, !dbg !692
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_delay_slots() #3 !dbg !693 {
entry:
  ret i8 0, !dbg !694
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_delay_slots() #3 !dbg !695 {
entry:
  ret i32 0, !dbg !696
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_machine_reorg() #3 !dbg !697 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 68), align 8, !dbg !698
  %cmp = icmp ne void ()* %0, null, !dbg !699
  %conv1 = zext i1 %cmp to i8, !dbg !700
  ret i8 %conv1, !dbg !701
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_machine_reorg() #3 !dbg !702 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 68), align 8, !dbg !703
  tail call void %0() #5, !dbg !704
  ret i32 0, !dbg !705
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!228, !229, !230}
!llvm.ident = !{!231}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_delay_slots", scope: !2, file: !3, line: 4072, type: !202, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !189, globals: !199, nameTableKind: None)
!3 = !DIFile(filename: "reorg.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13}
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
!189 = !{!190, !191, !192, !193, !196, !197}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!199 = !{!0, !200}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "pass_machine_reorg", scope: !2, file: !3, line: 4107, type: !202, isLocal: false, isDefinition: true)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !202, file: !6, line: 164, baseType: !205, size: 640)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !206)
!206 = !{!207, !208, !209, !213, !217, !219, !220, !221, !223, !224, !225, !226, !227}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !205, file: !6, line: 117, baseType: !5, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !6, line: 121, baseType: !197, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !205, file: !6, line: 125, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!191}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !205, file: !6, line: 130, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!7}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !205, file: !6, line: 133, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !6, line: 136, baseType: !218, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !205, file: !6, line: 139, baseType: !192, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !205, file: !6, line: 143, baseType: !222, size: 32, offset: 416)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !205, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !205, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !205, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !205, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !205, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!228 = !{i32 2, !"Dwarf Version", i32 4}
!229 = !{i32 2, !"Debug Info Version", i32 3}
!230 = !{i32 1, !"wchar_size", i32 4}
!231 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!232 = distinct !DISubprogram(name: "vprintf", scope: !233, file: !233, line: 39, type: !234, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!234 = !DISubroutineType(types: !235)
!235 = !{!192, !236, !237}
!236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !238, file: !3, baseType: !7, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !238, file: !3, baseType: !7, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !238, file: !3, baseType: !196, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !238, file: !3, baseType: !196, size: 64, offset: 128)
!244 = !{!245, !246}
!245 = !DILocalVariable(name: "__fmt", arg: 1, scope: !232, file: !233, line: 39, type: !236)
!246 = !DILocalVariable(name: "__arg", arg: 2, scope: !232, file: !233, line: 39, type: !237)
!247 = !DILocation(line: 0, scope: !232)
!248 = !DILocation(line: 41, column: 20, scope: !232)
!249 = !DILocation(line: 41, column: 10, scope: !232)
!250 = !DILocation(line: 41, column: 3, scope: !232)
!251 = distinct !DISubprogram(name: "getchar", scope: !233, file: !233, line: 47, type: !252, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!192}
!254 = !{}
!255 = !DILocation(line: 49, column: 16, scope: !251)
!256 = !DILocation(line: 49, column: 10, scope: !251)
!257 = !DILocation(line: 49, column: 3, scope: !251)
!258 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !233, file: !233, line: 56, type: !259, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!259 = !DISubroutineType(types: !260)
!260 = !{!192, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !263, line: 7, baseType: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !265, line: 49, size: 1728, elements: !266)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !282, !284, !285, !286, !290, !292, !294, !298, !301, !303, !306, !309, !310, !311, !315, !316}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !264, file: !265, line: 51, baseType: !192, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !264, file: !265, line: 54, baseType: !194, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !264, file: !265, line: 55, baseType: !194, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !264, file: !265, line: 56, baseType: !194, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !264, file: !265, line: 57, baseType: !194, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !264, file: !265, line: 58, baseType: !194, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !264, file: !265, line: 59, baseType: !194, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !264, file: !265, line: 60, baseType: !194, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !264, file: !265, line: 61, baseType: !194, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !264, file: !265, line: 64, baseType: !194, size: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !264, file: !265, line: 65, baseType: !194, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !264, file: !265, line: 66, baseType: !194, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !264, file: !265, line: 68, baseType: !280, size: 64, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !265, line: 36, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !264, file: !265, line: 70, baseType: !283, size: 64, offset: 832)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !264, file: !265, line: 72, baseType: !192, size: 32, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !264, file: !265, line: 73, baseType: !192, size: 32, offset: 928)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !264, file: !265, line: 74, baseType: !287, size: 64, offset: 960)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !288, line: 152, baseType: !289)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!289 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !264, file: !265, line: 77, baseType: !291, size: 16, offset: 1024)
!291 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !264, file: !265, line: 78, baseType: !293, size: 8, offset: 1040)
!293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !264, file: !265, line: 79, baseType: !295, size: 8, offset: 1048)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 8, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 1)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !264, file: !265, line: 81, baseType: !299, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !265, line: 43, baseType: null)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !264, file: !265, line: 89, baseType: !302, size: 64, offset: 1152)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !288, line: 153, baseType: !289)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !264, file: !265, line: 91, baseType: !304, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !265, line: 37, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !264, file: !265, line: 92, baseType: !307, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !265, line: 38, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !264, file: !265, line: 93, baseType: !283, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !264, file: !265, line: 94, baseType: !196, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !264, file: !265, line: 95, baseType: !312, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !313, line: 46, baseType: !314)
!313 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!314 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !264, file: !265, line: 96, baseType: !192, size: 32, offset: 1536)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !264, file: !265, line: 98, baseType: !317, size: 160, offset: 1568)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 160, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 20)
!320 = !{!321}
!321 = !DILocalVariable(name: "__fp", arg: 1, scope: !258, file: !233, line: 56, type: !261)
!322 = !DILocation(line: 0, scope: !258)
!323 = !DILocation(line: 58, column: 10, scope: !258)
!324 = !DILocation(line: 58, column: 3, scope: !258)
!325 = distinct !DISubprogram(name: "getc_unlocked", scope: !233, file: !233, line: 66, type: !259, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!326 = !{!327}
!327 = !DILocalVariable(name: "__fp", arg: 1, scope: !325, file: !233, line: 66, type: !261)
!328 = !DILocation(line: 0, scope: !325)
!329 = !DILocation(line: 68, column: 10, scope: !325)
!330 = !DILocation(line: 68, column: 3, scope: !325)
!331 = distinct !DISubprogram(name: "getchar_unlocked", scope: !233, file: !233, line: 73, type: !252, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!332 = !DILocation(line: 75, column: 10, scope: !331)
!333 = !DILocation(line: 75, column: 3, scope: !331)
!334 = distinct !DISubprogram(name: "putchar", scope: !233, file: !233, line: 82, type: !335, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!192, !192}
!337 = !{!338}
!338 = !DILocalVariable(name: "__c", arg: 1, scope: !334, file: !233, line: 82, type: !192)
!339 = !DILocation(line: 0, scope: !334)
!340 = !DILocation(line: 84, column: 21, scope: !334)
!341 = !DILocation(line: 84, column: 10, scope: !334)
!342 = !DILocation(line: 84, column: 3, scope: !334)
!343 = distinct !DISubprogram(name: "fputc_unlocked", scope: !233, file: !233, line: 91, type: !344, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!192, !192, !261}
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "__c", arg: 1, scope: !343, file: !233, line: 91, type: !192)
!348 = !DILocalVariable(name: "__stream", arg: 2, scope: !343, file: !233, line: 91, type: !261)
!349 = !DILocation(line: 0, scope: !343)
!350 = !DILocation(line: 93, column: 10, scope: !343)
!351 = !DILocation(line: 93, column: 3, scope: !343)
!352 = distinct !DISubprogram(name: "putc_unlocked", scope: !233, file: !233, line: 101, type: !344, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !353)
!353 = !{!354, !355}
!354 = !DILocalVariable(name: "__c", arg: 1, scope: !352, file: !233, line: 101, type: !192)
!355 = !DILocalVariable(name: "__stream", arg: 2, scope: !352, file: !233, line: 101, type: !261)
!356 = !DILocation(line: 0, scope: !352)
!357 = !DILocation(line: 103, column: 10, scope: !352)
!358 = !DILocation(line: 103, column: 3, scope: !352)
!359 = distinct !DISubprogram(name: "putchar_unlocked", scope: !233, file: !233, line: 108, type: !335, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !360)
!360 = !{!361}
!361 = !DILocalVariable(name: "__c", arg: 1, scope: !359, file: !233, line: 108, type: !192)
!362 = !DILocation(line: 0, scope: !359)
!363 = !DILocation(line: 110, column: 10, scope: !359)
!364 = !DILocation(line: 110, column: 3, scope: !359)
!365 = distinct !DISubprogram(name: "getline", scope: !233, file: !233, line: 118, type: !366, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !193, !369, !261}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !288, line: 193, baseType: !289)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!370 = !{!371, !372, !373}
!371 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !365, file: !233, line: 118, type: !193)
!372 = !DILocalVariable(name: "__n", arg: 2, scope: !365, file: !233, line: 118, type: !369)
!373 = !DILocalVariable(name: "__stream", arg: 3, scope: !365, file: !233, line: 118, type: !261)
!374 = !DILocation(line: 0, scope: !365)
!375 = !DILocation(line: 120, column: 10, scope: !365)
!376 = !DILocation(line: 120, column: 3, scope: !365)
!377 = distinct !DISubprogram(name: "feof_unlocked", scope: !233, file: !233, line: 128, type: !259, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!378 = !{!379}
!379 = !DILocalVariable(name: "__stream", arg: 1, scope: !377, file: !233, line: 128, type: !261)
!380 = !DILocation(line: 0, scope: !377)
!381 = !DILocation(line: 130, column: 10, scope: !377)
!382 = !DILocation(line: 130, column: 3, scope: !377)
!383 = distinct !DISubprogram(name: "ferror_unlocked", scope: !233, file: !233, line: 135, type: !259, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385}
!385 = !DILocalVariable(name: "__stream", arg: 1, scope: !383, file: !233, line: 135, type: !261)
!386 = !DILocation(line: 0, scope: !383)
!387 = !DILocation(line: 137, column: 10, scope: !383)
!388 = !DILocation(line: 137, column: 3, scope: !383)
!389 = distinct !DISubprogram(name: "tolower", scope: !390, file: !390, line: 207, type: !335, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!390 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!391 = !{!392}
!392 = !DILocalVariable(name: "__c", arg: 1, scope: !389, file: !390, line: 207, type: !192)
!393 = !DILocation(line: 0, scope: !389)
!394 = !DILocation(line: 209, column: 22, scope: !389)
!395 = !DILocation(line: 209, column: 39, scope: !389)
!396 = !DILocation(line: 209, column: 38, scope: !389)
!397 = !DILocation(line: 209, column: 37, scope: !389)
!398 = !DILocation(line: 209, column: 10, scope: !389)
!399 = !DILocation(line: 209, column: 3, scope: !389)
!400 = distinct !DISubprogram(name: "toupper", scope: !390, file: !390, line: 213, type: !335, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!401 = !{!402}
!402 = !DILocalVariable(name: "__c", arg: 1, scope: !400, file: !390, line: 213, type: !192)
!403 = !DILocation(line: 0, scope: !400)
!404 = !DILocation(line: 215, column: 22, scope: !400)
!405 = !DILocation(line: 215, column: 39, scope: !400)
!406 = !DILocation(line: 215, column: 38, scope: !400)
!407 = !DILocation(line: 215, column: 37, scope: !400)
!408 = !DILocation(line: 215, column: 10, scope: !400)
!409 = !DILocation(line: 215, column: 3, scope: !400)
!410 = distinct !DISubprogram(name: "atoi", scope: !411, file: !411, line: 361, type: !412, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!411 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!412 = !DISubroutineType(types: !413)
!413 = !{!192, !197}
!414 = !{!415}
!415 = !DILocalVariable(name: "__nptr", arg: 1, scope: !410, file: !411, line: 361, type: !197)
!416 = !DILocation(line: 0, scope: !410)
!417 = !DILocation(line: 363, column: 16, scope: !410)
!418 = !DILocation(line: 363, column: 10, scope: !410)
!419 = !DILocation(line: 363, column: 3, scope: !410)
!420 = distinct !DISubprogram(name: "atol", scope: !411, file: !411, line: 366, type: !421, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!289, !197}
!423 = !{!424}
!424 = !DILocalVariable(name: "__nptr", arg: 1, scope: !420, file: !411, line: 366, type: !197)
!425 = !DILocation(line: 0, scope: !420)
!426 = !DILocation(line: 368, column: 10, scope: !420)
!427 = !DILocation(line: 368, column: 3, scope: !420)
!428 = distinct !DISubprogram(name: "atoll", scope: !411, file: !411, line: 373, type: !429, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !197}
!431 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!432 = !{!433}
!433 = !DILocalVariable(name: "__nptr", arg: 1, scope: !428, file: !411, line: 373, type: !197)
!434 = !DILocation(line: 0, scope: !428)
!435 = !DILocation(line: 375, column: 10, scope: !428)
!436 = !DILocation(line: 375, column: 3, scope: !428)
!437 = distinct !DISubprogram(name: "bsearch", scope: !438, file: !438, line: 20, type: !439, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!439 = !DISubroutineType(types: !440)
!440 = !{!196, !441, !441, !312, !312, !443}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !411, line: 808, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!192, !441, !441}
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!448 = !DILocalVariable(name: "__key", arg: 1, scope: !437, file: !438, line: 20, type: !441)
!449 = !DILocalVariable(name: "__base", arg: 2, scope: !437, file: !438, line: 20, type: !441)
!450 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !437, file: !438, line: 20, type: !312)
!451 = !DILocalVariable(name: "__size", arg: 4, scope: !437, file: !438, line: 20, type: !312)
!452 = !DILocalVariable(name: "__compar", arg: 5, scope: !437, file: !438, line: 21, type: !443)
!453 = !DILocalVariable(name: "__l", scope: !437, file: !438, line: 23, type: !312)
!454 = !DILocalVariable(name: "__u", scope: !437, file: !438, line: 23, type: !312)
!455 = !DILocalVariable(name: "__idx", scope: !437, file: !438, line: 23, type: !312)
!456 = !DILocalVariable(name: "__p", scope: !437, file: !438, line: 24, type: !441)
!457 = !DILocalVariable(name: "__comparison", scope: !437, file: !438, line: 25, type: !192)
!458 = !DILocation(line: 0, scope: !437)
!459 = !DILocation(line: 29, column: 3, scope: !437)
!460 = !DILocation(line: 27, column: 7, scope: !437)
!461 = !DILocation(line: 29, column: 14, scope: !437)
!462 = !DILocation(line: 31, column: 20, scope: !463)
!463 = distinct !DILexicalBlock(scope: !437, file: !438, line: 30, column: 5)
!464 = !DILocation(line: 31, column: 27, scope: !463)
!465 = !DILocation(line: 32, column: 56, scope: !463)
!466 = !DILocation(line: 32, column: 47, scope: !463)
!467 = !DILocation(line: 33, column: 22, scope: !463)
!468 = !DILocation(line: 34, column: 24, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !438, line: 34, column: 11)
!470 = !DILocation(line: 34, column: 11, scope: !463)
!471 = !DILocation(line: 36, column: 29, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !438, line: 36, column: 16)
!473 = !DILocation(line: 36, column: 16, scope: !469)
!474 = !DILocation(line: 37, column: 14, scope: !472)
!475 = distinct !{!475, !459, !476}
!476 = !DILocation(line: 40, column: 5, scope: !437)
!477 = !DILocation(line: 43, column: 1, scope: !437)
!478 = distinct !DISubprogram(name: "atof", scope: !479, file: !479, line: 25, type: !480, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !197}
!482 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!483 = !{!484}
!484 = !DILocalVariable(name: "__nptr", arg: 1, scope: !478, file: !479, line: 25, type: !197)
!485 = !DILocation(line: 0, scope: !478)
!486 = !DILocation(line: 27, column: 10, scope: !478)
!487 = !DILocation(line: 27, column: 3, scope: !478)
!488 = distinct !DISubprogram(name: "strtoimax", scope: !489, file: !489, line: 324, type: !490, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!489 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !236, !495, !192}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !493, line: 101, baseType: !494)
!493 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !288, line: 72, baseType: !289)
!495 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!496 = !{!497, !498, !499}
!497 = !DILocalVariable(name: "nptr", arg: 1, scope: !488, file: !489, line: 324, type: !236)
!498 = !DILocalVariable(name: "endptr", arg: 2, scope: !488, file: !489, line: 324, type: !495)
!499 = !DILocalVariable(name: "base", arg: 3, scope: !488, file: !489, line: 324, type: !192)
!500 = !DILocation(line: 0, scope: !488)
!501 = !DILocation(line: 327, column: 10, scope: !488)
!502 = !DILocation(line: 327, column: 3, scope: !488)
!503 = distinct !DISubprogram(name: "strtoumax", scope: !489, file: !489, line: 336, type: !504, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !236, !495, !192}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !493, line: 102, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !288, line: 73, baseType: !314)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "nptr", arg: 1, scope: !503, file: !489, line: 336, type: !236)
!510 = !DILocalVariable(name: "endptr", arg: 2, scope: !503, file: !489, line: 336, type: !495)
!511 = !DILocalVariable(name: "base", arg: 3, scope: !503, file: !489, line: 336, type: !192)
!512 = !DILocation(line: 0, scope: !503)
!513 = !DILocation(line: 339, column: 10, scope: !503)
!514 = !DILocation(line: 339, column: 3, scope: !503)
!515 = distinct !DISubprogram(name: "wcstoimax", scope: !489, file: !489, line: 348, type: !516, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!516 = !DISubroutineType(types: !517)
!517 = !{!492, !518, !522, !192}
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !489, line: 34, baseType: !192)
!522 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!525 = !{!526, !527, !528}
!526 = !DILocalVariable(name: "nptr", arg: 1, scope: !515, file: !489, line: 348, type: !518)
!527 = !DILocalVariable(name: "endptr", arg: 2, scope: !515, file: !489, line: 348, type: !522)
!528 = !DILocalVariable(name: "base", arg: 3, scope: !515, file: !489, line: 348, type: !192)
!529 = !DILocation(line: 0, scope: !515)
!530 = !DILocation(line: 351, column: 10, scope: !515)
!531 = !DILocation(line: 351, column: 3, scope: !515)
!532 = distinct !DISubprogram(name: "wcstoumax", scope: !489, file: !489, line: 362, type: !533, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!506, !518, !522, !192}
!535 = !{!536, !537, !538}
!536 = !DILocalVariable(name: "nptr", arg: 1, scope: !532, file: !489, line: 362, type: !518)
!537 = !DILocalVariable(name: "endptr", arg: 2, scope: !532, file: !489, line: 362, type: !522)
!538 = !DILocalVariable(name: "base", arg: 3, scope: !532, file: !489, line: 362, type: !192)
!539 = !DILocation(line: 0, scope: !532)
!540 = !DILocation(line: 365, column: 10, scope: !532)
!541 = !DILocation(line: 365, column: 3, scope: !532)
!542 = distinct !DISubprogram(name: "stat", scope: !543, file: !543, line: 453, type: !544, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!543 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!544 = !DISubroutineType(types: !545)
!545 = !{!192, !197, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !548, line: 46, size: 1152, elements: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!549 = !{!550, !552, !554, !556, !558, !560, !562, !563, !564, !565, !567, !569, !577, !578, !579}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !547, file: !548, line: 48, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !288, line: 145, baseType: !314)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !547, file: !548, line: 53, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !288, line: 148, baseType: !314)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !547, file: !548, line: 61, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !288, line: 151, baseType: !314)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !547, file: !548, line: 62, baseType: !557, size: 32, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !288, line: 150, baseType: !7)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !547, file: !548, line: 64, baseType: !559, size: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !288, line: 146, baseType: !7)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !547, file: !548, line: 65, baseType: !561, size: 32, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !288, line: 147, baseType: !7)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !547, file: !548, line: 67, baseType: !192, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !547, file: !548, line: 69, baseType: !551, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !547, file: !548, line: 74, baseType: !287, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !547, file: !548, line: 78, baseType: !566, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !288, line: 174, baseType: !289)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !547, file: !548, line: 80, baseType: !568, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !288, line: 179, baseType: !289)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !547, file: !548, line: 91, baseType: !570, size: 128, offset: 576)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !571, line: 10, size: 128, elements: !572)
!571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!572 = !{!573, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !570, file: !571, line: 12, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !288, line: 160, baseType: !289)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !570, file: !571, line: 16, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !288, line: 196, baseType: !289)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !547, file: !548, line: 92, baseType: !570, size: 128, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !547, file: !548, line: 93, baseType: !570, size: 128, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !547, file: !548, line: 106, baseType: !580, size: 192, offset: 960)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 192, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 3)
!583 = !{!584, !585}
!584 = !DILocalVariable(name: "__path", arg: 1, scope: !542, file: !543, line: 453, type: !197)
!585 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !542, file: !543, line: 453, type: !546)
!586 = !DILocation(line: 0, scope: !542)
!587 = !DILocation(line: 455, column: 10, scope: !542)
!588 = !DILocation(line: 455, column: 3, scope: !542)
!589 = distinct !DISubprogram(name: "lstat", scope: !543, file: !543, line: 460, type: !544, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!590 = !{!591, !592}
!591 = !DILocalVariable(name: "__path", arg: 1, scope: !589, file: !543, line: 460, type: !197)
!592 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !589, file: !543, line: 460, type: !546)
!593 = !DILocation(line: 0, scope: !589)
!594 = !DILocation(line: 462, column: 10, scope: !589)
!595 = !DILocation(line: 462, column: 3, scope: !589)
!596 = distinct !DISubprogram(name: "fstat", scope: !543, file: !543, line: 467, type: !597, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!192, !192, !546}
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "__fd", arg: 1, scope: !596, file: !543, line: 467, type: !192)
!601 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !596, file: !543, line: 467, type: !546)
!602 = !DILocation(line: 0, scope: !596)
!603 = !DILocation(line: 469, column: 10, scope: !596)
!604 = !DILocation(line: 469, column: 3, scope: !596)
!605 = distinct !DISubprogram(name: "fstatat", scope: !543, file: !543, line: 474, type: !606, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!192, !192, !197, !546, !192}
!608 = !{!609, !610, !611, !612}
!609 = !DILocalVariable(name: "__fd", arg: 1, scope: !605, file: !543, line: 474, type: !192)
!610 = !DILocalVariable(name: "__filename", arg: 2, scope: !605, file: !543, line: 474, type: !197)
!611 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !605, file: !543, line: 474, type: !546)
!612 = !DILocalVariable(name: "__flag", arg: 4, scope: !605, file: !543, line: 474, type: !192)
!613 = !DILocation(line: 0, scope: !605)
!614 = !DILocation(line: 477, column: 10, scope: !605)
!615 = !DILocation(line: 477, column: 3, scope: !605)
!616 = distinct !DISubprogram(name: "mknod", scope: !543, file: !543, line: 483, type: !617, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!192, !197, !557, !551}
!619 = !{!620, !621, !622}
!620 = !DILocalVariable(name: "__path", arg: 1, scope: !616, file: !543, line: 483, type: !197)
!621 = !DILocalVariable(name: "__mode", arg: 2, scope: !616, file: !543, line: 483, type: !557)
!622 = !DILocalVariable(name: "__dev", arg: 3, scope: !616, file: !543, line: 483, type: !551)
!623 = !DILocation(line: 0, scope: !616)
!624 = !DILocation(line: 485, column: 10, scope: !616)
!625 = !DILocation(line: 485, column: 3, scope: !616)
!626 = distinct !DISubprogram(name: "mknodat", scope: !543, file: !543, line: 491, type: !627, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!192, !192, !197, !557, !551}
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "__fd", arg: 1, scope: !626, file: !543, line: 491, type: !192)
!631 = !DILocalVariable(name: "__path", arg: 2, scope: !626, file: !543, line: 491, type: !197)
!632 = !DILocalVariable(name: "__mode", arg: 3, scope: !626, file: !543, line: 491, type: !557)
!633 = !DILocalVariable(name: "__dev", arg: 4, scope: !626, file: !543, line: 491, type: !551)
!634 = !DILocation(line: 0, scope: !626)
!635 = !DILocation(line: 494, column: 10, scope: !626)
!636 = !DILocation(line: 494, column: 3, scope: !626)
!637 = distinct !DISubprogram(name: "stat64", scope: !543, file: !543, line: 502, type: !638, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!638 = !DISubroutineType(types: !639)
!639 = !{!192, !197, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !548, line: 119, size: 1152, elements: !642)
!642 = !{!643, !644, !646, !647, !648, !649, !650, !651, !652, !653, !654, !656, !657, !658, !659}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !641, file: !548, line: 121, baseType: !551, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !641, file: !548, line: 123, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !288, line: 149, baseType: !314)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !641, file: !548, line: 124, baseType: !555, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !641, file: !548, line: 125, baseType: !557, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !641, file: !548, line: 132, baseType: !559, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !641, file: !548, line: 133, baseType: !561, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !641, file: !548, line: 135, baseType: !192, size: 32, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !641, file: !548, line: 136, baseType: !551, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !641, file: !548, line: 137, baseType: !287, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !641, file: !548, line: 143, baseType: !566, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !641, file: !548, line: 144, baseType: !655, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !288, line: 180, baseType: !289)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !641, file: !548, line: 152, baseType: !570, size: 128, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !641, file: !548, line: 153, baseType: !570, size: 128, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !641, file: !548, line: 154, baseType: !570, size: 128, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !641, file: !548, line: 164, baseType: !580, size: 192, offset: 960)
!660 = !{!661, !662}
!661 = !DILocalVariable(name: "__path", arg: 1, scope: !637, file: !543, line: 502, type: !197)
!662 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !637, file: !543, line: 502, type: !640)
!663 = !DILocation(line: 0, scope: !637)
!664 = !DILocation(line: 504, column: 10, scope: !637)
!665 = !DILocation(line: 504, column: 3, scope: !637)
!666 = distinct !DISubprogram(name: "lstat64", scope: !543, file: !543, line: 509, type: !638, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "__path", arg: 1, scope: !666, file: !543, line: 509, type: !197)
!669 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !666, file: !543, line: 509, type: !640)
!670 = !DILocation(line: 0, scope: !666)
!671 = !DILocation(line: 511, column: 10, scope: !666)
!672 = !DILocation(line: 511, column: 3, scope: !666)
!673 = distinct !DISubprogram(name: "fstat64", scope: !543, file: !543, line: 516, type: !674, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!192, !192, !640}
!676 = !{!677, !678}
!677 = !DILocalVariable(name: "__fd", arg: 1, scope: !673, file: !543, line: 516, type: !192)
!678 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !673, file: !543, line: 516, type: !640)
!679 = !DILocation(line: 0, scope: !673)
!680 = !DILocation(line: 518, column: 10, scope: !673)
!681 = !DILocation(line: 518, column: 3, scope: !673)
!682 = distinct !DISubprogram(name: "fstatat64", scope: !543, file: !543, line: 523, type: !683, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!192, !192, !197, !640, !192}
!685 = !{!686, !687, !688, !689}
!686 = !DILocalVariable(name: "__fd", arg: 1, scope: !682, file: !543, line: 523, type: !192)
!687 = !DILocalVariable(name: "__filename", arg: 2, scope: !682, file: !543, line: 523, type: !197)
!688 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !682, file: !543, line: 523, type: !640)
!689 = !DILocalVariable(name: "__flag", arg: 4, scope: !682, file: !543, line: 523, type: !192)
!690 = !DILocation(line: 0, scope: !682)
!691 = !DILocation(line: 526, column: 10, scope: !682)
!692 = !DILocation(line: 526, column: 3, scope: !682)
!693 = distinct !DISubprogram(name: "gate_handle_delay_slots", scope: !3, file: !3, line: 4052, type: !211, scopeLine: 4053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!694 = !DILocation(line: 4058, column: 3, scope: !693)
!695 = distinct !DISubprogram(name: "rest_of_handle_delay_slots", scope: !3, file: !3, line: 4064, type: !215, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!696 = !DILocation(line: 4069, column: 3, scope: !695)
!697 = distinct !DISubprogram(name: "gate_handle_machine_reorg", scope: !3, file: !3, line: 4094, type: !211, scopeLine: 4095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!698 = !DILocation(line: 4096, column: 18, scope: !697)
!699 = !DILocation(line: 4096, column: 42, scope: !697)
!700 = !DILocation(line: 4096, column: 10, scope: !697)
!701 = !DILocation(line: 4096, column: 3, scope: !697)
!702 = distinct !DISubprogram(name: "rest_of_handle_machine_reorg", scope: !3, file: !3, line: 4101, type: !215, scopeLine: 4102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!703 = !DILocation(line: 4103, column: 11, scope: !702)
!704 = !DILocation(line: 4103, column: 3, scope: !702)
!705 = !DILocation(line: 4104, column: 3, scope: !702)
